library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ccl_slice_core is
    generic (
        G_AXIS_IN_WIDTH  : integer := 32;  -- packed input pixels (32 bits => 32 pixels/beat)
        G_AXIS_OUT_WIDTH : integer := 32;  -- one 32-bit label per pixel on output
        G_MAX_WIDTH_PIX  : integer := 512; -- max image width (pixels)
        G_MAX_HEIGHT_PIX : integer := 128; -- max slice height
        G_MAX_LABELS_PER_SLICE : integer := 65536; -- Max labels for DSU table
        G_LUT_OFFSET_SHIFT : integer := 18  -- (2^18 = 262144 entries * 4 bytes = 1MB offset per core)
    );
    port (
        ---------------------------------------------------------------------
        -- Global
        ---------------------------------------------------------------------
        aclkrst_clk  : in  std_logic;  -- fabric clock
        aclkrst_n    : in  std_logic;  -- active-low reset

        ---------------------------------------------------------------------
        -- AXI4-Lite slave (Regbank)
        ---------------------------------------------------------------------
        s_axi_awaddr  : in  std_logic_vector(31 downto 0);
        s_axi_awvalid : in  std_logic;
        s_axi_awready : out std_logic;
        s_axi_wdata   : in  std_logic_vector(31 downto 0);
        s_axi_wstrb   : in  std_logic_vector(3 downto 0);
        s_axi_wvalid  : in  std_logic;
        s_axi_wready  : out std_logic;
        s_axi_bresp   : out std_logic_vector(1 downto 0);
        s_axi_bvalid  : out std_logic;
        s_axi_bready  : in  std_logic;
        s_axi_araddr  : in  std_logic_vector(31 downto 0);
        s_axi_arvalid : in  std_logic;
        s_axi_arready : out std_logic;
        s_axi_rdata   : out std_logic_vector(31 downto 0);
        s_axi_rresp   : out std_logic_vector(1 downto 0);
s_axi_rvalid  : out std_logic;
        s_axi_rready  : in  std_logic;

        ---------------------------------------------------------------------
        -- AXIS Slave (Pixel input, packed)
        ---------------------------------------------------------------------
        s_axis_tdata  : in  std_logic_vector(G_AXIS_IN_WIDTH-1 downto 0);
        s_axis_tvalid : in  std_logic;
        s_axis_tready : out std_logic;
        s_axis_tlast  : in  std_logic; -- From Broadcaster (signals end of *full frame*)

        ---------------------------------------------------------------------
        -- AXIS Master (Label output)
        ---------------------------------------------------------------------
        m_axis_tdata  : out std_logic_vector(G_AXIS_OUT_WIDTH-1 downto 0);
        m_axis_tvalid : out std_logic;
        m_axis_tready : in  std_logic;
        m_axis_tlast  : out std_logic;

        ---------------------------------------------------------------------
        -- AXI4 Master (DSU/LUT Access to DDR)
        ---------------------------------------------------------------------
        -- Write Address Channel
        m_axi_lut_awaddr  : out std_logic_vector(31 downto 0);
        m_axi_lut_awvalid : out std_logic := '0';
        m_axi_lut_awready : in  std_logic;
        -- Write Data Channel
        m_axi_lut_wdata   : out std_logic_vector(31 downto 0);
        m_axi_lut_wstrb   : out std_logic_vector(3 downto 0);
        m_axi_lut_wvalid  : out std_logic := '0';
        m_axi_lut_wready  : in  std_logic;
        -- Write Response Channel
        m_axi_lut_bresp   : in  std_logic_vector(1 downto 0);
        m_axi_lut_bvalid  : in  std_logic;
        m_axi_lut_bready  : out std_logic;
        -- Read Address Channel
        m_axi_lut_araddr  : out std_logic_vector(31 downto 0);
        m_axi_lut_arvalid : out std_logic := '0';
        m_axi_lut_arready : in  std_logic;
        -- Read Data Channel
        m_axi_lut_rdata   : in  std_logic_vector(31 downto 0);
        m_axi_lut_rvalid  : in  std_logic;
        m_axi_lut_rready  : out std_logic;

        ---------------------------------------------------------------------
        -- Interrupt
        ---------------------------------------------------------------------
        irq_done      : out std_logic
    );
