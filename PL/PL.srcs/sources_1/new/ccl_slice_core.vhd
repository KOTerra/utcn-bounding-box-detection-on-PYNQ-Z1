library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ccl_slice_core is
    generic (
        G_AXIS_IN_WIDTH  : integer := 32;  -- packed input pixels (32 bits => 32 pixels/beat)
        G_AXIS_OUT_WIDTH : integer := 32;  -- one 32-bit label per pixel on output
        G_MAX_WIDTH_PIX  : integer := 512; -- max image width (pixels)
        G_MAX_HEIGHT_PIX : integer := 128  -- max slice height
    );
    port (
        ---------------------------------------------------------------------
        -- Global
        ---------------------------------------------------------------------
        aclkrst_clk  : in  std_logic;  -- fabric clock (connect to FCLK0)
        aclkrst_n    : in  std_logic;  -- active-low reset ('0' = reset asserted)

        ---------------------------------------------------------------------
        -- AXI4-Lite slave (simple regbank)
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
        -- AXIS Slave (pixel input, packed 32 bits = 32 pixels)
        ---------------------------------------------------------------------
        s_axis_tdata  : in  std_logic_vector(G_AXIS_IN_WIDTH-1 downto 0);
        s_axis_tvalid : in  std_logic;
        s_axis_tready : out std_logic;
        s_axis_tlast  : in  std_logic;

        ---------------------------------------------------------------------
        -- AXIS Master (label output, 32-bit per pixel)
        ---------------------------------------------------------------------
        m_axis_tdata  : out std_logic_vector(G_AXIS_OUT_WIDTH-1 downto 0);
        m_axis_tvalid : out std_logic;
        m_axis_tready : in  std_logic;
        m_axis_tlast  : out std_logic;

        ---------------------------------------------------------------------
        -- optional interrupt to PS
        ---------------------------------------------------------------------
        irq_done      : out std_logic
    );
end entity ccl_slice_core;


architecture rtl of ccl_slice_core is

    -------------------------------------------------------------------------
    -- Register bank (AXI-Lite)
    -------------------------------------------------------------------------
    signal reg_control   : std_logic_vector(31 downto 0) := (others => '0'); -- bit0 = start
    signal reg_status    : std_logic_vector(31 downto 0) := (others => '0'); -- bit0 = done
    signal reg_width     : std_logic_vector(31 downto 0) := x"00000200";    -- default 512
    signal reg_height    : std_logic_vector(31 downto 0) := x"00000080";    -- default 128
    signal reg_slice_id  : std_logic_vector(31 downto 0) := (others => '0');

    -- Simplified AXI-Lite handshake signals (we keep it simple & always ready)
    constant AXIL_ALWAYS_READY : boolean := true;

    -------------------------------------------------------------------------
    -- Stream handshake internal (use internal signals to avoid reading 'out' ports)
    -------------------------------------------------------------------------
    signal s_axis_tready_int : std_logic := '0';
    signal in_fire   : std_logic;
    signal out_fire  : std_logic;

    -- s_axis_tready depends on whether we can accept data (output buffer not full)
    signal can_accept_input : std_logic := '1';

    -- output flow control
    signal out_valid_reg : std_logic := '0';
    signal out_data_reg  : std_logic_vector(G_AXIS_OUT_WIDTH-1 downto 0) := (others => '0');
    signal out_last_reg  : std_logic := '0';

    -------------------------------------------------------------------------
    -- Processing state machine & counters
    -------------------------------------------------------------------------
    type proc_state_t is (IDLE, RUNNING, FLUSHING, DONE);
    signal proc_state : proc_state_t := IDLE;

    signal slice_id_u      : unsigned(1 downto 0) := (others => '0'); -- only 2 bits needed for 4 slices
    signal width_u         : integer := 512;
    signal height_u        : integer := 128;

    -- local labeling counter (local provisional label)
    signal local_label_counter : unsigned(15 downto 0) := (others => '0'); -- 16-bit local label
    signal global_label_offset : unsigned(31 downto 0) := (others => '0');

    -------------------------------------------------------------------------
    -- Unpacking control: one 32-bit input word -> 32 output pixels
    -------------------------------------------------------------------------
    signal unpack_shift_reg : std_logic_vector(G_AXIS_IN_WIDTH-1 downto 0) := (others => '0');
    signal unpack_bits_left : integer range 0 to G_AXIS_IN_WIDTH := 0;

    -- keep track of line/row/col to assert TLAST correctly to output side
    signal pixel_x     : integer range 0 to G_MAX_WIDTH_PIX := 0;
    signal pixel_y     : integer range 0 to G_MAX_HEIGHT_PIX := 0;

    -- Simple debug counters
    signal cnt_input_words  : unsigned(31 downto 0) := (others => '0');
    signal cnt_output_pixels: unsigned(31 downto 0) := (others => '0');

