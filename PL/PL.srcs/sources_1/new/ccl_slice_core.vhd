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
        ---------------------------------------------------------------------
        -- Global
        ---------------------------------------------------------------------
        aclkrst_clk  : in  std_logic;
        aclkrst_n    : in  std_logic;

        ---------------------------------------------------------------------
        -- AXI4-Lite slave (control)
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
        -- AXIS Slave (pixel input)
        ---------------------------------------------------------------------
        s_axis_tdata  : in  std_logic_vector(G_AXIS_IN_WIDTH-1 downto 0);
        s_axis_tvalid : in  std_logic;
        s_axis_tready : out std_logic;
        s_axis_tlast  : in  std_logic;

        ---------------------------------------------------------------------
        -- AXIS Master (label output)
        ---------------------------------------------------------------------
        m_axis_tdata  : out std_logic_vector(G_AXIS_OUT_WIDTH-1 downto 0);
        m_axis_tvalid : out std_logic;
        m_axis_tready : in  std_logic;
        m_axis_tlast  : out std_logic;

        ---------------------------------------------------------------------
        -- Optional interrupt
        ---------------------------------------------------------------------
        irq_done      : out std_logic;

        ---------------------------------------------------------------------
        -- AXI4 Master (dummy for LUT)
        ---------------------------------------------------------------------
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
        m_axi_lut_araddr  : out std_logic_vector(31 downto 0);
        m_axi_lut_arvalid : out std_logic;
        m_axi_lut_arready : in  std_logic;
        m_axi_lut_rdata   : in  std_logic_vector(31 downto 0);
        m_axi_lut_rvalid  : in  std_logic;
        m_axi_lut_rready  : out std_logic
    );
end entity ccl_slice_core;


architecture rtl of ccl_slice_core is

    -------------------------------------------------------------------------
    -- Control registers
    -------------------------------------------------------------------------
    signal reg_control   : std_logic_vector(31 downto 0) := (others => '0');
    signal reg_status    : std_logic_vector(31 downto 0) := (others => '0');
    signal reg_width     : std_logic_vector(31 downto 0) := x"00000200";
    signal reg_height    : std_logic_vector(31 downto 0) := x"00000080";
    signal reg_slice_id  : std_logic_vector(31 downto 0) := (others => '0');

    constant AXIL_ALWAYS_READY : boolean := true;

    -------------------------------------------------------------------------
    -- Stream control
    -------------------------------------------------------------------------
    signal s_axis_tready_int : std_logic := '0';
    signal in_fire   : std_logic;
    signal out_fire  : std_logic;

    signal out_valid_reg : std_logic := '0';
    signal out_data_reg  : std_logic_vector(G_AXIS_OUT_WIDTH-1 downto 0) := (others => '0');
    signal out_last_reg  : std_logic := '0';

    -------------------------------------------------------------------------
    -- Processing state machine
    -------------------------------------------------------------------------
    type proc_state_t is (IDLE, RUNNING, FLUSHING, DONE);
    signal proc_state : proc_state_t := IDLE;

    signal slice_id_u      : unsigned(1 downto 0) := (others => '0');
    signal width_u         : integer := 512;
    signal height_u        : integer := 128;

    signal local_label_counter : unsigned(15 downto 0) := (others => '0');
    signal global_label_offset : unsigned(31 downto 0) := (others => '0');

    signal unpack_shift_reg : std_logic_vector(G_AXIS_IN_WIDTH-1 downto 0) := (others => '0');
    signal unpack_bits_left : integer range 0 to G_AXIS_IN_WIDTH := 0;

    signal pixel_x     : integer range 0 to G_MAX_WIDTH_PIX := 0;
    signal pixel_y     : integer range 0 to G_MAX_HEIGHT_PIX := 0;