end entity ccl_slice_core;


architecture rtl of ccl_slice_core is

    -------------------------------------------------------------------------
    -- AXI-Lite Register bank
    -------------------------------------------------------------------------
    signal reg_control       : std_logic_vector(31 downto 0) := (others => '0'); -- bit0 = start
    signal reg_status        : std_logic_vector(31 downto 0) := (others => '0'); -- bit0 = done
    signal reg_width         : std_logic_vector(31 downto 0) := std_logic_vector(to_unsigned(512, 32));
    signal reg_slice_height  : std_logic_vector(31 downto 0) := std_logic_vector(to_unsigned(128, 32));
    signal reg_total_height  : std_logic_vector(31 downto 0) := std_logic_vector(to_unsigned(512, 32));
    signal reg_slice_id      : std_logic_vector(31 downto 0) := (others => '0');
    signal reg_lut_base_addr : std_logic_vector(31 downto 0) := (others => '0');

    -- Internal config signals
    signal width_u         : integer := 512;
    signal slice_height_u  : integer := 128;
    signal total_height_u  : integer := 512;
    signal slice_id_u      : unsigned(1 downto 0) := (others => '0');
    signal my_start_line   : integer := 0;
    signal my_end_line     : integer := 0;
    signal my_lut_offset   : unsigned(31 downto 0) := (others => '0');
    
    -- AXI-Lite Handshake
    signal s_axi_awready_int : std_logic;
    signal s_axi_wready_int  : std_logic;
    signal s_axi_arready_int : std_logic;
    signal s_axi_rvalid_int  : std_logic;
    signal s_axi_rdata_int   : std_logic_vector(31 downto 0);
    signal s_axi_bvalid_int  : std_logic;
    signal aw_fire, w_fire, ar_fire, r_fire, b_fire : std_logic;
    signal s_axi_araddr_reg  : std_logic_vector(31 downto 0);

    -------------------------------------------------------------------------
    -- Line Buffer (BRAM)
    -------------------------------------------------------------------------
    type t_line_buffer is array (0 to G_MAX_WIDTH_PIX-1) of unsigned(31 downto 0);
    signal line_buffer     : t_line_buffer := (others => (others => '0'));
    signal line_buf_wr_addr: integer range 0 to G_MAX_WIDTH_PIX-1 := 0;
    signal line_buf_wr_data: unsigned(31 downto 0) := (others => '0');
    signal line_buf_wr_en  : std_logic := '0';
    signal line_buf_rd_addr: integer range 0 to G_MAX_WIDTH_PIX-1 := 0;
    signal line_buf_rd_data: unsigned(31 downto 0); -- N neighbor

    -------------------------------------------------------------------------
    -- Stream handshake & Unpacking
    -------------------------------------------------------------------------
    signal s_axis_tready_int : std_logic := '0';
    signal in_fire           : std_logic;
    signal out_fire          : std_logic;
    signal out_valid_reg     : std_logic := '0';
    signal out_data_reg      : std_logic_vector(G_AXIS_OUT_WIDTH-1 downto 0) := (others => '0');
    signal out_last_reg      : std_logic := '0';
    
    signal unpack_shift_reg  : std_logic_vector(G_AXIS_IN_WIDTH-1 downto 0) := (others => '0');
    signal unpack_bits_left  : integer range 0 to G_AXIS_IN_WIDTH := 0;
    signal pixel_x           : integer range 0 to G_MAX_WIDTH_PIX := 0;
    signal pixel_y           : integer range 0 to G_MAX_HEIGHT_PIX*4 := 0; -- Must track *full* height
    signal pixel_bit         : std_logic := '0';
    signal in_slice          : boolean := false;
    
    -------------------------------------------------------------------------
    -- AXI Master FSM (axi_fsm) signals
    -------------------------------------------------------------------------
    -- Interface to proc_fsm
    signal axi_req_valid : std_logic := '0';
    signal axi_req_we    : std_logic := '0'; -- '1' for write, '0' for read
    signal axi_req_addr  : unsigned(31 downto 0) := (others => '0');
    signal axi_req_data  : unsigned(31 downto 0) := (others => '0');
    signal axi_resp_data : unsigned(31 downto 0) := (others => '0');
    signal axi_resp_valid: std_logic := '0';
    signal axi_fsm_ready : std_logic := '0'; -- '1' when axi_fsm is IDLE

    -- Internal AXI FSM state
    type t_axi_state is (AXI_IDLE, AXI_RD_REQ, AXI_RD_WAIT, AXI_WR_REQ, AXI_WR_DATA, AXI_WR_WAIT_B);
    signal axi_state : t_axi_state := AXI_IDLE;

    -------------------------------------------------------------------------
    -- Main Processing FSM (proc_fsm) signals
    -------------------------------------------------------------------------
    type t_proc_state is (
        IDLE, START_FRAME, INIT_LUT, INIT_LUT_WAIT,
        RUN_UNPACK, RUN_PROCESS_PIXEL,
        GET_NEIGHBORS,
        DO_FIND_N, WAIT_FIND_N, -- Iterative find for N
        DO_FIND_W, WAIT_FIND_W, -- Iterative find for W
        RESOLVE_LABELS,
        DO_UNION, WAIT_UNION,   -- Union(N, W)
        DO_INIT_LABEL, WAIT_INIT_LABEL, -- Init new label in LUT
        PUSH_OUTPUT, WAIT_PUSH,
        FLUSHING, DONE
    );
    signal proc_state : t_proc_state := IDLE;
    
    signal next_label      : unsigned(31 downto 0) := (others => '0');
    signal current_label   : unsigned(31 downto 0) := (others => '0');
    signal label_n         : unsigned(31 downto 0) := (others => '0');
    signal label_w         : unsigned(31 downto 0) := (others => '0');
    signal root_n          : unsigned(31 downto 0) := (others => '0');
    signal root_w          : unsigned(31 downto 0) := (others => '0');
    signal find_temp_label : unsigned(31 downto 0) := (others => '0');
    signal find_temp_root  : unsigned(31 downto 0) := (others => '0');
    signal init_lut_index  : integer := 0;