begin

    ----------------------------------------------------------------------------
    -- Drive the actual port from internal ready signal
    ----------------------------------------------------------------------------
    s_axis_tready <= s_axis_tready_int;

    ----------------------------------------------------------------------------
    -- AXI-Lite simple register behavior (synchronous writes, combinational reads)
    -- NOTE: This is a very small AXI-Lite implementation suitable for a simple regbank.
    ----------------------------------------------------------------------------
    s_axi_awready <= '1' when AXIL_ALWAYS_READY else '0';
    s_axi_wready  <= '1' when AXIL_ALWAYS_READY else '0';
    s_axi_bvalid  <= '1' when AXIL_ALWAYS_READY else '0';
    s_axi_bresp   <= "00";
    s_axi_arready <= '1' when AXIL_ALWAYS_READY else '0';
    s_axi_rvalid  <= '1' when AXIL_ALWAYS_READY else '0';
    s_axi_rresp   <= "00";

    -- Write registers
    process(aclkrst_clk)
    begin
        if rising_edge(aclkrst_clk) then
            if aclkrst_n = '0' then
                reg_control  <= (others => '0');
                reg_status   <= (others => '0');
                reg_width    <= std_logic_vector(to_unsigned(512,32));
                reg_height   <= std_logic_vector(to_unsigned(128,32));
                reg_slice_id <= (others => '0');
            else
                if s_axi_awvalid = '1' and s_axi_wvalid = '1' then
                    case s_axi_awaddr(7 downto 2) is   -- small decoded addr (word addressed)
                        when "000000" => reg_control  <= s_axi_wdata;
                        when "000001" => reg_status   <= s_axi_wdata;
                        when "000010" => reg_width    <= s_axi_wdata;
                        when "000011" => reg_height   <= s_axi_wdata;
                        when "000100" => reg_slice_id <= s_axi_wdata;
                        when others   => null;
                    end case;
                end if;
            end if;
        end if;
    end process;

    -- Readback combinatorial (simplified)
    with s_axi_araddr(7 downto 2) select
        s_axi_rdata <= reg_control when "000000",
                      reg_status  when "000001",
                      reg_width   when "000010",
                      reg_height  when "000011",
                      reg_slice_id when "000100",
                      x"00000000" when others;

    -------------------------------------------------------------------------
    -- Compose useful internal variables from regs
    -------------------------------------------------------------------------
    process(aclkrst_clk)
    begin
        if rising_edge(aclkrst_clk) then
            if aclkrst_n = '0' then
                slice_id_u <= (others => '0');
                width_u    <= 512;
                height_u   <= 128;
            else
                slice_id_u <= unsigned(reg_slice_id(1 downto 0));
                width_u    <= to_integer(unsigned(reg_width));
                height_u   <= to_integer(unsigned(reg_height));
            end if;
        end if;
    end process;

    -- compute global offset = slice_id << 16 (unsigned arithmetic)
    global_label_offset <= (resize(unsigned(reg_slice_id(1 downto 0)), 32) sll 16);

    ----------------------------------------------------------------------------
    -- AXIS flow control signals (use internal ready)
    ----------------------------------------------------------------------------
    in_fire  <= s_axis_tvalid and s_axis_tready_int;
    out_fire <= out_valid_reg and m_axis_tready;  -- out_fire is when we actually hand data to downstream

    -- compute s_axis_tready_int: accept new packed word only when we are running,
    -- have consumed previous unpacked bits, and output buffer not full.
    s_axis_tready_int <= '1' when (proc_state = RUNNING and unpack_bits_left = 0 and out_valid_reg = '0') else '0';

    -- Expose output valid and data
    m_axis_tvalid <= out_valid_reg;
    m_axis_tdata  <= out_data_reg;
    m_axis_tlast  <= out_last_reg;

    ----------------------------------------------------------------------------
    -- Main processing FSM (skeleton)
    -- - on CONTROL.start = 1: start streaming
    -- - consume packed input words, unpack to bits, assign provisional labels (simple counter)
    -- - output one 32-bit label per pixel (global label) on m_axis
    ----------------------------------------------------------------------------
    process(aclkrst_clk)
        -- variables for sequential logic
        variable cur_bit_idx : integer := 0;
        variable pixel_bit   : std_logic := '0';
        variable gv_lbl      : unsigned(31 downto 0);
    begin
        if rising_edge(aclkrst_clk) then
            if aclkrst_n = '0' then
                proc_state <= IDLE;
                local_label_counter <= (others => '0');
                unpack_shift_reg <= (others => '0');
                unpack_bits_left <= 0;
                pixel_x <= 0;
                pixel_y <= 0;
                cnt_input_words <= (others => '0');
                cnt_output_pixels <= (others => '0');
                out_valid_reg <= '0';
                out_data_reg <= (others => '0');
                out_last_reg <= '0';
                reg_status <= (others => '0');
            else
                -- start command (level sensitive - CPU should clear reg_control when done)
                if proc_state = IDLE and reg_control(0) = '1' then
                    proc_state <= RUNNING;
                    local_label_counter <= (others => '0');
                    unpack_bits_left <= 0;
                    pixel_x <= 0;
                    pixel_y <= 0;
                    cnt_input_words <= (others => '0');
                    cnt_output_pixels <= (others => '0');
                    out_valid_reg <= '0';
                    out_last_reg <= '0';
                    reg_status(0) <= '0';
                elsif proc_state = RUNNING then

                    -- If we have no unpacked bits available, accept a new input word (if valid)
                    if unpack_bits_left = 0 then
                        if in_fire = '1' then
                            -- grab the packed 32-bit pixel word
                            unpack_shift_reg <= s_axis_tdata;
                            unpack_bits_left <= G_AXIS_IN_WIDTH;
                            cnt_input_words <= cnt_input_words + 1;
                        end if;
                    end if;

                    -- If we have unpacked bits, and output side can accept, produce one pixel label
                    if unpack_bits_left > 0 and out_valid_reg = '0' then
                        cur_bit_idx := unpack_bits_left - 1;
                        pixel_bit   := unpack_shift_reg(cur_bit_idx);

                        -- decrement unpack_bits_left
                        unpack_bits_left <= unpack_bits_left - 1;

                        -- assign provisional label (simple scheme)
                        if pixel_bit = '1' then
                            local_label_counter <= local_label_counter + 1;
                            -- compute composed global label: global_label_offset + local_label_counter
                            gv_lbl := global_label_offset + resize(local_label_counter, 32);
                            out_data_reg <= std_logic_vector(gv_lbl);
                        else
                            out_data_reg <= (others => '0');
                        end if;

                        out_valid_reg <= '1';
                        cnt_output_pixels <= cnt_output_pixels + 1;

                        -- manage coordinates (pixel_x/pixel_y)
                        if pixel_x = width_u - 1 then
                            pixel_x <= 0;
                            if pixel_y = height_u - 1 then
                                pixel_y <= 0;
                                -- mark last pixel of frame when this output is produced
                                out_last_reg <= '1';
                                proc_state <= FLUSHING;
                            else
                                pixel_y <= pixel_y + 1;
                            end if;
                        else
                            pixel_x <= pixel_x + 1;
                        end if;
                    end if; -- produce output

                    -- when the downstream accepts the output, deassert valid and tlast if it was set
                    if out_fire = '1' then
                        out_valid_reg <= '0';
                        if out_last_reg = '1' then
                            out_last_reg <= '0';
                        end if;
                    end if;

                elsif proc_state = FLUSHING then
                    -- wait until no output pending
                    if out_valid_reg = '0' then
                        proc_state <= DONE;
                        reg_status(0) <= '1';
                    end if;

                elsif proc_state = DONE then
                    -- hold done until CPU clears START (reg_control bit0 = 0)
                    if reg_control(0) = '0' then
                        proc_state <= IDLE;
                        reg_status <= (others => '0');
                    end if;
                end if;
            end if;
        end if;
    end process;

    irq_done <= reg_status(0);

end rtl;