begin

    ----------------------------------------------------------------------------
    -- Tie-offs for unused AXI master (m_axi_lut)
    ----------------------------------------------------------------------------
    m_axi_lut_awaddr  <= (others => '0');
    m_axi_lut_awvalid <= '0';
    m_axi_lut_wdata   <= (others => '0');
    m_axi_lut_wstrb   <= (others => '0');
    m_axi_lut_wvalid  <= '0';
    m_axi_lut_bready  <= '1';
    m_axi_lut_araddr  <= (others => '0');
    m_axi_lut_arvalid <= '0';
    m_axi_lut_rready  <= '1';

    ----------------------------------------------------------------------------
    -- AXI-Lite simple register handling
    ----------------------------------------------------------------------------
    s_axi_awready <= '1' when AXIL_ALWAYS_READY else '0';
    s_axi_wready  <= '1' when AXIL_ALWAYS_READY else '0';
    s_axi_bvalid  <= '1' when AXIL_ALWAYS_READY else '0';
    s_axi_bresp   <= "00";
    s_axi_arready <= '1' when AXIL_ALWAYS_READY else '0';
    s_axi_rvalid  <= '1' when AXIL_ALWAYS_READY else '0';
    s_axi_rresp   <= "00";

    process(aclkrst_clk)
    begin
        if rising_edge(aclkrst_clk) then
            if aclkrst_n = '0' then
                reg_control  <= (others => '0');
                reg_width    <= std_logic_vector(to_unsigned(512,32));
                reg_height   <= std_logic_vector(to_unsigned(128,32));
                reg_slice_id <= (others => '0');
            else
                if s_axi_awvalid = '1' and s_axi_wvalid = '1' then
                    case s_axi_awaddr(7 downto 2) is
                        when "000000" => reg_control  <= s_axi_wdata;
                        when "000010" => reg_width    <= s_axi_wdata;
                        when "000011" => reg_height   <= s_axi_wdata;
                        when "000100" => reg_slice_id <= s_axi_wdata;
                        when others   => null;
                    end case;
                end if;
            end if;
        end if;
    end process;

    with s_axi_araddr(7 downto 2) select
        s_axi_rdata <= reg_control when "000000",
                       reg_status  when "000001",
                       reg_width   when "000010",
                       reg_height  when "000011",
                       reg_slice_id when "000100",
                       x"00000000" when others;

    ----------------------------------------------------------------------------
    -- Status register: updated in one process only (fixes multiple drivers)
    ----------------------------------------------------------------------------
    process(aclkrst_clk)
    begin
        if rising_edge(aclkrst_clk) then
            if aclkrst_n = '0' then
                reg_status <= (others => '0');
            else
                if proc_state = DONE then
                    reg_status(0) <= '1';  -- done flag
                elsif proc_state = IDLE then
                    if reg_control(0) = '1' then
                        reg_status(0) <= '0'; -- clear done at start
                    end if;
                end if;
            end if;
        end if;
    end process;

    irq_done <= reg_status(0);

    ----------------------------------------------------------------------------
    -- Parameters update
    ----------------------------------------------------------------------------
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

    global_label_offset <= (resize(unsigned(reg_slice_id(1 downto 0)), 32) sll 16);

    ----------------------------------------------------------------------------
    -- AXIS flow control and unpacking logic
    ----------------------------------------------------------------------------
    s_axis_tready <= s_axis_tready_int;

    in_fire  <= s_axis_tvalid and s_axis_tready_int;
    out_fire <= out_valid_reg and m_axis_tready;

    s_axis_tready_int <= '1' when (proc_state = RUNNING and unpack_bits_left = 0 and out_valid_reg = '0') else '0';

    m_axis_tvalid <= out_valid_reg;
    m_axis_tdata  <= out_data_reg;
    m_axis_tlast  <= out_last_reg;

    ----------------------------------------------------------------------------
    -- Main processing FSM
    ----------------------------------------------------------------------------
    process(aclkrst_clk)
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
                out_valid_reg <= '0';
                out_data_reg <= (others => '0');
                out_last_reg <= '0';
            else
                case proc_state is
                    when IDLE =>
                        if reg_control(0) = '1' then
                            proc_state <= RUNNING;
                            local_label_counter <= (others => '0');
                            unpack_bits_left <= 0;
                            pixel_x <= 0;
                            pixel_y <= 0;
                            out_valid_reg <= '0';
                            out_last_reg <= '0';
                        end if;

                    when RUNNING =>
                        if unpack_bits_left = 0 then
                            if in_fire = '1' then
                                unpack_shift_reg <= s_axis_tdata;
                                unpack_bits_left <= G_AXIS_IN_WIDTH;
                            end if;
                        end if;

                        if unpack_bits_left > 0 and out_valid_reg = '0' then
                            cur_bit_idx := unpack_bits_left - 1;
                            pixel_bit   := unpack_shift_reg(cur_bit_idx);
                            unpack_bits_left <= unpack_bits_left - 1;

                            if pixel_bit = '1' then
                                local_label_counter <= local_label_counter + 1;
                                gv_lbl := global_label_offset + resize(local_label_counter, 32);
                                out_data_reg <= std_logic_vector(gv_lbl);
                            else
                                out_data_reg <= (others => '0');
                            end if;

                            out_valid_reg <= '1';

                            if pixel_x = width_u - 1 then
                                pixel_x <= 0;
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

                        if out_fire = '1' then
                            out_valid_reg <= '0';
                            if out_last_reg = '1' then
                                out_last_reg <= '0';
                            end if;
                        end if;

                    when FLUSHING =>
                        if out_valid_reg = '0' then
                            proc_state <= DONE;
                        end if;

                    when DONE =>
                        if reg_control(0) = '0' then
                            proc_state <= IDLE;
                        end if;

                    when others =>
                        proc_state <= IDLE;
                end case;
            end if;
        end if;
    end process;

end rtl;
