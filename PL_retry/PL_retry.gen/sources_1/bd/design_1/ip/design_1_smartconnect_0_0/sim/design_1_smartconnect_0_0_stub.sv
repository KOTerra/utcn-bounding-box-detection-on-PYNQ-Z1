// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2025 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


//------------------------------------------------------------------------------------
// Filename:    design_1_smartconnect_0_0_stub.sv
// Description: This HDL file is intended to be used with following simulators only:
//
//   Vivado Simulator (XSim)
//   Cadence Xcelium Simulator
//
//------------------------------------------------------------------------------------
`timescale 1ps/1ps

`ifdef XILINX_SIMULATOR

`ifndef XILINX_SIMULATOR_BITASBOOL
`define XILINX_SIMULATOR_BITASBOOL
typedef bit bit_as_bool;
`endif

(* SC_MODULE_EXPORT *)
module design_1_smartconnect_0_0 (
  input bit_as_bool aclk,
  input bit_as_bool aresetn,
  input bit [31 : 0] S00_AXI_araddr,
  input bit [7 : 0] S00_AXI_arlen,
  input bit [2 : 0] S00_AXI_arsize,
  input bit [1 : 0] S00_AXI_arburst,
  input bit [0 : 0] S00_AXI_arlock,
  input bit [3 : 0] S00_AXI_arcache,
  input bit [2 : 0] S00_AXI_arprot,
  input bit [3 : 0] S00_AXI_arqos,
  input bit_as_bool S00_AXI_arvalid,
  output bit_as_bool S00_AXI_arready,
  output bit [31 : 0] S00_AXI_rdata,
  output bit [1 : 0] S00_AXI_rresp,
  output bit_as_bool S00_AXI_rlast,
  output bit_as_bool S00_AXI_rvalid,
  input bit_as_bool S00_AXI_rready,
  input bit [31 : 0] S01_AXI_awaddr,
  input bit [7 : 0] S01_AXI_awlen,
  input bit [2 : 0] S01_AXI_awsize,
  input bit [1 : 0] S01_AXI_awburst,
  input bit [0 : 0] S01_AXI_awlock,
  input bit [3 : 0] S01_AXI_awcache,
  input bit [2 : 0] S01_AXI_awprot,
  input bit [3 : 0] S01_AXI_awqos,
  input bit_as_bool S01_AXI_awvalid,
  output bit_as_bool S01_AXI_awready,
  input bit [31 : 0] S01_AXI_wdata,
  input bit [3 : 0] S01_AXI_wstrb,
  input bit_as_bool S01_AXI_wlast,
  input bit_as_bool S01_AXI_wvalid,
  output bit_as_bool S01_AXI_wready,
  output bit [1 : 0] S01_AXI_bresp,
  output bit_as_bool S01_AXI_bvalid,
  input bit_as_bool S01_AXI_bready,
  input bit [31 : 0] S02_AXI_araddr,
  input bit [7 : 0] S02_AXI_arlen,
  input bit [2 : 0] S02_AXI_arsize,
  input bit [1 : 0] S02_AXI_arburst,
  input bit [0 : 0] S02_AXI_arlock,
  input bit [3 : 0] S02_AXI_arcache,
  input bit [2 : 0] S02_AXI_arprot,
  input bit [3 : 0] S02_AXI_arqos,
  input bit_as_bool S02_AXI_arvalid,
  output bit_as_bool S02_AXI_arready,
  output bit [31 : 0] S02_AXI_rdata,
  output bit [1 : 0] S02_AXI_rresp,
  output bit_as_bool S02_AXI_rlast,
  output bit_as_bool S02_AXI_rvalid,
  input bit_as_bool S02_AXI_rready,
  input bit [31 : 0] S03_AXI_awaddr,
  input bit [7 : 0] S03_AXI_awlen,
  input bit [2 : 0] S03_AXI_awsize,
  input bit [1 : 0] S03_AXI_awburst,
  input bit [0 : 0] S03_AXI_awlock,
  input bit [3 : 0] S03_AXI_awcache,
  input bit [2 : 0] S03_AXI_awprot,
  input bit [3 : 0] S03_AXI_awqos,
  input bit_as_bool S03_AXI_awvalid,
  output bit_as_bool S03_AXI_awready,
  input bit [31 : 0] S03_AXI_wdata,
  input bit [3 : 0] S03_AXI_wstrb,
  input bit_as_bool S03_AXI_wlast,
  input bit_as_bool S03_AXI_wvalid,
  output bit_as_bool S03_AXI_wready,
  output bit [1 : 0] S03_AXI_bresp,
  output bit_as_bool S03_AXI_bvalid,
  input bit_as_bool S03_AXI_bready,
  input bit [31 : 0] S04_AXI_araddr,
  input bit [7 : 0] S04_AXI_arlen,
  input bit [2 : 0] S04_AXI_arsize,
  input bit [1 : 0] S04_AXI_arburst,
  input bit [0 : 0] S04_AXI_arlock,
  input bit [3 : 0] S04_AXI_arcache,
  input bit [2 : 0] S04_AXI_arprot,
  input bit [3 : 0] S04_AXI_arqos,
  input bit_as_bool S04_AXI_arvalid,
  output bit_as_bool S04_AXI_arready,
  output bit [31 : 0] S04_AXI_rdata,
  output bit [1 : 0] S04_AXI_rresp,
  output bit_as_bool S04_AXI_rlast,
  output bit_as_bool S04_AXI_rvalid,
  input bit_as_bool S04_AXI_rready,
  input bit [31 : 0] S05_AXI_awaddr,
  input bit [7 : 0] S05_AXI_awlen,
  input bit [2 : 0] S05_AXI_awsize,
  input bit [1 : 0] S05_AXI_awburst,
  input bit [0 : 0] S05_AXI_awlock,
  input bit [3 : 0] S05_AXI_awcache,
  input bit [2 : 0] S05_AXI_awprot,
  input bit [3 : 0] S05_AXI_awqos,
  input bit_as_bool S05_AXI_awvalid,
  output bit_as_bool S05_AXI_awready,
  input bit [31 : 0] S05_AXI_wdata,
  input bit [3 : 0] S05_AXI_wstrb,
  input bit_as_bool S05_AXI_wlast,
  input bit_as_bool S05_AXI_wvalid,
  output bit_as_bool S05_AXI_wready,
  output bit [1 : 0] S05_AXI_bresp,
  output bit_as_bool S05_AXI_bvalid,
  input bit_as_bool S05_AXI_bready,
  input bit [31 : 0] S06_AXI_araddr,
  input bit [7 : 0] S06_AXI_arlen,
  input bit [2 : 0] S06_AXI_arsize,
  input bit [1 : 0] S06_AXI_arburst,
  input bit [0 : 0] S06_AXI_arlock,
  input bit [3 : 0] S06_AXI_arcache,
  input bit [2 : 0] S06_AXI_arprot,
  input bit [3 : 0] S06_AXI_arqos,
  input bit_as_bool S06_AXI_arvalid,
  output bit_as_bool S06_AXI_arready,
  output bit [31 : 0] S06_AXI_rdata,
  output bit [1 : 0] S06_AXI_rresp,
  output bit_as_bool S06_AXI_rlast,
  output bit_as_bool S06_AXI_rvalid,
  input bit_as_bool S06_AXI_rready,
  input bit [31 : 0] S07_AXI_awaddr,
  input bit [7 : 0] S07_AXI_awlen,
  input bit [2 : 0] S07_AXI_awsize,
  input bit [1 : 0] S07_AXI_awburst,
  input bit [0 : 0] S07_AXI_awlock,
  input bit [3 : 0] S07_AXI_awcache,
  input bit [2 : 0] S07_AXI_awprot,
  input bit [3 : 0] S07_AXI_awqos,
  input bit_as_bool S07_AXI_awvalid,
  output bit_as_bool S07_AXI_awready,
  input bit [31 : 0] S07_AXI_wdata,
  input bit [3 : 0] S07_AXI_wstrb,
  input bit_as_bool S07_AXI_wlast,
  input bit_as_bool S07_AXI_wvalid,
  output bit_as_bool S07_AXI_wready,
  output bit [1 : 0] S07_AXI_bresp,
  output bit_as_bool S07_AXI_bvalid,
  input bit_as_bool S07_AXI_bready,
  input bit [31 : 0] S08_AXI_araddr,
  input bit [7 : 0] S08_AXI_arlen,
  input bit [2 : 0] S08_AXI_arsize,
  input bit [1 : 0] S08_AXI_arburst,
  input bit [0 : 0] S08_AXI_arlock,
  input bit [3 : 0] S08_AXI_arcache,
  input bit [2 : 0] S08_AXI_arprot,
  input bit [3 : 0] S08_AXI_arqos,
  input bit_as_bool S08_AXI_arvalid,
  output bit_as_bool S08_AXI_arready,
  output bit [31 : 0] S08_AXI_rdata,
  output bit [1 : 0] S08_AXI_rresp,
  output bit_as_bool S08_AXI_rlast,
  output bit_as_bool S08_AXI_rvalid,
  input bit_as_bool S08_AXI_rready,
  input bit [31 : 0] S09_AXI_awaddr,
  input bit [7 : 0] S09_AXI_awlen,
  input bit [2 : 0] S09_AXI_awsize,
  input bit [1 : 0] S09_AXI_awburst,
  input bit [0 : 0] S09_AXI_awlock,
  input bit [3 : 0] S09_AXI_awcache,
  input bit [2 : 0] S09_AXI_awprot,
  input bit [3 : 0] S09_AXI_awqos,
  input bit_as_bool S09_AXI_awvalid,
  output bit_as_bool S09_AXI_awready,
  input bit [31 : 0] S09_AXI_wdata,
  input bit [3 : 0] S09_AXI_wstrb,
  input bit_as_bool S09_AXI_wlast,
  input bit_as_bool S09_AXI_wvalid,
  output bit_as_bool S09_AXI_wready,
  output bit [1 : 0] S09_AXI_bresp,
  output bit_as_bool S09_AXI_bvalid,
  input bit_as_bool S09_AXI_bready,
  output bit [31 : 0] M00_AXI_awaddr,
  output bit [3 : 0] M00_AXI_awlen,
  output bit [2 : 0] M00_AXI_awsize,
  output bit [1 : 0] M00_AXI_awburst,
  output bit [1 : 0] M00_AXI_awlock,
  output bit [3 : 0] M00_AXI_awcache,
  output bit [2 : 0] M00_AXI_awprot,
  output bit [3 : 0] M00_AXI_awqos,
  output bit_as_bool M00_AXI_awvalid,
  input bit_as_bool M00_AXI_awready,
  output bit [31 : 0] M00_AXI_wdata,
  output bit [3 : 0] M00_AXI_wstrb,
  output bit_as_bool M00_AXI_wlast,
  output bit_as_bool M00_AXI_wvalid,
  input bit_as_bool M00_AXI_wready,
  input bit [1 : 0] M00_AXI_bresp,
  input bit_as_bool M00_AXI_bvalid,
  output bit_as_bool M00_AXI_bready,
  output bit [31 : 0] M00_AXI_araddr,
  output bit [3 : 0] M00_AXI_arlen,
  output bit [2 : 0] M00_AXI_arsize,
  output bit [1 : 0] M00_AXI_arburst,
  output bit [1 : 0] M00_AXI_arlock,
  output bit [3 : 0] M00_AXI_arcache,
  output bit [2 : 0] M00_AXI_arprot,
  output bit [3 : 0] M00_AXI_arqos,
  output bit_as_bool M00_AXI_arvalid,
  input bit_as_bool M00_AXI_arready,
  input bit [31 : 0] M00_AXI_rdata,
  input bit [1 : 0] M00_AXI_rresp,
  input bit_as_bool M00_AXI_rlast,
  input bit_as_bool M00_AXI_rvalid,
  output bit_as_bool M00_AXI_rready
);
endmodule
`endif

