// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Sat Nov 22 11:29:10 2025
// Host        : POWERSLAVE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/FACULTATE/facultate/anul3/sem1/SSC/proiect/utcn-bounding-box-detection-on-PYNQ-Z1/PL_retry/PL_retry.gen/sources_1/bd/design_1/ip/design_1_ccl_slice_core_3_0/design_1_ccl_slice_core_3_0_sim_netlist.v
// Design      : design_1_ccl_slice_core_3_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_ccl_slice_core_3_0,ccl_slice_core,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "ccl_slice_core,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module design_1_ccl_slice_core_3_0
   (aclkrst_clk,
    aclkrst_n,
    slice_id_in,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    s_axis_tdata,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tlast,
    m_axis_tdata,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tlast,
    irq_done,
    m_axi_lut_awaddr,
    m_axi_lut_awvalid,
    m_axi_lut_awready,
    m_axi_lut_wdata,
    m_axi_lut_wstrb,
    m_axi_lut_wvalid,
    m_axi_lut_wready,
    m_axi_lut_bresp,
    m_axi_lut_bvalid,
    m_axi_lut_bready,
    m_axi_lut_araddr,
    m_axi_lut_arvalid,
    m_axi_lut_arready,
    m_axi_lut_rdata,
    m_axi_lut_rvalid,
    m_axi_lut_rready);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 aclkrst_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME aclkrst_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input aclkrst_clk;
  input aclkrst_n;
  input [1:0]slice_id_in;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [31:0]s_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi AWVALID" *) input s_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *) output s_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi WDATA" *) input [31:0]s_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi WSTRB" *) input [3:0]s_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi WVALID" *) input s_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi WREADY" *) output s_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi BRESP" *) output [1:0]s_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi BVALID" *) output s_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi BREADY" *) input s_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi ARADDR" *) input [31:0]s_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi ARVALID" *) input s_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi ARREADY" *) output s_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) output [31:0]s_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi RRESP" *) output [1:0]s_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi RVALID" *) output s_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi RREADY" *) input s_axi_rready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input [31:0]s_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) input s_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) output s_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TLAST" *) input s_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [31:0]m_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) output m_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input m_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TLAST" *) output m_axis_tlast;
  output irq_done;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_lut AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME m_axi_lut, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 0, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output [31:0]m_axi_lut_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_lut AWVALID" *) output m_axi_lut_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_lut AWREADY" *) input m_axi_lut_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_lut WDATA" *) output [31:0]m_axi_lut_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_lut WSTRB" *) output [3:0]m_axi_lut_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_lut WVALID" *) output m_axi_lut_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_lut WREADY" *) input m_axi_lut_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_lut BRESP" *) input [1:0]m_axi_lut_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_lut BVALID" *) input m_axi_lut_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_lut BREADY" *) output m_axi_lut_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_lut ARADDR" *) output [31:0]m_axi_lut_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_lut ARVALID" *) output m_axi_lut_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_lut ARREADY" *) input m_axi_lut_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_lut RDATA" *) input [31:0]m_axi_lut_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_lut RVALID" *) input m_axi_lut_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_lut RREADY" *) output m_axi_lut_rready;

  wire \<const0> ;
  wire \<const1> ;
  wire aclkrst_clk;
  wire aclkrst_n;
  wire irq_done;
  wire [17:0]\^m_axis_tdata ;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [31:0]s_axi_araddr;
  wire [31:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire [31:0]s_axi_rdata;
  wire [31:0]s_axi_wdata;
  wire s_axi_wvalid;
  wire [31:0]s_axis_tdata;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire [1:0]slice_id_in;

  assign m_axi_lut_araddr[31] = \<const0> ;
  assign m_axi_lut_araddr[30] = \<const0> ;
  assign m_axi_lut_araddr[29] = \<const0> ;
  assign m_axi_lut_araddr[28] = \<const0> ;
  assign m_axi_lut_araddr[27] = \<const0> ;
  assign m_axi_lut_araddr[26] = \<const0> ;
  assign m_axi_lut_araddr[25] = \<const0> ;
  assign m_axi_lut_araddr[24] = \<const0> ;
  assign m_axi_lut_araddr[23] = \<const0> ;
  assign m_axi_lut_araddr[22] = \<const0> ;
  assign m_axi_lut_araddr[21] = \<const0> ;
  assign m_axi_lut_araddr[20] = \<const0> ;
  assign m_axi_lut_araddr[19] = \<const0> ;
  assign m_axi_lut_araddr[18] = \<const0> ;
  assign m_axi_lut_araddr[17] = \<const0> ;
  assign m_axi_lut_araddr[16] = \<const0> ;
  assign m_axi_lut_araddr[15] = \<const0> ;
  assign m_axi_lut_araddr[14] = \<const0> ;
  assign m_axi_lut_araddr[13] = \<const0> ;
  assign m_axi_lut_araddr[12] = \<const0> ;
  assign m_axi_lut_araddr[11] = \<const0> ;
  assign m_axi_lut_araddr[10] = \<const0> ;
  assign m_axi_lut_araddr[9] = \<const0> ;
  assign m_axi_lut_araddr[8] = \<const0> ;
  assign m_axi_lut_araddr[7] = \<const0> ;
  assign m_axi_lut_araddr[6] = \<const0> ;
  assign m_axi_lut_araddr[5] = \<const0> ;
  assign m_axi_lut_araddr[4] = \<const0> ;
  assign m_axi_lut_araddr[3] = \<const0> ;
  assign m_axi_lut_araddr[2] = \<const0> ;
  assign m_axi_lut_araddr[1] = \<const0> ;
  assign m_axi_lut_araddr[0] = \<const0> ;
  assign m_axi_lut_arvalid = \<const0> ;
  assign m_axi_lut_awaddr[31] = \<const0> ;
  assign m_axi_lut_awaddr[30] = \<const0> ;
  assign m_axi_lut_awaddr[29] = \<const0> ;
  assign m_axi_lut_awaddr[28] = \<const0> ;
  assign m_axi_lut_awaddr[27] = \<const0> ;
  assign m_axi_lut_awaddr[26] = \<const0> ;
  assign m_axi_lut_awaddr[25] = \<const0> ;
  assign m_axi_lut_awaddr[24] = \<const0> ;
  assign m_axi_lut_awaddr[23] = \<const0> ;
  assign m_axi_lut_awaddr[22] = \<const0> ;
  assign m_axi_lut_awaddr[21] = \<const0> ;
  assign m_axi_lut_awaddr[20] = \<const0> ;
  assign m_axi_lut_awaddr[19] = \<const0> ;
  assign m_axi_lut_awaddr[18] = \<const0> ;
  assign m_axi_lut_awaddr[17] = \<const0> ;
  assign m_axi_lut_awaddr[16] = \<const0> ;
  assign m_axi_lut_awaddr[15] = \<const0> ;
  assign m_axi_lut_awaddr[14] = \<const0> ;
  assign m_axi_lut_awaddr[13] = \<const0> ;
  assign m_axi_lut_awaddr[12] = \<const0> ;
  assign m_axi_lut_awaddr[11] = \<const0> ;
  assign m_axi_lut_awaddr[10] = \<const0> ;
  assign m_axi_lut_awaddr[9] = \<const0> ;
  assign m_axi_lut_awaddr[8] = \<const0> ;
  assign m_axi_lut_awaddr[7] = \<const0> ;
  assign m_axi_lut_awaddr[6] = \<const0> ;
  assign m_axi_lut_awaddr[5] = \<const0> ;
  assign m_axi_lut_awaddr[4] = \<const0> ;
  assign m_axi_lut_awaddr[3] = \<const0> ;
  assign m_axi_lut_awaddr[2] = \<const0> ;
  assign m_axi_lut_awaddr[1] = \<const0> ;
  assign m_axi_lut_awaddr[0] = \<const0> ;
  assign m_axi_lut_awvalid = \<const0> ;
  assign m_axi_lut_bready = \<const1> ;
  assign m_axi_lut_rready = \<const0> ;
  assign m_axi_lut_wdata[31] = \<const0> ;
  assign m_axi_lut_wdata[30] = \<const0> ;
  assign m_axi_lut_wdata[29] = \<const0> ;
  assign m_axi_lut_wdata[28] = \<const0> ;
  assign m_axi_lut_wdata[27] = \<const0> ;
  assign m_axi_lut_wdata[26] = \<const0> ;
  assign m_axi_lut_wdata[25] = \<const0> ;
  assign m_axi_lut_wdata[24] = \<const0> ;
  assign m_axi_lut_wdata[23] = \<const0> ;
  assign m_axi_lut_wdata[22] = \<const0> ;
  assign m_axi_lut_wdata[21] = \<const0> ;
  assign m_axi_lut_wdata[20] = \<const0> ;
  assign m_axi_lut_wdata[19] = \<const0> ;
  assign m_axi_lut_wdata[18] = \<const0> ;
  assign m_axi_lut_wdata[17] = \<const0> ;
  assign m_axi_lut_wdata[16] = \<const0> ;
  assign m_axi_lut_wdata[15] = \<const0> ;
  assign m_axi_lut_wdata[14] = \<const0> ;
  assign m_axi_lut_wdata[13] = \<const0> ;
  assign m_axi_lut_wdata[12] = \<const0> ;
  assign m_axi_lut_wdata[11] = \<const0> ;
  assign m_axi_lut_wdata[10] = \<const0> ;
  assign m_axi_lut_wdata[9] = \<const0> ;
  assign m_axi_lut_wdata[8] = \<const0> ;
  assign m_axi_lut_wdata[7] = \<const0> ;
  assign m_axi_lut_wdata[6] = \<const0> ;
  assign m_axi_lut_wdata[5] = \<const0> ;
  assign m_axi_lut_wdata[4] = \<const0> ;
  assign m_axi_lut_wdata[3] = \<const0> ;
  assign m_axi_lut_wdata[2] = \<const0> ;
  assign m_axi_lut_wdata[1] = \<const0> ;
  assign m_axi_lut_wdata[0] = \<const0> ;
  assign m_axi_lut_wstrb[3] = \<const0> ;
  assign m_axi_lut_wstrb[2] = \<const0> ;
  assign m_axi_lut_wstrb[1] = \<const0> ;
  assign m_axi_lut_wstrb[0] = \<const0> ;
  assign m_axi_lut_wvalid = \<const0> ;
  assign m_axis_tdata[31] = \<const0> ;
  assign m_axis_tdata[30] = \<const0> ;
  assign m_axis_tdata[29] = \<const0> ;
  assign m_axis_tdata[28] = \<const0> ;
  assign m_axis_tdata[27] = \<const0> ;
  assign m_axis_tdata[26] = \<const0> ;
  assign m_axis_tdata[25] = \<const0> ;
  assign m_axis_tdata[24] = \<const0> ;
  assign m_axis_tdata[23] = \<const0> ;
  assign m_axis_tdata[22] = \<const0> ;
  assign m_axis_tdata[21] = \<const0> ;
  assign m_axis_tdata[20] = \<const0> ;
  assign m_axis_tdata[19] = \<const0> ;
  assign m_axis_tdata[18] = \<const0> ;
  assign m_axis_tdata[17:0] = \^m_axis_tdata [17:0];
  assign s_axi_arready = \<const1> ;
  assign s_axi_awready = \<const1> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_bvalid = \<const1> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_rvalid = \<const1> ;
  assign s_axi_wready = \<const1> ;
  GND GND
       (.G(\<const0> ));
  design_1_ccl_slice_core_3_0_ccl_slice_core U0
       (.aclkrst_clk(aclkrst_clk),
        .aclkrst_n(aclkrst_n),
        .irq_done(irq_done),
        .m_axis_tdata(\^m_axis_tdata ),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .out_valid_reg_reg_0(m_axis_tvalid),
        .s_axi_araddr(s_axi_araddr[5:2]),
        .s_axi_awaddr(s_axi_awaddr[5:2]),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wvalid(s_axi_wvalid),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid),
        .slice_id_in(slice_id_in));
  VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "ccl_slice_core" *) 
