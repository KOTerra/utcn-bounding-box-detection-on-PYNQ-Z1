library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ccl_slice_core is
    generic (
        G_AXIS_IN_WIDTH  : integer := 32;
        G_AXIS_OUT_WIDTH : integer := 32;
        G_MAX_WIDTH_PIX  : integer := 512;
        G_MAX_HEIGHT_PIX : integer := 128
    );
    port (
        aclkrst_clk  : in  std_logic;
        aclkrst_n    : in  std_logic;
        slice_id_in  : in  std_logic_vector(1 downto 0);

        -- AXI4-Lite Slave (Control)
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

        -- AXIS Stream IN
        s_axis_tdata  : in  std_logic_vector(G_AXIS_IN_WIDTH-1 downto 0);
        s_axis_tvalid : in  std_logic;
        s_axis_tready : out std_logic;
        s_axis_tlast  : in  std_logic;

        -- AXIS Stream OUT
        m_axis_tdata  : out std_logic_vector(G_AXIS_OUT_WIDTH-1 downto 0);
        m_axis_tvalid : out std_logic;
        m_axis_tready : in  std_logic;
        m_axis_tlast  : out std_logic;

        -- AXI4 Master (Shared LUT Access)
        m_axi_lut_awaddr  : out std_logic_vector(31 downto 0);
        m_axi_lut_awvalid : out std_logic;
        m_axi_lut_awready : in  std_logic;
        m_axi_lut_wdata   : out std_logic_vector(31 downto 0);
        m_axi_lut_wstrb   : out std_logic_vector(3 downto 0);
        m_axi_lut_wvalid  : out std_logic;
        m_axi_lut_wready  : in  std_logic;
        m_axi_lut_bresp   : in  std_logic_vector(1 downto 0);
        m_axi_lut_bvalid  : in  std_logic;
        m_axi_lut_bready  : out std_logic;
        -- Read channels unused for Slice Core
        m_axi_lut_araddr  : out std_logic_vector(31 downto 0);
        m_axi_lut_arvalid : out std_logic;
        m_axi_lut_arready : in  std_logic;
        m_axi_lut_rdata   : in  std_logic_vector(31 downto 0);
        m_axi_lut_rvalid  : in  std_logic;
        m_axi_lut_rready  : out std_logic;

        irq_done : out std_logic
    );
end entity ccl_slice_core;

architecture rtl of ccl_slice_core is

    -- Constants
    constant AXIL_ALWAYS_READY : boolean := true;
    -- Base address of the Shared BRAM in your Block Design
    constant C_LUT_BASE_ADDR   : unsigned(31 downto 0) := x"C0000000"; 
    
    -- 256KB Total / 4 bytes per word / 4 Slices = 16384 words per slice
    constant LABELS_PER_SLICE  : integer := 16384; 

    -- Registers
    signal reg_control   : std_logic_vector(31 downto 0) := (others => '0');
    signal reg_status    : std_logic_vector(31 downto 0) := (others => '0');
    signal reg_width     : std_logic_vector(31 downto 0) := x"00000200"; -- 512
    signal reg_height    : std_logic_vector(31 downto 0) := x"00000080"; -- 128
    signal reg_slice_id  : std_logic_vector(31 downto 0) := (others => '0');

    -- Stream & Data flow
    signal s_axis_tready_int : std_logic := '0';
    signal out_data_reg      : std_logic_vector(G_AXIS_OUT_WIDTH-1 downto 0) := (others => '0');
    signal out_valid_reg     : std_logic := '0';
    signal out_last_reg      : std_logic := '0';
    signal in_fire           : std_logic;
    signal out_fire          : std_logic;

    -- FSM
    type proc_state_t is (IDLE, RUNNING, WRITE_EQUIV, FLUSHING, DONE);
    signal proc_state : proc_state_t := IDLE;

    -- Internal State
    signal slice_id_u      : unsigned(1 downto 0) := (others => '0');
    signal width_u         : integer := 512;
    signal height_u        : integer := 128;
    signal local_label_counter : unsigned(15 downto 0) := (others => '0');
    signal global_label_offset : unsigned(31 downto 0) := (others => '0');

    -- Pixel Processing
    signal unpack_shift_reg : std_logic_vector(G_AXIS_IN_WIDTH-1 downto 0) := (others => '0');
    signal unpack_bits_left : integer range 0 to G_AXIS_IN_WIDTH := 0;
    signal pixel_x     : integer range 0 to G_MAX_WIDTH_PIX  := 0;
    signal pixel_y     : integer range 0 to G_MAX_HEIGHT_PIX := 0;
    signal last_left_lbl : unsigned(15 downto 0) := (others => '0');

    -- Line Buffer (Distributed RAM for single cycle access)
    type line_buf_t is array (0 to G_MAX_WIDTH_PIX-1) of std_logic_vector(15 downto 0);
    signal line_prev : line_buf_t;

    -- AXI Master Write State signals
    signal equiv_hi : unsigned(15 downto 0);
    signal equiv_lo : unsigned(15 downto 0);

