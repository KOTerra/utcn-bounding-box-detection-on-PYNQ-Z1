library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ccl_slice_core is
    generic (
        G_AXIS_IN_WIDTH  : integer := 32;   -- packed binary pixels
        G_AXIS_OUT_WIDTH : integer := 32;   -- 32-bit label out
        G_MAX_WIDTH_PIX  : integer := 512;  -- slice width
        G_MAX_HEIGHT_PIX : integer := 128   -- slice height
    );
    port (
        ---------------------------------------------------------------------
        -- Global
        ---------------------------------------------------------------------
        aclkrst_clk  : in  std_logic;
        aclkrst_n    : in  std_logic;

        ---------------------------------------------------------------------
        -- Slice ID (2-bit) from BD Constant
        ---------------------------------------------------------------------
        slice_id_in  : in  std_logic_vector(1 downto 0);

        ---------------------------------------------------------------------
        -- AXI4-Lite slave (control)
        --  0x00 : CONTROL (bit0 = start)
        --  0x04 : STATUS  (bit0 = done)
        --  0x08 : WIDTH   (pixels)
        --  0x0C : HEIGHT  (rows in this slice)
        --  0x10 : SLICE_ID (read-only, mirrors slice_id_in)
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
        -- AXIS stream IN: packed binary pixels (from DMA)
        ---------------------------------------------------------------------
        s_axis_tdata  : in  std_logic_vector(G_AXIS_IN_WIDTH-1 downto 0);
        s_axis_tvalid : in  std_logic;
        s_axis_tready : out std_logic;
        s_axis_tlast  : in  std_logic;

        ---------------------------------------------------------------------
        -- AXIS stream OUT: 32-bit labels (to DMA)
        ---------------------------------------------------------------------
        m_axis_tdata  : out std_logic_vector(G_AXIS_OUT_WIDTH-1 downto 0);
        m_axis_tvalid : out std_logic;
        m_axis_tready : in  std_logic;
        m_axis_tlast  : out std_logic;

        ---------------------------------------------------------------------
        -- AXI Master (LUT) - left unused for slice core
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
end entity ccl_slice_core;

architecture rtl of ccl_slice_core is

    -------------------------------------------------------------------------
    -- Control registers
    -------------------------------------------------------------------------
    signal reg_control   : std_logic_vector(31 downto 0) := (others => '0');
    signal reg_status    : std_logic_vector(31 downto 0) := (others => '0');
    signal reg_width     : std_logic_vector(31 downto 0) := x"00000200"; --512
    signal reg_height    : std_logic_vector(31 downto 0) := x"00000080"; --128
    signal reg_slice_id  : std_logic_vector(31 downto 0) := (others => '0'); -- read-only mirror

    constant AXIL_ALWAYS_READY : boolean := true;

    -------------------------------------------------------------------------
    -- Stream control
    -------------------------------------------------------------------------
    signal s_axis_tready_int : std_logic := '0';
    signal out_data_reg      : std_logic_vector(G_AXIS_OUT_WIDTH-1 downto 0) := (others => '0');
    signal out_valid_reg     : std_logic := '0';
    signal out_last_reg      : std_logic := '0';

    signal in_fire  : std_logic;
    signal out_fire : std_logic;

    -------------------------------------------------------------------------
    -- Internal parameters / state
    -------------------------------------------------------------------------
    type proc_state_t is (IDLE, RUNNING, FLUSHING, DONE);
    signal proc_state : proc_state_t := IDLE;

    signal slice_id_u      : unsigned(1 downto 0) := (others => '0');
    signal width_u         : integer := 512;
    signal height_u        : integer := 128;

    signal local_label_counter : unsigned(15 downto 0) := (others => '0');
    signal global_label_offset : unsigned(31 downto 0) := (others => '0');

    -------------------------------------------------------------------------
    -- Unpacking & coordinates
    -------------------------------------------------------------------------
    signal unpack_shift_reg : std_logic_vector(G_AXIS_IN_WIDTH-1 downto 0)
                            := (others => '0');
    signal unpack_bits_left : integer range 0 to G_AXIS_IN_WIDTH := 0;

    signal pixel_x     : integer range 0 to G_MAX_WIDTH_PIX  := 0;
    signal pixel_y     : integer range 0 to G_MAX_HEIGHT_PIX := 0;

    signal last_left_lbl : unsigned(15 downto 0) := (others => '0');

    -------------------------------------------------------------------------
    -- Single line buffer for labels of previous row (implemented as BRAM)
    -------------------------------------------------------------------------
    type line_buf_t is array (0 to G_MAX_WIDTH_PIX-1) of std_logic_vector(15 downto 0);
    signal line_prev : line_buf_t;
    attribute ram_style : string;
    attribute ram_style of line_prev : signal is "block";

begin

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

    -- Write CONTROL/status/size
    process(aclkrst_clk)
    begin
        if rising_edge(aclkrst_clk) then
            if aclkrst_n = '0' then
                reg_control <= (others => '0');
                reg_status  <= (others => '0');
                reg_width   <= x"00000200";
                reg_height  <= x"00000080";
            else
                if (s_axi_awvalid = '1') and (s_axi_wvalid = '1') then
                    case s_axi_awaddr(5 downto 2) is
                        when "0000" => reg_control <= s_axi_wdata;
                        when "0001" => reg_status  <= s_axi_wdata; -- SW may clear/set bits
                        when "0010" => reg_width   <= s_axi_wdata;
                        when "0011" => reg_height  <= s_axi_wdata;
                        when others => null;
                    end case;
                end if;

                -- slice_id read-only mirror
                reg_slice_id <= (others => '0');
                reg_slice_id(1 downto 0) <= slice_id_in;

                -- Update status bit0 when DONE
                if proc_state = DONE then
                    reg_status(0) <= '1';
                end if;

                -- Clear done if SW writes CONTROL bit0 = 1
                if (s_axi_awvalid = '1') and (s_axi_wvalid = '1') and
                   (s_axi_awaddr(5 downto 2) = "0000") and (s_axi_wdata(0) = '1') then
                    reg_status(0) <= '0';
                end if;
            end if;
        end if;
    end process;

    -- AXI-Lite read mux (explicit sensitivity list for VHDL-93)
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

    ----------------------------------------------------------------------------
    -- Slice ID and image size from registers
    ----------------------------------------------------------------------------
    process(aclkrst_clk)
    begin
        if rising_edge(aclkrst_clk) then
            if aclkrst_n = '0' then
                slice_id_u <= (others => '0');
                width_u    <= 512;
                height_u   <= 128;
            else
                slice_id_u <= unsigned(slice_id_in);    -- from port
                width_u    <= to_integer(unsigned(reg_width));
                height_u   <= to_integer(unsigned(reg_height));
            end if;
        end if;
    end process;

    -- global label offset = slice_id << 16
    global_label_offset <= resize(slice_id_u, 32) sll 16;

    ----------------------------------------------------------------------------
    -- AXIS flow control and unpacking logic
    ----------------------------------------------------------------------------
    s_axis_tready <= s_axis_tready_int;

    in_fire  <= s_axis_tvalid and s_axis_tready_int;
    out_fire <= out_valid_reg and m_axis_tready;

    -- accept a new packed word only when we have finished all bits
    s_axis_tready_int <= '1'
        when (proc_state = RUNNING) and
             (unpack_bits_left = 0) and
             (out_valid_reg = '0')
        else '0';

    m_axis_tvalid <= out_valid_reg;
    m_axis_tdata  <= out_data_reg;
    m_axis_tlast  <= out_last_reg;

    ----------------------------------------------------------------------------
    -- Optional interrupt when done
    ----------------------------------------------------------------------------
    irq_done <= reg_status(0);

    ----------------------------------------------------------------------------
    -- AXI Master (LUT) - TIED OFF
    ----------------------------------------------------------------------------
    m_axi_lut_awaddr  <= (others => '0');
    m_axi_lut_awvalid <= '0';
    m_axi_lut_wdata   <= (others => '0');
    m_axi_lut_wstrb   <= (others => '0');
    m_axi_lut_wvalid  <= '0';
    m_axi_lut_bready  <= '1';   -- always ready, though nothing is sent
    m_axi_lut_araddr  <= (others => '0');
    m_axi_lut_arvalid <= '0';
    m_axi_lut_rready  <= '0';

    ----------------------------------------------------------------------------
    -- Main processing FSM (single pass per slice)
    ----------------------------------------------------------------------------
    process(aclkrst_clk)
        variable cur_bit_idx : integer := 0;
        variable pixel_bit   : std_logic := '0';
        variable lbl_left    : unsigned(15 downto 0);
        variable lbl_up      : unsigned(15 downto 0);
        variable lbl_new     : unsigned(15 downto 0);
        variable gv_lbl      : unsigned(31 downto 0);
    begin
        if rising_edge(aclkrst_clk) then
            if aclkrst_n = '0' then
                proc_state          <= IDLE;
                local_label_counter <= (others => '0');
                unpack_shift_reg    <= (others => '0');
                unpack_bits_left    <= 0;
                pixel_x             <= 0;
                pixel_y             <= 0;
                last_left_lbl       <= (others => '0');
                out_valid_reg       <= '0';
                out_data_reg        <= (others => '0');
                out_last_reg        <= '0';
            else
                case proc_state is

                    ------------------------------------------------------------------
                    when IDLE =>
                        out_valid_reg    <= '0';
                        out_last_reg     <= '0';
                        unpack_bits_left <= 0;
                        last_left_lbl    <= (others => '0');

                        if reg_control(0) = '1' then
                            proc_state          <= RUNNING;
                            local_label_counter <= (others => '0');
                            pixel_x             <= 0;
                            pixel_y             <= 0;
                            last_left_lbl       <= (others => '0');
                        end if;

                    ------------------------------------------------------------------
                    when RUNNING =>
                        -- first pass: labeling (no hardware LUT / union-find)
                        if (unpack_bits_left = 0) and (in_fire = '1') then
                            unpack_shift_reg <= s_axis_tdata;
                            unpack_bits_left <= G_AXIS_IN_WIDTH;
                        end if;

                        if (unpack_bits_left > 0) and (out_valid_reg = '0') then
                            cur_bit_idx      := unpack_bits_left - 1;
                            pixel_bit        := unpack_shift_reg(cur_bit_idx);
                            unpack_bits_left <= unpack_bits_left - 1;

                            -- check neighbors (left and up)
                            if pixel_x = 0 then
                                lbl_left := (others => '0');
                            else
                                lbl_left := last_left_lbl;
                            end if;

                            if pixel_y = 0 then
                                lbl_up := (others => '0');
                            else
                                lbl_up := unsigned(line_prev(pixel_x));
                            end if;

                            -- CCL decision
                            if pixel_bit = '0' then
                                lbl_new := (others => '0');
                            else
                                if (lbl_left = 0) and (lbl_up = 0) then
                                    -- new label
                                    local_label_counter <= local_label_counter + 1;
                                    lbl_new := local_label_counter + 1;
                                elsif (lbl_left /= 0) and ((lbl_up = 0) or (lbl_left = lbl_up)) then
                                    lbl_new := lbl_left;  -- continue with left
                                elsif (lbl_up /= 0) and (lbl_left = 0) then
                                    lbl_new := lbl_up;    -- continue with up
                                else
                                    -- equivalence case: left != up != 0
                                    -- here we simply pick one (e.g. smaller),
                                    -- full equivalence resolution is done later
                                    if lbl_left > lbl_up then
                                        lbl_new := lbl_up;
                                    else
                                        lbl_new := lbl_left;
                                    end if;
                                end if;
                            end if;

                            -- save the new label
                            line_prev(pixel_x) <= std_logic_vector(lbl_new);
                            last_left_lbl      <= lbl_new;  -- track left label

                            -- form final (global) label for output
                            gv_lbl        := global_label_offset + resize(lbl_new, 32);
                            out_data_reg  <= std_logic_vector(gv_lbl);
                            out_valid_reg <= '1';

                            -- update coordinates
                            if pixel_x = width_u - 1 then
                                pixel_x       <= 0;
                                last_left_lbl <= (others => '0');  -- new row

                                if pixel_y = height_u - 1 then
                                    pixel_y      <= 0;
                                    out_last_reg <= '1';
                                    proc_state   <= FLUSHING;  -- Done with slice
                                else
                                    pixel_y <= pixel_y + 1;
                                end if;
                            else
                                pixel_x <= pixel_x + 1;
                            end if;
                        end if;

                    ------------------------------------------------------------------
                    when FLUSHING =>
                        -- wait for last word to be consumed
                        if out_valid_reg = '0' then
                            proc_state <= DONE;
                        end if;

                    ------------------------------------------------------------------
                    when DONE =>
                        if reg_control(0) = '0' then
                            proc_state <= IDLE;
                        end if;

                    ------------------------------------------------------------------
                    when others =>
                        proc_state <= IDLE;

                end case;
            end if;
        end if;
    end process;

end rtl;
