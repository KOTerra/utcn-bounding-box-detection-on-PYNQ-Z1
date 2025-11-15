// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Sat Nov 15 16:45:29 2025
// Host        : POWERSLAVE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/FACULTATE/facultate/anul3/sem1/SSC/proiect/utcn-bounding-box-detection-on-PYNQ-Z1/PL/PL.gen/sources_1/bd/design_1/ip/design_1_ccl_slice_core_3_0_1/design_1_ccl_slice_core_3_0_stub.v
// Design      : design_1_ccl_slice_core_3_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "ccl_slice_core,Vivado 2024.1" *)
module design_1_ccl_slice_core_3_0(aclkrst_clk, aclkrst_n, s_axi_awaddr, 
  s_axi_awvalid, s_axi_awready, s_axi_wdata, s_axi_wstrb, s_axi_wvalid, s_axi_wready, 
  s_axi_bresp, s_axi_bvalid, s_axi_bready, s_axi_araddr, s_axi_arvalid, s_axi_arready, 
  s_axi_rdata, s_axi_rresp, s_axi_rvalid, s_axi_rready, s_axis_tdata, s_axis_tvalid, 
  s_axis_tready, s_axis_tlast, m_axis_tdata, m_axis_tvalid, m_axis_tready, m_axis_tlast, 
  irq_done, m_axi_lut_awaddr, m_axi_lut_awvalid, m_axi_lut_awready, m_axi_lut_wdata, 
  m_axi_lut_wstrb, m_axi_lut_wvalid, m_axi_lut_wready, m_axi_lut_bresp, m_axi_lut_bvalid, 
  m_axi_lut_bready, m_axi_lut_araddr, m_axi_lut_arvalid, m_axi_lut_arready, 
  m_axi_lut_rdata, m_axi_lut_rvalid, m_axi_lut_rready)
/* synthesis syn_black_box black_box_pad_pin="aclkrst_n,s_axi_awaddr[31:0],s_axi_awvalid,s_axi_awready,s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_wvalid,s_axi_wready,s_axi_bresp[1:0],s_axi_bvalid,s_axi_bready,s_axi_araddr[31:0],s_axi_arvalid,s_axi_arready,s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rvalid,s_axi_rready,s_axis_tdata[31:0],s_axis_tvalid,s_axis_tready,s_axis_tlast,m_axis_tdata[31:0],m_axis_tvalid,m_axis_tready,m_axis_tlast,irq_done,m_axi_lut_awaddr[31:0],m_axi_lut_awvalid,m_axi_lut_awready,m_axi_lut_wdata[31:0],m_axi_lut_wstrb[3:0],m_axi_lut_wvalid,m_axi_lut_wready,m_axi_lut_bresp[1:0],m_axi_lut_bvalid,m_axi_lut_bready,m_axi_lut_araddr[31:0],m_axi_lut_arvalid,m_axi_lut_arready,m_axi_lut_rdata[31:0],m_axi_lut_rvalid,m_axi_lut_rready" */
/* synthesis syn_force_seq_prim="aclkrst_clk" */;
  input aclkrst_clk /* synthesis syn_isclock = 1 */;
  input aclkrst_n;
  input [31:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [31:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  input [31:0]s_axis_tdata;
  input s_axis_tvalid;
  output s_axis_tready;
  input s_axis_tlast;
  output [31:0]m_axis_tdata;
  output m_axis_tvalid;
  input m_axis_tready;
  output m_axis_tlast;
  output irq_done;
  output [31:0]m_axi_lut_awaddr;
  output m_axi_lut_awvalid;
  input m_axi_lut_awready;
  output [31:0]m_axi_lut_wdata;
  output [3:0]m_axi_lut_wstrb;
  output m_axi_lut_wvalid;
  input m_axi_lut_wready;
  input [1:0]m_axi_lut_bresp;
  input m_axi_lut_bvalid;
  output m_axi_lut_bready;
  output [31:0]m_axi_lut_araddr;
  output m_axi_lut_arvalid;
  input m_axi_lut_arready;
  input [31:0]m_axi_lut_rdata;
  input m_axi_lut_rvalid;
  output m_axi_lut_rready;
endmodule
