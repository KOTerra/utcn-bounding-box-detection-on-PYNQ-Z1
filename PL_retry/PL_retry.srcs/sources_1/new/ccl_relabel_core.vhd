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
        -- AXIS Slave (input labeled image)
        ---------------------------------------------------------------------
        s_axis_tdata  : in  std_logic_vector(G_AXIS_WIDTH-1 downto 0);
        s_axis_tvalid : in  std_logic;
        s_axis_tready : out std_logic;
        s_axis_tlast  : in  std_logic;

        ---------------------------------------------------------------------
        -- AXIS Master (output relabeled image)
        ---------------------------------------------------------------------
        m_axis_tdata  : out std_logic_vector(G_AXIS_WIDTH-1 downto 0);
        m_axis_tvalid : out std_logic;
        m_axis_tready : in  std_logic;
        m_axis_tlast  : out std_logic;

        ---------------------------------------------------------------------
        -- AXI4 Master (to shared LUT BRAM)
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
    -- Internal AXIS handshake and data
    -------------------------------------------------------------------------
    signal s_axis_tready_int : std_logic := '0';
    signal m_axis_tvalid_int : std_logic := '0';
    signal m_axis_tdata_int  : std_logic_vector(G_AXIS_WIDTH-1 downto 0) := (others => '0');

    -------------------------------------------------------------------------
    -- Simple FSM to wait until all slices are done
    -------------------------------------------------------------------------
    type state_t is (WAIT_SLICES, RUNNING, DONE);
    signal state : state_t := WAIT_SLICES;

    signal irq_done_reg : std_logic := '0';

begin

    ----------------------------------------------------------------------------
    -- Connect internal signals to outputs
    ----------------------------------------------------------------------------
    s_axis_tready <= s_axis_tready_int;

    m_axis_tvalid <= m_axis_tvalid_int;
    m_axis_tdata  <= m_axis_tdata_int;
    -- For now, just propagate TLAST when data flows; s_axis_tlast is only seen
    -- when s_axis_tready_int = '1', so this is safe.
    m_axis_tlast  <= s_axis_tlast;

    irq_done <= irq_done_reg;

    ----------------------------------------------------------------------------
    -- AXIS ready logic:
    --   - In WAIT_SLICES: do not accept data (tready = 0)
    --   - In RUNNING: accept data whenever downstream (DMA) is ready
    --   - In DONE: stop accepting data until reset
    ----------------------------------------------------------------------------
    s_axis_tready_int <= '1' when (state = RUNNING and m_axis_tready = '1') else '0';

    ----------------------------------------------------------------------------
    -- Main FSM + pass-through behavior
    ----------------------------------------------------------------------------
    process(aclkrst_clk)
    begin
        if rising_edge(aclkrst_clk) then
            if aclkrst_n = '0' then
                state             <= WAIT_SLICES;
                m_axis_tvalid_int <= '0';
                m_axis_tdata_int  <= (others => '0');
                irq_done_reg      <= '0';
            else
                case state is

                    ----------------------------------------------------------------
                    -- WAIT_SLICES: wait until all 4 slice cores assert done
                    ----------------------------------------------------------------
                    when WAIT_SLICES =>
                        m_axis_tvalid_int <= '0';
                        irq_done_reg      <= '0';
                        if slices_done = "1111" then
                            state <= RUNNING;
                        end if;

                    ----------------------------------------------------------------
                    -- RUNNING: stream input labels through (for now, just pass-through)
                    -- Later this is where LUT-based relabeling logic will go.
                    ----------------------------------------------------------------
                    when RUNNING =>
                        -- When we can accept and forward one beat
                        if (s_axis_tvalid = '1' and s_axis_tready_int = '1') then
                            m_axis_tdata_int  <= s_axis_tdata;
                            m_axis_tvalid_int <= '1';

                            -- If this beat is TLAST, mark DONE
                            if s_axis_tlast = '1' then
                                state        <= DONE;
                                irq_done_reg <= '1';
                            end if;
                        elsif (m_axis_tready = '1' and m_axis_tvalid_int = '1') then
                            -- Downstream consumed the last valid beat, deassert valid
                            m_axis_tvalid_int <= '0';
                        end if;

                    ----------------------------------------------------------------
                    -- DONE: hold irq_done high until reset
                    -- (could be changed later to clear on AXI-Lite write)
                    ----------------------------------------------------------------
                    when DONE =>
                        -- Keep irq_done_reg = '1' until reset
                        m_axis_tvalid_int <= '0';
                        -- no state change here, wait for reset

                end case;
            end if;
        end if;
    end process;

    ----------------------------------------------------------------------------
    -- Tie off unused LUT AXI Master for now
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
    -- AXI-Lite minimal interface (always ready, no control yet)
    ----------------------------------------------------------------------------
    s_axi_awready <= '1';
    s_axi_wready  <= '1';
    s_axi_bresp   <= "00";
    s_axi_bvalid  <= '1';
    s_axi_arready <= '1';
    s_axi_rdata   <= (others => '0');
    s_axi_rresp   <= "00";
    s_axi_rvalid  <= '1';

end rtl;
