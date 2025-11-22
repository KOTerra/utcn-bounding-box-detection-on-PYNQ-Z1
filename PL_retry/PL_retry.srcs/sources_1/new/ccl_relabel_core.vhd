library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ccl_relabel_core is
    generic (
        G_AXIS_WIDTH : integer := 32
    );
    port (
        ---------------------------------------------------------------------
        -- Global
        ---------------------------------------------------------------------
        aclkrst_clk  : in  std_logic;
        aclkrst_n    : in  std_logic;

        ---------------------------------------------------------------------
        -- Slices done (from 4 slice cores)
        ---------------------------------------------------------------------
        slices_done  : in  std_logic_vector(3 downto 0);

        ---------------------------------------------------------------------
        -- AXI4-Lite slave (simple regbank)
        --  0x00 : CONTROL
        --        bit0 = start
        --        bit1 = mode (1 = BUILD equivalence from boundaries,
        --                     0 = APPLY LUT (relabel stream))
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
        -- AXIS Slave (input labeled image from DMA5)
        ---------------------------------------------------------------------
        s_axis_tdata  : in  std_logic_vector(G_AXIS_WIDTH-1 downto 0);
        s_axis_tvalid : in  std_logic;
        s_axis_tready : out std_logic;
        s_axis_tlast  : in  std_logic;

        ---------------------------------------------------------------------
        -- AXIS Master (output relabeled image to DMA5)
        ---------------------------------------------------------------------
        m_axis_tdata  : out std_logic_vector(G_AXIS_WIDTH-1 downto 0);
        m_axis_tvalid : out std_logic;
        m_axis_tready : in  std_logic;
        m_axis_tlast  : out std_logic;

        ---------------------------------------------------------------------
        -- AXI4 Master (to shared LUT BRAM via axi_bram_ctrl)
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
        m_axi_lut_rready  : out std_logic;

        ---------------------------------------------------------------------
        -- optional interrupt to PS
        ---------------------------------------------------------------------
        irq_done : out std_logic
    );
end entity ccl_relabel_core;


architecture rtl of ccl_relabel_core is

    -------------------------------------------------------------------------
    -- AXI-Lite simple control register
    --  0x00 : CONTROL
    --        bit0 = start
    --        bit1 = mode (1 = BUILD equivalence from boundaries,
    --                     0 = APPLY LUT (relabel stream))
    -------------------------------------------------------------------------
    signal reg_control : std_logic_vector(31 downto 0) := (others => '0');

    constant AXIL_ALWAYS_READY : boolean := true;

    -------------------------------------------------------------------------
    -- AXIS handshake and data path
    -------------------------------------------------------------------------
    signal s_axis_tready_int : std_logic := '0';

    signal m_axis_tvalid_int : std_logic := '0';
    signal m_axis_tdata_int  : std_logic_vector(G_AXIS_WIDTH-1 downto 0) := (others => '0');
    signal m_axis_tlast_int  : std_logic := '0';

    signal in_fire  : std_logic;
    signal out_fire : std_logic;

    -------------------------------------------------------------------------
    -- Main state machine
    -------------------------------------------------------------------------
    type state_t is (
        IDLE,
        WAIT_SLICES,
        RUN_BUILD,      -- build LUT from slice boundaries
        RUN_APPLY,      -- apply LUT to labels
        DONE
    );
    signal state : state_t := IDLE;

    -------------------------------------------------------------------------
    -- Row/column counters (assume 512x512 image, one pixel per beat)
    -------------------------------------------------------------------------
    constant IMG_WIDTH  : integer := 512;
    constant SLICE_H    : integer := 128;  -- 4 slices * 128 = 512 rows

    signal x_cnt : integer range 0 to IMG_WIDTH-1 := 0;
    signal y_cnt : integer range 0 to (4*SLICE_H) := 0;

    -------------------------------------------------------------------------
    -- For boundary detection (previous row buffer)
    -------------------------------------------------------------------------
    type row_t is array (0 to IMG_WIDTH-1) of std_logic_vector(15 downto 0);
    signal prev_row : row_t;

    -------------------------------------------------------------------------
    -- LUT AXI write logic (for BUILD mode)
    -- We treat LUT as a direct map: LUT[label] = canonical_label
    -- stored as 32-bit word, low 16 bits used.
    -- Depth is limited to 8192 entries via label[12:0].
    -------------------------------------------------------------------------
    signal lut_awaddr_reg     : std_logic_vector(31 downto 0) := (others => '0');
    signal lut_awvalid_reg    : std_logic := '0';
    signal lut_wdata_reg      : std_logic_vector(31 downto 0) := (others => '0');
    signal lut_wstrb_reg      : std_logic_vector(3 downto 0)  := (others => '0');
    signal lut_wvalid_reg     : std_logic := '0';
    signal lut_write_pending  : std_logic := '0';

    -------------------------------------------------------------------------
    -- LUT AXI read logic (for APPLY mode)
    -------------------------------------------------------------------------
    signal lut_araddr_reg     : std_logic_vector(31 downto 0) := (others => '0');
    signal lut_arvalid_reg    : std_logic := '0';
    signal lut_rready_reg     : std_logic := '0';
    signal lut_read_pending   : std_logic := '0';

    -- Per-pixel apply sub-state
    type apply_substate_t is (AP_IDLE, AP_WAIT, AP_OUT);
    signal apply_state : apply_substate_t := AP_IDLE;

    signal cur_label_in    : std_logic_vector(15 downto 0) := (others => '0');
    signal cur_label_canon : std_logic_vector(15 downto 0) := (others => '0');
    signal cur_tlast       : std_logic := '0';

    -------------------------------------------------------------------------
    -- IRQ
    -------------------------------------------------------------------------
    signal irq_done_reg : std_logic := '0';