module design_1_ccl_slice_core_3_0_ccl_slice_core
   (out_valid_reg_reg_0,
    irq_done,
    m_axis_tdata,
    s_axis_tready,
    s_axi_rdata,
    m_axis_tlast,
    aclkrst_clk,
    s_axi_wdata,
    s_axis_tdata,
    slice_id_in,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_wvalid,
    s_axis_tvalid,
    aclkrst_n,
    m_axis_tready,
    s_axi_araddr);
  output out_valid_reg_reg_0;
  output irq_done;
  output [17:0]m_axis_tdata;
  output s_axis_tready;
  output [31:0]s_axi_rdata;
  output m_axis_tlast;
  input aclkrst_clk;
  input [31:0]s_axi_wdata;
  input [31:0]s_axis_tdata;
  input [1:0]slice_id_in;
  input [3:0]s_axi_awaddr;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input s_axis_tvalid;
  input aclkrst_n;
  input m_axis_tready;
  input [3:0]s_axi_araddr;

  wire \FSM_sequential_proc_state[0]_i_1_n_0 ;
  wire \FSM_sequential_proc_state[1]_i_1_n_0 ;
  wire \FSM_sequential_proc_state[1]_i_2_n_0 ;
  wire aclkrst_clk;
  wire aclkrst_n;
  wire [31:0]height_u;
  wire i__carry__0_i_1__0_n_0;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2__0_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3__0_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4__0_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__1_i_1__0_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2__0_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3__0_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__2_i_1_n_0;
  wire i__carry__2_i_2_n_0;
  wire i__carry__2_i_3_n_0;
  wire i__carry__2_i_4_n_0;
  wire i__carry__3_i_1_n_0;
  wire i__carry__3_i_2_n_0;
  wire i__carry__3_i_3_n_0;
  wire i__carry__3_i_4_n_0;
  wire i__carry__4_i_1_n_0;
  wire i__carry__4_i_2_n_0;
  wire i__carry__4_i_3_n_0;
  wire i__carry__4_i_4_n_0;
  wire i__carry__5_i_1_n_0;
  wire i__carry__5_i_2_n_0;
  wire i__carry__5_i_3_n_0;
  wire i__carry__5_i_4_n_0;
  wire i__carry__6_i_1_n_0;
  wire i__carry__6_i_2_n_0;
  wire i__carry__6_i_3_n_0;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4__0_n_0;
  wire i__carry_i_4_n_0;
  wire [15:1]in19;
  wire irq_done;
  wire [15:0]last_left_lbl;
  wire \last_left_lbl[15]_i_3_n_0 ;
  wire \last_left_lbl[15]_i_4_n_0 ;
  wire \last_left_lbl[15]_i_5_n_0 ;
  wire \last_left_lbl[15]_i_6_n_0 ;
  wire \last_left_lbl[15]_i_7_n_0 ;
  wire \last_left_lbl[15]_i_8_n_0 ;
  wire last_left_lbl_4;
  wire \last_left_lbl_reg_n_0_[0] ;
  wire \last_left_lbl_reg_n_0_[10] ;
  wire \last_left_lbl_reg_n_0_[11] ;
  wire \last_left_lbl_reg_n_0_[12] ;
  wire \last_left_lbl_reg_n_0_[13] ;
  wire \last_left_lbl_reg_n_0_[14] ;
  wire \last_left_lbl_reg_n_0_[15] ;
  wire \last_left_lbl_reg_n_0_[1] ;
  wire \last_left_lbl_reg_n_0_[2] ;
  wire \last_left_lbl_reg_n_0_[3] ;
  wire \last_left_lbl_reg_n_0_[4] ;
  wire \last_left_lbl_reg_n_0_[5] ;
  wire \last_left_lbl_reg_n_0_[6] ;
  wire \last_left_lbl_reg_n_0_[7] ;
  wire \last_left_lbl_reg_n_0_[8] ;
  wire \last_left_lbl_reg_n_0_[9] ;
  wire [15:15]lbl_left;
  wire [14:0]lbl_left__123;
  wire [15:0]lbl_new;
  wire lbl_new219_in;
  wire lbl_new3_carry__0_i_1_n_0;
  wire lbl_new3_carry__0_i_2_n_0;
  wire lbl_new3_carry__0_i_3_n_0;
  wire lbl_new3_carry__0_n_2;
  wire lbl_new3_carry__0_n_3;
  wire lbl_new3_carry_i_1_n_0;
  wire lbl_new3_carry_i_2_n_0;
  wire lbl_new3_carry_i_3_n_0;
  wire lbl_new3_carry_i_4_n_0;
  wire lbl_new3_carry_i_5_n_0;
  wire lbl_new3_carry_i_6_n_0;
  wire lbl_new3_carry_i_7_n_0;
  wire lbl_new3_carry_i_8_n_0;
  wire lbl_new3_carry_n_0;
  wire lbl_new3_carry_n_1;
  wire lbl_new3_carry_n_2;
  wire lbl_new3_carry_n_3;
  wire [15:1]lbl_up0;
  wire line_prev_reg_0_255_0_0_i_1_n_0;
  wire line_prev_reg_0_255_0_0_i_2_n_0;
  wire line_prev_reg_0_255_0_0_i_3_n_0;
  wire line_prev_reg_0_255_0_0_i_4_n_0;
  wire line_prev_reg_0_255_0_0_i_5_n_0;
  wire line_prev_reg_0_255_0_0_i_6_n_0;
  wire line_prev_reg_0_255_0_0_i_7_n_0;
  wire line_prev_reg_0_255_0_0_i_8_n_0;
  wire line_prev_reg_0_255_0_0_n_0;
  wire line_prev_reg_0_255_10_10_i_1_n_0;
  wire line_prev_reg_0_255_10_10_n_0;
  wire line_prev_reg_0_255_11_11_i_1_n_0;
  wire line_prev_reg_0_255_11_11_n_0;
  wire line_prev_reg_0_255_12_12_i_1_n_0;
  wire line_prev_reg_0_255_12_12_n_0;
  wire line_prev_reg_0_255_13_13_i_1_n_0;
  wire line_prev_reg_0_255_13_13_n_0;
  wire line_prev_reg_0_255_14_14_i_1_n_0;
  wire line_prev_reg_0_255_14_14_n_0;
  wire line_prev_reg_0_255_15_15_i_1_n_0;
  wire line_prev_reg_0_255_15_15_n_0;
  wire line_prev_reg_0_255_1_1_i_1_n_0;
  wire line_prev_reg_0_255_1_1_n_0;
  wire line_prev_reg_0_255_2_2_i_1_n_0;
  wire line_prev_reg_0_255_2_2_n_0;
  wire line_prev_reg_0_255_3_3_i_1_n_0;
  wire line_prev_reg_0_255_3_3_n_0;
  wire line_prev_reg_0_255_4_4_i_1_n_0;
  wire line_prev_reg_0_255_4_4_n_0;
  wire line_prev_reg_0_255_5_5_i_1_n_0;
  wire line_prev_reg_0_255_5_5_n_0;
  wire line_prev_reg_0_255_6_6_i_1_n_0;
  wire line_prev_reg_0_255_6_6_n_0;
  wire line_prev_reg_0_255_7_7_i_1_n_0;
  wire line_prev_reg_0_255_7_7_n_0;
  wire line_prev_reg_0_255_8_8_i_1_n_0;
  wire line_prev_reg_0_255_8_8_n_0;
  wire line_prev_reg_0_255_9_9_i_1_n_0;
  wire line_prev_reg_0_255_9_9_n_0;
  wire line_prev_reg_256_511_0_0_i_1_n_0;
  wire line_prev_reg_256_511_0_0_n_0;
  wire line_prev_reg_256_511_10_10_n_0;
  wire line_prev_reg_256_511_11_11_n_0;
  wire line_prev_reg_256_511_12_12_n_0;
  wire line_prev_reg_256_511_13_13_n_0;
  wire line_prev_reg_256_511_14_14_n_0;
  wire line_prev_reg_256_511_15_15_n_0;
  wire line_prev_reg_256_511_1_1_n_0;
  wire line_prev_reg_256_511_2_2_n_0;
  wire line_prev_reg_256_511_3_3_n_0;
  wire line_prev_reg_256_511_4_4_n_0;
  wire line_prev_reg_256_511_5_5_n_0;
  wire line_prev_reg_256_511_6_6_n_0;
  wire line_prev_reg_256_511_7_7_n_0;
  wire line_prev_reg_256_511_8_8_n_0;
  wire line_prev_reg_256_511_9_9_n_0;
  wire lo_lbl1_carry__0_i_10_n_0;
  wire lo_lbl1_carry__0_i_11_n_0;
  wire lo_lbl1_carry__0_i_1_n_0;
  wire lo_lbl1_carry__0_i_2_n_0;
  wire lo_lbl1_carry__0_i_3_n_0;
  wire lo_lbl1_carry__0_i_4_n_0;
  wire lo_lbl1_carry__0_i_5_n_0;
  wire lo_lbl1_carry__0_i_6_n_0;
  wire lo_lbl1_carry__0_i_7_n_0;
  wire lo_lbl1_carry__0_i_8_n_0;
  wire lo_lbl1_carry__0_i_9_n_0;
  wire lo_lbl1_carry__0_n_0;
  wire lo_lbl1_carry__0_n_1;
  wire lo_lbl1_carry__0_n_2;
  wire lo_lbl1_carry__0_n_3;
  wire lo_lbl1_carry_i_10_n_0;
  wire lo_lbl1_carry_i_11_n_0;
  wire lo_lbl1_carry_i_1_n_0;
  wire lo_lbl1_carry_i_2_n_0;
  wire lo_lbl1_carry_i_3_n_0;
  wire lo_lbl1_carry_i_4_n_0;
  wire lo_lbl1_carry_i_5_n_0;
  wire lo_lbl1_carry_i_6_n_0;
  wire lo_lbl1_carry_i_7_n_0;
  wire lo_lbl1_carry_i_8_n_0;
  wire lo_lbl1_carry_i_9_n_0;
  wire lo_lbl1_carry_n_0;
  wire lo_lbl1_carry_n_1;
  wire lo_lbl1_carry_n_2;
  wire lo_lbl1_carry_n_3;
  wire [15:0]local_label_counter;
  wire local_label_counter0__0;
  wire local_label_counter117_in;
  wire local_label_counter1__14;
  wire local_label_counter_1;
  wire \local_label_counter_reg_n_0_[0] ;
  wire \local_label_counter_reg_n_0_[10] ;
  wire \local_label_counter_reg_n_0_[11] ;
  wire \local_label_counter_reg_n_0_[12] ;
  wire \local_label_counter_reg_n_0_[13] ;
  wire \local_label_counter_reg_n_0_[14] ;
  wire \local_label_counter_reg_n_0_[15] ;
  wire \local_label_counter_reg_n_0_[1] ;
  wire \local_label_counter_reg_n_0_[2] ;
  wire \local_label_counter_reg_n_0_[3] ;
  wire \local_label_counter_reg_n_0_[4] ;
  wire \local_label_counter_reg_n_0_[5] ;
  wire \local_label_counter_reg_n_0_[6] ;
  wire \local_label_counter_reg_n_0_[7] ;
  wire \local_label_counter_reg_n_0_[8] ;
  wire \local_label_counter_reg_n_0_[9] ;
  wire [17:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire out_data_reg;
  wire \out_data_reg[0]_i_3_n_0 ;
  wire \out_data_reg[10]_i_3_n_0 ;
  wire \out_data_reg[11]_i_3_n_0 ;
  wire \out_data_reg[12]_i_3_n_0 ;
  wire \out_data_reg[13]_i_3_n_0 ;
  wire \out_data_reg[14]_i_3_n_0 ;
  wire \out_data_reg[15]_i_10_n_0 ;
  wire \out_data_reg[15]_i_11_n_0 ;
  wire \out_data_reg[15]_i_12_n_0 ;
  wire \out_data_reg[15]_i_14_n_0 ;
  wire \out_data_reg[15]_i_15_n_0 ;
  wire \out_data_reg[15]_i_16_n_0 ;
  wire \out_data_reg[15]_i_17_n_0 ;
  wire \out_data_reg[15]_i_19_n_0 ;
  wire \out_data_reg[15]_i_20_n_0 ;
  wire \out_data_reg[15]_i_21_n_0 ;
  wire \out_data_reg[15]_i_22_n_0 ;
  wire \out_data_reg[15]_i_23_n_0 ;
  wire \out_data_reg[15]_i_24_n_0 ;
  wire \out_data_reg[15]_i_25_n_0 ;
  wire \out_data_reg[15]_i_26_n_0 ;
  wire \out_data_reg[15]_i_27_n_0 ;
  wire \out_data_reg[15]_i_28_n_0 ;
  wire \out_data_reg[15]_i_29_n_0 ;
  wire \out_data_reg[15]_i_30_n_0 ;
  wire \out_data_reg[15]_i_31_n_0 ;
  wire \out_data_reg[15]_i_32_n_0 ;
  wire \out_data_reg[15]_i_33_n_0 ;
  wire \out_data_reg[15]_i_34_n_0 ;
  wire \out_data_reg[15]_i_35_n_0 ;
  wire \out_data_reg[15]_i_36_n_0 ;
  wire \out_data_reg[15]_i_37_n_0 ;
  wire \out_data_reg[15]_i_38_n_0 ;
  wire \out_data_reg[15]_i_39_n_0 ;
  wire \out_data_reg[15]_i_40_n_0 ;
  wire \out_data_reg[15]_i_41_n_0 ;
  wire \out_data_reg[15]_i_42_n_0 ;
  wire \out_data_reg[15]_i_43_n_0 ;
  wire \out_data_reg[15]_i_44_n_0 ;
  wire \out_data_reg[15]_i_45_n_0 ;
  wire \out_data_reg[15]_i_46_n_0 ;
  wire \out_data_reg[15]_i_5_n_0 ;
  wire \out_data_reg[15]_i_6_n_0 ;
  wire \out_data_reg[15]_i_7_n_0 ;
  wire \out_data_reg[15]_i_8_n_0 ;
  wire \out_data_reg[15]_i_9_n_0 ;
  wire \out_data_reg[17]_i_1_n_0 ;
  wire \out_data_reg[17]_i_3_n_0 ;
  wire \out_data_reg[1]_i_3_n_0 ;
  wire \out_data_reg[2]_i_3_n_0 ;
  wire \out_data_reg[3]_i_3_n_0 ;
  wire \out_data_reg[4]_i_3_n_0 ;
  wire \out_data_reg[5]_i_3_n_0 ;
  wire \out_data_reg[6]_i_3_n_0 ;
  wire \out_data_reg[7]_i_3_n_0 ;
  wire \out_data_reg[8]_i_3_n_0 ;
  wire \out_data_reg[9]_i_3_n_0 ;
  wire out_last_reg_i_1_n_0;
  wire out_last_reg_i_2_n_0;
  wire out_last_reg_i_3_n_0;
  wire out_valid_reg_i_1_n_0;
  wire out_valid_reg_reg_0;
  wire p_0_in;
  wire pixel_x;
  wire \pixel_x[0]_i_1_n_0 ;
  wire \pixel_x[1]_i_1_n_0 ;
  wire \pixel_x[2]_i_1_n_0 ;
  wire \pixel_x[3]_i_1_n_0 ;
  wire \pixel_x[4]_i_1_n_0 ;
  wire \pixel_x[5]_i_1_n_0 ;
  wire \pixel_x[5]_i_2_n_0 ;
  wire \pixel_x[6]_i_1_n_0 ;
  wire \pixel_x[7]_i_1_n_0 ;
  wire \pixel_x[8]_i_1_n_0 ;
  wire \pixel_x[9]_i_2_n_0 ;
  wire \pixel_x[9]_i_3_n_0 ;
  wire \pixel_x[9]_i_4_n_0 ;
  wire \pixel_x_reg_n_0_[0] ;
  wire \pixel_x_reg_n_0_[1] ;
  wire \pixel_x_reg_n_0_[2] ;
  wire \pixel_x_reg_n_0_[3] ;
  wire \pixel_x_reg_n_0_[4] ;
  wire \pixel_x_reg_n_0_[5] ;
  wire \pixel_x_reg_n_0_[6] ;
  wire \pixel_x_reg_n_0_[7] ;
  wire \pixel_x_reg_n_0_[8] ;
  wire \pixel_x_reg_n_0_[9] ;
  wire [7:0]pixel_y;
  wire \pixel_y[4]_i_2_n_0 ;
  wire \pixel_y[5]_i_2_n_0 ;
  wire \pixel_y[7]_i_3_n_0 ;
  wire pixel_y_0;
  wire \pixel_y_reg_n_0_[0] ;
  wire \pixel_y_reg_n_0_[1] ;
  wire \pixel_y_reg_n_0_[2] ;
  wire \pixel_y_reg_n_0_[3] ;
  wire \pixel_y_reg_n_0_[4] ;
  wire \pixel_y_reg_n_0_[5] ;
  wire \pixel_y_reg_n_0_[6] ;
  wire \pixel_y_reg_n_0_[7] ;
  wire plusOp_carry__0_n_0;
  wire plusOp_carry__0_n_1;
  wire plusOp_carry__0_n_2;
  wire plusOp_carry__0_n_3;
  wire plusOp_carry__1_n_0;
  wire plusOp_carry__1_n_1;
  wire plusOp_carry__1_n_2;
  wire plusOp_carry__1_n_3;
  wire plusOp_carry__2_n_2;
  wire plusOp_carry__2_n_3;
  wire plusOp_carry_n_0;
  wire plusOp_carry_n_1;
  wire plusOp_carry_n_2;
  wire plusOp_carry_n_3;
  wire [1:0]proc_state;
  wire proc_state0;
  wire proc_state0_carry__0_i_1_n_0;
  wire proc_state0_carry__0_i_2_n_0;
  wire proc_state0_carry__0_i_3_n_0;
  wire proc_state0_carry__0_i_4_n_0;
  wire proc_state0_carry__0_n_0;
  wire proc_state0_carry__0_n_1;
  wire proc_state0_carry__0_n_2;
  wire proc_state0_carry__0_n_3;
  wire proc_state0_carry__1_i_1_n_0;
  wire proc_state0_carry__1_i_2_n_0;
  wire proc_state0_carry__1_i_3_n_0;
  wire proc_state0_carry__1_n_2;
  wire proc_state0_carry__1_n_3;
  wire proc_state0_carry_i_1_n_0;
  wire proc_state0_carry_i_2_n_0;
  wire proc_state0_carry_i_3_n_0;
  wire proc_state0_carry_i_4_n_0;
  wire proc_state0_carry_n_0;
  wire proc_state0_carry_n_1;
  wire proc_state0_carry_n_2;
  wire proc_state0_carry_n_3;
  wire [31:1]proc_state1;
  wire proc_state116_out;
  wire proc_state1_5;
  wire \proc_state1_inferred__0/i__carry__0_n_0 ;
  wire \proc_state1_inferred__0/i__carry__0_n_1 ;
  wire \proc_state1_inferred__0/i__carry__0_n_2 ;
  wire \proc_state1_inferred__0/i__carry__0_n_3 ;
  wire \proc_state1_inferred__0/i__carry__1_n_0 ;
  wire \proc_state1_inferred__0/i__carry__1_n_1 ;
  wire \proc_state1_inferred__0/i__carry__1_n_2 ;
  wire \proc_state1_inferred__0/i__carry__1_n_3 ;
  wire \proc_state1_inferred__0/i__carry__2_n_0 ;
  wire \proc_state1_inferred__0/i__carry__2_n_1 ;
  wire \proc_state1_inferred__0/i__carry__2_n_2 ;
  wire \proc_state1_inferred__0/i__carry__2_n_3 ;
  wire \proc_state1_inferred__0/i__carry__3_n_0 ;
  wire \proc_state1_inferred__0/i__carry__3_n_1 ;
  wire \proc_state1_inferred__0/i__carry__3_n_2 ;
  wire \proc_state1_inferred__0/i__carry__3_n_3 ;
  wire \proc_state1_inferred__0/i__carry__4_n_0 ;
  wire \proc_state1_inferred__0/i__carry__4_n_1 ;
  wire \proc_state1_inferred__0/i__carry__4_n_2 ;
  wire \proc_state1_inferred__0/i__carry__4_n_3 ;
  wire \proc_state1_inferred__0/i__carry__5_n_0 ;
  wire \proc_state1_inferred__0/i__carry__5_n_1 ;
  wire \proc_state1_inferred__0/i__carry__5_n_2 ;
  wire \proc_state1_inferred__0/i__carry__5_n_3 ;
  wire \proc_state1_inferred__0/i__carry__6_n_2 ;
  wire \proc_state1_inferred__0/i__carry__6_n_3 ;
  wire \proc_state1_inferred__0/i__carry_n_0 ;
  wire \proc_state1_inferred__0/i__carry_n_1 ;
  wire \proc_state1_inferred__0/i__carry_n_2 ;
  wire \proc_state1_inferred__0/i__carry_n_3 ;
  wire \proc_state1_inferred__1/i__carry__0_n_0 ;
  wire \proc_state1_inferred__1/i__carry__0_n_1 ;
  wire \proc_state1_inferred__1/i__carry__0_n_2 ;
  wire \proc_state1_inferred__1/i__carry__0_n_3 ;
  wire \proc_state1_inferred__1/i__carry__1_n_2 ;
  wire \proc_state1_inferred__1/i__carry__1_n_3 ;
  wire \proc_state1_inferred__1/i__carry_n_0 ;
  wire \proc_state1_inferred__1/i__carry_n_1 ;
  wire \proc_state1_inferred__1/i__carry_n_2 ;
  wire \proc_state1_inferred__1/i__carry_n_3 ;
  wire [31:1]proc_state2;
  wire proc_state2_carry__0_i_1_n_0;
  wire proc_state2_carry__0_i_2_n_0;
  wire proc_state2_carry__0_i_3_n_0;
  wire proc_state2_carry__0_i_4_n_0;
  wire proc_state2_carry__0_n_0;
  wire proc_state2_carry__0_n_1;
  wire proc_state2_carry__0_n_2;
  wire proc_state2_carry__0_n_3;
  wire proc_state2_carry__1_i_1_n_0;
  wire proc_state2_carry__1_i_2_n_0;
  wire proc_state2_carry__1_i_3_n_0;
  wire proc_state2_carry__1_i_4_n_0;
  wire proc_state2_carry__1_n_0;
  wire proc_state2_carry__1_n_1;
  wire proc_state2_carry__1_n_2;
  wire proc_state2_carry__1_n_3;
  wire proc_state2_carry__2_i_1_n_0;
  wire proc_state2_carry__2_i_2_n_0;
  wire proc_state2_carry__2_i_3_n_0;
  wire proc_state2_carry__2_i_4_n_0;
  wire proc_state2_carry__2_n_0;
  wire proc_state2_carry__2_n_1;
  wire proc_state2_carry__2_n_2;
  wire proc_state2_carry__2_n_3;
  wire proc_state2_carry__3_i_1_n_0;
  wire proc_state2_carry__3_i_2_n_0;
  wire proc_state2_carry__3_i_3_n_0;
  wire proc_state2_carry__3_i_4_n_0;
  wire proc_state2_carry__3_n_0;
  wire proc_state2_carry__3_n_1;
  wire proc_state2_carry__3_n_2;
  wire proc_state2_carry__3_n_3;
  wire proc_state2_carry__4_i_1_n_0;
  wire proc_state2_carry__4_i_2_n_0;
  wire proc_state2_carry__4_i_3_n_0;
  wire proc_state2_carry__4_i_4_n_0;
  wire proc_state2_carry__4_n_0;
  wire proc_state2_carry__4_n_1;
  wire proc_state2_carry__4_n_2;
  wire proc_state2_carry__4_n_3;
  wire proc_state2_carry__5_i_1_n_0;
  wire proc_state2_carry__5_i_2_n_0;
  wire proc_state2_carry__5_i_3_n_0;
  wire proc_state2_carry__5_i_4_n_0;
  wire proc_state2_carry__5_n_0;
  wire proc_state2_carry__5_n_1;
  wire proc_state2_carry__5_n_2;
  wire proc_state2_carry__5_n_3;
  wire proc_state2_carry__6_i_1_n_0;
  wire proc_state2_carry__6_i_2_n_0;
  wire proc_state2_carry__6_i_3_n_0;
  wire proc_state2_carry__6_n_2;
  wire proc_state2_carry__6_n_3;
  wire proc_state2_carry_i_1_n_0;
  wire proc_state2_carry_i_2_n_0;
  wire proc_state2_carry_i_3_n_0;
  wire proc_state2_carry_i_4_n_0;
  wire proc_state2_carry_n_0;
  wire proc_state2_carry_n_1;
  wire proc_state2_carry_n_2;
  wire proc_state2_carry_n_3;
  wire reg_control;
  wire \reg_control_reg_n_0_[10] ;
  wire \reg_control_reg_n_0_[11] ;
  wire \reg_control_reg_n_0_[12] ;
  wire \reg_control_reg_n_0_[13] ;
  wire \reg_control_reg_n_0_[14] ;
  wire \reg_control_reg_n_0_[15] ;
  wire \reg_control_reg_n_0_[16] ;
  wire \reg_control_reg_n_0_[17] ;
  wire \reg_control_reg_n_0_[18] ;
  wire \reg_control_reg_n_0_[19] ;
  wire \reg_control_reg_n_0_[1] ;
  wire \reg_control_reg_n_0_[20] ;
  wire \reg_control_reg_n_0_[21] ;
  wire \reg_control_reg_n_0_[22] ;
  wire \reg_control_reg_n_0_[23] ;
  wire \reg_control_reg_n_0_[24] ;
  wire \reg_control_reg_n_0_[25] ;
  wire \reg_control_reg_n_0_[26] ;
  wire \reg_control_reg_n_0_[27] ;
  wire \reg_control_reg_n_0_[28] ;
  wire \reg_control_reg_n_0_[29] ;
  wire \reg_control_reg_n_0_[2] ;
  wire \reg_control_reg_n_0_[30] ;
  wire \reg_control_reg_n_0_[31] ;
  wire \reg_control_reg_n_0_[3] ;
  wire \reg_control_reg_n_0_[4] ;
  wire \reg_control_reg_n_0_[5] ;
  wire \reg_control_reg_n_0_[6] ;
  wire \reg_control_reg_n_0_[7] ;
  wire \reg_control_reg_n_0_[8] ;
  wire \reg_control_reg_n_0_[9] ;
  wire [31:0]reg_height;
  wire reg_height_3;
  wire \reg_slice_id_reg_n_0_[0] ;
  wire \reg_slice_id_reg_n_0_[1] ;
  wire \reg_status[0]_i_1_n_0 ;
  wire \reg_status[31]_i_1_n_0 ;
  wire \reg_status_reg_n_0_[10] ;
  wire \reg_status_reg_n_0_[11] ;
  wire \reg_status_reg_n_0_[12] ;
  wire \reg_status_reg_n_0_[13] ;
  wire \reg_status_reg_n_0_[14] ;
  wire \reg_status_reg_n_0_[15] ;
  wire \reg_status_reg_n_0_[16] ;
  wire \reg_status_reg_n_0_[17] ;
  wire \reg_status_reg_n_0_[18] ;
  wire \reg_status_reg_n_0_[19] ;
  wire \reg_status_reg_n_0_[1] ;
  wire \reg_status_reg_n_0_[20] ;
  wire \reg_status_reg_n_0_[21] ;
  wire \reg_status_reg_n_0_[22] ;
  wire \reg_status_reg_n_0_[23] ;
  wire \reg_status_reg_n_0_[24] ;
  wire \reg_status_reg_n_0_[25] ;
  wire \reg_status_reg_n_0_[26] ;
  wire \reg_status_reg_n_0_[27] ;
  wire \reg_status_reg_n_0_[28] ;
  wire \reg_status_reg_n_0_[29] ;
  wire \reg_status_reg_n_0_[2] ;
  wire \reg_status_reg_n_0_[30] ;
  wire \reg_status_reg_n_0_[31] ;
  wire \reg_status_reg_n_0_[3] ;
  wire \reg_status_reg_n_0_[4] ;
  wire \reg_status_reg_n_0_[5] ;
  wire \reg_status_reg_n_0_[6] ;
  wire \reg_status_reg_n_0_[7] ;
  wire \reg_status_reg_n_0_[8] ;
  wire \reg_status_reg_n_0_[9] ;
  wire [31:0]reg_width;
  wire reg_width_2;
  wire [3:0]s_axi_araddr;
  wire [3:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire [31:0]s_axi_rdata;
  wire \s_axi_rdata[0]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[0]_INST_0_i_2_n_0 ;
  wire \s_axi_rdata[10]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[11]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[12]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[13]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[14]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[15]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[16]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[17]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[18]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[19]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[1]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[1]_INST_0_i_2_n_0 ;
  wire \s_axi_rdata[20]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[21]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[22]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[23]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[24]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[25]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[26]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[27]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[28]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[29]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[2]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[30]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[31]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[31]_INST_0_i_2_n_0 ;
  wire \s_axi_rdata[31]_INST_0_i_3_n_0 ;
  wire \s_axi_rdata[3]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[4]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[5]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[6]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[7]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[8]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[9]_INST_0_i_1_n_0 ;
  wire [31:0]s_axi_wdata;
  wire s_axi_wvalid;
  wire [31:0]s_axis_tdata;
  wire s_axis_tready;
  wire s_axis_tready_INST_0_i_1_n_0;
  wire s_axis_tvalid;
  wire [1:0]slice_id_in;
  wire unpack_bits_left;
  wire \unpack_bits_left[0]_i_1_n_0 ;
  wire \unpack_bits_left[1]_i_1_n_0 ;
  wire \unpack_bits_left[2]_i_1_n_0 ;
  wire \unpack_bits_left[3]_i_1_n_0 ;
  wire \unpack_bits_left[4]_i_1_n_0 ;
  wire \unpack_bits_left[5]_i_2_n_0 ;
  wire \unpack_bits_left[5]_i_3_n_0 ;
  wire \unpack_bits_left_reg_n_0_[0] ;
  wire \unpack_bits_left_reg_n_0_[1] ;
  wire \unpack_bits_left_reg_n_0_[2] ;
  wire \unpack_bits_left_reg_n_0_[3] ;
  wire \unpack_bits_left_reg_n_0_[4] ;
  wire \unpack_bits_left_reg_n_0_[5] ;
  wire unpack_shift_reg;
  wire \unpack_shift_reg_reg_n_0_[0] ;
  wire \unpack_shift_reg_reg_n_0_[10] ;
  wire \unpack_shift_reg_reg_n_0_[11] ;
  wire \unpack_shift_reg_reg_n_0_[12] ;
  wire \unpack_shift_reg_reg_n_0_[13] ;
  wire \unpack_shift_reg_reg_n_0_[14] ;
  wire \unpack_shift_reg_reg_n_0_[15] ;
  wire \unpack_shift_reg_reg_n_0_[16] ;
  wire \unpack_shift_reg_reg_n_0_[17] ;
  wire \unpack_shift_reg_reg_n_0_[18] ;
  wire \unpack_shift_reg_reg_n_0_[19] ;
  wire \unpack_shift_reg_reg_n_0_[1] ;
  wire \unpack_shift_reg_reg_n_0_[20] ;
  wire \unpack_shift_reg_reg_n_0_[21] ;
  wire \unpack_shift_reg_reg_n_0_[22] ;
  wire \unpack_shift_reg_reg_n_0_[23] ;
  wire \unpack_shift_reg_reg_n_0_[24] ;
  wire \unpack_shift_reg_reg_n_0_[25] ;
  wire \unpack_shift_reg_reg_n_0_[26] ;
  wire \unpack_shift_reg_reg_n_0_[27] ;
  wire \unpack_shift_reg_reg_n_0_[28] ;
  wire \unpack_shift_reg_reg_n_0_[29] ;
  wire \unpack_shift_reg_reg_n_0_[2] ;
  wire \unpack_shift_reg_reg_n_0_[30] ;
  wire \unpack_shift_reg_reg_n_0_[31] ;
  wire \unpack_shift_reg_reg_n_0_[3] ;
  wire \unpack_shift_reg_reg_n_0_[4] ;
  wire \unpack_shift_reg_reg_n_0_[5] ;
  wire \unpack_shift_reg_reg_n_0_[6] ;
  wire \unpack_shift_reg_reg_n_0_[7] ;
  wire \unpack_shift_reg_reg_n_0_[8] ;
  wire \unpack_shift_reg_reg_n_0_[9] ;
  wire [31:0]width_u;
  wire [3:0]NLW_lbl_new3_carry_O_UNCONNECTED;
  wire [3:2]NLW_lbl_new3_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_lbl_new3_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_lo_lbl1_carry_O_UNCONNECTED;
  wire [3:0]NLW_lo_lbl1_carry__0_O_UNCONNECTED;
  wire [3:2]NLW_plusOp_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_plusOp_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_proc_state0_carry_O_UNCONNECTED;
  wire [3:0]NLW_proc_state0_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_proc_state0_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_proc_state0_carry__1_O_UNCONNECTED;
  wire [3:2]\NLW_proc_state1_inferred__0/i__carry__6_CO_UNCONNECTED ;
  wire [3:3]\NLW_proc_state1_inferred__0/i__carry__6_O_UNCONNECTED ;
  wire [3:0]\NLW_proc_state1_inferred__1/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_proc_state1_inferred__1/i__carry__0_O_UNCONNECTED ;
  wire [3:3]\NLW_proc_state1_inferred__1/i__carry__1_CO_UNCONNECTED ;
  wire [3:0]\NLW_proc_state1_inferred__1/i__carry__1_O_UNCONNECTED ;
  wire [3:2]NLW_proc_state2_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_proc_state2_carry__6_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hDF331320DFFF13EC)) 
    \FSM_sequential_proc_state[0]_i_1 
       (.I0(\out_data_reg[17]_i_3_n_0 ),
        .I1(proc_state[1]),
        .I2(\FSM_sequential_proc_state[1]_i_2_n_0 ),
        .I3(proc_state[0]),
        .I4(p_0_in),
        .I5(out_valid_reg_reg_0),
        .O(\FSM_sequential_proc_state[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hECCC20CC)) 
    \FSM_sequential_proc_state[1]_i_1 
       (.I0(\out_data_reg[17]_i_3_n_0 ),
        .I1(proc_state[1]),
        .I2(\FSM_sequential_proc_state[1]_i_2_n_0 ),
        .I3(proc_state[0]),
        .I4(p_0_in),
        .O(\FSM_sequential_proc_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_sequential_proc_state[1]_i_2 
       (.I0(proc_state0),
        .I1(proc_state1_5),
        .O(\FSM_sequential_proc_state[1]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "running:01,flushing:10,idle:00,done:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_proc_state_reg[0] 
       (.C(aclkrst_clk),
        .CE(1'b1),
        .D(\FSM_sequential_proc_state[0]_i_1_n_0 ),
        .Q(proc_state[0]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "running:01,flushing:10,idle:00,done:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_proc_state_reg[1] 
       (.C(aclkrst_clk),
        .CE(1'b1),
        .D(\FSM_sequential_proc_state[1]_i_1_n_0 ),
        .Q(proc_state[1]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \height_u_reg[0] 
       (.C(aclkrst_clk),
        .CE(1'b1),
        .D(reg_height[0]),
        .Q(height_u[0]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \height_u_reg[10] 
       (.C(aclkrst_clk),
        .CE(1'b1),
        .D(reg_height[10]),
        .Q(height_u[10]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \height_u_reg[11] 
       (.C(aclkrst_clk),
        .CE(1'b1),
        .D(reg_height[11]),
        .Q(height_u[11]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \height_u_reg[12] 
       (.C(aclkrst_clk),
        .CE(1'b1),
        .D(reg_height[12]),
        .Q(height_u[12]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \height_u_reg[13] 
       (.C(aclkrst_clk),
        .CE(1'b1),
        .D(reg_height[13]),
        .Q(height_u[13]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \height_u_reg[14] 
       (.C(aclkrst_clk),
        .CE(1'b1),
        .D(reg_height[14]),
        .Q(height_u[14]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \height_u_reg[15] 
       (.C(aclkrst_clk),
        .CE(1'b1),
        .D(reg_height[15]),
        .Q(height_u[15]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \height_u_reg[16] 
       (.C(aclkrst_clk),
        .CE(1'b1),
        .D(reg_height[16]),
        .Q(height_u[16]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \height_u_reg[17] 
       (.C(aclkrst_clk),
        .CE(1'b1),
        .D(reg_height[17]),
        .Q(height_u[17]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \height_u_reg[18] 
       (.C(aclkrst_clk),
        .CE(1'b1),
        .D(reg_height[18]),
        .Q(height_u[18]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \height_u_reg[19] 
       (.C(aclkrst_clk),
        .CE(1'b1),
        .D(reg_height[19]),
        .Q(height_u[19]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \height_u_reg[1] 
       (.C(aclkrst_clk),
        .CE(1'b1),
        .D(reg_height[1]),
        .Q(height_u[1]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \height_u_reg[20] 
       (.C(aclkrst_clk),
        .CE(1'b1),
        .D(reg_height[20]),
        .Q(height_u[20]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \height_u_reg[21] 
       (.C(aclkrst_clk),
        .CE(1'b1),
        .D(reg_height[21]),
        .Q(height_u[21]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \height_u_reg[22] 
       (.C(aclkrst_clk),
        .CE(1'b1),
        .D(reg_height[22]),
        .Q(height_u[22]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \height_u_reg[23] 
       (.C(aclkrst_clk),
        .CE(1'b1),
        .D(reg_height[23]),
        .Q(height_u[23]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \height_u_reg[24] 
       (.C(aclkrst_clk),
        .CE(1'b1),
        .D(reg_height[24]),
        .Q(height_u[24]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \height_u_reg[25] 
       (.C(aclkrst_clk),
        .CE(1'b1),
        .D(reg_height[25]),
        .Q(height_u[25]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \height_u_reg[26] 
       (.C(aclkrst_clk),
        .CE(1'b1),
        .D(reg_height[26]),
        .Q(height_u[26]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \height_u_reg[27] 
       (.C(aclkrst_clk),
        .CE(1'b1),
        .D(reg_height[27]),
        .Q(height_u[27]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \height_u_reg[28] 
       (.C(aclkrst_clk),
        .CE(1'b1),
        .D(reg_height[28]),
        .Q(height_u[28]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \height_u_reg[29] 
       (.C(aclkrst_clk),
        .CE(1'b1),
        .D(reg_height[29]),
        .Q(height_u[29]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \height_u_reg[2] 
       (.C(aclkrst_clk),
        .CE(1'b1),
        .D(reg_height[2]),
        .Q(height_u[2]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \height_u_reg[30] 
       (.C(aclkrst_clk),
        .CE(1'b1),
        .D(reg_height[30]),
        .Q(height_u[30]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \height_u_reg[31] 
       (.C(aclkrst_clk),
        .CE(1'b1),
        .D(reg_height[31]),
        .Q(height_u[31]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \height_u_reg[3] 
       (.C(aclkrst_clk),
        .CE(1'b1),
        .D(reg_height[3]),
        .Q(height_u[3]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \height_u_reg[4] 
       (.C(aclkrst_clk),
        .CE(1'b1),
        .D(reg_height[4]),
        .Q(height_u[4]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \height_u_reg[5] 
       (.C(aclkrst_clk),
        .CE(1'b1),
        .D(reg_height[5]),
        .Q(height_u[5]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \height_u_reg[6] 
       (.C(aclkrst_clk),
        .CE(1'b1),
        .D(reg_height[6]),
        .Q(height_u[6]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \height_u_reg[7] 
       (.C(aclkrst_clk),
        .CE(1'b1),
        .D(reg_height[7]),
        .Q(height_u[7]),
        .S(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \height_u_reg[8] 
       (.C(aclkrst_clk),
        .CE(1'b1),
        .D(reg_height[8]),
        .Q(height_u[8]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \height_u_reg[9] 
       (.C(aclkrst_clk),
        .CE(1'b1),
        .D(reg_height[9]),
        .Q(height_u[9]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_1
       (.I0(height_u[8]),
        .O(i__carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    i__carry__0_i_1__0
       (.I0(proc_state2[23]),
        .I1(proc_state2[22]),
        .I2(proc_state2[21]),
        .O(i__carry__0_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_2
       (.I0(height_u[7]),
        .O(i__carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    i__carry__0_i_2__0
       (.I0(proc_state2[20]),
        .I1(proc_state2[19]),
        .I2(proc_state2[18]),
        .O(i__carry__0_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_3
       (.I0(height_u[6]),
        .O(i__carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    i__carry__0_i_3__0
       (.I0(proc_state2[17]),
        .I1(proc_state2[16]),
        .I2(proc_state2[15]),
        .O(i__carry__0_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_4
       (.I0(height_u[5]),
        .O(i__carry__0_i_4_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    i__carry__0_i_4__0
       (.I0(proc_state2[14]),
        .I1(proc_state2[13]),
        .I2(proc_state2[12]),
        .O(i__carry__0_i_4__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_1
       (.I0(height_u[12]),
        .O(i__carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__1_i_1__0
       (.I0(proc_state2[31]),
        .I1(proc_state2[30]),
        .O(i__carry__1_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_2
       (.I0(height_u[11]),
        .O(i__carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    i__carry__1_i_2__0
       (.I0(proc_state2[29]),
        .I1(proc_state2[28]),
        .I2(proc_state2[27]),
        .O(i__carry__1_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_3
       (.I0(height_u[10]),
        .O(i__carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    i__carry__1_i_3__0
       (.I0(proc_state2[26]),
        .I1(proc_state2[25]),
        .I2(proc_state2[24]),
        .O(i__carry__1_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_4
       (.I0(height_u[9]),
        .O(i__carry__1_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_1
       (.I0(height_u[16]),
        .O(i__carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_2
       (.I0(height_u[15]),
        .O(i__carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_3
       (.I0(height_u[14]),
        .O(i__carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_4
       (.I0(height_u[13]),
        .O(i__carry__2_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_1
       (.I0(height_u[20]),
        .O(i__carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_2
       (.I0(height_u[19]),
        .O(i__carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_3
       (.I0(height_u[18]),
        .O(i__carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_4
       (.I0(height_u[17]),
        .O(i__carry__3_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__4_i_1
       (.I0(height_u[24]),
        .O(i__carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__4_i_2
       (.I0(height_u[23]),
        .O(i__carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__4_i_3
       (.I0(height_u[22]),
        .O(i__carry__4_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__4_i_4
       (.I0(height_u[21]),
        .O(i__carry__4_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__5_i_1
       (.I0(height_u[28]),
        .O(i__carry__5_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__5_i_2
       (.I0(height_u[27]),
        .O(i__carry__5_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__5_i_3
       (.I0(height_u[26]),
        .O(i__carry__5_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__5_i_4
       (.I0(height_u[25]),
        .O(i__carry__5_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__6_i_1
       (.I0(height_u[31]),
        .O(i__carry__6_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__6_i_2
       (.I0(height_u[30]),
        .O(i__carry__6_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__6_i_3
       (.I0(height_u[29]),
        .O(i__carry__6_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_1
       (.I0(height_u[4]),
        .O(i__carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h1001)) 
    i__carry_i_1__0
       (.I0(proc_state2[11]),
        .I1(proc_state2[10]),
        .I2(\pixel_x_reg_n_0_[9] ),
        .I3(proc_state2[9]),
        .O(i__carry_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_2
       (.I0(height_u[3]),
        .O(i__carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_2__0
       (.I0(\pixel_x_reg_n_0_[6] ),
        .I1(proc_state2[6]),
        .I2(proc_state2[7]),
        .I3(\pixel_x_reg_n_0_[7] ),
        .I4(\pixel_x_reg_n_0_[8] ),
        .I5(proc_state2[8]),
        .O(i__carry_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_3
       (.I0(height_u[2]),
        .O(i__carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_3__0
       (.I0(\pixel_x_reg_n_0_[3] ),
        .I1(proc_state2[3]),
        .I2(proc_state2[4]),
        .I3(\pixel_x_reg_n_0_[4] ),
        .I4(\pixel_x_reg_n_0_[5] ),
        .I5(proc_state2[5]),
        .O(i__carry_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_4
       (.I0(height_u[1]),
        .O(i__carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h6006000000006006)) 
    i__carry_i_4__0
       (.I0(width_u[0]),
        .I1(\pixel_x_reg_n_0_[0] ),
        .I2(proc_state2[1]),
        .I3(\pixel_x_reg_n_0_[1] ),
        .I4(\pixel_x_reg_n_0_[2] ),
        .I5(proc_state2[2]),
        .O(i__carry_i_4__0_n_0));
  LUT6 #(
    .INIT(64'h2A082A082A2A0808)) 
    \last_left_lbl[0]_i_1 
       (.I0(\last_left_lbl[15]_i_3_n_0 ),
        .I1(local_label_counter0__0),
        .I2(\local_label_counter_reg_n_0_[0] ),
        .I3(lbl_left__123[0]),
        .I4(\out_data_reg[0]_i_3_n_0 ),
        .I5(\out_data_reg[15]_i_6_n_0 ),
        .O(last_left_lbl[0]));
  LUT6 #(
    .INIT(64'h8A808A808A8A8080)) 
    \last_left_lbl[10]_i_1 
       (.I0(\last_left_lbl[15]_i_3_n_0 ),
        .I1(in19[10]),
        .I2(local_label_counter0__0),
        .I3(lbl_left__123[10]),
        .I4(\out_data_reg[10]_i_3_n_0 ),
        .I5(\out_data_reg[15]_i_6_n_0 ),
        .O(last_left_lbl[10]));
  LUT6 #(
    .INIT(64'h8A808A808A8A8080)) 
    \last_left_lbl[11]_i_1 
       (.I0(\last_left_lbl[15]_i_3_n_0 ),
        .I1(in19[11]),
        .I2(local_label_counter0__0),
        .I3(lbl_left__123[11]),
        .I4(\out_data_reg[11]_i_3_n_0 ),
        .I5(\out_data_reg[15]_i_6_n_0 ),
        .O(last_left_lbl[11]));
  LUT6 #(
    .INIT(64'h8A808A808A8A8080)) 
    \last_left_lbl[12]_i_1 
       (.I0(\last_left_lbl[15]_i_3_n_0 ),
        .I1(in19[12]),
        .I2(local_label_counter0__0),
        .I3(lbl_left__123[12]),
        .I4(\out_data_reg[12]_i_3_n_0 ),
        .I5(\out_data_reg[15]_i_6_n_0 ),
        .O(last_left_lbl[12]));
  LUT6 #(
    .INIT(64'h8A808A808A8A8080)) 
    \last_left_lbl[13]_i_1 
       (.I0(\last_left_lbl[15]_i_3_n_0 ),
        .I1(in19[13]),
        .I2(local_label_counter0__0),
        .I3(lbl_left__123[13]),
        .I4(\out_data_reg[13]_i_3_n_0 ),
        .I5(\out_data_reg[15]_i_6_n_0 ),
        .O(last_left_lbl[13]));
  LUT6 #(
    .INIT(64'h8A808A808A8A8080)) 
    \last_left_lbl[14]_i_1 
       (.I0(\last_left_lbl[15]_i_3_n_0 ),
        .I1(in19[14]),
        .I2(local_label_counter0__0),
        .I3(lbl_left__123[14]),
        .I4(\out_data_reg[14]_i_3_n_0 ),
        .I5(\out_data_reg[15]_i_6_n_0 ),
        .O(last_left_lbl[14]));
  LUT3 #(
    .INIT(8'h23)) 
    \last_left_lbl[15]_i_1 
       (.I0(proc_state116_out),
        .I1(proc_state[1]),
        .I2(proc_state[0]),
        .O(last_left_lbl_4));
  LUT6 #(
    .INIT(64'h8A808A808A8A8080)) 
    \last_left_lbl[15]_i_2 
       (.I0(\last_left_lbl[15]_i_3_n_0 ),
        .I1(in19[15]),
        .I2(local_label_counter0__0),
        .I3(lbl_left),
        .I4(\out_data_reg[15]_i_5_n_0 ),
        .I5(\out_data_reg[15]_i_6_n_0 ),
        .O(last_left_lbl[15]));
  LUT6 #(
    .INIT(64'hA080A080A0802000)) 
    \last_left_lbl[15]_i_3 
       (.I0(\pixel_x[9]_i_4_n_0 ),
        .I1(\out_data_reg[15]_i_12_n_0 ),
        .I2(\out_data_reg[15]_i_11_n_0 ),
        .I3(\last_left_lbl[15]_i_4_n_0 ),
        .I4(\out_data_reg[15]_i_8_n_0 ),
        .I5(\out_data_reg[15]_i_7_n_0 ),
        .O(\last_left_lbl[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEEEEEEE)) 
    \last_left_lbl[15]_i_4 
       (.I0(\out_data_reg[15]_i_26_n_0 ),
        .I1(\last_left_lbl[15]_i_5_n_0 ),
        .I2(\unpack_shift_reg_reg_n_0_[12] ),
        .I3(\out_data_reg[15]_i_20_n_0 ),
        .I4(\out_data_reg[15]_i_19_n_0 ),
        .I5(\out_data_reg[15]_i_10_n_0 ),
        .O(\last_left_lbl[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFC8404040)) 
    \last_left_lbl[15]_i_5 
       (.I0(\last_left_lbl[15]_i_6_n_0 ),
        .I1(\last_left_lbl[15]_i_7_n_0 ),
        .I2(\out_data_reg[15]_i_42_n_0 ),
        .I3(\unpack_shift_reg_reg_n_0_[13] ),
        .I4(\last_left_lbl[15]_i_8_n_0 ),
        .I5(\out_data_reg[15]_i_25_n_0 ),
        .O(\last_left_lbl[15]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \last_left_lbl[15]_i_6 
       (.I0(\unpack_bits_left_reg_n_0_[3] ),
        .I1(\unpack_bits_left_reg_n_0_[1] ),
        .I2(\unpack_bits_left_reg_n_0_[0] ),
        .I3(\unpack_bits_left_reg_n_0_[2] ),
        .O(\last_left_lbl[15]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \last_left_lbl[15]_i_7 
       (.I0(\unpack_bits_left_reg_n_0_[2] ),
        .I1(\unpack_bits_left_reg_n_0_[0] ),
        .I2(\unpack_bits_left_reg_n_0_[1] ),
        .O(\last_left_lbl[15]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \last_left_lbl[15]_i_8 
       (.I0(\unpack_bits_left_reg_n_0_[1] ),
        .I1(\unpack_bits_left_reg_n_0_[0] ),
        .O(\last_left_lbl[15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h8A808A808A8A8080)) 
    \last_left_lbl[1]_i_1 
       (.I0(\last_left_lbl[15]_i_3_n_0 ),
        .I1(in19[1]),
        .I2(local_label_counter0__0),
        .I3(lbl_left__123[1]),
        .I4(\out_data_reg[1]_i_3_n_0 ),
        .I5(\out_data_reg[15]_i_6_n_0 ),
        .O(last_left_lbl[1]));
  LUT6 #(
    .INIT(64'h8A808A808A8A8080)) 
    \last_left_lbl[2]_i_1 
       (.I0(\last_left_lbl[15]_i_3_n_0 ),
        .I1(in19[2]),
        .I2(local_label_counter0__0),
        .I3(lbl_left__123[2]),
        .I4(\out_data_reg[2]_i_3_n_0 ),
        .I5(\out_data_reg[15]_i_6_n_0 ),
        .O(last_left_lbl[2]));
  LUT6 #(
    .INIT(64'h8A808A808A8A8080)) 
    \last_left_lbl[3]_i_1 
       (.I0(\last_left_lbl[15]_i_3_n_0 ),
        .I1(in19[3]),
        .I2(local_label_counter0__0),
        .I3(lbl_left__123[3]),
        .I4(\out_data_reg[3]_i_3_n_0 ),
        .I5(\out_data_reg[15]_i_6_n_0 ),
        .O(last_left_lbl[3]));
  LUT6 #(
    .INIT(64'h8A808A808A8A8080)) 
    \last_left_lbl[4]_i_1 
       (.I0(\last_left_lbl[15]_i_3_n_0 ),
        .I1(in19[4]),
        .I2(local_label_counter0__0),
        .I3(lbl_left__123[4]),
        .I4(\out_data_reg[4]_i_3_n_0 ),
        .I5(\out_data_reg[15]_i_6_n_0 ),
        .O(last_left_lbl[4]));
  LUT6 #(
    .INIT(64'h8A808A808A8A8080)) 
    \last_left_lbl[5]_i_1 
       (.I0(\last_left_lbl[15]_i_3_n_0 ),
        .I1(in19[5]),
        .I2(local_label_counter0__0),
        .I3(lbl_left__123[5]),
        .I4(\out_data_reg[5]_i_3_n_0 ),
        .I5(\out_data_reg[15]_i_6_n_0 ),
        .O(last_left_lbl[5]));
  LUT6 #(
    .INIT(64'h8A808A808A8A8080)) 
    \last_left_lbl[6]_i_1 
       (.I0(\last_left_lbl[15]_i_3_n_0 ),
        .I1(in19[6]),
        .I2(local_label_counter0__0),
        .I3(lbl_left__123[6]),
        .I4(\out_data_reg[6]_i_3_n_0 ),
        .I5(\out_data_reg[15]_i_6_n_0 ),
        .O(last_left_lbl[6]));
  LUT6 #(
    .INIT(64'h8A808A808A8A8080)) 
    \last_left_lbl[7]_i_1 
       (.I0(\last_left_lbl[15]_i_3_n_0 ),
        .I1(in19[7]),
        .I2(local_label_counter0__0),
        .I3(lbl_left__123[7]),
        .I4(\out_data_reg[7]_i_3_n_0 ),
        .I5(\out_data_reg[15]_i_6_n_0 ),
        .O(last_left_lbl[7]));
  LUT6 #(
    .INIT(64'h8A808A808A8A8080)) 
    \last_left_lbl[8]_i_1 
       (.I0(\last_left_lbl[15]_i_3_n_0 ),
        .I1(in19[8]),
        .I2(local_label_counter0__0),
        .I3(lbl_left__123[8]),
        .I4(\out_data_reg[8]_i_3_n_0 ),
        .I5(\out_data_reg[15]_i_6_n_0 ),
        .O(last_left_lbl[8]));
  LUT6 #(
    .INIT(64'h8A808A808A8A8080)) 
    \last_left_lbl[9]_i_1 
       (.I0(\last_left_lbl[15]_i_3_n_0 ),
        .I1(in19[9]),
        .I2(local_label_counter0__0),
        .I3(lbl_left__123[9]),
        .I4(\out_data_reg[9]_i_3_n_0 ),
        .I5(\out_data_reg[15]_i_6_n_0 ),
        .O(last_left_lbl[9]));
  FDRE #(
    .INIT(1'b0)) 
    \last_left_lbl_reg[0] 
       (.C(aclkrst_clk),
        .CE(last_left_lbl_4),
        .D(last_left_lbl[0]),
        .Q(\last_left_lbl_reg_n_0_[0] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \last_left_lbl_reg[10] 
       (.C(aclkrst_clk),
        .CE(last_left_lbl_4),
        .D(last_left_lbl[10]),
        .Q(\last_left_lbl_reg_n_0_[10] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \last_left_lbl_reg[11] 
       (.C(aclkrst_clk),
        .CE(last_left_lbl_4),
        .D(last_left_lbl[11]),
        .Q(\last_left_lbl_reg_n_0_[11] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \last_left_lbl_reg[12] 
       (.C(aclkrst_clk),
        .CE(last_left_lbl_4),
        .D(last_left_lbl[12]),
        .Q(\last_left_lbl_reg_n_0_[12] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \last_left_lbl_reg[13] 
       (.C(aclkrst_clk),
        .CE(last_left_lbl_4),
        .D(last_left_lbl[13]),
        .Q(\last_left_lbl_reg_n_0_[13] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \last_left_lbl_reg[14] 
       (.C(aclkrst_clk),
        .CE(last_left_lbl_4),
        .D(last_left_lbl[14]),
        .Q(\last_left_lbl_reg_n_0_[14] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \last_left_lbl_reg[15] 
       (.C(aclkrst_clk),
        .CE(last_left_lbl_4),
        .D(last_left_lbl[15]),
        .Q(\last_left_lbl_reg_n_0_[15] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \last_left_lbl_reg[1] 
       (.C(aclkrst_clk),
        .CE(last_left_lbl_4),
        .D(last_left_lbl[1]),
        .Q(\last_left_lbl_reg_n_0_[1] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \last_left_lbl_reg[2] 
       (.C(aclkrst_clk),
        .CE(last_left_lbl_4),
        .D(last_left_lbl[2]),
        .Q(\last_left_lbl_reg_n_0_[2] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \last_left_lbl_reg[3] 
       (.C(aclkrst_clk),
        .CE(last_left_lbl_4),
        .D(last_left_lbl[3]),
        .Q(\last_left_lbl_reg_n_0_[3] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \last_left_lbl_reg[4] 
       (.C(aclkrst_clk),
        .CE(last_left_lbl_4),
        .D(last_left_lbl[4]),
        .Q(\last_left_lbl_reg_n_0_[4] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \last_left_lbl_reg[5] 
       (.C(aclkrst_clk),
        .CE(last_left_lbl_4),
        .D(last_left_lbl[5]),
        .Q(\last_left_lbl_reg_n_0_[5] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \last_left_lbl_reg[6] 
       (.C(aclkrst_clk),
        .CE(last_left_lbl_4),
        .D(last_left_lbl[6]),
        .Q(\last_left_lbl_reg_n_0_[6] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \last_left_lbl_reg[7] 
       (.C(aclkrst_clk),
        .CE(last_left_lbl_4),
        .D(last_left_lbl[7]),
        .Q(\last_left_lbl_reg_n_0_[7] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \last_left_lbl_reg[8] 
       (.C(aclkrst_clk),
        .CE(last_left_lbl_4),
        .D(last_left_lbl[8]),
        .Q(\last_left_lbl_reg_n_0_[8] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \last_left_lbl_reg[9] 
       (.C(aclkrst_clk),
        .CE(last_left_lbl_4),
        .D(last_left_lbl[9]),
        .Q(\last_left_lbl_reg_n_0_[9] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  CARRY4 lbl_new3_carry
       (.CI(1'b0),
        .CO({lbl_new3_carry_n_0,lbl_new3_carry_n_1,lbl_new3_carry_n_2,lbl_new3_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_lbl_new3_carry_O_UNCONNECTED[3:0]),
        .S({lbl_new3_carry_i_1_n_0,lbl_new3_carry_i_2_n_0,lbl_new3_carry_i_3_n_0,lbl_new3_carry_i_4_n_0}));
  CARRY4 lbl_new3_carry__0
       (.CI(lbl_new3_carry_n_0),
        .CO({NLW_lbl_new3_carry__0_CO_UNCONNECTED[3:2],lbl_new3_carry__0_n_2,lbl_new3_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_lbl_new3_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,lbl_new3_carry__0_i_1_n_0,lbl_new3_carry__0_i_2_n_0}));
  LUT6 #(
    .INIT(64'h4540BABFBABFBABF)) 
    lbl_new3_carry__0_i_1
       (.I0(line_prev_reg_0_255_0_0_i_6_n_0),
        .I1(line_prev_reg_256_511_15_15_n_0),
        .I2(\pixel_x_reg_n_0_[8] ),
        .I3(line_prev_reg_0_255_15_15_n_0),
        .I4(\last_left_lbl_reg_n_0_[15] ),
        .I5(line_prev_reg_0_255_0_0_i_3_n_0),
        .O(lbl_new3_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    lbl_new3_carry__0_i_2
       (.I0(lo_lbl1_carry__0_i_10_n_0),
        .I1(lo_lbl1_carry__0_i_9_n_0),
        .I2(lbl_new3_carry__0_i_3_n_0),
        .O(lbl_new3_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h4540BABFBABFBABF)) 
    lbl_new3_carry__0_i_3
       (.I0(line_prev_reg_0_255_0_0_i_6_n_0),
        .I1(line_prev_reg_256_511_12_12_n_0),
        .I2(\pixel_x_reg_n_0_[8] ),
        .I3(line_prev_reg_0_255_12_12_n_0),
        .I4(\last_left_lbl_reg_n_0_[12] ),
        .I5(line_prev_reg_0_255_0_0_i_3_n_0),
        .O(lbl_new3_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h2222222288822282)) 
    lbl_new3_carry_i_1
       (.I0(lbl_new3_carry_i_5_n_0),
        .I1(lbl_left__123[9]),
        .I2(line_prev_reg_0_255_9_9_n_0),
        .I3(\pixel_x_reg_n_0_[8] ),
        .I4(line_prev_reg_256_511_9_9_n_0),
        .I5(line_prev_reg_0_255_0_0_i_6_n_0),
        .O(lbl_new3_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    lbl_new3_carry_i_2
       (.I0(lo_lbl1_carry_i_9_n_0),
        .I1(lo_lbl1_carry__0_i_11_n_0),
        .I2(lbl_new3_carry_i_6_n_0),
        .O(lbl_new3_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h2222222288822282)) 
    lbl_new3_carry_i_3
       (.I0(lbl_new3_carry_i_7_n_0),
        .I1(lbl_left__123[3]),
        .I2(line_prev_reg_0_255_3_3_n_0),
        .I3(\pixel_x_reg_n_0_[8] ),
        .I4(line_prev_reg_256_511_3_3_n_0),
        .I5(line_prev_reg_0_255_0_0_i_6_n_0),
        .O(lbl_new3_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    lbl_new3_carry_i_4
       (.I0(lo_lbl1_carry_i_11_n_0),
        .I1(lo_lbl1_carry_i_10_n_0),
        .I2(lbl_new3_carry_i_8_n_0),
        .O(lbl_new3_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h90000393)) 
    lbl_new3_carry_i_5
       (.I0(\last_left_lbl_reg_n_0_[10] ),
        .I1(\out_data_reg[10]_i_3_n_0 ),
        .I2(line_prev_reg_0_255_0_0_i_3_n_0),
        .I3(\last_left_lbl_reg_n_0_[11] ),
        .I4(\out_data_reg[11]_i_3_n_0 ),
        .O(lbl_new3_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h4540BABFBABFBABF)) 
    lbl_new3_carry_i_6
       (.I0(line_prev_reg_0_255_0_0_i_6_n_0),
        .I1(line_prev_reg_256_511_6_6_n_0),
        .I2(\pixel_x_reg_n_0_[8] ),
        .I3(line_prev_reg_0_255_6_6_n_0),
        .I4(\last_left_lbl_reg_n_0_[6] ),
        .I5(line_prev_reg_0_255_0_0_i_3_n_0),
        .O(lbl_new3_carry_i_6_n_0));
  LUT5 #(
    .INIT(32'h90000393)) 
    lbl_new3_carry_i_7
       (.I0(\last_left_lbl_reg_n_0_[4] ),
        .I1(\out_data_reg[4]_i_3_n_0 ),
        .I2(line_prev_reg_0_255_0_0_i_3_n_0),
        .I3(\last_left_lbl_reg_n_0_[5] ),
        .I4(\out_data_reg[5]_i_3_n_0 ),
        .O(lbl_new3_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'h4540BABFBABFBABF)) 
    lbl_new3_carry_i_8
       (.I0(line_prev_reg_0_255_0_0_i_6_n_0),
        .I1(line_prev_reg_256_511_0_0_n_0),
        .I2(\pixel_x_reg_n_0_[8] ),
        .I3(line_prev_reg_0_255_0_0_n_0),
        .I4(\last_left_lbl_reg_n_0_[0] ),
        .I5(line_prev_reg_0_255_0_0_i_3_n_0),
        .O(lbl_new3_carry_i_8_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "U0/line_prev_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM256X1S line_prev_reg_0_255_0_0
       (.A({\pixel_x_reg_n_0_[7] ,\pixel_x_reg_n_0_[6] ,\pixel_x_reg_n_0_[5] ,\pixel_x_reg_n_0_[4] ,\pixel_x_reg_n_0_[3] ,\pixel_x_reg_n_0_[2] ,\pixel_x_reg_n_0_[1] ,\pixel_x_reg_n_0_[0] }),
        .D(line_prev_reg_0_255_0_0_i_1_n_0),
        .O(line_prev_reg_0_255_0_0_n_0),
        .WCLK(aclkrst_clk),
        .WE(line_prev_reg_0_255_0_0_i_2_n_0));
  LUT6 #(
    .INIT(64'h55550000C0000000)) 
    line_prev_reg_0_255_0_0_i_1
       (.I0(\local_label_counter_reg_n_0_[0] ),
        .I1(line_prev_reg_0_255_0_0_i_3_n_0),
        .I2(\last_left_lbl_reg_n_0_[0] ),
        .I3(\out_data_reg[15]_i_6_n_0 ),
        .I4(local_label_counter1__14),
        .I5(local_label_counter0__0),
        .O(line_prev_reg_0_255_0_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h00000000AAA80000)) 
    line_prev_reg_0_255_0_0_i_2
       (.I0(line_prev_reg_0_255_0_0_i_4_n_0),
        .I1(line_prev_reg_0_255_0_0_i_5_n_0),
        .I2(line_prev_reg_0_255_0_0_i_6_n_0),
        .I3(\out_data_reg[15]_i_6_n_0 ),
        .I4(proc_state116_out),
        .I5(\pixel_x_reg_n_0_[8] ),
        .O(line_prev_reg_0_255_0_0_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    line_prev_reg_0_255_0_0_i_3
       (.I0(\out_data_reg[15]_i_15_n_0 ),
        .I1(\pixel_x_reg_n_0_[9] ),
        .I2(\pixel_x_reg_n_0_[2] ),
        .I3(\pixel_x_reg_n_0_[0] ),
        .I4(\pixel_x_reg_n_0_[1] ),
        .O(line_prev_reg_0_255_0_0_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h40)) 
    line_prev_reg_0_255_0_0_i_4
       (.I0(proc_state[1]),
        .I1(proc_state[0]),
        .I2(aclkrst_n),
        .O(line_prev_reg_0_255_0_0_i_4_n_0));
  LUT6 #(
    .INIT(64'h44FF4FFFF4FFFFFF)) 
    line_prev_reg_0_255_0_0_i_5
       (.I0(\out_data_reg[15]_i_14_n_0 ),
        .I1(local_label_counter117_in),
        .I2(\out_data_reg[15]_i_12_n_0 ),
        .I3(\out_data_reg[15]_i_11_n_0 ),
        .I4(\last_left_lbl[15]_i_4_n_0 ),
        .I5(line_prev_reg_0_255_0_0_i_7_n_0),
        .O(line_prev_reg_0_255_0_0_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    line_prev_reg_0_255_0_0_i_6
       (.I0(\pixel_y_reg_n_0_[4] ),
        .I1(\pixel_y_reg_n_0_[5] ),
        .I2(\pixel_y_reg_n_0_[6] ),
        .I3(\pixel_y_reg_n_0_[7] ),
        .I4(\out_data_reg[15]_i_16_n_0 ),
        .O(line_prev_reg_0_255_0_0_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEEEEEEE)) 
    line_prev_reg_0_255_0_0_i_7
       (.I0(\out_data_reg[15]_i_23_n_0 ),
        .I1(line_prev_reg_0_255_0_0_i_8_n_0),
        .I2(\unpack_shift_reg_reg_n_0_[28] ),
        .I3(\out_data_reg[15]_i_20_n_0 ),
        .I4(\out_data_reg[15]_i_19_n_0 ),
        .I5(\out_data_reg[15]_i_8_n_0 ),
        .O(line_prev_reg_0_255_0_0_i_7_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFC8404040)) 
    line_prev_reg_0_255_0_0_i_8
       (.I0(\last_left_lbl[15]_i_6_n_0 ),
        .I1(\last_left_lbl[15]_i_7_n_0 ),
        .I2(\out_data_reg[15]_i_37_n_0 ),
        .I3(\unpack_shift_reg_reg_n_0_[29] ),
        .I4(\last_left_lbl[15]_i_8_n_0 ),
        .I5(\out_data_reg[15]_i_22_n_0 ),
        .O(line_prev_reg_0_255_0_0_i_8_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "U0/line_prev_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "10" *) 
  (* ram_slice_end = "10" *) 
  RAM256X1S line_prev_reg_0_255_10_10
       (.A({\pixel_x_reg_n_0_[7] ,\pixel_x_reg_n_0_[6] ,\pixel_x_reg_n_0_[5] ,\pixel_x_reg_n_0_[4] ,\pixel_x_reg_n_0_[3] ,\pixel_x_reg_n_0_[2] ,\pixel_x_reg_n_0_[1] ,\pixel_x_reg_n_0_[0] }),
        .D(line_prev_reg_0_255_10_10_i_1_n_0),
        .O(line_prev_reg_0_255_10_10_n_0),
        .WCLK(aclkrst_clk),
        .WE(line_prev_reg_0_255_0_0_i_2_n_0));
  LUT6 #(
    .INIT(64'hAAAA0000C0000000)) 
    line_prev_reg_0_255_10_10_i_1
       (.I0(in19[10]),
        .I1(line_prev_reg_0_255_0_0_i_3_n_0),
        .I2(\last_left_lbl_reg_n_0_[10] ),
        .I3(\out_data_reg[15]_i_6_n_0 ),
        .I4(local_label_counter1__14),
        .I5(local_label_counter0__0),
        .O(line_prev_reg_0_255_10_10_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "U0/line_prev_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "11" *) 
  (* ram_slice_end = "11" *) 
  RAM256X1S line_prev_reg_0_255_11_11
       (.A({\pixel_x_reg_n_0_[7] ,\pixel_x_reg_n_0_[6] ,\pixel_x_reg_n_0_[5] ,\pixel_x_reg_n_0_[4] ,\pixel_x_reg_n_0_[3] ,\pixel_x_reg_n_0_[2] ,\pixel_x_reg_n_0_[1] ,\pixel_x_reg_n_0_[0] }),
        .D(line_prev_reg_0_255_11_11_i_1_n_0),
        .O(line_prev_reg_0_255_11_11_n_0),
        .WCLK(aclkrst_clk),
        .WE(line_prev_reg_0_255_0_0_i_2_n_0));
  LUT6 #(
    .INIT(64'hAAAA0000C0000000)) 
    line_prev_reg_0_255_11_11_i_1
       (.I0(in19[11]),
        .I1(line_prev_reg_0_255_0_0_i_3_n_0),
        .I2(\last_left_lbl_reg_n_0_[11] ),
        .I3(\out_data_reg[15]_i_6_n_0 ),
        .I4(local_label_counter1__14),
        .I5(local_label_counter0__0),
        .O(line_prev_reg_0_255_11_11_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "U0/line_prev_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAM256X1S line_prev_reg_0_255_12_12
       (.A({\pixel_x_reg_n_0_[7] ,\pixel_x_reg_n_0_[6] ,\pixel_x_reg_n_0_[5] ,\pixel_x_reg_n_0_[4] ,\pixel_x_reg_n_0_[3] ,\pixel_x_reg_n_0_[2] ,\pixel_x_reg_n_0_[1] ,\pixel_x_reg_n_0_[0] }),
        .D(line_prev_reg_0_255_12_12_i_1_n_0),
        .O(line_prev_reg_0_255_12_12_n_0),
        .WCLK(aclkrst_clk),
        .WE(line_prev_reg_0_255_0_0_i_2_n_0));
  LUT6 #(
    .INIT(64'hAAAA0000C0000000)) 
    line_prev_reg_0_255_12_12_i_1
       (.I0(in19[12]),
        .I1(line_prev_reg_0_255_0_0_i_3_n_0),
        .I2(\last_left_lbl_reg_n_0_[12] ),
        .I3(\out_data_reg[15]_i_6_n_0 ),
        .I4(local_label_counter1__14),
        .I5(local_label_counter0__0),
        .O(line_prev_reg_0_255_12_12_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "U0/line_prev_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "13" *) 
  (* ram_slice_end = "13" *) 
  RAM256X1S line_prev_reg_0_255_13_13
       (.A({\pixel_x_reg_n_0_[7] ,\pixel_x_reg_n_0_[6] ,\pixel_x_reg_n_0_[5] ,\pixel_x_reg_n_0_[4] ,\pixel_x_reg_n_0_[3] ,\pixel_x_reg_n_0_[2] ,\pixel_x_reg_n_0_[1] ,\pixel_x_reg_n_0_[0] }),
        .D(line_prev_reg_0_255_13_13_i_1_n_0),
        .O(line_prev_reg_0_255_13_13_n_0),
        .WCLK(aclkrst_clk),
        .WE(line_prev_reg_0_255_0_0_i_2_n_0));
  LUT6 #(
    .INIT(64'hAAAA0000C0000000)) 
    line_prev_reg_0_255_13_13_i_1
       (.I0(in19[13]),
        .I1(line_prev_reg_0_255_0_0_i_3_n_0),
        .I2(\last_left_lbl_reg_n_0_[13] ),
        .I3(\out_data_reg[15]_i_6_n_0 ),
        .I4(local_label_counter1__14),
        .I5(local_label_counter0__0),
        .O(line_prev_reg_0_255_13_13_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "U0/line_prev_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "14" *) 
  RAM256X1S line_prev_reg_0_255_14_14
       (.A({\pixel_x_reg_n_0_[7] ,\pixel_x_reg_n_0_[6] ,\pixel_x_reg_n_0_[5] ,\pixel_x_reg_n_0_[4] ,\pixel_x_reg_n_0_[3] ,\pixel_x_reg_n_0_[2] ,\pixel_x_reg_n_0_[1] ,\pixel_x_reg_n_0_[0] }),
        .D(line_prev_reg_0_255_14_14_i_1_n_0),
        .O(line_prev_reg_0_255_14_14_n_0),
        .WCLK(aclkrst_clk),
        .WE(line_prev_reg_0_255_0_0_i_2_n_0));
  LUT6 #(
    .INIT(64'hAAAA0000C0000000)) 
    line_prev_reg_0_255_14_14_i_1
       (.I0(in19[14]),
        .I1(line_prev_reg_0_255_0_0_i_3_n_0),
        .I2(\last_left_lbl_reg_n_0_[14] ),
        .I3(\out_data_reg[15]_i_6_n_0 ),
        .I4(local_label_counter1__14),
        .I5(local_label_counter0__0),
        .O(line_prev_reg_0_255_14_14_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "U0/line_prev_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAM256X1S line_prev_reg_0_255_15_15
       (.A({\pixel_x_reg_n_0_[7] ,\pixel_x_reg_n_0_[6] ,\pixel_x_reg_n_0_[5] ,\pixel_x_reg_n_0_[4] ,\pixel_x_reg_n_0_[3] ,\pixel_x_reg_n_0_[2] ,\pixel_x_reg_n_0_[1] ,\pixel_x_reg_n_0_[0] }),
        .D(line_prev_reg_0_255_15_15_i_1_n_0),
        .O(line_prev_reg_0_255_15_15_n_0),
        .WCLK(aclkrst_clk),
        .WE(line_prev_reg_0_255_0_0_i_2_n_0));
  LUT6 #(
    .INIT(64'hAAAA0000C0000000)) 
    line_prev_reg_0_255_15_15_i_1
       (.I0(in19[15]),
        .I1(line_prev_reg_0_255_0_0_i_3_n_0),
        .I2(\last_left_lbl_reg_n_0_[15] ),
        .I3(\out_data_reg[15]_i_6_n_0 ),
        .I4(local_label_counter1__14),
        .I5(local_label_counter0__0),
        .O(line_prev_reg_0_255_15_15_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "U0/line_prev_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAM256X1S line_prev_reg_0_255_1_1
       (.A({\pixel_x_reg_n_0_[7] ,\pixel_x_reg_n_0_[6] ,\pixel_x_reg_n_0_[5] ,\pixel_x_reg_n_0_[4] ,\pixel_x_reg_n_0_[3] ,\pixel_x_reg_n_0_[2] ,\pixel_x_reg_n_0_[1] ,\pixel_x_reg_n_0_[0] }),
        .D(line_prev_reg_0_255_1_1_i_1_n_0),
        .O(line_prev_reg_0_255_1_1_n_0),
        .WCLK(aclkrst_clk),
        .WE(line_prev_reg_0_255_0_0_i_2_n_0));
  LUT6 #(
    .INIT(64'hAAAA0000C0000000)) 
    line_prev_reg_0_255_1_1_i_1
       (.I0(in19[1]),
        .I1(line_prev_reg_0_255_0_0_i_3_n_0),
        .I2(\last_left_lbl_reg_n_0_[1] ),
        .I3(\out_data_reg[15]_i_6_n_0 ),
        .I4(local_label_counter1__14),
        .I5(local_label_counter0__0),
        .O(line_prev_reg_0_255_1_1_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "U0/line_prev_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAM256X1S line_prev_reg_0_255_2_2
       (.A({\pixel_x_reg_n_0_[7] ,\pixel_x_reg_n_0_[6] ,\pixel_x_reg_n_0_[5] ,\pixel_x_reg_n_0_[4] ,\pixel_x_reg_n_0_[3] ,\pixel_x_reg_n_0_[2] ,\pixel_x_reg_n_0_[1] ,\pixel_x_reg_n_0_[0] }),
        .D(line_prev_reg_0_255_2_2_i_1_n_0),
        .O(line_prev_reg_0_255_2_2_n_0),
        .WCLK(aclkrst_clk),
        .WE(line_prev_reg_0_255_0_0_i_2_n_0));
  LUT6 #(
    .INIT(64'hAAAA0000C0000000)) 
    line_prev_reg_0_255_2_2_i_1
       (.I0(in19[2]),
        .I1(line_prev_reg_0_255_0_0_i_3_n_0),
        .I2(\last_left_lbl_reg_n_0_[2] ),
        .I3(\out_data_reg[15]_i_6_n_0 ),
        .I4(local_label_counter1__14),
        .I5(local_label_counter0__0),
        .O(line_prev_reg_0_255_2_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "U0/line_prev_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAM256X1S line_prev_reg_0_255_3_3
       (.A({\pixel_x_reg_n_0_[7] ,\pixel_x_reg_n_0_[6] ,\pixel_x_reg_n_0_[5] ,\pixel_x_reg_n_0_[4] ,\pixel_x_reg_n_0_[3] ,\pixel_x_reg_n_0_[2] ,\pixel_x_reg_n_0_[1] ,\pixel_x_reg_n_0_[0] }),
        .D(line_prev_reg_0_255_3_3_i_1_n_0),
        .O(line_prev_reg_0_255_3_3_n_0),
        .WCLK(aclkrst_clk),
        .WE(line_prev_reg_0_255_0_0_i_2_n_0));
  LUT6 #(
    .INIT(64'hAAAA0000C0000000)) 
    line_prev_reg_0_255_3_3_i_1
       (.I0(in19[3]),
        .I1(line_prev_reg_0_255_0_0_i_3_n_0),
        .I2(\last_left_lbl_reg_n_0_[3] ),
        .I3(\out_data_reg[15]_i_6_n_0 ),
        .I4(local_label_counter1__14),
        .I5(local_label_counter0__0),
        .O(line_prev_reg_0_255_3_3_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "U0/line_prev_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAM256X1S line_prev_reg_0_255_4_4
       (.A({\pixel_x_reg_n_0_[7] ,\pixel_x_reg_n_0_[6] ,\pixel_x_reg_n_0_[5] ,\pixel_x_reg_n_0_[4] ,\pixel_x_reg_n_0_[3] ,\pixel_x_reg_n_0_[2] ,\pixel_x_reg_n_0_[1] ,\pixel_x_reg_n_0_[0] }),
        .D(line_prev_reg_0_255_4_4_i_1_n_0),
        .O(line_prev_reg_0_255_4_4_n_0),
        .WCLK(aclkrst_clk),
        .WE(line_prev_reg_0_255_0_0_i_2_n_0));
  LUT6 #(
    .INIT(64'hAAAA0000C0000000)) 
    line_prev_reg_0_255_4_4_i_1
       (.I0(in19[4]),
        .I1(line_prev_reg_0_255_0_0_i_3_n_0),
        .I2(\last_left_lbl_reg_n_0_[4] ),
        .I3(\out_data_reg[15]_i_6_n_0 ),
        .I4(local_label_counter1__14),
        .I5(local_label_counter0__0),
        .O(line_prev_reg_0_255_4_4_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "U0/line_prev_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAM256X1S line_prev_reg_0_255_5_5
       (.A({\pixel_x_reg_n_0_[7] ,\pixel_x_reg_n_0_[6] ,\pixel_x_reg_n_0_[5] ,\pixel_x_reg_n_0_[4] ,\pixel_x_reg_n_0_[3] ,\pixel_x_reg_n_0_[2] ,\pixel_x_reg_n_0_[1] ,\pixel_x_reg_n_0_[0] }),
        .D(line_prev_reg_0_255_5_5_i_1_n_0),
        .O(line_prev_reg_0_255_5_5_n_0),
        .WCLK(aclkrst_clk),
        .WE(line_prev_reg_0_255_0_0_i_2_n_0));
  LUT6 #(
    .INIT(64'hAAAA0000C0000000)) 
    line_prev_reg_0_255_5_5_i_1
       (.I0(in19[5]),
        .I1(line_prev_reg_0_255_0_0_i_3_n_0),
        .I2(\last_left_lbl_reg_n_0_[5] ),
        .I3(\out_data_reg[15]_i_6_n_0 ),
        .I4(local_label_counter1__14),
        .I5(local_label_counter0__0),
        .O(line_prev_reg_0_255_5_5_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "U0/line_prev_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM256X1S line_prev_reg_0_255_6_6
       (.A({\pixel_x_reg_n_0_[7] ,\pixel_x_reg_n_0_[6] ,\pixel_x_reg_n_0_[5] ,\pixel_x_reg_n_0_[4] ,\pixel_x_reg_n_0_[3] ,\pixel_x_reg_n_0_[2] ,\pixel_x_reg_n_0_[1] ,\pixel_x_reg_n_0_[0] }),
        .D(line_prev_reg_0_255_6_6_i_1_n_0),
        .O(line_prev_reg_0_255_6_6_n_0),
        .WCLK(aclkrst_clk),
        .WE(line_prev_reg_0_255_0_0_i_2_n_0));
  LUT6 #(
    .INIT(64'hAAAA0000C0000000)) 
    line_prev_reg_0_255_6_6_i_1
       (.I0(in19[6]),
        .I1(line_prev_reg_0_255_0_0_i_3_n_0),
        .I2(\last_left_lbl_reg_n_0_[6] ),
        .I3(\out_data_reg[15]_i_6_n_0 ),
        .I4(local_label_counter1__14),
        .I5(local_label_counter0__0),
        .O(line_prev_reg_0_255_6_6_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "U0/line_prev_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM256X1S line_prev_reg_0_255_7_7
       (.A({\pixel_x_reg_n_0_[7] ,\pixel_x_reg_n_0_[6] ,\pixel_x_reg_n_0_[5] ,\pixel_x_reg_n_0_[4] ,\pixel_x_reg_n_0_[3] ,\pixel_x_reg_n_0_[2] ,\pixel_x_reg_n_0_[1] ,\pixel_x_reg_n_0_[0] }),
        .D(line_prev_reg_0_255_7_7_i_1_n_0),
        .O(line_prev_reg_0_255_7_7_n_0),
        .WCLK(aclkrst_clk),
        .WE(line_prev_reg_0_255_0_0_i_2_n_0));
  LUT6 #(
    .INIT(64'hAAAA0000C0000000)) 
    line_prev_reg_0_255_7_7_i_1
       (.I0(in19[7]),
        .I1(line_prev_reg_0_255_0_0_i_3_n_0),
        .I2(\last_left_lbl_reg_n_0_[7] ),
        .I3(\out_data_reg[15]_i_6_n_0 ),
        .I4(local_label_counter1__14),
        .I5(local_label_counter0__0),
        .O(line_prev_reg_0_255_7_7_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "U0/line_prev_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "8" *) 
  (* ram_slice_end = "8" *) 
  RAM256X1S line_prev_reg_0_255_8_8
       (.A({\pixel_x_reg_n_0_[7] ,\pixel_x_reg_n_0_[6] ,\pixel_x_reg_n_0_[5] ,\pixel_x_reg_n_0_[4] ,\pixel_x_reg_n_0_[3] ,\pixel_x_reg_n_0_[2] ,\pixel_x_reg_n_0_[1] ,\pixel_x_reg_n_0_[0] }),
        .D(line_prev_reg_0_255_8_8_i_1_n_0),
        .O(line_prev_reg_0_255_8_8_n_0),
        .WCLK(aclkrst_clk),
        .WE(line_prev_reg_0_255_0_0_i_2_n_0));
  LUT6 #(
    .INIT(64'hAAAA0000C0000000)) 
    line_prev_reg_0_255_8_8_i_1
       (.I0(in19[8]),
        .I1(line_prev_reg_0_255_0_0_i_3_n_0),
        .I2(\last_left_lbl_reg_n_0_[8] ),
        .I3(\out_data_reg[15]_i_6_n_0 ),
        .I4(local_label_counter1__14),
        .I5(local_label_counter0__0),
        .O(line_prev_reg_0_255_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "U0/line_prev_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "9" *) 
  RAM256X1S line_prev_reg_0_255_9_9
       (.A({\pixel_x_reg_n_0_[7] ,\pixel_x_reg_n_0_[6] ,\pixel_x_reg_n_0_[5] ,\pixel_x_reg_n_0_[4] ,\pixel_x_reg_n_0_[3] ,\pixel_x_reg_n_0_[2] ,\pixel_x_reg_n_0_[1] ,\pixel_x_reg_n_0_[0] }),
        .D(line_prev_reg_0_255_9_9_i_1_n_0),
        .O(line_prev_reg_0_255_9_9_n_0),
        .WCLK(aclkrst_clk),
        .WE(line_prev_reg_0_255_0_0_i_2_n_0));
  LUT6 #(
    .INIT(64'hAAAA0000C0000000)) 
    line_prev_reg_0_255_9_9_i_1
       (.I0(in19[9]),
        .I1(line_prev_reg_0_255_0_0_i_3_n_0),
        .I2(\last_left_lbl_reg_n_0_[9] ),
        .I3(\out_data_reg[15]_i_6_n_0 ),
        .I4(local_label_counter1__14),
        .I5(local_label_counter0__0),
        .O(line_prev_reg_0_255_9_9_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "U0/line_prev_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM256X1S line_prev_reg_256_511_0_0
       (.A({\pixel_x_reg_n_0_[7] ,\pixel_x_reg_n_0_[6] ,\pixel_x_reg_n_0_[5] ,\pixel_x_reg_n_0_[4] ,\pixel_x_reg_n_0_[3] ,\pixel_x_reg_n_0_[2] ,\pixel_x_reg_n_0_[1] ,\pixel_x_reg_n_0_[0] }),
        .D(line_prev_reg_0_255_0_0_i_1_n_0),
        .O(line_prev_reg_256_511_0_0_n_0),
        .WCLK(aclkrst_clk),
        .WE(line_prev_reg_256_511_0_0_i_1_n_0));
  LUT6 #(
    .INIT(64'hAAA8000000000000)) 
    line_prev_reg_256_511_0_0_i_1
       (.I0(line_prev_reg_0_255_0_0_i_4_n_0),
        .I1(line_prev_reg_0_255_0_0_i_5_n_0),
        .I2(line_prev_reg_0_255_0_0_i_6_n_0),
        .I3(\out_data_reg[15]_i_6_n_0 ),
        .I4(proc_state116_out),
        .I5(\pixel_x_reg_n_0_[8] ),
        .O(line_prev_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "U0/line_prev_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "10" *) 
  (* ram_slice_end = "10" *) 
  RAM256X1S line_prev_reg_256_511_10_10
       (.A({\pixel_x_reg_n_0_[7] ,\pixel_x_reg_n_0_[6] ,\pixel_x_reg_n_0_[5] ,\pixel_x_reg_n_0_[4] ,\pixel_x_reg_n_0_[3] ,\pixel_x_reg_n_0_[2] ,\pixel_x_reg_n_0_[1] ,\pixel_x_reg_n_0_[0] }),
        .D(line_prev_reg_0_255_10_10_i_1_n_0),
        .O(line_prev_reg_256_511_10_10_n_0),
        .WCLK(aclkrst_clk),
        .WE(line_prev_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "U0/line_prev_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "11" *) 
  (* ram_slice_end = "11" *) 
  RAM256X1S line_prev_reg_256_511_11_11
       (.A({\pixel_x_reg_n_0_[7] ,\pixel_x_reg_n_0_[6] ,\pixel_x_reg_n_0_[5] ,\pixel_x_reg_n_0_[4] ,\pixel_x_reg_n_0_[3] ,\pixel_x_reg_n_0_[2] ,\pixel_x_reg_n_0_[1] ,\pixel_x_reg_n_0_[0] }),
        .D(line_prev_reg_0_255_11_11_i_1_n_0),
        .O(line_prev_reg_256_511_11_11_n_0),
        .WCLK(aclkrst_clk),
        .WE(line_prev_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "U0/line_prev_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAM256X1S line_prev_reg_256_511_12_12
       (.A({\pixel_x_reg_n_0_[7] ,\pixel_x_reg_n_0_[6] ,\pixel_x_reg_n_0_[5] ,\pixel_x_reg_n_0_[4] ,\pixel_x_reg_n_0_[3] ,\pixel_x_reg_n_0_[2] ,\pixel_x_reg_n_0_[1] ,\pixel_x_reg_n_0_[0] }),
        .D(line_prev_reg_0_255_12_12_i_1_n_0),
        .O(line_prev_reg_256_511_12_12_n_0),
        .WCLK(aclkrst_clk),
        .WE(line_prev_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "U0/line_prev_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "13" *) 
  (* ram_slice_end = "13" *) 
  RAM256X1S line_prev_reg_256_511_13_13
       (.A({\pixel_x_reg_n_0_[7] ,\pixel_x_reg_n_0_[6] ,\pixel_x_reg_n_0_[5] ,\pixel_x_reg_n_0_[4] ,\pixel_x_reg_n_0_[3] ,\pixel_x_reg_n_0_[2] ,\pixel_x_reg_n_0_[1] ,\pixel_x_reg_n_0_[0] }),
        .D(line_prev_reg_0_255_13_13_i_1_n_0),
        .O(line_prev_reg_256_511_13_13_n_0),
        .WCLK(aclkrst_clk),
        .WE(line_prev_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "U0/line_prev_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "14" *) 
  RAM256X1S line_prev_reg_256_511_14_14
       (.A({\pixel_x_reg_n_0_[7] ,\pixel_x_reg_n_0_[6] ,\pixel_x_reg_n_0_[5] ,\pixel_x_reg_n_0_[4] ,\pixel_x_reg_n_0_[3] ,\pixel_x_reg_n_0_[2] ,\pixel_x_reg_n_0_[1] ,\pixel_x_reg_n_0_[0] }),
        .D(line_prev_reg_0_255_14_14_i_1_n_0),
        .O(line_prev_reg_256_511_14_14_n_0),
        .WCLK(aclkrst_clk),
        .WE(line_prev_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "U0/line_prev_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAM256X1S line_prev_reg_256_511_15_15
       (.A({\pixel_x_reg_n_0_[7] ,\pixel_x_reg_n_0_[6] ,\pixel_x_reg_n_0_[5] ,\pixel_x_reg_n_0_[4] ,\pixel_x_reg_n_0_[3] ,\pixel_x_reg_n_0_[2] ,\pixel_x_reg_n_0_[1] ,\pixel_x_reg_n_0_[0] }),
        .D(line_prev_reg_0_255_15_15_i_1_n_0),
        .O(line_prev_reg_256_511_15_15_n_0),
        .WCLK(aclkrst_clk),
        .WE(line_prev_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "U0/line_prev_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAM256X1S line_prev_reg_256_511_1_1
       (.A({\pixel_x_reg_n_0_[7] ,\pixel_x_reg_n_0_[6] ,\pixel_x_reg_n_0_[5] ,\pixel_x_reg_n_0_[4] ,\pixel_x_reg_n_0_[3] ,\pixel_x_reg_n_0_[2] ,\pixel_x_reg_n_0_[1] ,\pixel_x_reg_n_0_[0] }),
        .D(line_prev_reg_0_255_1_1_i_1_n_0),
        .O(line_prev_reg_256_511_1_1_n_0),
        .WCLK(aclkrst_clk),
        .WE(line_prev_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "U0/line_prev_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAM256X1S line_prev_reg_256_511_2_2
       (.A({\pixel_x_reg_n_0_[7] ,\pixel_x_reg_n_0_[6] ,\pixel_x_reg_n_0_[5] ,\pixel_x_reg_n_0_[4] ,\pixel_x_reg_n_0_[3] ,\pixel_x_reg_n_0_[2] ,\pixel_x_reg_n_0_[1] ,\pixel_x_reg_n_0_[0] }),
        .D(line_prev_reg_0_255_2_2_i_1_n_0),
        .O(line_prev_reg_256_511_2_2_n_0),
        .WCLK(aclkrst_clk),
        .WE(line_prev_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "U0/line_prev_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAM256X1S line_prev_reg_256_511_3_3
       (.A({\pixel_x_reg_n_0_[7] ,\pixel_x_reg_n_0_[6] ,\pixel_x_reg_n_0_[5] ,\pixel_x_reg_n_0_[4] ,\pixel_x_reg_n_0_[3] ,\pixel_x_reg_n_0_[2] ,\pixel_x_reg_n_0_[1] ,\pixel_x_reg_n_0_[0] }),
        .D(line_prev_reg_0_255_3_3_i_1_n_0),
        .O(line_prev_reg_256_511_3_3_n_0),
        .WCLK(aclkrst_clk),
        .WE(line_prev_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "U0/line_prev_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAM256X1S line_prev_reg_256_511_4_4
       (.A({\pixel_x_reg_n_0_[7] ,\pixel_x_reg_n_0_[6] ,\pixel_x_reg_n_0_[5] ,\pixel_x_reg_n_0_[4] ,\pixel_x_reg_n_0_[3] ,\pixel_x_reg_n_0_[2] ,\pixel_x_reg_n_0_[1] ,\pixel_x_reg_n_0_[0] }),
        .D(line_prev_reg_0_255_4_4_i_1_n_0),
        .O(line_prev_reg_256_511_4_4_n_0),
        .WCLK(aclkrst_clk),
        .WE(line_prev_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "U0/line_prev_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAM256X1S line_prev_reg_256_511_5_5
       (.A({\pixel_x_reg_n_0_[7] ,\pixel_x_reg_n_0_[6] ,\pixel_x_reg_n_0_[5] ,\pixel_x_reg_n_0_[4] ,\pixel_x_reg_n_0_[3] ,\pixel_x_reg_n_0_[2] ,\pixel_x_reg_n_0_[1] ,\pixel_x_reg_n_0_[0] }),
        .D(line_prev_reg_0_255_5_5_i_1_n_0),
        .O(line_prev_reg_256_511_5_5_n_0),
        .WCLK(aclkrst_clk),
        .WE(line_prev_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "U0/line_prev_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM256X1S line_prev_reg_256_511_6_6
       (.A({\pixel_x_reg_n_0_[7] ,\pixel_x_reg_n_0_[6] ,\pixel_x_reg_n_0_[5] ,\pixel_x_reg_n_0_[4] ,\pixel_x_reg_n_0_[3] ,\pixel_x_reg_n_0_[2] ,\pixel_x_reg_n_0_[1] ,\pixel_x_reg_n_0_[0] }),
        .D(line_prev_reg_0_255_6_6_i_1_n_0),
        .O(line_prev_reg_256_511_6_6_n_0),
        .WCLK(aclkrst_clk),
        .WE(line_prev_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "U0/line_prev_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM256X1S line_prev_reg_256_511_7_7
       (.A({\pixel_x_reg_n_0_[7] ,\pixel_x_reg_n_0_[6] ,\pixel_x_reg_n_0_[5] ,\pixel_x_reg_n_0_[4] ,\pixel_x_reg_n_0_[3] ,\pixel_x_reg_n_0_[2] ,\pixel_x_reg_n_0_[1] ,\pixel_x_reg_n_0_[0] }),
        .D(line_prev_reg_0_255_7_7_i_1_n_0),
        .O(line_prev_reg_256_511_7_7_n_0),
        .WCLK(aclkrst_clk),
        .WE(line_prev_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "U0/line_prev_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "8" *) 
  (* ram_slice_end = "8" *) 
  RAM256X1S line_prev_reg_256_511_8_8
       (.A({\pixel_x_reg_n_0_[7] ,\pixel_x_reg_n_0_[6] ,\pixel_x_reg_n_0_[5] ,\pixel_x_reg_n_0_[4] ,\pixel_x_reg_n_0_[3] ,\pixel_x_reg_n_0_[2] ,\pixel_x_reg_n_0_[1] ,\pixel_x_reg_n_0_[0] }),
        .D(line_prev_reg_0_255_8_8_i_1_n_0),
        .O(line_prev_reg_256_511_8_8_n_0),
        .WCLK(aclkrst_clk),
        .WE(line_prev_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "U0/line_prev_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "9" *) 
  RAM256X1S line_prev_reg_256_511_9_9
       (.A({\pixel_x_reg_n_0_[7] ,\pixel_x_reg_n_0_[6] ,\pixel_x_reg_n_0_[5] ,\pixel_x_reg_n_0_[4] ,\pixel_x_reg_n_0_[3] ,\pixel_x_reg_n_0_[2] ,\pixel_x_reg_n_0_[1] ,\pixel_x_reg_n_0_[0] }),
        .D(line_prev_reg_0_255_9_9_i_1_n_0),
        .O(line_prev_reg_256_511_9_9_n_0),
        .WCLK(aclkrst_clk),
        .WE(line_prev_reg_256_511_0_0_i_1_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 lo_lbl1_carry
       (.CI(1'b0),
        .CO({lo_lbl1_carry_n_0,lo_lbl1_carry_n_1,lo_lbl1_carry_n_2,lo_lbl1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({lo_lbl1_carry_i_1_n_0,lo_lbl1_carry_i_2_n_0,lo_lbl1_carry_i_3_n_0,lo_lbl1_carry_i_4_n_0}),
        .O(NLW_lo_lbl1_carry_O_UNCONNECTED[3:0]),
        .S({lo_lbl1_carry_i_5_n_0,lo_lbl1_carry_i_6_n_0,lo_lbl1_carry_i_7_n_0,lo_lbl1_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 lo_lbl1_carry__0
       (.CI(lo_lbl1_carry_n_0),
        .CO({lo_lbl1_carry__0_n_0,lo_lbl1_carry__0_n_1,lo_lbl1_carry__0_n_2,lo_lbl1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({lo_lbl1_carry__0_i_1_n_0,lo_lbl1_carry__0_i_2_n_0,lo_lbl1_carry__0_i_3_n_0,lo_lbl1_carry__0_i_4_n_0}),
        .O(NLW_lo_lbl1_carry__0_O_UNCONNECTED[3:0]),
        .S({lo_lbl1_carry__0_i_5_n_0,lo_lbl1_carry__0_i_6_n_0,lo_lbl1_carry__0_i_7_n_0,lo_lbl1_carry__0_i_8_n_0}));
  LUT5 #(
    .INIT(32'h4040C440)) 
    lo_lbl1_carry__0_i_1
       (.I0(\out_data_reg[15]_i_5_n_0 ),
        .I1(line_prev_reg_0_255_0_0_i_3_n_0),
        .I2(\last_left_lbl_reg_n_0_[15] ),
        .I3(\last_left_lbl_reg_n_0_[14] ),
        .I4(\out_data_reg[14]_i_3_n_0 ),
        .O(lo_lbl1_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h4540BABFBABFBABF)) 
    lo_lbl1_carry__0_i_10
       (.I0(line_prev_reg_0_255_0_0_i_6_n_0),
        .I1(line_prev_reg_256_511_13_13_n_0),
        .I2(\pixel_x_reg_n_0_[8] ),
        .I3(line_prev_reg_0_255_13_13_n_0),
        .I4(\last_left_lbl_reg_n_0_[13] ),
        .I5(line_prev_reg_0_255_0_0_i_3_n_0),
        .O(lo_lbl1_carry__0_i_10_n_0));
  LUT6 #(
    .INIT(64'h4540BABFBABFBABF)) 
    lo_lbl1_carry__0_i_11
       (.I0(line_prev_reg_0_255_0_0_i_6_n_0),
        .I1(line_prev_reg_256_511_8_8_n_0),
        .I2(\pixel_x_reg_n_0_[8] ),
        .I3(line_prev_reg_0_255_8_8_n_0),
        .I4(\last_left_lbl_reg_n_0_[8] ),
        .I5(line_prev_reg_0_255_0_0_i_3_n_0),
        .O(lo_lbl1_carry__0_i_11_n_0));
  LUT5 #(
    .INIT(32'h4040C440)) 
    lo_lbl1_carry__0_i_2
       (.I0(\out_data_reg[13]_i_3_n_0 ),
        .I1(line_prev_reg_0_255_0_0_i_3_n_0),
        .I2(\last_left_lbl_reg_n_0_[13] ),
        .I3(\last_left_lbl_reg_n_0_[12] ),
        .I4(\out_data_reg[12]_i_3_n_0 ),
        .O(lo_lbl1_carry__0_i_2_n_0));
  LUT5 #(
    .INIT(32'h4400C440)) 
    lo_lbl1_carry__0_i_3
       (.I0(\out_data_reg[11]_i_3_n_0 ),
        .I1(line_prev_reg_0_255_0_0_i_3_n_0),
        .I2(\last_left_lbl_reg_n_0_[10] ),
        .I3(\last_left_lbl_reg_n_0_[11] ),
        .I4(\out_data_reg[10]_i_3_n_0 ),
        .O(lo_lbl1_carry__0_i_3_n_0));
  LUT5 #(
    .INIT(32'h4400C440)) 
    lo_lbl1_carry__0_i_4
       (.I0(\out_data_reg[9]_i_3_n_0 ),
        .I1(line_prev_reg_0_255_0_0_i_3_n_0),
        .I2(\last_left_lbl_reg_n_0_[8] ),
        .I3(\last_left_lbl_reg_n_0_[9] ),
        .I4(\out_data_reg[8]_i_3_n_0 ),
        .O(lo_lbl1_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'h2822282828222222)) 
    lo_lbl1_carry__0_i_5
       (.I0(lo_lbl1_carry__0_i_9_n_0),
        .I1(lbl_left),
        .I2(line_prev_reg_0_255_0_0_i_6_n_0),
        .I3(line_prev_reg_256_511_15_15_n_0),
        .I4(\pixel_x_reg_n_0_[8] ),
        .I5(line_prev_reg_0_255_15_15_n_0),
        .O(lo_lbl1_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'h5555A95900000000)) 
    lo_lbl1_carry__0_i_6
       (.I0(lbl_left__123[12]),
        .I1(line_prev_reg_0_255_12_12_n_0),
        .I2(\pixel_x_reg_n_0_[8] ),
        .I3(line_prev_reg_256_511_12_12_n_0),
        .I4(line_prev_reg_0_255_0_0_i_6_n_0),
        .I5(lo_lbl1_carry__0_i_10_n_0),
        .O(lo_lbl1_carry__0_i_6_n_0));
  LUT5 #(
    .INIT(32'h90000393)) 
    lo_lbl1_carry__0_i_7
       (.I0(\last_left_lbl_reg_n_0_[10] ),
        .I1(\out_data_reg[10]_i_3_n_0 ),
        .I2(line_prev_reg_0_255_0_0_i_3_n_0),
        .I3(\last_left_lbl_reg_n_0_[11] ),
        .I4(\out_data_reg[11]_i_3_n_0 ),
        .O(lo_lbl1_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'h5555A95900000000)) 
    lo_lbl1_carry__0_i_8
       (.I0(lbl_left__123[9]),
        .I1(line_prev_reg_0_255_9_9_n_0),
        .I2(\pixel_x_reg_n_0_[8] ),
        .I3(line_prev_reg_256_511_9_9_n_0),
        .I4(line_prev_reg_0_255_0_0_i_6_n_0),
        .I5(lo_lbl1_carry__0_i_11_n_0),
        .O(lo_lbl1_carry__0_i_8_n_0));
  LUT6 #(
    .INIT(64'h4540BABFBABFBABF)) 
    lo_lbl1_carry__0_i_9
       (.I0(line_prev_reg_0_255_0_0_i_6_n_0),
        .I1(line_prev_reg_256_511_14_14_n_0),
        .I2(\pixel_x_reg_n_0_[8] ),
        .I3(line_prev_reg_0_255_14_14_n_0),
        .I4(\last_left_lbl_reg_n_0_[14] ),
        .I5(line_prev_reg_0_255_0_0_i_3_n_0),
        .O(lo_lbl1_carry__0_i_9_n_0));
  LUT5 #(
    .INIT(32'h4400C440)) 
    lo_lbl1_carry_i_1
       (.I0(\out_data_reg[7]_i_3_n_0 ),
        .I1(line_prev_reg_0_255_0_0_i_3_n_0),
        .I2(\last_left_lbl_reg_n_0_[6] ),
        .I3(\last_left_lbl_reg_n_0_[7] ),
        .I4(\out_data_reg[6]_i_3_n_0 ),
        .O(lo_lbl1_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h4540BABFBABFBABF)) 
    lo_lbl1_carry_i_10
       (.I0(line_prev_reg_0_255_0_0_i_6_n_0),
        .I1(line_prev_reg_256_511_2_2_n_0),
        .I2(\pixel_x_reg_n_0_[8] ),
        .I3(line_prev_reg_0_255_2_2_n_0),
        .I4(\last_left_lbl_reg_n_0_[2] ),
        .I5(line_prev_reg_0_255_0_0_i_3_n_0),
        .O(lo_lbl1_carry_i_10_n_0));
  LUT6 #(
    .INIT(64'h4540BABFBABFBABF)) 
    lo_lbl1_carry_i_11
       (.I0(line_prev_reg_0_255_0_0_i_6_n_0),
        .I1(line_prev_reg_256_511_1_1_n_0),
        .I2(\pixel_x_reg_n_0_[8] ),
        .I3(line_prev_reg_0_255_1_1_n_0),
        .I4(\last_left_lbl_reg_n_0_[1] ),
        .I5(line_prev_reg_0_255_0_0_i_3_n_0),
        .O(lo_lbl1_carry_i_11_n_0));
  LUT5 #(
    .INIT(32'h4040C440)) 
    lo_lbl1_carry_i_2
       (.I0(\out_data_reg[5]_i_3_n_0 ),
        .I1(line_prev_reg_0_255_0_0_i_3_n_0),
        .I2(\last_left_lbl_reg_n_0_[5] ),
        .I3(\last_left_lbl_reg_n_0_[4] ),
        .I4(\out_data_reg[4]_i_3_n_0 ),
        .O(lo_lbl1_carry_i_2_n_0));
  LUT5 #(
    .INIT(32'h4400C440)) 
    lo_lbl1_carry_i_3
       (.I0(\out_data_reg[3]_i_3_n_0 ),
        .I1(line_prev_reg_0_255_0_0_i_3_n_0),
        .I2(\last_left_lbl_reg_n_0_[2] ),
        .I3(\last_left_lbl_reg_n_0_[3] ),
        .I4(\out_data_reg[2]_i_3_n_0 ),
        .O(lo_lbl1_carry_i_3_n_0));
  LUT5 #(
    .INIT(32'h4040C440)) 
    lo_lbl1_carry_i_4
       (.I0(\out_data_reg[1]_i_3_n_0 ),
        .I1(line_prev_reg_0_255_0_0_i_3_n_0),
        .I2(\last_left_lbl_reg_n_0_[1] ),
        .I3(\last_left_lbl_reg_n_0_[0] ),
        .I4(\out_data_reg[0]_i_3_n_0 ),
        .O(lo_lbl1_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h5555A95900000000)) 
    lo_lbl1_carry_i_5
       (.I0(lbl_left__123[6]),
        .I1(line_prev_reg_0_255_6_6_n_0),
        .I2(\pixel_x_reg_n_0_[8] ),
        .I3(line_prev_reg_256_511_6_6_n_0),
        .I4(line_prev_reg_0_255_0_0_i_6_n_0),
        .I5(lo_lbl1_carry_i_9_n_0),
        .O(lo_lbl1_carry_i_5_n_0));
  LUT5 #(
    .INIT(32'h90000393)) 
    lo_lbl1_carry_i_6
       (.I0(\last_left_lbl_reg_n_0_[4] ),
        .I1(\out_data_reg[4]_i_3_n_0 ),
        .I2(line_prev_reg_0_255_0_0_i_3_n_0),
        .I3(\last_left_lbl_reg_n_0_[5] ),
        .I4(\out_data_reg[5]_i_3_n_0 ),
        .O(lo_lbl1_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h5555A95900000000)) 
    lo_lbl1_carry_i_7
       (.I0(lbl_left__123[3]),
        .I1(line_prev_reg_0_255_3_3_n_0),
        .I2(\pixel_x_reg_n_0_[8] ),
        .I3(line_prev_reg_256_511_3_3_n_0),
        .I4(line_prev_reg_0_255_0_0_i_6_n_0),
        .I5(lo_lbl1_carry_i_10_n_0),
        .O(lo_lbl1_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'h5555A95900000000)) 
    lo_lbl1_carry_i_8
       (.I0(lbl_left__123[0]),
        .I1(line_prev_reg_0_255_0_0_n_0),
        .I2(\pixel_x_reg_n_0_[8] ),
        .I3(line_prev_reg_256_511_0_0_n_0),
        .I4(line_prev_reg_0_255_0_0_i_6_n_0),
        .I5(lo_lbl1_carry_i_11_n_0),
        .O(lo_lbl1_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'h4540BABFBABFBABF)) 
    lo_lbl1_carry_i_9
       (.I0(line_prev_reg_0_255_0_0_i_6_n_0),
        .I1(line_prev_reg_256_511_7_7_n_0),
        .I2(\pixel_x_reg_n_0_[8] ),
        .I3(line_prev_reg_0_255_7_7_n_0),
        .I4(\last_left_lbl_reg_n_0_[7] ),
        .I5(line_prev_reg_0_255_0_0_i_3_n_0),
        .O(lo_lbl1_carry_i_9_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    \local_label_counter[0]_i_1 
       (.I0(proc_state[0]),
        .I1(\local_label_counter_reg_n_0_[0] ),
        .O(local_label_counter[0]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \local_label_counter[10]_i_1 
       (.I0(proc_state[0]),
        .I1(in19[10]),
        .O(local_label_counter[10]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \local_label_counter[11]_i_1 
       (.I0(proc_state[0]),
        .I1(in19[11]),
        .O(local_label_counter[11]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \local_label_counter[12]_i_1 
       (.I0(proc_state[0]),
        .I1(in19[12]),
        .O(local_label_counter[12]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \local_label_counter[13]_i_1 
       (.I0(proc_state[0]),
        .I1(in19[13]),
        .O(local_label_counter[13]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \local_label_counter[14]_i_1 
       (.I0(proc_state[0]),
        .I1(in19[14]),
        .O(local_label_counter[14]));
  LUT6 #(
    .INIT(64'h2000200033332000)) 
    \local_label_counter[15]_i_1 
       (.I0(\out_data_reg[17]_i_3_n_0 ),
        .I1(proc_state[1]),
        .I2(local_label_counter1__14),
        .I3(local_label_counter0__0),
        .I4(p_0_in),
        .I5(proc_state[0]),
        .O(local_label_counter_1));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \local_label_counter[15]_i_2 
       (.I0(proc_state[0]),
        .I1(in19[15]),
        .O(local_label_counter[15]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \local_label_counter[1]_i_1 
       (.I0(proc_state[0]),
        .I1(in19[1]),
        .O(local_label_counter[1]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \local_label_counter[2]_i_1 
       (.I0(proc_state[0]),
        .I1(in19[2]),
        .O(local_label_counter[2]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \local_label_counter[3]_i_1 
       (.I0(proc_state[0]),
        .I1(in19[3]),
        .O(local_label_counter[3]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \local_label_counter[4]_i_1 
       (.I0(proc_state[0]),
        .I1(in19[4]),
        .O(local_label_counter[4]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \local_label_counter[5]_i_1 
       (.I0(proc_state[0]),
        .I1(in19[5]),
        .O(local_label_counter[5]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \local_label_counter[6]_i_1 
       (.I0(proc_state[0]),
        .I1(in19[6]),
        .O(local_label_counter[6]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \local_label_counter[7]_i_1 
       (.I0(proc_state[0]),
        .I1(in19[7]),
        .O(local_label_counter[7]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \local_label_counter[8]_i_1 
       (.I0(proc_state[0]),
        .I1(in19[8]),
        .O(local_label_counter[8]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \local_label_counter[9]_i_1 
       (.I0(proc_state[0]),
        .I1(in19[9]),
        .O(local_label_counter[9]));
  FDRE #(
    .INIT(1'b0)) 
    \local_label_counter_reg[0] 
       (.C(aclkrst_clk),
        .CE(local_label_counter_1),
        .D(local_label_counter[0]),
        .Q(\local_label_counter_reg_n_0_[0] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \local_label_counter_reg[10] 
       (.C(aclkrst_clk),
        .CE(local_label_counter_1),
        .D(local_label_counter[10]),
        .Q(\local_label_counter_reg_n_0_[10] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \local_label_counter_reg[11] 
       (.C(aclkrst_clk),
        .CE(local_label_counter_1),
        .D(local_label_counter[11]),
        .Q(\local_label_counter_reg_n_0_[11] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \local_label_counter_reg[12] 
       (.C(aclkrst_clk),
        .CE(local_label_counter_1),
        .D(local_label_counter[12]),
        .Q(\local_label_counter_reg_n_0_[12] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \local_label_counter_reg[13] 
       (.C(aclkrst_clk),
        .CE(local_label_counter_1),
        .D(local_label_counter[13]),
        .Q(\local_label_counter_reg_n_0_[13] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \local_label_counter_reg[14] 
       (.C(aclkrst_clk),
        .CE(local_label_counter_1),
        .D(local_label_counter[14]),
        .Q(\local_label_counter_reg_n_0_[14] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \local_label_counter_reg[15] 
       (.C(aclkrst_clk),
        .CE(local_label_counter_1),
        .D(local_label_counter[15]),
        .Q(\local_label_counter_reg_n_0_[15] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \local_label_counter_reg[1] 
       (.C(aclkrst_clk),
        .CE(local_label_counter_1),
        .D(local_label_counter[1]),
        .Q(\local_label_counter_reg_n_0_[1] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \local_label_counter_reg[2] 
       (.C(aclkrst_clk),
        .CE(local_label_counter_1),
        .D(local_label_counter[2]),
        .Q(\local_label_counter_reg_n_0_[2] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \local_label_counter_reg[3] 
       (.C(aclkrst_clk),
        .CE(local_label_counter_1),
        .D(local_label_counter[3]),
        .Q(\local_label_counter_reg_n_0_[3] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \local_label_counter_reg[4] 
       (.C(aclkrst_clk),
        .CE(local_label_counter_1),
        .D(local_label_counter[4]),
        .Q(\local_label_counter_reg_n_0_[4] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \local_label_counter_reg[5] 
       (.C(aclkrst_clk),
        .CE(local_label_counter_1),
        .D(local_label_counter[5]),
        .Q(\local_label_counter_reg_n_0_[5] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \local_label_counter_reg[6] 
       (.C(aclkrst_clk),
        .CE(local_label_counter_1),
        .D(local_label_counter[6]),
        .Q(\local_label_counter_reg_n_0_[6] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \local_label_counter_reg[7] 
       (.C(aclkrst_clk),
        .CE(local_label_counter_1),
        .D(local_label_counter[7]),
        .Q(\local_label_counter_reg_n_0_[7] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \local_label_counter_reg[8] 
       (.C(aclkrst_clk),
        .CE(local_label_counter_1),
        .D(local_label_counter[8]),
        .Q(\local_label_counter_reg_n_0_[8] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \local_label_counter_reg[9] 
       (.C(aclkrst_clk),
        .CE(local_label_counter_1),
        .D(local_label_counter[9]),
        .Q(\local_label_counter_reg_n_0_[9] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2A082A082A2A0808)) 
    \out_data_reg[0]_i_1 
       (.I0(local_label_counter1__14),
        .I1(local_label_counter0__0),
        .I2(\local_label_counter_reg_n_0_[0] ),
        .I3(lbl_left__123[0]),
        .I4(\out_data_reg[0]_i_3_n_0 ),
        .I5(\out_data_reg[15]_i_6_n_0 ),
        .O(lbl_new[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \out_data_reg[0]_i_2 
       (.I0(\pixel_x_reg_n_0_[1] ),
        .I1(\pixel_x_reg_n_0_[0] ),
        .I2(\pixel_x_reg_n_0_[2] ),
        .I3(\pixel_x_reg_n_0_[9] ),
        .I4(\out_data_reg[15]_i_15_n_0 ),
        .I5(\last_left_lbl_reg_n_0_[0] ),
        .O(lbl_left__123[0]));
  LUT5 #(
    .INIT(32'h00E2E2E2)) 
    \out_data_reg[0]_i_3 
       (.I0(line_prev_reg_0_255_0_0_n_0),
        .I1(\pixel_x_reg_n_0_[8] ),
        .I2(line_prev_reg_256_511_0_0_n_0),
        .I3(\out_data_reg[15]_i_16_n_0 ),
        .I4(\out_data_reg[15]_i_17_n_0 ),
        .O(\out_data_reg[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8A808A808A8A8080)) 
    \out_data_reg[10]_i_1 
       (.I0(local_label_counter1__14),
        .I1(in19[10]),
        .I2(local_label_counter0__0),
        .I3(lbl_left__123[10]),
        .I4(\out_data_reg[10]_i_3_n_0 ),
        .I5(\out_data_reg[15]_i_6_n_0 ),
        .O(lbl_new[10]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \out_data_reg[10]_i_2 
       (.I0(\pixel_x_reg_n_0_[1] ),
        .I1(\pixel_x_reg_n_0_[0] ),
        .I2(\pixel_x_reg_n_0_[2] ),
        .I3(\pixel_x_reg_n_0_[9] ),
        .I4(\out_data_reg[15]_i_15_n_0 ),
        .I5(\last_left_lbl_reg_n_0_[10] ),
        .O(lbl_left__123[10]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00E2E2E2)) 
    \out_data_reg[10]_i_3 
       (.I0(line_prev_reg_0_255_10_10_n_0),
        .I1(\pixel_x_reg_n_0_[8] ),
        .I2(line_prev_reg_256_511_10_10_n_0),
        .I3(\out_data_reg[15]_i_16_n_0 ),
        .I4(\out_data_reg[15]_i_17_n_0 ),
        .O(\out_data_reg[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8A808A808A8A8080)) 
    \out_data_reg[11]_i_1 
       (.I0(local_label_counter1__14),
        .I1(in19[11]),
        .I2(local_label_counter0__0),
        .I3(lbl_left__123[11]),
        .I4(\out_data_reg[11]_i_3_n_0 ),
        .I5(\out_data_reg[15]_i_6_n_0 ),
        .O(lbl_new[11]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \out_data_reg[11]_i_2 
       (.I0(\pixel_x_reg_n_0_[1] ),
        .I1(\pixel_x_reg_n_0_[0] ),
        .I2(\pixel_x_reg_n_0_[2] ),
        .I3(\pixel_x_reg_n_0_[9] ),
        .I4(\out_data_reg[15]_i_15_n_0 ),
        .I5(\last_left_lbl_reg_n_0_[11] ),
        .O(lbl_left__123[11]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00E2E2E2)) 
    \out_data_reg[11]_i_3 
       (.I0(line_prev_reg_0_255_11_11_n_0),
        .I1(\pixel_x_reg_n_0_[8] ),
        .I2(line_prev_reg_256_511_11_11_n_0),
        .I3(\out_data_reg[15]_i_16_n_0 ),
        .I4(\out_data_reg[15]_i_17_n_0 ),
        .O(\out_data_reg[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8A808A808A8A8080)) 
    \out_data_reg[12]_i_1 
       (.I0(local_label_counter1__14),
        .I1(in19[12]),
        .I2(local_label_counter0__0),
        .I3(lbl_left__123[12]),
        .I4(\out_data_reg[12]_i_3_n_0 ),
        .I5(\out_data_reg[15]_i_6_n_0 ),
        .O(lbl_new[12]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \out_data_reg[12]_i_2 
       (.I0(\pixel_x_reg_n_0_[1] ),
        .I1(\pixel_x_reg_n_0_[0] ),
        .I2(\pixel_x_reg_n_0_[2] ),
        .I3(\pixel_x_reg_n_0_[9] ),
        .I4(\out_data_reg[15]_i_15_n_0 ),
        .I5(\last_left_lbl_reg_n_0_[12] ),
        .O(lbl_left__123[12]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00E2E2E2)) 
    \out_data_reg[12]_i_3 
       (.I0(line_prev_reg_0_255_12_12_n_0),
        .I1(\pixel_x_reg_n_0_[8] ),
        .I2(line_prev_reg_256_511_12_12_n_0),
        .I3(\out_data_reg[15]_i_16_n_0 ),
        .I4(\out_data_reg[15]_i_17_n_0 ),
        .O(\out_data_reg[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8A808A808A8A8080)) 
    \out_data_reg[13]_i_1 
       (.I0(local_label_counter1__14),
        .I1(in19[13]),
        .I2(local_label_counter0__0),
        .I3(lbl_left__123[13]),
        .I4(\out_data_reg[13]_i_3_n_0 ),
        .I5(\out_data_reg[15]_i_6_n_0 ),
        .O(lbl_new[13]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \out_data_reg[13]_i_2 
       (.I0(\pixel_x_reg_n_0_[1] ),
        .I1(\pixel_x_reg_n_0_[0] ),
        .I2(\pixel_x_reg_n_0_[2] ),
        .I3(\pixel_x_reg_n_0_[9] ),
        .I4(\out_data_reg[15]_i_15_n_0 ),
        .I5(\last_left_lbl_reg_n_0_[13] ),
        .O(lbl_left__123[13]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00E2E2E2)) 
    \out_data_reg[13]_i_3 
       (.I0(line_prev_reg_0_255_13_13_n_0),
        .I1(\pixel_x_reg_n_0_[8] ),
        .I2(line_prev_reg_256_511_13_13_n_0),
        .I3(\out_data_reg[15]_i_16_n_0 ),
        .I4(\out_data_reg[15]_i_17_n_0 ),
        .O(\out_data_reg[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8A808A808A8A8080)) 
    \out_data_reg[14]_i_1 
       (.I0(local_label_counter1__14),
        .I1(in19[14]),
        .I2(local_label_counter0__0),
        .I3(lbl_left__123[14]),
        .I4(\out_data_reg[14]_i_3_n_0 ),
        .I5(\out_data_reg[15]_i_6_n_0 ),
        .O(lbl_new[14]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \out_data_reg[14]_i_2 
       (.I0(\pixel_x_reg_n_0_[1] ),
        .I1(\pixel_x_reg_n_0_[0] ),
        .I2(\pixel_x_reg_n_0_[2] ),
        .I3(\pixel_x_reg_n_0_[9] ),
        .I4(\out_data_reg[15]_i_15_n_0 ),
        .I5(\last_left_lbl_reg_n_0_[14] ),
        .O(lbl_left__123[14]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00E2E2E2)) 
    \out_data_reg[14]_i_3 
       (.I0(line_prev_reg_0_255_14_14_n_0),
        .I1(\pixel_x_reg_n_0_[8] ),
        .I2(line_prev_reg_256_511_14_14_n_0),
        .I3(\out_data_reg[15]_i_16_n_0 ),
        .I4(\out_data_reg[15]_i_17_n_0 ),
        .O(\out_data_reg[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8A808A808A8A8080)) 
    \out_data_reg[15]_i_1 
       (.I0(local_label_counter1__14),
        .I1(in19[15]),
        .I2(local_label_counter0__0),
        .I3(lbl_left),
        .I4(\out_data_reg[15]_i_5_n_0 ),
        .I5(\out_data_reg[15]_i_6_n_0 ),
        .O(lbl_new[15]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \out_data_reg[15]_i_10 
       (.I0(\unpack_shift_reg_reg_n_0_[14] ),
        .I1(\unpack_bits_left_reg_n_0_[2] ),
        .I2(\unpack_bits_left_reg_n_0_[0] ),
        .I3(\unpack_bits_left_reg_n_0_[1] ),
        .I4(\unpack_bits_left_reg_n_0_[3] ),
        .O(\out_data_reg[15]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFE)) 
    \out_data_reg[15]_i_11 
       (.I0(\unpack_bits_left_reg_n_0_[4] ),
        .I1(\unpack_bits_left_reg_n_0_[2] ),
        .I2(\unpack_bits_left_reg_n_0_[0] ),
        .I3(\unpack_bits_left_reg_n_0_[1] ),
        .I4(\unpack_bits_left_reg_n_0_[3] ),
        .I5(\unpack_bits_left_reg_n_0_[5] ),
        .O(\out_data_reg[15]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \out_data_reg[15]_i_12 
       (.I0(\unpack_bits_left_reg_n_0_[4] ),
        .I1(\unpack_bits_left_reg_n_0_[2] ),
        .I2(\unpack_bits_left_reg_n_0_[0] ),
        .I3(\unpack_bits_left_reg_n_0_[1] ),
        .I4(\unpack_bits_left_reg_n_0_[3] ),
        .O(\out_data_reg[15]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \out_data_reg[15]_i_13 
       (.I0(\out_data_reg[15]_i_27_n_0 ),
        .I1(\out_data_reg[15]_i_28_n_0 ),
        .I2(\out_data_reg[15]_i_29_n_0 ),
        .I3(\out_data_reg[15]_i_30_n_0 ),
        .O(local_label_counter117_in));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \out_data_reg[15]_i_14 
       (.I0(\out_data_reg[15]_i_31_n_0 ),
        .I1(\out_data_reg[15]_i_32_n_0 ),
        .I2(\out_data_reg[15]_i_33_n_0 ),
        .I3(\out_data_reg[15]_i_34_n_0 ),
        .I4(\out_data_reg[15]_i_35_n_0 ),
        .I5(\out_data_reg[15]_i_36_n_0 ),
        .O(\out_data_reg[15]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \out_data_reg[15]_i_15 
       (.I0(\pixel_x_reg_n_0_[7] ),
        .I1(\pixel_x_reg_n_0_[6] ),
        .I2(\pixel_x_reg_n_0_[8] ),
        .I3(\pixel_x_reg_n_0_[4] ),
        .I4(\pixel_x_reg_n_0_[3] ),
        .I5(\pixel_x_reg_n_0_[5] ),
        .O(\out_data_reg[15]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \out_data_reg[15]_i_16 
       (.I0(\pixel_y_reg_n_0_[1] ),
        .I1(\pixel_y_reg_n_0_[0] ),
        .I2(\pixel_y_reg_n_0_[3] ),
        .I3(\pixel_y_reg_n_0_[2] ),
        .O(\out_data_reg[15]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \out_data_reg[15]_i_17 
       (.I0(\pixel_y_reg_n_0_[7] ),
        .I1(\pixel_y_reg_n_0_[6] ),
        .I2(\pixel_y_reg_n_0_[5] ),
        .I3(\pixel_y_reg_n_0_[4] ),
        .O(\out_data_reg[15]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \out_data_reg[15]_i_18 
       (.I0(\out_data_reg[15]_i_27_n_0 ),
        .I1(\out_data_reg[15]_i_28_n_0 ),
        .I2(\out_data_reg[15]_i_30_n_0 ),
        .I3(\out_data_reg[15]_i_29_n_0 ),
        .O(lbl_new219_in));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hA801)) 
    \out_data_reg[15]_i_19 
       (.I0(\unpack_bits_left_reg_n_0_[3] ),
        .I1(\unpack_bits_left_reg_n_0_[1] ),
        .I2(\unpack_bits_left_reg_n_0_[0] ),
        .I3(\unpack_bits_left_reg_n_0_[2] ),
        .O(\out_data_reg[15]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hEEEE0000FFF00000)) 
    \out_data_reg[15]_i_2 
       (.I0(\out_data_reg[15]_i_7_n_0 ),
        .I1(\out_data_reg[15]_i_8_n_0 ),
        .I2(\out_data_reg[15]_i_9_n_0 ),
        .I3(\out_data_reg[15]_i_10_n_0 ),
        .I4(\out_data_reg[15]_i_11_n_0 ),
        .I5(\out_data_reg[15]_i_12_n_0 ),
        .O(local_label_counter1__14));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \out_data_reg[15]_i_20 
       (.I0(\unpack_bits_left_reg_n_0_[0] ),
        .I1(\unpack_bits_left_reg_n_0_[1] ),
        .O(\out_data_reg[15]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h00A0000CC0C0C000)) 
    \out_data_reg[15]_i_21 
       (.I0(\unpack_shift_reg_reg_n_0_[29] ),
        .I1(\out_data_reg[15]_i_37_n_0 ),
        .I2(\unpack_bits_left_reg_n_0_[2] ),
        .I3(\unpack_bits_left_reg_n_0_[0] ),
        .I4(\unpack_bits_left_reg_n_0_[1] ),
        .I5(\unpack_bits_left_reg_n_0_[3] ),
        .O(\out_data_reg[15]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h0000B00000008000)) 
    \out_data_reg[15]_i_22 
       (.I0(\unpack_shift_reg_reg_n_0_[26] ),
        .I1(\unpack_bits_left_reg_n_0_[3] ),
        .I2(\unpack_bits_left_reg_n_0_[1] ),
        .I3(\unpack_bits_left_reg_n_0_[0] ),
        .I4(\unpack_bits_left_reg_n_0_[2] ),
        .I5(\unpack_shift_reg_reg_n_0_[18] ),
        .O(\out_data_reg[15]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEEEEEEE)) 
    \out_data_reg[15]_i_23 
       (.I0(\out_data_reg[15]_i_38_n_0 ),
        .I1(\out_data_reg[15]_i_39_n_0 ),
        .I2(\unpack_shift_reg_reg_n_0_[31] ),
        .I3(\out_data_reg[15]_i_40_n_0 ),
        .I4(\out_data_reg[15]_i_19_n_0 ),
        .I5(\out_data_reg[15]_i_41_n_0 ),
        .O(\out_data_reg[15]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h00A0000CC0C0C000)) 
    \out_data_reg[15]_i_24 
       (.I0(\unpack_shift_reg_reg_n_0_[13] ),
        .I1(\out_data_reg[15]_i_42_n_0 ),
        .I2(\unpack_bits_left_reg_n_0_[2] ),
        .I3(\unpack_bits_left_reg_n_0_[0] ),
        .I4(\unpack_bits_left_reg_n_0_[1] ),
        .I5(\unpack_bits_left_reg_n_0_[3] ),
        .O(\out_data_reg[15]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h0000B00000008000)) 
    \out_data_reg[15]_i_25 
       (.I0(\unpack_shift_reg_reg_n_0_[10] ),
        .I1(\unpack_bits_left_reg_n_0_[3] ),
        .I2(\unpack_bits_left_reg_n_0_[1] ),
        .I3(\unpack_bits_left_reg_n_0_[0] ),
        .I4(\unpack_bits_left_reg_n_0_[2] ),
        .I5(\unpack_shift_reg_reg_n_0_[2] ),
        .O(\out_data_reg[15]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEEEEEEE)) 
    \out_data_reg[15]_i_26 
       (.I0(\out_data_reg[15]_i_43_n_0 ),
        .I1(\out_data_reg[15]_i_44_n_0 ),
        .I2(\unpack_shift_reg_reg_n_0_[15] ),
        .I3(\out_data_reg[15]_i_40_n_0 ),
        .I4(\out_data_reg[15]_i_19_n_0 ),
        .I5(\out_data_reg[15]_i_45_n_0 ),
        .O(\out_data_reg[15]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h000F000F000F111F)) 
    \out_data_reg[15]_i_27 
       (.I0(\last_left_lbl_reg_n_0_[7] ),
        .I1(\last_left_lbl_reg_n_0_[6] ),
        .I2(\out_data_reg[15]_i_46_n_0 ),
        .I3(\out_data_reg[15]_i_15_n_0 ),
        .I4(\last_left_lbl_reg_n_0_[4] ),
        .I5(\last_left_lbl_reg_n_0_[5] ),
        .O(\out_data_reg[15]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h000F000F000F111F)) 
    \out_data_reg[15]_i_28 
       (.I0(\last_left_lbl_reg_n_0_[0] ),
        .I1(\last_left_lbl_reg_n_0_[1] ),
        .I2(\out_data_reg[15]_i_46_n_0 ),
        .I3(\out_data_reg[15]_i_15_n_0 ),
        .I4(\last_left_lbl_reg_n_0_[3] ),
        .I5(\last_left_lbl_reg_n_0_[2] ),
        .O(\out_data_reg[15]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h000F000F000F111F)) 
    \out_data_reg[15]_i_29 
       (.I0(\last_left_lbl_reg_n_0_[11] ),
        .I1(\last_left_lbl_reg_n_0_[10] ),
        .I2(\out_data_reg[15]_i_46_n_0 ),
        .I3(\out_data_reg[15]_i_15_n_0 ),
        .I4(\last_left_lbl_reg_n_0_[9] ),
        .I5(\last_left_lbl_reg_n_0_[8] ),
        .O(\out_data_reg[15]_i_29_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \out_data_reg[15]_i_3 
       (.I0(local_label_counter117_in),
        .I1(\out_data_reg[15]_i_14_n_0 ),
        .O(local_label_counter0__0));
  LUT6 #(
    .INIT(64'h000F000F000F111F)) 
    \out_data_reg[15]_i_30 
       (.I0(\last_left_lbl_reg_n_0_[14] ),
        .I1(\last_left_lbl_reg_n_0_[15] ),
        .I2(\out_data_reg[15]_i_46_n_0 ),
        .I3(\out_data_reg[15]_i_15_n_0 ),
        .I4(\last_left_lbl_reg_n_0_[12] ),
        .I5(\last_left_lbl_reg_n_0_[13] ),
        .O(\out_data_reg[15]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h00FFFFFF00B8B8B8)) 
    \out_data_reg[15]_i_31 
       (.I0(line_prev_reg_256_511_2_2_n_0),
        .I1(\pixel_x_reg_n_0_[8] ),
        .I2(line_prev_reg_0_255_2_2_n_0),
        .I3(\out_data_reg[15]_i_17_n_0 ),
        .I4(\out_data_reg[15]_i_16_n_0 ),
        .I5(lbl_up0[3]),
        .O(\out_data_reg[15]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h00FFFFFF00B8B8B8)) 
    \out_data_reg[15]_i_32 
       (.I0(line_prev_reg_256_511_0_0_n_0),
        .I1(\pixel_x_reg_n_0_[8] ),
        .I2(line_prev_reg_0_255_0_0_n_0),
        .I3(\out_data_reg[15]_i_17_n_0 ),
        .I4(\out_data_reg[15]_i_16_n_0 ),
        .I5(lbl_up0[1]),
        .O(\out_data_reg[15]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h00FFFFFF00B8B8B8)) 
    \out_data_reg[15]_i_33 
       (.I0(line_prev_reg_256_511_6_6_n_0),
        .I1(\pixel_x_reg_n_0_[8] ),
        .I2(line_prev_reg_0_255_6_6_n_0),
        .I3(\out_data_reg[15]_i_17_n_0 ),
        .I4(\out_data_reg[15]_i_16_n_0 ),
        .I5(lbl_up0[7]),
        .O(\out_data_reg[15]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h00FFFFFF00B8B8B8)) 
    \out_data_reg[15]_i_34 
       (.I0(line_prev_reg_256_511_4_4_n_0),
        .I1(\pixel_x_reg_n_0_[8] ),
        .I2(line_prev_reg_0_255_4_4_n_0),
        .I3(\out_data_reg[15]_i_17_n_0 ),
        .I4(\out_data_reg[15]_i_16_n_0 ),
        .I5(lbl_up0[5]),
        .O(\out_data_reg[15]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h00FFFFFF00FEFEFE)) 
    \out_data_reg[15]_i_35 
       (.I0(lbl_up0[14]),
        .I1(lbl_up0[15]),
        .I2(lbl_up0[13]),
        .I3(\out_data_reg[15]_i_16_n_0 ),
        .I4(\out_data_reg[15]_i_17_n_0 ),
        .I5(lbl_up0[12]),
        .O(\out_data_reg[15]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h00FFFFFF00FEFEFE)) 
    \out_data_reg[15]_i_36 
       (.I0(lbl_up0[9]),
        .I1(lbl_up0[8]),
        .I2(lbl_up0[11]),
        .I3(\out_data_reg[15]_i_16_n_0 ),
        .I4(\out_data_reg[15]_i_17_n_0 ),
        .I5(lbl_up0[10]),
        .O(\out_data_reg[15]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFC0AFCFA0C0A0)) 
    \out_data_reg[15]_i_37 
       (.I0(\unpack_shift_reg_reg_n_0_[20] ),
        .I1(\unpack_shift_reg_reg_n_0_[22] ),
        .I2(\unpack_bits_left_reg_n_0_[0] ),
        .I3(\unpack_bits_left_reg_n_0_[1] ),
        .I4(\unpack_shift_reg_reg_n_0_[21] ),
        .I5(\unpack_shift_reg_reg_n_0_[23] ),
        .O(\out_data_reg[15]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h000B000000080000)) 
    \out_data_reg[15]_i_38 
       (.I0(\unpack_shift_reg_reg_n_0_[27] ),
        .I1(\unpack_bits_left_reg_n_0_[3] ),
        .I2(\unpack_bits_left_reg_n_0_[1] ),
        .I3(\unpack_bits_left_reg_n_0_[0] ),
        .I4(\unpack_bits_left_reg_n_0_[2] ),
        .I5(\unpack_shift_reg_reg_n_0_[19] ),
        .O(\out_data_reg[15]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h00000B0000000800)) 
    \out_data_reg[15]_i_39 
       (.I0(\unpack_shift_reg_reg_n_0_[24] ),
        .I1(\unpack_bits_left_reg_n_0_[3] ),
        .I2(\unpack_bits_left_reg_n_0_[1] ),
        .I3(\unpack_bits_left_reg_n_0_[0] ),
        .I4(\unpack_bits_left_reg_n_0_[2] ),
        .I5(\unpack_shift_reg_reg_n_0_[16] ),
        .O(\out_data_reg[15]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \out_data_reg[15]_i_4 
       (.I0(\pixel_x_reg_n_0_[1] ),
        .I1(\pixel_x_reg_n_0_[0] ),
        .I2(\pixel_x_reg_n_0_[2] ),
        .I3(\pixel_x_reg_n_0_[9] ),
        .I4(\out_data_reg[15]_i_15_n_0 ),
        .I5(\last_left_lbl_reg_n_0_[15] ),
        .O(lbl_left));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \out_data_reg[15]_i_40 
       (.I0(\unpack_bits_left_reg_n_0_[1] ),
        .I1(\unpack_bits_left_reg_n_0_[0] ),
        .O(\out_data_reg[15]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h000000B000000080)) 
    \out_data_reg[15]_i_41 
       (.I0(\unpack_shift_reg_reg_n_0_[25] ),
        .I1(\unpack_bits_left_reg_n_0_[3] ),
        .I2(\unpack_bits_left_reg_n_0_[1] ),
        .I3(\unpack_bits_left_reg_n_0_[0] ),
        .I4(\unpack_bits_left_reg_n_0_[2] ),
        .I5(\unpack_shift_reg_reg_n_0_[17] ),
        .O(\out_data_reg[15]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFC0AFCFA0C0A0)) 
    \out_data_reg[15]_i_42 
       (.I0(\unpack_shift_reg_reg_n_0_[4] ),
        .I1(\unpack_shift_reg_reg_n_0_[6] ),
        .I2(\unpack_bits_left_reg_n_0_[0] ),
        .I3(\unpack_bits_left_reg_n_0_[1] ),
        .I4(\unpack_shift_reg_reg_n_0_[5] ),
        .I5(\unpack_shift_reg_reg_n_0_[7] ),
        .O(\out_data_reg[15]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h000B000000080000)) 
    \out_data_reg[15]_i_43 
       (.I0(\unpack_shift_reg_reg_n_0_[11] ),
        .I1(\unpack_bits_left_reg_n_0_[3] ),
        .I2(\unpack_bits_left_reg_n_0_[1] ),
        .I3(\unpack_bits_left_reg_n_0_[0] ),
        .I4(\unpack_bits_left_reg_n_0_[2] ),
        .I5(\unpack_shift_reg_reg_n_0_[3] ),
        .O(\out_data_reg[15]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h00000B0000000800)) 
    \out_data_reg[15]_i_44 
       (.I0(\unpack_shift_reg_reg_n_0_[8] ),
        .I1(\unpack_bits_left_reg_n_0_[3] ),
        .I2(\unpack_bits_left_reg_n_0_[1] ),
        .I3(\unpack_bits_left_reg_n_0_[0] ),
        .I4(\unpack_bits_left_reg_n_0_[2] ),
        .I5(\unpack_shift_reg_reg_n_0_[0] ),
        .O(\out_data_reg[15]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h000000B000000080)) 
    \out_data_reg[15]_i_45 
       (.I0(\unpack_shift_reg_reg_n_0_[9] ),
        .I1(\unpack_bits_left_reg_n_0_[3] ),
        .I2(\unpack_bits_left_reg_n_0_[1] ),
        .I3(\unpack_bits_left_reg_n_0_[0] ),
        .I4(\unpack_bits_left_reg_n_0_[2] ),
        .I5(\unpack_shift_reg_reg_n_0_[1] ),
        .O(\out_data_reg[15]_i_45_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \out_data_reg[15]_i_46 
       (.I0(\pixel_x_reg_n_0_[1] ),
        .I1(\pixel_x_reg_n_0_[0] ),
        .I2(\pixel_x_reg_n_0_[2] ),
        .I3(\pixel_x_reg_n_0_[9] ),
        .O(\out_data_reg[15]_i_46_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out_data_reg[15]_i_47 
       (.I0(line_prev_reg_256_511_3_3_n_0),
        .I1(\pixel_x_reg_n_0_[8] ),
        .I2(line_prev_reg_0_255_3_3_n_0),
        .O(lbl_up0[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out_data_reg[15]_i_48 
       (.I0(line_prev_reg_256_511_1_1_n_0),
        .I1(\pixel_x_reg_n_0_[8] ),
        .I2(line_prev_reg_0_255_1_1_n_0),
        .O(lbl_up0[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out_data_reg[15]_i_49 
       (.I0(line_prev_reg_256_511_7_7_n_0),
        .I1(\pixel_x_reg_n_0_[8] ),
        .I2(line_prev_reg_0_255_7_7_n_0),
        .O(lbl_up0[7]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00E2E2E2)) 
    \out_data_reg[15]_i_5 
       (.I0(line_prev_reg_0_255_15_15_n_0),
        .I1(\pixel_x_reg_n_0_[8] ),
        .I2(line_prev_reg_256_511_15_15_n_0),
        .I3(\out_data_reg[15]_i_16_n_0 ),
        .I4(\out_data_reg[15]_i_17_n_0 ),
        .O(\out_data_reg[15]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out_data_reg[15]_i_50 
       (.I0(line_prev_reg_256_511_5_5_n_0),
        .I1(\pixel_x_reg_n_0_[8] ),
        .I2(line_prev_reg_0_255_5_5_n_0),
        .O(lbl_up0[5]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out_data_reg[15]_i_51 
       (.I0(line_prev_reg_256_511_14_14_n_0),
        .I1(\pixel_x_reg_n_0_[8] ),
        .I2(line_prev_reg_0_255_14_14_n_0),
        .O(lbl_up0[14]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out_data_reg[15]_i_52 
       (.I0(line_prev_reg_256_511_15_15_n_0),
        .I1(\pixel_x_reg_n_0_[8] ),
        .I2(line_prev_reg_0_255_15_15_n_0),
        .O(lbl_up0[15]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out_data_reg[15]_i_53 
       (.I0(line_prev_reg_256_511_13_13_n_0),
        .I1(\pixel_x_reg_n_0_[8] ),
        .I2(line_prev_reg_0_255_13_13_n_0),
        .O(lbl_up0[13]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out_data_reg[15]_i_54 
       (.I0(line_prev_reg_256_511_12_12_n_0),
        .I1(\pixel_x_reg_n_0_[8] ),
        .I2(line_prev_reg_0_255_12_12_n_0),
        .O(lbl_up0[12]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out_data_reg[15]_i_55 
       (.I0(line_prev_reg_256_511_9_9_n_0),
        .I1(\pixel_x_reg_n_0_[8] ),
        .I2(line_prev_reg_0_255_9_9_n_0),
        .O(lbl_up0[9]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out_data_reg[15]_i_56 
       (.I0(line_prev_reg_256_511_8_8_n_0),
        .I1(\pixel_x_reg_n_0_[8] ),
        .I2(line_prev_reg_0_255_8_8_n_0),
        .O(lbl_up0[8]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out_data_reg[15]_i_57 
       (.I0(line_prev_reg_256_511_11_11_n_0),
        .I1(\pixel_x_reg_n_0_[8] ),
        .I2(line_prev_reg_0_255_11_11_n_0),
        .O(lbl_up0[11]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out_data_reg[15]_i_58 
       (.I0(line_prev_reg_256_511_10_10_n_0),
        .I1(\pixel_x_reg_n_0_[8] ),
        .I2(line_prev_reg_0_255_10_10_n_0),
        .O(lbl_up0[10]));
  LUT5 #(
    .INIT(32'h8A8A8FFF)) 
    \out_data_reg[15]_i_6 
       (.I0(lbl_new219_in),
        .I1(lbl_new3_carry__0_n_2),
        .I2(\out_data_reg[15]_i_14_n_0 ),
        .I3(local_label_counter117_in),
        .I4(lo_lbl1_carry__0_n_0),
        .O(\out_data_reg[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF80)) 
    \out_data_reg[15]_i_7 
       (.I0(\out_data_reg[15]_i_19_n_0 ),
        .I1(\out_data_reg[15]_i_20_n_0 ),
        .I2(\unpack_shift_reg_reg_n_0_[28] ),
        .I3(\out_data_reg[15]_i_21_n_0 ),
        .I4(\out_data_reg[15]_i_22_n_0 ),
        .I5(\out_data_reg[15]_i_23_n_0 ),
        .O(\out_data_reg[15]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \out_data_reg[15]_i_8 
       (.I0(\unpack_shift_reg_reg_n_0_[30] ),
        .I1(\unpack_bits_left_reg_n_0_[2] ),
        .I2(\unpack_bits_left_reg_n_0_[0] ),
        .I3(\unpack_bits_left_reg_n_0_[1] ),
        .I4(\unpack_bits_left_reg_n_0_[3] ),
        .O(\out_data_reg[15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF80)) 
    \out_data_reg[15]_i_9 
       (.I0(\out_data_reg[15]_i_19_n_0 ),
        .I1(\out_data_reg[15]_i_20_n_0 ),
        .I2(\unpack_shift_reg_reg_n_0_[12] ),
        .I3(\out_data_reg[15]_i_24_n_0 ),
        .I4(\out_data_reg[15]_i_25_n_0 ),
        .I5(\out_data_reg[15]_i_26_n_0 ),
        .O(\out_data_reg[15]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \out_data_reg[17]_i_1 
       (.I0(aclkrst_n),
        .O(\out_data_reg[17]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \out_data_reg[17]_i_2 
       (.I0(\out_data_reg[17]_i_3_n_0 ),
        .I1(proc_state[1]),
        .O(out_data_reg));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \out_data_reg[17]_i_3 
       (.I0(proc_state[0]),
        .I1(proc_state116_out),
        .O(\out_data_reg[17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8A808A808A8A8080)) 
    \out_data_reg[1]_i_1 
       (.I0(local_label_counter1__14),
        .I1(in19[1]),
        .I2(local_label_counter0__0),
        .I3(lbl_left__123[1]),
        .I4(\out_data_reg[1]_i_3_n_0 ),
        .I5(\out_data_reg[15]_i_6_n_0 ),
        .O(lbl_new[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \out_data_reg[1]_i_2 
       (.I0(\pixel_x_reg_n_0_[1] ),
        .I1(\pixel_x_reg_n_0_[0] ),
        .I2(\pixel_x_reg_n_0_[2] ),
        .I3(\pixel_x_reg_n_0_[9] ),
        .I4(\out_data_reg[15]_i_15_n_0 ),
        .I5(\last_left_lbl_reg_n_0_[1] ),
        .O(lbl_left__123[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00E2E2E2)) 
    \out_data_reg[1]_i_3 
       (.I0(line_prev_reg_0_255_1_1_n_0),
        .I1(\pixel_x_reg_n_0_[8] ),
        .I2(line_prev_reg_256_511_1_1_n_0),
        .I3(\out_data_reg[15]_i_16_n_0 ),
        .I4(\out_data_reg[15]_i_17_n_0 ),
        .O(\out_data_reg[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8A808A808A8A8080)) 
    \out_data_reg[2]_i_1 
       (.I0(local_label_counter1__14),
        .I1(in19[2]),
        .I2(local_label_counter0__0),
        .I3(lbl_left__123[2]),
        .I4(\out_data_reg[2]_i_3_n_0 ),
        .I5(\out_data_reg[15]_i_6_n_0 ),
        .O(lbl_new[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \out_data_reg[2]_i_2 
       (.I0(\pixel_x_reg_n_0_[1] ),
        .I1(\pixel_x_reg_n_0_[0] ),
        .I2(\pixel_x_reg_n_0_[2] ),
        .I3(\pixel_x_reg_n_0_[9] ),
        .I4(\out_data_reg[15]_i_15_n_0 ),
        .I5(\last_left_lbl_reg_n_0_[2] ),
        .O(lbl_left__123[2]));
  LUT5 #(
    .INIT(32'h00E2E2E2)) 
    \out_data_reg[2]_i_3 
       (.I0(line_prev_reg_0_255_2_2_n_0),
        .I1(\pixel_x_reg_n_0_[8] ),
        .I2(line_prev_reg_256_511_2_2_n_0),
        .I3(\out_data_reg[15]_i_16_n_0 ),
        .I4(\out_data_reg[15]_i_17_n_0 ),
        .O(\out_data_reg[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8A808A808A8A8080)) 
    \out_data_reg[3]_i_1 
       (.I0(local_label_counter1__14),
        .I1(in19[3]),
        .I2(local_label_counter0__0),
        .I3(lbl_left__123[3]),
        .I4(\out_data_reg[3]_i_3_n_0 ),
        .I5(\out_data_reg[15]_i_6_n_0 ),
        .O(lbl_new[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \out_data_reg[3]_i_2 
       (.I0(\pixel_x_reg_n_0_[1] ),
        .I1(\pixel_x_reg_n_0_[0] ),
        .I2(\pixel_x_reg_n_0_[2] ),
        .I3(\pixel_x_reg_n_0_[9] ),
        .I4(\out_data_reg[15]_i_15_n_0 ),
        .I5(\last_left_lbl_reg_n_0_[3] ),
        .O(lbl_left__123[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00E2E2E2)) 
    \out_data_reg[3]_i_3 
       (.I0(line_prev_reg_0_255_3_3_n_0),
        .I1(\pixel_x_reg_n_0_[8] ),
        .I2(line_prev_reg_256_511_3_3_n_0),
        .I3(\out_data_reg[15]_i_16_n_0 ),
        .I4(\out_data_reg[15]_i_17_n_0 ),
        .O(\out_data_reg[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8A808A808A8A8080)) 
    \out_data_reg[4]_i_1 
       (.I0(local_label_counter1__14),
        .I1(in19[4]),
        .I2(local_label_counter0__0),
        .I3(lbl_left__123[4]),
        .I4(\out_data_reg[4]_i_3_n_0 ),
        .I5(\out_data_reg[15]_i_6_n_0 ),
        .O(lbl_new[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \out_data_reg[4]_i_2 
       (.I0(\pixel_x_reg_n_0_[1] ),
        .I1(\pixel_x_reg_n_0_[0] ),
        .I2(\pixel_x_reg_n_0_[2] ),
        .I3(\pixel_x_reg_n_0_[9] ),
        .I4(\out_data_reg[15]_i_15_n_0 ),
        .I5(\last_left_lbl_reg_n_0_[4] ),
        .O(lbl_left__123[4]));
  LUT5 #(
    .INIT(32'h00E2E2E2)) 
    \out_data_reg[4]_i_3 
       (.I0(line_prev_reg_0_255_4_4_n_0),
        .I1(\pixel_x_reg_n_0_[8] ),
        .I2(line_prev_reg_256_511_4_4_n_0),
        .I3(\out_data_reg[15]_i_16_n_0 ),
        .I4(\out_data_reg[15]_i_17_n_0 ),
        .O(\out_data_reg[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8A808A808A8A8080)) 
    \out_data_reg[5]_i_1 
       (.I0(local_label_counter1__14),
        .I1(in19[5]),
        .I2(local_label_counter0__0),
        .I3(lbl_left__123[5]),
        .I4(\out_data_reg[5]_i_3_n_0 ),
        .I5(\out_data_reg[15]_i_6_n_0 ),
        .O(lbl_new[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \out_data_reg[5]_i_2 
       (.I0(\pixel_x_reg_n_0_[1] ),
        .I1(\pixel_x_reg_n_0_[0] ),
        .I2(\pixel_x_reg_n_0_[2] ),
        .I3(\pixel_x_reg_n_0_[9] ),
        .I4(\out_data_reg[15]_i_15_n_0 ),
        .I5(\last_left_lbl_reg_n_0_[5] ),
        .O(lbl_left__123[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00E2E2E2)) 
    \out_data_reg[5]_i_3 
       (.I0(line_prev_reg_0_255_5_5_n_0),
        .I1(\pixel_x_reg_n_0_[8] ),
        .I2(line_prev_reg_256_511_5_5_n_0),
        .I3(\out_data_reg[15]_i_16_n_0 ),
        .I4(\out_data_reg[15]_i_17_n_0 ),
        .O(\out_data_reg[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8A808A808A8A8080)) 
    \out_data_reg[6]_i_1 
       (.I0(local_label_counter1__14),
        .I1(in19[6]),
        .I2(local_label_counter0__0),
        .I3(lbl_left__123[6]),
        .I4(\out_data_reg[6]_i_3_n_0 ),
        .I5(\out_data_reg[15]_i_6_n_0 ),
        .O(lbl_new[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \out_data_reg[6]_i_2 
       (.I0(\pixel_x_reg_n_0_[1] ),
        .I1(\pixel_x_reg_n_0_[0] ),
        .I2(\pixel_x_reg_n_0_[2] ),
        .I3(\pixel_x_reg_n_0_[9] ),
        .I4(\out_data_reg[15]_i_15_n_0 ),
        .I5(\last_left_lbl_reg_n_0_[6] ),
        .O(lbl_left__123[6]));
  LUT5 #(
    .INIT(32'h00E2E2E2)) 
    \out_data_reg[6]_i_3 
       (.I0(line_prev_reg_0_255_6_6_n_0),
        .I1(\pixel_x_reg_n_0_[8] ),
        .I2(line_prev_reg_256_511_6_6_n_0),
        .I3(\out_data_reg[15]_i_16_n_0 ),
        .I4(\out_data_reg[15]_i_17_n_0 ),
        .O(\out_data_reg[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8A808A808A8A8080)) 
    \out_data_reg[7]_i_1 
       (.I0(local_label_counter1__14),
        .I1(in19[7]),
        .I2(local_label_counter0__0),
        .I3(lbl_left__123[7]),
        .I4(\out_data_reg[7]_i_3_n_0 ),
        .I5(\out_data_reg[15]_i_6_n_0 ),
        .O(lbl_new[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \out_data_reg[7]_i_2 
       (.I0(\pixel_x_reg_n_0_[1] ),
        .I1(\pixel_x_reg_n_0_[0] ),
        .I2(\pixel_x_reg_n_0_[2] ),
        .I3(\pixel_x_reg_n_0_[9] ),
        .I4(\out_data_reg[15]_i_15_n_0 ),
        .I5(\last_left_lbl_reg_n_0_[7] ),
        .O(lbl_left__123[7]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00E2E2E2)) 
    \out_data_reg[7]_i_3 
       (.I0(line_prev_reg_0_255_7_7_n_0),
        .I1(\pixel_x_reg_n_0_[8] ),
        .I2(line_prev_reg_256_511_7_7_n_0),
        .I3(\out_data_reg[15]_i_16_n_0 ),
        .I4(\out_data_reg[15]_i_17_n_0 ),
        .O(\out_data_reg[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8A808A808A8A8080)) 
    \out_data_reg[8]_i_1 
       (.I0(local_label_counter1__14),
        .I1(in19[8]),
        .I2(local_label_counter0__0),
        .I3(lbl_left__123[8]),
        .I4(\out_data_reg[8]_i_3_n_0 ),
        .I5(\out_data_reg[15]_i_6_n_0 ),
        .O(lbl_new[8]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \out_data_reg[8]_i_2 
       (.I0(\pixel_x_reg_n_0_[1] ),
        .I1(\pixel_x_reg_n_0_[0] ),
        .I2(\pixel_x_reg_n_0_[2] ),
        .I3(\pixel_x_reg_n_0_[9] ),
        .I4(\out_data_reg[15]_i_15_n_0 ),
        .I5(\last_left_lbl_reg_n_0_[8] ),
        .O(lbl_left__123[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00E2E2E2)) 
    \out_data_reg[8]_i_3 
       (.I0(line_prev_reg_0_255_8_8_n_0),
        .I1(\pixel_x_reg_n_0_[8] ),
        .I2(line_prev_reg_256_511_8_8_n_0),
        .I3(\out_data_reg[15]_i_16_n_0 ),
        .I4(\out_data_reg[15]_i_17_n_0 ),
        .O(\out_data_reg[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8A808A808A8A8080)) 
    \out_data_reg[9]_i_1 
       (.I0(local_label_counter1__14),
        .I1(in19[9]),
        .I2(local_label_counter0__0),
        .I3(lbl_left__123[9]),
        .I4(\out_data_reg[9]_i_3_n_0 ),
        .I5(\out_data_reg[15]_i_6_n_0 ),
        .O(lbl_new[9]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \out_data_reg[9]_i_2 
       (.I0(\pixel_x_reg_n_0_[1] ),
        .I1(\pixel_x_reg_n_0_[0] ),
        .I2(\pixel_x_reg_n_0_[2] ),
        .I3(\pixel_x_reg_n_0_[9] ),
        .I4(\out_data_reg[15]_i_15_n_0 ),
        .I5(\last_left_lbl_reg_n_0_[9] ),
        .O(lbl_left__123[9]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00E2E2E2)) 
    \out_data_reg[9]_i_3 
       (.I0(line_prev_reg_0_255_9_9_n_0),
        .I1(\pixel_x_reg_n_0_[8] ),
        .I2(line_prev_reg_256_511_9_9_n_0),
        .I3(\out_data_reg[15]_i_16_n_0 ),
        .I4(\out_data_reg[15]_i_17_n_0 ),
        .O(\out_data_reg[9]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg_reg[0] 
       (.C(aclkrst_clk),
        .CE(out_data_reg),
        .D(lbl_new[0]),
        .Q(m_axis_tdata[0]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg_reg[10] 
       (.C(aclkrst_clk),
        .CE(out_data_reg),
        .D(lbl_new[10]),
        .Q(m_axis_tdata[10]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg_reg[11] 
       (.C(aclkrst_clk),
        .CE(out_data_reg),
        .D(lbl_new[11]),
        .Q(m_axis_tdata[11]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg_reg[12] 
       (.C(aclkrst_clk),
        .CE(out_data_reg),
        .D(lbl_new[12]),
        .Q(m_axis_tdata[12]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg_reg[13] 
       (.C(aclkrst_clk),
        .CE(out_data_reg),
        .D(lbl_new[13]),
        .Q(m_axis_tdata[13]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg_reg[14] 
       (.C(aclkrst_clk),
        .CE(out_data_reg),
        .D(lbl_new[14]),
        .Q(m_axis_tdata[14]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg_reg[15] 
       (.C(aclkrst_clk),
        .CE(out_data_reg),
        .D(lbl_new[15]),
        .Q(m_axis_tdata[15]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg_reg[16] 
       (.C(aclkrst_clk),
        .CE(out_data_reg),
        .D(\reg_slice_id_reg_n_0_[0] ),
        .Q(m_axis_tdata[16]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg_reg[17] 
       (.C(aclkrst_clk),
        .CE(out_data_reg),
        .D(\reg_slice_id_reg_n_0_[1] ),
        .Q(m_axis_tdata[17]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg_reg[1] 
       (.C(aclkrst_clk),
        .CE(out_data_reg),
        .D(lbl_new[1]),
        .Q(m_axis_tdata[1]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg_reg[2] 
       (.C(aclkrst_clk),
        .CE(out_data_reg),
        .D(lbl_new[2]),
        .Q(m_axis_tdata[2]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg_reg[3] 
       (.C(aclkrst_clk),
        .CE(out_data_reg),
        .D(lbl_new[3]),
        .Q(m_axis_tdata[3]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg_reg[4] 
       (.C(aclkrst_clk),
        .CE(out_data_reg),
        .D(lbl_new[4]),
        .Q(m_axis_tdata[4]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg_reg[5] 
       (.C(aclkrst_clk),
        .CE(out_data_reg),
        .D(lbl_new[5]),
        .Q(m_axis_tdata[5]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg_reg[6] 
       (.C(aclkrst_clk),
        .CE(out_data_reg),
        .D(lbl_new[6]),
        .Q(m_axis_tdata[6]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg_reg[7] 
       (.C(aclkrst_clk),
        .CE(out_data_reg),
        .D(lbl_new[7]),
        .Q(m_axis_tdata[7]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg_reg[8] 
       (.C(aclkrst_clk),
        .CE(out_data_reg),
        .D(lbl_new[8]),
        .Q(m_axis_tdata[8]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg_reg[9] 
       (.C(aclkrst_clk),
        .CE(out_data_reg),
        .D(lbl_new[9]),
        .Q(m_axis_tdata[9]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88880088FC00F000)) 
    out_last_reg_i_1
       (.I0(proc_state0),
        .I1(proc_state[0]),
        .I2(proc_state[1]),
        .I3(m_axis_tlast),
        .I4(out_last_reg_i_2_n_0),
        .I5(out_last_reg_i_3_n_0),
        .O(out_last_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h7)) 
    out_last_reg_i_2
       (.I0(m_axis_tready),
        .I1(out_valid_reg_reg_0),
        .O(out_last_reg_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    out_last_reg_i_3
       (.I0(proc_state[1]),
        .I1(proc_state0),
        .I2(proc_state1_5),
        .I3(proc_state116_out),
        .O(out_last_reg_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    out_last_reg_reg
       (.C(aclkrst_clk),
        .CE(1'b1),
        .D(out_last_reg_i_1_n_0),
        .Q(m_axis_tlast),
        .R(\out_data_reg[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'hCC70CC40)) 
    out_valid_reg_i_1
       (.I0(m_axis_tready),
        .I1(out_valid_reg_reg_0),
        .I2(proc_state[0]),
        .I3(proc_state[1]),
        .I4(proc_state116_out),
        .O(out_valid_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    out_valid_reg_i_2
       (.I0(s_axis_tready_INST_0_i_1_n_0),
        .I1(out_valid_reg_reg_0),
        .O(proc_state116_out));
  FDRE #(
    .INIT(1'b0)) 
    out_valid_reg_reg
       (.C(aclkrst_clk),
        .CE(1'b1),
        .D(out_valid_reg_i_1_n_0),
        .Q(out_valid_reg_reg_0),
        .R(\out_data_reg[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \pixel_x[0]_i_1 
       (.I0(proc_state1_5),
        .I1(proc_state[0]),
        .I2(\pixel_x_reg_n_0_[0] ),
        .O(\pixel_x[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h0220)) 
    \pixel_x[1]_i_1 
       (.I0(proc_state[0]),
        .I1(proc_state1_5),
        .I2(\pixel_x_reg_n_0_[0] ),
        .I3(\pixel_x_reg_n_0_[1] ),
        .O(\pixel_x[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h07000800)) 
    \pixel_x[2]_i_1 
       (.I0(\pixel_x_reg_n_0_[0] ),
        .I1(\pixel_x_reg_n_0_[1] ),
        .I2(proc_state1_5),
        .I3(proc_state[0]),
        .I4(\pixel_x_reg_n_0_[2] ),
        .O(\pixel_x[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h007F000000800000)) 
    \pixel_x[3]_i_1 
       (.I0(\pixel_x_reg_n_0_[2] ),
        .I1(\pixel_x_reg_n_0_[1] ),
        .I2(\pixel_x_reg_n_0_[0] ),
        .I3(proc_state1_5),
        .I4(proc_state[0]),
        .I5(\pixel_x_reg_n_0_[3] ),
        .O(\pixel_x[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \pixel_x[4]_i_1 
       (.I0(\pixel_x_reg_n_0_[0] ),
        .I1(\pixel_x_reg_n_0_[1] ),
        .I2(\pixel_x_reg_n_0_[2] ),
        .I3(\pixel_x_reg_n_0_[3] ),
        .I4(\pixel_x[9]_i_4_n_0 ),
        .I5(\pixel_x_reg_n_0_[4] ),
        .O(\pixel_x[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h1020)) 
    \pixel_x[5]_i_1 
       (.I0(\pixel_x[5]_i_2_n_0 ),
        .I1(proc_state1_5),
        .I2(proc_state[0]),
        .I3(\pixel_x_reg_n_0_[5] ),
        .O(\pixel_x[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \pixel_x[5]_i_2 
       (.I0(\pixel_x_reg_n_0_[4] ),
        .I1(\pixel_x_reg_n_0_[3] ),
        .I2(\pixel_x_reg_n_0_[2] ),
        .I3(\pixel_x_reg_n_0_[1] ),
        .I4(\pixel_x_reg_n_0_[0] ),
        .O(\pixel_x[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h2010)) 
    \pixel_x[6]_i_1 
       (.I0(\pixel_x[9]_i_3_n_0 ),
        .I1(proc_state1_5),
        .I2(proc_state[0]),
        .I3(\pixel_x_reg_n_0_[6] ),
        .O(\pixel_x[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h0D000200)) 
    \pixel_x[7]_i_1 
       (.I0(\pixel_x_reg_n_0_[6] ),
        .I1(\pixel_x[9]_i_3_n_0 ),
        .I2(proc_state1_5),
        .I3(proc_state[0]),
        .I4(\pixel_x_reg_n_0_[7] ),
        .O(\pixel_x[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00BF000000400000)) 
    \pixel_x[8]_i_1 
       (.I0(\pixel_x[9]_i_3_n_0 ),
        .I1(\pixel_x_reg_n_0_[6] ),
        .I2(\pixel_x_reg_n_0_[7] ),
        .I3(proc_state1_5),
        .I4(proc_state[0]),
        .I5(\pixel_x_reg_n_0_[8] ),
        .O(\pixel_x[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2232)) 
    \pixel_x[9]_i_1 
       (.I0(\out_data_reg[17]_i_3_n_0 ),
        .I1(proc_state[1]),
        .I2(p_0_in),
        .I3(proc_state[0]),
        .O(pixel_x));
  LUT6 #(
    .INIT(64'hF7FF000008000000)) 
    \pixel_x[9]_i_2 
       (.I0(\pixel_x_reg_n_0_[7] ),
        .I1(\pixel_x_reg_n_0_[6] ),
        .I2(\pixel_x[9]_i_3_n_0 ),
        .I3(\pixel_x_reg_n_0_[8] ),
        .I4(\pixel_x[9]_i_4_n_0 ),
        .I5(\pixel_x_reg_n_0_[9] ),
        .O(\pixel_x[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \pixel_x[9]_i_3 
       (.I0(\pixel_x_reg_n_0_[0] ),
        .I1(\pixel_x_reg_n_0_[1] ),
        .I2(\pixel_x_reg_n_0_[2] ),
        .I3(\pixel_x_reg_n_0_[3] ),
        .I4(\pixel_x_reg_n_0_[4] ),
        .I5(\pixel_x_reg_n_0_[5] ),
        .O(\pixel_x[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \pixel_x[9]_i_4 
       (.I0(proc_state[0]),
        .I1(proc_state1_5),
        .O(\pixel_x[9]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_x_reg[0] 
       (.C(aclkrst_clk),
        .CE(pixel_x),
        .D(\pixel_x[0]_i_1_n_0 ),
        .Q(\pixel_x_reg_n_0_[0] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_x_reg[1] 
       (.C(aclkrst_clk),
        .CE(pixel_x),
        .D(\pixel_x[1]_i_1_n_0 ),
        .Q(\pixel_x_reg_n_0_[1] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_x_reg[2] 
       (.C(aclkrst_clk),
        .CE(pixel_x),
        .D(\pixel_x[2]_i_1_n_0 ),
        .Q(\pixel_x_reg_n_0_[2] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_x_reg[3] 
       (.C(aclkrst_clk),
        .CE(pixel_x),
        .D(\pixel_x[3]_i_1_n_0 ),
        .Q(\pixel_x_reg_n_0_[3] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_x_reg[4] 
       (.C(aclkrst_clk),
        .CE(pixel_x),
        .D(\pixel_x[4]_i_1_n_0 ),
        .Q(\pixel_x_reg_n_0_[4] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_x_reg[5] 
       (.C(aclkrst_clk),
        .CE(pixel_x),
        .D(\pixel_x[5]_i_1_n_0 ),
        .Q(\pixel_x_reg_n_0_[5] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_x_reg[6] 
       (.C(aclkrst_clk),
        .CE(pixel_x),
        .D(\pixel_x[6]_i_1_n_0 ),
        .Q(\pixel_x_reg_n_0_[6] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_x_reg[7] 
       (.C(aclkrst_clk),
        .CE(pixel_x),
        .D(\pixel_x[7]_i_1_n_0 ),
        .Q(\pixel_x_reg_n_0_[7] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_x_reg[8] 
       (.C(aclkrst_clk),
        .CE(pixel_x),
        .D(\pixel_x[8]_i_1_n_0 ),
        .Q(\pixel_x_reg_n_0_[8] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_x_reg[9] 
       (.C(aclkrst_clk),
        .CE(pixel_x),
        .D(\pixel_x[9]_i_2_n_0 ),
        .Q(\pixel_x_reg_n_0_[9] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \pixel_y[0]_i_1 
       (.I0(proc_state0),
        .I1(proc_state[0]),
        .I2(\pixel_y_reg_n_0_[0] ),
        .O(pixel_y[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0220)) 
    \pixel_y[1]_i_1 
       (.I0(proc_state[0]),
        .I1(proc_state0),
        .I2(\pixel_y_reg_n_0_[0] ),
        .I3(\pixel_y_reg_n_0_[1] ),
        .O(pixel_y[1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h07000800)) 
    \pixel_y[2]_i_1 
       (.I0(\pixel_y_reg_n_0_[0] ),
        .I1(\pixel_y_reg_n_0_[1] ),
        .I2(proc_state0),
        .I3(proc_state[0]),
        .I4(\pixel_y_reg_n_0_[2] ),
        .O(pixel_y[2]));
  LUT6 #(
    .INIT(64'h007F000000800000)) 
    \pixel_y[3]_i_1 
       (.I0(\pixel_y_reg_n_0_[2] ),
        .I1(\pixel_y_reg_n_0_[1] ),
        .I2(\pixel_y_reg_n_0_[0] ),
        .I3(proc_state0),
        .I4(proc_state[0]),
        .I5(\pixel_y_reg_n_0_[3] ),
        .O(pixel_y[3]));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \pixel_y[4]_i_1 
       (.I0(\pixel_y_reg_n_0_[0] ),
        .I1(\pixel_y_reg_n_0_[1] ),
        .I2(\pixel_y_reg_n_0_[2] ),
        .I3(\pixel_y_reg_n_0_[3] ),
        .I4(\pixel_y[4]_i_2_n_0 ),
        .I5(\pixel_y_reg_n_0_[4] ),
        .O(pixel_y[4]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \pixel_y[4]_i_2 
       (.I0(proc_state[0]),
        .I1(proc_state0),
        .O(\pixel_y[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h1020)) 
    \pixel_y[5]_i_1 
       (.I0(\pixel_y[5]_i_2_n_0 ),
        .I1(proc_state0),
        .I2(proc_state[0]),
        .I3(\pixel_y_reg_n_0_[5] ),
        .O(pixel_y[5]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \pixel_y[5]_i_2 
       (.I0(\pixel_y_reg_n_0_[4] ),
        .I1(\pixel_y_reg_n_0_[3] ),
        .I2(\pixel_y_reg_n_0_[2] ),
        .I3(\pixel_y_reg_n_0_[1] ),
        .I4(\pixel_y_reg_n_0_[0] ),
        .O(\pixel_y[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h2010)) 
    \pixel_y[6]_i_1 
       (.I0(\pixel_y[7]_i_3_n_0 ),
        .I1(proc_state0),
        .I2(proc_state[0]),
        .I3(\pixel_y_reg_n_0_[6] ),
        .O(pixel_y[6]));
  LUT5 #(
    .INIT(32'h20203320)) 
    \pixel_y[7]_i_1 
       (.I0(\out_data_reg[17]_i_3_n_0 ),
        .I1(proc_state[1]),
        .I2(proc_state1_5),
        .I3(p_0_in),
        .I4(proc_state[0]),
        .O(pixel_y_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h0B000400)) 
    \pixel_y[7]_i_2 
       (.I0(\pixel_y[7]_i_3_n_0 ),
        .I1(\pixel_y_reg_n_0_[6] ),
        .I2(proc_state0),
        .I3(proc_state[0]),
        .I4(\pixel_y_reg_n_0_[7] ),
        .O(pixel_y[7]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \pixel_y[7]_i_3 
       (.I0(\pixel_y_reg_n_0_[0] ),
        .I1(\pixel_y_reg_n_0_[1] ),
        .I2(\pixel_y_reg_n_0_[2] ),
        .I3(\pixel_y_reg_n_0_[3] ),
        .I4(\pixel_y_reg_n_0_[4] ),
        .I5(\pixel_y_reg_n_0_[5] ),
        .O(\pixel_y[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_y_reg[0] 
       (.C(aclkrst_clk),
        .CE(pixel_y_0),
        .D(pixel_y[0]),
        .Q(\pixel_y_reg_n_0_[0] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_y_reg[1] 
       (.C(aclkrst_clk),
        .CE(pixel_y_0),
        .D(pixel_y[1]),
        .Q(\pixel_y_reg_n_0_[1] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_y_reg[2] 
       (.C(aclkrst_clk),
        .CE(pixel_y_0),
        .D(pixel_y[2]),
        .Q(\pixel_y_reg_n_0_[2] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_y_reg[3] 
       (.C(aclkrst_clk),
        .CE(pixel_y_0),
        .D(pixel_y[3]),
        .Q(\pixel_y_reg_n_0_[3] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_y_reg[4] 
       (.C(aclkrst_clk),
        .CE(pixel_y_0),
        .D(pixel_y[4]),
        .Q(\pixel_y_reg_n_0_[4] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_y_reg[5] 
       (.C(aclkrst_clk),
        .CE(pixel_y_0),
        .D(pixel_y[5]),
        .Q(\pixel_y_reg_n_0_[5] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_y_reg[6] 
       (.C(aclkrst_clk),
        .CE(pixel_y_0),
        .D(pixel_y[6]),
        .Q(\pixel_y_reg_n_0_[6] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_y_reg[7] 
       (.C(aclkrst_clk),
        .CE(pixel_y_0),
        .D(pixel_y[7]),
        .Q(\pixel_y_reg_n_0_[7] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry
       (.CI(1'b0),
        .CO({plusOp_carry_n_0,plusOp_carry_n_1,plusOp_carry_n_2,plusOp_carry_n_3}),
        .CYINIT(\local_label_counter_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in19[4:1]),
        .S({\local_label_counter_reg_n_0_[4] ,\local_label_counter_reg_n_0_[3] ,\local_label_counter_reg_n_0_[2] ,\local_label_counter_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CO({plusOp_carry__0_n_0,plusOp_carry__0_n_1,plusOp_carry__0_n_2,plusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in19[8:5]),
        .S({\local_label_counter_reg_n_0_[8] ,\local_label_counter_reg_n_0_[7] ,\local_label_counter_reg_n_0_[6] ,\local_label_counter_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__1
       (.CI(plusOp_carry__0_n_0),
        .CO({plusOp_carry__1_n_0,plusOp_carry__1_n_1,plusOp_carry__1_n_2,plusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in19[12:9]),
        .S({\local_label_counter_reg_n_0_[12] ,\local_label_counter_reg_n_0_[11] ,\local_label_counter_reg_n_0_[10] ,\local_label_counter_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__2
       (.CI(plusOp_carry__1_n_0),
        .CO({NLW_plusOp_carry__2_CO_UNCONNECTED[3:2],plusOp_carry__2_n_2,plusOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_plusOp_carry__2_O_UNCONNECTED[3],in19[15:13]}),
        .S({1'b0,\local_label_counter_reg_n_0_[15] ,\local_label_counter_reg_n_0_[14] ,\local_label_counter_reg_n_0_[13] }));
  CARRY4 proc_state0_carry
       (.CI(1'b0),
        .CO({proc_state0_carry_n_0,proc_state0_carry_n_1,proc_state0_carry_n_2,proc_state0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_proc_state0_carry_O_UNCONNECTED[3:0]),
        .S({proc_state0_carry_i_1_n_0,proc_state0_carry_i_2_n_0,proc_state0_carry_i_3_n_0,proc_state0_carry_i_4_n_0}));
  CARRY4 proc_state0_carry__0
       (.CI(proc_state0_carry_n_0),
        .CO({proc_state0_carry__0_n_0,proc_state0_carry__0_n_1,proc_state0_carry__0_n_2,proc_state0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_proc_state0_carry__0_O_UNCONNECTED[3:0]),
        .S({proc_state0_carry__0_i_1_n_0,proc_state0_carry__0_i_2_n_0,proc_state0_carry__0_i_3_n_0,proc_state0_carry__0_i_4_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    proc_state0_carry__0_i_1
       (.I0(proc_state1[23]),
        .I1(proc_state1[22]),
        .I2(proc_state1[21]),
        .O(proc_state0_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    proc_state0_carry__0_i_2
       (.I0(proc_state1[20]),
        .I1(proc_state1[19]),
        .I2(proc_state1[18]),
        .O(proc_state0_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    proc_state0_carry__0_i_3
       (.I0(proc_state1[17]),
        .I1(proc_state1[16]),
        .I2(proc_state1[15]),
        .O(proc_state0_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    proc_state0_carry__0_i_4
       (.I0(proc_state1[14]),
        .I1(proc_state1[13]),
        .I2(proc_state1[12]),
        .O(proc_state0_carry__0_i_4_n_0));
  CARRY4 proc_state0_carry__1
       (.CI(proc_state0_carry__0_n_0),
        .CO({NLW_proc_state0_carry__1_CO_UNCONNECTED[3],proc_state0,proc_state0_carry__1_n_2,proc_state0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_proc_state0_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,proc_state0_carry__1_i_1_n_0,proc_state0_carry__1_i_2_n_0,proc_state0_carry__1_i_3_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    proc_state0_carry__1_i_1
       (.I0(proc_state1[31]),
        .I1(proc_state1[30]),
        .O(proc_state0_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    proc_state0_carry__1_i_2
       (.I0(proc_state1[29]),
        .I1(proc_state1[28]),
        .I2(proc_state1[27]),
        .O(proc_state0_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    proc_state0_carry__1_i_3
       (.I0(proc_state1[26]),
        .I1(proc_state1[25]),
        .I2(proc_state1[24]),
        .O(proc_state0_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    proc_state0_carry_i_1
       (.I0(proc_state1[11]),
        .I1(proc_state1[10]),
        .I2(proc_state1[9]),
        .O(proc_state0_carry_i_1_n_0));
  LUT5 #(
    .INIT(32'h41000041)) 
    proc_state0_carry_i_2
       (.I0(proc_state1[8]),
        .I1(proc_state1[6]),
        .I2(\pixel_y_reg_n_0_[6] ),
        .I3(\pixel_y_reg_n_0_[7] ),
        .I4(proc_state1[7]),
        .O(proc_state0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    proc_state0_carry_i_3
       (.I0(\pixel_y_reg_n_0_[3] ),
        .I1(proc_state1[3]),
        .I2(proc_state1[5]),
        .I3(\pixel_y_reg_n_0_[5] ),
        .I4(\pixel_y_reg_n_0_[4] ),
        .I5(proc_state1[4]),
        .O(proc_state0_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h6006000000006006)) 
    proc_state0_carry_i_4
       (.I0(height_u[0]),
        .I1(\pixel_y_reg_n_0_[0] ),
        .I2(proc_state1[1]),
        .I3(\pixel_y_reg_n_0_[1] ),
        .I4(\pixel_y_reg_n_0_[2] ),
        .I5(proc_state1[2]),
        .O(proc_state0_carry_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \proc_state1_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\proc_state1_inferred__0/i__carry_n_0 ,\proc_state1_inferred__0/i__carry_n_1 ,\proc_state1_inferred__0/i__carry_n_2 ,\proc_state1_inferred__0/i__carry_n_3 }),
        .CYINIT(height_u[0]),
        .DI(height_u[4:1]),
        .O(proc_state1[4:1]),
        .S({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \proc_state1_inferred__0/i__carry__0 
       (.CI(\proc_state1_inferred__0/i__carry_n_0 ),
        .CO({\proc_state1_inferred__0/i__carry__0_n_0 ,\proc_state1_inferred__0/i__carry__0_n_1 ,\proc_state1_inferred__0/i__carry__0_n_2 ,\proc_state1_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(height_u[8:5]),
        .O(proc_state1[8:5]),
        .S({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \proc_state1_inferred__0/i__carry__1 
       (.CI(\proc_state1_inferred__0/i__carry__0_n_0 ),
        .CO({\proc_state1_inferred__0/i__carry__1_n_0 ,\proc_state1_inferred__0/i__carry__1_n_1 ,\proc_state1_inferred__0/i__carry__1_n_2 ,\proc_state1_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI(height_u[12:9]),
        .O(proc_state1[12:9]),
        .S({i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \proc_state1_inferred__0/i__carry__2 
       (.CI(\proc_state1_inferred__0/i__carry__1_n_0 ),
        .CO({\proc_state1_inferred__0/i__carry__2_n_0 ,\proc_state1_inferred__0/i__carry__2_n_1 ,\proc_state1_inferred__0/i__carry__2_n_2 ,\proc_state1_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI(height_u[16:13]),
        .O(proc_state1[16:13]),
        .S({i__carry__2_i_1_n_0,i__carry__2_i_2_n_0,i__carry__2_i_3_n_0,i__carry__2_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \proc_state1_inferred__0/i__carry__3 
       (.CI(\proc_state1_inferred__0/i__carry__2_n_0 ),
        .CO({\proc_state1_inferred__0/i__carry__3_n_0 ,\proc_state1_inferred__0/i__carry__3_n_1 ,\proc_state1_inferred__0/i__carry__3_n_2 ,\proc_state1_inferred__0/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI(height_u[20:17]),
        .O(proc_state1[20:17]),
        .S({i__carry__3_i_1_n_0,i__carry__3_i_2_n_0,i__carry__3_i_3_n_0,i__carry__3_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \proc_state1_inferred__0/i__carry__4 
       (.CI(\proc_state1_inferred__0/i__carry__3_n_0 ),
        .CO({\proc_state1_inferred__0/i__carry__4_n_0 ,\proc_state1_inferred__0/i__carry__4_n_1 ,\proc_state1_inferred__0/i__carry__4_n_2 ,\proc_state1_inferred__0/i__carry__4_n_3 }),
        .CYINIT(1'b0),
        .DI(height_u[24:21]),
        .O(proc_state1[24:21]),
        .S({i__carry__4_i_1_n_0,i__carry__4_i_2_n_0,i__carry__4_i_3_n_0,i__carry__4_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \proc_state1_inferred__0/i__carry__5 
       (.CI(\proc_state1_inferred__0/i__carry__4_n_0 ),
        .CO({\proc_state1_inferred__0/i__carry__5_n_0 ,\proc_state1_inferred__0/i__carry__5_n_1 ,\proc_state1_inferred__0/i__carry__5_n_2 ,\proc_state1_inferred__0/i__carry__5_n_3 }),
        .CYINIT(1'b0),
        .DI(height_u[28:25]),
        .O(proc_state1[28:25]),
        .S({i__carry__5_i_1_n_0,i__carry__5_i_2_n_0,i__carry__5_i_3_n_0,i__carry__5_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \proc_state1_inferred__0/i__carry__6 
       (.CI(\proc_state1_inferred__0/i__carry__5_n_0 ),
        .CO({\NLW_proc_state1_inferred__0/i__carry__6_CO_UNCONNECTED [3:2],\proc_state1_inferred__0/i__carry__6_n_2 ,\proc_state1_inferred__0/i__carry__6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,height_u[30:29]}),
        .O({\NLW_proc_state1_inferred__0/i__carry__6_O_UNCONNECTED [3],proc_state1[31:29]}),
        .S({1'b0,i__carry__6_i_1_n_0,i__carry__6_i_2_n_0,i__carry__6_i_3_n_0}));
  CARRY4 \proc_state1_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({\proc_state1_inferred__1/i__carry_n_0 ,\proc_state1_inferred__1/i__carry_n_1 ,\proc_state1_inferred__1/i__carry_n_2 ,\proc_state1_inferred__1/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_proc_state1_inferred__1/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1__0_n_0,i__carry_i_2__0_n_0,i__carry_i_3__0_n_0,i__carry_i_4__0_n_0}));
  CARRY4 \proc_state1_inferred__1/i__carry__0 
       (.CI(\proc_state1_inferred__1/i__carry_n_0 ),
        .CO({\proc_state1_inferred__1/i__carry__0_n_0 ,\proc_state1_inferred__1/i__carry__0_n_1 ,\proc_state1_inferred__1/i__carry__0_n_2 ,\proc_state1_inferred__1/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_proc_state1_inferred__1/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_1__0_n_0,i__carry__0_i_2__0_n_0,i__carry__0_i_3__0_n_0,i__carry__0_i_4__0_n_0}));
  CARRY4 \proc_state1_inferred__1/i__carry__1 
       (.CI(\proc_state1_inferred__1/i__carry__0_n_0 ),
        .CO({\NLW_proc_state1_inferred__1/i__carry__1_CO_UNCONNECTED [3],proc_state1_5,\proc_state1_inferred__1/i__carry__1_n_2 ,\proc_state1_inferred__1/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_proc_state1_inferred__1/i__carry__1_O_UNCONNECTED [3:0]),
        .S({1'b0,i__carry__1_i_1__0_n_0,i__carry__1_i_2__0_n_0,i__carry__1_i_3__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 proc_state2_carry
       (.CI(1'b0),
        .CO({proc_state2_carry_n_0,proc_state2_carry_n_1,proc_state2_carry_n_2,proc_state2_carry_n_3}),
        .CYINIT(width_u[0]),
        .DI(width_u[4:1]),
        .O(proc_state2[4:1]),
        .S({proc_state2_carry_i_1_n_0,proc_state2_carry_i_2_n_0,proc_state2_carry_i_3_n_0,proc_state2_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 proc_state2_carry__0
       (.CI(proc_state2_carry_n_0),
        .CO({proc_state2_carry__0_n_0,proc_state2_carry__0_n_1,proc_state2_carry__0_n_2,proc_state2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(width_u[8:5]),
        .O(proc_state2[8:5]),
        .S({proc_state2_carry__0_i_1_n_0,proc_state2_carry__0_i_2_n_0,proc_state2_carry__0_i_3_n_0,proc_state2_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    proc_state2_carry__0_i_1
       (.I0(width_u[8]),
        .O(proc_state2_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    proc_state2_carry__0_i_2
       (.I0(width_u[7]),
        .O(proc_state2_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    proc_state2_carry__0_i_3
       (.I0(width_u[6]),
        .O(proc_state2_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    proc_state2_carry__0_i_4
       (.I0(width_u[5]),
        .O(proc_state2_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 proc_state2_carry__1
       (.CI(proc_state2_carry__0_n_0),
        .CO({proc_state2_carry__1_n_0,proc_state2_carry__1_n_1,proc_state2_carry__1_n_2,proc_state2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(width_u[12:9]),
        .O(proc_state2[12:9]),
        .S({proc_state2_carry__1_i_1_n_0,proc_state2_carry__1_i_2_n_0,proc_state2_carry__1_i_3_n_0,proc_state2_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    proc_state2_carry__1_i_1
       (.I0(width_u[12]),
        .O(proc_state2_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    proc_state2_carry__1_i_2
       (.I0(width_u[11]),
        .O(proc_state2_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    proc_state2_carry__1_i_3
       (.I0(width_u[10]),
        .O(proc_state2_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    proc_state2_carry__1_i_4
       (.I0(width_u[9]),
        .O(proc_state2_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 proc_state2_carry__2
       (.CI(proc_state2_carry__1_n_0),
        .CO({proc_state2_carry__2_n_0,proc_state2_carry__2_n_1,proc_state2_carry__2_n_2,proc_state2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(width_u[16:13]),
        .O(proc_state2[16:13]),
        .S({proc_state2_carry__2_i_1_n_0,proc_state2_carry__2_i_2_n_0,proc_state2_carry__2_i_3_n_0,proc_state2_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    proc_state2_carry__2_i_1
       (.I0(width_u[16]),
        .O(proc_state2_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    proc_state2_carry__2_i_2
       (.I0(width_u[15]),
        .O(proc_state2_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    proc_state2_carry__2_i_3
       (.I0(width_u[14]),
        .O(proc_state2_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    proc_state2_carry__2_i_4
       (.I0(width_u[13]),
        .O(proc_state2_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 proc_state2_carry__3
       (.CI(proc_state2_carry__2_n_0),
        .CO({proc_state2_carry__3_n_0,proc_state2_carry__3_n_1,proc_state2_carry__3_n_2,proc_state2_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(width_u[20:17]),
        .O(proc_state2[20:17]),
        .S({proc_state2_carry__3_i_1_n_0,proc_state2_carry__3_i_2_n_0,proc_state2_carry__3_i_3_n_0,proc_state2_carry__3_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    proc_state2_carry__3_i_1
       (.I0(width_u[20]),
        .O(proc_state2_carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    proc_state2_carry__3_i_2
       (.I0(width_u[19]),
        .O(proc_state2_carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    proc_state2_carry__3_i_3
       (.I0(width_u[18]),
        .O(proc_state2_carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    proc_state2_carry__3_i_4
       (.I0(width_u[17]),
        .O(proc_state2_carry__3_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 proc_state2_carry__4
       (.CI(proc_state2_carry__3_n_0),
        .CO({proc_state2_carry__4_n_0,proc_state2_carry__4_n_1,proc_state2_carry__4_n_2,proc_state2_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(width_u[24:21]),
        .O(proc_state2[24:21]),
        .S({proc_state2_carry__4_i_1_n_0,proc_state2_carry__4_i_2_n_0,proc_state2_carry__4_i_3_n_0,proc_state2_carry__4_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    proc_state2_carry__4_i_1
       (.I0(width_u[24]),
        .O(proc_state2_carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    proc_state2_carry__4_i_2
       (.I0(width_u[23]),
        .O(proc_state2_carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    proc_state2_carry__4_i_3
       (.I0(width_u[22]),
        .O(proc_state2_carry__4_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    proc_state2_carry__4_i_4
       (.I0(width_u[21]),
        .O(proc_state2_carry__4_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 proc_state2_carry__5
       (.CI(proc_state2_carry__4_n_0),
        .CO({proc_state2_carry__5_n_0,proc_state2_carry__5_n_1,proc_state2_carry__5_n_2,proc_state2_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(width_u[28:25]),
        .O(proc_state2[28:25]),
        .S({proc_state2_carry__5_i_1_n_0,proc_state2_carry__5_i_2_n_0,proc_state2_carry__5_i_3_n_0,proc_state2_carry__5_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    proc_state2_carry__5_i_1
       (.I0(width_u[28]),
        .O(proc_state2_carry__5_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    proc_state2_carry__5_i_2
       (.I0(width_u[27]),
        .O(proc_state2_carry__5_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    proc_state2_carry__5_i_3
       (.I0(width_u[26]),
        .O(proc_state2_carry__5_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    proc_state2_carry__5_i_4
       (.I0(width_u[25]),
        .O(proc_state2_carry__5_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 proc_state2_carry__6
       (.CI(proc_state2_carry__5_n_0),
        .CO({NLW_proc_state2_carry__6_CO_UNCONNECTED[3:2],proc_state2_carry__6_n_2,proc_state2_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,width_u[30:29]}),
        .O({NLW_proc_state2_carry__6_O_UNCONNECTED[3],proc_state2[31:29]}),
        .S({1'b0,proc_state2_carry__6_i_1_n_0,proc_state2_carry__6_i_2_n_0,proc_state2_carry__6_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    proc_state2_carry__6_i_1
       (.I0(width_u[31]),
        .O(proc_state2_carry__6_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    proc_state2_carry__6_i_2
       (.I0(width_u[30]),
        .O(proc_state2_carry__6_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    proc_state2_carry__6_i_3
       (.I0(width_u[29]),
        .O(proc_state2_carry__6_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    proc_state2_carry_i_1
       (.I0(width_u[4]),
        .O(proc_state2_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    proc_state2_carry_i_2
       (.I0(width_u[3]),
        .O(proc_state2_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    proc_state2_carry_i_3
       (.I0(width_u[2]),
        .O(proc_state2_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    proc_state2_carry_i_4
       (.I0(width_u[1]),
        .O(proc_state2_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \reg_control[31]_i_1 
       (.I0(s_axi_awaddr[1]),
        .I1(s_axi_awaddr[0]),
        .I2(s_axi_awaddr[3]),
        .I3(s_axi_awaddr[2]),
        .I4(s_axi_awvalid),
        .I5(s_axi_wvalid),
        .O(reg_control));
  FDRE #(
    .INIT(1'b0)) 
    \reg_control_reg[0] 
       (.C(aclkrst_clk),
        .CE(reg_control),
        .D(s_axi_wdata[0]),
        .Q(p_0_in),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_control_reg[10] 
       (.C(aclkrst_clk),
        .CE(reg_control),
        .D(s_axi_wdata[10]),
        .Q(\reg_control_reg_n_0_[10] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_control_reg[11] 
       (.C(aclkrst_clk),
        .CE(reg_control),
        .D(s_axi_wdata[11]),
        .Q(\reg_control_reg_n_0_[11] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_control_reg[12] 
       (.C(aclkrst_clk),
        .CE(reg_control),
        .D(s_axi_wdata[12]),
        .Q(\reg_control_reg_n_0_[12] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_control_reg[13] 
       (.C(aclkrst_clk),
        .CE(reg_control),
        .D(s_axi_wdata[13]),
        .Q(\reg_control_reg_n_0_[13] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_control_reg[14] 
       (.C(aclkrst_clk),
        .CE(reg_control),
        .D(s_axi_wdata[14]),
        .Q(\reg_control_reg_n_0_[14] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_control_reg[15] 
       (.C(aclkrst_clk),
        .CE(reg_control),
        .D(s_axi_wdata[15]),
        .Q(\reg_control_reg_n_0_[15] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_control_reg[16] 
       (.C(aclkrst_clk),
        .CE(reg_control),
        .D(s_axi_wdata[16]),
        .Q(\reg_control_reg_n_0_[16] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_control_reg[17] 
       (.C(aclkrst_clk),
        .CE(reg_control),
        .D(s_axi_wdata[17]),
        .Q(\reg_control_reg_n_0_[17] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_control_reg[18] 
       (.C(aclkrst_clk),
        .CE(reg_control),
        .D(s_axi_wdata[18]),
        .Q(\reg_control_reg_n_0_[18] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_control_reg[19] 
       (.C(aclkrst_clk),
        .CE(reg_control),
        .D(s_axi_wdata[19]),
        .Q(\reg_control_reg_n_0_[19] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_control_reg[1] 
       (.C(aclkrst_clk),
        .CE(reg_control),
        .D(s_axi_wdata[1]),
        .Q(\reg_control_reg_n_0_[1] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_control_reg[20] 
       (.C(aclkrst_clk),
        .CE(reg_control),
        .D(s_axi_wdata[20]),
        .Q(\reg_control_reg_n_0_[20] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_control_reg[21] 
       (.C(aclkrst_clk),
        .CE(reg_control),
        .D(s_axi_wdata[21]),
        .Q(\reg_control_reg_n_0_[21] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_control_reg[22] 
       (.C(aclkrst_clk),
        .CE(reg_control),
        .D(s_axi_wdata[22]),
        .Q(\reg_control_reg_n_0_[22] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_control_reg[23] 
       (.C(aclkrst_clk),
        .CE(reg_control),
        .D(s_axi_wdata[23]),
        .Q(\reg_control_reg_n_0_[23] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_control_reg[24] 
       (.C(aclkrst_clk),
        .CE(reg_control),
        .D(s_axi_wdata[24]),
        .Q(\reg_control_reg_n_0_[24] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_control_reg[25] 
       (.C(aclkrst_clk),
        .CE(reg_control),
        .D(s_axi_wdata[25]),
        .Q(\reg_control_reg_n_0_[25] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_control_reg[26] 
       (.C(aclkrst_clk),
        .CE(reg_control),
        .D(s_axi_wdata[26]),
        .Q(\reg_control_reg_n_0_[26] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_control_reg[27] 
       (.C(aclkrst_clk),
        .CE(reg_control),
        .D(s_axi_wdata[27]),
        .Q(\reg_control_reg_n_0_[27] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_control_reg[28] 
       (.C(aclkrst_clk),
        .CE(reg_control),
        .D(s_axi_wdata[28]),
        .Q(\reg_control_reg_n_0_[28] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_control_reg[29] 
       (.C(aclkrst_clk),
        .CE(reg_control),
        .D(s_axi_wdata[29]),
        .Q(\reg_control_reg_n_0_[29] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_control_reg[2] 
       (.C(aclkrst_clk),
        .CE(reg_control),
        .D(s_axi_wdata[2]),
        .Q(\reg_control_reg_n_0_[2] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_control_reg[30] 
       (.C(aclkrst_clk),
        .CE(reg_control),
        .D(s_axi_wdata[30]),
        .Q(\reg_control_reg_n_0_[30] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_control_reg[31] 
       (.C(aclkrst_clk),
        .CE(reg_control),
        .D(s_axi_wdata[31]),
        .Q(\reg_control_reg_n_0_[31] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_control_reg[3] 
       (.C(aclkrst_clk),
        .CE(reg_control),
        .D(s_axi_wdata[3]),
        .Q(\reg_control_reg_n_0_[3] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_control_reg[4] 
       (.C(aclkrst_clk),
        .CE(reg_control),
        .D(s_axi_wdata[4]),
        .Q(\reg_control_reg_n_0_[4] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_control_reg[5] 
       (.C(aclkrst_clk),
        .CE(reg_control),
        .D(s_axi_wdata[5]),
        .Q(\reg_control_reg_n_0_[5] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_control_reg[6] 
       (.C(aclkrst_clk),
        .CE(reg_control),
        .D(s_axi_wdata[6]),
        .Q(\reg_control_reg_n_0_[6] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_control_reg[7] 
       (.C(aclkrst_clk),
        .CE(reg_control),
        .D(s_axi_wdata[7]),
        .Q(\reg_control_reg_n_0_[7] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_control_reg[8] 
       (.C(aclkrst_clk),
        .CE(reg_control),
        .D(s_axi_wdata[8]),
        .Q(\reg_control_reg_n_0_[8] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_control_reg[9] 
       (.C(aclkrst_clk),
        .CE(reg_control),
        .D(s_axi_wdata[9]),
        .Q(\reg_control_reg_n_0_[9] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \reg_height[31]_i_1 
       (.I0(s_axi_awaddr[1]),
        .I1(s_axi_awaddr[0]),
        .I2(s_axi_awaddr[3]),
        .I3(s_axi_awaddr[2]),
        .I4(s_axi_awvalid),
        .I5(s_axi_wvalid),
        .O(reg_height_3));
  FDRE #(
    .INIT(1'b0)) 
    \reg_height_reg[0] 
       (.C(aclkrst_clk),
        .CE(reg_height_3),
        .D(s_axi_wdata[0]),
        .Q(reg_height[0]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_height_reg[10] 
       (.C(aclkrst_clk),
        .CE(reg_height_3),
        .D(s_axi_wdata[10]),
        .Q(reg_height[10]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_height_reg[11] 
       (.C(aclkrst_clk),
        .CE(reg_height_3),
        .D(s_axi_wdata[11]),
        .Q(reg_height[11]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_height_reg[12] 
       (.C(aclkrst_clk),
        .CE(reg_height_3),
        .D(s_axi_wdata[12]),
        .Q(reg_height[12]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_height_reg[13] 
       (.C(aclkrst_clk),
        .CE(reg_height_3),
        .D(s_axi_wdata[13]),
        .Q(reg_height[13]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_height_reg[14] 
       (.C(aclkrst_clk),
        .CE(reg_height_3),
        .D(s_axi_wdata[14]),
        .Q(reg_height[14]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_height_reg[15] 
       (.C(aclkrst_clk),
        .CE(reg_height_3),
        .D(s_axi_wdata[15]),
        .Q(reg_height[15]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_height_reg[16] 
       (.C(aclkrst_clk),
        .CE(reg_height_3),
        .D(s_axi_wdata[16]),
        .Q(reg_height[16]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_height_reg[17] 
       (.C(aclkrst_clk),
        .CE(reg_height_3),
        .D(s_axi_wdata[17]),
        .Q(reg_height[17]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_height_reg[18] 
       (.C(aclkrst_clk),
        .CE(reg_height_3),
        .D(s_axi_wdata[18]),
        .Q(reg_height[18]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_height_reg[19] 
       (.C(aclkrst_clk),
        .CE(reg_height_3),
        .D(s_axi_wdata[19]),
        .Q(reg_height[19]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_height_reg[1] 
       (.C(aclkrst_clk),
        .CE(reg_height_3),
        .D(s_axi_wdata[1]),
        .Q(reg_height[1]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_height_reg[20] 
       (.C(aclkrst_clk),
        .CE(reg_height_3),
        .D(s_axi_wdata[20]),
        .Q(reg_height[20]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_height_reg[21] 
       (.C(aclkrst_clk),
        .CE(reg_height_3),
        .D(s_axi_wdata[21]),
        .Q(reg_height[21]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_height_reg[22] 
       (.C(aclkrst_clk),
        .CE(reg_height_3),
        .D(s_axi_wdata[22]),
        .Q(reg_height[22]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_height_reg[23] 
       (.C(aclkrst_clk),
        .CE(reg_height_3),
        .D(s_axi_wdata[23]),
        .Q(reg_height[23]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_height_reg[24] 
       (.C(aclkrst_clk),
        .CE(reg_height_3),
        .D(s_axi_wdata[24]),
        .Q(reg_height[24]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_height_reg[25] 
       (.C(aclkrst_clk),
        .CE(reg_height_3),
        .D(s_axi_wdata[25]),
        .Q(reg_height[25]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_height_reg[26] 
       (.C(aclkrst_clk),
        .CE(reg_height_3),
        .D(s_axi_wdata[26]),
        .Q(reg_height[26]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_height_reg[27] 
       (.C(aclkrst_clk),
        .CE(reg_height_3),
        .D(s_axi_wdata[27]),
        .Q(reg_height[27]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_height_reg[28] 
       (.C(aclkrst_clk),
        .CE(reg_height_3),
        .D(s_axi_wdata[28]),
        .Q(reg_height[28]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_height_reg[29] 
       (.C(aclkrst_clk),
        .CE(reg_height_3),
        .D(s_axi_wdata[29]),
        .Q(reg_height[29]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_height_reg[2] 
       (.C(aclkrst_clk),
        .CE(reg_height_3),
        .D(s_axi_wdata[2]),
        .Q(reg_height[2]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_height_reg[30] 
       (.C(aclkrst_clk),
        .CE(reg_height_3),
        .D(s_axi_wdata[30]),
        .Q(reg_height[30]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_height_reg[31] 
       (.C(aclkrst_clk),
        .CE(reg_height_3),
        .D(s_axi_wdata[31]),
        .Q(reg_height[31]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_height_reg[3] 
       (.C(aclkrst_clk),
        .CE(reg_height_3),
        .D(s_axi_wdata[3]),
        .Q(reg_height[3]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_height_reg[4] 
       (.C(aclkrst_clk),
        .CE(reg_height_3),
        .D(s_axi_wdata[4]),
        .Q(reg_height[4]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_height_reg[5] 
       (.C(aclkrst_clk),
        .CE(reg_height_3),
        .D(s_axi_wdata[5]),
        .Q(reg_height[5]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_height_reg[6] 
       (.C(aclkrst_clk),
        .CE(reg_height_3),
        .D(s_axi_wdata[6]),
        .Q(reg_height[6]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \reg_height_reg[7] 
       (.C(aclkrst_clk),
        .CE(reg_height_3),
        .D(s_axi_wdata[7]),
        .Q(reg_height[7]),
        .S(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_height_reg[8] 
       (.C(aclkrst_clk),
        .CE(reg_height_3),
        .D(s_axi_wdata[8]),
        .Q(reg_height[8]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_height_reg[9] 
       (.C(aclkrst_clk),
        .CE(reg_height_3),
        .D(s_axi_wdata[9]),
        .Q(reg_height[9]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_slice_id_reg[0] 
       (.C(aclkrst_clk),
        .CE(1'b1),
        .D(slice_id_in[0]),
        .Q(\reg_slice_id_reg_n_0_[0] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_slice_id_reg[1] 
       (.C(aclkrst_clk),
        .CE(1'b1),
        .D(slice_id_in[1]),
        .Q(\reg_slice_id_reg_n_0_[1] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE8EAFCFFE8EAC0C0)) 
    \reg_status[0]_i_1 
       (.I0(s_axi_wdata[0]),
        .I1(proc_state[1]),
        .I2(proc_state[0]),
        .I3(p_0_in),
        .I4(\reg_status[31]_i_1_n_0 ),
        .I5(irq_done),
        .O(\reg_status[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \reg_status[31]_i_1 
       (.I0(s_axi_awaddr[1]),
        .I1(s_axi_awaddr[0]),
        .I2(s_axi_awaddr[3]),
        .I3(s_axi_awaddr[2]),
        .I4(s_axi_awvalid),
        .I5(s_axi_wvalid),
        .O(\reg_status[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_status_reg[0] 
       (.C(aclkrst_clk),
        .CE(1'b1),
        .D(\reg_status[0]_i_1_n_0 ),
        .Q(irq_done),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_status_reg[10] 
       (.C(aclkrst_clk),
        .CE(\reg_status[31]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(\reg_status_reg_n_0_[10] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_status_reg[11] 
       (.C(aclkrst_clk),
        .CE(\reg_status[31]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(\reg_status_reg_n_0_[11] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_status_reg[12] 
       (.C(aclkrst_clk),
        .CE(\reg_status[31]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(\reg_status_reg_n_0_[12] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_status_reg[13] 
       (.C(aclkrst_clk),
        .CE(\reg_status[31]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(\reg_status_reg_n_0_[13] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_status_reg[14] 
       (.C(aclkrst_clk),
        .CE(\reg_status[31]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(\reg_status_reg_n_0_[14] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_status_reg[15] 
       (.C(aclkrst_clk),
        .CE(\reg_status[31]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(\reg_status_reg_n_0_[15] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_status_reg[16] 
       (.C(aclkrst_clk),
        .CE(\reg_status[31]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(\reg_status_reg_n_0_[16] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_status_reg[17] 
       (.C(aclkrst_clk),
        .CE(\reg_status[31]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(\reg_status_reg_n_0_[17] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_status_reg[18] 
       (.C(aclkrst_clk),
        .CE(\reg_status[31]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(\reg_status_reg_n_0_[18] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_status_reg[19] 
       (.C(aclkrst_clk),
        .CE(\reg_status[31]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(\reg_status_reg_n_0_[19] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_status_reg[1] 
       (.C(aclkrst_clk),
        .CE(\reg_status[31]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(\reg_status_reg_n_0_[1] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_status_reg[20] 
       (.C(aclkrst_clk),
        .CE(\reg_status[31]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(\reg_status_reg_n_0_[20] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_status_reg[21] 
       (.C(aclkrst_clk),
        .CE(\reg_status[31]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(\reg_status_reg_n_0_[21] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_status_reg[22] 
       (.C(aclkrst_clk),
        .CE(\reg_status[31]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(\reg_status_reg_n_0_[22] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_status_reg[23] 
       (.C(aclkrst_clk),
        .CE(\reg_status[31]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(\reg_status_reg_n_0_[23] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_status_reg[24] 
       (.C(aclkrst_clk),
        .CE(\reg_status[31]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(\reg_status_reg_n_0_[24] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_status_reg[25] 
       (.C(aclkrst_clk),
        .CE(\reg_status[31]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(\reg_status_reg_n_0_[25] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_status_reg[26] 
       (.C(aclkrst_clk),
        .CE(\reg_status[31]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(\reg_status_reg_n_0_[26] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_status_reg[27] 
       (.C(aclkrst_clk),
        .CE(\reg_status[31]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(\reg_status_reg_n_0_[27] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_status_reg[28] 
       (.C(aclkrst_clk),
        .CE(\reg_status[31]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(\reg_status_reg_n_0_[28] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_status_reg[29] 
       (.C(aclkrst_clk),
        .CE(\reg_status[31]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(\reg_status_reg_n_0_[29] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_status_reg[2] 
       (.C(aclkrst_clk),
        .CE(\reg_status[31]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(\reg_status_reg_n_0_[2] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_status_reg[30] 
       (.C(aclkrst_clk),
        .CE(\reg_status[31]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(\reg_status_reg_n_0_[30] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_status_reg[31] 
       (.C(aclkrst_clk),
        .CE(\reg_status[31]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(\reg_status_reg_n_0_[31] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_status_reg[3] 
       (.C(aclkrst_clk),
        .CE(\reg_status[31]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(\reg_status_reg_n_0_[3] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_status_reg[4] 
       (.C(aclkrst_clk),
        .CE(\reg_status[31]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(\reg_status_reg_n_0_[4] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_status_reg[5] 
       (.C(aclkrst_clk),
        .CE(\reg_status[31]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(\reg_status_reg_n_0_[5] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_status_reg[6] 
       (.C(aclkrst_clk),
        .CE(\reg_status[31]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(\reg_status_reg_n_0_[6] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_status_reg[7] 
       (.C(aclkrst_clk),
        .CE(\reg_status[31]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(\reg_status_reg_n_0_[7] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_status_reg[8] 
       (.C(aclkrst_clk),
        .CE(\reg_status[31]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(\reg_status_reg_n_0_[8] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_status_reg[9] 
       (.C(aclkrst_clk),
        .CE(\reg_status[31]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(\reg_status_reg_n_0_[9] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \reg_width[31]_i_1 
       (.I0(s_axi_awaddr[0]),
        .I1(s_axi_awaddr[1]),
        .I2(s_axi_awaddr[3]),
        .I3(s_axi_awaddr[2]),
        .I4(s_axi_awvalid),
        .I5(s_axi_wvalid),
        .O(reg_width_2));
  FDRE #(
    .INIT(1'b0)) 
    \reg_width_reg[0] 
       (.C(aclkrst_clk),
        .CE(reg_width_2),
        .D(s_axi_wdata[0]),
        .Q(reg_width[0]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_width_reg[10] 
       (.C(aclkrst_clk),
        .CE(reg_width_2),
        .D(s_axi_wdata[10]),
        .Q(reg_width[10]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_width_reg[11] 
       (.C(aclkrst_clk),
        .CE(reg_width_2),
        .D(s_axi_wdata[11]),
        .Q(reg_width[11]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_width_reg[12] 
       (.C(aclkrst_clk),
        .CE(reg_width_2),
        .D(s_axi_wdata[12]),
        .Q(reg_width[12]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_width_reg[13] 
       (.C(aclkrst_clk),
        .CE(reg_width_2),
        .D(s_axi_wdata[13]),
        .Q(reg_width[13]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_width_reg[14] 
       (.C(aclkrst_clk),
        .CE(reg_width_2),
        .D(s_axi_wdata[14]),
        .Q(reg_width[14]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_width_reg[15] 
       (.C(aclkrst_clk),
        .CE(reg_width_2),
        .D(s_axi_wdata[15]),
        .Q(reg_width[15]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_width_reg[16] 
       (.C(aclkrst_clk),
        .CE(reg_width_2),
        .D(s_axi_wdata[16]),
        .Q(reg_width[16]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_width_reg[17] 
       (.C(aclkrst_clk),
        .CE(reg_width_2),
        .D(s_axi_wdata[17]),
        .Q(reg_width[17]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_width_reg[18] 
       (.C(aclkrst_clk),
        .CE(reg_width_2),
        .D(s_axi_wdata[18]),
        .Q(reg_width[18]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_width_reg[19] 
       (.C(aclkrst_clk),
        .CE(reg_width_2),
        .D(s_axi_wdata[19]),
        .Q(reg_width[19]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_width_reg[1] 
       (.C(aclkrst_clk),
        .CE(reg_width_2),
        .D(s_axi_wdata[1]),
        .Q(reg_width[1]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_width_reg[20] 
       (.C(aclkrst_clk),
        .CE(reg_width_2),
        .D(s_axi_wdata[20]),
        .Q(reg_width[20]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_width_reg[21] 
       (.C(aclkrst_clk),
        .CE(reg_width_2),
        .D(s_axi_wdata[21]),
        .Q(reg_width[21]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_width_reg[22] 
       (.C(aclkrst_clk),
        .CE(reg_width_2),
        .D(s_axi_wdata[22]),
        .Q(reg_width[22]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_width_reg[23] 
       (.C(aclkrst_clk),
        .CE(reg_width_2),
        .D(s_axi_wdata[23]),
        .Q(reg_width[23]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_width_reg[24] 
       (.C(aclkrst_clk),
        .CE(reg_width_2),
        .D(s_axi_wdata[24]),
        .Q(reg_width[24]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_width_reg[25] 
       (.C(aclkrst_clk),
        .CE(reg_width_2),
        .D(s_axi_wdata[25]),
        .Q(reg_width[25]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_width_reg[26] 
       (.C(aclkrst_clk),
        .CE(reg_width_2),
        .D(s_axi_wdata[26]),
        .Q(reg_width[26]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_width_reg[27] 
       (.C(aclkrst_clk),
        .CE(reg_width_2),
        .D(s_axi_wdata[27]),
        .Q(reg_width[27]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_width_reg[28] 
       (.C(aclkrst_clk),
        .CE(reg_width_2),
        .D(s_axi_wdata[28]),
        .Q(reg_width[28]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_width_reg[29] 
       (.C(aclkrst_clk),
        .CE(reg_width_2),
        .D(s_axi_wdata[29]),
        .Q(reg_width[29]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_width_reg[2] 
       (.C(aclkrst_clk),
        .CE(reg_width_2),
        .D(s_axi_wdata[2]),
        .Q(reg_width[2]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_width_reg[30] 
       (.C(aclkrst_clk),
        .CE(reg_width_2),
        .D(s_axi_wdata[30]),
        .Q(reg_width[30]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_width_reg[31] 
       (.C(aclkrst_clk),
        .CE(reg_width_2),
        .D(s_axi_wdata[31]),
        .Q(reg_width[31]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_width_reg[3] 
       (.C(aclkrst_clk),
        .CE(reg_width_2),
        .D(s_axi_wdata[3]),
        .Q(reg_width[3]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_width_reg[4] 
       (.C(aclkrst_clk),
        .CE(reg_width_2),
        .D(s_axi_wdata[4]),
        .Q(reg_width[4]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_width_reg[5] 
       (.C(aclkrst_clk),
        .CE(reg_width_2),
        .D(s_axi_wdata[5]),
        .Q(reg_width[5]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_width_reg[6] 
       (.C(aclkrst_clk),
        .CE(reg_width_2),
        .D(s_axi_wdata[6]),
        .Q(reg_width[6]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_width_reg[7] 
       (.C(aclkrst_clk),
        .CE(reg_width_2),
        .D(s_axi_wdata[7]),
        .Q(reg_width[7]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_width_reg[8] 
       (.C(aclkrst_clk),
        .CE(reg_width_2),
        .D(s_axi_wdata[8]),
        .Q(reg_width[8]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \reg_width_reg[9] 
       (.C(aclkrst_clk),
        .CE(reg_width_2),
        .D(s_axi_wdata[9]),
        .Q(reg_width[9]),
        .S(\out_data_reg[17]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \s_axi_rdata[0]_INST_0 
       (.I0(\s_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I1(reg_height[0]),
        .I2(\s_axi_rdata[0]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[0]_INST_0_i_2_n_0 ),
        .O(s_axi_rdata[0]));
  LUT6 #(
    .INIT(64'h0000030200000002)) 
    \s_axi_rdata[0]_INST_0_i_1 
       (.I0(p_0_in),
        .I1(s_axi_araddr[1]),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_araddr[2]),
        .I4(s_axi_araddr[3]),
        .I5(\reg_slice_id_reg_n_0_[0] ),
        .O(\s_axi_rdata[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000C000000A0)) 
    \s_axi_rdata[0]_INST_0_i_2 
       (.I0(irq_done),
        .I1(reg_width[0]),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_araddr[3]),
        .I4(s_axi_araddr[2]),
        .I5(s_axi_araddr[1]),
        .O(\s_axi_rdata[0]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \s_axi_rdata[10]_INST_0 
       (.I0(\s_axi_rdata[31]_INST_0_i_1_n_0 ),
        .I1(\reg_status_reg_n_0_[10] ),
        .I2(\s_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I3(reg_height[10]),
        .I4(\s_axi_rdata[10]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[10]));
  LUT6 #(
    .INIT(64'h0000000A0000000C)) 
    \s_axi_rdata[10]_INST_0_i_1 
       (.I0(reg_width[10]),
        .I1(\reg_control_reg_n_0_[10] ),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_araddr[3]),
        .I4(s_axi_araddr[2]),
        .I5(s_axi_araddr[1]),
        .O(\s_axi_rdata[10]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \s_axi_rdata[11]_INST_0 
       (.I0(\s_axi_rdata[31]_INST_0_i_1_n_0 ),
        .I1(\reg_status_reg_n_0_[11] ),
        .I2(\s_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I3(reg_height[11]),
        .I4(\s_axi_rdata[11]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[11]));
  LUT6 #(
    .INIT(64'h0000000A0000000C)) 
    \s_axi_rdata[11]_INST_0_i_1 
       (.I0(reg_width[11]),
        .I1(\reg_control_reg_n_0_[11] ),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_araddr[3]),
        .I4(s_axi_araddr[2]),
        .I5(s_axi_araddr[1]),
        .O(\s_axi_rdata[11]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \s_axi_rdata[12]_INST_0 
       (.I0(\s_axi_rdata[31]_INST_0_i_1_n_0 ),
        .I1(\reg_status_reg_n_0_[12] ),
        .I2(\s_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I3(reg_height[12]),
        .I4(\s_axi_rdata[12]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[12]));
  LUT6 #(
    .INIT(64'h0000000A0000000C)) 
    \s_axi_rdata[12]_INST_0_i_1 
       (.I0(reg_width[12]),
        .I1(\reg_control_reg_n_0_[12] ),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_araddr[3]),
        .I4(s_axi_araddr[2]),
        .I5(s_axi_araddr[1]),
        .O(\s_axi_rdata[12]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \s_axi_rdata[13]_INST_0 
       (.I0(\s_axi_rdata[31]_INST_0_i_1_n_0 ),
        .I1(\reg_status_reg_n_0_[13] ),
        .I2(\s_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I3(reg_height[13]),
        .I4(\s_axi_rdata[13]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[13]));
  LUT6 #(
    .INIT(64'h0000000A0000000C)) 
    \s_axi_rdata[13]_INST_0_i_1 
       (.I0(reg_width[13]),
        .I1(\reg_control_reg_n_0_[13] ),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_araddr[3]),
        .I4(s_axi_araddr[2]),
        .I5(s_axi_araddr[1]),
        .O(\s_axi_rdata[13]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \s_axi_rdata[14]_INST_0 
       (.I0(\s_axi_rdata[31]_INST_0_i_1_n_0 ),
        .I1(\reg_status_reg_n_0_[14] ),
        .I2(\s_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I3(reg_height[14]),
        .I4(\s_axi_rdata[14]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[14]));
  LUT6 #(
    .INIT(64'h0000000A0000000C)) 
    \s_axi_rdata[14]_INST_0_i_1 
       (.I0(reg_width[14]),
        .I1(\reg_control_reg_n_0_[14] ),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_araddr[3]),
        .I4(s_axi_araddr[2]),
        .I5(s_axi_araddr[1]),
        .O(\s_axi_rdata[14]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \s_axi_rdata[15]_INST_0 
       (.I0(\s_axi_rdata[31]_INST_0_i_1_n_0 ),
        .I1(\reg_status_reg_n_0_[15] ),
        .I2(\s_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I3(reg_height[15]),
        .I4(\s_axi_rdata[15]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[15]));
  LUT6 #(
    .INIT(64'h0000000A0000000C)) 
    \s_axi_rdata[15]_INST_0_i_1 
       (.I0(reg_width[15]),
        .I1(\reg_control_reg_n_0_[15] ),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_araddr[3]),
        .I4(s_axi_araddr[2]),
        .I5(s_axi_araddr[1]),
        .O(\s_axi_rdata[15]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \s_axi_rdata[16]_INST_0 
       (.I0(\s_axi_rdata[31]_INST_0_i_1_n_0 ),
        .I1(\reg_status_reg_n_0_[16] ),
        .I2(\s_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I3(reg_height[16]),
        .I4(\s_axi_rdata[16]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[16]));
  LUT6 #(
    .INIT(64'h0000000A0000000C)) 
    \s_axi_rdata[16]_INST_0_i_1 
       (.I0(reg_width[16]),
        .I1(\reg_control_reg_n_0_[16] ),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_araddr[3]),
        .I4(s_axi_araddr[2]),
        .I5(s_axi_araddr[1]),
        .O(\s_axi_rdata[16]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \s_axi_rdata[17]_INST_0 
       (.I0(\s_axi_rdata[31]_INST_0_i_1_n_0 ),
        .I1(\reg_status_reg_n_0_[17] ),
        .I2(\s_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I3(reg_height[17]),
        .I4(\s_axi_rdata[17]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[17]));
  LUT6 #(
    .INIT(64'h0000000A0000000C)) 
    \s_axi_rdata[17]_INST_0_i_1 
       (.I0(reg_width[17]),
        .I1(\reg_control_reg_n_0_[17] ),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_araddr[3]),
        .I4(s_axi_araddr[2]),
        .I5(s_axi_araddr[1]),
        .O(\s_axi_rdata[17]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \s_axi_rdata[18]_INST_0 
       (.I0(\s_axi_rdata[31]_INST_0_i_1_n_0 ),
        .I1(\reg_status_reg_n_0_[18] ),
        .I2(\s_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I3(reg_height[18]),
        .I4(\s_axi_rdata[18]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[18]));
  LUT6 #(
    .INIT(64'h0000000A0000000C)) 
    \s_axi_rdata[18]_INST_0_i_1 
       (.I0(reg_width[18]),
        .I1(\reg_control_reg_n_0_[18] ),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_araddr[3]),
        .I4(s_axi_araddr[2]),
        .I5(s_axi_araddr[1]),
        .O(\s_axi_rdata[18]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \s_axi_rdata[19]_INST_0 
       (.I0(\s_axi_rdata[31]_INST_0_i_1_n_0 ),
        .I1(\reg_status_reg_n_0_[19] ),
        .I2(\s_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I3(reg_height[19]),
        .I4(\s_axi_rdata[19]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[19]));
  LUT6 #(
    .INIT(64'h0000000A0000000C)) 
    \s_axi_rdata[19]_INST_0_i_1 
       (.I0(reg_width[19]),
        .I1(\reg_control_reg_n_0_[19] ),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_araddr[3]),
        .I4(s_axi_araddr[2]),
        .I5(s_axi_araddr[1]),
        .O(\s_axi_rdata[19]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \s_axi_rdata[1]_INST_0 
       (.I0(\s_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I1(reg_height[1]),
        .I2(\s_axi_rdata[1]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[1]_INST_0_i_2_n_0 ),
        .O(s_axi_rdata[1]));
  LUT6 #(
    .INIT(64'h0000030200000002)) 
    \s_axi_rdata[1]_INST_0_i_1 
       (.I0(\reg_control_reg_n_0_[1] ),
        .I1(s_axi_araddr[1]),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_araddr[2]),
        .I4(s_axi_araddr[3]),
        .I5(\reg_slice_id_reg_n_0_[1] ),
        .O(\s_axi_rdata[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000C000000A0)) 
    \s_axi_rdata[1]_INST_0_i_2 
       (.I0(\reg_status_reg_n_0_[1] ),
        .I1(reg_width[1]),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_araddr[3]),
        .I4(s_axi_araddr[2]),
        .I5(s_axi_araddr[1]),
        .O(\s_axi_rdata[1]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \s_axi_rdata[20]_INST_0 
       (.I0(\s_axi_rdata[31]_INST_0_i_1_n_0 ),
        .I1(\reg_status_reg_n_0_[20] ),
        .I2(\s_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I3(reg_height[20]),
        .I4(\s_axi_rdata[20]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[20]));
  LUT6 #(
    .INIT(64'h0000000A0000000C)) 
    \s_axi_rdata[20]_INST_0_i_1 
       (.I0(reg_width[20]),
        .I1(\reg_control_reg_n_0_[20] ),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_araddr[3]),
        .I4(s_axi_araddr[2]),
        .I5(s_axi_araddr[1]),
        .O(\s_axi_rdata[20]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \s_axi_rdata[21]_INST_0 
       (.I0(\s_axi_rdata[31]_INST_0_i_1_n_0 ),
        .I1(\reg_status_reg_n_0_[21] ),
        .I2(\s_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I3(reg_height[21]),
        .I4(\s_axi_rdata[21]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[21]));
  LUT6 #(
    .INIT(64'h0000000A0000000C)) 
    \s_axi_rdata[21]_INST_0_i_1 
       (.I0(reg_width[21]),
        .I1(\reg_control_reg_n_0_[21] ),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_araddr[3]),
        .I4(s_axi_araddr[2]),
        .I5(s_axi_araddr[1]),
        .O(\s_axi_rdata[21]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \s_axi_rdata[22]_INST_0 
       (.I0(\s_axi_rdata[31]_INST_0_i_1_n_0 ),
        .I1(\reg_status_reg_n_0_[22] ),
        .I2(\s_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I3(reg_height[22]),
        .I4(\s_axi_rdata[22]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[22]));
  LUT6 #(
    .INIT(64'h0000000A0000000C)) 
    \s_axi_rdata[22]_INST_0_i_1 
       (.I0(reg_width[22]),
        .I1(\reg_control_reg_n_0_[22] ),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_araddr[3]),
        .I4(s_axi_araddr[2]),
        .I5(s_axi_araddr[1]),
        .O(\s_axi_rdata[22]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \s_axi_rdata[23]_INST_0 
       (.I0(\s_axi_rdata[31]_INST_0_i_1_n_0 ),
        .I1(\reg_status_reg_n_0_[23] ),
        .I2(\s_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I3(reg_height[23]),
        .I4(\s_axi_rdata[23]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[23]));
  LUT6 #(
    .INIT(64'h0000000A0000000C)) 
    \s_axi_rdata[23]_INST_0_i_1 
       (.I0(reg_width[23]),
        .I1(\reg_control_reg_n_0_[23] ),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_araddr[3]),
        .I4(s_axi_araddr[2]),
        .I5(s_axi_araddr[1]),
        .O(\s_axi_rdata[23]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \s_axi_rdata[24]_INST_0 
       (.I0(\s_axi_rdata[31]_INST_0_i_1_n_0 ),
        .I1(\reg_status_reg_n_0_[24] ),
        .I2(\s_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I3(reg_height[24]),
        .I4(\s_axi_rdata[24]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[24]));
  LUT6 #(
    .INIT(64'h0000000A0000000C)) 
    \s_axi_rdata[24]_INST_0_i_1 
       (.I0(reg_width[24]),
        .I1(\reg_control_reg_n_0_[24] ),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_araddr[3]),
        .I4(s_axi_araddr[2]),
        .I5(s_axi_araddr[1]),
        .O(\s_axi_rdata[24]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \s_axi_rdata[25]_INST_0 
       (.I0(\s_axi_rdata[31]_INST_0_i_1_n_0 ),
        .I1(\reg_status_reg_n_0_[25] ),
        .I2(\s_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I3(reg_height[25]),
        .I4(\s_axi_rdata[25]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[25]));
  LUT6 #(
    .INIT(64'h0000000A0000000C)) 
    \s_axi_rdata[25]_INST_0_i_1 
       (.I0(reg_width[25]),
        .I1(\reg_control_reg_n_0_[25] ),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_araddr[3]),
        .I4(s_axi_araddr[2]),
        .I5(s_axi_araddr[1]),
        .O(\s_axi_rdata[25]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \s_axi_rdata[26]_INST_0 
       (.I0(\s_axi_rdata[31]_INST_0_i_1_n_0 ),
        .I1(\reg_status_reg_n_0_[26] ),
        .I2(\s_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I3(reg_height[26]),
        .I4(\s_axi_rdata[26]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[26]));
  LUT6 #(
    .INIT(64'h0000000A0000000C)) 
    \s_axi_rdata[26]_INST_0_i_1 
       (.I0(reg_width[26]),
        .I1(\reg_control_reg_n_0_[26] ),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_araddr[3]),
        .I4(s_axi_araddr[2]),
        .I5(s_axi_araddr[1]),
        .O(\s_axi_rdata[26]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \s_axi_rdata[27]_INST_0 
       (.I0(\s_axi_rdata[31]_INST_0_i_1_n_0 ),
        .I1(\reg_status_reg_n_0_[27] ),
        .I2(\s_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I3(reg_height[27]),
        .I4(\s_axi_rdata[27]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[27]));
  LUT6 #(
    .INIT(64'h0000000A0000000C)) 
    \s_axi_rdata[27]_INST_0_i_1 
       (.I0(reg_width[27]),
        .I1(\reg_control_reg_n_0_[27] ),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_araddr[3]),
        .I4(s_axi_araddr[2]),
        .I5(s_axi_araddr[1]),
        .O(\s_axi_rdata[27]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \s_axi_rdata[28]_INST_0 
       (.I0(\s_axi_rdata[31]_INST_0_i_1_n_0 ),
        .I1(\reg_status_reg_n_0_[28] ),
        .I2(\s_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I3(reg_height[28]),
        .I4(\s_axi_rdata[28]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[28]));
  LUT6 #(
    .INIT(64'h0000000A0000000C)) 
    \s_axi_rdata[28]_INST_0_i_1 
       (.I0(reg_width[28]),
        .I1(\reg_control_reg_n_0_[28] ),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_araddr[3]),
        .I4(s_axi_araddr[2]),
        .I5(s_axi_araddr[1]),
        .O(\s_axi_rdata[28]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \s_axi_rdata[29]_INST_0 
       (.I0(\s_axi_rdata[31]_INST_0_i_1_n_0 ),
        .I1(\reg_status_reg_n_0_[29] ),
        .I2(\s_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I3(reg_height[29]),
        .I4(\s_axi_rdata[29]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[29]));
  LUT6 #(
    .INIT(64'h0000000A0000000C)) 
    \s_axi_rdata[29]_INST_0_i_1 
       (.I0(reg_width[29]),
        .I1(\reg_control_reg_n_0_[29] ),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_araddr[3]),
        .I4(s_axi_araddr[2]),
        .I5(s_axi_araddr[1]),
        .O(\s_axi_rdata[29]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \s_axi_rdata[2]_INST_0 
       (.I0(\s_axi_rdata[31]_INST_0_i_1_n_0 ),
        .I1(\reg_status_reg_n_0_[2] ),
        .I2(\s_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I3(reg_height[2]),
        .I4(\s_axi_rdata[2]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[2]));
  LUT6 #(
    .INIT(64'h0000000A0000000C)) 
    \s_axi_rdata[2]_INST_0_i_1 
       (.I0(reg_width[2]),
        .I1(\reg_control_reg_n_0_[2] ),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_araddr[3]),
        .I4(s_axi_araddr[2]),
        .I5(s_axi_araddr[1]),
        .O(\s_axi_rdata[2]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \s_axi_rdata[30]_INST_0 
       (.I0(\s_axi_rdata[31]_INST_0_i_1_n_0 ),
        .I1(\reg_status_reg_n_0_[30] ),
        .I2(\s_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I3(reg_height[30]),
        .I4(\s_axi_rdata[30]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[30]));
  LUT6 #(
    .INIT(64'h0000000A0000000C)) 
    \s_axi_rdata[30]_INST_0_i_1 
       (.I0(reg_width[30]),
        .I1(\reg_control_reg_n_0_[30] ),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_araddr[3]),
        .I4(s_axi_araddr[2]),
        .I5(s_axi_araddr[1]),
        .O(\s_axi_rdata[30]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \s_axi_rdata[31]_INST_0 
       (.I0(\s_axi_rdata[31]_INST_0_i_1_n_0 ),
        .I1(\reg_status_reg_n_0_[31] ),
        .I2(\s_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I3(reg_height[31]),
        .I4(\s_axi_rdata[31]_INST_0_i_3_n_0 ),
        .O(s_axi_rdata[31]));
  LUT4 #(
    .INIT(16'h0002)) 
    \s_axi_rdata[31]_INST_0_i_1 
       (.I0(s_axi_araddr[0]),
        .I1(s_axi_araddr[3]),
        .I2(s_axi_araddr[2]),
        .I3(s_axi_araddr[1]),
        .O(\s_axi_rdata[31]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \s_axi_rdata[31]_INST_0_i_2 
       (.I0(s_axi_araddr[0]),
        .I1(s_axi_araddr[3]),
        .I2(s_axi_araddr[2]),
        .I3(s_axi_araddr[1]),
        .O(\s_axi_rdata[31]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000A0000000C)) 
    \s_axi_rdata[31]_INST_0_i_3 
       (.I0(reg_width[31]),
        .I1(\reg_control_reg_n_0_[31] ),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_araddr[3]),
        .I4(s_axi_araddr[2]),
        .I5(s_axi_araddr[1]),
        .O(\s_axi_rdata[31]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \s_axi_rdata[3]_INST_0 
       (.I0(\s_axi_rdata[31]_INST_0_i_1_n_0 ),
        .I1(\reg_status_reg_n_0_[3] ),
        .I2(\s_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I3(reg_height[3]),
        .I4(\s_axi_rdata[3]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[3]));
  LUT6 #(
    .INIT(64'h0000000A0000000C)) 
    \s_axi_rdata[3]_INST_0_i_1 
       (.I0(reg_width[3]),
        .I1(\reg_control_reg_n_0_[3] ),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_araddr[3]),
        .I4(s_axi_araddr[2]),
        .I5(s_axi_araddr[1]),
        .O(\s_axi_rdata[3]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \s_axi_rdata[4]_INST_0 
       (.I0(\s_axi_rdata[31]_INST_0_i_1_n_0 ),
        .I1(\reg_status_reg_n_0_[4] ),
        .I2(\s_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I3(reg_height[4]),
        .I4(\s_axi_rdata[4]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[4]));
  LUT6 #(
    .INIT(64'h0000000A0000000C)) 
    \s_axi_rdata[4]_INST_0_i_1 
       (.I0(reg_width[4]),
        .I1(\reg_control_reg_n_0_[4] ),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_araddr[3]),
        .I4(s_axi_araddr[2]),
        .I5(s_axi_araddr[1]),
        .O(\s_axi_rdata[4]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \s_axi_rdata[5]_INST_0 
       (.I0(\s_axi_rdata[31]_INST_0_i_1_n_0 ),
        .I1(\reg_status_reg_n_0_[5] ),
        .I2(\s_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I3(reg_height[5]),
        .I4(\s_axi_rdata[5]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[5]));
  LUT6 #(
    .INIT(64'h0000000A0000000C)) 
    \s_axi_rdata[5]_INST_0_i_1 
       (.I0(reg_width[5]),
        .I1(\reg_control_reg_n_0_[5] ),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_araddr[3]),
        .I4(s_axi_araddr[2]),
        .I5(s_axi_araddr[1]),
        .O(\s_axi_rdata[5]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \s_axi_rdata[6]_INST_0 
       (.I0(\s_axi_rdata[31]_INST_0_i_1_n_0 ),
        .I1(\reg_status_reg_n_0_[6] ),
        .I2(\s_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I3(reg_height[6]),
        .I4(\s_axi_rdata[6]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[6]));
  LUT6 #(
    .INIT(64'h0000000A0000000C)) 
    \s_axi_rdata[6]_INST_0_i_1 
       (.I0(reg_width[6]),
        .I1(\reg_control_reg_n_0_[6] ),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_araddr[3]),
        .I4(s_axi_araddr[2]),
        .I5(s_axi_araddr[1]),
        .O(\s_axi_rdata[6]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \s_axi_rdata[7]_INST_0 
       (.I0(\s_axi_rdata[31]_INST_0_i_1_n_0 ),
        .I1(\reg_status_reg_n_0_[7] ),
        .I2(\s_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I3(reg_height[7]),
        .I4(\s_axi_rdata[7]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[7]));
  LUT6 #(
    .INIT(64'h0000000A0000000C)) 
    \s_axi_rdata[7]_INST_0_i_1 
       (.I0(reg_width[7]),
        .I1(\reg_control_reg_n_0_[7] ),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_araddr[3]),
        .I4(s_axi_araddr[2]),
        .I5(s_axi_araddr[1]),
        .O(\s_axi_rdata[7]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \s_axi_rdata[8]_INST_0 
       (.I0(\s_axi_rdata[31]_INST_0_i_1_n_0 ),
        .I1(\reg_status_reg_n_0_[8] ),
        .I2(\s_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I3(reg_height[8]),
        .I4(\s_axi_rdata[8]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[8]));
  LUT6 #(
    .INIT(64'h0000000A0000000C)) 
    \s_axi_rdata[8]_INST_0_i_1 
       (.I0(reg_width[8]),
        .I1(\reg_control_reg_n_0_[8] ),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_araddr[3]),
        .I4(s_axi_araddr[2]),
        .I5(s_axi_araddr[1]),
        .O(\s_axi_rdata[8]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \s_axi_rdata[9]_INST_0 
       (.I0(\s_axi_rdata[31]_INST_0_i_1_n_0 ),
        .I1(\reg_status_reg_n_0_[9] ),
        .I2(\s_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I3(reg_height[9]),
        .I4(\s_axi_rdata[9]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[9]));
  LUT6 #(
    .INIT(64'h0000000A0000000C)) 
    \s_axi_rdata[9]_INST_0_i_1 
       (.I0(reg_width[9]),
        .I1(\reg_control_reg_n_0_[9] ),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_araddr[3]),
        .I4(s_axi_araddr[2]),
        .I5(s_axi_araddr[1]),
        .O(\s_axi_rdata[9]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    s_axis_tready_INST_0
       (.I0(out_valid_reg_reg_0),
        .I1(proc_state[0]),
        .I2(proc_state[1]),
        .I3(s_axis_tready_INST_0_i_1_n_0),
        .O(s_axis_tready));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    s_axis_tready_INST_0_i_1
       (.I0(\unpack_bits_left_reg_n_0_[4] ),
        .I1(\unpack_bits_left_reg_n_0_[2] ),
        .I2(\unpack_bits_left_reg_n_0_[0] ),
        .I3(\unpack_bits_left_reg_n_0_[1] ),
        .I4(\unpack_bits_left_reg_n_0_[3] ),
        .I5(\unpack_bits_left_reg_n_0_[5] ),
        .O(s_axis_tready_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \unpack_bits_left[0]_i_1 
       (.I0(\out_data_reg[17]_i_3_n_0 ),
        .I1(\unpack_bits_left_reg_n_0_[0] ),
        .O(\unpack_bits_left[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \unpack_bits_left[1]_i_1 
       (.I0(\out_data_reg[17]_i_3_n_0 ),
        .I1(\unpack_bits_left_reg_n_0_[0] ),
        .I2(\unpack_bits_left_reg_n_0_[1] ),
        .O(\unpack_bits_left[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hA802)) 
    \unpack_bits_left[2]_i_1 
       (.I0(\out_data_reg[17]_i_3_n_0 ),
        .I1(\unpack_bits_left_reg_n_0_[1] ),
        .I2(\unpack_bits_left_reg_n_0_[0] ),
        .I3(\unpack_bits_left_reg_n_0_[2] ),
        .O(\unpack_bits_left[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hAAA80002)) 
    \unpack_bits_left[3]_i_1 
       (.I0(\out_data_reg[17]_i_3_n_0 ),
        .I1(\unpack_bits_left_reg_n_0_[2] ),
        .I2(\unpack_bits_left_reg_n_0_[0] ),
        .I3(\unpack_bits_left_reg_n_0_[1] ),
        .I4(\unpack_bits_left_reg_n_0_[3] ),
        .O(\unpack_bits_left[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA800000002)) 
    \unpack_bits_left[4]_i_1 
       (.I0(\out_data_reg[17]_i_3_n_0 ),
        .I1(\unpack_bits_left_reg_n_0_[3] ),
        .I2(\unpack_bits_left_reg_n_0_[1] ),
        .I3(\unpack_bits_left_reg_n_0_[0] ),
        .I4(\unpack_bits_left_reg_n_0_[2] ),
        .I5(\unpack_bits_left_reg_n_0_[4] ),
        .O(\unpack_bits_left[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h030F030B)) 
    \unpack_bits_left[5]_i_1 
       (.I0(s_axis_tvalid),
        .I1(proc_state[0]),
        .I2(proc_state[1]),
        .I3(out_valid_reg_reg_0),
        .I4(s_axis_tready_INST_0_i_1_n_0),
        .O(unpack_bits_left));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hF900)) 
    \unpack_bits_left[5]_i_2 
       (.I0(\unpack_bits_left_reg_n_0_[5] ),
        .I1(\unpack_bits_left[5]_i_3_n_0 ),
        .I2(out_valid_reg_reg_0),
        .I3(proc_state[0]),
        .O(\unpack_bits_left[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \unpack_bits_left[5]_i_3 
       (.I0(\unpack_bits_left_reg_n_0_[3] ),
        .I1(\unpack_bits_left_reg_n_0_[1] ),
        .I2(\unpack_bits_left_reg_n_0_[0] ),
        .I3(\unpack_bits_left_reg_n_0_[2] ),
        .I4(\unpack_bits_left_reg_n_0_[4] ),
        .O(\unpack_bits_left[5]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \unpack_bits_left_reg[0] 
       (.C(aclkrst_clk),
        .CE(unpack_bits_left),
        .D(\unpack_bits_left[0]_i_1_n_0 ),
        .Q(\unpack_bits_left_reg_n_0_[0] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \unpack_bits_left_reg[1] 
       (.C(aclkrst_clk),
        .CE(unpack_bits_left),
        .D(\unpack_bits_left[1]_i_1_n_0 ),
        .Q(\unpack_bits_left_reg_n_0_[1] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \unpack_bits_left_reg[2] 
       (.C(aclkrst_clk),
        .CE(unpack_bits_left),
        .D(\unpack_bits_left[2]_i_1_n_0 ),
        .Q(\unpack_bits_left_reg_n_0_[2] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \unpack_bits_left_reg[3] 
       (.C(aclkrst_clk),
        .CE(unpack_bits_left),
        .D(\unpack_bits_left[3]_i_1_n_0 ),
        .Q(\unpack_bits_left_reg_n_0_[3] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \unpack_bits_left_reg[4] 
       (.C(aclkrst_clk),
        .CE(unpack_bits_left),
        .D(\unpack_bits_left[4]_i_1_n_0 ),
        .Q(\unpack_bits_left_reg_n_0_[4] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \unpack_bits_left_reg[5] 
       (.C(aclkrst_clk),
        .CE(unpack_bits_left),
        .D(\unpack_bits_left[5]_i_2_n_0 ),
        .Q(\unpack_bits_left_reg_n_0_[5] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000020)) 
    \unpack_shift_reg[31]_i_1 
       (.I0(proc_state[0]),
        .I1(proc_state[1]),
        .I2(s_axis_tvalid),
        .I3(out_valid_reg_reg_0),
        .I4(s_axis_tready_INST_0_i_1_n_0),
        .O(unpack_shift_reg));
  FDRE #(
    .INIT(1'b0)) 
    \unpack_shift_reg_reg[0] 
       (.C(aclkrst_clk),
        .CE(unpack_shift_reg),
        .D(s_axis_tdata[0]),
        .Q(\unpack_shift_reg_reg_n_0_[0] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \unpack_shift_reg_reg[10] 
       (.C(aclkrst_clk),
        .CE(unpack_shift_reg),
        .D(s_axis_tdata[10]),
        .Q(\unpack_shift_reg_reg_n_0_[10] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \unpack_shift_reg_reg[11] 
       (.C(aclkrst_clk),
        .CE(unpack_shift_reg),
        .D(s_axis_tdata[11]),
        .Q(\unpack_shift_reg_reg_n_0_[11] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \unpack_shift_reg_reg[12] 
       (.C(aclkrst_clk),
        .CE(unpack_shift_reg),
        .D(s_axis_tdata[12]),
        .Q(\unpack_shift_reg_reg_n_0_[12] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \unpack_shift_reg_reg[13] 
       (.C(aclkrst_clk),
        .CE(unpack_shift_reg),
        .D(s_axis_tdata[13]),
        .Q(\unpack_shift_reg_reg_n_0_[13] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \unpack_shift_reg_reg[14] 
       (.C(aclkrst_clk),
        .CE(unpack_shift_reg),
        .D(s_axis_tdata[14]),
        .Q(\unpack_shift_reg_reg_n_0_[14] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \unpack_shift_reg_reg[15] 
       (.C(aclkrst_clk),
        .CE(unpack_shift_reg),
        .D(s_axis_tdata[15]),
        .Q(\unpack_shift_reg_reg_n_0_[15] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \unpack_shift_reg_reg[16] 
       (.C(aclkrst_clk),
        .CE(unpack_shift_reg),
        .D(s_axis_tdata[16]),
        .Q(\unpack_shift_reg_reg_n_0_[16] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \unpack_shift_reg_reg[17] 
       (.C(aclkrst_clk),
        .CE(unpack_shift_reg),
        .D(s_axis_tdata[17]),
        .Q(\unpack_shift_reg_reg_n_0_[17] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \unpack_shift_reg_reg[18] 
       (.C(aclkrst_clk),
        .CE(unpack_shift_reg),
        .D(s_axis_tdata[18]),
        .Q(\unpack_shift_reg_reg_n_0_[18] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \unpack_shift_reg_reg[19] 
       (.C(aclkrst_clk),
        .CE(unpack_shift_reg),
        .D(s_axis_tdata[19]),
        .Q(\unpack_shift_reg_reg_n_0_[19] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \unpack_shift_reg_reg[1] 
       (.C(aclkrst_clk),
        .CE(unpack_shift_reg),
        .D(s_axis_tdata[1]),
        .Q(\unpack_shift_reg_reg_n_0_[1] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \unpack_shift_reg_reg[20] 
       (.C(aclkrst_clk),
        .CE(unpack_shift_reg),
        .D(s_axis_tdata[20]),
        .Q(\unpack_shift_reg_reg_n_0_[20] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \unpack_shift_reg_reg[21] 
       (.C(aclkrst_clk),
        .CE(unpack_shift_reg),
        .D(s_axis_tdata[21]),
        .Q(\unpack_shift_reg_reg_n_0_[21] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \unpack_shift_reg_reg[22] 
       (.C(aclkrst_clk),
        .CE(unpack_shift_reg),
        .D(s_axis_tdata[22]),
        .Q(\unpack_shift_reg_reg_n_0_[22] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \unpack_shift_reg_reg[23] 
       (.C(aclkrst_clk),
        .CE(unpack_shift_reg),
        .D(s_axis_tdata[23]),
        .Q(\unpack_shift_reg_reg_n_0_[23] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \unpack_shift_reg_reg[24] 
       (.C(aclkrst_clk),
        .CE(unpack_shift_reg),
        .D(s_axis_tdata[24]),
        .Q(\unpack_shift_reg_reg_n_0_[24] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \unpack_shift_reg_reg[25] 
       (.C(aclkrst_clk),
        .CE(unpack_shift_reg),
        .D(s_axis_tdata[25]),
        .Q(\unpack_shift_reg_reg_n_0_[25] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \unpack_shift_reg_reg[26] 
       (.C(aclkrst_clk),
        .CE(unpack_shift_reg),
        .D(s_axis_tdata[26]),
        .Q(\unpack_shift_reg_reg_n_0_[26] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \unpack_shift_reg_reg[27] 
       (.C(aclkrst_clk),
        .CE(unpack_shift_reg),
        .D(s_axis_tdata[27]),
        .Q(\unpack_shift_reg_reg_n_0_[27] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \unpack_shift_reg_reg[28] 
       (.C(aclkrst_clk),
        .CE(unpack_shift_reg),
        .D(s_axis_tdata[28]),
        .Q(\unpack_shift_reg_reg_n_0_[28] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \unpack_shift_reg_reg[29] 
       (.C(aclkrst_clk),
        .CE(unpack_shift_reg),
        .D(s_axis_tdata[29]),
        .Q(\unpack_shift_reg_reg_n_0_[29] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \unpack_shift_reg_reg[2] 
       (.C(aclkrst_clk),
        .CE(unpack_shift_reg),
        .D(s_axis_tdata[2]),
        .Q(\unpack_shift_reg_reg_n_0_[2] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \unpack_shift_reg_reg[30] 
       (.C(aclkrst_clk),
        .CE(unpack_shift_reg),
        .D(s_axis_tdata[30]),
        .Q(\unpack_shift_reg_reg_n_0_[30] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \unpack_shift_reg_reg[31] 
       (.C(aclkrst_clk),
        .CE(unpack_shift_reg),
        .D(s_axis_tdata[31]),
        .Q(\unpack_shift_reg_reg_n_0_[31] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \unpack_shift_reg_reg[3] 
       (.C(aclkrst_clk),
        .CE(unpack_shift_reg),
        .D(s_axis_tdata[3]),
        .Q(\unpack_shift_reg_reg_n_0_[3] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \unpack_shift_reg_reg[4] 
       (.C(aclkrst_clk),
        .CE(unpack_shift_reg),
        .D(s_axis_tdata[4]),
        .Q(\unpack_shift_reg_reg_n_0_[4] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \unpack_shift_reg_reg[5] 
       (.C(aclkrst_clk),
        .CE(unpack_shift_reg),
        .D(s_axis_tdata[5]),
        .Q(\unpack_shift_reg_reg_n_0_[5] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \unpack_shift_reg_reg[6] 
       (.C(aclkrst_clk),
        .CE(unpack_shift_reg),
        .D(s_axis_tdata[6]),
        .Q(\unpack_shift_reg_reg_n_0_[6] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \unpack_shift_reg_reg[7] 
       (.C(aclkrst_clk),
        .CE(unpack_shift_reg),
        .D(s_axis_tdata[7]),
        .Q(\unpack_shift_reg_reg_n_0_[7] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \unpack_shift_reg_reg[8] 
       (.C(aclkrst_clk),
        .CE(unpack_shift_reg),
        .D(s_axis_tdata[8]),
        .Q(\unpack_shift_reg_reg_n_0_[8] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \unpack_shift_reg_reg[9] 
       (.C(aclkrst_clk),
        .CE(unpack_shift_reg),
        .D(s_axis_tdata[9]),
        .Q(\unpack_shift_reg_reg_n_0_[9] ),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \width_u_reg[0] 
       (.C(aclkrst_clk),
        .CE(1'b1),
        .D(reg_width[0]),
        .Q(width_u[0]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \width_u_reg[10] 
       (.C(aclkrst_clk),
        .CE(1'b1),
        .D(reg_width[10]),
        .Q(width_u[10]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \width_u_reg[11] 
       (.C(aclkrst_clk),
        .CE(1'b1),
        .D(reg_width[11]),
        .Q(width_u[11]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \width_u_reg[12] 
       (.C(aclkrst_clk),
        .CE(1'b1),
        .D(reg_width[12]),
        .Q(width_u[12]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \width_u_reg[13] 
       (.C(aclkrst_clk),
        .CE(1'b1),
        .D(reg_width[13]),
        .Q(width_u[13]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \width_u_reg[14] 
       (.C(aclkrst_clk),
        .CE(1'b1),
        .D(reg_width[14]),
        .Q(width_u[14]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \width_u_reg[15] 
       (.C(aclkrst_clk),
        .CE(1'b1),
        .D(reg_width[15]),
        .Q(width_u[15]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \width_u_reg[16] 
       (.C(aclkrst_clk),
        .CE(1'b1),
        .D(reg_width[16]),
        .Q(width_u[16]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \width_u_reg[17] 
       (.C(aclkrst_clk),
        .CE(1'b1),
        .D(reg_width[17]),
        .Q(width_u[17]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \width_u_reg[18] 
       (.C(aclkrst_clk),
        .CE(1'b1),
        .D(reg_width[18]),
        .Q(width_u[18]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \width_u_reg[19] 
       (.C(aclkrst_clk),
        .CE(1'b1),
        .D(reg_width[19]),
        .Q(width_u[19]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \width_u_reg[1] 
       (.C(aclkrst_clk),
        .CE(1'b1),
        .D(reg_width[1]),
        .Q(width_u[1]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \width_u_reg[20] 
       (.C(aclkrst_clk),
        .CE(1'b1),
        .D(reg_width[20]),
        .Q(width_u[20]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \width_u_reg[21] 
       (.C(aclkrst_clk),
        .CE(1'b1),
        .D(reg_width[21]),
        .Q(width_u[21]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \width_u_reg[22] 
       (.C(aclkrst_clk),
        .CE(1'b1),
        .D(reg_width[22]),
        .Q(width_u[22]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \width_u_reg[23] 
       (.C(aclkrst_clk),
        .CE(1'b1),
        .D(reg_width[23]),
        .Q(width_u[23]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \width_u_reg[24] 
       (.C(aclkrst_clk),
        .CE(1'b1),
        .D(reg_width[24]),
        .Q(width_u[24]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \width_u_reg[25] 
       (.C(aclkrst_clk),
        .CE(1'b1),
        .D(reg_width[25]),
        .Q(width_u[25]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \width_u_reg[26] 
       (.C(aclkrst_clk),
        .CE(1'b1),
        .D(reg_width[26]),
        .Q(width_u[26]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \width_u_reg[27] 
       (.C(aclkrst_clk),
        .CE(1'b1),
        .D(reg_width[27]),
        .Q(width_u[27]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \width_u_reg[28] 
       (.C(aclkrst_clk),
        .CE(1'b1),
        .D(reg_width[28]),
        .Q(width_u[28]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \width_u_reg[29] 
       (.C(aclkrst_clk),
        .CE(1'b1),
        .D(reg_width[29]),
        .Q(width_u[29]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \width_u_reg[2] 
       (.C(aclkrst_clk),
        .CE(1'b1),
        .D(reg_width[2]),
        .Q(width_u[2]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \width_u_reg[30] 
       (.C(aclkrst_clk),
        .CE(1'b1),
        .D(reg_width[30]),
        .Q(width_u[30]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \width_u_reg[31] 
       (.C(aclkrst_clk),
        .CE(1'b1),
        .D(reg_width[31]),
        .Q(width_u[31]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \width_u_reg[3] 
       (.C(aclkrst_clk),
        .CE(1'b1),
        .D(reg_width[3]),
        .Q(width_u[3]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \width_u_reg[4] 
       (.C(aclkrst_clk),
        .CE(1'b1),
        .D(reg_width[4]),
        .Q(width_u[4]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \width_u_reg[5] 
       (.C(aclkrst_clk),
        .CE(1'b1),
        .D(reg_width[5]),
        .Q(width_u[5]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \width_u_reg[6] 
       (.C(aclkrst_clk),
        .CE(1'b1),
        .D(reg_width[6]),
        .Q(width_u[6]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \width_u_reg[7] 
       (.C(aclkrst_clk),
        .CE(1'b1),
        .D(reg_width[7]),
        .Q(width_u[7]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \width_u_reg[8] 
       (.C(aclkrst_clk),
        .CE(1'b1),
        .D(reg_width[8]),
        .Q(width_u[8]),
        .R(\out_data_reg[17]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \width_u_reg[9] 
       (.C(aclkrst_clk),
        .CE(1'b1),
        .D(reg_width[9]),
        .Q(width_u[9]),
        .S(\out_data_reg[17]_i_1_n_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
