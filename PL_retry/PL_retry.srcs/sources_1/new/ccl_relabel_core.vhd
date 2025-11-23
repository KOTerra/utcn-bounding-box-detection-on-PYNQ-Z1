library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ccl_relabel_core is
    generic (
        G_AXIS_WIDTH : integer := 32
    );
    port (
        -- Global
        aclkrst_clk  : in  std_logic;
        aclkrst_n    : in  std_logic;

        -- Slices done (from 4 slice cores)
        slices_done  : in  std_logic_vector(3 downto 0);

        -- AXI4-Lite control
        --  0x00 : CONTROL (bit0 = start)
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

        -- AXIS input: provisional labels (full frame)
        s_axis_tdata  : in  std_logic_vector(G_AXIS_WIDTH-1 downto 0);
        s_axis_tvalid : in  std_logic;
        s_axis_tready : out std_logic;
        s_axis_tlast  : in  std_logic;

        -- AXIS output: final canonical labels
        m_axis_tdata  : out std_logic_vector(G_AXIS_WIDTH-1 downto 0);
        m_axis_tvalid : out std_logic;
        m_axis_tready : in  std_logic;
        m_axis_tlast  : out std_logic;

        -- AXI4 Master to LUT BRAM
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
        m_axi_lut_rready  : out std_logic;

        -- Optional interrupt to PS
        irq_done : out std_logic
    );
end entity ccl_relabel_core;

architecture rtl of ccl_relabel_core is

    -- Control registers
    signal reg_control : std_logic_vector(31 downto 0) := (others => '0');
    constant AXIL_ALWAYS_READY : boolean := true;

    -- AXIS handshake and data path
    signal s_axis_tready_int : std_logic := '0';
    signal m_axis_tvalid_int : std_logic := '0';
    signal m_axis_tdata_int  : std_logic_vector(G_AXIS_WIDTH-1 downto 0) := (others => '0');
    signal m_axis_tlast_int  : std_logic := '0';

    signal in_fire  : std_logic;
    signal out_fire : std_logic;

    -- Main state machine
    type state_t is (
        IDLE,
        WAIT_SLICES,
        RUN_BUILD,      -- build LUT from label adjacencies
        RUN_APPLY,      -- apply LUT to labels
        DONE
    );
    signal state : state_t := IDLE;

    -- Row/column counters (assume 512x512 image, one pixel per beat)
    constant IMG_WIDTH  : integer := 512;
    constant SLICE_H    : integer := 128;  -- 4 slices * 128 = 512 rows
    signal x_cnt : integer range 0 to IMG_WIDTH-1 := 0;
    signal y_cnt : integer range 0 to (4*SLICE_H) := 0;

    -- For previous row buffer (vertical adjacency)
    type row_t is array (0 to IMG_WIDTH-1) of std_logic_vector(15 downto 0);
    signal prev_row : row_t;

    -- LUT AXI write logic (for BUILD mode)
    signal lut_awaddr_reg     : std_logic_vector(31 downto 0) := (others => '0');
    signal lut_awvalid_reg    : std_logic := '0';
    signal lut_wdata_reg      : std_logic_vector(31 downto 0) := (others => '0');
    signal lut_wstrb_reg      : std_logic_vector(3 downto 0) := (others => '0');
    signal lut_wvalid_reg     : std_logic := '0';
    signal lut_write_pending  : std_logic := '0';

    -- LUT read logic (for APPLY mode)
    signal lut_araddr_reg  : std_logic_vector(31 downto 0) := (others => '0');
    signal lut_arvalid_reg : std_logic := '0';
    signal lut_rready_reg  : std_logic := '0';

    -- Sub-FSM for APPLY mode (chase parent pointers)
    type apply_state_t is (
        AP_IDLE,
        AP_READ_LABEL,
        AP_READ_LUT,
        AP_OUTPUT
    );
    signal apply_state : apply_state_t := AP_IDLE;

    signal current_label   : std_logic_vector(15 downto 0) := (others => '0');
    signal parent_label    : std_logic_vector(15 downto 0) := (others => '0');
    signal root_label      : std_logic_vector(15 downto 0) := (others => '0');
    signal apply_last_in   : std_logic := '0';
    signal irq_done_reg    : std_logic := '0';