begin

    s_axi_awready <= '1'; s_axi_wready <= '1'; s_axi_bvalid <= '1'; s_axi_bresp <= "00";
    s_axi_arready <= '1'; s_axi_rvalid <= '1'; s_axi_rresp <= "00";

    -- Register Write 
    process(aclkrst_clk)
    begin
        if rising_edge(aclkrst_clk) then
            if aclkrst_n = '0' then
                reg_control <= (others => '0');
                reg_status  <= (others => '0');
            else
                if (s_axi_awvalid='1' and s_axi_wvalid='1') then
                    if s_axi_awaddr(5 downto 2) = "0000" then
                        reg_control <= s_axi_wdata;
                        if s_axi_wdata(0)='1' then reg_status(0) <= '0'; end if; -- Clear 
                    end if;
                end if;
                if proc_state = DONE then reg_status(0) <= '1'; end if;
            end if;
        end if;
    end process;

    -- Register Read 
    process(s_axi_araddr, reg_control, reg_status, reg_width, reg_height, reg_slice_id)
    begin
        case s_axi_araddr(5 downto 2) is
            when "0000" => s_axi_rdata <= reg_control;
            when "0001" => s_axi_rdata <= reg_status;
            when "0010" => s_axi_rdata <= reg_width;
            when "0011" => s_axi_rdata <= reg_height;
            when "0100" => s_axi_rdata <= reg_slice_id;
            when others => s_axi_rdata <= (others => '0');
        end case;
    end process;

    process(aclkrst_clk)
    begin
        if rising_edge(aclkrst_clk) then
            if aclkrst_n = '0' then
                slice_id_u <= (others => '0');
            else
                slice_id_u <= unsigned(slice_id_in);
                reg_slice_id(1 downto 0) <= slice_id_in;
            end if;
        end if;
    end process;

    global_label_offset <= resize(slice_id_u * to_unsigned(LABELS_PER_SLICE, 16), 32);

    -- AXIS control
    s_axis_tready <= s_axis_tready_int;
    in_fire  <= s_axis_tvalid and s_axis_tready_int;
    out_fire <= out_valid_reg and m_axis_tready;

    s_axis_tready_int <= '1' when (proc_state = RUNNING) and (unpack_bits_left = 0) and (out_valid_reg = '0') else '0';

    m_axis_tvalid <= out_valid_reg;
    m_axis_tdata  <= out_data_reg;
    m_axis_tlast  <= out_last_reg;

    -- Unused 
    m_axi_lut_araddr <= (others => '0');
    m_axi_lut_arvalid <= '0';
    m_axi_lut_rready <= '0';
    
    irq_done <= reg_status(0);

    --FSM
    process(aclkrst_clk)
        variable cur_bit_idx : integer := 0;
        variable pixel_bit   : std_logic := '0';
        variable lbl_left    : unsigned(15 downto 0);
        variable lbl_up      : unsigned(15 downto 0);
        variable lbl_new     : unsigned(15 downto 0);
        variable gv_lbl      : unsigned(31 downto 0);
        variable addr_calc   : unsigned(31 downto 0);
    begin
        if rising_edge(aclkrst_clk) then
            if aclkrst_n = '0' then
                proc_state <= IDLE;
                unpack_bits_left <= 0;
                local_label_counter <= (others => '0');
                out_valid_reg <= '0';
                m_axi_lut_awvalid <= '0';
                m_axi_lut_wvalid <= '0';
                m_axi_lut_bready <= '0';
            else
                if out_fire = '1' then out_valid_reg <= '0'; end if;

                case proc_state is
                    when IDLE =>
                        if reg_control(0) = '1' then
                            proc_state <= RUNNING;
                            pixel_x <= 0; pixel_y <= 0;
                            local_label_counter <= (others => '0');
                            last_left_lbl <= (others => '0');
                        end if;

                    when RUNNING =>
                        if (unpack_bits_left = 0) and (in_fire = '1') then
                            unpack_shift_reg <= s_axis_tdata;
                            unpack_bits_left <= G_AXIS_IN_WIDTH;
                        end if;

                        if (unpack_bits_left > 0) and (out_valid_reg = '0') then
                            cur_bit_idx := unpack_bits_left - 1;
                            pixel_bit   := unpack_shift_reg(cur_bit_idx);
                            
                            if pixel_x = 0 then lbl_left := (others => '0'); else lbl_left := last_left_lbl; end if;
                            if pixel_y = 0 then lbl_up := (others => '0'); else lbl_up := unsigned(line_prev(pixel_x)); end if;

                            lbl_new := (others => '0');

                            if pixel_bit = '1' then
                                if (lbl_left = 0) and (lbl_up = 0) then
                                    local_label_counter <= local_label_counter + 1;
                                    lbl_new := local_label_counter + 1;
                                    unpack_bits_left <= unpack_bits_left - 1;
                                elsif (lbl_left /= 0) and (lbl_up = 0) then
                                    lbl_new := lbl_left;
                                    unpack_bits_left <= unpack_bits_left - 1;
                                elsif (lbl_left = 0) and (lbl_up /= 0) then
                                    lbl_new := lbl_up;
                                    unpack_bits_left <= unpack_bits_left - 1;
                                else
                                    if lbl_left = lbl_up then
                                        lbl_new := lbl_left;
                                        unpack_bits_left <= unpack_bits_left - 1;
                                    else
                                        if lbl_left < lbl_up then
                                            lbl_new := lbl_left;
                                            equiv_lo <= lbl_left; equiv_hi <= lbl_up;
                                        else
                                            lbl_new := lbl_up;
                                            equiv_lo <= lbl_up; equiv_hi <= lbl_left;
                                        end if;
                                        
                                        proc_state <= WRITE_EQUIV; 
                                        
                                        addr_calc := C_LUT_BASE_ADDR + (resize((global_label_offset + equiv_hi), 32) sll 2);
                                        m_axi_lut_awaddr <= std_logic_vector(addr_calc);
                                        m_axi_lut_wdata <= std_logic_vector(global_label_offset + resize(equiv_lo, 32));
                                        
                                        m_axi_lut_wstrb <= "1111";
                                        m_axi_lut_awvalid <= '1';
                                        m_axi_lut_wvalid <= '1';
                                        m_axi_lut_bready <= '1';
                                    end if;
                                end if;
                            else
                                unpack_bits_left <= unpack_bits_left - 1;
                            end if;

                            if proc_state = RUNNING then 
                                line_prev(pixel_x) <= std_logic_vector(lbl_new);
                                last_left_lbl <= lbl_new;
                                
                                if lbl_new /= 0 then
                                    gv_lbl := global_label_offset + resize(lbl_new, 32);
                                else
                                    gv_lbl := (others => '0');
                                end if;
                                out_data_reg <= std_logic_vector(gv_lbl);
                                out_valid_reg <= '1';

                                if pixel_x = width_u - 1 then
                                    pixel_x <= 0;
                                    last_left_lbl <= (others => '0');
                                    if pixel_y = height_u - 1 then
                                        pixel_y <= 0;
                                        out_last_reg <= '1';
                                        proc_state <= FLUSHING;
                                    else
                                        pixel_y <= pixel_y + 1;
                                    end if;
                                else
                                    pixel_x <= pixel_x + 1;
                                end if;
                            end if;
                        end if;

                    when WRITE_EQUIV =>
                        if m_axi_lut_awready = '1' then m_axi_lut_awvalid <= '0'; end if;
                        if m_axi_lut_wready = '1' then m_axi_lut_wvalid <= '0'; end if;

                        if m_axi_lut_bvalid = '1' then
                            m_axi_lut_bready <= '0';
                            unpack_bits_left <= unpack_bits_left - 1;
                            
                            line_prev(pixel_x) <= std_logic_vector(equiv_lo);
                            last_left_lbl <= equiv_lo;
                            
                            out_data_reg <= std_logic_vector(global_label_offset + resize(equiv_lo, 32));
                            out_valid_reg <= '1';
                            
                            if pixel_x = width_u - 1 then
                                pixel_x <= 0;
                                last_left_lbl <= (others => '0');
                                if pixel_y = height_u - 1 then
                                    pixel_y <= 0;
                                    out_last_reg <= '1';
                                    proc_state <= FLUSHING;
                                else
                                    pixel_y <= pixel_y + 1;
                                    proc_state <= RUNNING;
                                end if;
                            else
                                pixel_x <= pixel_x + 1;
                                proc_state <= RUNNING;
                            end if;
                        end if;

                    when FLUSHING =>
                        if out_valid_reg = '0' then
                            proc_state <= DONE;
                        end if;

                    when DONE =>
                        if reg_control(0) = '0' then proc_state <= IDLE; end if;
                end case;
            end if;
        end if;
    end process;
end rtl;