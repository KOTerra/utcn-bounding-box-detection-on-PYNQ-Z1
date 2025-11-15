-- (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- (c) Copyright 2022-2025 Advanced Micro Devices, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:module_ref:ccl_slice_core:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_1_ccl_slice_core_2_0 IS
  PORT (
    aclkrst_clk : IN STD_LOGIC;
    aclkrst_n : IN STD_LOGIC;
    s_axi_awaddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_awvalid : IN STD_LOGIC;
    s_axi_awready : OUT STD_LOGIC;
    s_axi_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_wvalid : IN STD_LOGIC;
    s_axi_wready : OUT STD_LOGIC;
    s_axi_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_bvalid : OUT STD_LOGIC;
    s_axi_bready : IN STD_LOGIC;
    s_axi_araddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_arvalid : IN STD_LOGIC;
    s_axi_arready : OUT STD_LOGIC;
    s_axi_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_rvalid : OUT STD_LOGIC;
    s_axi_rready : IN STD_LOGIC;
    s_axis_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axis_tvalid : IN STD_LOGIC;
    s_axis_tready : OUT STD_LOGIC;
    s_axis_tlast : IN STD_LOGIC;
    m_axis_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axis_tvalid : OUT STD_LOGIC;
    m_axis_tready : IN STD_LOGIC;
    m_axis_tlast : OUT STD_LOGIC;
    irq_done : OUT STD_LOGIC;
    m_axi_lut_awaddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_lut_awvalid : OUT STD_LOGIC;
    m_axi_lut_awready : IN STD_LOGIC;
    m_axi_lut_wdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_lut_wstrb : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_lut_wvalid : OUT STD_LOGIC;
    m_axi_lut_wready : IN STD_LOGIC;
    m_axi_lut_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_lut_bvalid : IN STD_LOGIC;
    m_axi_lut_bready : OUT STD_LOGIC;
    m_axi_lut_araddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_lut_arvalid : OUT STD_LOGIC;
    m_axi_lut_arready : IN STD_LOGIC;
    m_axi_lut_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_lut_rvalid : IN STD_LOGIC;
    m_axi_lut_rready : OUT STD_LOGIC
  );
END design_1_ccl_slice_core_2_0;

ARCHITECTURE design_1_ccl_slice_core_2_0_arch OF design_1_ccl_slice_core_2_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_1_ccl_slice_core_2_0_arch: ARCHITECTURE IS "yes";
  COMPONENT ccl_slice_core IS
    GENERIC (
      G_AXIS_IN_WIDTH : INTEGER;
      G_AXIS_OUT_WIDTH : INTEGER;
      G_MAX_WIDTH_PIX : INTEGER;
      G_MAX_HEIGHT_PIX : INTEGER
    );
    PORT (
      aclkrst_clk : IN STD_LOGIC;
      aclkrst_n : IN STD_LOGIC;
      s_axi_awaddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_awvalid : IN STD_LOGIC;
      s_axi_awready : OUT STD_LOGIC;
      s_axi_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_wvalid : IN STD_LOGIC;
      s_axi_wready : OUT STD_LOGIC;
      s_axi_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_bvalid : OUT STD_LOGIC;
      s_axi_bready : IN STD_LOGIC;
      s_axi_araddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_arvalid : IN STD_LOGIC;
      s_axi_arready : OUT STD_LOGIC;
      s_axi_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_rvalid : OUT STD_LOGIC;
      s_axi_rready : IN STD_LOGIC;
      s_axis_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axis_tvalid : IN STD_LOGIC;
      s_axis_tready : OUT STD_LOGIC;
      s_axis_tlast : IN STD_LOGIC;
      m_axis_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axis_tvalid : OUT STD_LOGIC;
      m_axis_tready : IN STD_LOGIC;
      m_axis_tlast : OUT STD_LOGIC;
      irq_done : OUT STD_LOGIC;
      m_axi_lut_awaddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_lut_awvalid : OUT STD_LOGIC;
      m_axi_lut_awready : IN STD_LOGIC;
      m_axi_lut_wdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_lut_wstrb : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_lut_wvalid : OUT STD_LOGIC;
      m_axi_lut_wready : IN STD_LOGIC;
      m_axi_lut_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_lut_bvalid : IN STD_LOGIC;
      m_axi_lut_bready : OUT STD_LOGIC;
      m_axi_lut_araddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_lut_arvalid : OUT STD_LOGIC;
      m_axi_lut_arready : IN STD_LOGIC;
      m_axi_lut_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_lut_rvalid : IN STD_LOGIC;
      m_axi_lut_rready : OUT STD_LOGIC
    );
  END COMPONENT ccl_slice_core;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF design_1_ccl_slice_core_2_0_arch: ARCHITECTURE IS "ccl_slice_core,Vivado 2024.1";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF design_1_ccl_slice_core_2_0_arch : ARCHITECTURE IS "design_1_ccl_slice_core_2_0,ccl_slice_core,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF design_1_ccl_slice_core_2_0_arch: ARCHITECTURE IS "design_1_ccl_slice_core_2_0,ccl_slice_core,{x_ipProduct=Vivado 2024.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=ccl_slice_core,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=VHDL,G_AXIS_IN_WIDTH=32,G_AXIS_OUT_WIDTH=32,G_MAX_WIDTH_PIX=512,G_MAX_HEIGHT_PIX=128}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF design_1_ccl_slice_core_2_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF aclkrst_clk: SIGNAL IS "XIL_INTERFACENAME aclkrst_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF aclkrst_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 aclkrst_clk CLK";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_lut_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_lut ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_lut_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_lut ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_lut_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_lut ARVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m_axi_lut_awaddr: SIGNAL IS "XIL_INTERFACENAME m_axi_lut, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 0, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUS" & 
"ER_BITS_PER_BYTE 0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_lut_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_lut AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_lut_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_lut AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_lut_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_lut AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_lut_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_lut BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_lut_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_lut BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_lut_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_lut BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_lut_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_lut RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_lut_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_lut RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_lut_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_lut RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_lut_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_lut WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_lut_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_lut WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_lut_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_lut WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_lut_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_lut WVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m_axis_tdata: SIGNAL IS "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_tlast: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi ARVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axi_awaddr: SIGNAL IS "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_B" & 
"ITS_PER_BYTE 0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi WVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axis_tdata: SIGNAL IS "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_tlast: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis TVALID";
BEGIN
  U0 : ccl_slice_core
    GENERIC MAP (
      G_AXIS_IN_WIDTH => 32,
      G_AXIS_OUT_WIDTH => 32,
      G_MAX_WIDTH_PIX => 512,
      G_MAX_HEIGHT_PIX => 128
    )
    PORT MAP (
      aclkrst_clk => aclkrst_clk,
      aclkrst_n => aclkrst_n,
      s_axi_awaddr => s_axi_awaddr,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_awready => s_axi_awready,
      s_axi_wdata => s_axi_wdata,
      s_axi_wstrb => s_axi_wstrb,
      s_axi_wvalid => s_axi_wvalid,
      s_axi_wready => s_axi_wready,
      s_axi_bresp => s_axi_bresp,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_bready => s_axi_bready,
      s_axi_araddr => s_axi_araddr,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_arready => s_axi_arready,
      s_axi_rdata => s_axi_rdata,
      s_axi_rresp => s_axi_rresp,
      s_axi_rvalid => s_axi_rvalid,
      s_axi_rready => s_axi_rready,
      s_axis_tdata => s_axis_tdata,
      s_axis_tvalid => s_axis_tvalid,
      s_axis_tready => s_axis_tready,
      s_axis_tlast => s_axis_tlast,
      m_axis_tdata => m_axis_tdata,
      m_axis_tvalid => m_axis_tvalid,
      m_axis_tready => m_axis_tready,
      m_axis_tlast => m_axis_tlast,
      irq_done => irq_done,
      m_axi_lut_awaddr => m_axi_lut_awaddr,
      m_axi_lut_awvalid => m_axi_lut_awvalid,
      m_axi_lut_awready => m_axi_lut_awready,
      m_axi_lut_wdata => m_axi_lut_wdata,
      m_axi_lut_wstrb => m_axi_lut_wstrb,
      m_axi_lut_wvalid => m_axi_lut_wvalid,
      m_axi_lut_wready => m_axi_lut_wready,
      m_axi_lut_bresp => m_axi_lut_bresp,
      m_axi_lut_bvalid => m_axi_lut_bvalid,
      m_axi_lut_bready => m_axi_lut_bready,
      m_axi_lut_araddr => m_axi_lut_araddr,
      m_axi_lut_arvalid => m_axi_lut_arvalid,
      m_axi_lut_arready => m_axi_lut_arready,
      m_axi_lut_rdata => m_axi_lut_rdata,
      m_axi_lut_rvalid => m_axi_lut_rvalid,
      m_axi_lut_rready => m_axi_lut_rready
    );
END design_1_ccl_slice_core_2_0_arch;
