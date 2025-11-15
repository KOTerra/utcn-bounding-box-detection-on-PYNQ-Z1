-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Sat Nov 15 16:45:29 2025
-- Host        : POWERSLAVE running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/FACULTATE/facultate/anul3/sem1/SSC/proiect/utcn-bounding-box-detection-on-PYNQ-Z1/PL/PL.gen/sources_1/bd/design_1/ip/design_1_ccl_slice_core_1_0_1/design_1_ccl_slice_core_1_0_stub.vhdl
-- Design      : design_1_ccl_slice_core_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_ccl_slice_core_1_0 is
  Port ( 
    aclkrst_clk : in STD_LOGIC;
    aclkrst_n : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    irq_done : out STD_LOGIC;
    m_axi_lut_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_lut_awvalid : out STD_LOGIC;
    m_axi_lut_awready : in STD_LOGIC;
    m_axi_lut_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_lut_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_lut_wvalid : out STD_LOGIC;
    m_axi_lut_wready : in STD_LOGIC;
    m_axi_lut_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_lut_bvalid : in STD_LOGIC;
    m_axi_lut_bready : out STD_LOGIC;
    m_axi_lut_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_lut_arvalid : out STD_LOGIC;
    m_axi_lut_arready : in STD_LOGIC;
    m_axi_lut_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_lut_rvalid : in STD_LOGIC;
    m_axi_lut_rready : out STD_LOGIC
  );

end design_1_ccl_slice_core_1_0;

architecture stub of design_1_ccl_slice_core_1_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "aclkrst_clk,aclkrst_n,s_axi_awaddr[31:0],s_axi_awvalid,s_axi_awready,s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_wvalid,s_axi_wready,s_axi_bresp[1:0],s_axi_bvalid,s_axi_bready,s_axi_araddr[31:0],s_axi_arvalid,s_axi_arready,s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rvalid,s_axi_rready,s_axis_tdata[31:0],s_axis_tvalid,s_axis_tready,s_axis_tlast,m_axis_tdata[31:0],m_axis_tvalid,m_axis_tready,m_axis_tlast,irq_done,m_axi_lut_awaddr[31:0],m_axi_lut_awvalid,m_axi_lut_awready,m_axi_lut_wdata[31:0],m_axi_lut_wstrb[3:0],m_axi_lut_wvalid,m_axi_lut_wready,m_axi_lut_bresp[1:0],m_axi_lut_bvalid,m_axi_lut_bready,m_axi_lut_araddr[31:0],m_axi_lut_arvalid,m_axi_lut_arready,m_axi_lut_rdata[31:0],m_axi_lut_rvalid,m_axi_lut_rready";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "ccl_slice_core,Vivado 2024.1";
begin
end;