begin

    ----------------------------------------------------------------------------
    -- AXI-Lite Regbank Implementation (Simplified)
    ----------------------------------------------------------------------------
    -- Handshake logic
    s_axi_awready <= '1';
    s_axi_wready  <= '1';
    s_axi_arready <= '1';
    s_axi_rvalid  <= s_axi_arvalid; -- Combinational read
    s_axi_bvalid  <= s_axi_awvalid and s_axi_wvalid;
    s_axi_bresp   <= "00";
    s_axi_rresp   <= "00";

    -- Write process
    process(aclkrst_clk)
    begin
        if rising_edge(aclkrst_clk) then
            if aclkrst_n = '0' then
                reg_control       <= (others => '0');
                reg_status        <= (others => '0');
                reg_width         <= std_logic_vector(to_unsigned(512, 32));
                reg_slice_height  <= std_logic_vector(to_unsigned(128, 32));
                reg_total_height  <= std_logic_vector(to_unsigned(512, 32));
                reg_slice_id      <= (others => '0');
                reg_lut_base_addr <= (others => '0');
            else
                if s_axi_awvalid = '1' and s_axi_wvalid = '1' then
                    case s_axi_awaddr(7 downto 2) is
                        when "000000" => reg_control       <= s_axi_wdata;
                        when "000001" => reg_status        <= s_axi_wdata; -- e.g., clear done bit
                        when "000010" => reg_width         <= s_axi_wdata;
                        when "000011" => reg_slice_height  <= s_axi_wdata;
                        when "000100" => reg_slice_id      <= s_axi_wdata;
                        when "000101" => reg_total_height  <= s_axi_wdata;
                        when "000110" => reg_lut_base_addr <= s_axi_wdata;
                        when others   => null;
                    end case;
                end if;
            end if;
        end if;
    end process;
    
    -- Read process (combinational)
    with s_axi_araddr(7 downto 2) select
        s_axi_rdata <= reg_control       when "000000",
                       reg_status        when "000001",
                       reg_width         when "000010",
                       reg_slice_height  when "000011",
                       reg_slice_id      when "000100",
                       reg_total_height  when "000101",
                       reg_lut_base_addr when "000110",
                       x"DEADBEEF"       when others;

    -- Update internal config signals on Start
    process(aclkrst_clk)
    begin
        if rising_edge(aclkrst_clk) then
            if aclkrst_n = '0' then
                width_u        <= 512;
                slice_height_u <= 128;
                total_height_u <= 512;
                slice_id_u     <= (others => '0');
                my_start_line  <= 0;
                my_end_line    <= 0;
                my_lut_offset  <= (others => '0');
            elsif proc_state = IDLE and reg_control(0) = '1' then
                width_u        <= to_integer(unsigned(reg_width));
                slice_height_u <= to_integer(unsigned(reg_slice_height));
                total_height_u <= to_integer(unsigned(reg_total_height));
                slice_id_u     <= unsigned(reg_slice_id(1 downto 0));
                my_start_line  <= to_integer(unsigned(reg_slice_id(1 downto 0))) * to_integer(unsigned(reg_slice_height));
                my_end_line    <= (to_integer(unsigned(reg_slice_id(1 downto 0))) + 1) * to_integer(unsigned(reg_slice_height)) - 1;
                -- The base address is now the BRAM address, and the offset is handled by the core
                my_lut_offset  <= unsigned(reg_lut_base_addr) + (unsigned(reg_slice_id) sll G_LUT_OFFSET_SHIFT);
            end if;
        end if;
    end process;

    ----------------------------------------------------------------------------
    -- Line Buffer (BRAM) Implementation
    ----------------------------------------------------------------------------
    process(aclkrst_clk)
    begin
        if rising_edge(aclkrst_clk) then
            -- Read (synchronous)
            line_buf_rd_data <= line_buffer(line_buf_rd_addr);
            -- Write (synchronous)
            if line_buf_wr_en = '1' then
                line_buffer(line_buf_wr_addr) <= line_buf_wr_data;
            end if;
        end if;
    end process;

    ----------------------------------------------------------------------------
    -- Stream Handshake
    ----------------------------------------------------------------------------
    in_fire  <= s_axis_tvalid and s_axis_tready_int;
    out_fire <= out_valid_reg and m_axis_tready;
    
    m_axis_tvalid <= out_valid_reg;
    m_axis_tdata  <= out_data_reg;
    m_axis_tlast  <= out_last_reg;
    s_axis_tready <= s_axis_tready_int;

    irq_done <= reg_status(0);

    ----------------------------------------------------------------------------
    -- Main Processing FSM (proc_fsm)
    ----------------------------------------------------------------------------
    process(aclkrst_clk)
    begin
        if rising_edge(aclkrst_clk) then
            if aclkrst_n = '0' then
                proc_state <= IDLE;
                s_axis_tready_int <= '0';
                out_valid_reg <= '0';
                out_last_reg <= '0';
                reg_status <= (others => '0');
                pixel_x <= 0;
                pixel_y <= 0;
                unpack_bits_left <= 0;
                line_buf_wr_en <= '0';
                axi_req_valid <= '0';
            else
                -- Default assignments (combinatorial logic driven by FSM)
                s_axis_tready_int <= '0';
                out_valid_reg <= '0';
                line_buf_wr_en <= '0';
                axi_req_valid <= '0';

                case proc_state is
                    -------------------------------------------------
                    when IDLE =>
                        if reg_control(0) = '1' then
                            reg_status <= (others => '0');
                            pixel_x <= 0;
                            pixel_y <= 0;
                            unpack_bits_left <= 0;
                            next_label <= to_unsigned(1, 32); -- Start labels at 1
                            init_lut_index <= 0;
                            proc_state <= START_FRAME;
                        end if;
                        
                    -------------------------------------------------
                    when START_FRAME =>
                        -- This state is for one-cycle setup
                        -- NOTE: We assume the CPU has initialized the BRAM
                        -- The 'INIT_LUT' states are kept but simplified
                        -- to just initialize the first label for this slice.
                        current_label <= to_unsigned(1, 32); 
                        proc_state <= DO_INIT_LABEL; 
                        
                    -------------------------------------------------
                    -- The INIT_LUT / INIT_LUT_WAIT states from the DDR
                    -- version are removed to simplify. We assume the CPU
                    -- pre-initializes the *entire* BRAM LUT before
                    -- starting the cores. This is much faster.
                    -- The VHDL state DO_INIT_LABEL is now just for
                    -- dynamically adding *new* labels.
                    
                    -------------------------------------------------
                    when RUN_UNPACK =>
                        -- We need a new word. Wait for input and space.
                        s_axis_tready_int <= '1';
                        if in_fire = '1' then
                            unpack_shift_reg <= s_axis_tdata;
                            unpack_bits_left <= G_AXIS_IN_WIDTH;
                            proc_state <= RUN_PROCESS_PIXEL;
                        elsif s_axis_tvalid = '1' and s_axis_tlast = '1' then
                            -- End of frame
                            proc_state <= FLUSHING;
                        end if;

                    -------------------------------------------------
                    when RUN_PROCESS_PIXEL =>
                        -- Consume one bit
                        pixel_bit <= unpack_shift_reg(unpack_bits_left - 1);
                        unpack_bits_left <= unpack_bits_left - 1;
                        in_slice <= (pixel_y >= my_start_line) and (pixel_y <= my_end_line);
                        
                        -- Set read addresses for line buffer
                        line_buf_rd_addr <= pixel_x;
                        if pixel_x = 0 then
                            label_w <= (others => '0'); -- No W neighbor
                        else
                            label_w <= line_buffer(pixel_x - 1); -- W neighbor (from current line)
                        end if;
                        proc_state <= GET_NEIGHBORS;

                    -------------------------------------------------
                    when GET_NEIGHBORS =>
                        -- N neighbor data is valid one cycle after setting address
                        label_n <= line_buf_rd_data;
                        
                        if pixel_bit = '0' or (in_slice = false) then
                            current_label <= (others => '0');
                            proc_state <= PUSH_OUTPUT;
                        else
                            -- Pixel is '1' and in our slice, do CCL logic
                            if label_n = 0 and label_w = 0 then
                                -- New label
                                current_label <= next_label;
                                proc_state <= DO_INIT_LABEL; -- Need to write parent[new_label] = new_label
                            elsif label_n /= 0 and label_w = 0 then
                                current_label <= label_n;
                                proc_state <= PUSH_OUTPUT;
                            elsif label_n = 0 and label_w /= 0 then
                                current_label <= label_w;
                                proc_state <= PUSH_OUTPUT;
                            else -- N and W are both non-zero
                                -- Need to find roots
                                find_temp_label <= label_n;
                                proc_state <= DO_FIND_N;
                            end if;
                        end if;

                    -------------------------------------------------
                    when DO_FIND_N =>
                        -- Start AXI read: parent[find_temp_label]
                        if axi_fsm_ready = '1' then
                            axi_req_valid <= '1';
                            axi_req_we    <= '0';
                            axi_req_addr  <= my_lut_offset + (find_temp_label sll 2);
                            proc_state    <= WAIT_FIND_N;
                        end if;

                    -------------------------------------------------
                    when WAIT_FIND_N =>
                        axi_req_valid <= '0';
                        if axi_resp_valid = '1' then
                            find_temp_root <= axi_resp_data;
                            if axi_resp_data = find_temp_label then
                                -- Found root of N
                                root_n <= axi_resp_data;
                                -- Now find root of W
                                find_temp_label <= label_w;
                                proc_state <= DO_FIND_W;
                            else
                                -- Keep searching (path compression not implemented for simplicity)
                                find_temp_label <= axi_resp_data;
                                proc_state <= DO_FIND_N;
                            end if;
                        end if;

                    -------------------------------------------------
                    when DO_FIND_W =>
                        if axi_fsm_ready = '1' then
                            axi_req_valid <= '1';
                            axi_req_we    <= '0';
                            axi_req_addr  <= my_lut_offset + (find_temp_label sll 2);
                            proc_state    <= WAIT_FIND_W;
                        end if;

                    -------------------------------------------------
                    when WAIT_FIND_W =>
                        axi_req_valid <= '0';
                        if axi_resp_valid = '1' then
                            find_temp_root <= axi_resp_data;
                            if axi_resp_data = find_temp_label then
                                -- Found root of W
                                root_w <= axi_resp_data;
                                proc_state <= RESOLVE_LABELS;
                            else
                                -- Keep searching
                                find_temp_label <= axi_resp_data;
                                proc_state <= DO_FIND_W;
                            end if;
                        end if;

                    -------------------------------------------------
                    when RESOLVE_LABELS =>
                        if root_n = root_w then
                            current_label <= root_n; -- Already equivalent
                            proc_state <= PUSH_OUTPUT;
                        else
                            -- Need to union
                            if root_n < root_w then
                                current_label <= root_n;
                                -- Set parent[root_w] = root_n
                                find_temp_label <= root_w; -- Address
                                find_temp_root  <= root_n; -- Data
                            else
                                current_label <= root_w;
                                -- Set parent[root_n] = root_w
                                find_temp_label <= root_n; -- Address
                                find_temp_root  <= root_w; -- Data
                            end if;
                            proc_state <= DO_UNION;
                        end if;

                    -------------------------------------------------
                    when DO_UNION =>
                        -- Write parent[find_temp_label] = find_temp_root
                        if axi_fsm_ready = '1' then
                            axi_req_valid <= '1';
                            axi_req_we    <= '1';
                            axi_req_addr  <= my_lut_offset + (find_temp_label sll 2);
                            axi_req_data  <= find_temp_root;
                            proc_state    <= WAIT_UNION;
                        end if;
                        
                    -------------------------------------------------
                    when WAIT_UNION =>
                        axi_req_valid <= '0';
                        if axi_resp_valid = '1' then
                            proc_state <= PUSH_OUTPUT; -- Union write is complete
                        end if;
                        
                    -------------------------------------------------
                    when DO_INIT_LABEL =>
                        -- Write parent[current_label] = current_label
                        if axi_fsm_ready = '1' then
                            axi_req_valid <= '1';
                            axi_req_we    <= '1';
                            axi_req_addr  <= my_lut_offset + (current_label sll 2);
                            axi_req_data  <= current_label;
                            
                            -- If this was the very first label, go to unpack
                            if proc_state = START_FRAME then
                                next_label <= to_unsigned(2, 32);
                            else
                                next_label <= next_label + 1;
                            end if;
                            
                            proc_state    <= WAIT_INIT_LABEL;
                        end if;

                    -------------------------------------------------
                    when WAIT_INIT_LABEL =>
                        axi_req_valid <= '0';
                        if axi_resp_valid = '1' then
                            if proc_state = START_FRAME then
                                proc_state <= RUN_UNPACK;
                            else
                                proc_state <= PUSH_OUTPUT; -- Init write is complete
                            end if;
                        end if;

                    -------------------------------------------------
                    when PUSH_OUTPUT =>
                        -- Update line buffer for next row
                        line_buf_wr_en   <= '1';
                        line_buf_wr_addr <= pixel_x;
                        line_buf_wr_data <= current_label;

                        -- Push pixel to output stream (only if in our slice)
                        if in_slice = true then
                            out_data_reg  <= std_logic_vector(current_label);
                            out_valid_reg <= '1';
                        
                            -- TLAST logic: assert on last pixel of *our slice*
                            if (pixel_x = width_u - 1) and (pixel_y = my_end_line) then
                                out_last_reg <= '1';
                            end if;
                        end if;
                        
                        proc_state <= WAIT_PUSH;

                    -------------------------------------------------
                   when WAIT_PUSH =>
                                            if (in_slice = true and out_fire = '1') or (in_slice = false) then
                                                out_valid_reg <= '0';
                                                out_last_reg  <= '0'; -- De-assert
                                                
                                                -- Advance coordinates
                                                if pixel_x = width_u - 1 then
                                                    pixel_x <= 0;
                                                    if pixel_y = total_height_u - 1 then
                                                        pixel_y <= 0;
                                                        proc_state <= FLUSHING;
                                                    else
                                                        pixel_y <= pixel_y + 1;
                                                        -- ** FIX IS HERE **
                                                        if unpack_bits_left = 0 then
                                                            proc_state <= RUN_UNPACK;
                                                        else
                                                            proc_state <= RUN_PROCESS_PIXEL;
                                                        end if;
                                                    end if;
                                                else
                                                    pixel_x <= pixel_x + 1;
                                                    -- ** AND FIX IS HERE **
                                                    if unpack_bits_left = 0 then
                                                        proc_state <= RUN_UNPACK;
                                                    else
                                                        proc_state <= RUN_PROCESS_PIXEL;
                                                    end if;
                                                end if;
                                            elsif in_slice = true then
                                                 out_valid_reg <= '1'; -- Hold output until accepted
                                            end if;
                    -------------------------------------------------
                    when FLUSHING =>
                        -- Wait for last output to be taken
                        if out_valid_reg = '0' then
                           proc_state <= DONE;
                           reg_status(0) <= '1';
                        end if;

                    -------------------------------------------------
                    when DONE =>
                        -- Wait for CPU to clear start bit
                        if reg_control(0) = '0' then
                            proc_state <= IDLE;
                            reg_status <= (others => '0');
                        end if;
                        
                    when others =>
                        proc_state <= IDLE;
                        
                end case;
            end if;
        end if;
    end process;
    
    ----------------------------------------------------------------------------
    -- AXI Master FSM (axi_fsm)
    ----------------------------------------------------------------------------
    process(aclkrst_clk)
    begin
        if rising_edge(aclkrst_clk) then
            if aclkrst_n = '0' then
                axi_state <= AXI_IDLE;
                axi_fsm_ready <= '1';
                axi_resp_valid <= '0';
                m_axi_lut_arvalid <= '0';
                m_axi_lut_awvalid <= '0';
                m_axi_lut_wvalid  <= '0';
                m_axi_lut_bready  <= '0';
                m_axi_lut_rready  <= '0';
            else
                -- Default assignments
                axi_fsm_ready <= '0';
                axi_resp_valid <= '0';
                m_axi_lut_arvalid <= '0';
                m_axi_lut_awvalid <= '0';
                m_axi_lut_wvalid  <= '0';
                m_axi_lut_bready  <= '0';
                m_axi_lut_rready  <= '0';

                case axi_state is
                    when AXI_IDLE =>
                        axi_fsm_ready <= '1';
                        if axi_req_valid = '1' then
                            if axi_req_we = '1' then
                                -- Write request
                                m_axi_lut_awaddr  <= std_logic_vector(axi_req_addr);
                                m_axi_lut_awvalid <= '1';
                                m_axi_lut_wdata   <= std_logic_vector(axi_req_data);
                                m_axi_lut_wstrb   <= "1111";
                                m_axi_lut_wvalid  <= '1';
                                axi_state <= AXI_WR_REQ;
                            else
                                -- Read request
                                m_axi_lut_araddr  <= std_logic_vector(axi_req_addr);
                                m_axi_lut_arvalid <= '1';
                                axi_state <= AXI_RD_REQ;
                            end if;
                        end if;

                    --------------------------------
                    when AXI_RD_REQ =>
                        if m_axi_lut_arready = '1' then
                            m_axi_lut_arvalid <= '0';
                            m_axi_lut_rready  <= '1';
                            axi_state <= AXI_RD_WAIT;
                        end if;

                    when AXI_RD_WAIT =>
                        -- With BRAM, rvalid will be asserted 1 or 2 cycles later
                        if m_axi_lut_rvalid = '1' then
                            axi_resp_data  <= unsigned(m_axi_lut_rdata);
                            axi_resp_valid <= '1';
                            m_axi_lut_rready <= '0';
                            axi_state <= AXI_IDLE;
                        end if;

                    --------------------------------
                    when AXI_WR_REQ =>
                        if m_axi_lut_awready = '1' then
                            m_axi_lut_awvalid <= '0';
                        end if;
                        if m_axi_lut_wready = '1' then
                            m_axi_lut_wvalid <= '0';
                        end if;
                        
                        -- With BRAM, awready and wready will be high quickly
                        if m_axi_lut_awready = '1' and m_axi_lut_wready = '1' then
                            m_axi_lut_bready <= '1';
                            axi_state <= AXI_WR_WAIT_B;
                        end if;
                        
                    when AXI_WR_WAIT_B =>
                        -- BRAM bvalid is asserted quickly
                        if m_axi_lut_bvalid = '1' then
                            axi_resp_valid <= '1'; -- Signal done
                            m_axi_lut_bready <= '0';
                            axi_state <= AXI_IDLE;
                        end if;
                        
                end case;
            end if;
        end if;
    end process;
    
end rtl;