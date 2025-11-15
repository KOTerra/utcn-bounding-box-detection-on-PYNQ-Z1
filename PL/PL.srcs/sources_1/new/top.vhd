library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top is
  port (
    DDR_addr     : inout std_logic_vector(14 downto 0);
    DDR_ba       : inout std_logic_vector(2 downto 0);
    DDR_cas_n    : inout std_logic;
    DDR_ck_n     : inout std_logic;
    DDR_ck_p     : inout std_logic;
    DDR_cke      : inout std_logic;
    DDR_cs_n     : inout std_logic;
    DDR_dm       : inout std_logic_vector(3 downto 0);
    DDR_dq       : inout std_logic_vector(31 downto 0);
    DDR_dqs_n    : inout std_logic_vector(3 downto 0);
    DDR_dqs_p    : inout std_logic_vector(3 downto 0);
    DDR_odt      : inout std_logic;
    DDR_ras_n    : inout std_logic;
    DDR_reset_n  : inout std_logic;
    DDR_we_n     : inout std_logic;
    FIXED_IO_ddr_vrn  : inout std_logic;
    FIXED_IO_ddr_vrp  : inout std_logic;
    FIXED_IO_mio      : inout std_logic_vector(53 downto 0);
    FIXED_IO_ps_clk   : inout std_logic;
    FIXED_IO_ps_porb  : inout std_logic;
    FIXED_IO_ps_srstb : inout std_logic
  );
end top;

architecture rtl of top is

  ---------------------------------------------------------------------------
  -- design_1_wrapper component
  ---------------------------------------------------------------------------
  component design_1_wrapper is
    port (
      BRAM_PORTA_0_addr : out std_logic_vector(12 downto 0);
      BRAM_PORTA_0_clk  : out std_logic;
      BRAM_PORTA_0_din  : out std_logic_vector(31 downto 0);
      BRAM_PORTA_0_dout : in  std_logic_vector(31 downto 0);
      BRAM_PORTA_0_en   : out std_logic;
      BRAM_PORTA_0_rst  : out std_logic;
      BRAM_PORTA_0_we   : out std_logic_vector(3 downto 0);
      DDR_addr          : inout std_logic_vector(14 downto 0);
      DDR_ba            : inout std_logic_vector(2 downto 0);
      DDR_cas_n         : inout std_logic;
      DDR_ck_n          : inout std_logic;
      DDR_ck_p          : inout std_logic;
      DDR_cke           : inout std_logic;
      DDR_cs_n          : inout std_logic;
      DDR_dm            : inout std_logic_vector(3 downto 0);
      DDR_dq            : inout std_logic_vector(31 downto 0);
      DDR_dqs_n         : inout std_logic_vector(3 downto 0);
      DDR_dqs_p         : inout std_logic_vector(3 downto 0);
      DDR_odt           : inout std_logic;
      DDR_ras_n         : inout std_logic;
      DDR_reset_n       : inout std_logic;
      DDR_we_n          : inout std_logic;
      FIXED_IO_ddr_vrn  : inout std_logic;
      FIXED_IO_ddr_vrp  : inout std_logic;
      FIXED_IO_mio      : inout std_logic_vector(53 downto 0);
      FIXED_IO_ps_clk   : inout std_logic;
      FIXED_IO_ps_porb  : inout std_logic;
      FIXED_IO_ps_srstb : inout std_logic
    );
  end component;

  ---------------------------------------------------------------------------
  -- Block Memory Generator component
  ---------------------------------------------------------------------------
  component blk_mem_gen_0 is
    port (
      clka  : in  std_logic;
      ena   : in  std_logic;
      wea   : in  std_logic;
      addra : in  std_logic_vector(15 downto 0);  -- 16-bit
      dina  : in  std_logic_vector(31 downto 0);
      douta : out std_logic_vector(31 downto 0)
    );
  end component;

  ---------------------------------------------------------------------------
  -- Internal signals
  ---------------------------------------------------------------------------
  signal bram_addr     : std_logic_vector(12 downto 0);
  signal bram_addr_ext : std_logic_vector(15 downto 0);
  signal bram_clk      : std_logic;
  signal bram_din      : std_logic_vector(31 downto 0);
  signal bram_dout     : std_logic_vector(31 downto 0);
  signal bram_en       : std_logic;
  signal bram_rst      : std_logic;
  signal bram_we       : std_logic_vector(3 downto 0);

begin

  ---------------------------------------------------------------------------
  -- Address extension (legal VHDL)
  ---------------------------------------------------------------------------
  bram_addr_ext <= (others => '0');
  bram_addr_ext(12 downto 0) <= bram_addr;

  ---------------------------------------------------------------------------
  -- Instantiate block design wrapper
  ---------------------------------------------------------------------------
  u_bd : design_1_wrapper
    port map (
      BRAM_PORTA_0_addr => bram_addr,
      BRAM_PORTA_0_clk  => bram_clk,
      BRAM_PORTA_0_din  => bram_din,
      BRAM_PORTA_0_dout => bram_dout,
      BRAM_PORTA_0_en   => bram_en,
      BRAM_PORTA_0_rst  => bram_rst,
      BRAM_PORTA_0_we   => bram_we,
      DDR_addr          => DDR_addr,
      DDR_ba            => DDR_ba,
      DDR_cas_n         => DDR_cas_n,
      DDR_ck_n          => DDR_ck_n,
      DDR_ck_p          => DDR_ck_p,
      DDR_cke           => DDR_cke,
      DDR_cs_n          => DDR_cs_n,
      DDR_dm            => DDR_dm,
      DDR_dq            => DDR_dq,
      DDR_dqs_n         => DDR_dqs_n,
      DDR_dqs_p         => DDR_dqs_p,
      DDR_odt           => DDR_odt,
      DDR_ras_n         => DDR_ras_n,
      DDR_reset_n       => DDR_reset_n,
      DDR_we_n          => DDR_we_n,
      FIXED_IO_ddr_vrn  => FIXED_IO_ddr_vrn,
      FIXED_IO_ddr_vrp  => FIXED_IO_ddr_vrp,
      FIXED_IO_mio      => FIXED_IO_mio,
      FIXED_IO_ps_clk   => FIXED_IO_ps_clk,
      FIXED_IO_ps_porb  => FIXED_IO_ps_porb,
      FIXED_IO_ps_srstb => FIXED_IO_ps_srstb
    );

  ---------------------------------------------------------------------------
  -- Instantiate Block Memory Generator
  ---------------------------------------------------------------------------
  u_bram : blk_mem_gen_0
    port map (
      clka  => bram_clk,
      ena   => bram_en,
      wea   => bram_we(0),
      addra => bram_addr_ext,   -- now a static signal
      dina  => bram_din,
      douta => bram_dout
    );

end rtl;
