// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Sun Nov 16 12:35:55 2025
// Host        : POWERSLAVE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/FACULTATE/facultate/anul3/sem1/SSC/proiect/utcn-bounding-box-detection-on-PYNQ-Z1/PL/PL.gen/sources_1/bd/design_1/ip/design_1_ccl_relabel_core_0_0/design_1_ccl_relabel_core_0_0_sim_netlist.v
// Design      : design_1_ccl_relabel_core_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_ccl_relabel_core_0_0,ccl_relabel_core,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "ccl_relabel_core,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module design_1_ccl_relabel_core_0_0
   (aclkrst_clk,
    aclkrst_n,
    slices_done,
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
    m_axi_lut_rready,
    irq_done);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 aclkrst_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME aclkrst_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input aclkrst_clk;
  input aclkrst_n;
  input [3:0]slices_done;
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
  output irq_done;

  wire \<const0> ;
  wire \<const1> ;
  wire aclkrst_clk;
  wire aclkrst_n;
  wire irq_done;
  wire [31:0]m_axis_tdata;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [31:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire [3:0]slices_done;

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
  assign m_axi_lut_rready = \<const1> ;
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
  assign m_axis_tlast = s_axis_tlast;
  assign s_axi_arready = \<const1> ;
  assign s_axi_awready = \<const1> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_bvalid = \<const1> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_rvalid = \<const1> ;
  assign s_axi_wready = \<const1> ;
  GND GND
       (.G(\<const0> ));
  design_1_ccl_relabel_core_0_0_ccl_relabel_core U0
       (.aclkrst_clk(aclkrst_clk),
        .aclkrst_n(aclkrst_n),
        .irq_done(irq_done),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid),
        .slices_done(slices_done));
  VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "ccl_relabel_core" *) 