begin

    ----------------------------------------------------------------------------
    -- AXI-Lite: always ready, single CONTROL register
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

    -- Readback (only CONTROL implemented)
    with s_axi_araddr(5 downto 2) select
        s_axi_rdata <= reg_control when "0000",
                       x"00000000" when others;

    ----------------------------------------------------------------------------
    -- Connect internal AXIS to ports
    ----------------------------------------------------------------------------
    s_axis_tready <= s_axis_tready_int;

    m_axis_tdata  <= m_axis_tdata_int;
    m_axis_tvalid <= m_axis_tvalid_int;
    m_axis_tlast  <= m_axis_tlast_int;

    in_fire  <= s_axis_tvalid and s_axis_tready_int;
    out_fire <= m_axis_tvalid_int and m_axis_tready;

    ----------------------------------------------------------------------------
    -- AXI-LUT port mapping
    ----------------------------------------------------------------------------
    m_axi_lut_awaddr  <= lut_awaddr_reg;
    m_axi_lut_awvalid <= lut_awvalid_reg;
    m_axi_lut_wdata   <= lut_wdata_reg;
    m_axi_lut_wstrb   <= lut_wstrb_reg;
    m_axi_lut_wvalid  <= lut_wvalid_reg;
    m_axi_lut_bready  <= '1';  -- always ready for responses

    m_axi_lut_araddr  <= lut_araddr_reg;
    m_axi_lut_arvalid <= lut_arvalid_reg;
    m_axi_lut_rready  <= lut_rready_reg;

    ----------------------------------------------------------------------------
    -- IRQ
    ----------------------------------------------------------------------------
    irq_done <= irq_done_reg;

    ----------------------------------------------------------------------------
    -- Main FSM + LUT access + row/col counters
    ----------------------------------------------------------------------------
    process(aclkrst_clk)
        variable lbl_cur      : unsigned(15 downto 0);
        variable lbl_up       : unsigned(15 downto 0);
        variable hi_lbl       : unsigned(15 downto 0);
        variable lo_lbl       : unsigned(15 downto 0);
        variable addr_u       : unsigned(31 downto 0);
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
                irq_done_reg      <= '0';

                lut_awaddr_reg    <= (others => '0');
                lut_awvalid_reg   <= '0';
                lut_wdata_reg     <= (others => '0');
                lut_wstrb_reg     <= (others => '0');
                lut_wvalid_reg    <= '0';
                lut_write_pending <= '0';

                lut_araddr_reg    <= (others => '0');
                lut_arvalid_reg   <= '0';
                lut_rready_reg    <= '0';
                lut_read_pending  <= '0';

                apply_state       <= AP_IDLE;
                cur_label_in      <= (others => '0');
                cur_label_canon   <= (others => '0');
                cur_tlast         <= '0';

            else
                ----------------------------------------------------------------
                -- Default: keep IRQ low unless DONE
                ----------------------------------------------------------------
                if reg_control(0) = '0' then
                    irq_done_reg <= '0';
                end if;

                ----------------------------------------------------------------
                -- AXI-LUT write handshake (for BUILD mode)
                ----------------------------------------------------------------
                if lut_write_pending = '1' then
                    if (m_axi_lut_awready = '1') and (m_axi_lut_wready = '1') then
                        lut_awvalid_reg   <= '0';
                        lut_wvalid_reg    <= '0';
                        lut_write_pending <= '0';
                    end if;
                end if;

                ----------------------------------------------------------------
                -- AXI-LUT read handshake (for APPLY mode)
                ----------------------------------------------------------------
                if lut_read_pending = '1' then
                    -- Once ARVALID accepted, drop it and assert RREADY
                    if (lut_arvalid_reg = '1') and (m_axi_lut_arready = '1') then
                        lut_arvalid_reg <= '0';
                        lut_rready_reg  <= '1';
                    end if;

                    -- Wait for RVALID
                    if (lut_rready_reg = '1') and (m_axi_lut_rvalid = '1') then
                        -- single read complete
                        lut_rready_reg    <= '0';
                        lut_read_pending  <= '0';
                        -- capture canonical label (low 16 bits)
                        cur_label_canon   <= m_axi_lut_rdata(15 downto 0);
                    end if;
                end if;

                ----------------------------------------------------------------
                -- Main FSM
                ----------------------------------------------------------------
                case state is

                    ----------------------------------------------------------------
                    when IDLE =>
                        s_axis_tready_int <= '0';
                        m_axis_tvalid_int <= '0';
                        m_axis_tlast_int  <= '0';
                        x_cnt             <= 0;
                        y_cnt             <= 0;
                        apply_state       <= AP_IDLE;

                        if (reg_control(0) = '1') then
                            state <= WAIT_SLICES;
                        end if;

                    ----------------------------------------------------------------
                    when WAIT_SLICES =>
                        s_axis_tready_int <= '0';
                        m_axis_tvalid_int <= '0';
                        m_axis_tlast_int  <= '0';
                        x_cnt             <= 0;
                        y_cnt             <= 0;
                        apply_state       <= AP_IDLE;

                        if slices_done = "1111" then
                            if reg_control(1) = '1' then
                                -- BUILD mode
                                state <= RUN_BUILD;
                            else
                                -- APPLY mode
                                state <= RUN_APPLY;
                            end if;
                        end if;

                    ----------------------------------------------------------------
                    -- RUN_BUILD: stream labeled image, detect cross-slice
                    -- boundaries, write LUT[hi] = lo for each mismatch
                    ----------------------------------------------------------------
                    when RUN_BUILD =>
                        s_axis_tready_int <= '1';  -- accept stream whenever possible

                        if in_fire = '1' then
                            -- extract label (low 16 bits)
                            lbl_cur := unsigned(s_axis_tdata(15 downto 0));

                            -- current row/col -> handle boundary equivalence
                            if (y_cnt = SLICE_H) or (y_cnt = 2*SLICE_H) or (y_cnt = 3*SLICE_H) then
                                -- this row is first row of slice1/2/3: compare with previous row
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

                            -- update previous-row buffer
                            prev_row(x_cnt) <= std_logic_vector(lbl_cur);

                            -- pass-through output (can be ignored or saved via DMA)
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
                                -- end of frame -> done with BUILD
                                state        <= DONE;
                                irq_done_reg <= '1';
                            end if;

                        elsif out_fire = '1' then
                            -- downstream consumed
                            m_axis_tvalid_int <= '0';
                            if m_axis_tlast_int = '1' then
                                m_axis_tlast_int <= '0';
                            end if;
                        end if;

                    ----------------------------------------------------------------
                    -- RUN_APPLY: stream labels again, read LUT[label],
                    -- output canonical label
                    ----------------------------------------------------------------
                    when RUN_APPLY =>
                        -- drive s_axis_tready depending on sub-state
                        case apply_state is
                            when AP_IDLE =>
                                -- ready to accept a new pixel
                                s_axis_tready_int <= '1';
                                m_axis_tvalid_int <= '0';
                                m_axis_tlast_int  <= '0';

                                if in_fire = '1' then
                                    cur_label_in <= s_axis_tdata(15 downto 0);
                                    cur_tlast    <= s_axis_tlast;

                                    -- coordinates update here (one pixel accepted)
                                    if x_cnt = IMG_WIDTH-1 then
                                        x_cnt <= 0;
                                        y_cnt <= y_cnt + 1;
                                    else
                                        x_cnt <= x_cnt + 1;
                                    end if;

                                    -- if label == 0, no need to read LUT
                                    if s_axis_tdata(15 downto 0) = x"0000" then
                                        cur_label_canon <= x"0000";
                                        apply_state     <= AP_OUT;
                                    else
                                        -- start LUT read
                                        addr_u := (others => '0');
                                        addr_u(14 downto 2) := unsigned(s_axis_tdata(12 downto 0));
                                        lut_araddr_reg    <= std_logic_vector(addr_u);
                                        lut_arvalid_reg   <= '1';
                                        lut_rready_reg    <= '0';
                                        lut_read_pending  <= '1';
                                        apply_state       <= AP_WAIT;
                                    end if;
                                end if;

                            when AP_WAIT =>
                                -- stall input until LUT read returns
                                s_axis_tready_int <= '0';

                                if lut_read_pending = '0' then
                                    -- read done, cur_label_canon is set
                                    apply_state <= AP_OUT;
                                end if;

                            when AP_OUT =>
                                -- choose final label:
                                -- if LUT entry is 0 or equal to label, keep original
                                if (cur_label_canon = x"0000") or (cur_label_canon = cur_label_in) then
                                    m_axis_tdata_int(15 downto 0)  <= cur_label_in;
                                    m_axis_tdata_int(31 downto 16) <= (others => '0');
                                else
                                    m_axis_tdata_int(15 downto 0)  <= cur_label_canon;
                                    m_axis_tdata_int(31 downto 16) <= (others => '0');
                                end if;
                                m_axis_tvalid_int <= '1';
                                m_axis_tlast_int  <= cur_tlast;
                                s_axis_tready_int <= '0';

                                if out_fire = '1' then
                                    m_axis_tvalid_int <= '0';
                                    if m_axis_tlast_int = '1' then
                                        m_axis_tlast_int <= '0';
                                        state        <= DONE;
                                        irq_done_reg <= '1';
                                    end if;
                                    apply_state <= AP_IDLE;
                                end if;
                        end case;

                    ----------------------------------------------------------------
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