begin

    ----------------------------------------------------------------------------
    -- AXI4-Lite interface
    ----------------------------------------------------------------------------
    s_axi_awready <= '1' when AXIL_ALWAYS_READY else '0';
    s_axi_wready  <= '1' when AXIL_ALWAYS_READY else '0';
    s_axi_bresp   <= "00";
    s_axi_bvalid  <= '1' when AXIL_ALWAYS_READY else '0';
    s_axi_arready <= '1' when AXIL_ALWAYS_READY else '0';
    s_axi_rresp   <= "00";
    s_axi_rvalid  <= '1' when AXIL_ALWAYS_READY else '0';

    -- Write CONTROL register
    process(aclkrst_clk)
    begin
        if rising_edge(aclkrst_clk) then
            if aclkrst_n = '0' then
                reg_control <= (others => '0');
            else
                if (s_axi_awvalid = '1') and (s_axi_wvalid = '1') then
                    if s_axi_awaddr(5 downto 2) = "0000" then
                        reg_control <= s_axi_wdata;
                    end if;
                end if;
            end if;
        end if;
    end process;

    -- Readback (only CONTROL exposed) - VHDL-93 compatible
    process(s_axi_araddr, reg_control)
    begin
        case s_axi_araddr(5 downto 2) is
            when "0000" => s_axi_rdata <= reg_control;
            when others => s_axi_rdata <= (others => '0');
        end case;
    end process;

    ----------------------------------------------------------------------------
    -- AXIS & AXI-LUT wiring
    ----------------------------------------------------------------------------
    s_axis_tready <= s_axis_tready_int;
    m_axis_tdata  <= m_axis_tdata_int;
    m_axis_tvalid <= m_axis_tvalid_int;
    m_axis_tlast  <= m_axis_tlast_int;

    in_fire  <= s_axis_tvalid and s_axis_tready_int;
    out_fire <= m_axis_tvalid_int and m_axis_tready;

    -- AXI-LUT port mapping
    m_axi_lut_awaddr  <= lut_awaddr_reg;
    m_axi_lut_awvalid <= lut_awvalid_reg;
    m_axi_lut_wdata   <= lut_wdata_reg;
    m_axi_lut_wstrb   <= lut_wstrb_reg;
    m_axi_lut_wvalid  <= lut_wvalid_reg;
    m_axi_lut_bready  <= '1';  -- always ready for responses

    m_axi_lut_araddr  <= lut_araddr_reg;
    m_axi_lut_arvalid <= lut_arvalid_reg;
    m_axi_lut_rready  <= lut_rready_reg;

    -- IRQ
    irq_done <= irq_done_reg;

    ----------------------------------------------------------------------------
    -- Main FSM + LUT access + row/col counters
    ----------------------------------------------------------------------------
    process(aclkrst_clk)
        variable lbl_cur : unsigned(15 downto 0);
        variable lbl_up  : unsigned(15 downto 0);
        variable hi_lbl  : unsigned(15 downto 0);
        variable lo_lbl  : unsigned(15 downto 0);
        variable addr_u  : unsigned(31 downto 0);
    begin
        if rising_edge(aclkrst_clk) then
            if aclkrst_n = '0' then
                state             <= IDLE;
                x_cnt             <= 0;
                y_cnt             <= 0;
                m_axis_tvalid_int <= '0';
                m_axis_tdata_int  <= (others => '0');
                m_axis_tlast_int  <= '0';
                s_axis_tready_int <= '0';
                apply_state       <= AP_IDLE;
                lut_awaddr_reg    <= (others => '0');
                lut_awvalid_reg   <= '0';
                lut_wdata_reg     <= (others => '0');
                lut_wstrb_reg     <= (others => '0');
                lut_wvalid_reg    <= '0';
                lut_write_pending <= '0';
                lut_araddr_reg    <= (others => '0');
                lut_arvalid_reg   <= '0';
                lut_rready_reg    <= '0';
                current_label     <= (others => '0');
                parent_label      <= (others => '0');
                root_label        <= (others => '0');
                apply_last_in     <= '0';
                irq_done_reg      <= '0';
            else
                -- Clear AW/W valid once write is accepted
                if (lut_awvalid_reg = '1') and (m_axi_lut_awready = '1') then
                    lut_awvalid_reg <= '0';
                end if;
                if (lut_wvalid_reg = '1') and (m_axi_lut_wready = '1') then
                    lut_wvalid_reg   <= '0';
                    lut_write_pending <= '0';
                end if;

                -- Clear AR valid when accepted
                if (lut_arvalid_reg = '1') and (m_axi_lut_arready = '1') then
                    lut_arvalid_reg <= '0';
                end if;

                -- Root-label lookup: when LUT returns a value, update parent_label
                if (m_axi_lut_rvalid = '1') and (lut_rready_reg = '1') then
                    parent_label <= m_axi_lut_rdata(15 downto 0);
                end if;

                case state is
                    ------------------------------------------------------------------
                    when IDLE =>
                        s_axis_tready_int <= '0';
                        m_axis_tvalid_int <= '0';
                        m_axis_tlast_int  <= '0';
                        x_cnt             <= 0;
                        y_cnt             <= 0;
                        apply_state       <= AP_IDLE;
                        irq_done_reg      <= '0';

                        if (reg_control(0) = '1') then
                            state <= WAIT_SLICES;
                        end if;

                    ------------------------------------------------------------------
                    when WAIT_SLICES =>
                        s_axis_tready_int <= '0';
                        m_axis_tvalid_int <= '0';
                        m_axis_tlast_int  <= '0';

                        -- wait until all slices_done bits are '1'
                        if slices_done = "1111" then
                            x_cnt <= 0;
                            y_cnt <= 0;
                            state <= RUN_BUILD;
                        end if;

                    ------------------------------------------------------------------
                    when RUN_BUILD =>
                        s_axis_tready_int <= '1';  -- accept stream whenever possible

                        if in_fire = '1' then
                            -- extract label (low 16 bits)
                            lbl_cur := unsigned(s_axis_tdata(15 downto 0));

                            -- handle vertical adjacency for all rows except first
                            if (y_cnt > 0) then
                                lbl_up := unsigned(prev_row(x_cnt));

                                if (lbl_cur /= 0) and (lbl_up /= 0) and (lbl_cur /= lbl_up) then
                                    -- hi/lo
                                    if lbl_cur > lbl_up then
                                        hi_lbl := lbl_cur;
                                        lo_lbl := lbl_up;
                                    else
                                        hi_lbl := lbl_up;
                                        lo_lbl := lbl_cur;
                                    end if;

                                    -- schedule LUT[hi] = lo if no write pending
                                    if lut_write_pending = '0' then
                                        -- address = hi * 4 (word index), 13-bit label -> 8k entries
                                        addr_u := (others => '0');
                                        addr_u(14 downto 2) := hi_lbl(12 downto 0);  -- label[12:0]
                                        lut_awaddr_reg      <= std_logic_vector(addr_u);

                                        lut_wdata_reg       <= (others => '0');
                                        lut_wdata_reg(15 downto 0) <= std_logic_vector(lo_lbl);
                                        lut_wstrb_reg       <= "1111";
                                        lut_awvalid_reg     <= '1';
                                        lut_wvalid_reg      <= '1';
                                        lut_write_pending   <= '1';
                                    end if;
                                end if;
                            end if;

                            -- update previous-row buffer with current label
                            prev_row(x_cnt) <= std_logic_vector(lbl_cur);

                            -- (optional) pass-through output; usually ignored in BUILD
                            m_axis_tdata_int  <= s_axis_tdata;
                            m_axis_tvalid_int <= '1';
                            m_axis_tlast_int  <= s_axis_tlast;

                            -- coordinate update
                            if x_cnt = IMG_WIDTH-1 then
                                x_cnt <= 0;
                                y_cnt <= y_cnt + 1;
                            else
                                x_cnt <= x_cnt + 1;
                            end if;

                            -- frame end detection via TLAST
                            if s_axis_tlast = '1' then
                                -- end of frame -> go to APPLY phase
                                x_cnt        <= 0;
                                y_cnt        <= 0;
                                state        <= RUN_APPLY;
                                apply_state  <= AP_IDLE;
                                m_axis_tvalid_int <= '0';
                                m_axis_tlast_int  <= '0';
                            end if;

                        elsif out_fire = '1' then
                            -- downstream consumed
                            m_axis_tvalid_int <= '0';
                            if m_axis_tlast_int = '1' then
                                m_axis_tlast_int <= '0';
                            end if;
                        end if;

                    ------------------------------------------------------------------
                    when RUN_APPLY =>
                        -- drive s_axis_tready depending on sub-state
                        case apply_state is
                            when AP_IDLE =>
                                -- ready to accept a new pixel
                                s_axis_tready_int <= '1';

                                if in_fire = '1' then
                                    current_label <= s_axis_tdata(15 downto 0);
                                    apply_last_in <= s_axis_tlast;
                                    root_label    <= s_axis_tdata(15 downto 0);

                                    if s_axis_tdata(15 downto 0) = x"0000" then
                                        apply_state <= AP_OUTPUT;
                                    else
                                        -- start LUT read for parent
                                        lut_araddr_reg(31 downto 0) <= (others => '0');
                                        lut_araddr_reg(14 downto 2) <= s_axis_tdata(12 downto 0);
                                        lut_arvalid_reg             <= '1';
                                        lut_rready_reg              <= '1';
                                        apply_state                 <= AP_READ_LUT;
                                    end if;
                                end if;

                            when AP_READ_LUT =>
                                s_axis_tready_int <= '0';

                                if (m_axi_lut_rvalid = '1') and (lut_rready_reg = '1') then
                                    if m_axi_lut_rdata(15 downto 0) = x"0000" or
                                       m_axi_lut_rdata(15 downto 0) = current_label then
                                        root_label     <= current_label;
                                        lut_rready_reg <= '0';
                                        apply_state    <= AP_OUTPUT;
                                    else
                                        current_label <= m_axi_lut_rdata(15 downto 0);
                                        lut_araddr_reg(31 downto 0) <= (others => '0');
                                        lut_araddr_reg(14 downto 2) <= m_axi_lut_rdata(12 downto 0);
                                        lut_arvalid_reg             <= '1';
                                    end if;
                                end if;

                            when AP_OUTPUT =>
                                s_axis_tready_int <= '0';

                                if m_axis_tvalid_int = '0' or out_fire = '1' then
                                    m_axis_tdata_int(15 downto 0)  <= root_label;
                                    m_axis_tdata_int(31 downto 16) <= (others => '0');
                                    m_axis_tvalid_int              <= '1';
                                    m_axis_tlast_int               <= apply_last_in;

                                    if apply_last_in = '1' then
                                        apply_state  <= AP_IDLE;
                                        state        <= DONE;
                                        irq_done_reg <= '1';
                                    else
                                        apply_state <= AP_IDLE;
                                    end if;
                                end if;

                            when others =>
                                apply_state <= AP_IDLE;
                        end case;

                    ------------------------------------------------------------------
                    when DONE =>
                        s_axis_tready_int <= '0';
                        m_axis_tvalid_int <= '0';
                        m_axis_tlast_int  <= '0';

                        -- Wait until SW clears start bit
                        if reg_control(0) = '0' then
                            state <= IDLE;
                        end if;

                    when others =>
                        state <= IDLE;

                end case;
            end if;
        end if;
    end process;

end rtl;