module design_1_ccl_relabel_core_0_0_ccl_relabel_core
   (m_axis_tdata,
    irq_done,
    m_axis_tvalid,
    s_axis_tready,
    s_axis_tlast,
    aclkrst_n,
    aclkrst_clk,
    s_axis_tdata,
    m_axis_tready,
    s_axis_tvalid,
    slices_done);
  output [31:0]m_axis_tdata;
  output irq_done;
  output m_axis_tvalid;
  output s_axis_tready;
  input s_axis_tlast;
  input aclkrst_n;
  input aclkrst_clk;
  input [31:0]s_axis_tdata;
  input m_axis_tready;
  input s_axis_tvalid;
  input [3:0]slices_done;

  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_2_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire aclkrst_clk;
  wire aclkrst_n;
  wire irq_done;
  wire irq_done_reg_i_1_n_0;
  wire [31:0]m_axis_tdata;
  wire m_axis_tdata_int;
  wire \m_axis_tdata_int[31]_i_1_n_0 ;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire m_axis_tvalid_int_i_1_n_0;
  wire m_axis_tvalid_int_i_2_n_0;
  wire [31:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire [3:0]slices_done;
  wire state1__0;

  LUT6 #(
    .INIT(64'h00002AAAFFFFFFFF)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(s_axis_tlast),
        .I3(state1__0),
        .I4(\FSM_onehot_state[2]_i_2_n_0 ),
        .I5(aclkrst_n),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAA002A00000000)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(s_axis_tlast),
        .I2(state1__0),
        .I3(\FSM_onehot_state[2]_i_2_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .I5(aclkrst_n),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCEAAA00000000)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(s_axis_tlast),
        .I3(state1__0),
        .I4(\FSM_onehot_state[2]_i_2_n_0 ),
        .I5(aclkrst_n),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \FSM_onehot_state[2]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(slices_done[1]),
        .I2(slices_done[0]),
        .I3(slices_done[2]),
        .I4(slices_done[3]),
        .O(\FSM_onehot_state[2]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "wait_slices:001,running:010,done:100," *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(aclkrst_clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "wait_slices:001,running:010,done:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(aclkrst_clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "wait_slices:001,running:010,done:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(aclkrst_clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hC0C0EAAA00000000)) 
    irq_done_reg_i_1
       (.I0(irq_done),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(s_axis_tlast),
        .I3(state1__0),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .I5(aclkrst_n),
        .O(irq_done_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h80)) 
    irq_done_reg_i_2
       (.I0(s_axis_tvalid),
        .I1(m_axis_tready),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .O(state1__0));
  FDRE #(
    .INIT(1'b0)) 
    irq_done_reg_reg
       (.C(aclkrst_clk),
        .CE(1'b1),
        .D(irq_done_reg_i_1_n_0),
        .Q(irq_done),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tdata_int[31]_i_1 
       (.I0(aclkrst_n),
        .O(\m_axis_tdata_int[31]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \m_axis_tdata_int[31]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(m_axis_tready),
        .I2(s_axis_tvalid),
        .O(m_axis_tdata_int));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_reg[0] 
       (.C(aclkrst_clk),
        .CE(m_axis_tdata_int),
        .D(s_axis_tdata[0]),
        .Q(m_axis_tdata[0]),
        .R(\m_axis_tdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_reg[10] 
       (.C(aclkrst_clk),
        .CE(m_axis_tdata_int),
        .D(s_axis_tdata[10]),
        .Q(m_axis_tdata[10]),
        .R(\m_axis_tdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_reg[11] 
       (.C(aclkrst_clk),
        .CE(m_axis_tdata_int),
        .D(s_axis_tdata[11]),
        .Q(m_axis_tdata[11]),
        .R(\m_axis_tdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_reg[12] 
       (.C(aclkrst_clk),
        .CE(m_axis_tdata_int),
        .D(s_axis_tdata[12]),
        .Q(m_axis_tdata[12]),
        .R(\m_axis_tdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_reg[13] 
       (.C(aclkrst_clk),
        .CE(m_axis_tdata_int),
        .D(s_axis_tdata[13]),
        .Q(m_axis_tdata[13]),
        .R(\m_axis_tdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_reg[14] 
       (.C(aclkrst_clk),
        .CE(m_axis_tdata_int),
        .D(s_axis_tdata[14]),
        .Q(m_axis_tdata[14]),
        .R(\m_axis_tdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_reg[15] 
       (.C(aclkrst_clk),
        .CE(m_axis_tdata_int),
        .D(s_axis_tdata[15]),
        .Q(m_axis_tdata[15]),
        .R(\m_axis_tdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_reg[16] 
       (.C(aclkrst_clk),
        .CE(m_axis_tdata_int),
        .D(s_axis_tdata[16]),
        .Q(m_axis_tdata[16]),
        .R(\m_axis_tdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_reg[17] 
       (.C(aclkrst_clk),
        .CE(m_axis_tdata_int),
        .D(s_axis_tdata[17]),
        .Q(m_axis_tdata[17]),
        .R(\m_axis_tdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_reg[18] 
       (.C(aclkrst_clk),
        .CE(m_axis_tdata_int),
        .D(s_axis_tdata[18]),
        .Q(m_axis_tdata[18]),
        .R(\m_axis_tdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_reg[19] 
       (.C(aclkrst_clk),
        .CE(m_axis_tdata_int),
        .D(s_axis_tdata[19]),
        .Q(m_axis_tdata[19]),
        .R(\m_axis_tdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_reg[1] 
       (.C(aclkrst_clk),
        .CE(m_axis_tdata_int),
        .D(s_axis_tdata[1]),
        .Q(m_axis_tdata[1]),
        .R(\m_axis_tdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_reg[20] 
       (.C(aclkrst_clk),
        .CE(m_axis_tdata_int),
        .D(s_axis_tdata[20]),
        .Q(m_axis_tdata[20]),
        .R(\m_axis_tdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_reg[21] 
       (.C(aclkrst_clk),
        .CE(m_axis_tdata_int),
        .D(s_axis_tdata[21]),
        .Q(m_axis_tdata[21]),
        .R(\m_axis_tdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_reg[22] 
       (.C(aclkrst_clk),
        .CE(m_axis_tdata_int),
        .D(s_axis_tdata[22]),
        .Q(m_axis_tdata[22]),
        .R(\m_axis_tdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_reg[23] 
       (.C(aclkrst_clk),
        .CE(m_axis_tdata_int),
        .D(s_axis_tdata[23]),
        .Q(m_axis_tdata[23]),
        .R(\m_axis_tdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_reg[24] 
       (.C(aclkrst_clk),
        .CE(m_axis_tdata_int),
        .D(s_axis_tdata[24]),
        .Q(m_axis_tdata[24]),
        .R(\m_axis_tdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_reg[25] 
       (.C(aclkrst_clk),
        .CE(m_axis_tdata_int),
        .D(s_axis_tdata[25]),
        .Q(m_axis_tdata[25]),
        .R(\m_axis_tdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_reg[26] 
       (.C(aclkrst_clk),
        .CE(m_axis_tdata_int),
        .D(s_axis_tdata[26]),
        .Q(m_axis_tdata[26]),
        .R(\m_axis_tdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_reg[27] 
       (.C(aclkrst_clk),
        .CE(m_axis_tdata_int),
        .D(s_axis_tdata[27]),
        .Q(m_axis_tdata[27]),
        .R(\m_axis_tdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_reg[28] 
       (.C(aclkrst_clk),
        .CE(m_axis_tdata_int),
        .D(s_axis_tdata[28]),
        .Q(m_axis_tdata[28]),
        .R(\m_axis_tdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_reg[29] 
       (.C(aclkrst_clk),
        .CE(m_axis_tdata_int),
        .D(s_axis_tdata[29]),
        .Q(m_axis_tdata[29]),
        .R(\m_axis_tdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_reg[2] 
       (.C(aclkrst_clk),
        .CE(m_axis_tdata_int),
        .D(s_axis_tdata[2]),
        .Q(m_axis_tdata[2]),
        .R(\m_axis_tdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_reg[30] 
       (.C(aclkrst_clk),
        .CE(m_axis_tdata_int),
        .D(s_axis_tdata[30]),
        .Q(m_axis_tdata[30]),
        .R(\m_axis_tdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_reg[31] 
       (.C(aclkrst_clk),
        .CE(m_axis_tdata_int),
        .D(s_axis_tdata[31]),
        .Q(m_axis_tdata[31]),
        .R(\m_axis_tdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_reg[3] 
       (.C(aclkrst_clk),
        .CE(m_axis_tdata_int),
        .D(s_axis_tdata[3]),
        .Q(m_axis_tdata[3]),
        .R(\m_axis_tdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_reg[4] 
       (.C(aclkrst_clk),
        .CE(m_axis_tdata_int),
        .D(s_axis_tdata[4]),
        .Q(m_axis_tdata[4]),
        .R(\m_axis_tdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_reg[5] 
       (.C(aclkrst_clk),
        .CE(m_axis_tdata_int),
        .D(s_axis_tdata[5]),
        .Q(m_axis_tdata[5]),
        .R(\m_axis_tdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_reg[6] 
       (.C(aclkrst_clk),
        .CE(m_axis_tdata_int),
        .D(s_axis_tdata[6]),
        .Q(m_axis_tdata[6]),
        .R(\m_axis_tdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_reg[7] 
       (.C(aclkrst_clk),
        .CE(m_axis_tdata_int),
        .D(s_axis_tdata[7]),
        .Q(m_axis_tdata[7]),
        .R(\m_axis_tdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_reg[8] 
       (.C(aclkrst_clk),
        .CE(m_axis_tdata_int),
        .D(s_axis_tdata[8]),
        .Q(m_axis_tdata[8]),
        .R(\m_axis_tdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_int_reg[9] 
       (.C(aclkrst_clk),
        .CE(m_axis_tdata_int),
        .D(s_axis_tdata[9]),
        .Q(m_axis_tdata[9]),
        .R(\m_axis_tdata_int[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    m_axis_tvalid_int_i_1
       (.I0(m_axis_tvalid_int_i_2_n_0),
        .I1(aclkrst_n),
        .O(m_axis_tvalid_int_i_1_n_0));
  LUT6 #(
    .INIT(64'hCC000000DC105050)) 
    m_axis_tvalid_int_i_2
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(m_axis_tready),
        .I2(m_axis_tvalid),
        .I3(s_axis_tvalid),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .I5(\FSM_onehot_state_reg_n_0_[2] ),
        .O(m_axis_tvalid_int_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    m_axis_tvalid_int_reg
       (.C(aclkrst_clk),
        .CE(1'b1),
        .D(m_axis_tvalid_int_i_1_n_0),
        .Q(m_axis_tvalid),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    s_axis_tready_INST_0
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(m_axis_tready),
        .O(s_axis_tready));
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