`ifdef XCELIUM
(* XMSC_MODULE_EXPORT *)
module design_1_smartconnect_0_0 (aclk,aresetn,S00_AXI_araddr,S00_AXI_arlen,S00_AXI_arsize,S00_AXI_arburst,S00_AXI_arlock,S00_AXI_arcache,S00_AXI_arprot,S00_AXI_arqos,S00_AXI_arvalid,S00_AXI_arready,S00_AXI_rdata,S00_AXI_rresp,S00_AXI_rlast,S00_AXI_rvalid,S00_AXI_rready,S01_AXI_awaddr,S01_AXI_awlen,S01_AXI_awsize,S01_AXI_awburst,S01_AXI_awlock,S01_AXI_awcache,S01_AXI_awprot,S01_AXI_awqos,S01_AXI_awvalid,S01_AXI_awready,S01_AXI_wdata,S01_AXI_wstrb,S01_AXI_wlast,S01_AXI_wvalid,S01_AXI_wready,S01_AXI_bresp,S01_AXI_bvalid,S01_AXI_bready,S02_AXI_araddr,S02_AXI_arlen,S02_AXI_arsize,S02_AXI_arburst,S02_AXI_arlock,S02_AXI_arcache,S02_AXI_arprot,S02_AXI_arqos,S02_AXI_arvalid,S02_AXI_arready,S02_AXI_rdata,S02_AXI_rresp,S02_AXI_rlast,S02_AXI_rvalid,S02_AXI_rready,S03_AXI_awaddr,S03_AXI_awlen,S03_AXI_awsize,S03_AXI_awburst,S03_AXI_awlock,S03_AXI_awcache,S03_AXI_awprot,S03_AXI_awqos,S03_AXI_awvalid,S03_AXI_awready,S03_AXI_wdata,S03_AXI_wstrb,S03_AXI_wlast,S03_AXI_wvalid,S03_AXI_wready,S03_AXI_bresp,S03_AXI_bvalid,S03_AXI_bready,S04_AXI_araddr,S04_AXI_arlen,S04_AXI_arsize,S04_AXI_arburst,S04_AXI_arlock,S04_AXI_arcache,S04_AXI_arprot,S04_AXI_arqos,S04_AXI_arvalid,S04_AXI_arready,S04_AXI_rdata,S04_AXI_rresp,S04_AXI_rlast,S04_AXI_rvalid,S04_AXI_rready,S05_AXI_awaddr,S05_AXI_awlen,S05_AXI_awsize,S05_AXI_awburst,S05_AXI_awlock,S05_AXI_awcache,S05_AXI_awprot,S05_AXI_awqos,S05_AXI_awvalid,S05_AXI_awready,S05_AXI_wdata,S05_AXI_wstrb,S05_AXI_wlast,S05_AXI_wvalid,S05_AXI_wready,S05_AXI_bresp,S05_AXI_bvalid,S05_AXI_bready,S06_AXI_araddr,S06_AXI_arlen,S06_AXI_arsize,S06_AXI_arburst,S06_AXI_arlock,S06_AXI_arcache,S06_AXI_arprot,S06_AXI_arqos,S06_AXI_arvalid,S06_AXI_arready,S06_AXI_rdata,S06_AXI_rresp,S06_AXI_rlast,S06_AXI_rvalid,S06_AXI_rready,S07_AXI_awaddr,S07_AXI_awlen,S07_AXI_awsize,S07_AXI_awburst,S07_AXI_awlock,S07_AXI_awcache,S07_AXI_awprot,S07_AXI_awqos,S07_AXI_awvalid,S07_AXI_awready,S07_AXI_wdata,S07_AXI_wstrb,S07_AXI_wlast,S07_AXI_wvalid,S07_AXI_wready,S07_AXI_bresp,S07_AXI_bvalid,S07_AXI_bready,S08_AXI_araddr,S08_AXI_arlen,S08_AXI_arsize,S08_AXI_arburst,S08_AXI_arlock,S08_AXI_arcache,S08_AXI_arprot,S08_AXI_arqos,S08_AXI_arvalid,S08_AXI_arready,S08_AXI_rdata,S08_AXI_rresp,S08_AXI_rlast,S08_AXI_rvalid,S08_AXI_rready,S09_AXI_awaddr,S09_AXI_awlen,S09_AXI_awsize,S09_AXI_awburst,S09_AXI_awlock,S09_AXI_awcache,S09_AXI_awprot,S09_AXI_awqos,S09_AXI_awvalid,S09_AXI_awready,S09_AXI_wdata,S09_AXI_wstrb,S09_AXI_wlast,S09_AXI_wvalid,S09_AXI_wready,S09_AXI_bresp,S09_AXI_bvalid,S09_AXI_bready,M00_AXI_awaddr,M00_AXI_awlen,M00_AXI_awsize,M00_AXI_awburst,M00_AXI_awlock,M00_AXI_awcache,M00_AXI_awprot,M00_AXI_awqos,M00_AXI_awvalid,M00_AXI_awready,M00_AXI_wdata,M00_AXI_wstrb,M00_AXI_wlast,M00_AXI_wvalid,M00_AXI_wready,M00_AXI_bresp,M00_AXI_bvalid,M00_AXI_bready,M00_AXI_araddr,M00_AXI_arlen,M00_AXI_arsize,M00_AXI_arburst,M00_AXI_arlock,M00_AXI_arcache,M00_AXI_arprot,M00_AXI_arqos,M00_AXI_arvalid,M00_AXI_arready,M00_AXI_rdata,M00_AXI_rresp,M00_AXI_rlast,M00_AXI_rvalid,M00_AXI_rready)
(* integer foreign = "SystemC";
*);
  input bit aclk;
  input bit aresetn;
  input bit [31 : 0] S00_AXI_araddr;
  input bit [7 : 0] S00_AXI_arlen;
  input bit [2 : 0] S00_AXI_arsize;
  input bit [1 : 0] S00_AXI_arburst;
  input bit [0 : 0] S00_AXI_arlock;
  input bit [3 : 0] S00_AXI_arcache;
  input bit [2 : 0] S00_AXI_arprot;
  input bit [3 : 0] S00_AXI_arqos;
  input bit S00_AXI_arvalid;
  output wire S00_AXI_arready;
  output wire [31 : 0] S00_AXI_rdata;
  output wire [1 : 0] S00_AXI_rresp;
  output wire S00_AXI_rlast;
  output wire S00_AXI_rvalid;
  input bit S00_AXI_rready;
  input bit [31 : 0] S01_AXI_awaddr;
  input bit [7 : 0] S01_AXI_awlen;
  input bit [2 : 0] S01_AXI_awsize;
  input bit [1 : 0] S01_AXI_awburst;
  input bit [0 : 0] S01_AXI_awlock;
  input bit [3 : 0] S01_AXI_awcache;
  input bit [2 : 0] S01_AXI_awprot;
  input bit [3 : 0] S01_AXI_awqos;
  input bit S01_AXI_awvalid;
  output wire S01_AXI_awready;
  input bit [31 : 0] S01_AXI_wdata;
  input bit [3 : 0] S01_AXI_wstrb;
  input bit S01_AXI_wlast;
  input bit S01_AXI_wvalid;
  output wire S01_AXI_wready;
  output wire [1 : 0] S01_AXI_bresp;
  output wire S01_AXI_bvalid;
  input bit S01_AXI_bready;
  input bit [31 : 0] S02_AXI_araddr;
  input bit [7 : 0] S02_AXI_arlen;
  input bit [2 : 0] S02_AXI_arsize;
  input bit [1 : 0] S02_AXI_arburst;
  input bit [0 : 0] S02_AXI_arlock;
  input bit [3 : 0] S02_AXI_arcache;
  input bit [2 : 0] S02_AXI_arprot;
  input bit [3 : 0] S02_AXI_arqos;
  input bit S02_AXI_arvalid;
  output wire S02_AXI_arready;
  output wire [31 : 0] S02_AXI_rdata;
  output wire [1 : 0] S02_AXI_rresp;
  output wire S02_AXI_rlast;
  output wire S02_AXI_rvalid;
  input bit S02_AXI_rready;
  input bit [31 : 0] S03_AXI_awaddr;
  input bit [7 : 0] S03_AXI_awlen;
  input bit [2 : 0] S03_AXI_awsize;
  input bit [1 : 0] S03_AXI_awburst;
  input bit [0 : 0] S03_AXI_awlock;
  input bit [3 : 0] S03_AXI_awcache;
  input bit [2 : 0] S03_AXI_awprot;
  input bit [3 : 0] S03_AXI_awqos;
  input bit S03_AXI_awvalid;
  output wire S03_AXI_awready;
  input bit [31 : 0] S03_AXI_wdata;
  input bit [3 : 0] S03_AXI_wstrb;
  input bit S03_AXI_wlast;
  input bit S03_AXI_wvalid;
  output wire S03_AXI_wready;
  output wire [1 : 0] S03_AXI_bresp;
  output wire S03_AXI_bvalid;
  input bit S03_AXI_bready;
  input bit [31 : 0] S04_AXI_araddr;
  input bit [7 : 0] S04_AXI_arlen;
  input bit [2 : 0] S04_AXI_arsize;
  input bit [1 : 0] S04_AXI_arburst;
  input bit [0 : 0] S04_AXI_arlock;
  input bit [3 : 0] S04_AXI_arcache;
  input bit [2 : 0] S04_AXI_arprot;
  input bit [3 : 0] S04_AXI_arqos;
  input bit S04_AXI_arvalid;
  output wire S04_AXI_arready;
  output wire [31 : 0] S04_AXI_rdata;
  output wire [1 : 0] S04_AXI_rresp;
  output wire S04_AXI_rlast;
  output wire S04_AXI_rvalid;
  input bit S04_AXI_rready;
  input bit [31 : 0] S05_AXI_awaddr;
  input bit [7 : 0] S05_AXI_awlen;
  input bit [2 : 0] S05_AXI_awsize;
  input bit [1 : 0] S05_AXI_awburst;
  input bit [0 : 0] S05_AXI_awlock;
  input bit [3 : 0] S05_AXI_awcache;
  input bit [2 : 0] S05_AXI_awprot;
  input bit [3 : 0] S05_AXI_awqos;
  input bit S05_AXI_awvalid;
  output wire S05_AXI_awready;
  input bit [31 : 0] S05_AXI_wdata;
  input bit [3 : 0] S05_AXI_wstrb;
  input bit S05_AXI_wlast;
  input bit S05_AXI_wvalid;
  output wire S05_AXI_wready;
  output wire [1 : 0] S05_AXI_bresp;
  output wire S05_AXI_bvalid;
  input bit S05_AXI_bready;
  input bit [31 : 0] S06_AXI_araddr;
  input bit [7 : 0] S06_AXI_arlen;
  input bit [2 : 0] S06_AXI_arsize;
  input bit [1 : 0] S06_AXI_arburst;
  input bit [0 : 0] S06_AXI_arlock;
  input bit [3 : 0] S06_AXI_arcache;
  input bit [2 : 0] S06_AXI_arprot;
  input bit [3 : 0] S06_AXI_arqos;
  input bit S06_AXI_arvalid;
  output wire S06_AXI_arready;
  output wire [31 : 0] S06_AXI_rdata;
  output wire [1 : 0] S06_AXI_rresp;
  output wire S06_AXI_rlast;
  output wire S06_AXI_rvalid;
  input bit S06_AXI_rready;
  input bit [31 : 0] S07_AXI_awaddr;
  input bit [7 : 0] S07_AXI_awlen;
  input bit [2 : 0] S07_AXI_awsize;
  input bit [1 : 0] S07_AXI_awburst;
  input bit [0 : 0] S07_AXI_awlock;
  input bit [3 : 0] S07_AXI_awcache;
  input bit [2 : 0] S07_AXI_awprot;
  input bit [3 : 0] S07_AXI_awqos;
  input bit S07_AXI_awvalid;
  output wire S07_AXI_awready;
  input bit [31 : 0] S07_AXI_wdata;
  input bit [3 : 0] S07_AXI_wstrb;
  input bit S07_AXI_wlast;
  input bit S07_AXI_wvalid;
  output wire S07_AXI_wready;
  output wire [1 : 0] S07_AXI_bresp;
  output wire S07_AXI_bvalid;
  input bit S07_AXI_bready;
  input bit [31 : 0] S08_AXI_araddr;
  input bit [7 : 0] S08_AXI_arlen;
  input bit [2 : 0] S08_AXI_arsize;
  input bit [1 : 0] S08_AXI_arburst;
  input bit [0 : 0] S08_AXI_arlock;
  input bit [3 : 0] S08_AXI_arcache;
  input bit [2 : 0] S08_AXI_arprot;
  input bit [3 : 0] S08_AXI_arqos;
  input bit S08_AXI_arvalid;
  output wire S08_AXI_arready;
  output wire [31 : 0] S08_AXI_rdata;
  output wire [1 : 0] S08_AXI_rresp;
  output wire S08_AXI_rlast;
  output wire S08_AXI_rvalid;
  input bit S08_AXI_rready;
  input bit [31 : 0] S09_AXI_awaddr;
  input bit [7 : 0] S09_AXI_awlen;
  input bit [2 : 0] S09_AXI_awsize;
  input bit [1 : 0] S09_AXI_awburst;
  input bit [0 : 0] S09_AXI_awlock;
  input bit [3 : 0] S09_AXI_awcache;
  input bit [2 : 0] S09_AXI_awprot;
  input bit [3 : 0] S09_AXI_awqos;
  input bit S09_AXI_awvalid;
  output wire S09_AXI_awready;
  input bit [31 : 0] S09_AXI_wdata;
  input bit [3 : 0] S09_AXI_wstrb;
  input bit S09_AXI_wlast;
  input bit S09_AXI_wvalid;
  output wire S09_AXI_wready;
  output wire [1 : 0] S09_AXI_bresp;
  output wire S09_AXI_bvalid;
  input bit S09_AXI_bready;
  output wire [31 : 0] M00_AXI_awaddr;
  output wire [3 : 0] M00_AXI_awlen;
  output wire [2 : 0] M00_AXI_awsize;
  output wire [1 : 0] M00_AXI_awburst;
  output wire [1 : 0] M00_AXI_awlock;
  output wire [3 : 0] M00_AXI_awcache;
  output wire [2 : 0] M00_AXI_awprot;
  output wire [3 : 0] M00_AXI_awqos;
  output wire M00_AXI_awvalid;
  input bit M00_AXI_awready;
  output wire [31 : 0] M00_AXI_wdata;
  output wire [3 : 0] M00_AXI_wstrb;
  output wire M00_AXI_wlast;
  output wire M00_AXI_wvalid;
  input bit M00_AXI_wready;
  input bit [1 : 0] M00_AXI_bresp;
  input bit M00_AXI_bvalid;
  output wire M00_AXI_bready;
  output wire [31 : 0] M00_AXI_araddr;
  output wire [3 : 0] M00_AXI_arlen;
  output wire [2 : 0] M00_AXI_arsize;
  output wire [1 : 0] M00_AXI_arburst;
  output wire [1 : 0] M00_AXI_arlock;
  output wire [3 : 0] M00_AXI_arcache;
  output wire [2 : 0] M00_AXI_arprot;
  output wire [3 : 0] M00_AXI_arqos;
  output wire M00_AXI_arvalid;
  input bit M00_AXI_arready;
  input bit [31 : 0] M00_AXI_rdata;
  input bit [1 : 0] M00_AXI_rresp;
  input bit M00_AXI_rlast;
  input bit M00_AXI_rvalid;
  output wire M00_AXI_rready;
endmodule
`endif
