library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ccl_relabel_core is
    generic (
        G_AXIS_WIDTH : integer := 32
    );
    port (
        aclkrst_clk  : in  std_logic;
        aclkrst_n    : in  std_logic;
        slices_done  : in  std_logic_vector(3 downto 0);

        -- AXI4-Lite Control
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

        -- AXIS Stream IN (Labels)
        s_axis_tdata  : in  std_logic_vector(G_AXIS_WIDTH-1 downto 0);
        s_axis_tvalid : in  std_logic;
        s_axis_tready : out std_logic;
        s_axis_tlast  : in  std_logic;

        -- AXIS Stream OUT (Relabeled)
        m_axis_tdata  : out std_logic_vector(G_AXIS_WIDTH-1 downto 0);
        m_axis_tvalid : out std_logic;
        m_axis_tready : in  std_logic;
        m_axis_tlast  : out std_logic;

        -- AXI4 Master (Shared LUT)
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

        irq_done : out std_logic
    );
end entity ccl_relabel_core;

architecture rtl of ccl_relabel_core is
    signal reg_control : std_logic_vector(31 downto 0) := (others => '0');
    constant AXIL_ALWAYS_READY : boolean := true;
    constant C_LUT_BASE_ADDR   : unsigned(31 downto 0) := x"C0000000";

    signal s_axis_tready_int : std_logic := '0';
    signal m_axis_tvalid_int : std_logic := '0';
    signal m_axis_tdata_int  : std_logic_vector(G_AXIS_WIDTH-1 downto 0) := (others => '0');
    signal m_axis_tlast_int  : std_logic := '0';
    signal in_fire  : std_logic;
    signal out_fire : std_logic;

    type state_t is (IDLE, WAIT_SLICES, RUN_APPLY, DONE);
    signal state : state_t := IDLE;

    signal lut_araddr_reg  : std_logic_vector(31 downto 0) := (others => '0');
    signal lut_arvalid_reg : std_logic := '0';
    signal lut_rready_reg  : std_logic := '0';

    type apply_state_t is (AP_IDLE, AP_READ_LUT, AP_OUTPUT);
    signal apply_state : apply_state_t := AP_IDLE;

    signal current_label   : unsigned(31 downto 0) := (others => '0');
    signal root_label      : unsigned(31 downto 0) := (others => '0');
    signal apply_last_in   : std_logic := '0';
    signal irq_done_reg    : std_logic := '0';

begin
    -- AXI Lite Assignments
    s_axi_awready <= '1'; s_axi_wready <= '1'; s_axi_bvalid <= '1'; s_axi_bresp <= "00";
    s_axi_arready <= '1'; s_axi_rvalid <= '1'; s_axi_rresp <= "00";

    process(aclkrst_clk)
    begin
        if rising_edge(aclkrst_clk) then
            if aclkrst_n = '0' then reg_control <= (others => '0');
            elsif s_axi_awvalid='1' and s_axi_wvalid='1' and s_axi_awaddr(5 downto 2)="0000" then
                reg_control <= s_axi_wdata;
            end if;
        end if;
    end process;
    s_axi_rdata <= reg_control when s_axi_araddr(5 downto 2)="0000" else (others=>'0');

    -- Connections
    s_axis_tready <= s_axis_tready_int;
    m_axis_tdata  <= m_axis_tdata_int;
    m_axis_tvalid <= m_axis_tvalid_int;
    m_axis_tlast  <= m_axis_tlast_int;
    in_fire  <= s_axis_tvalid and s_axis_tready_int;
    out_fire <= m_axis_tvalid_int and m_axis_tready;

    -- Unused Write Channels (Slices do the writing now)
    m_axi_lut_awaddr <= (others=>'0'); m_axi_lut_awvalid<='0'; m_axi_lut_wdata<=(others=>'0');
    m_axi_lut_wstrb<=(others=>'0'); m_axi_lut_wvalid<='0'; m_axi_lut_bready<='1';

    m_axi_lut_araddr <= lut_araddr_reg;
    m_axi_lut_arvalid <= lut_arvalid_reg;
    m_axi_lut_rready <= lut_rready_reg;
    irq_done <= irq_done_reg;

    -- Main Process
    process(aclkrst_clk)
        variable addr_u : unsigned(31 downto 0);
    begin
        if rising_edge(aclkrst_clk) then
            if aclkrst_n = '0' then
                state <= IDLE;
                apply_state <= AP_IDLE;
                s_axis_tready_int <= '0';
                lut_arvalid_reg <= '0';
                irq_done_reg <= '0';
            else
                -- Clear ARVALID
                if m_axi_lut_arready = '1' then lut_arvalid_reg <= '0'; end if;

                case state is
                    when IDLE =>
                        irq_done_reg <= '0';
                        m_axis_tvalid_int <= '0';
                        if reg_control(0) = '1' then state <= WAIT_SLICES; end if;

                    when WAIT_SLICES =>
                        -- The Synchronization: Wait for all 4 slices to finish
                        if slices_done = "1111" then
                            state <= RUN_APPLY;
                        end if;

                    when RUN_APPLY =>
                        case apply_state is
                            when AP_IDLE =>
                                s_axis_tready_int <= '1';
                                if in_fire = '1' then
                                    current_label <= unsigned(s_axis_tdata);
                                    apply_last_in <= s_axis_tlast;
                                    root_label    <= unsigned(s_axis_tdata);
                                    
                                    if unsigned(s_axis_tdata) = 0 then
                                        apply_state <= AP_OUTPUT;
                                    else
                                        -- Read LUT to find parent
                                        addr_u := C_LUT_BASE_ADDR + (unsigned(s_axis_tdata) sll 2);
                                        lut_araddr_reg <= std_logic_vector(addr_u);
                                        lut_arvalid_reg <= '1';
                                        lut_rready_reg <= '1';
                                        apply_state <= AP_READ_LUT;
                                    end if;
                                end if;

                            when AP_READ_LUT =>
                                s_axis_tready_int <= '0';
                                if m_axi_lut_rvalid = '1' then
                                    if unsigned(m_axi_lut_rdata) = 0 or unsigned(m_axi_lut_rdata) = current_label then
                                        -- Found root (or empty entry means root)
                                        lut_rready_reg <= '0';
                                        apply_state <= AP_OUTPUT;
                                    else
                                        -- Chase pointer: data becomes new address
                                        current_label <= unsigned(m_axi_lut_rdata);
                                        root_label <= unsigned(m_axi_lut_rdata); -- Update root guess
                                        addr_u := C_LUT_BASE_ADDR + (unsigned(m_axi_lut_rdata) sll 2);
                                        lut_araddr_reg <= std_logic_vector(addr_u);
                                        lut_arvalid_reg <= '1';
                                    end if;
                                end if;

                            when AP_OUTPUT =>
                                s_axis_tready_int <= '0';
                                if m_axis_tvalid_int = '0' or out_fire = '1' then
                                    m_axis_tdata_int <= std_logic_vector(root_label);
                                    m_axis_tvalid_int <= '1';
                                    m_axis_tlast_int <= apply_last_in;
                                    if apply_last_in = '1' then
                                        apply_state <= AP_IDLE;
                                        state <= DONE;
                                        irq_done_reg <= '1';
                                    else
                                        apply_state <= AP_IDLE;
                                    end if;
                                end if;
                        end case;

                    when DONE =>
                        m_axis_tvalid_int <= '0';
                        s_axis_tready_int <= '0';
                        if reg_control(0) = '0' then state <= IDLE; end if;
                end case;
            end if;
        end if;
    end process;
end rtl;