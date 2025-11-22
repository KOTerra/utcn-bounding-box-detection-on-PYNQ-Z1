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


#include "design_1_smartconnect_0_0_sc.h"

#include "design_1_smartconnect_0_0.h"

#include "smartconnect.h"

#include <map>
#include <string>





#ifdef XILINX_SIMULATOR
design_1_smartconnect_0_0::design_1_smartconnect_0_0(const sc_core::sc_module_name& nm) : design_1_smartconnect_0_0_sc(nm), aclk("aclk"), aresetn("aresetn"), S00_AXI_araddr("S00_AXI_araddr"), S00_AXI_arlen("S00_AXI_arlen"), S00_AXI_arsize("S00_AXI_arsize"), S00_AXI_arburst("S00_AXI_arburst"), S00_AXI_arlock("S00_AXI_arlock"), S00_AXI_arcache("S00_AXI_arcache"), S00_AXI_arprot("S00_AXI_arprot"), S00_AXI_arqos("S00_AXI_arqos"), S00_AXI_arvalid("S00_AXI_arvalid"), S00_AXI_arready("S00_AXI_arready"), S00_AXI_rdata("S00_AXI_rdata"), S00_AXI_rresp("S00_AXI_rresp"), S00_AXI_rlast("S00_AXI_rlast"), S00_AXI_rvalid("S00_AXI_rvalid"), S00_AXI_rready("S00_AXI_rready"), S01_AXI_awaddr("S01_AXI_awaddr"), S01_AXI_awlen("S01_AXI_awlen"), S01_AXI_awsize("S01_AXI_awsize"), S01_AXI_awburst("S01_AXI_awburst"), S01_AXI_awlock("S01_AXI_awlock"), S01_AXI_awcache("S01_AXI_awcache"), S01_AXI_awprot("S01_AXI_awprot"), S01_AXI_awqos("S01_AXI_awqos"), S01_AXI_awvalid("S01_AXI_awvalid"), S01_AXI_awready("S01_AXI_awready"), S01_AXI_wdata("S01_AXI_wdata"), S01_AXI_wstrb("S01_AXI_wstrb"), S01_AXI_wlast("S01_AXI_wlast"), S01_AXI_wvalid("S01_AXI_wvalid"), S01_AXI_wready("S01_AXI_wready"), S01_AXI_bresp("S01_AXI_bresp"), S01_AXI_bvalid("S01_AXI_bvalid"), S01_AXI_bready("S01_AXI_bready"), S02_AXI_araddr("S02_AXI_araddr"), S02_AXI_arlen("S02_AXI_arlen"), S02_AXI_arsize("S02_AXI_arsize"), S02_AXI_arburst("S02_AXI_arburst"), S02_AXI_arlock("S02_AXI_arlock"), S02_AXI_arcache("S02_AXI_arcache"), S02_AXI_arprot("S02_AXI_arprot"), S02_AXI_arqos("S02_AXI_arqos"), S02_AXI_arvalid("S02_AXI_arvalid"), S02_AXI_arready("S02_AXI_arready"), S02_AXI_rdata("S02_AXI_rdata"), S02_AXI_rresp("S02_AXI_rresp"), S02_AXI_rlast("S02_AXI_rlast"), S02_AXI_rvalid("S02_AXI_rvalid"), S02_AXI_rready("S02_AXI_rready"), S03_AXI_awaddr("S03_AXI_awaddr"), S03_AXI_awlen("S03_AXI_awlen"), S03_AXI_awsize("S03_AXI_awsize"), S03_AXI_awburst("S03_AXI_awburst"), S03_AXI_awlock("S03_AXI_awlock"), S03_AXI_awcache("S03_AXI_awcache"), S03_AXI_awprot("S03_AXI_awprot"), S03_AXI_awqos("S03_AXI_awqos"), S03_AXI_awvalid("S03_AXI_awvalid"), S03_AXI_awready("S03_AXI_awready"), S03_AXI_wdata("S03_AXI_wdata"), S03_AXI_wstrb("S03_AXI_wstrb"), S03_AXI_wlast("S03_AXI_wlast"), S03_AXI_wvalid("S03_AXI_wvalid"), S03_AXI_wready("S03_AXI_wready"), S03_AXI_bresp("S03_AXI_bresp"), S03_AXI_bvalid("S03_AXI_bvalid"), S03_AXI_bready("S03_AXI_bready"), S04_AXI_araddr("S04_AXI_araddr"), S04_AXI_arlen("S04_AXI_arlen"), S04_AXI_arsize("S04_AXI_arsize"), S04_AXI_arburst("S04_AXI_arburst"), S04_AXI_arlock("S04_AXI_arlock"), S04_AXI_arcache("S04_AXI_arcache"), S04_AXI_arprot("S04_AXI_arprot"), S04_AXI_arqos("S04_AXI_arqos"), S04_AXI_arvalid("S04_AXI_arvalid"), S04_AXI_arready("S04_AXI_arready"), S04_AXI_rdata("S04_AXI_rdata"), S04_AXI_rresp("S04_AXI_rresp"), S04_AXI_rlast("S04_AXI_rlast"), S04_AXI_rvalid("S04_AXI_rvalid"), S04_AXI_rready("S04_AXI_rready"), S05_AXI_awaddr("S05_AXI_awaddr"), S05_AXI_awlen("S05_AXI_awlen"), S05_AXI_awsize("S05_AXI_awsize"), S05_AXI_awburst("S05_AXI_awburst"), S05_AXI_awlock("S05_AXI_awlock"), S05_AXI_awcache("S05_AXI_awcache"), S05_AXI_awprot("S05_AXI_awprot"), S05_AXI_awqos("S05_AXI_awqos"), S05_AXI_awvalid("S05_AXI_awvalid"), S05_AXI_awready("S05_AXI_awready"), S05_AXI_wdata("S05_AXI_wdata"), S05_AXI_wstrb("S05_AXI_wstrb"), S05_AXI_wlast("S05_AXI_wlast"), S05_AXI_wvalid("S05_AXI_wvalid"), S05_AXI_wready("S05_AXI_wready"), S05_AXI_bresp("S05_AXI_bresp"), S05_AXI_bvalid("S05_AXI_bvalid"), S05_AXI_bready("S05_AXI_bready"), S06_AXI_araddr("S06_AXI_araddr"), S06_AXI_arlen("S06_AXI_arlen"), S06_AXI_arsize("S06_AXI_arsize"), S06_AXI_arburst("S06_AXI_arburst"), S06_AXI_arlock("S06_AXI_arlock"), S06_AXI_arcache("S06_AXI_arcache"), S06_AXI_arprot("S06_AXI_arprot"), S06_AXI_arqos("S06_AXI_arqos"), S06_AXI_arvalid("S06_AXI_arvalid"), S06_AXI_arready("S06_AXI_arready"), S06_AXI_rdata("S06_AXI_rdata"), S06_AXI_rresp("S06_AXI_rresp"), S06_AXI_rlast("S06_AXI_rlast"), S06_AXI_rvalid("S06_AXI_rvalid"), S06_AXI_rready("S06_AXI_rready"), S07_AXI_awaddr("S07_AXI_awaddr"), S07_AXI_awlen("S07_AXI_awlen"), S07_AXI_awsize("S07_AXI_awsize"), S07_AXI_awburst("S07_AXI_awburst"), S07_AXI_awlock("S07_AXI_awlock"), S07_AXI_awcache("S07_AXI_awcache"), S07_AXI_awprot("S07_AXI_awprot"), S07_AXI_awqos("S07_AXI_awqos"), S07_AXI_awvalid("S07_AXI_awvalid"), S07_AXI_awready("S07_AXI_awready"), S07_AXI_wdata("S07_AXI_wdata"), S07_AXI_wstrb("S07_AXI_wstrb"), S07_AXI_wlast("S07_AXI_wlast"), S07_AXI_wvalid("S07_AXI_wvalid"), S07_AXI_wready("S07_AXI_wready"), S07_AXI_bresp("S07_AXI_bresp"), S07_AXI_bvalid("S07_AXI_bvalid"), S07_AXI_bready("S07_AXI_bready"), S08_AXI_araddr("S08_AXI_araddr"), S08_AXI_arlen("S08_AXI_arlen"), S08_AXI_arsize("S08_AXI_arsize"), S08_AXI_arburst("S08_AXI_arburst"), S08_AXI_arlock("S08_AXI_arlock"), S08_AXI_arcache("S08_AXI_arcache"), S08_AXI_arprot("S08_AXI_arprot"), S08_AXI_arqos("S08_AXI_arqos"), S08_AXI_arvalid("S08_AXI_arvalid"), S08_AXI_arready("S08_AXI_arready"), S08_AXI_rdata("S08_AXI_rdata"), S08_AXI_rresp("S08_AXI_rresp"), S08_AXI_rlast("S08_AXI_rlast"), S08_AXI_rvalid("S08_AXI_rvalid"), S08_AXI_rready("S08_AXI_rready"), S09_AXI_awaddr("S09_AXI_awaddr"), S09_AXI_awlen("S09_AXI_awlen"), S09_AXI_awsize("S09_AXI_awsize"), S09_AXI_awburst("S09_AXI_awburst"), S09_AXI_awlock("S09_AXI_awlock"), S09_AXI_awcache("S09_AXI_awcache"), S09_AXI_awprot("S09_AXI_awprot"), S09_AXI_awqos("S09_AXI_awqos"), S09_AXI_awvalid("S09_AXI_awvalid"), S09_AXI_awready("S09_AXI_awready"), S09_AXI_wdata("S09_AXI_wdata"), S09_AXI_wstrb("S09_AXI_wstrb"), S09_AXI_wlast("S09_AXI_wlast"), S09_AXI_wvalid("S09_AXI_wvalid"), S09_AXI_wready("S09_AXI_wready"), S09_AXI_bresp("S09_AXI_bresp"), S09_AXI_bvalid("S09_AXI_bvalid"), S09_AXI_bready("S09_AXI_bready"), S10_AXI_araddr("S10_AXI_araddr"), S10_AXI_arlen("S10_AXI_arlen"), S10_AXI_arsize("S10_AXI_arsize"), S10_AXI_arburst("S10_AXI_arburst"), S10_AXI_arlock("S10_AXI_arlock"), S10_AXI_arcache("S10_AXI_arcache"), S10_AXI_arprot("S10_AXI_arprot"), S10_AXI_arqos("S10_AXI_arqos"), S10_AXI_arvalid("S10_AXI_arvalid"), S10_AXI_arready("S10_AXI_arready"), S10_AXI_rdata("S10_AXI_rdata"), S10_AXI_rresp("S10_AXI_rresp"), S10_AXI_rlast("S10_AXI_rlast"), S10_AXI_rvalid("S10_AXI_rvalid"), S10_AXI_rready("S10_AXI_rready"), S11_AXI_awaddr("S11_AXI_awaddr"), S11_AXI_awlen("S11_AXI_awlen"), S11_AXI_awsize("S11_AXI_awsize"), S11_AXI_awburst("S11_AXI_awburst"), S11_AXI_awlock("S11_AXI_awlock"), S11_AXI_awcache("S11_AXI_awcache"), S11_AXI_awprot("S11_AXI_awprot"), S11_AXI_awqos("S11_AXI_awqos"), S11_AXI_awvalid("S11_AXI_awvalid"), S11_AXI_awready("S11_AXI_awready"), S11_AXI_wdata("S11_AXI_wdata"), S11_AXI_wstrb("S11_AXI_wstrb"), S11_AXI_wlast("S11_AXI_wlast"), S11_AXI_wvalid("S11_AXI_wvalid"), S11_AXI_wready("S11_AXI_wready"), S11_AXI_bresp("S11_AXI_bresp"), S11_AXI_bvalid("S11_AXI_bvalid"), S11_AXI_bready("S11_AXI_bready"), M00_AXI_awaddr("M00_AXI_awaddr"), M00_AXI_awlen("M00_AXI_awlen"), M00_AXI_awsize("M00_AXI_awsize"), M00_AXI_awburst("M00_AXI_awburst"), M00_AXI_awlock("M00_AXI_awlock"), M00_AXI_awcache("M00_AXI_awcache"), M00_AXI_awprot("M00_AXI_awprot"), M00_AXI_awqos("M00_AXI_awqos"), M00_AXI_awvalid("M00_AXI_awvalid"), M00_AXI_awready("M00_AXI_awready"), M00_AXI_wdata("M00_AXI_wdata"), M00_AXI_wstrb("M00_AXI_wstrb"), M00_AXI_wlast("M00_AXI_wlast"), M00_AXI_wvalid("M00_AXI_wvalid"), M00_AXI_wready("M00_AXI_wready"), M00_AXI_bresp("M00_AXI_bresp"), M00_AXI_bvalid("M00_AXI_bvalid"), M00_AXI_bready("M00_AXI_bready"), M00_AXI_araddr("M00_AXI_araddr"), M00_AXI_arlen("M00_AXI_arlen"), M00_AXI_arsize("M00_AXI_arsize"), M00_AXI_arburst("M00_AXI_arburst"), M00_AXI_arlock("M00_AXI_arlock"), M00_AXI_arcache("M00_AXI_arcache"), M00_AXI_arprot("M00_AXI_arprot"), M00_AXI_arqos("M00_AXI_arqos"), M00_AXI_arvalid("M00_AXI_arvalid"), M00_AXI_arready("M00_AXI_arready"), M00_AXI_rdata("M00_AXI_rdata"), M00_AXI_rresp("M00_AXI_rresp"), M00_AXI_rlast("M00_AXI_rlast"), M00_AXI_rvalid("M00_AXI_rvalid"), M00_AXI_rready("M00_AXI_rready"),mp_S00_AXI_wr_socket_stub(nullptr),mp_S01_AXI_rd_socket_stub(nullptr),mp_S02_AXI_wr_socket_stub(nullptr),mp_S03_AXI_rd_socket_stub(nullptr),mp_S04_AXI_wr_socket_stub(nullptr),mp_S05_AXI_rd_socket_stub(nullptr),mp_S06_AXI_wr_socket_stub(nullptr),mp_S07_AXI_rd_socket_stub(nullptr),mp_S08_AXI_wr_socket_stub(nullptr),mp_S09_AXI_rd_socket_stub(nullptr),mp_S10_AXI_wr_socket_stub(nullptr),mp_S11_AXI_rd_socket_stub(nullptr)
{

  // initialize pins
  mp_impl->aclk(aclk);
  mp_impl->aresetn(aresetn);

  // initialize transactors
  mp_S00_AXI_transactor = NULL;
  mp_S00_AXI_arlock_converter = NULL;
  mp_S01_AXI_transactor = NULL;
  mp_S01_AXI_awlock_converter = NULL;
  mp_S02_AXI_transactor = NULL;
  mp_S02_AXI_arlock_converter = NULL;
  mp_S03_AXI_transactor = NULL;
  mp_S03_AXI_awlock_converter = NULL;
  mp_S04_AXI_transactor = NULL;
  mp_S04_AXI_arlock_converter = NULL;
  mp_S05_AXI_transactor = NULL;
  mp_S05_AXI_awlock_converter = NULL;
  mp_S06_AXI_transactor = NULL;
  mp_S06_AXI_arlock_converter = NULL;
  mp_S07_AXI_transactor = NULL;
  mp_S07_AXI_awlock_converter = NULL;
  mp_S08_AXI_transactor = NULL;
  mp_S08_AXI_arlock_converter = NULL;
  mp_S09_AXI_transactor = NULL;
  mp_S09_AXI_awlock_converter = NULL;
  mp_S10_AXI_transactor = NULL;
  mp_S10_AXI_arlock_converter = NULL;
  mp_S11_AXI_transactor = NULL;
  mp_S11_AXI_awlock_converter = NULL;
  mp_M00_AXI_transactor = NULL;
  mp_M00_AXI_awlen_converter = NULL;
  mp_M00_AXI_awlock_converter = NULL;
  mp_M00_AXI_arlen_converter = NULL;
  mp_M00_AXI_arlock_converter = NULL;

  // initialize socket stubs
  mp_S00_AXI_wr_socket_stub = NULL;
  mp_S01_AXI_rd_socket_stub = NULL;
  mp_S02_AXI_wr_socket_stub = NULL;
  mp_S03_AXI_rd_socket_stub = NULL;
  mp_S04_AXI_wr_socket_stub = NULL;
  mp_S05_AXI_rd_socket_stub = NULL;
  mp_S06_AXI_wr_socket_stub = NULL;
  mp_S07_AXI_rd_socket_stub = NULL;
  mp_S08_AXI_wr_socket_stub = NULL;
  mp_S09_AXI_rd_socket_stub = NULL;
  mp_S10_AXI_wr_socket_stub = NULL;
  mp_S11_AXI_rd_socket_stub = NULL;

}

void design_1_smartconnect_0_0::before_end_of_elaboration()
{
  // configure 'S00_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "S00_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs
    mp_S00_AXI_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket", 0);

  // 'S00_AXI' transactor parameters
    xsc::common_cpp::properties S00_AXI_transactor_param_props;
    S00_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S00_AXI_transactor_param_props.addLong("FREQ_HZ", "100000000");
    S00_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S00_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S00_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S00_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S00_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S00_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S00_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S00_AXI_transactor_param_props.addLong("HAS_WSTRB", "0");
    S00_AXI_transactor_param_props.addLong("HAS_BRESP", "0");
    S00_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S00_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S00_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    S00_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S00_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    S00_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S00_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S00_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S00_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S00_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S00_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S00_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S00_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S00_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_ONLY");
    S00_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_S00_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,32,1,1,1,1,1,1>("S00_AXI_transactor", S00_AXI_transactor_param_props);

    // S00_AXI' transactor ports

    mp_S00_AXI_transactor->ARADDR(S00_AXI_araddr);
    mp_S00_AXI_transactor->ARLEN(S00_AXI_arlen);
    mp_S00_AXI_transactor->ARSIZE(S00_AXI_arsize);
    mp_S00_AXI_transactor->ARBURST(S00_AXI_arburst);
    mp_S00_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXI_arlock_converter");
    mp_S00_AXI_arlock_converter->vector_in(S00_AXI_arlock);
    mp_S00_AXI_arlock_converter->scalar_out(m_S00_AXI_arlock_converter_signal);
    mp_S00_AXI_transactor->ARLOCK(m_S00_AXI_arlock_converter_signal);
    mp_S00_AXI_transactor->ARCACHE(S00_AXI_arcache);
    mp_S00_AXI_transactor->ARPROT(S00_AXI_arprot);
    mp_S00_AXI_transactor->ARQOS(S00_AXI_arqos);
    mp_S00_AXI_transactor->ARVALID(S00_AXI_arvalid);
    mp_S00_AXI_transactor->ARREADY(S00_AXI_arready);
    mp_S00_AXI_transactor->RDATA(S00_AXI_rdata);
    mp_S00_AXI_transactor->RRESP(S00_AXI_rresp);
    mp_S00_AXI_transactor->RLAST(S00_AXI_rlast);
    mp_S00_AXI_transactor->RVALID(S00_AXI_rvalid);
    mp_S00_AXI_transactor->RREADY(S00_AXI_rready);
    mp_S00_AXI_transactor->CLK(aclk);
    mp_S00_AXI_transactor->RST(aresetn);

    // S00_AXI' transactor sockets

    mp_impl->S00_AXI_tlm_aximm_read_socket->bind(*(mp_S00_AXI_transactor->rd_socket));
    mp_impl->S00_AXI_tlm_aximm_write_socket->bind(mp_S00_AXI_wr_socket_stub->initiator_socket);
  }
  else
  {
  }

  // configure 'S01_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "S01_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs
    mp_S01_AXI_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket", 0);

  // 'S01_AXI' transactor parameters
    xsc::common_cpp::properties S01_AXI_transactor_param_props;
    S01_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S01_AXI_transactor_param_props.addLong("FREQ_HZ", "100000000");
    S01_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S01_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S01_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S01_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S01_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S01_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S01_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S01_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S01_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S01_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S01_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S01_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S01_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S01_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S01_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S01_AXI_transactor_param_props.addLong("HAS_RRESP", "0");
    S01_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S01_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S01_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "16");
    S01_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    S01_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S01_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S01_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S01_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S01_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S01_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S01_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S01_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S01_AXI_transactor_param_props.addString("READ_WRITE_MODE", "WRITE_ONLY");
    S01_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_S01_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,32,1,1,1,1,1,1>("S01_AXI_transactor", S01_AXI_transactor_param_props);

    // S01_AXI' transactor ports

    mp_S01_AXI_transactor->AWADDR(S01_AXI_awaddr);
    mp_S01_AXI_transactor->AWLEN(S01_AXI_awlen);
    mp_S01_AXI_transactor->AWSIZE(S01_AXI_awsize);
    mp_S01_AXI_transactor->AWBURST(S01_AXI_awburst);
    mp_S01_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S01_AXI_awlock_converter");
    mp_S01_AXI_awlock_converter->vector_in(S01_AXI_awlock);
    mp_S01_AXI_awlock_converter->scalar_out(m_S01_AXI_awlock_converter_signal);
    mp_S01_AXI_transactor->AWLOCK(m_S01_AXI_awlock_converter_signal);
    mp_S01_AXI_transactor->AWCACHE(S01_AXI_awcache);
    mp_S01_AXI_transactor->AWPROT(S01_AXI_awprot);
    mp_S01_AXI_transactor->AWQOS(S01_AXI_awqos);
    mp_S01_AXI_transactor->AWVALID(S01_AXI_awvalid);
    mp_S01_AXI_transactor->AWREADY(S01_AXI_awready);
    mp_S01_AXI_transactor->WDATA(S01_AXI_wdata);
    mp_S01_AXI_transactor->WSTRB(S01_AXI_wstrb);
    mp_S01_AXI_transactor->WLAST(S01_AXI_wlast);
    mp_S01_AXI_transactor->WVALID(S01_AXI_wvalid);
    mp_S01_AXI_transactor->WREADY(S01_AXI_wready);
    mp_S01_AXI_transactor->BRESP(S01_AXI_bresp);
    mp_S01_AXI_transactor->BVALID(S01_AXI_bvalid);
    mp_S01_AXI_transactor->BREADY(S01_AXI_bready);
    mp_S01_AXI_transactor->CLK(aclk);
    mp_S01_AXI_transactor->RST(aresetn);

    // S01_AXI' transactor sockets

    mp_impl->S01_AXI_tlm_aximm_read_socket->bind(mp_S01_AXI_rd_socket_stub->initiator_socket);
    mp_impl->S01_AXI_tlm_aximm_write_socket->bind(*(mp_S01_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S02_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "S02_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs
    mp_S02_AXI_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket", 0);

  // 'S02_AXI' transactor parameters
    xsc::common_cpp::properties S02_AXI_transactor_param_props;
    S02_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S02_AXI_transactor_param_props.addLong("FREQ_HZ", "100000000");
    S02_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S02_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S02_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S02_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S02_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S02_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S02_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S02_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S02_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S02_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S02_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S02_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S02_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S02_AXI_transactor_param_props.addLong("HAS_WSTRB", "0");
    S02_AXI_transactor_param_props.addLong("HAS_BRESP", "0");
    S02_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S02_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S02_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    S02_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S02_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    S02_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S02_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S02_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S02_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S02_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S02_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S02_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S02_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S02_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_ONLY");
    S02_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_S02_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,32,1,1,1,1,1,1>("S02_AXI_transactor", S02_AXI_transactor_param_props);

    // S02_AXI' transactor ports

    mp_S02_AXI_transactor->ARADDR(S02_AXI_araddr);
    mp_S02_AXI_transactor->ARLEN(S02_AXI_arlen);
    mp_S02_AXI_transactor->ARSIZE(S02_AXI_arsize);
    mp_S02_AXI_transactor->ARBURST(S02_AXI_arburst);
    mp_S02_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S02_AXI_arlock_converter");
    mp_S02_AXI_arlock_converter->vector_in(S02_AXI_arlock);
    mp_S02_AXI_arlock_converter->scalar_out(m_S02_AXI_arlock_converter_signal);
    mp_S02_AXI_transactor->ARLOCK(m_S02_AXI_arlock_converter_signal);
    mp_S02_AXI_transactor->ARCACHE(S02_AXI_arcache);
    mp_S02_AXI_transactor->ARPROT(S02_AXI_arprot);
    mp_S02_AXI_transactor->ARQOS(S02_AXI_arqos);
    mp_S02_AXI_transactor->ARVALID(S02_AXI_arvalid);
    mp_S02_AXI_transactor->ARREADY(S02_AXI_arready);
    mp_S02_AXI_transactor->RDATA(S02_AXI_rdata);
    mp_S02_AXI_transactor->RRESP(S02_AXI_rresp);
    mp_S02_AXI_transactor->RLAST(S02_AXI_rlast);
    mp_S02_AXI_transactor->RVALID(S02_AXI_rvalid);
    mp_S02_AXI_transactor->RREADY(S02_AXI_rready);
    mp_S02_AXI_transactor->CLK(aclk);
    mp_S02_AXI_transactor->RST(aresetn);

    // S02_AXI' transactor sockets

    mp_impl->S02_AXI_tlm_aximm_read_socket->bind(*(mp_S02_AXI_transactor->rd_socket));
    mp_impl->S02_AXI_tlm_aximm_write_socket->bind(mp_S02_AXI_wr_socket_stub->initiator_socket);
  }
  else
  {
  }

  // configure 'S03_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "S03_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs
    mp_S03_AXI_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket", 0);

  // 'S03_AXI' transactor parameters
    xsc::common_cpp::properties S03_AXI_transactor_param_props;
    S03_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S03_AXI_transactor_param_props.addLong("FREQ_HZ", "100000000");
    S03_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S03_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S03_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S03_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S03_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S03_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S03_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S03_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S03_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S03_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S03_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S03_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S03_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S03_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S03_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S03_AXI_transactor_param_props.addLong("HAS_RRESP", "0");
    S03_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S03_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S03_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "16");
    S03_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    S03_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S03_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S03_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S03_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S03_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S03_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S03_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S03_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S03_AXI_transactor_param_props.addString("READ_WRITE_MODE", "WRITE_ONLY");
    S03_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_S03_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,32,1,1,1,1,1,1>("S03_AXI_transactor", S03_AXI_transactor_param_props);

    // S03_AXI' transactor ports

    mp_S03_AXI_transactor->AWADDR(S03_AXI_awaddr);
    mp_S03_AXI_transactor->AWLEN(S03_AXI_awlen);
    mp_S03_AXI_transactor->AWSIZE(S03_AXI_awsize);
    mp_S03_AXI_transactor->AWBURST(S03_AXI_awburst);
    mp_S03_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S03_AXI_awlock_converter");
    mp_S03_AXI_awlock_converter->vector_in(S03_AXI_awlock);
    mp_S03_AXI_awlock_converter->scalar_out(m_S03_AXI_awlock_converter_signal);
    mp_S03_AXI_transactor->AWLOCK(m_S03_AXI_awlock_converter_signal);
    mp_S03_AXI_transactor->AWCACHE(S03_AXI_awcache);
    mp_S03_AXI_transactor->AWPROT(S03_AXI_awprot);
    mp_S03_AXI_transactor->AWQOS(S03_AXI_awqos);
    mp_S03_AXI_transactor->AWVALID(S03_AXI_awvalid);
    mp_S03_AXI_transactor->AWREADY(S03_AXI_awready);
    mp_S03_AXI_transactor->WDATA(S03_AXI_wdata);
    mp_S03_AXI_transactor->WSTRB(S03_AXI_wstrb);
    mp_S03_AXI_transactor->WLAST(S03_AXI_wlast);
    mp_S03_AXI_transactor->WVALID(S03_AXI_wvalid);
    mp_S03_AXI_transactor->WREADY(S03_AXI_wready);
    mp_S03_AXI_transactor->BRESP(S03_AXI_bresp);
    mp_S03_AXI_transactor->BVALID(S03_AXI_bvalid);
    mp_S03_AXI_transactor->BREADY(S03_AXI_bready);
    mp_S03_AXI_transactor->CLK(aclk);
    mp_S03_AXI_transactor->RST(aresetn);

    // S03_AXI' transactor sockets

    mp_impl->S03_AXI_tlm_aximm_read_socket->bind(mp_S03_AXI_rd_socket_stub->initiator_socket);
    mp_impl->S03_AXI_tlm_aximm_write_socket->bind(*(mp_S03_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S04_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "S04_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs
    mp_S04_AXI_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket", 0);

  // 'S04_AXI' transactor parameters
    xsc::common_cpp::properties S04_AXI_transactor_param_props;
    S04_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S04_AXI_transactor_param_props.addLong("FREQ_HZ", "100000000");
    S04_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S04_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S04_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S04_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S04_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S04_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S04_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S04_AXI_transactor_param_props.addLong("HAS_WSTRB", "0");
    S04_AXI_transactor_param_props.addLong("HAS_BRESP", "0");
    S04_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S04_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S04_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    S04_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S04_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    S04_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S04_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S04_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S04_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S04_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S04_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S04_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S04_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S04_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_ONLY");
    S04_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_S04_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,32,1,1,1,1,1,1>("S04_AXI_transactor", S04_AXI_transactor_param_props);

    // S04_AXI' transactor ports

    mp_S04_AXI_transactor->ARADDR(S04_AXI_araddr);
    mp_S04_AXI_transactor->ARLEN(S04_AXI_arlen);
    mp_S04_AXI_transactor->ARSIZE(S04_AXI_arsize);
    mp_S04_AXI_transactor->ARBURST(S04_AXI_arburst);
    mp_S04_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S04_AXI_arlock_converter");
    mp_S04_AXI_arlock_converter->vector_in(S04_AXI_arlock);
    mp_S04_AXI_arlock_converter->scalar_out(m_S04_AXI_arlock_converter_signal);
    mp_S04_AXI_transactor->ARLOCK(m_S04_AXI_arlock_converter_signal);
    mp_S04_AXI_transactor->ARCACHE(S04_AXI_arcache);
    mp_S04_AXI_transactor->ARPROT(S04_AXI_arprot);
    mp_S04_AXI_transactor->ARQOS(S04_AXI_arqos);
    mp_S04_AXI_transactor->ARVALID(S04_AXI_arvalid);
    mp_S04_AXI_transactor->ARREADY(S04_AXI_arready);
    mp_S04_AXI_transactor->RDATA(S04_AXI_rdata);
    mp_S04_AXI_transactor->RRESP(S04_AXI_rresp);
    mp_S04_AXI_transactor->RLAST(S04_AXI_rlast);
    mp_S04_AXI_transactor->RVALID(S04_AXI_rvalid);
    mp_S04_AXI_transactor->RREADY(S04_AXI_rready);
    mp_S04_AXI_transactor->CLK(aclk);
    mp_S04_AXI_transactor->RST(aresetn);

    // S04_AXI' transactor sockets

    mp_impl->S04_AXI_tlm_aximm_read_socket->bind(*(mp_S04_AXI_transactor->rd_socket));
    mp_impl->S04_AXI_tlm_aximm_write_socket->bind(mp_S04_AXI_wr_socket_stub->initiator_socket);
  }
  else
  {
  }

  // configure 'S05_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "S05_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs
    mp_S05_AXI_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket", 0);

  // 'S05_AXI' transactor parameters
    xsc::common_cpp::properties S05_AXI_transactor_param_props;
    S05_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S05_AXI_transactor_param_props.addLong("FREQ_HZ", "100000000");
    S05_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S05_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S05_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S05_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S05_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S05_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S05_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S05_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S05_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S05_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S05_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S05_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S05_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S05_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S05_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S05_AXI_transactor_param_props.addLong("HAS_RRESP", "0");
    S05_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S05_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S05_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "16");
    S05_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    S05_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S05_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S05_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S05_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S05_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S05_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S05_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S05_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S05_AXI_transactor_param_props.addString("READ_WRITE_MODE", "WRITE_ONLY");
    S05_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_S05_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,32,1,1,1,1,1,1>("S05_AXI_transactor", S05_AXI_transactor_param_props);

    // S05_AXI' transactor ports

    mp_S05_AXI_transactor->AWADDR(S05_AXI_awaddr);
    mp_S05_AXI_transactor->AWLEN(S05_AXI_awlen);
    mp_S05_AXI_transactor->AWSIZE(S05_AXI_awsize);
    mp_S05_AXI_transactor->AWBURST(S05_AXI_awburst);
    mp_S05_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S05_AXI_awlock_converter");
    mp_S05_AXI_awlock_converter->vector_in(S05_AXI_awlock);
    mp_S05_AXI_awlock_converter->scalar_out(m_S05_AXI_awlock_converter_signal);
    mp_S05_AXI_transactor->AWLOCK(m_S05_AXI_awlock_converter_signal);
    mp_S05_AXI_transactor->AWCACHE(S05_AXI_awcache);
    mp_S05_AXI_transactor->AWPROT(S05_AXI_awprot);
    mp_S05_AXI_transactor->AWQOS(S05_AXI_awqos);
    mp_S05_AXI_transactor->AWVALID(S05_AXI_awvalid);
    mp_S05_AXI_transactor->AWREADY(S05_AXI_awready);
    mp_S05_AXI_transactor->WDATA(S05_AXI_wdata);
    mp_S05_AXI_transactor->WSTRB(S05_AXI_wstrb);
    mp_S05_AXI_transactor->WLAST(S05_AXI_wlast);
    mp_S05_AXI_transactor->WVALID(S05_AXI_wvalid);
    mp_S05_AXI_transactor->WREADY(S05_AXI_wready);
    mp_S05_AXI_transactor->BRESP(S05_AXI_bresp);
    mp_S05_AXI_transactor->BVALID(S05_AXI_bvalid);
    mp_S05_AXI_transactor->BREADY(S05_AXI_bready);
    mp_S05_AXI_transactor->CLK(aclk);
    mp_S05_AXI_transactor->RST(aresetn);

    // S05_AXI' transactor sockets

    mp_impl->S05_AXI_tlm_aximm_read_socket->bind(mp_S05_AXI_rd_socket_stub->initiator_socket);
    mp_impl->S05_AXI_tlm_aximm_write_socket->bind(*(mp_S05_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S06_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "S06_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs
    mp_S06_AXI_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket", 0);

  // 'S06_AXI' transactor parameters
    xsc::common_cpp::properties S06_AXI_transactor_param_props;
    S06_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S06_AXI_transactor_param_props.addLong("FREQ_HZ", "100000000");
    S06_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S06_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S06_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S06_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S06_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S06_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S06_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S06_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S06_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S06_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S06_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S06_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S06_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S06_AXI_transactor_param_props.addLong("HAS_WSTRB", "0");
    S06_AXI_transactor_param_props.addLong("HAS_BRESP", "0");
    S06_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S06_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S06_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    S06_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S06_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    S06_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S06_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S06_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S06_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S06_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S06_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S06_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S06_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S06_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_ONLY");
    S06_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_S06_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,32,1,1,1,1,1,1>("S06_AXI_transactor", S06_AXI_transactor_param_props);

    // S06_AXI' transactor ports

    mp_S06_AXI_transactor->ARADDR(S06_AXI_araddr);
    mp_S06_AXI_transactor->ARLEN(S06_AXI_arlen);
    mp_S06_AXI_transactor->ARSIZE(S06_AXI_arsize);
    mp_S06_AXI_transactor->ARBURST(S06_AXI_arburst);
    mp_S06_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S06_AXI_arlock_converter");
    mp_S06_AXI_arlock_converter->vector_in(S06_AXI_arlock);
    mp_S06_AXI_arlock_converter->scalar_out(m_S06_AXI_arlock_converter_signal);
    mp_S06_AXI_transactor->ARLOCK(m_S06_AXI_arlock_converter_signal);
    mp_S06_AXI_transactor->ARCACHE(S06_AXI_arcache);
    mp_S06_AXI_transactor->ARPROT(S06_AXI_arprot);
    mp_S06_AXI_transactor->ARQOS(S06_AXI_arqos);
    mp_S06_AXI_transactor->ARVALID(S06_AXI_arvalid);
    mp_S06_AXI_transactor->ARREADY(S06_AXI_arready);
    mp_S06_AXI_transactor->RDATA(S06_AXI_rdata);
    mp_S06_AXI_transactor->RRESP(S06_AXI_rresp);
    mp_S06_AXI_transactor->RLAST(S06_AXI_rlast);
    mp_S06_AXI_transactor->RVALID(S06_AXI_rvalid);
    mp_S06_AXI_transactor->RREADY(S06_AXI_rready);
    mp_S06_AXI_transactor->CLK(aclk);
    mp_S06_AXI_transactor->RST(aresetn);

    // S06_AXI' transactor sockets

    mp_impl->S06_AXI_tlm_aximm_read_socket->bind(*(mp_S06_AXI_transactor->rd_socket));
    mp_impl->S06_AXI_tlm_aximm_write_socket->bind(mp_S06_AXI_wr_socket_stub->initiator_socket);
  }
  else
  {
  }

  // configure 'S07_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "S07_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs
    mp_S07_AXI_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket", 0);

  // 'S07_AXI' transactor parameters
    xsc::common_cpp::properties S07_AXI_transactor_param_props;
    S07_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S07_AXI_transactor_param_props.addLong("FREQ_HZ", "100000000");
    S07_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S07_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S07_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S07_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S07_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S07_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S07_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S07_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S07_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S07_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S07_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S07_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S07_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S07_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S07_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S07_AXI_transactor_param_props.addLong("HAS_RRESP", "0");
    S07_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S07_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S07_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "16");
    S07_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    S07_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S07_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S07_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S07_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S07_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S07_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S07_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S07_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S07_AXI_transactor_param_props.addString("READ_WRITE_MODE", "WRITE_ONLY");
    S07_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_S07_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,32,1,1,1,1,1,1>("S07_AXI_transactor", S07_AXI_transactor_param_props);

    // S07_AXI' transactor ports

    mp_S07_AXI_transactor->AWADDR(S07_AXI_awaddr);
    mp_S07_AXI_transactor->AWLEN(S07_AXI_awlen);
    mp_S07_AXI_transactor->AWSIZE(S07_AXI_awsize);
    mp_S07_AXI_transactor->AWBURST(S07_AXI_awburst);
    mp_S07_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S07_AXI_awlock_converter");
    mp_S07_AXI_awlock_converter->vector_in(S07_AXI_awlock);
    mp_S07_AXI_awlock_converter->scalar_out(m_S07_AXI_awlock_converter_signal);
    mp_S07_AXI_transactor->AWLOCK(m_S07_AXI_awlock_converter_signal);
    mp_S07_AXI_transactor->AWCACHE(S07_AXI_awcache);
    mp_S07_AXI_transactor->AWPROT(S07_AXI_awprot);
    mp_S07_AXI_transactor->AWQOS(S07_AXI_awqos);
    mp_S07_AXI_transactor->AWVALID(S07_AXI_awvalid);
    mp_S07_AXI_transactor->AWREADY(S07_AXI_awready);
    mp_S07_AXI_transactor->WDATA(S07_AXI_wdata);
    mp_S07_AXI_transactor->WSTRB(S07_AXI_wstrb);
    mp_S07_AXI_transactor->WLAST(S07_AXI_wlast);
    mp_S07_AXI_transactor->WVALID(S07_AXI_wvalid);
    mp_S07_AXI_transactor->WREADY(S07_AXI_wready);
    mp_S07_AXI_transactor->BRESP(S07_AXI_bresp);
    mp_S07_AXI_transactor->BVALID(S07_AXI_bvalid);
    mp_S07_AXI_transactor->BREADY(S07_AXI_bready);
    mp_S07_AXI_transactor->CLK(aclk);
    mp_S07_AXI_transactor->RST(aresetn);

    // S07_AXI' transactor sockets

    mp_impl->S07_AXI_tlm_aximm_read_socket->bind(mp_S07_AXI_rd_socket_stub->initiator_socket);
    mp_impl->S07_AXI_tlm_aximm_write_socket->bind(*(mp_S07_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S08_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "S08_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs
    mp_S08_AXI_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket", 0);

  // 'S08_AXI' transactor parameters
    xsc::common_cpp::properties S08_AXI_transactor_param_props;
    S08_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S08_AXI_transactor_param_props.addLong("FREQ_HZ", "100000000");
    S08_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S08_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S08_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S08_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S08_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S08_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S08_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S08_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S08_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S08_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S08_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S08_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S08_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S08_AXI_transactor_param_props.addLong("HAS_WSTRB", "0");
    S08_AXI_transactor_param_props.addLong("HAS_BRESP", "0");
    S08_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S08_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S08_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    S08_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S08_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    S08_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S08_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S08_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S08_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S08_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S08_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S08_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S08_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S08_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_ONLY");
    S08_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_S08_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,32,1,1,1,1,1,1>("S08_AXI_transactor", S08_AXI_transactor_param_props);

    // S08_AXI' transactor ports

    mp_S08_AXI_transactor->ARADDR(S08_AXI_araddr);
    mp_S08_AXI_transactor->ARLEN(S08_AXI_arlen);
    mp_S08_AXI_transactor->ARSIZE(S08_AXI_arsize);
    mp_S08_AXI_transactor->ARBURST(S08_AXI_arburst);
    mp_S08_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S08_AXI_arlock_converter");
    mp_S08_AXI_arlock_converter->vector_in(S08_AXI_arlock);
    mp_S08_AXI_arlock_converter->scalar_out(m_S08_AXI_arlock_converter_signal);
    mp_S08_AXI_transactor->ARLOCK(m_S08_AXI_arlock_converter_signal);
    mp_S08_AXI_transactor->ARCACHE(S08_AXI_arcache);
    mp_S08_AXI_transactor->ARPROT(S08_AXI_arprot);
    mp_S08_AXI_transactor->ARQOS(S08_AXI_arqos);
    mp_S08_AXI_transactor->ARVALID(S08_AXI_arvalid);
    mp_S08_AXI_transactor->ARREADY(S08_AXI_arready);
    mp_S08_AXI_transactor->RDATA(S08_AXI_rdata);
    mp_S08_AXI_transactor->RRESP(S08_AXI_rresp);
    mp_S08_AXI_transactor->RLAST(S08_AXI_rlast);
    mp_S08_AXI_transactor->RVALID(S08_AXI_rvalid);
    mp_S08_AXI_transactor->RREADY(S08_AXI_rready);
    mp_S08_AXI_transactor->CLK(aclk);
    mp_S08_AXI_transactor->RST(aresetn);

    // S08_AXI' transactor sockets

    mp_impl->S08_AXI_tlm_aximm_read_socket->bind(*(mp_S08_AXI_transactor->rd_socket));
    mp_impl->S08_AXI_tlm_aximm_write_socket->bind(mp_S08_AXI_wr_socket_stub->initiator_socket);
  }
  else
  {
  }

  // configure 'S09_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "S09_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs
    mp_S09_AXI_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket", 0);

  // 'S09_AXI' transactor parameters
    xsc::common_cpp::properties S09_AXI_transactor_param_props;
    S09_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S09_AXI_transactor_param_props.addLong("FREQ_HZ", "100000000");
    S09_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S09_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S09_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S09_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S09_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S09_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S09_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S09_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S09_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S09_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S09_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S09_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S09_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S09_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S09_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S09_AXI_transactor_param_props.addLong("HAS_RRESP", "0");
    S09_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S09_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S09_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "16");
    S09_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    S09_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S09_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S09_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S09_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S09_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S09_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S09_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S09_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S09_AXI_transactor_param_props.addString("READ_WRITE_MODE", "WRITE_ONLY");
    S09_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_S09_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,32,1,1,1,1,1,1>("S09_AXI_transactor", S09_AXI_transactor_param_props);

    // S09_AXI' transactor ports

    mp_S09_AXI_transactor->AWADDR(S09_AXI_awaddr);
    mp_S09_AXI_transactor->AWLEN(S09_AXI_awlen);
    mp_S09_AXI_transactor->AWSIZE(S09_AXI_awsize);
    mp_S09_AXI_transactor->AWBURST(S09_AXI_awburst);
    mp_S09_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S09_AXI_awlock_converter");
    mp_S09_AXI_awlock_converter->vector_in(S09_AXI_awlock);
    mp_S09_AXI_awlock_converter->scalar_out(m_S09_AXI_awlock_converter_signal);
    mp_S09_AXI_transactor->AWLOCK(m_S09_AXI_awlock_converter_signal);
    mp_S09_AXI_transactor->AWCACHE(S09_AXI_awcache);
    mp_S09_AXI_transactor->AWPROT(S09_AXI_awprot);
    mp_S09_AXI_transactor->AWQOS(S09_AXI_awqos);
    mp_S09_AXI_transactor->AWVALID(S09_AXI_awvalid);
    mp_S09_AXI_transactor->AWREADY(S09_AXI_awready);
    mp_S09_AXI_transactor->WDATA(S09_AXI_wdata);
    mp_S09_AXI_transactor->WSTRB(S09_AXI_wstrb);
    mp_S09_AXI_transactor->WLAST(S09_AXI_wlast);
    mp_S09_AXI_transactor->WVALID(S09_AXI_wvalid);
    mp_S09_AXI_transactor->WREADY(S09_AXI_wready);
    mp_S09_AXI_transactor->BRESP(S09_AXI_bresp);
    mp_S09_AXI_transactor->BVALID(S09_AXI_bvalid);
    mp_S09_AXI_transactor->BREADY(S09_AXI_bready);
    mp_S09_AXI_transactor->CLK(aclk);
    mp_S09_AXI_transactor->RST(aresetn);

    // S09_AXI' transactor sockets

    mp_impl->S09_AXI_tlm_aximm_read_socket->bind(mp_S09_AXI_rd_socket_stub->initiator_socket);
    mp_impl->S09_AXI_tlm_aximm_write_socket->bind(*(mp_S09_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S10_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "S10_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs
    mp_S10_AXI_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket", 0);

  // 'S10_AXI' transactor parameters
    xsc::common_cpp::properties S10_AXI_transactor_param_props;
    S10_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S10_AXI_transactor_param_props.addLong("FREQ_HZ", "100000000");
    S10_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S10_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S10_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S10_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S10_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S10_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S10_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S10_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S10_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S10_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S10_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S10_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S10_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S10_AXI_transactor_param_props.addLong("HAS_WSTRB", "0");
    S10_AXI_transactor_param_props.addLong("HAS_BRESP", "0");
    S10_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S10_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S10_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    S10_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S10_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    S10_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S10_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S10_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S10_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S10_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S10_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S10_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S10_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S10_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_ONLY");
    S10_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_S10_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,32,1,1,1,1,1,1>("S10_AXI_transactor", S10_AXI_transactor_param_props);

    // S10_AXI' transactor ports

    mp_S10_AXI_transactor->ARADDR(S10_AXI_araddr);
    mp_S10_AXI_transactor->ARLEN(S10_AXI_arlen);
    mp_S10_AXI_transactor->ARSIZE(S10_AXI_arsize);
    mp_S10_AXI_transactor->ARBURST(S10_AXI_arburst);
    mp_S10_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S10_AXI_arlock_converter");
    mp_S10_AXI_arlock_converter->vector_in(S10_AXI_arlock);
    mp_S10_AXI_arlock_converter->scalar_out(m_S10_AXI_arlock_converter_signal);
    mp_S10_AXI_transactor->ARLOCK(m_S10_AXI_arlock_converter_signal);
    mp_S10_AXI_transactor->ARCACHE(S10_AXI_arcache);
    mp_S10_AXI_transactor->ARPROT(S10_AXI_arprot);
    mp_S10_AXI_transactor->ARQOS(S10_AXI_arqos);
    mp_S10_AXI_transactor->ARVALID(S10_AXI_arvalid);
    mp_S10_AXI_transactor->ARREADY(S10_AXI_arready);
    mp_S10_AXI_transactor->RDATA(S10_AXI_rdata);
    mp_S10_AXI_transactor->RRESP(S10_AXI_rresp);
    mp_S10_AXI_transactor->RLAST(S10_AXI_rlast);
    mp_S10_AXI_transactor->RVALID(S10_AXI_rvalid);
    mp_S10_AXI_transactor->RREADY(S10_AXI_rready);
    mp_S10_AXI_transactor->CLK(aclk);
    mp_S10_AXI_transactor->RST(aresetn);

    // S10_AXI' transactor sockets

    mp_impl->S10_AXI_tlm_aximm_read_socket->bind(*(mp_S10_AXI_transactor->rd_socket));
    mp_impl->S10_AXI_tlm_aximm_write_socket->bind(mp_S10_AXI_wr_socket_stub->initiator_socket);
  }
  else
  {
  }

  // configure 'S11_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "S11_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs
    mp_S11_AXI_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket", 0);

  // 'S11_AXI' transactor parameters
    xsc::common_cpp::properties S11_AXI_transactor_param_props;
    S11_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S11_AXI_transactor_param_props.addLong("FREQ_HZ", "100000000");
    S11_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S11_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S11_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S11_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S11_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S11_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S11_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S11_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S11_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S11_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S11_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S11_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S11_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S11_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S11_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S11_AXI_transactor_param_props.addLong("HAS_RRESP", "0");
    S11_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S11_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S11_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "16");
    S11_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    S11_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S11_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S11_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S11_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S11_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S11_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S11_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S11_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S11_AXI_transactor_param_props.addString("READ_WRITE_MODE", "WRITE_ONLY");
    S11_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_S11_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,32,1,1,1,1,1,1>("S11_AXI_transactor", S11_AXI_transactor_param_props);

    // S11_AXI' transactor ports

    mp_S11_AXI_transactor->AWADDR(S11_AXI_awaddr);
    mp_S11_AXI_transactor->AWLEN(S11_AXI_awlen);
    mp_S11_AXI_transactor->AWSIZE(S11_AXI_awsize);
    mp_S11_AXI_transactor->AWBURST(S11_AXI_awburst);
    mp_S11_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S11_AXI_awlock_converter");
    mp_S11_AXI_awlock_converter->vector_in(S11_AXI_awlock);
    mp_S11_AXI_awlock_converter->scalar_out(m_S11_AXI_awlock_converter_signal);
    mp_S11_AXI_transactor->AWLOCK(m_S11_AXI_awlock_converter_signal);
    mp_S11_AXI_transactor->AWCACHE(S11_AXI_awcache);
    mp_S11_AXI_transactor->AWPROT(S11_AXI_awprot);
    mp_S11_AXI_transactor->AWQOS(S11_AXI_awqos);
    mp_S11_AXI_transactor->AWVALID(S11_AXI_awvalid);
    mp_S11_AXI_transactor->AWREADY(S11_AXI_awready);
    mp_S11_AXI_transactor->WDATA(S11_AXI_wdata);
    mp_S11_AXI_transactor->WSTRB(S11_AXI_wstrb);
    mp_S11_AXI_transactor->WLAST(S11_AXI_wlast);
    mp_S11_AXI_transactor->WVALID(S11_AXI_wvalid);
    mp_S11_AXI_transactor->WREADY(S11_AXI_wready);
    mp_S11_AXI_transactor->BRESP(S11_AXI_bresp);
    mp_S11_AXI_transactor->BVALID(S11_AXI_bvalid);
    mp_S11_AXI_transactor->BREADY(S11_AXI_bready);
    mp_S11_AXI_transactor->CLK(aclk);
    mp_S11_AXI_transactor->RST(aresetn);

    // S11_AXI' transactor sockets

    mp_impl->S11_AXI_tlm_aximm_read_socket->bind(mp_S11_AXI_rd_socket_stub->initiator_socket);
    mp_impl->S11_AXI_tlm_aximm_write_socket->bind(*(mp_S11_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M00_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "M00_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M00_AXI' transactor parameters
    xsc::common_cpp::properties M00_AXI_transactor_param_props;
    M00_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    M00_AXI_transactor_param_props.addLong("FREQ_HZ", "100000000");
    M00_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    M00_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    M00_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    M00_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M00_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    M00_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    M00_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M00_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M00_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M00_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M00_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M00_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    M00_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "16");
    M00_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    M00_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M00_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M00_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M00_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M00_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    M00_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M00_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    M00_AXI_transactor_param_props.addString("PROTOCOL", "AXI3");
    M00_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M00_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_M00_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<32,32,1,1,1,1,1,1>("M00_AXI_transactor", M00_AXI_transactor_param_props);

    // M00_AXI' transactor ports

    mp_M00_AXI_transactor->AWADDR(M00_AXI_awaddr);
    mp_M00_AXI_awlen_converter = new xsc::common::vector2vector_converter<8,4>("M00_AXI_awlen_converter");
    mp_M00_AXI_awlen_converter->vector_in(m_M00_AXI_awlen_converter_signal);
    mp_M00_AXI_awlen_converter->vector_out(M00_AXI_awlen);
    mp_M00_AXI_transactor->AWLEN(m_M00_AXI_awlen_converter_signal);
    mp_M00_AXI_transactor->AWSIZE(M00_AXI_awsize);
    mp_M00_AXI_transactor->AWBURST(M00_AXI_awburst);
    mp_M00_AXI_awlock_converter = new xsc::common::scalar2vectorN_converter<2>("M00_AXI_awlock_converter");
    mp_M00_AXI_awlock_converter->scalar_in(m_M00_AXI_awlock_converter_signal);
    mp_M00_AXI_awlock_converter->vector_out(M00_AXI_awlock);
    mp_M00_AXI_transactor->AWLOCK(m_M00_AXI_awlock_converter_signal);
    mp_M00_AXI_transactor->AWCACHE(M00_AXI_awcache);
    mp_M00_AXI_transactor->AWPROT(M00_AXI_awprot);
    mp_M00_AXI_transactor->AWQOS(M00_AXI_awqos);
    mp_M00_AXI_transactor->AWVALID(M00_AXI_awvalid);
    mp_M00_AXI_transactor->AWREADY(M00_AXI_awready);
    mp_M00_AXI_transactor->WDATA(M00_AXI_wdata);
    mp_M00_AXI_transactor->WSTRB(M00_AXI_wstrb);
    mp_M00_AXI_transactor->WLAST(M00_AXI_wlast);
    mp_M00_AXI_transactor->WVALID(M00_AXI_wvalid);
    mp_M00_AXI_transactor->WREADY(M00_AXI_wready);
    mp_M00_AXI_transactor->BRESP(M00_AXI_bresp);
    mp_M00_AXI_transactor->BVALID(M00_AXI_bvalid);
    mp_M00_AXI_transactor->BREADY(M00_AXI_bready);
    mp_M00_AXI_transactor->ARADDR(M00_AXI_araddr);
    mp_M00_AXI_arlen_converter = new xsc::common::vector2vector_converter<8,4>("M00_AXI_arlen_converter");
    mp_M00_AXI_arlen_converter->vector_in(m_M00_AXI_arlen_converter_signal);
    mp_M00_AXI_arlen_converter->vector_out(M00_AXI_arlen);
    mp_M00_AXI_transactor->ARLEN(m_M00_AXI_arlen_converter_signal);
    mp_M00_AXI_transactor->ARSIZE(M00_AXI_arsize);
    mp_M00_AXI_transactor->ARBURST(M00_AXI_arburst);
    mp_M00_AXI_arlock_converter = new xsc::common::scalar2vectorN_converter<2>("M00_AXI_arlock_converter");
    mp_M00_AXI_arlock_converter->scalar_in(m_M00_AXI_arlock_converter_signal);
    mp_M00_AXI_arlock_converter->vector_out(M00_AXI_arlock);
    mp_M00_AXI_transactor->ARLOCK(m_M00_AXI_arlock_converter_signal);
    mp_M00_AXI_transactor->ARCACHE(M00_AXI_arcache);
    mp_M00_AXI_transactor->ARPROT(M00_AXI_arprot);
    mp_M00_AXI_transactor->ARQOS(M00_AXI_arqos);
    mp_M00_AXI_transactor->ARVALID(M00_AXI_arvalid);
    mp_M00_AXI_transactor->ARREADY(M00_AXI_arready);
    mp_M00_AXI_transactor->RDATA(M00_AXI_rdata);
    mp_M00_AXI_transactor->RRESP(M00_AXI_rresp);
    mp_M00_AXI_transactor->RLAST(M00_AXI_rlast);
    mp_M00_AXI_transactor->RVALID(M00_AXI_rvalid);
    mp_M00_AXI_transactor->RREADY(M00_AXI_rready);
    mp_M00_AXI_transactor->CLK(aclk);
    mp_M00_AXI_transactor->RST(aresetn);

    // M00_AXI' transactor sockets

    mp_impl->M00_AXI_tlm_aximm_read_socket->bind(*(mp_M00_AXI_transactor->rd_socket));
    mp_impl->M00_AXI_tlm_aximm_write_socket->bind(*(mp_M00_AXI_transactor->wr_socket));
  }
  else
  {
  }

}

#endif // XILINX_SIMULATOR




#ifdef XM_SYSTEMC
design_1_smartconnect_0_0::design_1_smartconnect_0_0(const sc_core::sc_module_name& nm) : design_1_smartconnect_0_0_sc(nm), aclk("aclk"), aresetn("aresetn"), S00_AXI_araddr("S00_AXI_araddr"), S00_AXI_arlen("S00_AXI_arlen"), S00_AXI_arsize("S00_AXI_arsize"), S00_AXI_arburst("S00_AXI_arburst"), S00_AXI_arlock("S00_AXI_arlock"), S00_AXI_arcache("S00_AXI_arcache"), S00_AXI_arprot("S00_AXI_arprot"), S00_AXI_arqos("S00_AXI_arqos"), S00_AXI_arvalid("S00_AXI_arvalid"), S00_AXI_arready("S00_AXI_arready"), S00_AXI_rdata("S00_AXI_rdata"), S00_AXI_rresp("S00_AXI_rresp"), S00_AXI_rlast("S00_AXI_rlast"), S00_AXI_rvalid("S00_AXI_rvalid"), S00_AXI_rready("S00_AXI_rready"), S01_AXI_awaddr("S01_AXI_awaddr"), S01_AXI_awlen("S01_AXI_awlen"), S01_AXI_awsize("S01_AXI_awsize"), S01_AXI_awburst("S01_AXI_awburst"), S01_AXI_awlock("S01_AXI_awlock"), S01_AXI_awcache("S01_AXI_awcache"), S01_AXI_awprot("S01_AXI_awprot"), S01_AXI_awqos("S01_AXI_awqos"), S01_AXI_awvalid("S01_AXI_awvalid"), S01_AXI_awready("S01_AXI_awready"), S01_AXI_wdata("S01_AXI_wdata"), S01_AXI_wstrb("S01_AXI_wstrb"), S01_AXI_wlast("S01_AXI_wlast"), S01_AXI_wvalid("S01_AXI_wvalid"), S01_AXI_wready("S01_AXI_wready"), S01_AXI_bresp("S01_AXI_bresp"), S01_AXI_bvalid("S01_AXI_bvalid"), S01_AXI_bready("S01_AXI_bready"), S02_AXI_araddr("S02_AXI_araddr"), S02_AXI_arlen("S02_AXI_arlen"), S02_AXI_arsize("S02_AXI_arsize"), S02_AXI_arburst("S02_AXI_arburst"), S02_AXI_arlock("S02_AXI_arlock"), S02_AXI_arcache("S02_AXI_arcache"), S02_AXI_arprot("S02_AXI_arprot"), S02_AXI_arqos("S02_AXI_arqos"), S02_AXI_arvalid("S02_AXI_arvalid"), S02_AXI_arready("S02_AXI_arready"), S02_AXI_rdata("S02_AXI_rdata"), S02_AXI_rresp("S02_AXI_rresp"), S02_AXI_rlast("S02_AXI_rlast"), S02_AXI_rvalid("S02_AXI_rvalid"), S02_AXI_rready("S02_AXI_rready"), S03_AXI_awaddr("S03_AXI_awaddr"), S03_AXI_awlen("S03_AXI_awlen"), S03_AXI_awsize("S03_AXI_awsize"), S03_AXI_awburst("S03_AXI_awburst"), S03_AXI_awlock("S03_AXI_awlock"), S03_AXI_awcache("S03_AXI_awcache"), S03_AXI_awprot("S03_AXI_awprot"), S03_AXI_awqos("S03_AXI_awqos"), S03_AXI_awvalid("S03_AXI_awvalid"), S03_AXI_awready("S03_AXI_awready"), S03_AXI_wdata("S03_AXI_wdata"), S03_AXI_wstrb("S03_AXI_wstrb"), S03_AXI_wlast("S03_AXI_wlast"), S03_AXI_wvalid("S03_AXI_wvalid"), S03_AXI_wready("S03_AXI_wready"), S03_AXI_bresp("S03_AXI_bresp"), S03_AXI_bvalid("S03_AXI_bvalid"), S03_AXI_bready("S03_AXI_bready"), S04_AXI_araddr("S04_AXI_araddr"), S04_AXI_arlen("S04_AXI_arlen"), S04_AXI_arsize("S04_AXI_arsize"), S04_AXI_arburst("S04_AXI_arburst"), S04_AXI_arlock("S04_AXI_arlock"), S04_AXI_arcache("S04_AXI_arcache"), S04_AXI_arprot("S04_AXI_arprot"), S04_AXI_arqos("S04_AXI_arqos"), S04_AXI_arvalid("S04_AXI_arvalid"), S04_AXI_arready("S04_AXI_arready"), S04_AXI_rdata("S04_AXI_rdata"), S04_AXI_rresp("S04_AXI_rresp"), S04_AXI_rlast("S04_AXI_rlast"), S04_AXI_rvalid("S04_AXI_rvalid"), S04_AXI_rready("S04_AXI_rready"), S05_AXI_awaddr("S05_AXI_awaddr"), S05_AXI_awlen("S05_AXI_awlen"), S05_AXI_awsize("S05_AXI_awsize"), S05_AXI_awburst("S05_AXI_awburst"), S05_AXI_awlock("S05_AXI_awlock"), S05_AXI_awcache("S05_AXI_awcache"), S05_AXI_awprot("S05_AXI_awprot"), S05_AXI_awqos("S05_AXI_awqos"), S05_AXI_awvalid("S05_AXI_awvalid"), S05_AXI_awready("S05_AXI_awready"), S05_AXI_wdata("S05_AXI_wdata"), S05_AXI_wstrb("S05_AXI_wstrb"), S05_AXI_wlast("S05_AXI_wlast"), S05_AXI_wvalid("S05_AXI_wvalid"), S05_AXI_wready("S05_AXI_wready"), S05_AXI_bresp("S05_AXI_bresp"), S05_AXI_bvalid("S05_AXI_bvalid"), S05_AXI_bready("S05_AXI_bready"), S06_AXI_araddr("S06_AXI_araddr"), S06_AXI_arlen("S06_AXI_arlen"), S06_AXI_arsize("S06_AXI_arsize"), S06_AXI_arburst("S06_AXI_arburst"), S06_AXI_arlock("S06_AXI_arlock"), S06_AXI_arcache("S06_AXI_arcache"), S06_AXI_arprot("S06_AXI_arprot"), S06_AXI_arqos("S06_AXI_arqos"), S06_AXI_arvalid("S06_AXI_arvalid"), S06_AXI_arready("S06_AXI_arready"), S06_AXI_rdata("S06_AXI_rdata"), S06_AXI_rresp("S06_AXI_rresp"), S06_AXI_rlast("S06_AXI_rlast"), S06_AXI_rvalid("S06_AXI_rvalid"), S06_AXI_rready("S06_AXI_rready"), S07_AXI_awaddr("S07_AXI_awaddr"), S07_AXI_awlen("S07_AXI_awlen"), S07_AXI_awsize("S07_AXI_awsize"), S07_AXI_awburst("S07_AXI_awburst"), S07_AXI_awlock("S07_AXI_awlock"), S07_AXI_awcache("S07_AXI_awcache"), S07_AXI_awprot("S07_AXI_awprot"), S07_AXI_awqos("S07_AXI_awqos"), S07_AXI_awvalid("S07_AXI_awvalid"), S07_AXI_awready("S07_AXI_awready"), S07_AXI_wdata("S07_AXI_wdata"), S07_AXI_wstrb("S07_AXI_wstrb"), S07_AXI_wlast("S07_AXI_wlast"), S07_AXI_wvalid("S07_AXI_wvalid"), S07_AXI_wready("S07_AXI_wready"), S07_AXI_bresp("S07_AXI_bresp"), S07_AXI_bvalid("S07_AXI_bvalid"), S07_AXI_bready("S07_AXI_bready"), S08_AXI_araddr("S08_AXI_araddr"), S08_AXI_arlen("S08_AXI_arlen"), S08_AXI_arsize("S08_AXI_arsize"), S08_AXI_arburst("S08_AXI_arburst"), S08_AXI_arlock("S08_AXI_arlock"), S08_AXI_arcache("S08_AXI_arcache"), S08_AXI_arprot("S08_AXI_arprot"), S08_AXI_arqos("S08_AXI_arqos"), S08_AXI_arvalid("S08_AXI_arvalid"), S08_AXI_arready("S08_AXI_arready"), S08_AXI_rdata("S08_AXI_rdata"), S08_AXI_rresp("S08_AXI_rresp"), S08_AXI_rlast("S08_AXI_rlast"), S08_AXI_rvalid("S08_AXI_rvalid"), S08_AXI_rready("S08_AXI_rready"), S09_AXI_awaddr("S09_AXI_awaddr"), S09_AXI_awlen("S09_AXI_awlen"), S09_AXI_awsize("S09_AXI_awsize"), S09_AXI_awburst("S09_AXI_awburst"), S09_AXI_awlock("S09_AXI_awlock"), S09_AXI_awcache("S09_AXI_awcache"), S09_AXI_awprot("S09_AXI_awprot"), S09_AXI_awqos("S09_AXI_awqos"), S09_AXI_awvalid("S09_AXI_awvalid"), S09_AXI_awready("S09_AXI_awready"), S09_AXI_wdata("S09_AXI_wdata"), S09_AXI_wstrb("S09_AXI_wstrb"), S09_AXI_wlast("S09_AXI_wlast"), S09_AXI_wvalid("S09_AXI_wvalid"), S09_AXI_wready("S09_AXI_wready"), S09_AXI_bresp("S09_AXI_bresp"), S09_AXI_bvalid("S09_AXI_bvalid"), S09_AXI_bready("S09_AXI_bready"), S10_AXI_araddr("S10_AXI_araddr"), S10_AXI_arlen("S10_AXI_arlen"), S10_AXI_arsize("S10_AXI_arsize"), S10_AXI_arburst("S10_AXI_arburst"), S10_AXI_arlock("S10_AXI_arlock"), S10_AXI_arcache("S10_AXI_arcache"), S10_AXI_arprot("S10_AXI_arprot"), S10_AXI_arqos("S10_AXI_arqos"), S10_AXI_arvalid("S10_AXI_arvalid"), S10_AXI_arready("S10_AXI_arready"), S10_AXI_rdata("S10_AXI_rdata"), S10_AXI_rresp("S10_AXI_rresp"), S10_AXI_rlast("S10_AXI_rlast"), S10_AXI_rvalid("S10_AXI_rvalid"), S10_AXI_rready("S10_AXI_rready"), S11_AXI_awaddr("S11_AXI_awaddr"), S11_AXI_awlen("S11_AXI_awlen"), S11_AXI_awsize("S11_AXI_awsize"), S11_AXI_awburst("S11_AXI_awburst"), S11_AXI_awlock("S11_AXI_awlock"), S11_AXI_awcache("S11_AXI_awcache"), S11_AXI_awprot("S11_AXI_awprot"), S11_AXI_awqos("S11_AXI_awqos"), S11_AXI_awvalid("S11_AXI_awvalid"), S11_AXI_awready("S11_AXI_awready"), S11_AXI_wdata("S11_AXI_wdata"), S11_AXI_wstrb("S11_AXI_wstrb"), S11_AXI_wlast("S11_AXI_wlast"), S11_AXI_wvalid("S11_AXI_wvalid"), S11_AXI_wready("S11_AXI_wready"), S11_AXI_bresp("S11_AXI_bresp"), S11_AXI_bvalid("S11_AXI_bvalid"), S11_AXI_bready("S11_AXI_bready"), M00_AXI_awaddr("M00_AXI_awaddr"), M00_AXI_awlen("M00_AXI_awlen"), M00_AXI_awsize("M00_AXI_awsize"), M00_AXI_awburst("M00_AXI_awburst"), M00_AXI_awlock("M00_AXI_awlock"), M00_AXI_awcache("M00_AXI_awcache"), M00_AXI_awprot("M00_AXI_awprot"), M00_AXI_awqos("M00_AXI_awqos"), M00_AXI_awvalid("M00_AXI_awvalid"), M00_AXI_awready("M00_AXI_awready"), M00_AXI_wdata("M00_AXI_wdata"), M00_AXI_wstrb("M00_AXI_wstrb"), M00_AXI_wlast("M00_AXI_wlast"), M00_AXI_wvalid("M00_AXI_wvalid"), M00_AXI_wready("M00_AXI_wready"), M00_AXI_bresp("M00_AXI_bresp"), M00_AXI_bvalid("M00_AXI_bvalid"), M00_AXI_bready("M00_AXI_bready"), M00_AXI_araddr("M00_AXI_araddr"), M00_AXI_arlen("M00_AXI_arlen"), M00_AXI_arsize("M00_AXI_arsize"), M00_AXI_arburst("M00_AXI_arburst"), M00_AXI_arlock("M00_AXI_arlock"), M00_AXI_arcache("M00_AXI_arcache"), M00_AXI_arprot("M00_AXI_arprot"), M00_AXI_arqos("M00_AXI_arqos"), M00_AXI_arvalid("M00_AXI_arvalid"), M00_AXI_arready("M00_AXI_arready"), M00_AXI_rdata("M00_AXI_rdata"), M00_AXI_rresp("M00_AXI_rresp"), M00_AXI_rlast("M00_AXI_rlast"), M00_AXI_rvalid("M00_AXI_rvalid"), M00_AXI_rready("M00_AXI_rready"),mp_S00_AXI_wr_socket_stub(nullptr),mp_S01_AXI_rd_socket_stub(nullptr),mp_S02_AXI_wr_socket_stub(nullptr),mp_S03_AXI_rd_socket_stub(nullptr),mp_S04_AXI_wr_socket_stub(nullptr),mp_S05_AXI_rd_socket_stub(nullptr),mp_S06_AXI_wr_socket_stub(nullptr),mp_S07_AXI_rd_socket_stub(nullptr),mp_S08_AXI_wr_socket_stub(nullptr),mp_S09_AXI_rd_socket_stub(nullptr),mp_S10_AXI_wr_socket_stub(nullptr),mp_S11_AXI_rd_socket_stub(nullptr)
{

  // initialize pins
  mp_impl->aclk(aclk);
  mp_impl->aresetn(aresetn);

  // initialize transactors
  mp_S00_AXI_transactor = NULL;
  mp_S00_AXI_arlock_converter = NULL;
  mp_S01_AXI_transactor = NULL;
  mp_S01_AXI_awlock_converter = NULL;
  mp_S02_AXI_transactor = NULL;
  mp_S02_AXI_arlock_converter = NULL;
  mp_S03_AXI_transactor = NULL;
  mp_S03_AXI_awlock_converter = NULL;
  mp_S04_AXI_transactor = NULL;
  mp_S04_AXI_arlock_converter = NULL;
  mp_S05_AXI_transactor = NULL;
  mp_S05_AXI_awlock_converter = NULL;
  mp_S06_AXI_transactor = NULL;
  mp_S06_AXI_arlock_converter = NULL;
  mp_S07_AXI_transactor = NULL;
  mp_S07_AXI_awlock_converter = NULL;
  mp_S08_AXI_transactor = NULL;
  mp_S08_AXI_arlock_converter = NULL;
  mp_S09_AXI_transactor = NULL;
  mp_S09_AXI_awlock_converter = NULL;
  mp_S10_AXI_transactor = NULL;
  mp_S10_AXI_arlock_converter = NULL;
  mp_S11_AXI_transactor = NULL;
  mp_S11_AXI_awlock_converter = NULL;
  mp_M00_AXI_transactor = NULL;
  mp_M00_AXI_awlen_converter = NULL;
  mp_M00_AXI_awlock_converter = NULL;
  mp_M00_AXI_arlen_converter = NULL;
  mp_M00_AXI_arlock_converter = NULL;

  // initialize socket stubs
  mp_S00_AXI_wr_socket_stub = NULL;
  mp_S01_AXI_rd_socket_stub = NULL;
  mp_S02_AXI_wr_socket_stub = NULL;
  mp_S03_AXI_rd_socket_stub = NULL;
  mp_S04_AXI_wr_socket_stub = NULL;
  mp_S05_AXI_rd_socket_stub = NULL;
  mp_S06_AXI_wr_socket_stub = NULL;
  mp_S07_AXI_rd_socket_stub = NULL;
  mp_S08_AXI_wr_socket_stub = NULL;
  mp_S09_AXI_rd_socket_stub = NULL;
  mp_S10_AXI_wr_socket_stub = NULL;
  mp_S11_AXI_rd_socket_stub = NULL;

}

void design_1_smartconnect_0_0::before_end_of_elaboration()
{
  // configure 'S00_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "S00_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs
    mp_S00_AXI_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket", 0);

  // 'S00_AXI' transactor parameters
    xsc::common_cpp::properties S00_AXI_transactor_param_props;
    S00_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S00_AXI_transactor_param_props.addLong("FREQ_HZ", "100000000");
    S00_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S00_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S00_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S00_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S00_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S00_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S00_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S00_AXI_transactor_param_props.addLong("HAS_WSTRB", "0");
    S00_AXI_transactor_param_props.addLong("HAS_BRESP", "0");
    S00_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S00_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S00_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    S00_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S00_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    S00_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S00_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S00_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S00_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S00_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S00_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S00_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S00_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S00_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_ONLY");
    S00_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_S00_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,32,1,1,1,1,1,1>("S00_AXI_transactor", S00_AXI_transactor_param_props);

    // S00_AXI' transactor ports

    mp_S00_AXI_transactor->ARADDR(S00_AXI_araddr);
    mp_S00_AXI_transactor->ARLEN(S00_AXI_arlen);
    mp_S00_AXI_transactor->ARSIZE(S00_AXI_arsize);
    mp_S00_AXI_transactor->ARBURST(S00_AXI_arburst);
    mp_S00_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXI_arlock_converter");
    mp_S00_AXI_arlock_converter->vector_in(S00_AXI_arlock);
    mp_S00_AXI_arlock_converter->scalar_out(m_S00_AXI_arlock_converter_signal);
    mp_S00_AXI_transactor->ARLOCK(m_S00_AXI_arlock_converter_signal);
    mp_S00_AXI_transactor->ARCACHE(S00_AXI_arcache);
    mp_S00_AXI_transactor->ARPROT(S00_AXI_arprot);
    mp_S00_AXI_transactor->ARQOS(S00_AXI_arqos);
    mp_S00_AXI_transactor->ARVALID(S00_AXI_arvalid);
    mp_S00_AXI_transactor->ARREADY(S00_AXI_arready);
    mp_S00_AXI_transactor->RDATA(S00_AXI_rdata);
    mp_S00_AXI_transactor->RRESP(S00_AXI_rresp);
    mp_S00_AXI_transactor->RLAST(S00_AXI_rlast);
    mp_S00_AXI_transactor->RVALID(S00_AXI_rvalid);
    mp_S00_AXI_transactor->RREADY(S00_AXI_rready);
    mp_S00_AXI_transactor->CLK(aclk);
    mp_S00_AXI_transactor->RST(aresetn);

    // S00_AXI' transactor sockets

    mp_impl->S00_AXI_tlm_aximm_read_socket->bind(*(mp_S00_AXI_transactor->rd_socket));
    mp_impl->S00_AXI_tlm_aximm_write_socket->bind(mp_S00_AXI_wr_socket_stub->initiator_socket);
  }
  else
  {
  }

  // configure 'S01_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "S01_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs
    mp_S01_AXI_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket", 0);

  // 'S01_AXI' transactor parameters
    xsc::common_cpp::properties S01_AXI_transactor_param_props;
    S01_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S01_AXI_transactor_param_props.addLong("FREQ_HZ", "100000000");
    S01_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S01_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S01_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S01_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S01_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S01_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S01_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S01_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S01_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S01_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S01_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S01_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S01_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S01_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S01_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S01_AXI_transactor_param_props.addLong("HAS_RRESP", "0");
    S01_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S01_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S01_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "16");
    S01_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    S01_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S01_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S01_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S01_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S01_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S01_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S01_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S01_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S01_AXI_transactor_param_props.addString("READ_WRITE_MODE", "WRITE_ONLY");
    S01_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_S01_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,32,1,1,1,1,1,1>("S01_AXI_transactor", S01_AXI_transactor_param_props);

    // S01_AXI' transactor ports

    mp_S01_AXI_transactor->AWADDR(S01_AXI_awaddr);
    mp_S01_AXI_transactor->AWLEN(S01_AXI_awlen);
    mp_S01_AXI_transactor->AWSIZE(S01_AXI_awsize);
    mp_S01_AXI_transactor->AWBURST(S01_AXI_awburst);
    mp_S01_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S01_AXI_awlock_converter");
    mp_S01_AXI_awlock_converter->vector_in(S01_AXI_awlock);
    mp_S01_AXI_awlock_converter->scalar_out(m_S01_AXI_awlock_converter_signal);
    mp_S01_AXI_transactor->AWLOCK(m_S01_AXI_awlock_converter_signal);
    mp_S01_AXI_transactor->AWCACHE(S01_AXI_awcache);
    mp_S01_AXI_transactor->AWPROT(S01_AXI_awprot);
    mp_S01_AXI_transactor->AWQOS(S01_AXI_awqos);
    mp_S01_AXI_transactor->AWVALID(S01_AXI_awvalid);
    mp_S01_AXI_transactor->AWREADY(S01_AXI_awready);
    mp_S01_AXI_transactor->WDATA(S01_AXI_wdata);
    mp_S01_AXI_transactor->WSTRB(S01_AXI_wstrb);
    mp_S01_AXI_transactor->WLAST(S01_AXI_wlast);
    mp_S01_AXI_transactor->WVALID(S01_AXI_wvalid);
    mp_S01_AXI_transactor->WREADY(S01_AXI_wready);
    mp_S01_AXI_transactor->BRESP(S01_AXI_bresp);
    mp_S01_AXI_transactor->BVALID(S01_AXI_bvalid);
    mp_S01_AXI_transactor->BREADY(S01_AXI_bready);
    mp_S01_AXI_transactor->CLK(aclk);
    mp_S01_AXI_transactor->RST(aresetn);

    // S01_AXI' transactor sockets

    mp_impl->S01_AXI_tlm_aximm_read_socket->bind(mp_S01_AXI_rd_socket_stub->initiator_socket);
    mp_impl->S01_AXI_tlm_aximm_write_socket->bind(*(mp_S01_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S02_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "S02_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs
    mp_S02_AXI_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket", 0);

  // 'S02_AXI' transactor parameters
    xsc::common_cpp::properties S02_AXI_transactor_param_props;
    S02_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S02_AXI_transactor_param_props.addLong("FREQ_HZ", "100000000");
    S02_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S02_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S02_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S02_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S02_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S02_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S02_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S02_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S02_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S02_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S02_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S02_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S02_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S02_AXI_transactor_param_props.addLong("HAS_WSTRB", "0");
    S02_AXI_transactor_param_props.addLong("HAS_BRESP", "0");
    S02_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S02_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S02_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    S02_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S02_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    S02_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S02_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S02_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S02_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S02_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S02_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S02_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S02_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S02_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_ONLY");
    S02_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_S02_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,32,1,1,1,1,1,1>("S02_AXI_transactor", S02_AXI_transactor_param_props);

    // S02_AXI' transactor ports

    mp_S02_AXI_transactor->ARADDR(S02_AXI_araddr);
    mp_S02_AXI_transactor->ARLEN(S02_AXI_arlen);
    mp_S02_AXI_transactor->ARSIZE(S02_AXI_arsize);
    mp_S02_AXI_transactor->ARBURST(S02_AXI_arburst);
    mp_S02_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S02_AXI_arlock_converter");
    mp_S02_AXI_arlock_converter->vector_in(S02_AXI_arlock);
    mp_S02_AXI_arlock_converter->scalar_out(m_S02_AXI_arlock_converter_signal);
    mp_S02_AXI_transactor->ARLOCK(m_S02_AXI_arlock_converter_signal);
    mp_S02_AXI_transactor->ARCACHE(S02_AXI_arcache);
    mp_S02_AXI_transactor->ARPROT(S02_AXI_arprot);
    mp_S02_AXI_transactor->ARQOS(S02_AXI_arqos);
    mp_S02_AXI_transactor->ARVALID(S02_AXI_arvalid);
    mp_S02_AXI_transactor->ARREADY(S02_AXI_arready);
    mp_S02_AXI_transactor->RDATA(S02_AXI_rdata);
    mp_S02_AXI_transactor->RRESP(S02_AXI_rresp);
    mp_S02_AXI_transactor->RLAST(S02_AXI_rlast);
    mp_S02_AXI_transactor->RVALID(S02_AXI_rvalid);
    mp_S02_AXI_transactor->RREADY(S02_AXI_rready);
    mp_S02_AXI_transactor->CLK(aclk);
    mp_S02_AXI_transactor->RST(aresetn);

    // S02_AXI' transactor sockets

    mp_impl->S02_AXI_tlm_aximm_read_socket->bind(*(mp_S02_AXI_transactor->rd_socket));
    mp_impl->S02_AXI_tlm_aximm_write_socket->bind(mp_S02_AXI_wr_socket_stub->initiator_socket);
  }
  else
  {
  }

  // configure 'S03_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "S03_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs
    mp_S03_AXI_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket", 0);

  // 'S03_AXI' transactor parameters
    xsc::common_cpp::properties S03_AXI_transactor_param_props;
    S03_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S03_AXI_transactor_param_props.addLong("FREQ_HZ", "100000000");
    S03_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S03_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S03_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S03_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S03_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S03_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S03_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S03_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S03_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S03_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S03_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S03_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S03_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S03_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S03_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S03_AXI_transactor_param_props.addLong("HAS_RRESP", "0");
    S03_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S03_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S03_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "16");
    S03_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    S03_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S03_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S03_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S03_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S03_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S03_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S03_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S03_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S03_AXI_transactor_param_props.addString("READ_WRITE_MODE", "WRITE_ONLY");
    S03_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_S03_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,32,1,1,1,1,1,1>("S03_AXI_transactor", S03_AXI_transactor_param_props);

    // S03_AXI' transactor ports

    mp_S03_AXI_transactor->AWADDR(S03_AXI_awaddr);
    mp_S03_AXI_transactor->AWLEN(S03_AXI_awlen);
    mp_S03_AXI_transactor->AWSIZE(S03_AXI_awsize);
    mp_S03_AXI_transactor->AWBURST(S03_AXI_awburst);
    mp_S03_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S03_AXI_awlock_converter");
    mp_S03_AXI_awlock_converter->vector_in(S03_AXI_awlock);
    mp_S03_AXI_awlock_converter->scalar_out(m_S03_AXI_awlock_converter_signal);
    mp_S03_AXI_transactor->AWLOCK(m_S03_AXI_awlock_converter_signal);
    mp_S03_AXI_transactor->AWCACHE(S03_AXI_awcache);
    mp_S03_AXI_transactor->AWPROT(S03_AXI_awprot);
    mp_S03_AXI_transactor->AWQOS(S03_AXI_awqos);
    mp_S03_AXI_transactor->AWVALID(S03_AXI_awvalid);
    mp_S03_AXI_transactor->AWREADY(S03_AXI_awready);
    mp_S03_AXI_transactor->WDATA(S03_AXI_wdata);
    mp_S03_AXI_transactor->WSTRB(S03_AXI_wstrb);
    mp_S03_AXI_transactor->WLAST(S03_AXI_wlast);
    mp_S03_AXI_transactor->WVALID(S03_AXI_wvalid);
    mp_S03_AXI_transactor->WREADY(S03_AXI_wready);
    mp_S03_AXI_transactor->BRESP(S03_AXI_bresp);
    mp_S03_AXI_transactor->BVALID(S03_AXI_bvalid);
    mp_S03_AXI_transactor->BREADY(S03_AXI_bready);
    mp_S03_AXI_transactor->CLK(aclk);
    mp_S03_AXI_transactor->RST(aresetn);

    // S03_AXI' transactor sockets

    mp_impl->S03_AXI_tlm_aximm_read_socket->bind(mp_S03_AXI_rd_socket_stub->initiator_socket);
    mp_impl->S03_AXI_tlm_aximm_write_socket->bind(*(mp_S03_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S04_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "S04_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs
    mp_S04_AXI_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket", 0);

  // 'S04_AXI' transactor parameters
    xsc::common_cpp::properties S04_AXI_transactor_param_props;
    S04_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S04_AXI_transactor_param_props.addLong("FREQ_HZ", "100000000");
    S04_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S04_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S04_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S04_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S04_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S04_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S04_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S04_AXI_transactor_param_props.addLong("HAS_WSTRB", "0");
    S04_AXI_transactor_param_props.addLong("HAS_BRESP", "0");
    S04_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S04_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S04_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    S04_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S04_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    S04_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S04_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S04_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S04_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S04_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S04_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S04_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S04_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S04_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_ONLY");
    S04_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_S04_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,32,1,1,1,1,1,1>("S04_AXI_transactor", S04_AXI_transactor_param_props);

    // S04_AXI' transactor ports

    mp_S04_AXI_transactor->ARADDR(S04_AXI_araddr);
    mp_S04_AXI_transactor->ARLEN(S04_AXI_arlen);
    mp_S04_AXI_transactor->ARSIZE(S04_AXI_arsize);
    mp_S04_AXI_transactor->ARBURST(S04_AXI_arburst);
    mp_S04_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S04_AXI_arlock_converter");
    mp_S04_AXI_arlock_converter->vector_in(S04_AXI_arlock);
    mp_S04_AXI_arlock_converter->scalar_out(m_S04_AXI_arlock_converter_signal);
    mp_S04_AXI_transactor->ARLOCK(m_S04_AXI_arlock_converter_signal);
    mp_S04_AXI_transactor->ARCACHE(S04_AXI_arcache);
    mp_S04_AXI_transactor->ARPROT(S04_AXI_arprot);
    mp_S04_AXI_transactor->ARQOS(S04_AXI_arqos);
    mp_S04_AXI_transactor->ARVALID(S04_AXI_arvalid);
    mp_S04_AXI_transactor->ARREADY(S04_AXI_arready);
    mp_S04_AXI_transactor->RDATA(S04_AXI_rdata);
    mp_S04_AXI_transactor->RRESP(S04_AXI_rresp);
    mp_S04_AXI_transactor->RLAST(S04_AXI_rlast);
    mp_S04_AXI_transactor->RVALID(S04_AXI_rvalid);
    mp_S04_AXI_transactor->RREADY(S04_AXI_rready);
    mp_S04_AXI_transactor->CLK(aclk);
    mp_S04_AXI_transactor->RST(aresetn);

    // S04_AXI' transactor sockets

    mp_impl->S04_AXI_tlm_aximm_read_socket->bind(*(mp_S04_AXI_transactor->rd_socket));
    mp_impl->S04_AXI_tlm_aximm_write_socket->bind(mp_S04_AXI_wr_socket_stub->initiator_socket);
  }
  else
  {
  }

  // configure 'S05_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "S05_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs
    mp_S05_AXI_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket", 0);

  // 'S05_AXI' transactor parameters
    xsc::common_cpp::properties S05_AXI_transactor_param_props;
    S05_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S05_AXI_transactor_param_props.addLong("FREQ_HZ", "100000000");
    S05_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S05_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S05_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S05_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S05_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S05_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S05_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S05_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S05_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S05_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S05_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S05_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S05_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S05_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S05_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S05_AXI_transactor_param_props.addLong("HAS_RRESP", "0");
    S05_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S05_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S05_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "16");
    S05_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    S05_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S05_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S05_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S05_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S05_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S05_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S05_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S05_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S05_AXI_transactor_param_props.addString("READ_WRITE_MODE", "WRITE_ONLY");
    S05_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_S05_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,32,1,1,1,1,1,1>("S05_AXI_transactor", S05_AXI_transactor_param_props);

    // S05_AXI' transactor ports

    mp_S05_AXI_transactor->AWADDR(S05_AXI_awaddr);
    mp_S05_AXI_transactor->AWLEN(S05_AXI_awlen);
    mp_S05_AXI_transactor->AWSIZE(S05_AXI_awsize);
    mp_S05_AXI_transactor->AWBURST(S05_AXI_awburst);
    mp_S05_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S05_AXI_awlock_converter");
    mp_S05_AXI_awlock_converter->vector_in(S05_AXI_awlock);
    mp_S05_AXI_awlock_converter->scalar_out(m_S05_AXI_awlock_converter_signal);
    mp_S05_AXI_transactor->AWLOCK(m_S05_AXI_awlock_converter_signal);
    mp_S05_AXI_transactor->AWCACHE(S05_AXI_awcache);
    mp_S05_AXI_transactor->AWPROT(S05_AXI_awprot);
    mp_S05_AXI_transactor->AWQOS(S05_AXI_awqos);
    mp_S05_AXI_transactor->AWVALID(S05_AXI_awvalid);
    mp_S05_AXI_transactor->AWREADY(S05_AXI_awready);
    mp_S05_AXI_transactor->WDATA(S05_AXI_wdata);
    mp_S05_AXI_transactor->WSTRB(S05_AXI_wstrb);
    mp_S05_AXI_transactor->WLAST(S05_AXI_wlast);
    mp_S05_AXI_transactor->WVALID(S05_AXI_wvalid);
    mp_S05_AXI_transactor->WREADY(S05_AXI_wready);
    mp_S05_AXI_transactor->BRESP(S05_AXI_bresp);
    mp_S05_AXI_transactor->BVALID(S05_AXI_bvalid);
    mp_S05_AXI_transactor->BREADY(S05_AXI_bready);
    mp_S05_AXI_transactor->CLK(aclk);
    mp_S05_AXI_transactor->RST(aresetn);

    // S05_AXI' transactor sockets

    mp_impl->S05_AXI_tlm_aximm_read_socket->bind(mp_S05_AXI_rd_socket_stub->initiator_socket);
    mp_impl->S05_AXI_tlm_aximm_write_socket->bind(*(mp_S05_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S06_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "S06_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs
    mp_S06_AXI_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket", 0);

  // 'S06_AXI' transactor parameters
    xsc::common_cpp::properties S06_AXI_transactor_param_props;
    S06_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S06_AXI_transactor_param_props.addLong("FREQ_HZ", "100000000");
    S06_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S06_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S06_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S06_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S06_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S06_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S06_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S06_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S06_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S06_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S06_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S06_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S06_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S06_AXI_transactor_param_props.addLong("HAS_WSTRB", "0");
    S06_AXI_transactor_param_props.addLong("HAS_BRESP", "0");
    S06_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S06_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S06_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    S06_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S06_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    S06_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S06_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S06_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S06_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S06_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S06_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S06_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S06_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S06_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_ONLY");
    S06_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_S06_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,32,1,1,1,1,1,1>("S06_AXI_transactor", S06_AXI_transactor_param_props);

    // S06_AXI' transactor ports

    mp_S06_AXI_transactor->ARADDR(S06_AXI_araddr);
    mp_S06_AXI_transactor->ARLEN(S06_AXI_arlen);
    mp_S06_AXI_transactor->ARSIZE(S06_AXI_arsize);
    mp_S06_AXI_transactor->ARBURST(S06_AXI_arburst);
    mp_S06_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S06_AXI_arlock_converter");
    mp_S06_AXI_arlock_converter->vector_in(S06_AXI_arlock);
    mp_S06_AXI_arlock_converter->scalar_out(m_S06_AXI_arlock_converter_signal);
    mp_S06_AXI_transactor->ARLOCK(m_S06_AXI_arlock_converter_signal);
    mp_S06_AXI_transactor->ARCACHE(S06_AXI_arcache);
    mp_S06_AXI_transactor->ARPROT(S06_AXI_arprot);
    mp_S06_AXI_transactor->ARQOS(S06_AXI_arqos);
    mp_S06_AXI_transactor->ARVALID(S06_AXI_arvalid);
    mp_S06_AXI_transactor->ARREADY(S06_AXI_arready);
    mp_S06_AXI_transactor->RDATA(S06_AXI_rdata);
    mp_S06_AXI_transactor->RRESP(S06_AXI_rresp);
    mp_S06_AXI_transactor->RLAST(S06_AXI_rlast);
    mp_S06_AXI_transactor->RVALID(S06_AXI_rvalid);
    mp_S06_AXI_transactor->RREADY(S06_AXI_rready);
    mp_S06_AXI_transactor->CLK(aclk);
    mp_S06_AXI_transactor->RST(aresetn);

    // S06_AXI' transactor sockets

    mp_impl->S06_AXI_tlm_aximm_read_socket->bind(*(mp_S06_AXI_transactor->rd_socket));
    mp_impl->S06_AXI_tlm_aximm_write_socket->bind(mp_S06_AXI_wr_socket_stub->initiator_socket);
  }
  else
  {
  }

  // configure 'S07_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "S07_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs
    mp_S07_AXI_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket", 0);

  // 'S07_AXI' transactor parameters
    xsc::common_cpp::properties S07_AXI_transactor_param_props;
    S07_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S07_AXI_transactor_param_props.addLong("FREQ_HZ", "100000000");
    S07_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S07_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S07_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S07_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S07_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S07_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S07_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S07_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S07_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S07_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S07_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S07_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S07_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S07_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S07_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S07_AXI_transactor_param_props.addLong("HAS_RRESP", "0");
    S07_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S07_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S07_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "16");
    S07_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    S07_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S07_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S07_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S07_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S07_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S07_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S07_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S07_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S07_AXI_transactor_param_props.addString("READ_WRITE_MODE", "WRITE_ONLY");
    S07_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_S07_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,32,1,1,1,1,1,1>("S07_AXI_transactor", S07_AXI_transactor_param_props);

    // S07_AXI' transactor ports

    mp_S07_AXI_transactor->AWADDR(S07_AXI_awaddr);
    mp_S07_AXI_transactor->AWLEN(S07_AXI_awlen);
    mp_S07_AXI_transactor->AWSIZE(S07_AXI_awsize);
    mp_S07_AXI_transactor->AWBURST(S07_AXI_awburst);
    mp_S07_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S07_AXI_awlock_converter");
    mp_S07_AXI_awlock_converter->vector_in(S07_AXI_awlock);
    mp_S07_AXI_awlock_converter->scalar_out(m_S07_AXI_awlock_converter_signal);
    mp_S07_AXI_transactor->AWLOCK(m_S07_AXI_awlock_converter_signal);
    mp_S07_AXI_transactor->AWCACHE(S07_AXI_awcache);
    mp_S07_AXI_transactor->AWPROT(S07_AXI_awprot);
    mp_S07_AXI_transactor->AWQOS(S07_AXI_awqos);
    mp_S07_AXI_transactor->AWVALID(S07_AXI_awvalid);
    mp_S07_AXI_transactor->AWREADY(S07_AXI_awready);
    mp_S07_AXI_transactor->WDATA(S07_AXI_wdata);
    mp_S07_AXI_transactor->WSTRB(S07_AXI_wstrb);
    mp_S07_AXI_transactor->WLAST(S07_AXI_wlast);
    mp_S07_AXI_transactor->WVALID(S07_AXI_wvalid);
    mp_S07_AXI_transactor->WREADY(S07_AXI_wready);
    mp_S07_AXI_transactor->BRESP(S07_AXI_bresp);
    mp_S07_AXI_transactor->BVALID(S07_AXI_bvalid);
    mp_S07_AXI_transactor->BREADY(S07_AXI_bready);
    mp_S07_AXI_transactor->CLK(aclk);
    mp_S07_AXI_transactor->RST(aresetn);

    // S07_AXI' transactor sockets

    mp_impl->S07_AXI_tlm_aximm_read_socket->bind(mp_S07_AXI_rd_socket_stub->initiator_socket);
    mp_impl->S07_AXI_tlm_aximm_write_socket->bind(*(mp_S07_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S08_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "S08_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs
    mp_S08_AXI_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket", 0);

  // 'S08_AXI' transactor parameters
    xsc::common_cpp::properties S08_AXI_transactor_param_props;
    S08_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S08_AXI_transactor_param_props.addLong("FREQ_HZ", "100000000");
    S08_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S08_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S08_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S08_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S08_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S08_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S08_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S08_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S08_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S08_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S08_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S08_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S08_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S08_AXI_transactor_param_props.addLong("HAS_WSTRB", "0");
    S08_AXI_transactor_param_props.addLong("HAS_BRESP", "0");
    S08_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S08_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S08_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    S08_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S08_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    S08_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S08_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S08_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S08_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S08_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S08_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S08_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S08_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S08_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_ONLY");
    S08_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_S08_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,32,1,1,1,1,1,1>("S08_AXI_transactor", S08_AXI_transactor_param_props);

    // S08_AXI' transactor ports

    mp_S08_AXI_transactor->ARADDR(S08_AXI_araddr);
    mp_S08_AXI_transactor->ARLEN(S08_AXI_arlen);
    mp_S08_AXI_transactor->ARSIZE(S08_AXI_arsize);
    mp_S08_AXI_transactor->ARBURST(S08_AXI_arburst);
    mp_S08_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S08_AXI_arlock_converter");
    mp_S08_AXI_arlock_converter->vector_in(S08_AXI_arlock);
    mp_S08_AXI_arlock_converter->scalar_out(m_S08_AXI_arlock_converter_signal);
    mp_S08_AXI_transactor->ARLOCK(m_S08_AXI_arlock_converter_signal);
    mp_S08_AXI_transactor->ARCACHE(S08_AXI_arcache);
    mp_S08_AXI_transactor->ARPROT(S08_AXI_arprot);
    mp_S08_AXI_transactor->ARQOS(S08_AXI_arqos);
    mp_S08_AXI_transactor->ARVALID(S08_AXI_arvalid);
    mp_S08_AXI_transactor->ARREADY(S08_AXI_arready);
    mp_S08_AXI_transactor->RDATA(S08_AXI_rdata);
    mp_S08_AXI_transactor->RRESP(S08_AXI_rresp);
    mp_S08_AXI_transactor->RLAST(S08_AXI_rlast);
    mp_S08_AXI_transactor->RVALID(S08_AXI_rvalid);
    mp_S08_AXI_transactor->RREADY(S08_AXI_rready);
    mp_S08_AXI_transactor->CLK(aclk);
    mp_S08_AXI_transactor->RST(aresetn);

    // S08_AXI' transactor sockets

    mp_impl->S08_AXI_tlm_aximm_read_socket->bind(*(mp_S08_AXI_transactor->rd_socket));
    mp_impl->S08_AXI_tlm_aximm_write_socket->bind(mp_S08_AXI_wr_socket_stub->initiator_socket);
  }
  else
  {
  }

  // configure 'S09_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "S09_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs
    mp_S09_AXI_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket", 0);

  // 'S09_AXI' transactor parameters
    xsc::common_cpp::properties S09_AXI_transactor_param_props;
    S09_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S09_AXI_transactor_param_props.addLong("FREQ_HZ", "100000000");
    S09_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S09_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S09_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S09_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S09_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S09_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S09_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S09_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S09_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S09_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S09_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S09_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S09_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S09_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S09_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S09_AXI_transactor_param_props.addLong("HAS_RRESP", "0");
    S09_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S09_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S09_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "16");
    S09_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    S09_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S09_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S09_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S09_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S09_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S09_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S09_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S09_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S09_AXI_transactor_param_props.addString("READ_WRITE_MODE", "WRITE_ONLY");
    S09_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_S09_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,32,1,1,1,1,1,1>("S09_AXI_transactor", S09_AXI_transactor_param_props);

    // S09_AXI' transactor ports

    mp_S09_AXI_transactor->AWADDR(S09_AXI_awaddr);
    mp_S09_AXI_transactor->AWLEN(S09_AXI_awlen);
    mp_S09_AXI_transactor->AWSIZE(S09_AXI_awsize);
    mp_S09_AXI_transactor->AWBURST(S09_AXI_awburst);
    mp_S09_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S09_AXI_awlock_converter");
    mp_S09_AXI_awlock_converter->vector_in(S09_AXI_awlock);
    mp_S09_AXI_awlock_converter->scalar_out(m_S09_AXI_awlock_converter_signal);
    mp_S09_AXI_transactor->AWLOCK(m_S09_AXI_awlock_converter_signal);
    mp_S09_AXI_transactor->AWCACHE(S09_AXI_awcache);
    mp_S09_AXI_transactor->AWPROT(S09_AXI_awprot);
    mp_S09_AXI_transactor->AWQOS(S09_AXI_awqos);
    mp_S09_AXI_transactor->AWVALID(S09_AXI_awvalid);
    mp_S09_AXI_transactor->AWREADY(S09_AXI_awready);
    mp_S09_AXI_transactor->WDATA(S09_AXI_wdata);
    mp_S09_AXI_transactor->WSTRB(S09_AXI_wstrb);
    mp_S09_AXI_transactor->WLAST(S09_AXI_wlast);
    mp_S09_AXI_transactor->WVALID(S09_AXI_wvalid);
    mp_S09_AXI_transactor->WREADY(S09_AXI_wready);
    mp_S09_AXI_transactor->BRESP(S09_AXI_bresp);
    mp_S09_AXI_transactor->BVALID(S09_AXI_bvalid);
    mp_S09_AXI_transactor->BREADY(S09_AXI_bready);
    mp_S09_AXI_transactor->CLK(aclk);
    mp_S09_AXI_transactor->RST(aresetn);

    // S09_AXI' transactor sockets

    mp_impl->S09_AXI_tlm_aximm_read_socket->bind(mp_S09_AXI_rd_socket_stub->initiator_socket);
    mp_impl->S09_AXI_tlm_aximm_write_socket->bind(*(mp_S09_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S10_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "S10_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs
    mp_S10_AXI_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket", 0);

  // 'S10_AXI' transactor parameters
    xsc::common_cpp::properties S10_AXI_transactor_param_props;
    S10_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S10_AXI_transactor_param_props.addLong("FREQ_HZ", "100000000");
    S10_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S10_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S10_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S10_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S10_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S10_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S10_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S10_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S10_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S10_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S10_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S10_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S10_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S10_AXI_transactor_param_props.addLong("HAS_WSTRB", "0");
    S10_AXI_transactor_param_props.addLong("HAS_BRESP", "0");
    S10_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S10_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S10_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    S10_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S10_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    S10_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S10_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S10_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S10_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S10_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S10_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S10_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S10_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S10_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_ONLY");
    S10_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_S10_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,32,1,1,1,1,1,1>("S10_AXI_transactor", S10_AXI_transactor_param_props);

    // S10_AXI' transactor ports

    mp_S10_AXI_transactor->ARADDR(S10_AXI_araddr);
    mp_S10_AXI_transactor->ARLEN(S10_AXI_arlen);
    mp_S10_AXI_transactor->ARSIZE(S10_AXI_arsize);
    mp_S10_AXI_transactor->ARBURST(S10_AXI_arburst);
    mp_S10_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S10_AXI_arlock_converter");
    mp_S10_AXI_arlock_converter->vector_in(S10_AXI_arlock);
    mp_S10_AXI_arlock_converter->scalar_out(m_S10_AXI_arlock_converter_signal);
    mp_S10_AXI_transactor->ARLOCK(m_S10_AXI_arlock_converter_signal);
    mp_S10_AXI_transactor->ARCACHE(S10_AXI_arcache);
    mp_S10_AXI_transactor->ARPROT(S10_AXI_arprot);
    mp_S10_AXI_transactor->ARQOS(S10_AXI_arqos);
    mp_S10_AXI_transactor->ARVALID(S10_AXI_arvalid);
    mp_S10_AXI_transactor->ARREADY(S10_AXI_arready);
    mp_S10_AXI_transactor->RDATA(S10_AXI_rdata);
    mp_S10_AXI_transactor->RRESP(S10_AXI_rresp);
    mp_S10_AXI_transactor->RLAST(S10_AXI_rlast);
    mp_S10_AXI_transactor->RVALID(S10_AXI_rvalid);
    mp_S10_AXI_transactor->RREADY(S10_AXI_rready);
    mp_S10_AXI_transactor->CLK(aclk);
    mp_S10_AXI_transactor->RST(aresetn);

    // S10_AXI' transactor sockets

    mp_impl->S10_AXI_tlm_aximm_read_socket->bind(*(mp_S10_AXI_transactor->rd_socket));
    mp_impl->S10_AXI_tlm_aximm_write_socket->bind(mp_S10_AXI_wr_socket_stub->initiator_socket);
  }
  else
  {
  }

  // configure 'S11_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "S11_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs
    mp_S11_AXI_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket", 0);

  // 'S11_AXI' transactor parameters
    xsc::common_cpp::properties S11_AXI_transactor_param_props;
    S11_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S11_AXI_transactor_param_props.addLong("FREQ_HZ", "100000000");
    S11_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S11_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S11_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S11_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S11_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S11_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S11_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S11_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S11_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S11_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S11_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S11_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S11_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S11_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S11_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S11_AXI_transactor_param_props.addLong("HAS_RRESP", "0");
    S11_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S11_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S11_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "16");
    S11_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    S11_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S11_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S11_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S11_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S11_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S11_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S11_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S11_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S11_AXI_transactor_param_props.addString("READ_WRITE_MODE", "WRITE_ONLY");
    S11_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_S11_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,32,1,1,1,1,1,1>("S11_AXI_transactor", S11_AXI_transactor_param_props);

    // S11_AXI' transactor ports

    mp_S11_AXI_transactor->AWADDR(S11_AXI_awaddr);
    mp_S11_AXI_transactor->AWLEN(S11_AXI_awlen);
    mp_S11_AXI_transactor->AWSIZE(S11_AXI_awsize);
    mp_S11_AXI_transactor->AWBURST(S11_AXI_awburst);
    mp_S11_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S11_AXI_awlock_converter");
    mp_S11_AXI_awlock_converter->vector_in(S11_AXI_awlock);
    mp_S11_AXI_awlock_converter->scalar_out(m_S11_AXI_awlock_converter_signal);
    mp_S11_AXI_transactor->AWLOCK(m_S11_AXI_awlock_converter_signal);
    mp_S11_AXI_transactor->AWCACHE(S11_AXI_awcache);
    mp_S11_AXI_transactor->AWPROT(S11_AXI_awprot);
    mp_S11_AXI_transactor->AWQOS(S11_AXI_awqos);
    mp_S11_AXI_transactor->AWVALID(S11_AXI_awvalid);
    mp_S11_AXI_transactor->AWREADY(S11_AXI_awready);
    mp_S11_AXI_transactor->WDATA(S11_AXI_wdata);
    mp_S11_AXI_transactor->WSTRB(S11_AXI_wstrb);
    mp_S11_AXI_transactor->WLAST(S11_AXI_wlast);
    mp_S11_AXI_transactor->WVALID(S11_AXI_wvalid);
    mp_S11_AXI_transactor->WREADY(S11_AXI_wready);
    mp_S11_AXI_transactor->BRESP(S11_AXI_bresp);
    mp_S11_AXI_transactor->BVALID(S11_AXI_bvalid);
    mp_S11_AXI_transactor->BREADY(S11_AXI_bready);
    mp_S11_AXI_transactor->CLK(aclk);
    mp_S11_AXI_transactor->RST(aresetn);

    // S11_AXI' transactor sockets

    mp_impl->S11_AXI_tlm_aximm_read_socket->bind(mp_S11_AXI_rd_socket_stub->initiator_socket);
    mp_impl->S11_AXI_tlm_aximm_write_socket->bind(*(mp_S11_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M00_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "M00_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M00_AXI' transactor parameters
    xsc::common_cpp::properties M00_AXI_transactor_param_props;
    M00_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    M00_AXI_transactor_param_props.addLong("FREQ_HZ", "100000000");
    M00_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    M00_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    M00_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    M00_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M00_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    M00_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    M00_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M00_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M00_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M00_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M00_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M00_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    M00_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "16");
    M00_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    M00_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M00_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M00_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M00_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M00_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    M00_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M00_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    M00_AXI_transactor_param_props.addString("PROTOCOL", "AXI3");
    M00_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M00_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_M00_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<32,32,1,1,1,1,1,1>("M00_AXI_transactor", M00_AXI_transactor_param_props);

    // M00_AXI' transactor ports

    mp_M00_AXI_transactor->AWADDR(M00_AXI_awaddr);
    mp_M00_AXI_awlen_converter = new xsc::common::vector2vector_converter<8,4>("M00_AXI_awlen_converter");
    mp_M00_AXI_awlen_converter->vector_in(m_M00_AXI_awlen_converter_signal);
    mp_M00_AXI_awlen_converter->vector_out(M00_AXI_awlen);
    mp_M00_AXI_transactor->AWLEN(m_M00_AXI_awlen_converter_signal);
    mp_M00_AXI_transactor->AWSIZE(M00_AXI_awsize);
    mp_M00_AXI_transactor->AWBURST(M00_AXI_awburst);
    mp_M00_AXI_awlock_converter = new xsc::common::scalar2vectorN_converter<2>("M00_AXI_awlock_converter");
    mp_M00_AXI_awlock_converter->scalar_in(m_M00_AXI_awlock_converter_signal);
    mp_M00_AXI_awlock_converter->vector_out(M00_AXI_awlock);
    mp_M00_AXI_transactor->AWLOCK(m_M00_AXI_awlock_converter_signal);
    mp_M00_AXI_transactor->AWCACHE(M00_AXI_awcache);
    mp_M00_AXI_transactor->AWPROT(M00_AXI_awprot);
    mp_M00_AXI_transactor->AWQOS(M00_AXI_awqos);
    mp_M00_AXI_transactor->AWVALID(M00_AXI_awvalid);
    mp_M00_AXI_transactor->AWREADY(M00_AXI_awready);
    mp_M00_AXI_transactor->WDATA(M00_AXI_wdata);
    mp_M00_AXI_transactor->WSTRB(M00_AXI_wstrb);
    mp_M00_AXI_transactor->WLAST(M00_AXI_wlast);
    mp_M00_AXI_transactor->WVALID(M00_AXI_wvalid);
    mp_M00_AXI_transactor->WREADY(M00_AXI_wready);
    mp_M00_AXI_transactor->BRESP(M00_AXI_bresp);
    mp_M00_AXI_transactor->BVALID(M00_AXI_bvalid);
    mp_M00_AXI_transactor->BREADY(M00_AXI_bready);
    mp_M00_AXI_transactor->ARADDR(M00_AXI_araddr);
    mp_M00_AXI_arlen_converter = new xsc::common::vector2vector_converter<8,4>("M00_AXI_arlen_converter");
    mp_M00_AXI_arlen_converter->vector_in(m_M00_AXI_arlen_converter_signal);
    mp_M00_AXI_arlen_converter->vector_out(M00_AXI_arlen);
    mp_M00_AXI_transactor->ARLEN(m_M00_AXI_arlen_converter_signal);
    mp_M00_AXI_transactor->ARSIZE(M00_AXI_arsize);
    mp_M00_AXI_transactor->ARBURST(M00_AXI_arburst);
    mp_M00_AXI_arlock_converter = new xsc::common::scalar2vectorN_converter<2>("M00_AXI_arlock_converter");
    mp_M00_AXI_arlock_converter->scalar_in(m_M00_AXI_arlock_converter_signal);
    mp_M00_AXI_arlock_converter->vector_out(M00_AXI_arlock);
    mp_M00_AXI_transactor->ARLOCK(m_M00_AXI_arlock_converter_signal);
    mp_M00_AXI_transactor->ARCACHE(M00_AXI_arcache);
    mp_M00_AXI_transactor->ARPROT(M00_AXI_arprot);
    mp_M00_AXI_transactor->ARQOS(M00_AXI_arqos);
    mp_M00_AXI_transactor->ARVALID(M00_AXI_arvalid);
    mp_M00_AXI_transactor->ARREADY(M00_AXI_arready);
    mp_M00_AXI_transactor->RDATA(M00_AXI_rdata);
    mp_M00_AXI_transactor->RRESP(M00_AXI_rresp);
    mp_M00_AXI_transactor->RLAST(M00_AXI_rlast);
    mp_M00_AXI_transactor->RVALID(M00_AXI_rvalid);
    mp_M00_AXI_transactor->RREADY(M00_AXI_rready);
    mp_M00_AXI_transactor->CLK(aclk);
    mp_M00_AXI_transactor->RST(aresetn);

    // M00_AXI' transactor sockets

    mp_impl->M00_AXI_tlm_aximm_read_socket->bind(*(mp_M00_AXI_transactor->rd_socket));
    mp_impl->M00_AXI_tlm_aximm_write_socket->bind(*(mp_M00_AXI_transactor->wr_socket));
  }
  else
  {
  }

}

#endif // XM_SYSTEMC




#ifdef RIVIERA
design_1_smartconnect_0_0::design_1_smartconnect_0_0(const sc_core::sc_module_name& nm) : design_1_smartconnect_0_0_sc(nm), aclk("aclk"), aresetn("aresetn"), S00_AXI_araddr("S00_AXI_araddr"), S00_AXI_arlen("S00_AXI_arlen"), S00_AXI_arsize("S00_AXI_arsize"), S00_AXI_arburst("S00_AXI_arburst"), S00_AXI_arlock("S00_AXI_arlock"), S00_AXI_arcache("S00_AXI_arcache"), S00_AXI_arprot("S00_AXI_arprot"), S00_AXI_arqos("S00_AXI_arqos"), S00_AXI_arvalid("S00_AXI_arvalid"), S00_AXI_arready("S00_AXI_arready"), S00_AXI_rdata("S00_AXI_rdata"), S00_AXI_rresp("S00_AXI_rresp"), S00_AXI_rlast("S00_AXI_rlast"), S00_AXI_rvalid("S00_AXI_rvalid"), S00_AXI_rready("S00_AXI_rready"), S01_AXI_awaddr("S01_AXI_awaddr"), S01_AXI_awlen("S01_AXI_awlen"), S01_AXI_awsize("S01_AXI_awsize"), S01_AXI_awburst("S01_AXI_awburst"), S01_AXI_awlock("S01_AXI_awlock"), S01_AXI_awcache("S01_AXI_awcache"), S01_AXI_awprot("S01_AXI_awprot"), S01_AXI_awqos("S01_AXI_awqos"), S01_AXI_awvalid("S01_AXI_awvalid"), S01_AXI_awready("S01_AXI_awready"), S01_AXI_wdata("S01_AXI_wdata"), S01_AXI_wstrb("S01_AXI_wstrb"), S01_AXI_wlast("S01_AXI_wlast"), S01_AXI_wvalid("S01_AXI_wvalid"), S01_AXI_wready("S01_AXI_wready"), S01_AXI_bresp("S01_AXI_bresp"), S01_AXI_bvalid("S01_AXI_bvalid"), S01_AXI_bready("S01_AXI_bready"), S02_AXI_araddr("S02_AXI_araddr"), S02_AXI_arlen("S02_AXI_arlen"), S02_AXI_arsize("S02_AXI_arsize"), S02_AXI_arburst("S02_AXI_arburst"), S02_AXI_arlock("S02_AXI_arlock"), S02_AXI_arcache("S02_AXI_arcache"), S02_AXI_arprot("S02_AXI_arprot"), S02_AXI_arqos("S02_AXI_arqos"), S02_AXI_arvalid("S02_AXI_arvalid"), S02_AXI_arready("S02_AXI_arready"), S02_AXI_rdata("S02_AXI_rdata"), S02_AXI_rresp("S02_AXI_rresp"), S02_AXI_rlast("S02_AXI_rlast"), S02_AXI_rvalid("S02_AXI_rvalid"), S02_AXI_rready("S02_AXI_rready"), S03_AXI_awaddr("S03_AXI_awaddr"), S03_AXI_awlen("S03_AXI_awlen"), S03_AXI_awsize("S03_AXI_awsize"), S03_AXI_awburst("S03_AXI_awburst"), S03_AXI_awlock("S03_AXI_awlock"), S03_AXI_awcache("S03_AXI_awcache"), S03_AXI_awprot("S03_AXI_awprot"), S03_AXI_awqos("S03_AXI_awqos"), S03_AXI_awvalid("S03_AXI_awvalid"), S03_AXI_awready("S03_AXI_awready"), S03_AXI_wdata("S03_AXI_wdata"), S03_AXI_wstrb("S03_AXI_wstrb"), S03_AXI_wlast("S03_AXI_wlast"), S03_AXI_wvalid("S03_AXI_wvalid"), S03_AXI_wready("S03_AXI_wready"), S03_AXI_bresp("S03_AXI_bresp"), S03_AXI_bvalid("S03_AXI_bvalid"), S03_AXI_bready("S03_AXI_bready"), S04_AXI_araddr("S04_AXI_araddr"), S04_AXI_arlen("S04_AXI_arlen"), S04_AXI_arsize("S04_AXI_arsize"), S04_AXI_arburst("S04_AXI_arburst"), S04_AXI_arlock("S04_AXI_arlock"), S04_AXI_arcache("S04_AXI_arcache"), S04_AXI_arprot("S04_AXI_arprot"), S04_AXI_arqos("S04_AXI_arqos"), S04_AXI_arvalid("S04_AXI_arvalid"), S04_AXI_arready("S04_AXI_arready"), S04_AXI_rdata("S04_AXI_rdata"), S04_AXI_rresp("S04_AXI_rresp"), S04_AXI_rlast("S04_AXI_rlast"), S04_AXI_rvalid("S04_AXI_rvalid"), S04_AXI_rready("S04_AXI_rready"), S05_AXI_awaddr("S05_AXI_awaddr"), S05_AXI_awlen("S05_AXI_awlen"), S05_AXI_awsize("S05_AXI_awsize"), S05_AXI_awburst("S05_AXI_awburst"), S05_AXI_awlock("S05_AXI_awlock"), S05_AXI_awcache("S05_AXI_awcache"), S05_AXI_awprot("S05_AXI_awprot"), S05_AXI_awqos("S05_AXI_awqos"), S05_AXI_awvalid("S05_AXI_awvalid"), S05_AXI_awready("S05_AXI_awready"), S05_AXI_wdata("S05_AXI_wdata"), S05_AXI_wstrb("S05_AXI_wstrb"), S05_AXI_wlast("S05_AXI_wlast"), S05_AXI_wvalid("S05_AXI_wvalid"), S05_AXI_wready("S05_AXI_wready"), S05_AXI_bresp("S05_AXI_bresp"), S05_AXI_bvalid("S05_AXI_bvalid"), S05_AXI_bready("S05_AXI_bready"), S06_AXI_araddr("S06_AXI_araddr"), S06_AXI_arlen("S06_AXI_arlen"), S06_AXI_arsize("S06_AXI_arsize"), S06_AXI_arburst("S06_AXI_arburst"), S06_AXI_arlock("S06_AXI_arlock"), S06_AXI_arcache("S06_AXI_arcache"), S06_AXI_arprot("S06_AXI_arprot"), S06_AXI_arqos("S06_AXI_arqos"), S06_AXI_arvalid("S06_AXI_arvalid"), S06_AXI_arready("S06_AXI_arready"), S06_AXI_rdata("S06_AXI_rdata"), S06_AXI_rresp("S06_AXI_rresp"), S06_AXI_rlast("S06_AXI_rlast"), S06_AXI_rvalid("S06_AXI_rvalid"), S06_AXI_rready("S06_AXI_rready"), S07_AXI_awaddr("S07_AXI_awaddr"), S07_AXI_awlen("S07_AXI_awlen"), S07_AXI_awsize("S07_AXI_awsize"), S07_AXI_awburst("S07_AXI_awburst"), S07_AXI_awlock("S07_AXI_awlock"), S07_AXI_awcache("S07_AXI_awcache"), S07_AXI_awprot("S07_AXI_awprot"), S07_AXI_awqos("S07_AXI_awqos"), S07_AXI_awvalid("S07_AXI_awvalid"), S07_AXI_awready("S07_AXI_awready"), S07_AXI_wdata("S07_AXI_wdata"), S07_AXI_wstrb("S07_AXI_wstrb"), S07_AXI_wlast("S07_AXI_wlast"), S07_AXI_wvalid("S07_AXI_wvalid"), S07_AXI_wready("S07_AXI_wready"), S07_AXI_bresp("S07_AXI_bresp"), S07_AXI_bvalid("S07_AXI_bvalid"), S07_AXI_bready("S07_AXI_bready"), S08_AXI_araddr("S08_AXI_araddr"), S08_AXI_arlen("S08_AXI_arlen"), S08_AXI_arsize("S08_AXI_arsize"), S08_AXI_arburst("S08_AXI_arburst"), S08_AXI_arlock("S08_AXI_arlock"), S08_AXI_arcache("S08_AXI_arcache"), S08_AXI_arprot("S08_AXI_arprot"), S08_AXI_arqos("S08_AXI_arqos"), S08_AXI_arvalid("S08_AXI_arvalid"), S08_AXI_arready("S08_AXI_arready"), S08_AXI_rdata("S08_AXI_rdata"), S08_AXI_rresp("S08_AXI_rresp"), S08_AXI_rlast("S08_AXI_rlast"), S08_AXI_rvalid("S08_AXI_rvalid"), S08_AXI_rready("S08_AXI_rready"), S09_AXI_awaddr("S09_AXI_awaddr"), S09_AXI_awlen("S09_AXI_awlen"), S09_AXI_awsize("S09_AXI_awsize"), S09_AXI_awburst("S09_AXI_awburst"), S09_AXI_awlock("S09_AXI_awlock"), S09_AXI_awcache("S09_AXI_awcache"), S09_AXI_awprot("S09_AXI_awprot"), S09_AXI_awqos("S09_AXI_awqos"), S09_AXI_awvalid("S09_AXI_awvalid"), S09_AXI_awready("S09_AXI_awready"), S09_AXI_wdata("S09_AXI_wdata"), S09_AXI_wstrb("S09_AXI_wstrb"), S09_AXI_wlast("S09_AXI_wlast"), S09_AXI_wvalid("S09_AXI_wvalid"), S09_AXI_wready("S09_AXI_wready"), S09_AXI_bresp("S09_AXI_bresp"), S09_AXI_bvalid("S09_AXI_bvalid"), S09_AXI_bready("S09_AXI_bready"), S10_AXI_araddr("S10_AXI_araddr"), S10_AXI_arlen("S10_AXI_arlen"), S10_AXI_arsize("S10_AXI_arsize"), S10_AXI_arburst("S10_AXI_arburst"), S10_AXI_arlock("S10_AXI_arlock"), S10_AXI_arcache("S10_AXI_arcache"), S10_AXI_arprot("S10_AXI_arprot"), S10_AXI_arqos("S10_AXI_arqos"), S10_AXI_arvalid("S10_AXI_arvalid"), S10_AXI_arready("S10_AXI_arready"), S10_AXI_rdata("S10_AXI_rdata"), S10_AXI_rresp("S10_AXI_rresp"), S10_AXI_rlast("S10_AXI_rlast"), S10_AXI_rvalid("S10_AXI_rvalid"), S10_AXI_rready("S10_AXI_rready"), S11_AXI_awaddr("S11_AXI_awaddr"), S11_AXI_awlen("S11_AXI_awlen"), S11_AXI_awsize("S11_AXI_awsize"), S11_AXI_awburst("S11_AXI_awburst"), S11_AXI_awlock("S11_AXI_awlock"), S11_AXI_awcache("S11_AXI_awcache"), S11_AXI_awprot("S11_AXI_awprot"), S11_AXI_awqos("S11_AXI_awqos"), S11_AXI_awvalid("S11_AXI_awvalid"), S11_AXI_awready("S11_AXI_awready"), S11_AXI_wdata("S11_AXI_wdata"), S11_AXI_wstrb("S11_AXI_wstrb"), S11_AXI_wlast("S11_AXI_wlast"), S11_AXI_wvalid("S11_AXI_wvalid"), S11_AXI_wready("S11_AXI_wready"), S11_AXI_bresp("S11_AXI_bresp"), S11_AXI_bvalid("S11_AXI_bvalid"), S11_AXI_bready("S11_AXI_bready"), M00_AXI_awaddr("M00_AXI_awaddr"), M00_AXI_awlen("M00_AXI_awlen"), M00_AXI_awsize("M00_AXI_awsize"), M00_AXI_awburst("M00_AXI_awburst"), M00_AXI_awlock("M00_AXI_awlock"), M00_AXI_awcache("M00_AXI_awcache"), M00_AXI_awprot("M00_AXI_awprot"), M00_AXI_awqos("M00_AXI_awqos"), M00_AXI_awvalid("M00_AXI_awvalid"), M00_AXI_awready("M00_AXI_awready"), M00_AXI_wdata("M00_AXI_wdata"), M00_AXI_wstrb("M00_AXI_wstrb"), M00_AXI_wlast("M00_AXI_wlast"), M00_AXI_wvalid("M00_AXI_wvalid"), M00_AXI_wready("M00_AXI_wready"), M00_AXI_bresp("M00_AXI_bresp"), M00_AXI_bvalid("M00_AXI_bvalid"), M00_AXI_bready("M00_AXI_bready"), M00_AXI_araddr("M00_AXI_araddr"), M00_AXI_arlen("M00_AXI_arlen"), M00_AXI_arsize("M00_AXI_arsize"), M00_AXI_arburst("M00_AXI_arburst"), M00_AXI_arlock("M00_AXI_arlock"), M00_AXI_arcache("M00_AXI_arcache"), M00_AXI_arprot("M00_AXI_arprot"), M00_AXI_arqos("M00_AXI_arqos"), M00_AXI_arvalid("M00_AXI_arvalid"), M00_AXI_arready("M00_AXI_arready"), M00_AXI_rdata("M00_AXI_rdata"), M00_AXI_rresp("M00_AXI_rresp"), M00_AXI_rlast("M00_AXI_rlast"), M00_AXI_rvalid("M00_AXI_rvalid"), M00_AXI_rready("M00_AXI_rready"),mp_S00_AXI_wr_socket_stub(nullptr),mp_S01_AXI_rd_socket_stub(nullptr),mp_S02_AXI_wr_socket_stub(nullptr),mp_S03_AXI_rd_socket_stub(nullptr),mp_S04_AXI_wr_socket_stub(nullptr),mp_S05_AXI_rd_socket_stub(nullptr),mp_S06_AXI_wr_socket_stub(nullptr),mp_S07_AXI_rd_socket_stub(nullptr),mp_S08_AXI_wr_socket_stub(nullptr),mp_S09_AXI_rd_socket_stub(nullptr),mp_S10_AXI_wr_socket_stub(nullptr),mp_S11_AXI_rd_socket_stub(nullptr)
{

  // initialize pins
  mp_impl->aclk(aclk);
  mp_impl->aresetn(aresetn);

  // initialize transactors
  mp_S00_AXI_transactor = NULL;
  mp_S00_AXI_arlock_converter = NULL;
  mp_S01_AXI_transactor = NULL;
  mp_S01_AXI_awlock_converter = NULL;
  mp_S02_AXI_transactor = NULL;
  mp_S02_AXI_arlock_converter = NULL;
  mp_S03_AXI_transactor = NULL;
  mp_S03_AXI_awlock_converter = NULL;
  mp_S04_AXI_transactor = NULL;
  mp_S04_AXI_arlock_converter = NULL;
  mp_S05_AXI_transactor = NULL;
  mp_S05_AXI_awlock_converter = NULL;
  mp_S06_AXI_transactor = NULL;
  mp_S06_AXI_arlock_converter = NULL;
  mp_S07_AXI_transactor = NULL;
  mp_S07_AXI_awlock_converter = NULL;
  mp_S08_AXI_transactor = NULL;
  mp_S08_AXI_arlock_converter = NULL;
  mp_S09_AXI_transactor = NULL;
  mp_S09_AXI_awlock_converter = NULL;
  mp_S10_AXI_transactor = NULL;
  mp_S10_AXI_arlock_converter = NULL;
  mp_S11_AXI_transactor = NULL;
  mp_S11_AXI_awlock_converter = NULL;
  mp_M00_AXI_transactor = NULL;
  mp_M00_AXI_awlen_converter = NULL;
  mp_M00_AXI_awlock_converter = NULL;
  mp_M00_AXI_arlen_converter = NULL;
  mp_M00_AXI_arlock_converter = NULL;

  // initialize socket stubs
  mp_S00_AXI_wr_socket_stub = NULL;
  mp_S01_AXI_rd_socket_stub = NULL;
  mp_S02_AXI_wr_socket_stub = NULL;
  mp_S03_AXI_rd_socket_stub = NULL;
  mp_S04_AXI_wr_socket_stub = NULL;
  mp_S05_AXI_rd_socket_stub = NULL;
  mp_S06_AXI_wr_socket_stub = NULL;
  mp_S07_AXI_rd_socket_stub = NULL;
  mp_S08_AXI_wr_socket_stub = NULL;
  mp_S09_AXI_rd_socket_stub = NULL;
  mp_S10_AXI_wr_socket_stub = NULL;
  mp_S11_AXI_rd_socket_stub = NULL;

}

void design_1_smartconnect_0_0::before_end_of_elaboration()
{
  // configure 'S00_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "S00_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs
    mp_S00_AXI_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket", 0);

  // 'S00_AXI' transactor parameters
    xsc::common_cpp::properties S00_AXI_transactor_param_props;
    S00_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S00_AXI_transactor_param_props.addLong("FREQ_HZ", "100000000");
    S00_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S00_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S00_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S00_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S00_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S00_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S00_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S00_AXI_transactor_param_props.addLong("HAS_WSTRB", "0");
    S00_AXI_transactor_param_props.addLong("HAS_BRESP", "0");
    S00_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S00_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S00_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    S00_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S00_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    S00_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S00_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S00_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S00_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S00_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S00_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S00_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S00_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S00_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_ONLY");
    S00_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_S00_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,32,1,1,1,1,1,1>("S00_AXI_transactor", S00_AXI_transactor_param_props);

    // S00_AXI' transactor ports

    mp_S00_AXI_transactor->ARADDR(S00_AXI_araddr);
    mp_S00_AXI_transactor->ARLEN(S00_AXI_arlen);
    mp_S00_AXI_transactor->ARSIZE(S00_AXI_arsize);
    mp_S00_AXI_transactor->ARBURST(S00_AXI_arburst);
    mp_S00_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXI_arlock_converter");
    mp_S00_AXI_arlock_converter->vector_in(S00_AXI_arlock);
    mp_S00_AXI_arlock_converter->scalar_out(m_S00_AXI_arlock_converter_signal);
    mp_S00_AXI_transactor->ARLOCK(m_S00_AXI_arlock_converter_signal);
    mp_S00_AXI_transactor->ARCACHE(S00_AXI_arcache);
    mp_S00_AXI_transactor->ARPROT(S00_AXI_arprot);
    mp_S00_AXI_transactor->ARQOS(S00_AXI_arqos);
    mp_S00_AXI_transactor->ARVALID(S00_AXI_arvalid);
    mp_S00_AXI_transactor->ARREADY(S00_AXI_arready);
    mp_S00_AXI_transactor->RDATA(S00_AXI_rdata);
    mp_S00_AXI_transactor->RRESP(S00_AXI_rresp);
    mp_S00_AXI_transactor->RLAST(S00_AXI_rlast);
    mp_S00_AXI_transactor->RVALID(S00_AXI_rvalid);
    mp_S00_AXI_transactor->RREADY(S00_AXI_rready);
    mp_S00_AXI_transactor->CLK(aclk);
    mp_S00_AXI_transactor->RST(aresetn);

    // S00_AXI' transactor sockets

    mp_impl->S00_AXI_tlm_aximm_read_socket->bind(*(mp_S00_AXI_transactor->rd_socket));
    mp_impl->S00_AXI_tlm_aximm_write_socket->bind(mp_S00_AXI_wr_socket_stub->initiator_socket);
  }
  else
  {
  }

  // configure 'S01_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "S01_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs
    mp_S01_AXI_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket", 0);

  // 'S01_AXI' transactor parameters
    xsc::common_cpp::properties S01_AXI_transactor_param_props;
    S01_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S01_AXI_transactor_param_props.addLong("FREQ_HZ", "100000000");
    S01_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S01_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S01_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S01_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S01_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S01_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S01_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S01_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S01_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S01_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S01_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S01_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S01_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S01_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S01_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S01_AXI_transactor_param_props.addLong("HAS_RRESP", "0");
    S01_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S01_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S01_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "16");
    S01_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    S01_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S01_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S01_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S01_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S01_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S01_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S01_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S01_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S01_AXI_transactor_param_props.addString("READ_WRITE_MODE", "WRITE_ONLY");
    S01_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_S01_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,32,1,1,1,1,1,1>("S01_AXI_transactor", S01_AXI_transactor_param_props);

    // S01_AXI' transactor ports

    mp_S01_AXI_transactor->AWADDR(S01_AXI_awaddr);
    mp_S01_AXI_transactor->AWLEN(S01_AXI_awlen);
    mp_S01_AXI_transactor->AWSIZE(S01_AXI_awsize);
    mp_S01_AXI_transactor->AWBURST(S01_AXI_awburst);
    mp_S01_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S01_AXI_awlock_converter");
    mp_S01_AXI_awlock_converter->vector_in(S01_AXI_awlock);
    mp_S01_AXI_awlock_converter->scalar_out(m_S01_AXI_awlock_converter_signal);
    mp_S01_AXI_transactor->AWLOCK(m_S01_AXI_awlock_converter_signal);
    mp_S01_AXI_transactor->AWCACHE(S01_AXI_awcache);
    mp_S01_AXI_transactor->AWPROT(S01_AXI_awprot);
    mp_S01_AXI_transactor->AWQOS(S01_AXI_awqos);
    mp_S01_AXI_transactor->AWVALID(S01_AXI_awvalid);
    mp_S01_AXI_transactor->AWREADY(S01_AXI_awready);
    mp_S01_AXI_transactor->WDATA(S01_AXI_wdata);
    mp_S01_AXI_transactor->WSTRB(S01_AXI_wstrb);
    mp_S01_AXI_transactor->WLAST(S01_AXI_wlast);
    mp_S01_AXI_transactor->WVALID(S01_AXI_wvalid);
    mp_S01_AXI_transactor->WREADY(S01_AXI_wready);
    mp_S01_AXI_transactor->BRESP(S01_AXI_bresp);
    mp_S01_AXI_transactor->BVALID(S01_AXI_bvalid);
    mp_S01_AXI_transactor->BREADY(S01_AXI_bready);
    mp_S01_AXI_transactor->CLK(aclk);
    mp_S01_AXI_transactor->RST(aresetn);

    // S01_AXI' transactor sockets

    mp_impl->S01_AXI_tlm_aximm_read_socket->bind(mp_S01_AXI_rd_socket_stub->initiator_socket);
    mp_impl->S01_AXI_tlm_aximm_write_socket->bind(*(mp_S01_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S02_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "S02_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs
    mp_S02_AXI_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket", 0);

  // 'S02_AXI' transactor parameters
    xsc::common_cpp::properties S02_AXI_transactor_param_props;
    S02_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S02_AXI_transactor_param_props.addLong("FREQ_HZ", "100000000");
    S02_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S02_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S02_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S02_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S02_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S02_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S02_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S02_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S02_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S02_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S02_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S02_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S02_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S02_AXI_transactor_param_props.addLong("HAS_WSTRB", "0");
    S02_AXI_transactor_param_props.addLong("HAS_BRESP", "0");
    S02_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S02_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S02_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    S02_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S02_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    S02_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S02_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S02_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S02_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S02_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S02_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S02_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S02_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S02_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_ONLY");
    S02_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_S02_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,32,1,1,1,1,1,1>("S02_AXI_transactor", S02_AXI_transactor_param_props);

    // S02_AXI' transactor ports

    mp_S02_AXI_transactor->ARADDR(S02_AXI_araddr);
    mp_S02_AXI_transactor->ARLEN(S02_AXI_arlen);
    mp_S02_AXI_transactor->ARSIZE(S02_AXI_arsize);
    mp_S02_AXI_transactor->ARBURST(S02_AXI_arburst);
    mp_S02_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S02_AXI_arlock_converter");
    mp_S02_AXI_arlock_converter->vector_in(S02_AXI_arlock);
    mp_S02_AXI_arlock_converter->scalar_out(m_S02_AXI_arlock_converter_signal);
    mp_S02_AXI_transactor->ARLOCK(m_S02_AXI_arlock_converter_signal);
    mp_S02_AXI_transactor->ARCACHE(S02_AXI_arcache);
    mp_S02_AXI_transactor->ARPROT(S02_AXI_arprot);
    mp_S02_AXI_transactor->ARQOS(S02_AXI_arqos);
    mp_S02_AXI_transactor->ARVALID(S02_AXI_arvalid);
    mp_S02_AXI_transactor->ARREADY(S02_AXI_arready);
    mp_S02_AXI_transactor->RDATA(S02_AXI_rdata);
    mp_S02_AXI_transactor->RRESP(S02_AXI_rresp);
    mp_S02_AXI_transactor->RLAST(S02_AXI_rlast);
    mp_S02_AXI_transactor->RVALID(S02_AXI_rvalid);
    mp_S02_AXI_transactor->RREADY(S02_AXI_rready);
    mp_S02_AXI_transactor->CLK(aclk);
    mp_S02_AXI_transactor->RST(aresetn);

    // S02_AXI' transactor sockets

    mp_impl->S02_AXI_tlm_aximm_read_socket->bind(*(mp_S02_AXI_transactor->rd_socket));
    mp_impl->S02_AXI_tlm_aximm_write_socket->bind(mp_S02_AXI_wr_socket_stub->initiator_socket);
  }
  else
  {
  }

  // configure 'S03_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "S03_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs
    mp_S03_AXI_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket", 0);

  // 'S03_AXI' transactor parameters
    xsc::common_cpp::properties S03_AXI_transactor_param_props;
    S03_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S03_AXI_transactor_param_props.addLong("FREQ_HZ", "100000000");
    S03_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S03_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S03_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S03_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S03_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S03_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S03_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S03_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S03_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S03_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S03_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S03_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S03_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S03_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S03_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S03_AXI_transactor_param_props.addLong("HAS_RRESP", "0");
    S03_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S03_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S03_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "16");
    S03_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    S03_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S03_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S03_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S03_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S03_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S03_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S03_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S03_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S03_AXI_transactor_param_props.addString("READ_WRITE_MODE", "WRITE_ONLY");
    S03_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_S03_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,32,1,1,1,1,1,1>("S03_AXI_transactor", S03_AXI_transactor_param_props);

    // S03_AXI' transactor ports

    mp_S03_AXI_transactor->AWADDR(S03_AXI_awaddr);
    mp_S03_AXI_transactor->AWLEN(S03_AXI_awlen);
    mp_S03_AXI_transactor->AWSIZE(S03_AXI_awsize);
    mp_S03_AXI_transactor->AWBURST(S03_AXI_awburst);
    mp_S03_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S03_AXI_awlock_converter");
    mp_S03_AXI_awlock_converter->vector_in(S03_AXI_awlock);
    mp_S03_AXI_awlock_converter->scalar_out(m_S03_AXI_awlock_converter_signal);
    mp_S03_AXI_transactor->AWLOCK(m_S03_AXI_awlock_converter_signal);
    mp_S03_AXI_transactor->AWCACHE(S03_AXI_awcache);
    mp_S03_AXI_transactor->AWPROT(S03_AXI_awprot);
    mp_S03_AXI_transactor->AWQOS(S03_AXI_awqos);
    mp_S03_AXI_transactor->AWVALID(S03_AXI_awvalid);
    mp_S03_AXI_transactor->AWREADY(S03_AXI_awready);
    mp_S03_AXI_transactor->WDATA(S03_AXI_wdata);
    mp_S03_AXI_transactor->WSTRB(S03_AXI_wstrb);
    mp_S03_AXI_transactor->WLAST(S03_AXI_wlast);
    mp_S03_AXI_transactor->WVALID(S03_AXI_wvalid);
    mp_S03_AXI_transactor->WREADY(S03_AXI_wready);
    mp_S03_AXI_transactor->BRESP(S03_AXI_bresp);
    mp_S03_AXI_transactor->BVALID(S03_AXI_bvalid);
    mp_S03_AXI_transactor->BREADY(S03_AXI_bready);
    mp_S03_AXI_transactor->CLK(aclk);
    mp_S03_AXI_transactor->RST(aresetn);

    // S03_AXI' transactor sockets

    mp_impl->S03_AXI_tlm_aximm_read_socket->bind(mp_S03_AXI_rd_socket_stub->initiator_socket);
    mp_impl->S03_AXI_tlm_aximm_write_socket->bind(*(mp_S03_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S04_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "S04_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs
    mp_S04_AXI_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket", 0);

  // 'S04_AXI' transactor parameters
    xsc::common_cpp::properties S04_AXI_transactor_param_props;
    S04_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S04_AXI_transactor_param_props.addLong("FREQ_HZ", "100000000");
    S04_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S04_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S04_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S04_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S04_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S04_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S04_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S04_AXI_transactor_param_props.addLong("HAS_WSTRB", "0");
    S04_AXI_transactor_param_props.addLong("HAS_BRESP", "0");
    S04_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S04_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S04_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    S04_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S04_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    S04_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S04_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S04_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S04_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S04_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S04_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S04_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S04_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S04_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_ONLY");
    S04_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_S04_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,32,1,1,1,1,1,1>("S04_AXI_transactor", S04_AXI_transactor_param_props);

    // S04_AXI' transactor ports

    mp_S04_AXI_transactor->ARADDR(S04_AXI_araddr);
    mp_S04_AXI_transactor->ARLEN(S04_AXI_arlen);
    mp_S04_AXI_transactor->ARSIZE(S04_AXI_arsize);
    mp_S04_AXI_transactor->ARBURST(S04_AXI_arburst);
    mp_S04_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S04_AXI_arlock_converter");
    mp_S04_AXI_arlock_converter->vector_in(S04_AXI_arlock);
    mp_S04_AXI_arlock_converter->scalar_out(m_S04_AXI_arlock_converter_signal);
    mp_S04_AXI_transactor->ARLOCK(m_S04_AXI_arlock_converter_signal);
    mp_S04_AXI_transactor->ARCACHE(S04_AXI_arcache);
    mp_S04_AXI_transactor->ARPROT(S04_AXI_arprot);
    mp_S04_AXI_transactor->ARQOS(S04_AXI_arqos);
    mp_S04_AXI_transactor->ARVALID(S04_AXI_arvalid);
    mp_S04_AXI_transactor->ARREADY(S04_AXI_arready);
    mp_S04_AXI_transactor->RDATA(S04_AXI_rdata);
    mp_S04_AXI_transactor->RRESP(S04_AXI_rresp);
    mp_S04_AXI_transactor->RLAST(S04_AXI_rlast);
    mp_S04_AXI_transactor->RVALID(S04_AXI_rvalid);
    mp_S04_AXI_transactor->RREADY(S04_AXI_rready);
    mp_S04_AXI_transactor->CLK(aclk);
    mp_S04_AXI_transactor->RST(aresetn);

    // S04_AXI' transactor sockets

    mp_impl->S04_AXI_tlm_aximm_read_socket->bind(*(mp_S04_AXI_transactor->rd_socket));
    mp_impl->S04_AXI_tlm_aximm_write_socket->bind(mp_S04_AXI_wr_socket_stub->initiator_socket);
  }
  else
  {
  }

  // configure 'S05_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "S05_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs
    mp_S05_AXI_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket", 0);

  // 'S05_AXI' transactor parameters
    xsc::common_cpp::properties S05_AXI_transactor_param_props;
    S05_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S05_AXI_transactor_param_props.addLong("FREQ_HZ", "100000000");
    S05_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S05_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S05_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S05_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S05_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S05_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S05_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S05_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S05_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S05_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S05_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S05_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S05_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S05_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S05_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S05_AXI_transactor_param_props.addLong("HAS_RRESP", "0");
    S05_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S05_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S05_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "16");
    S05_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    S05_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S05_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S05_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S05_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S05_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S05_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S05_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S05_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S05_AXI_transactor_param_props.addString("READ_WRITE_MODE", "WRITE_ONLY");
    S05_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_S05_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,32,1,1,1,1,1,1>("S05_AXI_transactor", S05_AXI_transactor_param_props);

    // S05_AXI' transactor ports

    mp_S05_AXI_transactor->AWADDR(S05_AXI_awaddr);
    mp_S05_AXI_transactor->AWLEN(S05_AXI_awlen);
    mp_S05_AXI_transactor->AWSIZE(S05_AXI_awsize);
    mp_S05_AXI_transactor->AWBURST(S05_AXI_awburst);
    mp_S05_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S05_AXI_awlock_converter");
    mp_S05_AXI_awlock_converter->vector_in(S05_AXI_awlock);
    mp_S05_AXI_awlock_converter->scalar_out(m_S05_AXI_awlock_converter_signal);
    mp_S05_AXI_transactor->AWLOCK(m_S05_AXI_awlock_converter_signal);
    mp_S05_AXI_transactor->AWCACHE(S05_AXI_awcache);
    mp_S05_AXI_transactor->AWPROT(S05_AXI_awprot);
    mp_S05_AXI_transactor->AWQOS(S05_AXI_awqos);
    mp_S05_AXI_transactor->AWVALID(S05_AXI_awvalid);
    mp_S05_AXI_transactor->AWREADY(S05_AXI_awready);
    mp_S05_AXI_transactor->WDATA(S05_AXI_wdata);
    mp_S05_AXI_transactor->WSTRB(S05_AXI_wstrb);
    mp_S05_AXI_transactor->WLAST(S05_AXI_wlast);
    mp_S05_AXI_transactor->WVALID(S05_AXI_wvalid);
    mp_S05_AXI_transactor->WREADY(S05_AXI_wready);
    mp_S05_AXI_transactor->BRESP(S05_AXI_bresp);
    mp_S05_AXI_transactor->BVALID(S05_AXI_bvalid);
    mp_S05_AXI_transactor->BREADY(S05_AXI_bready);
    mp_S05_AXI_transactor->CLK(aclk);
    mp_S05_AXI_transactor->RST(aresetn);

    // S05_AXI' transactor sockets

    mp_impl->S05_AXI_tlm_aximm_read_socket->bind(mp_S05_AXI_rd_socket_stub->initiator_socket);
    mp_impl->S05_AXI_tlm_aximm_write_socket->bind(*(mp_S05_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S06_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "S06_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs
    mp_S06_AXI_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket", 0);

  // 'S06_AXI' transactor parameters
    xsc::common_cpp::properties S06_AXI_transactor_param_props;
    S06_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S06_AXI_transactor_param_props.addLong("FREQ_HZ", "100000000");
    S06_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S06_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S06_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S06_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S06_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S06_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S06_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S06_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S06_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S06_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S06_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S06_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S06_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S06_AXI_transactor_param_props.addLong("HAS_WSTRB", "0");
    S06_AXI_transactor_param_props.addLong("HAS_BRESP", "0");
    S06_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S06_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S06_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    S06_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S06_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    S06_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S06_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S06_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S06_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S06_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S06_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S06_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S06_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S06_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_ONLY");
    S06_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_S06_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,32,1,1,1,1,1,1>("S06_AXI_transactor", S06_AXI_transactor_param_props);

    // S06_AXI' transactor ports

    mp_S06_AXI_transactor->ARADDR(S06_AXI_araddr);
    mp_S06_AXI_transactor->ARLEN(S06_AXI_arlen);
    mp_S06_AXI_transactor->ARSIZE(S06_AXI_arsize);
    mp_S06_AXI_transactor->ARBURST(S06_AXI_arburst);
    mp_S06_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S06_AXI_arlock_converter");
    mp_S06_AXI_arlock_converter->vector_in(S06_AXI_arlock);
    mp_S06_AXI_arlock_converter->scalar_out(m_S06_AXI_arlock_converter_signal);
    mp_S06_AXI_transactor->ARLOCK(m_S06_AXI_arlock_converter_signal);
    mp_S06_AXI_transactor->ARCACHE(S06_AXI_arcache);
    mp_S06_AXI_transactor->ARPROT(S06_AXI_arprot);
    mp_S06_AXI_transactor->ARQOS(S06_AXI_arqos);
    mp_S06_AXI_transactor->ARVALID(S06_AXI_arvalid);
    mp_S06_AXI_transactor->ARREADY(S06_AXI_arready);
    mp_S06_AXI_transactor->RDATA(S06_AXI_rdata);
    mp_S06_AXI_transactor->RRESP(S06_AXI_rresp);
    mp_S06_AXI_transactor->RLAST(S06_AXI_rlast);
    mp_S06_AXI_transactor->RVALID(S06_AXI_rvalid);
    mp_S06_AXI_transactor->RREADY(S06_AXI_rready);
    mp_S06_AXI_transactor->CLK(aclk);
    mp_S06_AXI_transactor->RST(aresetn);

    // S06_AXI' transactor sockets

    mp_impl->S06_AXI_tlm_aximm_read_socket->bind(*(mp_S06_AXI_transactor->rd_socket));
    mp_impl->S06_AXI_tlm_aximm_write_socket->bind(mp_S06_AXI_wr_socket_stub->initiator_socket);
  }
  else
  {
  }

  // configure 'S07_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "S07_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs
    mp_S07_AXI_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket", 0);

  // 'S07_AXI' transactor parameters
    xsc::common_cpp::properties S07_AXI_transactor_param_props;
    S07_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S07_AXI_transactor_param_props.addLong("FREQ_HZ", "100000000");
    S07_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S07_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S07_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S07_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S07_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S07_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S07_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S07_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S07_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S07_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S07_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S07_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S07_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S07_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S07_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S07_AXI_transactor_param_props.addLong("HAS_RRESP", "0");
    S07_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S07_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S07_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "16");
    S07_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    S07_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S07_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S07_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S07_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S07_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S07_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S07_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S07_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S07_AXI_transactor_param_props.addString("READ_WRITE_MODE", "WRITE_ONLY");
    S07_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_S07_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,32,1,1,1,1,1,1>("S07_AXI_transactor", S07_AXI_transactor_param_props);

    // S07_AXI' transactor ports

    mp_S07_AXI_transactor->AWADDR(S07_AXI_awaddr);
    mp_S07_AXI_transactor->AWLEN(S07_AXI_awlen);
    mp_S07_AXI_transactor->AWSIZE(S07_AXI_awsize);
    mp_S07_AXI_transactor->AWBURST(S07_AXI_awburst);
    mp_S07_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S07_AXI_awlock_converter");
    mp_S07_AXI_awlock_converter->vector_in(S07_AXI_awlock);
    mp_S07_AXI_awlock_converter->scalar_out(m_S07_AXI_awlock_converter_signal);
    mp_S07_AXI_transactor->AWLOCK(m_S07_AXI_awlock_converter_signal);
    mp_S07_AXI_transactor->AWCACHE(S07_AXI_awcache);
    mp_S07_AXI_transactor->AWPROT(S07_AXI_awprot);
    mp_S07_AXI_transactor->AWQOS(S07_AXI_awqos);
    mp_S07_AXI_transactor->AWVALID(S07_AXI_awvalid);
    mp_S07_AXI_transactor->AWREADY(S07_AXI_awready);
    mp_S07_AXI_transactor->WDATA(S07_AXI_wdata);
    mp_S07_AXI_transactor->WSTRB(S07_AXI_wstrb);
    mp_S07_AXI_transactor->WLAST(S07_AXI_wlast);
    mp_S07_AXI_transactor->WVALID(S07_AXI_wvalid);
    mp_S07_AXI_transactor->WREADY(S07_AXI_wready);
    mp_S07_AXI_transactor->BRESP(S07_AXI_bresp);
    mp_S07_AXI_transactor->BVALID(S07_AXI_bvalid);
    mp_S07_AXI_transactor->BREADY(S07_AXI_bready);
    mp_S07_AXI_transactor->CLK(aclk);
    mp_S07_AXI_transactor->RST(aresetn);

    // S07_AXI' transactor sockets

    mp_impl->S07_AXI_tlm_aximm_read_socket->bind(mp_S07_AXI_rd_socket_stub->initiator_socket);
    mp_impl->S07_AXI_tlm_aximm_write_socket->bind(*(mp_S07_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S08_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "S08_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs
    mp_S08_AXI_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket", 0);

  // 'S08_AXI' transactor parameters
    xsc::common_cpp::properties S08_AXI_transactor_param_props;
    S08_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S08_AXI_transactor_param_props.addLong("FREQ_HZ", "100000000");
    S08_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S08_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S08_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S08_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S08_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S08_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S08_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S08_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S08_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S08_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S08_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S08_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S08_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S08_AXI_transactor_param_props.addLong("HAS_WSTRB", "0");
    S08_AXI_transactor_param_props.addLong("HAS_BRESP", "0");
    S08_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S08_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S08_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    S08_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S08_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    S08_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S08_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S08_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S08_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S08_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S08_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S08_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S08_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S08_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_ONLY");
    S08_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_S08_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,32,1,1,1,1,1,1>("S08_AXI_transactor", S08_AXI_transactor_param_props);

    // S08_AXI' transactor ports

    mp_S08_AXI_transactor->ARADDR(S08_AXI_araddr);
    mp_S08_AXI_transactor->ARLEN(S08_AXI_arlen);
    mp_S08_AXI_transactor->ARSIZE(S08_AXI_arsize);
    mp_S08_AXI_transactor->ARBURST(S08_AXI_arburst);
    mp_S08_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S08_AXI_arlock_converter");
    mp_S08_AXI_arlock_converter->vector_in(S08_AXI_arlock);
    mp_S08_AXI_arlock_converter->scalar_out(m_S08_AXI_arlock_converter_signal);
    mp_S08_AXI_transactor->ARLOCK(m_S08_AXI_arlock_converter_signal);
    mp_S08_AXI_transactor->ARCACHE(S08_AXI_arcache);
    mp_S08_AXI_transactor->ARPROT(S08_AXI_arprot);
    mp_S08_AXI_transactor->ARQOS(S08_AXI_arqos);
    mp_S08_AXI_transactor->ARVALID(S08_AXI_arvalid);
    mp_S08_AXI_transactor->ARREADY(S08_AXI_arready);
    mp_S08_AXI_transactor->RDATA(S08_AXI_rdata);
    mp_S08_AXI_transactor->RRESP(S08_AXI_rresp);
    mp_S08_AXI_transactor->RLAST(S08_AXI_rlast);
    mp_S08_AXI_transactor->RVALID(S08_AXI_rvalid);
    mp_S08_AXI_transactor->RREADY(S08_AXI_rready);
    mp_S08_AXI_transactor->CLK(aclk);
    mp_S08_AXI_transactor->RST(aresetn);

    // S08_AXI' transactor sockets

    mp_impl->S08_AXI_tlm_aximm_read_socket->bind(*(mp_S08_AXI_transactor->rd_socket));
    mp_impl->S08_AXI_tlm_aximm_write_socket->bind(mp_S08_AXI_wr_socket_stub->initiator_socket);
  }
  else
  {
  }

  // configure 'S09_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "S09_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs
    mp_S09_AXI_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket", 0);

  // 'S09_AXI' transactor parameters
    xsc::common_cpp::properties S09_AXI_transactor_param_props;
    S09_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S09_AXI_transactor_param_props.addLong("FREQ_HZ", "100000000");
    S09_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S09_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S09_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S09_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S09_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S09_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S09_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S09_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S09_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S09_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S09_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S09_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S09_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S09_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S09_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S09_AXI_transactor_param_props.addLong("HAS_RRESP", "0");
    S09_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S09_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S09_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "16");
    S09_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    S09_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S09_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S09_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S09_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S09_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S09_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S09_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S09_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S09_AXI_transactor_param_props.addString("READ_WRITE_MODE", "WRITE_ONLY");
    S09_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_S09_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,32,1,1,1,1,1,1>("S09_AXI_transactor", S09_AXI_transactor_param_props);

    // S09_AXI' transactor ports

    mp_S09_AXI_transactor->AWADDR(S09_AXI_awaddr);
    mp_S09_AXI_transactor->AWLEN(S09_AXI_awlen);
    mp_S09_AXI_transactor->AWSIZE(S09_AXI_awsize);
    mp_S09_AXI_transactor->AWBURST(S09_AXI_awburst);
    mp_S09_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S09_AXI_awlock_converter");
    mp_S09_AXI_awlock_converter->vector_in(S09_AXI_awlock);
    mp_S09_AXI_awlock_converter->scalar_out(m_S09_AXI_awlock_converter_signal);
    mp_S09_AXI_transactor->AWLOCK(m_S09_AXI_awlock_converter_signal);
    mp_S09_AXI_transactor->AWCACHE(S09_AXI_awcache);
    mp_S09_AXI_transactor->AWPROT(S09_AXI_awprot);
    mp_S09_AXI_transactor->AWQOS(S09_AXI_awqos);
    mp_S09_AXI_transactor->AWVALID(S09_AXI_awvalid);
    mp_S09_AXI_transactor->AWREADY(S09_AXI_awready);
    mp_S09_AXI_transactor->WDATA(S09_AXI_wdata);
    mp_S09_AXI_transactor->WSTRB(S09_AXI_wstrb);
    mp_S09_AXI_transactor->WLAST(S09_AXI_wlast);
    mp_S09_AXI_transactor->WVALID(S09_AXI_wvalid);
    mp_S09_AXI_transactor->WREADY(S09_AXI_wready);
    mp_S09_AXI_transactor->BRESP(S09_AXI_bresp);
    mp_S09_AXI_transactor->BVALID(S09_AXI_bvalid);
    mp_S09_AXI_transactor->BREADY(S09_AXI_bready);
    mp_S09_AXI_transactor->CLK(aclk);
    mp_S09_AXI_transactor->RST(aresetn);

    // S09_AXI' transactor sockets

    mp_impl->S09_AXI_tlm_aximm_read_socket->bind(mp_S09_AXI_rd_socket_stub->initiator_socket);
    mp_impl->S09_AXI_tlm_aximm_write_socket->bind(*(mp_S09_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S10_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "S10_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs
    mp_S10_AXI_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket", 0);

  // 'S10_AXI' transactor parameters
    xsc::common_cpp::properties S10_AXI_transactor_param_props;
    S10_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S10_AXI_transactor_param_props.addLong("FREQ_HZ", "100000000");
    S10_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S10_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S10_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S10_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S10_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S10_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S10_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S10_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S10_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S10_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S10_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S10_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S10_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S10_AXI_transactor_param_props.addLong("HAS_WSTRB", "0");
    S10_AXI_transactor_param_props.addLong("HAS_BRESP", "0");
    S10_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S10_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S10_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    S10_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S10_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    S10_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S10_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S10_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S10_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S10_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S10_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S10_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S10_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S10_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_ONLY");
    S10_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_S10_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,32,1,1,1,1,1,1>("S10_AXI_transactor", S10_AXI_transactor_param_props);

    // S10_AXI' transactor ports

    mp_S10_AXI_transactor->ARADDR(S10_AXI_araddr);
    mp_S10_AXI_transactor->ARLEN(S10_AXI_arlen);
    mp_S10_AXI_transactor->ARSIZE(S10_AXI_arsize);
    mp_S10_AXI_transactor->ARBURST(S10_AXI_arburst);
    mp_S10_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S10_AXI_arlock_converter");
    mp_S10_AXI_arlock_converter->vector_in(S10_AXI_arlock);
    mp_S10_AXI_arlock_converter->scalar_out(m_S10_AXI_arlock_converter_signal);
    mp_S10_AXI_transactor->ARLOCK(m_S10_AXI_arlock_converter_signal);
    mp_S10_AXI_transactor->ARCACHE(S10_AXI_arcache);
    mp_S10_AXI_transactor->ARPROT(S10_AXI_arprot);
    mp_S10_AXI_transactor->ARQOS(S10_AXI_arqos);
    mp_S10_AXI_transactor->ARVALID(S10_AXI_arvalid);
    mp_S10_AXI_transactor->ARREADY(S10_AXI_arready);
    mp_S10_AXI_transactor->RDATA(S10_AXI_rdata);
    mp_S10_AXI_transactor->RRESP(S10_AXI_rresp);
    mp_S10_AXI_transactor->RLAST(S10_AXI_rlast);
    mp_S10_AXI_transactor->RVALID(S10_AXI_rvalid);
    mp_S10_AXI_transactor->RREADY(S10_AXI_rready);
    mp_S10_AXI_transactor->CLK(aclk);
    mp_S10_AXI_transactor->RST(aresetn);

    // S10_AXI' transactor sockets

    mp_impl->S10_AXI_tlm_aximm_read_socket->bind(*(mp_S10_AXI_transactor->rd_socket));
    mp_impl->S10_AXI_tlm_aximm_write_socket->bind(mp_S10_AXI_wr_socket_stub->initiator_socket);
  }
  else
  {
  }

  // configure 'S11_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "S11_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs
    mp_S11_AXI_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket", 0);

  // 'S11_AXI' transactor parameters
    xsc::common_cpp::properties S11_AXI_transactor_param_props;
    S11_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S11_AXI_transactor_param_props.addLong("FREQ_HZ", "100000000");
    S11_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S11_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S11_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S11_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S11_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S11_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S11_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S11_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S11_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S11_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S11_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S11_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S11_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S11_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S11_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S11_AXI_transactor_param_props.addLong("HAS_RRESP", "0");
    S11_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S11_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S11_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "16");
    S11_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    S11_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S11_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S11_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S11_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S11_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S11_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S11_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S11_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S11_AXI_transactor_param_props.addString("READ_WRITE_MODE", "WRITE_ONLY");
    S11_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_S11_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,32,1,1,1,1,1,1>("S11_AXI_transactor", S11_AXI_transactor_param_props);

    // S11_AXI' transactor ports

    mp_S11_AXI_transactor->AWADDR(S11_AXI_awaddr);
    mp_S11_AXI_transactor->AWLEN(S11_AXI_awlen);
    mp_S11_AXI_transactor->AWSIZE(S11_AXI_awsize);
    mp_S11_AXI_transactor->AWBURST(S11_AXI_awburst);
    mp_S11_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S11_AXI_awlock_converter");
    mp_S11_AXI_awlock_converter->vector_in(S11_AXI_awlock);
    mp_S11_AXI_awlock_converter->scalar_out(m_S11_AXI_awlock_converter_signal);
    mp_S11_AXI_transactor->AWLOCK(m_S11_AXI_awlock_converter_signal);
    mp_S11_AXI_transactor->AWCACHE(S11_AXI_awcache);
    mp_S11_AXI_transactor->AWPROT(S11_AXI_awprot);
    mp_S11_AXI_transactor->AWQOS(S11_AXI_awqos);
    mp_S11_AXI_transactor->AWVALID(S11_AXI_awvalid);
    mp_S11_AXI_transactor->AWREADY(S11_AXI_awready);
    mp_S11_AXI_transactor->WDATA(S11_AXI_wdata);
    mp_S11_AXI_transactor->WSTRB(S11_AXI_wstrb);
    mp_S11_AXI_transactor->WLAST(S11_AXI_wlast);
    mp_S11_AXI_transactor->WVALID(S11_AXI_wvalid);
    mp_S11_AXI_transactor->WREADY(S11_AXI_wready);
    mp_S11_AXI_transactor->BRESP(S11_AXI_bresp);
    mp_S11_AXI_transactor->BVALID(S11_AXI_bvalid);
    mp_S11_AXI_transactor->BREADY(S11_AXI_bready);
    mp_S11_AXI_transactor->CLK(aclk);
    mp_S11_AXI_transactor->RST(aresetn);

    // S11_AXI' transactor sockets

    mp_impl->S11_AXI_tlm_aximm_read_socket->bind(mp_S11_AXI_rd_socket_stub->initiator_socket);
    mp_impl->S11_AXI_tlm_aximm_write_socket->bind(*(mp_S11_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M00_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "M00_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M00_AXI' transactor parameters
    xsc::common_cpp::properties M00_AXI_transactor_param_props;
    M00_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    M00_AXI_transactor_param_props.addLong("FREQ_HZ", "100000000");
    M00_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    M00_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    M00_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    M00_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M00_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    M00_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    M00_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M00_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M00_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M00_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M00_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M00_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    M00_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "16");
    M00_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    M00_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M00_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M00_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M00_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M00_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    M00_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M00_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    M00_AXI_transactor_param_props.addString("PROTOCOL", "AXI3");
    M00_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M00_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_M00_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<32,32,1,1,1,1,1,1>("M00_AXI_transactor", M00_AXI_transactor_param_props);

    // M00_AXI' transactor ports

    mp_M00_AXI_transactor->AWADDR(M00_AXI_awaddr);
    mp_M00_AXI_awlen_converter = new xsc::common::vector2vector_converter<8,4>("M00_AXI_awlen_converter");
    mp_M00_AXI_awlen_converter->vector_in(m_M00_AXI_awlen_converter_signal);
    mp_M00_AXI_awlen_converter->vector_out(M00_AXI_awlen);
    mp_M00_AXI_transactor->AWLEN(m_M00_AXI_awlen_converter_signal);
    mp_M00_AXI_transactor->AWSIZE(M00_AXI_awsize);
    mp_M00_AXI_transactor->AWBURST(M00_AXI_awburst);
    mp_M00_AXI_awlock_converter = new xsc::common::scalar2vectorN_converter<2>("M00_AXI_awlock_converter");
    mp_M00_AXI_awlock_converter->scalar_in(m_M00_AXI_awlock_converter_signal);
    mp_M00_AXI_awlock_converter->vector_out(M00_AXI_awlock);
    mp_M00_AXI_transactor->AWLOCK(m_M00_AXI_awlock_converter_signal);
    mp_M00_AXI_transactor->AWCACHE(M00_AXI_awcache);
    mp_M00_AXI_transactor->AWPROT(M00_AXI_awprot);
    mp_M00_AXI_transactor->AWQOS(M00_AXI_awqos);
    mp_M00_AXI_transactor->AWVALID(M00_AXI_awvalid);
    mp_M00_AXI_transactor->AWREADY(M00_AXI_awready);
    mp_M00_AXI_transactor->WDATA(M00_AXI_wdata);
    mp_M00_AXI_transactor->WSTRB(M00_AXI_wstrb);
    mp_M00_AXI_transactor->WLAST(M00_AXI_wlast);
    mp_M00_AXI_transactor->WVALID(M00_AXI_wvalid);
    mp_M00_AXI_transactor->WREADY(M00_AXI_wready);
    mp_M00_AXI_transactor->BRESP(M00_AXI_bresp);
    mp_M00_AXI_transactor->BVALID(M00_AXI_bvalid);
    mp_M00_AXI_transactor->BREADY(M00_AXI_bready);
    mp_M00_AXI_transactor->ARADDR(M00_AXI_araddr);
    mp_M00_AXI_arlen_converter = new xsc::common::vector2vector_converter<8,4>("M00_AXI_arlen_converter");
    mp_M00_AXI_arlen_converter->vector_in(m_M00_AXI_arlen_converter_signal);
    mp_M00_AXI_arlen_converter->vector_out(M00_AXI_arlen);
    mp_M00_AXI_transactor->ARLEN(m_M00_AXI_arlen_converter_signal);
    mp_M00_AXI_transactor->ARSIZE(M00_AXI_arsize);
    mp_M00_AXI_transactor->ARBURST(M00_AXI_arburst);
    mp_M00_AXI_arlock_converter = new xsc::common::scalar2vectorN_converter<2>("M00_AXI_arlock_converter");
    mp_M00_AXI_arlock_converter->scalar_in(m_M00_AXI_arlock_converter_signal);
    mp_M00_AXI_arlock_converter->vector_out(M00_AXI_arlock);
    mp_M00_AXI_transactor->ARLOCK(m_M00_AXI_arlock_converter_signal);
    mp_M00_AXI_transactor->ARCACHE(M00_AXI_arcache);
    mp_M00_AXI_transactor->ARPROT(M00_AXI_arprot);
    mp_M00_AXI_transactor->ARQOS(M00_AXI_arqos);
    mp_M00_AXI_transactor->ARVALID(M00_AXI_arvalid);
    mp_M00_AXI_transactor->ARREADY(M00_AXI_arready);
    mp_M00_AXI_transactor->RDATA(M00_AXI_rdata);
    mp_M00_AXI_transactor->RRESP(M00_AXI_rresp);
    mp_M00_AXI_transactor->RLAST(M00_AXI_rlast);
    mp_M00_AXI_transactor->RVALID(M00_AXI_rvalid);
    mp_M00_AXI_transactor->RREADY(M00_AXI_rready);
    mp_M00_AXI_transactor->CLK(aclk);
    mp_M00_AXI_transactor->RST(aresetn);

    // M00_AXI' transactor sockets

    mp_impl->M00_AXI_tlm_aximm_read_socket->bind(*(mp_M00_AXI_transactor->rd_socket));
    mp_impl->M00_AXI_tlm_aximm_write_socket->bind(*(mp_M00_AXI_transactor->wr_socket));
  }
  else
  {
  }

}

#endif // RIVIERA




#ifdef VCSSYSTEMC
design_1_smartconnect_0_0::design_1_smartconnect_0_0(const sc_core::sc_module_name& nm) : design_1_smartconnect_0_0_sc(nm),  aclk("aclk"), aresetn("aresetn"), S00_AXI_araddr("S00_AXI_araddr"), S00_AXI_arlen("S00_AXI_arlen"), S00_AXI_arsize("S00_AXI_arsize"), S00_AXI_arburst("S00_AXI_arburst"), S00_AXI_arlock("S00_AXI_arlock"), S00_AXI_arcache("S00_AXI_arcache"), S00_AXI_arprot("S00_AXI_arprot"), S00_AXI_arqos("S00_AXI_arqos"), S00_AXI_arvalid("S00_AXI_arvalid"), S00_AXI_arready("S00_AXI_arready"), S00_AXI_rdata("S00_AXI_rdata"), S00_AXI_rresp("S00_AXI_rresp"), S00_AXI_rlast("S00_AXI_rlast"), S00_AXI_rvalid("S00_AXI_rvalid"), S00_AXI_rready("S00_AXI_rready"), S01_AXI_awaddr("S01_AXI_awaddr"), S01_AXI_awlen("S01_AXI_awlen"), S01_AXI_awsize("S01_AXI_awsize"), S01_AXI_awburst("S01_AXI_awburst"), S01_AXI_awlock("S01_AXI_awlock"), S01_AXI_awcache("S01_AXI_awcache"), S01_AXI_awprot("S01_AXI_awprot"), S01_AXI_awqos("S01_AXI_awqos"), S01_AXI_awvalid("S01_AXI_awvalid"), S01_AXI_awready("S01_AXI_awready"), S01_AXI_wdata("S01_AXI_wdata"), S01_AXI_wstrb("S01_AXI_wstrb"), S01_AXI_wlast("S01_AXI_wlast"), S01_AXI_wvalid("S01_AXI_wvalid"), S01_AXI_wready("S01_AXI_wready"), S01_AXI_bresp("S01_AXI_bresp"), S01_AXI_bvalid("S01_AXI_bvalid"), S01_AXI_bready("S01_AXI_bready"), S02_AXI_araddr("S02_AXI_araddr"), S02_AXI_arlen("S02_AXI_arlen"), S02_AXI_arsize("S02_AXI_arsize"), S02_AXI_arburst("S02_AXI_arburst"), S02_AXI_arlock("S02_AXI_arlock"), S02_AXI_arcache("S02_AXI_arcache"), S02_AXI_arprot("S02_AXI_arprot"), S02_AXI_arqos("S02_AXI_arqos"), S02_AXI_arvalid("S02_AXI_arvalid"), S02_AXI_arready("S02_AXI_arready"), S02_AXI_rdata("S02_AXI_rdata"), S02_AXI_rresp("S02_AXI_rresp"), S02_AXI_rlast("S02_AXI_rlast"), S02_AXI_rvalid("S02_AXI_rvalid"), S02_AXI_rready("S02_AXI_rready"), S03_AXI_awaddr("S03_AXI_awaddr"), S03_AXI_awlen("S03_AXI_awlen"), S03_AXI_awsize("S03_AXI_awsize"), S03_AXI_awburst("S03_AXI_awburst"), S03_AXI_awlock("S03_AXI_awlock"), S03_AXI_awcache("S03_AXI_awcache"), S03_AXI_awprot("S03_AXI_awprot"), S03_AXI_awqos("S03_AXI_awqos"), S03_AXI_awvalid("S03_AXI_awvalid"), S03_AXI_awready("S03_AXI_awready"), S03_AXI_wdata("S03_AXI_wdata"), S03_AXI_wstrb("S03_AXI_wstrb"), S03_AXI_wlast("S03_AXI_wlast"), S03_AXI_wvalid("S03_AXI_wvalid"), S03_AXI_wready("S03_AXI_wready"), S03_AXI_bresp("S03_AXI_bresp"), S03_AXI_bvalid("S03_AXI_bvalid"), S03_AXI_bready("S03_AXI_bready"), S04_AXI_araddr("S04_AXI_araddr"), S04_AXI_arlen("S04_AXI_arlen"), S04_AXI_arsize("S04_AXI_arsize"), S04_AXI_arburst("S04_AXI_arburst"), S04_AXI_arlock("S04_AXI_arlock"), S04_AXI_arcache("S04_AXI_arcache"), S04_AXI_arprot("S04_AXI_arprot"), S04_AXI_arqos("S04_AXI_arqos"), S04_AXI_arvalid("S04_AXI_arvalid"), S04_AXI_arready("S04_AXI_arready"), S04_AXI_rdata("S04_AXI_rdata"), S04_AXI_rresp("S04_AXI_rresp"), S04_AXI_rlast("S04_AXI_rlast"), S04_AXI_rvalid("S04_AXI_rvalid"), S04_AXI_rready("S04_AXI_rready"), S05_AXI_awaddr("S05_AXI_awaddr"), S05_AXI_awlen("S05_AXI_awlen"), S05_AXI_awsize("S05_AXI_awsize"), S05_AXI_awburst("S05_AXI_awburst"), S05_AXI_awlock("S05_AXI_awlock"), S05_AXI_awcache("S05_AXI_awcache"), S05_AXI_awprot("S05_AXI_awprot"), S05_AXI_awqos("S05_AXI_awqos"), S05_AXI_awvalid("S05_AXI_awvalid"), S05_AXI_awready("S05_AXI_awready"), S05_AXI_wdata("S05_AXI_wdata"), S05_AXI_wstrb("S05_AXI_wstrb"), S05_AXI_wlast("S05_AXI_wlast"), S05_AXI_wvalid("S05_AXI_wvalid"), S05_AXI_wready("S05_AXI_wready"), S05_AXI_bresp("S05_AXI_bresp"), S05_AXI_bvalid("S05_AXI_bvalid"), S05_AXI_bready("S05_AXI_bready"), S06_AXI_araddr("S06_AXI_araddr"), S06_AXI_arlen("S06_AXI_arlen"), S06_AXI_arsize("S06_AXI_arsize"), S06_AXI_arburst("S06_AXI_arburst"), S06_AXI_arlock("S06_AXI_arlock"), S06_AXI_arcache("S06_AXI_arcache"), S06_AXI_arprot("S06_AXI_arprot"), S06_AXI_arqos("S06_AXI_arqos"), S06_AXI_arvalid("S06_AXI_arvalid"), S06_AXI_arready("S06_AXI_arready"), S06_AXI_rdata("S06_AXI_rdata"), S06_AXI_rresp("S06_AXI_rresp"), S06_AXI_rlast("S06_AXI_rlast"), S06_AXI_rvalid("S06_AXI_rvalid"), S06_AXI_rready("S06_AXI_rready"), S07_AXI_awaddr("S07_AXI_awaddr"), S07_AXI_awlen("S07_AXI_awlen"), S07_AXI_awsize("S07_AXI_awsize"), S07_AXI_awburst("S07_AXI_awburst"), S07_AXI_awlock("S07_AXI_awlock"), S07_AXI_awcache("S07_AXI_awcache"), S07_AXI_awprot("S07_AXI_awprot"), S07_AXI_awqos("S07_AXI_awqos"), S07_AXI_awvalid("S07_AXI_awvalid"), S07_AXI_awready("S07_AXI_awready"), S07_AXI_wdata("S07_AXI_wdata"), S07_AXI_wstrb("S07_AXI_wstrb"), S07_AXI_wlast("S07_AXI_wlast"), S07_AXI_wvalid("S07_AXI_wvalid"), S07_AXI_wready("S07_AXI_wready"), S07_AXI_bresp("S07_AXI_bresp"), S07_AXI_bvalid("S07_AXI_bvalid"), S07_AXI_bready("S07_AXI_bready"), S08_AXI_araddr("S08_AXI_araddr"), S08_AXI_arlen("S08_AXI_arlen"), S08_AXI_arsize("S08_AXI_arsize"), S08_AXI_arburst("S08_AXI_arburst"), S08_AXI_arlock("S08_AXI_arlock"), S08_AXI_arcache("S08_AXI_arcache"), S08_AXI_arprot("S08_AXI_arprot"), S08_AXI_arqos("S08_AXI_arqos"), S08_AXI_arvalid("S08_AXI_arvalid"), S08_AXI_arready("S08_AXI_arready"), S08_AXI_rdata("S08_AXI_rdata"), S08_AXI_rresp("S08_AXI_rresp"), S08_AXI_rlast("S08_AXI_rlast"), S08_AXI_rvalid("S08_AXI_rvalid"), S08_AXI_rready("S08_AXI_rready"), S09_AXI_awaddr("S09_AXI_awaddr"), S09_AXI_awlen("S09_AXI_awlen"), S09_AXI_awsize("S09_AXI_awsize"), S09_AXI_awburst("S09_AXI_awburst"), S09_AXI_awlock("S09_AXI_awlock"), S09_AXI_awcache("S09_AXI_awcache"), S09_AXI_awprot("S09_AXI_awprot"), S09_AXI_awqos("S09_AXI_awqos"), S09_AXI_awvalid("S09_AXI_awvalid"), S09_AXI_awready("S09_AXI_awready"), S09_AXI_wdata("S09_AXI_wdata"), S09_AXI_wstrb("S09_AXI_wstrb"), S09_AXI_wlast("S09_AXI_wlast"), S09_AXI_wvalid("S09_AXI_wvalid"), S09_AXI_wready("S09_AXI_wready"), S09_AXI_bresp("S09_AXI_bresp"), S09_AXI_bvalid("S09_AXI_bvalid"), S09_AXI_bready("S09_AXI_bready"), S10_AXI_araddr("S10_AXI_araddr"), S10_AXI_arlen("S10_AXI_arlen"), S10_AXI_arsize("S10_AXI_arsize"), S10_AXI_arburst("S10_AXI_arburst"), S10_AXI_arlock("S10_AXI_arlock"), S10_AXI_arcache("S10_AXI_arcache"), S10_AXI_arprot("S10_AXI_arprot"), S10_AXI_arqos("S10_AXI_arqos"), S10_AXI_arvalid("S10_AXI_arvalid"), S10_AXI_arready("S10_AXI_arready"), S10_AXI_rdata("S10_AXI_rdata"), S10_AXI_rresp("S10_AXI_rresp"), S10_AXI_rlast("S10_AXI_rlast"), S10_AXI_rvalid("S10_AXI_rvalid"), S10_AXI_rready("S10_AXI_rready"), S11_AXI_awaddr("S11_AXI_awaddr"), S11_AXI_awlen("S11_AXI_awlen"), S11_AXI_awsize("S11_AXI_awsize"), S11_AXI_awburst("S11_AXI_awburst"), S11_AXI_awlock("S11_AXI_awlock"), S11_AXI_awcache("S11_AXI_awcache"), S11_AXI_awprot("S11_AXI_awprot"), S11_AXI_awqos("S11_AXI_awqos"), S11_AXI_awvalid("S11_AXI_awvalid"), S11_AXI_awready("S11_AXI_awready"), S11_AXI_wdata("S11_AXI_wdata"), S11_AXI_wstrb("S11_AXI_wstrb"), S11_AXI_wlast("S11_AXI_wlast"), S11_AXI_wvalid("S11_AXI_wvalid"), S11_AXI_wready("S11_AXI_wready"), S11_AXI_bresp("S11_AXI_bresp"), S11_AXI_bvalid("S11_AXI_bvalid"), S11_AXI_bready("S11_AXI_bready"), M00_AXI_awaddr("M00_AXI_awaddr"), M00_AXI_awlen("M00_AXI_awlen"), M00_AXI_awsize("M00_AXI_awsize"), M00_AXI_awburst("M00_AXI_awburst"), M00_AXI_awlock("M00_AXI_awlock"), M00_AXI_awcache("M00_AXI_awcache"), M00_AXI_awprot("M00_AXI_awprot"), M00_AXI_awqos("M00_AXI_awqos"), M00_AXI_awvalid("M00_AXI_awvalid"), M00_AXI_awready("M00_AXI_awready"), M00_AXI_wdata("M00_AXI_wdata"), M00_AXI_wstrb("M00_AXI_wstrb"), M00_AXI_wlast("M00_AXI_wlast"), M00_AXI_wvalid("M00_AXI_wvalid"), M00_AXI_wready("M00_AXI_wready"), M00_AXI_bresp("M00_AXI_bresp"), M00_AXI_bvalid("M00_AXI_bvalid"), M00_AXI_bready("M00_AXI_bready"), M00_AXI_araddr("M00_AXI_araddr"), M00_AXI_arlen("M00_AXI_arlen"), M00_AXI_arsize("M00_AXI_arsize"), M00_AXI_arburst("M00_AXI_arburst"), M00_AXI_arlock("M00_AXI_arlock"), M00_AXI_arcache("M00_AXI_arcache"), M00_AXI_arprot("M00_AXI_arprot"), M00_AXI_arqos("M00_AXI_arqos"), M00_AXI_arvalid("M00_AXI_arvalid"), M00_AXI_arready("M00_AXI_arready"), M00_AXI_rdata("M00_AXI_rdata"), M00_AXI_rresp("M00_AXI_rresp"), M00_AXI_rlast("M00_AXI_rlast"), M00_AXI_rvalid("M00_AXI_rvalid"), M00_AXI_rready("M00_AXI_rready"),mp_S00_AXI_wr_socket_stub(nullptr),mp_S01_AXI_rd_socket_stub(nullptr),mp_S02_AXI_wr_socket_stub(nullptr),mp_S03_AXI_rd_socket_stub(nullptr),mp_S04_AXI_wr_socket_stub(nullptr),mp_S05_AXI_rd_socket_stub(nullptr),mp_S06_AXI_wr_socket_stub(nullptr),mp_S07_AXI_rd_socket_stub(nullptr),mp_S08_AXI_wr_socket_stub(nullptr),mp_S09_AXI_rd_socket_stub(nullptr),mp_S10_AXI_wr_socket_stub(nullptr),mp_S11_AXI_rd_socket_stub(nullptr)
{
  // initialize pins
  mp_impl->aclk(aclk);
  mp_impl->aresetn(aresetn);

  // initialize transactors
  mp_S00_AXI_transactor = NULL;
  mp_S00_AXI_arlock_converter = NULL;
  mp_S01_AXI_transactor = NULL;
  mp_S01_AXI_awlock_converter = NULL;
  mp_S02_AXI_transactor = NULL;
  mp_S02_AXI_arlock_converter = NULL;
  mp_S03_AXI_transactor = NULL;
  mp_S03_AXI_awlock_converter = NULL;
  mp_S04_AXI_transactor = NULL;
  mp_S04_AXI_arlock_converter = NULL;
  mp_S05_AXI_transactor = NULL;
  mp_S05_AXI_awlock_converter = NULL;
  mp_S06_AXI_transactor = NULL;
  mp_S06_AXI_arlock_converter = NULL;
  mp_S07_AXI_transactor = NULL;
  mp_S07_AXI_awlock_converter = NULL;
  mp_S08_AXI_transactor = NULL;
  mp_S08_AXI_arlock_converter = NULL;
  mp_S09_AXI_transactor = NULL;
  mp_S09_AXI_awlock_converter = NULL;
  mp_S10_AXI_transactor = NULL;
  mp_S10_AXI_arlock_converter = NULL;
  mp_S11_AXI_transactor = NULL;
  mp_S11_AXI_awlock_converter = NULL;
  mp_M00_AXI_transactor = NULL;
  mp_M00_AXI_awlen_converter = NULL;
  mp_M00_AXI_awlock_converter = NULL;
  mp_M00_AXI_arlen_converter = NULL;
  mp_M00_AXI_arlock_converter = NULL;

  // Instantiate Socket Stubs
  mp_S00_AXI_wr_socket_stub = NULL;
  mp_S01_AXI_rd_socket_stub = NULL;
  mp_S02_AXI_wr_socket_stub = NULL;
  mp_S03_AXI_rd_socket_stub = NULL;
  mp_S04_AXI_wr_socket_stub = NULL;
  mp_S05_AXI_rd_socket_stub = NULL;
  mp_S06_AXI_wr_socket_stub = NULL;
  mp_S07_AXI_rd_socket_stub = NULL;
  mp_S08_AXI_wr_socket_stub = NULL;
  mp_S09_AXI_rd_socket_stub = NULL;
  mp_S10_AXI_wr_socket_stub = NULL;
  mp_S11_AXI_rd_socket_stub = NULL;

  // configure S00_AXI_transactor
    xsc::common_cpp::properties S00_AXI_transactor_param_props;
    S00_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S00_AXI_transactor_param_props.addLong("FREQ_HZ", "100000000");
    S00_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S00_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S00_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S00_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S00_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S00_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S00_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S00_AXI_transactor_param_props.addLong("HAS_WSTRB", "0");
    S00_AXI_transactor_param_props.addLong("HAS_BRESP", "0");
    S00_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S00_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S00_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    S00_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S00_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    S00_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S00_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S00_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S00_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S00_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S00_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S00_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S00_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S00_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_ONLY");
    S00_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_S00_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,32,1,1,1,1,1,1>("S00_AXI_transactor", S00_AXI_transactor_param_props);
  mp_S00_AXI_transactor->ARADDR(S00_AXI_araddr);
  mp_S00_AXI_transactor->ARLEN(S00_AXI_arlen);
  mp_S00_AXI_transactor->ARSIZE(S00_AXI_arsize);
  mp_S00_AXI_transactor->ARBURST(S00_AXI_arburst);
  mp_S00_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXI_arlock_converter");
  mp_S00_AXI_arlock_converter->vector_in(S00_AXI_arlock);
  mp_S00_AXI_arlock_converter->scalar_out(m_S00_AXI_arlock_converter_signal);
  mp_S00_AXI_transactor->ARLOCK(m_S00_AXI_arlock_converter_signal);
  mp_S00_AXI_transactor->ARCACHE(S00_AXI_arcache);
  mp_S00_AXI_transactor->ARPROT(S00_AXI_arprot);
  mp_S00_AXI_transactor->ARQOS(S00_AXI_arqos);
  mp_S00_AXI_transactor->ARVALID(S00_AXI_arvalid);
  mp_S00_AXI_transactor->ARREADY(S00_AXI_arready);
  mp_S00_AXI_transactor->RDATA(S00_AXI_rdata);
  mp_S00_AXI_transactor->RRESP(S00_AXI_rresp);
  mp_S00_AXI_transactor->RLAST(S00_AXI_rlast);
  mp_S00_AXI_transactor->RVALID(S00_AXI_rvalid);
  mp_S00_AXI_transactor->RREADY(S00_AXI_rready);
  mp_S00_AXI_transactor->CLK(aclk);
  mp_S00_AXI_transactor->RST(aresetn);
  // configure S01_AXI_transactor
    xsc::common_cpp::properties S01_AXI_transactor_param_props;
    S01_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S01_AXI_transactor_param_props.addLong("FREQ_HZ", "100000000");
    S01_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S01_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S01_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S01_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S01_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S01_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S01_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S01_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S01_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S01_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S01_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S01_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S01_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S01_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S01_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S01_AXI_transactor_param_props.addLong("HAS_RRESP", "0");
    S01_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S01_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S01_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "16");
    S01_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    S01_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S01_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S01_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S01_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S01_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S01_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S01_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S01_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S01_AXI_transactor_param_props.addString("READ_WRITE_MODE", "WRITE_ONLY");
    S01_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_S01_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,32,1,1,1,1,1,1>("S01_AXI_transactor", S01_AXI_transactor_param_props);
  mp_S01_AXI_transactor->AWADDR(S01_AXI_awaddr);
  mp_S01_AXI_transactor->AWLEN(S01_AXI_awlen);
  mp_S01_AXI_transactor->AWSIZE(S01_AXI_awsize);
  mp_S01_AXI_transactor->AWBURST(S01_AXI_awburst);
  mp_S01_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S01_AXI_awlock_converter");
  mp_S01_AXI_awlock_converter->vector_in(S01_AXI_awlock);
  mp_S01_AXI_awlock_converter->scalar_out(m_S01_AXI_awlock_converter_signal);
  mp_S01_AXI_transactor->AWLOCK(m_S01_AXI_awlock_converter_signal);
  mp_S01_AXI_transactor->AWCACHE(S01_AXI_awcache);
  mp_S01_AXI_transactor->AWPROT(S01_AXI_awprot);
  mp_S01_AXI_transactor->AWQOS(S01_AXI_awqos);
  mp_S01_AXI_transactor->AWVALID(S01_AXI_awvalid);
  mp_S01_AXI_transactor->AWREADY(S01_AXI_awready);
  mp_S01_AXI_transactor->WDATA(S01_AXI_wdata);
  mp_S01_AXI_transactor->WSTRB(S01_AXI_wstrb);
  mp_S01_AXI_transactor->WLAST(S01_AXI_wlast);
  mp_S01_AXI_transactor->WVALID(S01_AXI_wvalid);
  mp_S01_AXI_transactor->WREADY(S01_AXI_wready);
  mp_S01_AXI_transactor->BRESP(S01_AXI_bresp);
  mp_S01_AXI_transactor->BVALID(S01_AXI_bvalid);
  mp_S01_AXI_transactor->BREADY(S01_AXI_bready);
  mp_S01_AXI_transactor->CLK(aclk);
  mp_S01_AXI_transactor->RST(aresetn);
  // configure S02_AXI_transactor
    xsc::common_cpp::properties S02_AXI_transactor_param_props;
    S02_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S02_AXI_transactor_param_props.addLong("FREQ_HZ", "100000000");
    S02_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S02_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S02_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S02_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S02_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S02_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S02_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S02_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S02_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S02_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S02_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S02_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S02_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S02_AXI_transactor_param_props.addLong("HAS_WSTRB", "0");
    S02_AXI_transactor_param_props.addLong("HAS_BRESP", "0");
    S02_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S02_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S02_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    S02_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S02_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    S02_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S02_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S02_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S02_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S02_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S02_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S02_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S02_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S02_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_ONLY");
    S02_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_S02_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,32,1,1,1,1,1,1>("S02_AXI_transactor", S02_AXI_transactor_param_props);
  mp_S02_AXI_transactor->ARADDR(S02_AXI_araddr);
  mp_S02_AXI_transactor->ARLEN(S02_AXI_arlen);
  mp_S02_AXI_transactor->ARSIZE(S02_AXI_arsize);
  mp_S02_AXI_transactor->ARBURST(S02_AXI_arburst);
  mp_S02_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S02_AXI_arlock_converter");
  mp_S02_AXI_arlock_converter->vector_in(S02_AXI_arlock);
  mp_S02_AXI_arlock_converter->scalar_out(m_S02_AXI_arlock_converter_signal);
  mp_S02_AXI_transactor->ARLOCK(m_S02_AXI_arlock_converter_signal);
  mp_S02_AXI_transactor->ARCACHE(S02_AXI_arcache);
  mp_S02_AXI_transactor->ARPROT(S02_AXI_arprot);
  mp_S02_AXI_transactor->ARQOS(S02_AXI_arqos);
  mp_S02_AXI_transactor->ARVALID(S02_AXI_arvalid);
  mp_S02_AXI_transactor->ARREADY(S02_AXI_arready);
  mp_S02_AXI_transactor->RDATA(S02_AXI_rdata);
  mp_S02_AXI_transactor->RRESP(S02_AXI_rresp);
  mp_S02_AXI_transactor->RLAST(S02_AXI_rlast);
  mp_S02_AXI_transactor->RVALID(S02_AXI_rvalid);
  mp_S02_AXI_transactor->RREADY(S02_AXI_rready);
  mp_S02_AXI_transactor->CLK(aclk);
  mp_S02_AXI_transactor->RST(aresetn);
  // configure S03_AXI_transactor
    xsc::common_cpp::properties S03_AXI_transactor_param_props;
    S03_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S03_AXI_transactor_param_props.addLong("FREQ_HZ", "100000000");
    S03_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S03_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S03_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S03_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S03_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S03_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S03_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S03_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S03_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S03_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S03_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S03_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S03_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S03_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S03_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S03_AXI_transactor_param_props.addLong("HAS_RRESP", "0");
    S03_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S03_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S03_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "16");
    S03_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    S03_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S03_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S03_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S03_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S03_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S03_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S03_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S03_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S03_AXI_transactor_param_props.addString("READ_WRITE_MODE", "WRITE_ONLY");
    S03_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_S03_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,32,1,1,1,1,1,1>("S03_AXI_transactor", S03_AXI_transactor_param_props);
  mp_S03_AXI_transactor->AWADDR(S03_AXI_awaddr);
  mp_S03_AXI_transactor->AWLEN(S03_AXI_awlen);
  mp_S03_AXI_transactor->AWSIZE(S03_AXI_awsize);
  mp_S03_AXI_transactor->AWBURST(S03_AXI_awburst);
  mp_S03_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S03_AXI_awlock_converter");
  mp_S03_AXI_awlock_converter->vector_in(S03_AXI_awlock);
  mp_S03_AXI_awlock_converter->scalar_out(m_S03_AXI_awlock_converter_signal);
  mp_S03_AXI_transactor->AWLOCK(m_S03_AXI_awlock_converter_signal);
  mp_S03_AXI_transactor->AWCACHE(S03_AXI_awcache);
  mp_S03_AXI_transactor->AWPROT(S03_AXI_awprot);
  mp_S03_AXI_transactor->AWQOS(S03_AXI_awqos);
  mp_S03_AXI_transactor->AWVALID(S03_AXI_awvalid);
  mp_S03_AXI_transactor->AWREADY(S03_AXI_awready);
  mp_S03_AXI_transactor->WDATA(S03_AXI_wdata);
  mp_S03_AXI_transactor->WSTRB(S03_AXI_wstrb);
  mp_S03_AXI_transactor->WLAST(S03_AXI_wlast);
  mp_S03_AXI_transactor->WVALID(S03_AXI_wvalid);
  mp_S03_AXI_transactor->WREADY(S03_AXI_wready);
  mp_S03_AXI_transactor->BRESP(S03_AXI_bresp);
  mp_S03_AXI_transactor->BVALID(S03_AXI_bvalid);
  mp_S03_AXI_transactor->BREADY(S03_AXI_bready);
  mp_S03_AXI_transactor->CLK(aclk);
  mp_S03_AXI_transactor->RST(aresetn);
  // configure S04_AXI_transactor
    xsc::common_cpp::properties S04_AXI_transactor_param_props;
    S04_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S04_AXI_transactor_param_props.addLong("FREQ_HZ", "100000000");
    S04_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S04_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S04_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S04_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S04_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S04_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S04_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S04_AXI_transactor_param_props.addLong("HAS_WSTRB", "0");
    S04_AXI_transactor_param_props.addLong("HAS_BRESP", "0");
    S04_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S04_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S04_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    S04_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S04_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    S04_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S04_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S04_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S04_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S04_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S04_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S04_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S04_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S04_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_ONLY");
    S04_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_S04_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,32,1,1,1,1,1,1>("S04_AXI_transactor", S04_AXI_transactor_param_props);
  mp_S04_AXI_transactor->ARADDR(S04_AXI_araddr);
  mp_S04_AXI_transactor->ARLEN(S04_AXI_arlen);
  mp_S04_AXI_transactor->ARSIZE(S04_AXI_arsize);
  mp_S04_AXI_transactor->ARBURST(S04_AXI_arburst);
  mp_S04_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S04_AXI_arlock_converter");
  mp_S04_AXI_arlock_converter->vector_in(S04_AXI_arlock);
  mp_S04_AXI_arlock_converter->scalar_out(m_S04_AXI_arlock_converter_signal);
  mp_S04_AXI_transactor->ARLOCK(m_S04_AXI_arlock_converter_signal);
  mp_S04_AXI_transactor->ARCACHE(S04_AXI_arcache);
  mp_S04_AXI_transactor->ARPROT(S04_AXI_arprot);
  mp_S04_AXI_transactor->ARQOS(S04_AXI_arqos);
  mp_S04_AXI_transactor->ARVALID(S04_AXI_arvalid);
  mp_S04_AXI_transactor->ARREADY(S04_AXI_arready);
  mp_S04_AXI_transactor->RDATA(S04_AXI_rdata);
  mp_S04_AXI_transactor->RRESP(S04_AXI_rresp);
  mp_S04_AXI_transactor->RLAST(S04_AXI_rlast);
  mp_S04_AXI_transactor->RVALID(S04_AXI_rvalid);
  mp_S04_AXI_transactor->RREADY(S04_AXI_rready);
  mp_S04_AXI_transactor->CLK(aclk);
  mp_S04_AXI_transactor->RST(aresetn);
  // configure S05_AXI_transactor
    xsc::common_cpp::properties S05_AXI_transactor_param_props;
    S05_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S05_AXI_transactor_param_props.addLong("FREQ_HZ", "100000000");
    S05_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S05_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S05_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S05_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S05_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S05_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S05_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S05_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S05_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S05_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S05_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S05_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S05_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S05_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S05_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S05_AXI_transactor_param_props.addLong("HAS_RRESP", "0");
    S05_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S05_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S05_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "16");
    S05_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    S05_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S05_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S05_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S05_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S05_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S05_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S05_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S05_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S05_AXI_transactor_param_props.addString("READ_WRITE_MODE", "WRITE_ONLY");
    S05_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_S05_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,32,1,1,1,1,1,1>("S05_AXI_transactor", S05_AXI_transactor_param_props);
  mp_S05_AXI_transactor->AWADDR(S05_AXI_awaddr);
  mp_S05_AXI_transactor->AWLEN(S05_AXI_awlen);
  mp_S05_AXI_transactor->AWSIZE(S05_AXI_awsize);
  mp_S05_AXI_transactor->AWBURST(S05_AXI_awburst);
  mp_S05_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S05_AXI_awlock_converter");
  mp_S05_AXI_awlock_converter->vector_in(S05_AXI_awlock);
  mp_S05_AXI_awlock_converter->scalar_out(m_S05_AXI_awlock_converter_signal);
  mp_S05_AXI_transactor->AWLOCK(m_S05_AXI_awlock_converter_signal);
  mp_S05_AXI_transactor->AWCACHE(S05_AXI_awcache);
  mp_S05_AXI_transactor->AWPROT(S05_AXI_awprot);
  mp_S05_AXI_transactor->AWQOS(S05_AXI_awqos);
  mp_S05_AXI_transactor->AWVALID(S05_AXI_awvalid);
  mp_S05_AXI_transactor->AWREADY(S05_AXI_awready);
  mp_S05_AXI_transactor->WDATA(S05_AXI_wdata);
  mp_S05_AXI_transactor->WSTRB(S05_AXI_wstrb);
  mp_S05_AXI_transactor->WLAST(S05_AXI_wlast);
  mp_S05_AXI_transactor->WVALID(S05_AXI_wvalid);
  mp_S05_AXI_transactor->WREADY(S05_AXI_wready);
  mp_S05_AXI_transactor->BRESP(S05_AXI_bresp);
  mp_S05_AXI_transactor->BVALID(S05_AXI_bvalid);
  mp_S05_AXI_transactor->BREADY(S05_AXI_bready);
  mp_S05_AXI_transactor->CLK(aclk);
  mp_S05_AXI_transactor->RST(aresetn);
  // configure S06_AXI_transactor
    xsc::common_cpp::properties S06_AXI_transactor_param_props;
    S06_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S06_AXI_transactor_param_props.addLong("FREQ_HZ", "100000000");
    S06_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S06_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S06_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S06_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S06_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S06_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S06_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S06_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S06_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S06_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S06_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S06_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S06_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S06_AXI_transactor_param_props.addLong("HAS_WSTRB", "0");
    S06_AXI_transactor_param_props.addLong("HAS_BRESP", "0");
    S06_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S06_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S06_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    S06_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S06_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    S06_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S06_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S06_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S06_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S06_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S06_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S06_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S06_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S06_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_ONLY");
    S06_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_S06_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,32,1,1,1,1,1,1>("S06_AXI_transactor", S06_AXI_transactor_param_props);
  mp_S06_AXI_transactor->ARADDR(S06_AXI_araddr);
  mp_S06_AXI_transactor->ARLEN(S06_AXI_arlen);
  mp_S06_AXI_transactor->ARSIZE(S06_AXI_arsize);
  mp_S06_AXI_transactor->ARBURST(S06_AXI_arburst);
  mp_S06_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S06_AXI_arlock_converter");
  mp_S06_AXI_arlock_converter->vector_in(S06_AXI_arlock);
  mp_S06_AXI_arlock_converter->scalar_out(m_S06_AXI_arlock_converter_signal);
  mp_S06_AXI_transactor->ARLOCK(m_S06_AXI_arlock_converter_signal);
  mp_S06_AXI_transactor->ARCACHE(S06_AXI_arcache);
  mp_S06_AXI_transactor->ARPROT(S06_AXI_arprot);
  mp_S06_AXI_transactor->ARQOS(S06_AXI_arqos);
  mp_S06_AXI_transactor->ARVALID(S06_AXI_arvalid);
  mp_S06_AXI_transactor->ARREADY(S06_AXI_arready);
  mp_S06_AXI_transactor->RDATA(S06_AXI_rdata);
  mp_S06_AXI_transactor->RRESP(S06_AXI_rresp);
  mp_S06_AXI_transactor->RLAST(S06_AXI_rlast);
  mp_S06_AXI_transactor->RVALID(S06_AXI_rvalid);
  mp_S06_AXI_transactor->RREADY(S06_AXI_rready);
  mp_S06_AXI_transactor->CLK(aclk);
  mp_S06_AXI_transactor->RST(aresetn);
  // configure S07_AXI_transactor
    xsc::common_cpp::properties S07_AXI_transactor_param_props;
    S07_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S07_AXI_transactor_param_props.addLong("FREQ_HZ", "100000000");
    S07_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S07_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S07_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S07_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S07_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S07_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S07_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S07_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S07_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S07_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S07_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S07_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S07_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S07_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S07_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S07_AXI_transactor_param_props.addLong("HAS_RRESP", "0");
    S07_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S07_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S07_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "16");
    S07_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    S07_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S07_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S07_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S07_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S07_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S07_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S07_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S07_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S07_AXI_transactor_param_props.addString("READ_WRITE_MODE", "WRITE_ONLY");
    S07_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_S07_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,32,1,1,1,1,1,1>("S07_AXI_transactor", S07_AXI_transactor_param_props);
  mp_S07_AXI_transactor->AWADDR(S07_AXI_awaddr);
  mp_S07_AXI_transactor->AWLEN(S07_AXI_awlen);
  mp_S07_AXI_transactor->AWSIZE(S07_AXI_awsize);
  mp_S07_AXI_transactor->AWBURST(S07_AXI_awburst);
  mp_S07_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S07_AXI_awlock_converter");
  mp_S07_AXI_awlock_converter->vector_in(S07_AXI_awlock);
  mp_S07_AXI_awlock_converter->scalar_out(m_S07_AXI_awlock_converter_signal);
  mp_S07_AXI_transactor->AWLOCK(m_S07_AXI_awlock_converter_signal);
  mp_S07_AXI_transactor->AWCACHE(S07_AXI_awcache);
  mp_S07_AXI_transactor->AWPROT(S07_AXI_awprot);
  mp_S07_AXI_transactor->AWQOS(S07_AXI_awqos);
  mp_S07_AXI_transactor->AWVALID(S07_AXI_awvalid);
  mp_S07_AXI_transactor->AWREADY(S07_AXI_awready);
  mp_S07_AXI_transactor->WDATA(S07_AXI_wdata);
  mp_S07_AXI_transactor->WSTRB(S07_AXI_wstrb);
  mp_S07_AXI_transactor->WLAST(S07_AXI_wlast);
  mp_S07_AXI_transactor->WVALID(S07_AXI_wvalid);
  mp_S07_AXI_transactor->WREADY(S07_AXI_wready);
  mp_S07_AXI_transactor->BRESP(S07_AXI_bresp);
  mp_S07_AXI_transactor->BVALID(S07_AXI_bvalid);
  mp_S07_AXI_transactor->BREADY(S07_AXI_bready);
  mp_S07_AXI_transactor->CLK(aclk);
  mp_S07_AXI_transactor->RST(aresetn);
  // configure S08_AXI_transactor
    xsc::common_cpp::properties S08_AXI_transactor_param_props;
    S08_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S08_AXI_transactor_param_props.addLong("FREQ_HZ", "100000000");
    S08_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S08_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S08_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S08_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S08_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S08_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S08_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S08_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S08_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S08_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S08_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S08_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S08_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S08_AXI_transactor_param_props.addLong("HAS_WSTRB", "0");
    S08_AXI_transactor_param_props.addLong("HAS_BRESP", "0");
    S08_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S08_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S08_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    S08_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S08_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    S08_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S08_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S08_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S08_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S08_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S08_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S08_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S08_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S08_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_ONLY");
    S08_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_S08_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,32,1,1,1,1,1,1>("S08_AXI_transactor", S08_AXI_transactor_param_props);
  mp_S08_AXI_transactor->ARADDR(S08_AXI_araddr);
  mp_S08_AXI_transactor->ARLEN(S08_AXI_arlen);
  mp_S08_AXI_transactor->ARSIZE(S08_AXI_arsize);
  mp_S08_AXI_transactor->ARBURST(S08_AXI_arburst);
  mp_S08_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S08_AXI_arlock_converter");
  mp_S08_AXI_arlock_converter->vector_in(S08_AXI_arlock);
  mp_S08_AXI_arlock_converter->scalar_out(m_S08_AXI_arlock_converter_signal);
  mp_S08_AXI_transactor->ARLOCK(m_S08_AXI_arlock_converter_signal);
  mp_S08_AXI_transactor->ARCACHE(S08_AXI_arcache);
  mp_S08_AXI_transactor->ARPROT(S08_AXI_arprot);
  mp_S08_AXI_transactor->ARQOS(S08_AXI_arqos);
  mp_S08_AXI_transactor->ARVALID(S08_AXI_arvalid);
  mp_S08_AXI_transactor->ARREADY(S08_AXI_arready);
  mp_S08_AXI_transactor->RDATA(S08_AXI_rdata);
  mp_S08_AXI_transactor->RRESP(S08_AXI_rresp);
  mp_S08_AXI_transactor->RLAST(S08_AXI_rlast);
  mp_S08_AXI_transactor->RVALID(S08_AXI_rvalid);
  mp_S08_AXI_transactor->RREADY(S08_AXI_rready);
  mp_S08_AXI_transactor->CLK(aclk);
  mp_S08_AXI_transactor->RST(aresetn);
  // configure S09_AXI_transactor
    xsc::common_cpp::properties S09_AXI_transactor_param_props;
    S09_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S09_AXI_transactor_param_props.addLong("FREQ_HZ", "100000000");
    S09_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S09_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S09_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S09_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S09_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S09_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S09_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S09_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S09_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S09_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S09_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S09_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S09_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S09_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S09_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S09_AXI_transactor_param_props.addLong("HAS_RRESP", "0");
    S09_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S09_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S09_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "16");
    S09_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    S09_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S09_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S09_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S09_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S09_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S09_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S09_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S09_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S09_AXI_transactor_param_props.addString("READ_WRITE_MODE", "WRITE_ONLY");
    S09_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_S09_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,32,1,1,1,1,1,1>("S09_AXI_transactor", S09_AXI_transactor_param_props);
  mp_S09_AXI_transactor->AWADDR(S09_AXI_awaddr);
  mp_S09_AXI_transactor->AWLEN(S09_AXI_awlen);
  mp_S09_AXI_transactor->AWSIZE(S09_AXI_awsize);
  mp_S09_AXI_transactor->AWBURST(S09_AXI_awburst);
  mp_S09_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S09_AXI_awlock_converter");
  mp_S09_AXI_awlock_converter->vector_in(S09_AXI_awlock);
  mp_S09_AXI_awlock_converter->scalar_out(m_S09_AXI_awlock_converter_signal);
  mp_S09_AXI_transactor->AWLOCK(m_S09_AXI_awlock_converter_signal);
  mp_S09_AXI_transactor->AWCACHE(S09_AXI_awcache);
  mp_S09_AXI_transactor->AWPROT(S09_AXI_awprot);
  mp_S09_AXI_transactor->AWQOS(S09_AXI_awqos);
  mp_S09_AXI_transactor->AWVALID(S09_AXI_awvalid);
  mp_S09_AXI_transactor->AWREADY(S09_AXI_awready);
  mp_S09_AXI_transactor->WDATA(S09_AXI_wdata);
  mp_S09_AXI_transactor->WSTRB(S09_AXI_wstrb);
  mp_S09_AXI_transactor->WLAST(S09_AXI_wlast);
  mp_S09_AXI_transactor->WVALID(S09_AXI_wvalid);
  mp_S09_AXI_transactor->WREADY(S09_AXI_wready);
  mp_S09_AXI_transactor->BRESP(S09_AXI_bresp);
  mp_S09_AXI_transactor->BVALID(S09_AXI_bvalid);
  mp_S09_AXI_transactor->BREADY(S09_AXI_bready);
  mp_S09_AXI_transactor->CLK(aclk);
  mp_S09_AXI_transactor->RST(aresetn);
  // configure S10_AXI_transactor
    xsc::common_cpp::properties S10_AXI_transactor_param_props;
    S10_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S10_AXI_transactor_param_props.addLong("FREQ_HZ", "100000000");
    S10_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S10_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S10_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S10_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S10_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S10_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S10_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S10_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S10_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S10_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S10_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S10_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S10_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S10_AXI_transactor_param_props.addLong("HAS_WSTRB", "0");
    S10_AXI_transactor_param_props.addLong("HAS_BRESP", "0");
    S10_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S10_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S10_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    S10_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S10_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    S10_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S10_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S10_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S10_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S10_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S10_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S10_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S10_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S10_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_ONLY");
    S10_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_S10_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,32,1,1,1,1,1,1>("S10_AXI_transactor", S10_AXI_transactor_param_props);
  mp_S10_AXI_transactor->ARADDR(S10_AXI_araddr);
  mp_S10_AXI_transactor->ARLEN(S10_AXI_arlen);
  mp_S10_AXI_transactor->ARSIZE(S10_AXI_arsize);
  mp_S10_AXI_transactor->ARBURST(S10_AXI_arburst);
  mp_S10_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S10_AXI_arlock_converter");
  mp_S10_AXI_arlock_converter->vector_in(S10_AXI_arlock);
  mp_S10_AXI_arlock_converter->scalar_out(m_S10_AXI_arlock_converter_signal);
  mp_S10_AXI_transactor->ARLOCK(m_S10_AXI_arlock_converter_signal);
  mp_S10_AXI_transactor->ARCACHE(S10_AXI_arcache);
  mp_S10_AXI_transactor->ARPROT(S10_AXI_arprot);
  mp_S10_AXI_transactor->ARQOS(S10_AXI_arqos);
  mp_S10_AXI_transactor->ARVALID(S10_AXI_arvalid);
  mp_S10_AXI_transactor->ARREADY(S10_AXI_arready);
  mp_S10_AXI_transactor->RDATA(S10_AXI_rdata);
  mp_S10_AXI_transactor->RRESP(S10_AXI_rresp);
  mp_S10_AXI_transactor->RLAST(S10_AXI_rlast);
  mp_S10_AXI_transactor->RVALID(S10_AXI_rvalid);
  mp_S10_AXI_transactor->RREADY(S10_AXI_rready);
  mp_S10_AXI_transactor->CLK(aclk);
  mp_S10_AXI_transactor->RST(aresetn);
  // configure S11_AXI_transactor
    xsc::common_cpp::properties S11_AXI_transactor_param_props;
    S11_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S11_AXI_transactor_param_props.addLong("FREQ_HZ", "100000000");
    S11_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S11_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S11_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S11_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S11_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S11_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S11_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S11_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S11_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S11_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S11_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S11_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S11_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S11_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S11_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S11_AXI_transactor_param_props.addLong("HAS_RRESP", "0");
    S11_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S11_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S11_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "16");
    S11_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    S11_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S11_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S11_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S11_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S11_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S11_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S11_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S11_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S11_AXI_transactor_param_props.addString("READ_WRITE_MODE", "WRITE_ONLY");
    S11_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_S11_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,32,1,1,1,1,1,1>("S11_AXI_transactor", S11_AXI_transactor_param_props);
  mp_S11_AXI_transactor->AWADDR(S11_AXI_awaddr);
  mp_S11_AXI_transactor->AWLEN(S11_AXI_awlen);
  mp_S11_AXI_transactor->AWSIZE(S11_AXI_awsize);
  mp_S11_AXI_transactor->AWBURST(S11_AXI_awburst);
  mp_S11_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S11_AXI_awlock_converter");
  mp_S11_AXI_awlock_converter->vector_in(S11_AXI_awlock);
  mp_S11_AXI_awlock_converter->scalar_out(m_S11_AXI_awlock_converter_signal);
  mp_S11_AXI_transactor->AWLOCK(m_S11_AXI_awlock_converter_signal);
  mp_S11_AXI_transactor->AWCACHE(S11_AXI_awcache);
  mp_S11_AXI_transactor->AWPROT(S11_AXI_awprot);
  mp_S11_AXI_transactor->AWQOS(S11_AXI_awqos);
  mp_S11_AXI_transactor->AWVALID(S11_AXI_awvalid);
  mp_S11_AXI_transactor->AWREADY(S11_AXI_awready);
  mp_S11_AXI_transactor->WDATA(S11_AXI_wdata);
  mp_S11_AXI_transactor->WSTRB(S11_AXI_wstrb);
  mp_S11_AXI_transactor->WLAST(S11_AXI_wlast);
  mp_S11_AXI_transactor->WVALID(S11_AXI_wvalid);
  mp_S11_AXI_transactor->WREADY(S11_AXI_wready);
  mp_S11_AXI_transactor->BRESP(S11_AXI_bresp);
  mp_S11_AXI_transactor->BVALID(S11_AXI_bvalid);
  mp_S11_AXI_transactor->BREADY(S11_AXI_bready);
  mp_S11_AXI_transactor->CLK(aclk);
  mp_S11_AXI_transactor->RST(aresetn);
  // configure M00_AXI_transactor
    xsc::common_cpp::properties M00_AXI_transactor_param_props;
    M00_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    M00_AXI_transactor_param_props.addLong("FREQ_HZ", "100000000");
    M00_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    M00_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    M00_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    M00_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M00_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    M00_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    M00_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M00_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M00_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M00_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M00_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M00_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    M00_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "16");
    M00_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    M00_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M00_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M00_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M00_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M00_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    M00_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M00_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    M00_AXI_transactor_param_props.addString("PROTOCOL", "AXI3");
    M00_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M00_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_M00_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<32,32,1,1,1,1,1,1>("M00_AXI_transactor", M00_AXI_transactor_param_props);
  mp_M00_AXI_transactor->AWADDR(M00_AXI_awaddr);
  mp_M00_AXI_awlen_converter = new xsc::common::vector2vector_converter<8,4>("M00_AXI_awlen_converter");
  mp_M00_AXI_awlen_converter->vector_in(m_M00_AXI_awlen_converter_signal);
  mp_M00_AXI_awlen_converter->vector_out(M00_AXI_awlen);
  mp_M00_AXI_transactor->AWLEN(m_M00_AXI_awlen_converter_signal);
  mp_M00_AXI_transactor->AWSIZE(M00_AXI_awsize);
  mp_M00_AXI_transactor->AWBURST(M00_AXI_awburst);
  mp_M00_AXI_awlock_converter = new xsc::common::scalar2vectorN_converter<2>("M00_AXI_awlock_converter");
  mp_M00_AXI_awlock_converter->scalar_in(m_M00_AXI_awlock_converter_signal);
  mp_M00_AXI_awlock_converter->vector_out(M00_AXI_awlock);
  mp_M00_AXI_transactor->AWLOCK(m_M00_AXI_awlock_converter_signal);
  mp_M00_AXI_transactor->AWCACHE(M00_AXI_awcache);
  mp_M00_AXI_transactor->AWPROT(M00_AXI_awprot);
  mp_M00_AXI_transactor->AWQOS(M00_AXI_awqos);
  mp_M00_AXI_transactor->AWVALID(M00_AXI_awvalid);
  mp_M00_AXI_transactor->AWREADY(M00_AXI_awready);
  mp_M00_AXI_transactor->WDATA(M00_AXI_wdata);
  mp_M00_AXI_transactor->WSTRB(M00_AXI_wstrb);
  mp_M00_AXI_transactor->WLAST(M00_AXI_wlast);
  mp_M00_AXI_transactor->WVALID(M00_AXI_wvalid);
  mp_M00_AXI_transactor->WREADY(M00_AXI_wready);
  mp_M00_AXI_transactor->BRESP(M00_AXI_bresp);
  mp_M00_AXI_transactor->BVALID(M00_AXI_bvalid);
  mp_M00_AXI_transactor->BREADY(M00_AXI_bready);
  mp_M00_AXI_transactor->ARADDR(M00_AXI_araddr);
  mp_M00_AXI_arlen_converter = new xsc::common::vector2vector_converter<8,4>("M00_AXI_arlen_converter");
  mp_M00_AXI_arlen_converter->vector_in(m_M00_AXI_arlen_converter_signal);
  mp_M00_AXI_arlen_converter->vector_out(M00_AXI_arlen);
  mp_M00_AXI_transactor->ARLEN(m_M00_AXI_arlen_converter_signal);
  mp_M00_AXI_transactor->ARSIZE(M00_AXI_arsize);
  mp_M00_AXI_transactor->ARBURST(M00_AXI_arburst);
  mp_M00_AXI_arlock_converter = new xsc::common::scalar2vectorN_converter<2>("M00_AXI_arlock_converter");
  mp_M00_AXI_arlock_converter->scalar_in(m_M00_AXI_arlock_converter_signal);
  mp_M00_AXI_arlock_converter->vector_out(M00_AXI_arlock);
  mp_M00_AXI_transactor->ARLOCK(m_M00_AXI_arlock_converter_signal);
  mp_M00_AXI_transactor->ARCACHE(M00_AXI_arcache);
  mp_M00_AXI_transactor->ARPROT(M00_AXI_arprot);
  mp_M00_AXI_transactor->ARQOS(M00_AXI_arqos);
  mp_M00_AXI_transactor->ARVALID(M00_AXI_arvalid);
  mp_M00_AXI_transactor->ARREADY(M00_AXI_arready);
  mp_M00_AXI_transactor->RDATA(M00_AXI_rdata);
  mp_M00_AXI_transactor->RRESP(M00_AXI_rresp);
  mp_M00_AXI_transactor->RLAST(M00_AXI_rlast);
  mp_M00_AXI_transactor->RVALID(M00_AXI_rvalid);
  mp_M00_AXI_transactor->RREADY(M00_AXI_rready);
  mp_M00_AXI_transactor->CLK(aclk);
  mp_M00_AXI_transactor->RST(aresetn);

  // initialize transactors stubs
  S00_AXI_transactor_target_rd_socket_stub = nullptr;
  S01_AXI_transactor_target_wr_socket_stub = nullptr;
  S02_AXI_transactor_target_rd_socket_stub = nullptr;
  S03_AXI_transactor_target_wr_socket_stub = nullptr;
  S04_AXI_transactor_target_rd_socket_stub = nullptr;
  S05_AXI_transactor_target_wr_socket_stub = nullptr;
  S06_AXI_transactor_target_rd_socket_stub = nullptr;
  S07_AXI_transactor_target_wr_socket_stub = nullptr;
  S08_AXI_transactor_target_rd_socket_stub = nullptr;
  S09_AXI_transactor_target_wr_socket_stub = nullptr;
  S10_AXI_transactor_target_rd_socket_stub = nullptr;
  S11_AXI_transactor_target_wr_socket_stub = nullptr;
  M00_AXI_transactor_initiator_wr_socket_stub = nullptr;
  M00_AXI_transactor_initiator_rd_socket_stub = nullptr;

}

void design_1_smartconnect_0_0::before_end_of_elaboration()
{
  // configure 'S00_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "S00_AXI_TLM_MODE") != 1)
  {
    mp_impl->S00_AXI_tlm_aximm_read_socket->bind(*(mp_S00_AXI_transactor->rd_socket));
    mp_S00_AXI_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket", 0);
    mp_impl->S00_AXI_tlm_aximm_write_socket->bind(mp_S00_AXI_wr_socket_stub->initiator_socket);
  
  }
  else
  {
    S00_AXI_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    S00_AXI_transactor_target_rd_socket_stub->bind(*(mp_S00_AXI_transactor->rd_socket));
    mp_S00_AXI_transactor->disable_transactor();
  }

  // configure 'S01_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "S01_AXI_TLM_MODE") != 1)
  {
    mp_S01_AXI_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket", 0);
    mp_impl->S01_AXI_tlm_aximm_read_socket->bind(mp_S01_AXI_rd_socket_stub->initiator_socket);
    mp_impl->S01_AXI_tlm_aximm_write_socket->bind(*(mp_S01_AXI_transactor->wr_socket));
  
  }
  else
  {
    S01_AXI_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    S01_AXI_transactor_target_wr_socket_stub->bind(*(mp_S01_AXI_transactor->wr_socket));
    mp_S01_AXI_transactor->disable_transactor();
  }

  // configure 'S02_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "S02_AXI_TLM_MODE") != 1)
  {
    mp_impl->S02_AXI_tlm_aximm_read_socket->bind(*(mp_S02_AXI_transactor->rd_socket));
    mp_S02_AXI_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket", 0);
    mp_impl->S02_AXI_tlm_aximm_write_socket->bind(mp_S02_AXI_wr_socket_stub->initiator_socket);
  
  }
  else
  {
    S02_AXI_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    S02_AXI_transactor_target_rd_socket_stub->bind(*(mp_S02_AXI_transactor->rd_socket));
    mp_S02_AXI_transactor->disable_transactor();
  }

  // configure 'S03_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "S03_AXI_TLM_MODE") != 1)
  {
    mp_S03_AXI_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket", 0);
    mp_impl->S03_AXI_tlm_aximm_read_socket->bind(mp_S03_AXI_rd_socket_stub->initiator_socket);
    mp_impl->S03_AXI_tlm_aximm_write_socket->bind(*(mp_S03_AXI_transactor->wr_socket));
  
  }
  else
  {
    S03_AXI_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    S03_AXI_transactor_target_wr_socket_stub->bind(*(mp_S03_AXI_transactor->wr_socket));
    mp_S03_AXI_transactor->disable_transactor();
  }

  // configure 'S04_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "S04_AXI_TLM_MODE") != 1)
  {
    mp_impl->S04_AXI_tlm_aximm_read_socket->bind(*(mp_S04_AXI_transactor->rd_socket));
    mp_S04_AXI_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket", 0);
    mp_impl->S04_AXI_tlm_aximm_write_socket->bind(mp_S04_AXI_wr_socket_stub->initiator_socket);
  
  }
  else
  {
    S04_AXI_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    S04_AXI_transactor_target_rd_socket_stub->bind(*(mp_S04_AXI_transactor->rd_socket));
    mp_S04_AXI_transactor->disable_transactor();
  }

  // configure 'S05_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "S05_AXI_TLM_MODE") != 1)
  {
    mp_S05_AXI_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket", 0);
    mp_impl->S05_AXI_tlm_aximm_read_socket->bind(mp_S05_AXI_rd_socket_stub->initiator_socket);
    mp_impl->S05_AXI_tlm_aximm_write_socket->bind(*(mp_S05_AXI_transactor->wr_socket));
  
  }
  else
  {
    S05_AXI_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    S05_AXI_transactor_target_wr_socket_stub->bind(*(mp_S05_AXI_transactor->wr_socket));
    mp_S05_AXI_transactor->disable_transactor();
  }

  // configure 'S06_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "S06_AXI_TLM_MODE") != 1)
  {
    mp_impl->S06_AXI_tlm_aximm_read_socket->bind(*(mp_S06_AXI_transactor->rd_socket));
    mp_S06_AXI_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket", 0);
    mp_impl->S06_AXI_tlm_aximm_write_socket->bind(mp_S06_AXI_wr_socket_stub->initiator_socket);
  
  }
  else
  {
    S06_AXI_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    S06_AXI_transactor_target_rd_socket_stub->bind(*(mp_S06_AXI_transactor->rd_socket));
    mp_S06_AXI_transactor->disable_transactor();
  }

  // configure 'S07_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "S07_AXI_TLM_MODE") != 1)
  {
    mp_S07_AXI_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket", 0);
    mp_impl->S07_AXI_tlm_aximm_read_socket->bind(mp_S07_AXI_rd_socket_stub->initiator_socket);
    mp_impl->S07_AXI_tlm_aximm_write_socket->bind(*(mp_S07_AXI_transactor->wr_socket));
  
  }
  else
  {
    S07_AXI_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    S07_AXI_transactor_target_wr_socket_stub->bind(*(mp_S07_AXI_transactor->wr_socket));
    mp_S07_AXI_transactor->disable_transactor();
  }

  // configure 'S08_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "S08_AXI_TLM_MODE") != 1)
  {
    mp_impl->S08_AXI_tlm_aximm_read_socket->bind(*(mp_S08_AXI_transactor->rd_socket));
    mp_S08_AXI_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket", 0);
    mp_impl->S08_AXI_tlm_aximm_write_socket->bind(mp_S08_AXI_wr_socket_stub->initiator_socket);
  
  }
  else
  {
    S08_AXI_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    S08_AXI_transactor_target_rd_socket_stub->bind(*(mp_S08_AXI_transactor->rd_socket));
    mp_S08_AXI_transactor->disable_transactor();
  }

  // configure 'S09_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "S09_AXI_TLM_MODE") != 1)
  {
    mp_S09_AXI_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket", 0);
    mp_impl->S09_AXI_tlm_aximm_read_socket->bind(mp_S09_AXI_rd_socket_stub->initiator_socket);
    mp_impl->S09_AXI_tlm_aximm_write_socket->bind(*(mp_S09_AXI_transactor->wr_socket));
  
  }
  else
  {
    S09_AXI_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    S09_AXI_transactor_target_wr_socket_stub->bind(*(mp_S09_AXI_transactor->wr_socket));
    mp_S09_AXI_transactor->disable_transactor();
  }

  // configure 'S10_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "S10_AXI_TLM_MODE") != 1)
  {
    mp_impl->S10_AXI_tlm_aximm_read_socket->bind(*(mp_S10_AXI_transactor->rd_socket));
    mp_S10_AXI_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket", 0);
    mp_impl->S10_AXI_tlm_aximm_write_socket->bind(mp_S10_AXI_wr_socket_stub->initiator_socket);
  
  }
  else
  {
    S10_AXI_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    S10_AXI_transactor_target_rd_socket_stub->bind(*(mp_S10_AXI_transactor->rd_socket));
    mp_S10_AXI_transactor->disable_transactor();
  }

  // configure 'S11_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "S11_AXI_TLM_MODE") != 1)
  {
    mp_S11_AXI_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket", 0);
    mp_impl->S11_AXI_tlm_aximm_read_socket->bind(mp_S11_AXI_rd_socket_stub->initiator_socket);
    mp_impl->S11_AXI_tlm_aximm_write_socket->bind(*(mp_S11_AXI_transactor->wr_socket));
  
  }
  else
  {
    S11_AXI_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    S11_AXI_transactor_target_wr_socket_stub->bind(*(mp_S11_AXI_transactor->wr_socket));
    mp_S11_AXI_transactor->disable_transactor();
  }

  // configure 'M00_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "M00_AXI_TLM_MODE") != 1)
  {
    mp_impl->M00_AXI_tlm_aximm_read_socket->bind(*(mp_M00_AXI_transactor->rd_socket));
    mp_impl->M00_AXI_tlm_aximm_write_socket->bind(*(mp_M00_AXI_transactor->wr_socket));
  
  }
  else
  {
    M00_AXI_transactor_initiator_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket",0);
    M00_AXI_transactor_initiator_wr_socket_stub->bind(*(mp_M00_AXI_transactor->wr_socket));
    M00_AXI_transactor_initiator_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket",0);
    M00_AXI_transactor_initiator_rd_socket_stub->bind(*(mp_M00_AXI_transactor->rd_socket));
    mp_M00_AXI_transactor->disable_transactor();
  }

}

#endif // VCSSYSTEMC




#ifdef MTI_SYSTEMC
design_1_smartconnect_0_0::design_1_smartconnect_0_0(const sc_core::sc_module_name& nm) : design_1_smartconnect_0_0_sc(nm),  aclk("aclk"), aresetn("aresetn"), S00_AXI_araddr("S00_AXI_araddr"), S00_AXI_arlen("S00_AXI_arlen"), S00_AXI_arsize("S00_AXI_arsize"), S00_AXI_arburst("S00_AXI_arburst"), S00_AXI_arlock("S00_AXI_arlock"), S00_AXI_arcache("S00_AXI_arcache"), S00_AXI_arprot("S00_AXI_arprot"), S00_AXI_arqos("S00_AXI_arqos"), S00_AXI_arvalid("S00_AXI_arvalid"), S00_AXI_arready("S00_AXI_arready"), S00_AXI_rdata("S00_AXI_rdata"), S00_AXI_rresp("S00_AXI_rresp"), S00_AXI_rlast("S00_AXI_rlast"), S00_AXI_rvalid("S00_AXI_rvalid"), S00_AXI_rready("S00_AXI_rready"), S01_AXI_awaddr("S01_AXI_awaddr"), S01_AXI_awlen("S01_AXI_awlen"), S01_AXI_awsize("S01_AXI_awsize"), S01_AXI_awburst("S01_AXI_awburst"), S01_AXI_awlock("S01_AXI_awlock"), S01_AXI_awcache("S01_AXI_awcache"), S01_AXI_awprot("S01_AXI_awprot"), S01_AXI_awqos("S01_AXI_awqos"), S01_AXI_awvalid("S01_AXI_awvalid"), S01_AXI_awready("S01_AXI_awready"), S01_AXI_wdata("S01_AXI_wdata"), S01_AXI_wstrb("S01_AXI_wstrb"), S01_AXI_wlast("S01_AXI_wlast"), S01_AXI_wvalid("S01_AXI_wvalid"), S01_AXI_wready("S01_AXI_wready"), S01_AXI_bresp("S01_AXI_bresp"), S01_AXI_bvalid("S01_AXI_bvalid"), S01_AXI_bready("S01_AXI_bready"), S02_AXI_araddr("S02_AXI_araddr"), S02_AXI_arlen("S02_AXI_arlen"), S02_AXI_arsize("S02_AXI_arsize"), S02_AXI_arburst("S02_AXI_arburst"), S02_AXI_arlock("S02_AXI_arlock"), S02_AXI_arcache("S02_AXI_arcache"), S02_AXI_arprot("S02_AXI_arprot"), S02_AXI_arqos("S02_AXI_arqos"), S02_AXI_arvalid("S02_AXI_arvalid"), S02_AXI_arready("S02_AXI_arready"), S02_AXI_rdata("S02_AXI_rdata"), S02_AXI_rresp("S02_AXI_rresp"), S02_AXI_rlast("S02_AXI_rlast"), S02_AXI_rvalid("S02_AXI_rvalid"), S02_AXI_rready("S02_AXI_rready"), S03_AXI_awaddr("S03_AXI_awaddr"), S03_AXI_awlen("S03_AXI_awlen"), S03_AXI_awsize("S03_AXI_awsize"), S03_AXI_awburst("S03_AXI_awburst"), S03_AXI_awlock("S03_AXI_awlock"), S03_AXI_awcache("S03_AXI_awcache"), S03_AXI_awprot("S03_AXI_awprot"), S03_AXI_awqos("S03_AXI_awqos"), S03_AXI_awvalid("S03_AXI_awvalid"), S03_AXI_awready("S03_AXI_awready"), S03_AXI_wdata("S03_AXI_wdata"), S03_AXI_wstrb("S03_AXI_wstrb"), S03_AXI_wlast("S03_AXI_wlast"), S03_AXI_wvalid("S03_AXI_wvalid"), S03_AXI_wready("S03_AXI_wready"), S03_AXI_bresp("S03_AXI_bresp"), S03_AXI_bvalid("S03_AXI_bvalid"), S03_AXI_bready("S03_AXI_bready"), S04_AXI_araddr("S04_AXI_araddr"), S04_AXI_arlen("S04_AXI_arlen"), S04_AXI_arsize("S04_AXI_arsize"), S04_AXI_arburst("S04_AXI_arburst"), S04_AXI_arlock("S04_AXI_arlock"), S04_AXI_arcache("S04_AXI_arcache"), S04_AXI_arprot("S04_AXI_arprot"), S04_AXI_arqos("S04_AXI_arqos"), S04_AXI_arvalid("S04_AXI_arvalid"), S04_AXI_arready("S04_AXI_arready"), S04_AXI_rdata("S04_AXI_rdata"), S04_AXI_rresp("S04_AXI_rresp"), S04_AXI_rlast("S04_AXI_rlast"), S04_AXI_rvalid("S04_AXI_rvalid"), S04_AXI_rready("S04_AXI_rready"), S05_AXI_awaddr("S05_AXI_awaddr"), S05_AXI_awlen("S05_AXI_awlen"), S05_AXI_awsize("S05_AXI_awsize"), S05_AXI_awburst("S05_AXI_awburst"), S05_AXI_awlock("S05_AXI_awlock"), S05_AXI_awcache("S05_AXI_awcache"), S05_AXI_awprot("S05_AXI_awprot"), S05_AXI_awqos("S05_AXI_awqos"), S05_AXI_awvalid("S05_AXI_awvalid"), S05_AXI_awready("S05_AXI_awready"), S05_AXI_wdata("S05_AXI_wdata"), S05_AXI_wstrb("S05_AXI_wstrb"), S05_AXI_wlast("S05_AXI_wlast"), S05_AXI_wvalid("S05_AXI_wvalid"), S05_AXI_wready("S05_AXI_wready"), S05_AXI_bresp("S05_AXI_bresp"), S05_AXI_bvalid("S05_AXI_bvalid"), S05_AXI_bready("S05_AXI_bready"), S06_AXI_araddr("S06_AXI_araddr"), S06_AXI_arlen("S06_AXI_arlen"), S06_AXI_arsize("S06_AXI_arsize"), S06_AXI_arburst("S06_AXI_arburst"), S06_AXI_arlock("S06_AXI_arlock"), S06_AXI_arcache("S06_AXI_arcache"), S06_AXI_arprot("S06_AXI_arprot"), S06_AXI_arqos("S06_AXI_arqos"), S06_AXI_arvalid("S06_AXI_arvalid"), S06_AXI_arready("S06_AXI_arready"), S06_AXI_rdata("S06_AXI_rdata"), S06_AXI_rresp("S06_AXI_rresp"), S06_AXI_rlast("S06_AXI_rlast"), S06_AXI_rvalid("S06_AXI_rvalid"), S06_AXI_rready("S06_AXI_rready"), S07_AXI_awaddr("S07_AXI_awaddr"), S07_AXI_awlen("S07_AXI_awlen"), S07_AXI_awsize("S07_AXI_awsize"), S07_AXI_awburst("S07_AXI_awburst"), S07_AXI_awlock("S07_AXI_awlock"), S07_AXI_awcache("S07_AXI_awcache"), S07_AXI_awprot("S07_AXI_awprot"), S07_AXI_awqos("S07_AXI_awqos"), S07_AXI_awvalid("S07_AXI_awvalid"), S07_AXI_awready("S07_AXI_awready"), S07_AXI_wdata("S07_AXI_wdata"), S07_AXI_wstrb("S07_AXI_wstrb"), S07_AXI_wlast("S07_AXI_wlast"), S07_AXI_wvalid("S07_AXI_wvalid"), S07_AXI_wready("S07_AXI_wready"), S07_AXI_bresp("S07_AXI_bresp"), S07_AXI_bvalid("S07_AXI_bvalid"), S07_AXI_bready("S07_AXI_bready"), S08_AXI_araddr("S08_AXI_araddr"), S08_AXI_arlen("S08_AXI_arlen"), S08_AXI_arsize("S08_AXI_arsize"), S08_AXI_arburst("S08_AXI_arburst"), S08_AXI_arlock("S08_AXI_arlock"), S08_AXI_arcache("S08_AXI_arcache"), S08_AXI_arprot("S08_AXI_arprot"), S08_AXI_arqos("S08_AXI_arqos"), S08_AXI_arvalid("S08_AXI_arvalid"), S08_AXI_arready("S08_AXI_arready"), S08_AXI_rdata("S08_AXI_rdata"), S08_AXI_rresp("S08_AXI_rresp"), S08_AXI_rlast("S08_AXI_rlast"), S08_AXI_rvalid("S08_AXI_rvalid"), S08_AXI_rready("S08_AXI_rready"), S09_AXI_awaddr("S09_AXI_awaddr"), S09_AXI_awlen("S09_AXI_awlen"), S09_AXI_awsize("S09_AXI_awsize"), S09_AXI_awburst("S09_AXI_awburst"), S09_AXI_awlock("S09_AXI_awlock"), S09_AXI_awcache("S09_AXI_awcache"), S09_AXI_awprot("S09_AXI_awprot"), S09_AXI_awqos("S09_AXI_awqos"), S09_AXI_awvalid("S09_AXI_awvalid"), S09_AXI_awready("S09_AXI_awready"), S09_AXI_wdata("S09_AXI_wdata"), S09_AXI_wstrb("S09_AXI_wstrb"), S09_AXI_wlast("S09_AXI_wlast"), S09_AXI_wvalid("S09_AXI_wvalid"), S09_AXI_wready("S09_AXI_wready"), S09_AXI_bresp("S09_AXI_bresp"), S09_AXI_bvalid("S09_AXI_bvalid"), S09_AXI_bready("S09_AXI_bready"), S10_AXI_araddr("S10_AXI_araddr"), S10_AXI_arlen("S10_AXI_arlen"), S10_AXI_arsize("S10_AXI_arsize"), S10_AXI_arburst("S10_AXI_arburst"), S10_AXI_arlock("S10_AXI_arlock"), S10_AXI_arcache("S10_AXI_arcache"), S10_AXI_arprot("S10_AXI_arprot"), S10_AXI_arqos("S10_AXI_arqos"), S10_AXI_arvalid("S10_AXI_arvalid"), S10_AXI_arready("S10_AXI_arready"), S10_AXI_rdata("S10_AXI_rdata"), S10_AXI_rresp("S10_AXI_rresp"), S10_AXI_rlast("S10_AXI_rlast"), S10_AXI_rvalid("S10_AXI_rvalid"), S10_AXI_rready("S10_AXI_rready"), S11_AXI_awaddr("S11_AXI_awaddr"), S11_AXI_awlen("S11_AXI_awlen"), S11_AXI_awsize("S11_AXI_awsize"), S11_AXI_awburst("S11_AXI_awburst"), S11_AXI_awlock("S11_AXI_awlock"), S11_AXI_awcache("S11_AXI_awcache"), S11_AXI_awprot("S11_AXI_awprot"), S11_AXI_awqos("S11_AXI_awqos"), S11_AXI_awvalid("S11_AXI_awvalid"), S11_AXI_awready("S11_AXI_awready"), S11_AXI_wdata("S11_AXI_wdata"), S11_AXI_wstrb("S11_AXI_wstrb"), S11_AXI_wlast("S11_AXI_wlast"), S11_AXI_wvalid("S11_AXI_wvalid"), S11_AXI_wready("S11_AXI_wready"), S11_AXI_bresp("S11_AXI_bresp"), S11_AXI_bvalid("S11_AXI_bvalid"), S11_AXI_bready("S11_AXI_bready"), M00_AXI_awaddr("M00_AXI_awaddr"), M00_AXI_awlen("M00_AXI_awlen"), M00_AXI_awsize("M00_AXI_awsize"), M00_AXI_awburst("M00_AXI_awburst"), M00_AXI_awlock("M00_AXI_awlock"), M00_AXI_awcache("M00_AXI_awcache"), M00_AXI_awprot("M00_AXI_awprot"), M00_AXI_awqos("M00_AXI_awqos"), M00_AXI_awvalid("M00_AXI_awvalid"), M00_AXI_awready("M00_AXI_awready"), M00_AXI_wdata("M00_AXI_wdata"), M00_AXI_wstrb("M00_AXI_wstrb"), M00_AXI_wlast("M00_AXI_wlast"), M00_AXI_wvalid("M00_AXI_wvalid"), M00_AXI_wready("M00_AXI_wready"), M00_AXI_bresp("M00_AXI_bresp"), M00_AXI_bvalid("M00_AXI_bvalid"), M00_AXI_bready("M00_AXI_bready"), M00_AXI_araddr("M00_AXI_araddr"), M00_AXI_arlen("M00_AXI_arlen"), M00_AXI_arsize("M00_AXI_arsize"), M00_AXI_arburst("M00_AXI_arburst"), M00_AXI_arlock("M00_AXI_arlock"), M00_AXI_arcache("M00_AXI_arcache"), M00_AXI_arprot("M00_AXI_arprot"), M00_AXI_arqos("M00_AXI_arqos"), M00_AXI_arvalid("M00_AXI_arvalid"), M00_AXI_arready("M00_AXI_arready"), M00_AXI_rdata("M00_AXI_rdata"), M00_AXI_rresp("M00_AXI_rresp"), M00_AXI_rlast("M00_AXI_rlast"), M00_AXI_rvalid("M00_AXI_rvalid"), M00_AXI_rready("M00_AXI_rready"),mp_S00_AXI_wr_socket_stub(nullptr),mp_S01_AXI_rd_socket_stub(nullptr),mp_S02_AXI_wr_socket_stub(nullptr),mp_S03_AXI_rd_socket_stub(nullptr),mp_S04_AXI_wr_socket_stub(nullptr),mp_S05_AXI_rd_socket_stub(nullptr),mp_S06_AXI_wr_socket_stub(nullptr),mp_S07_AXI_rd_socket_stub(nullptr),mp_S08_AXI_wr_socket_stub(nullptr),mp_S09_AXI_rd_socket_stub(nullptr),mp_S10_AXI_wr_socket_stub(nullptr),mp_S11_AXI_rd_socket_stub(nullptr)
{
  // initialize pins
  mp_impl->aclk(aclk);
  mp_impl->aresetn(aresetn);

  // initialize transactors
  mp_S00_AXI_transactor = NULL;
  mp_S00_AXI_arlock_converter = NULL;
  mp_S01_AXI_transactor = NULL;
  mp_S01_AXI_awlock_converter = NULL;
  mp_S02_AXI_transactor = NULL;
  mp_S02_AXI_arlock_converter = NULL;
  mp_S03_AXI_transactor = NULL;
  mp_S03_AXI_awlock_converter = NULL;
  mp_S04_AXI_transactor = NULL;
  mp_S04_AXI_arlock_converter = NULL;
  mp_S05_AXI_transactor = NULL;
  mp_S05_AXI_awlock_converter = NULL;
  mp_S06_AXI_transactor = NULL;
  mp_S06_AXI_arlock_converter = NULL;
  mp_S07_AXI_transactor = NULL;
  mp_S07_AXI_awlock_converter = NULL;
  mp_S08_AXI_transactor = NULL;
  mp_S08_AXI_arlock_converter = NULL;
  mp_S09_AXI_transactor = NULL;
  mp_S09_AXI_awlock_converter = NULL;
  mp_S10_AXI_transactor = NULL;
  mp_S10_AXI_arlock_converter = NULL;
  mp_S11_AXI_transactor = NULL;
  mp_S11_AXI_awlock_converter = NULL;
  mp_M00_AXI_transactor = NULL;
  mp_M00_AXI_awlen_converter = NULL;
  mp_M00_AXI_awlock_converter = NULL;
  mp_M00_AXI_arlen_converter = NULL;
  mp_M00_AXI_arlock_converter = NULL;

  // Instantiate Socket Stubs
  mp_S00_AXI_wr_socket_stub = NULL;
  mp_S01_AXI_rd_socket_stub = NULL;
  mp_S02_AXI_wr_socket_stub = NULL;
  mp_S03_AXI_rd_socket_stub = NULL;
  mp_S04_AXI_wr_socket_stub = NULL;
  mp_S05_AXI_rd_socket_stub = NULL;
  mp_S06_AXI_wr_socket_stub = NULL;
  mp_S07_AXI_rd_socket_stub = NULL;
  mp_S08_AXI_wr_socket_stub = NULL;
  mp_S09_AXI_rd_socket_stub = NULL;
  mp_S10_AXI_wr_socket_stub = NULL;
  mp_S11_AXI_rd_socket_stub = NULL;

  // configure S00_AXI_transactor
    xsc::common_cpp::properties S00_AXI_transactor_param_props;
    S00_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S00_AXI_transactor_param_props.addLong("FREQ_HZ", "100000000");
    S00_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S00_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S00_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S00_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S00_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S00_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S00_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S00_AXI_transactor_param_props.addLong("HAS_WSTRB", "0");
    S00_AXI_transactor_param_props.addLong("HAS_BRESP", "0");
    S00_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S00_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S00_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    S00_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S00_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    S00_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S00_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S00_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S00_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S00_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S00_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S00_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S00_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S00_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_ONLY");
    S00_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_S00_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,32,1,1,1,1,1,1>("S00_AXI_transactor", S00_AXI_transactor_param_props);
  mp_S00_AXI_transactor->ARADDR(S00_AXI_araddr);
  mp_S00_AXI_transactor->ARLEN(S00_AXI_arlen);
  mp_S00_AXI_transactor->ARSIZE(S00_AXI_arsize);
  mp_S00_AXI_transactor->ARBURST(S00_AXI_arburst);
  mp_S00_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXI_arlock_converter");
  mp_S00_AXI_arlock_converter->vector_in(S00_AXI_arlock);
  mp_S00_AXI_arlock_converter->scalar_out(m_S00_AXI_arlock_converter_signal);
  mp_S00_AXI_transactor->ARLOCK(m_S00_AXI_arlock_converter_signal);
  mp_S00_AXI_transactor->ARCACHE(S00_AXI_arcache);
  mp_S00_AXI_transactor->ARPROT(S00_AXI_arprot);
  mp_S00_AXI_transactor->ARQOS(S00_AXI_arqos);
  mp_S00_AXI_transactor->ARVALID(S00_AXI_arvalid);
  mp_S00_AXI_transactor->ARREADY(S00_AXI_arready);
  mp_S00_AXI_transactor->RDATA(S00_AXI_rdata);
  mp_S00_AXI_transactor->RRESP(S00_AXI_rresp);
  mp_S00_AXI_transactor->RLAST(S00_AXI_rlast);
  mp_S00_AXI_transactor->RVALID(S00_AXI_rvalid);
  mp_S00_AXI_transactor->RREADY(S00_AXI_rready);
  mp_S00_AXI_transactor->CLK(aclk);
  mp_S00_AXI_transactor->RST(aresetn);
  // configure S01_AXI_transactor
    xsc::common_cpp::properties S01_AXI_transactor_param_props;
    S01_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S01_AXI_transactor_param_props.addLong("FREQ_HZ", "100000000");
    S01_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S01_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S01_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S01_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S01_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S01_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S01_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S01_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S01_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S01_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S01_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S01_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S01_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S01_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S01_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S01_AXI_transactor_param_props.addLong("HAS_RRESP", "0");
    S01_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S01_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S01_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "16");
    S01_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    S01_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S01_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S01_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S01_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S01_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S01_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S01_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S01_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S01_AXI_transactor_param_props.addString("READ_WRITE_MODE", "WRITE_ONLY");
    S01_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_S01_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,32,1,1,1,1,1,1>("S01_AXI_transactor", S01_AXI_transactor_param_props);
  mp_S01_AXI_transactor->AWADDR(S01_AXI_awaddr);
  mp_S01_AXI_transactor->AWLEN(S01_AXI_awlen);
  mp_S01_AXI_transactor->AWSIZE(S01_AXI_awsize);
  mp_S01_AXI_transactor->AWBURST(S01_AXI_awburst);
  mp_S01_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S01_AXI_awlock_converter");
  mp_S01_AXI_awlock_converter->vector_in(S01_AXI_awlock);
  mp_S01_AXI_awlock_converter->scalar_out(m_S01_AXI_awlock_converter_signal);
  mp_S01_AXI_transactor->AWLOCK(m_S01_AXI_awlock_converter_signal);
  mp_S01_AXI_transactor->AWCACHE(S01_AXI_awcache);
  mp_S01_AXI_transactor->AWPROT(S01_AXI_awprot);
  mp_S01_AXI_transactor->AWQOS(S01_AXI_awqos);
  mp_S01_AXI_transactor->AWVALID(S01_AXI_awvalid);
  mp_S01_AXI_transactor->AWREADY(S01_AXI_awready);
  mp_S01_AXI_transactor->WDATA(S01_AXI_wdata);
  mp_S01_AXI_transactor->WSTRB(S01_AXI_wstrb);
  mp_S01_AXI_transactor->WLAST(S01_AXI_wlast);
  mp_S01_AXI_transactor->WVALID(S01_AXI_wvalid);
  mp_S01_AXI_transactor->WREADY(S01_AXI_wready);
  mp_S01_AXI_transactor->BRESP(S01_AXI_bresp);
  mp_S01_AXI_transactor->BVALID(S01_AXI_bvalid);
  mp_S01_AXI_transactor->BREADY(S01_AXI_bready);
  mp_S01_AXI_transactor->CLK(aclk);
  mp_S01_AXI_transactor->RST(aresetn);
  // configure S02_AXI_transactor
    xsc::common_cpp::properties S02_AXI_transactor_param_props;
    S02_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S02_AXI_transactor_param_props.addLong("FREQ_HZ", "100000000");
    S02_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S02_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S02_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S02_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S02_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S02_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S02_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S02_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S02_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S02_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S02_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S02_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S02_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S02_AXI_transactor_param_props.addLong("HAS_WSTRB", "0");
    S02_AXI_transactor_param_props.addLong("HAS_BRESP", "0");
    S02_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S02_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S02_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    S02_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S02_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    S02_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S02_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S02_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S02_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S02_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S02_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S02_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S02_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S02_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_ONLY");
    S02_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_S02_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,32,1,1,1,1,1,1>("S02_AXI_transactor", S02_AXI_transactor_param_props);
  mp_S02_AXI_transactor->ARADDR(S02_AXI_araddr);
  mp_S02_AXI_transactor->ARLEN(S02_AXI_arlen);
  mp_S02_AXI_transactor->ARSIZE(S02_AXI_arsize);
  mp_S02_AXI_transactor->ARBURST(S02_AXI_arburst);
  mp_S02_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S02_AXI_arlock_converter");
  mp_S02_AXI_arlock_converter->vector_in(S02_AXI_arlock);
  mp_S02_AXI_arlock_converter->scalar_out(m_S02_AXI_arlock_converter_signal);
  mp_S02_AXI_transactor->ARLOCK(m_S02_AXI_arlock_converter_signal);
  mp_S02_AXI_transactor->ARCACHE(S02_AXI_arcache);
  mp_S02_AXI_transactor->ARPROT(S02_AXI_arprot);
  mp_S02_AXI_transactor->ARQOS(S02_AXI_arqos);
  mp_S02_AXI_transactor->ARVALID(S02_AXI_arvalid);
  mp_S02_AXI_transactor->ARREADY(S02_AXI_arready);
  mp_S02_AXI_transactor->RDATA(S02_AXI_rdata);
  mp_S02_AXI_transactor->RRESP(S02_AXI_rresp);
  mp_S02_AXI_transactor->RLAST(S02_AXI_rlast);
  mp_S02_AXI_transactor->RVALID(S02_AXI_rvalid);
  mp_S02_AXI_transactor->RREADY(S02_AXI_rready);
  mp_S02_AXI_transactor->CLK(aclk);
  mp_S02_AXI_transactor->RST(aresetn);
  // configure S03_AXI_transactor
    xsc::common_cpp::properties S03_AXI_transactor_param_props;
    S03_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S03_AXI_transactor_param_props.addLong("FREQ_HZ", "100000000");
    S03_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S03_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S03_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S03_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S03_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S03_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S03_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S03_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S03_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S03_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S03_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S03_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S03_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S03_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S03_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S03_AXI_transactor_param_props.addLong("HAS_RRESP", "0");
    S03_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S03_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S03_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "16");
    S03_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    S03_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S03_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S03_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S03_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S03_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S03_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S03_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S03_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S03_AXI_transactor_param_props.addString("READ_WRITE_MODE", "WRITE_ONLY");
    S03_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_S03_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,32,1,1,1,1,1,1>("S03_AXI_transactor", S03_AXI_transactor_param_props);
  mp_S03_AXI_transactor->AWADDR(S03_AXI_awaddr);
  mp_S03_AXI_transactor->AWLEN(S03_AXI_awlen);
  mp_S03_AXI_transactor->AWSIZE(S03_AXI_awsize);
  mp_S03_AXI_transactor->AWBURST(S03_AXI_awburst);
  mp_S03_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S03_AXI_awlock_converter");
  mp_S03_AXI_awlock_converter->vector_in(S03_AXI_awlock);
  mp_S03_AXI_awlock_converter->scalar_out(m_S03_AXI_awlock_converter_signal);
  mp_S03_AXI_transactor->AWLOCK(m_S03_AXI_awlock_converter_signal);
  mp_S03_AXI_transactor->AWCACHE(S03_AXI_awcache);
  mp_S03_AXI_transactor->AWPROT(S03_AXI_awprot);
  mp_S03_AXI_transactor->AWQOS(S03_AXI_awqos);
  mp_S03_AXI_transactor->AWVALID(S03_AXI_awvalid);
  mp_S03_AXI_transactor->AWREADY(S03_AXI_awready);
  mp_S03_AXI_transactor->WDATA(S03_AXI_wdata);
  mp_S03_AXI_transactor->WSTRB(S03_AXI_wstrb);
  mp_S03_AXI_transactor->WLAST(S03_AXI_wlast);
  mp_S03_AXI_transactor->WVALID(S03_AXI_wvalid);
  mp_S03_AXI_transactor->WREADY(S03_AXI_wready);
  mp_S03_AXI_transactor->BRESP(S03_AXI_bresp);
  mp_S03_AXI_transactor->BVALID(S03_AXI_bvalid);
  mp_S03_AXI_transactor->BREADY(S03_AXI_bready);
  mp_S03_AXI_transactor->CLK(aclk);
  mp_S03_AXI_transactor->RST(aresetn);
  // configure S04_AXI_transactor
    xsc::common_cpp::properties S04_AXI_transactor_param_props;
    S04_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S04_AXI_transactor_param_props.addLong("FREQ_HZ", "100000000");
    S04_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S04_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S04_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S04_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S04_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S04_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S04_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S04_AXI_transactor_param_props.addLong("HAS_WSTRB", "0");
    S04_AXI_transactor_param_props.addLong("HAS_BRESP", "0");
    S04_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S04_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S04_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    S04_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S04_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    S04_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S04_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S04_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S04_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S04_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S04_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S04_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S04_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S04_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_ONLY");
    S04_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_S04_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,32,1,1,1,1,1,1>("S04_AXI_transactor", S04_AXI_transactor_param_props);
  mp_S04_AXI_transactor->ARADDR(S04_AXI_araddr);
  mp_S04_AXI_transactor->ARLEN(S04_AXI_arlen);
  mp_S04_AXI_transactor->ARSIZE(S04_AXI_arsize);
  mp_S04_AXI_transactor->ARBURST(S04_AXI_arburst);
  mp_S04_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S04_AXI_arlock_converter");
  mp_S04_AXI_arlock_converter->vector_in(S04_AXI_arlock);
  mp_S04_AXI_arlock_converter->scalar_out(m_S04_AXI_arlock_converter_signal);
  mp_S04_AXI_transactor->ARLOCK(m_S04_AXI_arlock_converter_signal);
  mp_S04_AXI_transactor->ARCACHE(S04_AXI_arcache);
  mp_S04_AXI_transactor->ARPROT(S04_AXI_arprot);
  mp_S04_AXI_transactor->ARQOS(S04_AXI_arqos);
  mp_S04_AXI_transactor->ARVALID(S04_AXI_arvalid);
  mp_S04_AXI_transactor->ARREADY(S04_AXI_arready);
  mp_S04_AXI_transactor->RDATA(S04_AXI_rdata);
  mp_S04_AXI_transactor->RRESP(S04_AXI_rresp);
  mp_S04_AXI_transactor->RLAST(S04_AXI_rlast);
  mp_S04_AXI_transactor->RVALID(S04_AXI_rvalid);
  mp_S04_AXI_transactor->RREADY(S04_AXI_rready);
  mp_S04_AXI_transactor->CLK(aclk);
  mp_S04_AXI_transactor->RST(aresetn);
  // configure S05_AXI_transactor
    xsc::common_cpp::properties S05_AXI_transactor_param_props;
    S05_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S05_AXI_transactor_param_props.addLong("FREQ_HZ", "100000000");
    S05_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S05_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S05_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S05_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S05_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S05_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S05_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S05_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S05_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S05_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S05_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S05_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S05_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S05_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S05_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S05_AXI_transactor_param_props.addLong("HAS_RRESP", "0");
    S05_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S05_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S05_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "16");
    S05_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    S05_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S05_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S05_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S05_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S05_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S05_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S05_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S05_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S05_AXI_transactor_param_props.addString("READ_WRITE_MODE", "WRITE_ONLY");
    S05_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_S05_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,32,1,1,1,1,1,1>("S05_AXI_transactor", S05_AXI_transactor_param_props);
  mp_S05_AXI_transactor->AWADDR(S05_AXI_awaddr);
  mp_S05_AXI_transactor->AWLEN(S05_AXI_awlen);
  mp_S05_AXI_transactor->AWSIZE(S05_AXI_awsize);
  mp_S05_AXI_transactor->AWBURST(S05_AXI_awburst);
  mp_S05_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S05_AXI_awlock_converter");
  mp_S05_AXI_awlock_converter->vector_in(S05_AXI_awlock);
  mp_S05_AXI_awlock_converter->scalar_out(m_S05_AXI_awlock_converter_signal);
  mp_S05_AXI_transactor->AWLOCK(m_S05_AXI_awlock_converter_signal);
  mp_S05_AXI_transactor->AWCACHE(S05_AXI_awcache);
  mp_S05_AXI_transactor->AWPROT(S05_AXI_awprot);
  mp_S05_AXI_transactor->AWQOS(S05_AXI_awqos);
  mp_S05_AXI_transactor->AWVALID(S05_AXI_awvalid);
  mp_S05_AXI_transactor->AWREADY(S05_AXI_awready);
  mp_S05_AXI_transactor->WDATA(S05_AXI_wdata);
  mp_S05_AXI_transactor->WSTRB(S05_AXI_wstrb);
  mp_S05_AXI_transactor->WLAST(S05_AXI_wlast);
  mp_S05_AXI_transactor->WVALID(S05_AXI_wvalid);
  mp_S05_AXI_transactor->WREADY(S05_AXI_wready);
  mp_S05_AXI_transactor->BRESP(S05_AXI_bresp);
  mp_S05_AXI_transactor->BVALID(S05_AXI_bvalid);
  mp_S05_AXI_transactor->BREADY(S05_AXI_bready);
  mp_S05_AXI_transactor->CLK(aclk);
  mp_S05_AXI_transactor->RST(aresetn);
  // configure S06_AXI_transactor
    xsc::common_cpp::properties S06_AXI_transactor_param_props;
    S06_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S06_AXI_transactor_param_props.addLong("FREQ_HZ", "100000000");
    S06_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S06_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S06_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S06_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S06_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S06_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S06_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S06_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S06_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S06_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S06_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S06_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S06_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S06_AXI_transactor_param_props.addLong("HAS_WSTRB", "0");
    S06_AXI_transactor_param_props.addLong("HAS_BRESP", "0");
    S06_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S06_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S06_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    S06_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S06_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    S06_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S06_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S06_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S06_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S06_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S06_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S06_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S06_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S06_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_ONLY");
    S06_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_S06_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,32,1,1,1,1,1,1>("S06_AXI_transactor", S06_AXI_transactor_param_props);
  mp_S06_AXI_transactor->ARADDR(S06_AXI_araddr);
  mp_S06_AXI_transactor->ARLEN(S06_AXI_arlen);
  mp_S06_AXI_transactor->ARSIZE(S06_AXI_arsize);
  mp_S06_AXI_transactor->ARBURST(S06_AXI_arburst);
  mp_S06_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S06_AXI_arlock_converter");
  mp_S06_AXI_arlock_converter->vector_in(S06_AXI_arlock);
  mp_S06_AXI_arlock_converter->scalar_out(m_S06_AXI_arlock_converter_signal);
  mp_S06_AXI_transactor->ARLOCK(m_S06_AXI_arlock_converter_signal);
  mp_S06_AXI_transactor->ARCACHE(S06_AXI_arcache);
  mp_S06_AXI_transactor->ARPROT(S06_AXI_arprot);
  mp_S06_AXI_transactor->ARQOS(S06_AXI_arqos);
  mp_S06_AXI_transactor->ARVALID(S06_AXI_arvalid);
  mp_S06_AXI_transactor->ARREADY(S06_AXI_arready);
  mp_S06_AXI_transactor->RDATA(S06_AXI_rdata);
  mp_S06_AXI_transactor->RRESP(S06_AXI_rresp);
  mp_S06_AXI_transactor->RLAST(S06_AXI_rlast);
  mp_S06_AXI_transactor->RVALID(S06_AXI_rvalid);
  mp_S06_AXI_transactor->RREADY(S06_AXI_rready);
  mp_S06_AXI_transactor->CLK(aclk);
  mp_S06_AXI_transactor->RST(aresetn);
  // configure S07_AXI_transactor
    xsc::common_cpp::properties S07_AXI_transactor_param_props;
    S07_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S07_AXI_transactor_param_props.addLong("FREQ_HZ", "100000000");
    S07_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S07_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S07_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S07_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S07_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S07_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S07_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S07_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S07_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S07_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S07_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S07_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S07_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S07_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S07_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S07_AXI_transactor_param_props.addLong("HAS_RRESP", "0");
    S07_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S07_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S07_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "16");
    S07_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    S07_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S07_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S07_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S07_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S07_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S07_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S07_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S07_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S07_AXI_transactor_param_props.addString("READ_WRITE_MODE", "WRITE_ONLY");
    S07_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_S07_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,32,1,1,1,1,1,1>("S07_AXI_transactor", S07_AXI_transactor_param_props);
  mp_S07_AXI_transactor->AWADDR(S07_AXI_awaddr);
  mp_S07_AXI_transactor->AWLEN(S07_AXI_awlen);
  mp_S07_AXI_transactor->AWSIZE(S07_AXI_awsize);
  mp_S07_AXI_transactor->AWBURST(S07_AXI_awburst);
  mp_S07_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S07_AXI_awlock_converter");
  mp_S07_AXI_awlock_converter->vector_in(S07_AXI_awlock);
  mp_S07_AXI_awlock_converter->scalar_out(m_S07_AXI_awlock_converter_signal);
  mp_S07_AXI_transactor->AWLOCK(m_S07_AXI_awlock_converter_signal);
  mp_S07_AXI_transactor->AWCACHE(S07_AXI_awcache);
  mp_S07_AXI_transactor->AWPROT(S07_AXI_awprot);
  mp_S07_AXI_transactor->AWQOS(S07_AXI_awqos);
  mp_S07_AXI_transactor->AWVALID(S07_AXI_awvalid);
  mp_S07_AXI_transactor->AWREADY(S07_AXI_awready);
  mp_S07_AXI_transactor->WDATA(S07_AXI_wdata);
  mp_S07_AXI_transactor->WSTRB(S07_AXI_wstrb);
  mp_S07_AXI_transactor->WLAST(S07_AXI_wlast);
  mp_S07_AXI_transactor->WVALID(S07_AXI_wvalid);
  mp_S07_AXI_transactor->WREADY(S07_AXI_wready);
  mp_S07_AXI_transactor->BRESP(S07_AXI_bresp);
  mp_S07_AXI_transactor->BVALID(S07_AXI_bvalid);
  mp_S07_AXI_transactor->BREADY(S07_AXI_bready);
  mp_S07_AXI_transactor->CLK(aclk);
  mp_S07_AXI_transactor->RST(aresetn);
  // configure S08_AXI_transactor
    xsc::common_cpp::properties S08_AXI_transactor_param_props;
    S08_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S08_AXI_transactor_param_props.addLong("FREQ_HZ", "100000000");
    S08_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S08_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S08_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S08_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S08_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S08_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S08_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S08_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S08_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S08_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S08_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S08_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S08_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S08_AXI_transactor_param_props.addLong("HAS_WSTRB", "0");
    S08_AXI_transactor_param_props.addLong("HAS_BRESP", "0");
    S08_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S08_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S08_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    S08_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S08_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    S08_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S08_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S08_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S08_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S08_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S08_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S08_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S08_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S08_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_ONLY");
    S08_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_S08_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,32,1,1,1,1,1,1>("S08_AXI_transactor", S08_AXI_transactor_param_props);
  mp_S08_AXI_transactor->ARADDR(S08_AXI_araddr);
  mp_S08_AXI_transactor->ARLEN(S08_AXI_arlen);
  mp_S08_AXI_transactor->ARSIZE(S08_AXI_arsize);
  mp_S08_AXI_transactor->ARBURST(S08_AXI_arburst);
  mp_S08_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S08_AXI_arlock_converter");
  mp_S08_AXI_arlock_converter->vector_in(S08_AXI_arlock);
  mp_S08_AXI_arlock_converter->scalar_out(m_S08_AXI_arlock_converter_signal);
  mp_S08_AXI_transactor->ARLOCK(m_S08_AXI_arlock_converter_signal);
  mp_S08_AXI_transactor->ARCACHE(S08_AXI_arcache);
  mp_S08_AXI_transactor->ARPROT(S08_AXI_arprot);
  mp_S08_AXI_transactor->ARQOS(S08_AXI_arqos);
  mp_S08_AXI_transactor->ARVALID(S08_AXI_arvalid);
  mp_S08_AXI_transactor->ARREADY(S08_AXI_arready);
  mp_S08_AXI_transactor->RDATA(S08_AXI_rdata);
  mp_S08_AXI_transactor->RRESP(S08_AXI_rresp);
  mp_S08_AXI_transactor->RLAST(S08_AXI_rlast);
  mp_S08_AXI_transactor->RVALID(S08_AXI_rvalid);
  mp_S08_AXI_transactor->RREADY(S08_AXI_rready);
  mp_S08_AXI_transactor->CLK(aclk);
  mp_S08_AXI_transactor->RST(aresetn);
  // configure S09_AXI_transactor
    xsc::common_cpp::properties S09_AXI_transactor_param_props;
    S09_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S09_AXI_transactor_param_props.addLong("FREQ_HZ", "100000000");
    S09_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S09_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S09_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S09_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S09_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S09_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S09_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S09_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S09_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S09_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S09_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S09_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S09_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S09_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S09_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S09_AXI_transactor_param_props.addLong("HAS_RRESP", "0");
    S09_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S09_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S09_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "16");
    S09_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    S09_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S09_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S09_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S09_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S09_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S09_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S09_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S09_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S09_AXI_transactor_param_props.addString("READ_WRITE_MODE", "WRITE_ONLY");
    S09_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_S09_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,32,1,1,1,1,1,1>("S09_AXI_transactor", S09_AXI_transactor_param_props);
  mp_S09_AXI_transactor->AWADDR(S09_AXI_awaddr);
  mp_S09_AXI_transactor->AWLEN(S09_AXI_awlen);
  mp_S09_AXI_transactor->AWSIZE(S09_AXI_awsize);
  mp_S09_AXI_transactor->AWBURST(S09_AXI_awburst);
  mp_S09_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S09_AXI_awlock_converter");
  mp_S09_AXI_awlock_converter->vector_in(S09_AXI_awlock);
  mp_S09_AXI_awlock_converter->scalar_out(m_S09_AXI_awlock_converter_signal);
  mp_S09_AXI_transactor->AWLOCK(m_S09_AXI_awlock_converter_signal);
  mp_S09_AXI_transactor->AWCACHE(S09_AXI_awcache);
  mp_S09_AXI_transactor->AWPROT(S09_AXI_awprot);
  mp_S09_AXI_transactor->AWQOS(S09_AXI_awqos);
  mp_S09_AXI_transactor->AWVALID(S09_AXI_awvalid);
  mp_S09_AXI_transactor->AWREADY(S09_AXI_awready);
  mp_S09_AXI_transactor->WDATA(S09_AXI_wdata);
  mp_S09_AXI_transactor->WSTRB(S09_AXI_wstrb);
  mp_S09_AXI_transactor->WLAST(S09_AXI_wlast);
  mp_S09_AXI_transactor->WVALID(S09_AXI_wvalid);
  mp_S09_AXI_transactor->WREADY(S09_AXI_wready);
  mp_S09_AXI_transactor->BRESP(S09_AXI_bresp);
  mp_S09_AXI_transactor->BVALID(S09_AXI_bvalid);
  mp_S09_AXI_transactor->BREADY(S09_AXI_bready);
  mp_S09_AXI_transactor->CLK(aclk);
  mp_S09_AXI_transactor->RST(aresetn);
  // configure S10_AXI_transactor
    xsc::common_cpp::properties S10_AXI_transactor_param_props;
    S10_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S10_AXI_transactor_param_props.addLong("FREQ_HZ", "100000000");
    S10_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S10_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S10_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S10_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S10_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S10_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S10_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S10_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S10_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S10_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S10_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S10_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S10_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S10_AXI_transactor_param_props.addLong("HAS_WSTRB", "0");
    S10_AXI_transactor_param_props.addLong("HAS_BRESP", "0");
    S10_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S10_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S10_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    S10_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S10_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    S10_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S10_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S10_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S10_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S10_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S10_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S10_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S10_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S10_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_ONLY");
    S10_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_S10_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,32,1,1,1,1,1,1>("S10_AXI_transactor", S10_AXI_transactor_param_props);
  mp_S10_AXI_transactor->ARADDR(S10_AXI_araddr);
  mp_S10_AXI_transactor->ARLEN(S10_AXI_arlen);
  mp_S10_AXI_transactor->ARSIZE(S10_AXI_arsize);
  mp_S10_AXI_transactor->ARBURST(S10_AXI_arburst);
  mp_S10_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S10_AXI_arlock_converter");
  mp_S10_AXI_arlock_converter->vector_in(S10_AXI_arlock);
  mp_S10_AXI_arlock_converter->scalar_out(m_S10_AXI_arlock_converter_signal);
  mp_S10_AXI_transactor->ARLOCK(m_S10_AXI_arlock_converter_signal);
  mp_S10_AXI_transactor->ARCACHE(S10_AXI_arcache);
  mp_S10_AXI_transactor->ARPROT(S10_AXI_arprot);
  mp_S10_AXI_transactor->ARQOS(S10_AXI_arqos);
  mp_S10_AXI_transactor->ARVALID(S10_AXI_arvalid);
  mp_S10_AXI_transactor->ARREADY(S10_AXI_arready);
  mp_S10_AXI_transactor->RDATA(S10_AXI_rdata);
  mp_S10_AXI_transactor->RRESP(S10_AXI_rresp);
  mp_S10_AXI_transactor->RLAST(S10_AXI_rlast);
  mp_S10_AXI_transactor->RVALID(S10_AXI_rvalid);
  mp_S10_AXI_transactor->RREADY(S10_AXI_rready);
  mp_S10_AXI_transactor->CLK(aclk);
  mp_S10_AXI_transactor->RST(aresetn);
  // configure S11_AXI_transactor
    xsc::common_cpp::properties S11_AXI_transactor_param_props;
    S11_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S11_AXI_transactor_param_props.addLong("FREQ_HZ", "100000000");
    S11_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S11_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S11_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S11_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S11_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S11_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S11_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S11_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S11_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S11_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S11_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S11_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S11_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S11_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S11_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S11_AXI_transactor_param_props.addLong("HAS_RRESP", "0");
    S11_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S11_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S11_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "16");
    S11_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    S11_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S11_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S11_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S11_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S11_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S11_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S11_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S11_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S11_AXI_transactor_param_props.addString("READ_WRITE_MODE", "WRITE_ONLY");
    S11_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_S11_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,32,1,1,1,1,1,1>("S11_AXI_transactor", S11_AXI_transactor_param_props);
  mp_S11_AXI_transactor->AWADDR(S11_AXI_awaddr);
  mp_S11_AXI_transactor->AWLEN(S11_AXI_awlen);
  mp_S11_AXI_transactor->AWSIZE(S11_AXI_awsize);
  mp_S11_AXI_transactor->AWBURST(S11_AXI_awburst);
  mp_S11_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S11_AXI_awlock_converter");
  mp_S11_AXI_awlock_converter->vector_in(S11_AXI_awlock);
  mp_S11_AXI_awlock_converter->scalar_out(m_S11_AXI_awlock_converter_signal);
  mp_S11_AXI_transactor->AWLOCK(m_S11_AXI_awlock_converter_signal);
  mp_S11_AXI_transactor->AWCACHE(S11_AXI_awcache);
  mp_S11_AXI_transactor->AWPROT(S11_AXI_awprot);
  mp_S11_AXI_transactor->AWQOS(S11_AXI_awqos);
  mp_S11_AXI_transactor->AWVALID(S11_AXI_awvalid);
  mp_S11_AXI_transactor->AWREADY(S11_AXI_awready);
  mp_S11_AXI_transactor->WDATA(S11_AXI_wdata);
  mp_S11_AXI_transactor->WSTRB(S11_AXI_wstrb);
  mp_S11_AXI_transactor->WLAST(S11_AXI_wlast);
  mp_S11_AXI_transactor->WVALID(S11_AXI_wvalid);
  mp_S11_AXI_transactor->WREADY(S11_AXI_wready);
  mp_S11_AXI_transactor->BRESP(S11_AXI_bresp);
  mp_S11_AXI_transactor->BVALID(S11_AXI_bvalid);
  mp_S11_AXI_transactor->BREADY(S11_AXI_bready);
  mp_S11_AXI_transactor->CLK(aclk);
  mp_S11_AXI_transactor->RST(aresetn);
  // configure M00_AXI_transactor
    xsc::common_cpp::properties M00_AXI_transactor_param_props;
    M00_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    M00_AXI_transactor_param_props.addLong("FREQ_HZ", "100000000");
    M00_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    M00_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M00_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    M00_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    M00_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M00_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    M00_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    M00_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M00_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M00_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M00_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M00_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M00_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    M00_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "16");
    M00_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    M00_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M00_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M00_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M00_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M00_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    M00_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M00_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    M00_AXI_transactor_param_props.addString("PROTOCOL", "AXI3");
    M00_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M00_AXI_transactor_param_props.addString("CLK_DOMAIN", "design_1_processing_system7_0_0_FCLK_CLK0");

    mp_M00_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<32,32,1,1,1,1,1,1>("M00_AXI_transactor", M00_AXI_transactor_param_props);
  mp_M00_AXI_transactor->AWADDR(M00_AXI_awaddr);
  mp_M00_AXI_awlen_converter = new xsc::common::vector2vector_converter<8,4>("M00_AXI_awlen_converter");
  mp_M00_AXI_awlen_converter->vector_in(m_M00_AXI_awlen_converter_signal);
  mp_M00_AXI_awlen_converter->vector_out(M00_AXI_awlen);
  mp_M00_AXI_transactor->AWLEN(m_M00_AXI_awlen_converter_signal);
  mp_M00_AXI_transactor->AWSIZE(M00_AXI_awsize);
  mp_M00_AXI_transactor->AWBURST(M00_AXI_awburst);
  mp_M00_AXI_awlock_converter = new xsc::common::scalar2vectorN_converter<2>("M00_AXI_awlock_converter");
  mp_M00_AXI_awlock_converter->scalar_in(m_M00_AXI_awlock_converter_signal);
  mp_M00_AXI_awlock_converter->vector_out(M00_AXI_awlock);
  mp_M00_AXI_transactor->AWLOCK(m_M00_AXI_awlock_converter_signal);
  mp_M00_AXI_transactor->AWCACHE(M00_AXI_awcache);
  mp_M00_AXI_transactor->AWPROT(M00_AXI_awprot);
  mp_M00_AXI_transactor->AWQOS(M00_AXI_awqos);
  mp_M00_AXI_transactor->AWVALID(M00_AXI_awvalid);
  mp_M00_AXI_transactor->AWREADY(M00_AXI_awready);
  mp_M00_AXI_transactor->WDATA(M00_AXI_wdata);
  mp_M00_AXI_transactor->WSTRB(M00_AXI_wstrb);
  mp_M00_AXI_transactor->WLAST(M00_AXI_wlast);
  mp_M00_AXI_transactor->WVALID(M00_AXI_wvalid);
  mp_M00_AXI_transactor->WREADY(M00_AXI_wready);
  mp_M00_AXI_transactor->BRESP(M00_AXI_bresp);
  mp_M00_AXI_transactor->BVALID(M00_AXI_bvalid);
  mp_M00_AXI_transactor->BREADY(M00_AXI_bready);
  mp_M00_AXI_transactor->ARADDR(M00_AXI_araddr);
  mp_M00_AXI_arlen_converter = new xsc::common::vector2vector_converter<8,4>("M00_AXI_arlen_converter");
  mp_M00_AXI_arlen_converter->vector_in(m_M00_AXI_arlen_converter_signal);
  mp_M00_AXI_arlen_converter->vector_out(M00_AXI_arlen);
  mp_M00_AXI_transactor->ARLEN(m_M00_AXI_arlen_converter_signal);
  mp_M00_AXI_transactor->ARSIZE(M00_AXI_arsize);
  mp_M00_AXI_transactor->ARBURST(M00_AXI_arburst);
  mp_M00_AXI_arlock_converter = new xsc::common::scalar2vectorN_converter<2>("M00_AXI_arlock_converter");
  mp_M00_AXI_arlock_converter->scalar_in(m_M00_AXI_arlock_converter_signal);
  mp_M00_AXI_arlock_converter->vector_out(M00_AXI_arlock);
  mp_M00_AXI_transactor->ARLOCK(m_M00_AXI_arlock_converter_signal);
  mp_M00_AXI_transactor->ARCACHE(M00_AXI_arcache);
  mp_M00_AXI_transactor->ARPROT(M00_AXI_arprot);
  mp_M00_AXI_transactor->ARQOS(M00_AXI_arqos);
  mp_M00_AXI_transactor->ARVALID(M00_AXI_arvalid);
  mp_M00_AXI_transactor->ARREADY(M00_AXI_arready);
  mp_M00_AXI_transactor->RDATA(M00_AXI_rdata);
  mp_M00_AXI_transactor->RRESP(M00_AXI_rresp);
  mp_M00_AXI_transactor->RLAST(M00_AXI_rlast);
  mp_M00_AXI_transactor->RVALID(M00_AXI_rvalid);
  mp_M00_AXI_transactor->RREADY(M00_AXI_rready);
  mp_M00_AXI_transactor->CLK(aclk);
  mp_M00_AXI_transactor->RST(aresetn);

  // initialize transactors stubs
  S00_AXI_transactor_target_rd_socket_stub = nullptr;
  S01_AXI_transactor_target_wr_socket_stub = nullptr;
  S02_AXI_transactor_target_rd_socket_stub = nullptr;
  S03_AXI_transactor_target_wr_socket_stub = nullptr;
  S04_AXI_transactor_target_rd_socket_stub = nullptr;
  S05_AXI_transactor_target_wr_socket_stub = nullptr;
  S06_AXI_transactor_target_rd_socket_stub = nullptr;
  S07_AXI_transactor_target_wr_socket_stub = nullptr;
  S08_AXI_transactor_target_rd_socket_stub = nullptr;
  S09_AXI_transactor_target_wr_socket_stub = nullptr;
  S10_AXI_transactor_target_rd_socket_stub = nullptr;
  S11_AXI_transactor_target_wr_socket_stub = nullptr;
  M00_AXI_transactor_initiator_wr_socket_stub = nullptr;
  M00_AXI_transactor_initiator_rd_socket_stub = nullptr;

}

void design_1_smartconnect_0_0::before_end_of_elaboration()
{
  // configure 'S00_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "S00_AXI_TLM_MODE") != 1)
  {
    mp_impl->S00_AXI_tlm_aximm_read_socket->bind(*(mp_S00_AXI_transactor->rd_socket));
    mp_S00_AXI_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket", 0);
    mp_impl->S00_AXI_tlm_aximm_write_socket->bind(mp_S00_AXI_wr_socket_stub->initiator_socket);
  
  }
  else
  {
    S00_AXI_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    S00_AXI_transactor_target_rd_socket_stub->bind(*(mp_S00_AXI_transactor->rd_socket));
    mp_S00_AXI_transactor->disable_transactor();
  }

  // configure 'S01_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "S01_AXI_TLM_MODE") != 1)
  {
    mp_S01_AXI_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket", 0);
    mp_impl->S01_AXI_tlm_aximm_read_socket->bind(mp_S01_AXI_rd_socket_stub->initiator_socket);
    mp_impl->S01_AXI_tlm_aximm_write_socket->bind(*(mp_S01_AXI_transactor->wr_socket));
  
  }
  else
  {
    S01_AXI_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    S01_AXI_transactor_target_wr_socket_stub->bind(*(mp_S01_AXI_transactor->wr_socket));
    mp_S01_AXI_transactor->disable_transactor();
  }

  // configure 'S02_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "S02_AXI_TLM_MODE") != 1)
  {
    mp_impl->S02_AXI_tlm_aximm_read_socket->bind(*(mp_S02_AXI_transactor->rd_socket));
    mp_S02_AXI_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket", 0);
    mp_impl->S02_AXI_tlm_aximm_write_socket->bind(mp_S02_AXI_wr_socket_stub->initiator_socket);
  
  }
  else
  {
    S02_AXI_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    S02_AXI_transactor_target_rd_socket_stub->bind(*(mp_S02_AXI_transactor->rd_socket));
    mp_S02_AXI_transactor->disable_transactor();
  }

  // configure 'S03_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "S03_AXI_TLM_MODE") != 1)
  {
    mp_S03_AXI_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket", 0);
    mp_impl->S03_AXI_tlm_aximm_read_socket->bind(mp_S03_AXI_rd_socket_stub->initiator_socket);
    mp_impl->S03_AXI_tlm_aximm_write_socket->bind(*(mp_S03_AXI_transactor->wr_socket));
  
  }
  else
  {
    S03_AXI_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    S03_AXI_transactor_target_wr_socket_stub->bind(*(mp_S03_AXI_transactor->wr_socket));
    mp_S03_AXI_transactor->disable_transactor();
  }

  // configure 'S04_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "S04_AXI_TLM_MODE") != 1)
  {
    mp_impl->S04_AXI_tlm_aximm_read_socket->bind(*(mp_S04_AXI_transactor->rd_socket));
    mp_S04_AXI_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket", 0);
    mp_impl->S04_AXI_tlm_aximm_write_socket->bind(mp_S04_AXI_wr_socket_stub->initiator_socket);
  
  }
  else
  {
    S04_AXI_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    S04_AXI_transactor_target_rd_socket_stub->bind(*(mp_S04_AXI_transactor->rd_socket));
    mp_S04_AXI_transactor->disable_transactor();
  }

  // configure 'S05_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "S05_AXI_TLM_MODE") != 1)
  {
    mp_S05_AXI_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket", 0);
    mp_impl->S05_AXI_tlm_aximm_read_socket->bind(mp_S05_AXI_rd_socket_stub->initiator_socket);
    mp_impl->S05_AXI_tlm_aximm_write_socket->bind(*(mp_S05_AXI_transactor->wr_socket));
  
  }
  else
  {
    S05_AXI_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    S05_AXI_transactor_target_wr_socket_stub->bind(*(mp_S05_AXI_transactor->wr_socket));
    mp_S05_AXI_transactor->disable_transactor();
  }

  // configure 'S06_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "S06_AXI_TLM_MODE") != 1)
  {
    mp_impl->S06_AXI_tlm_aximm_read_socket->bind(*(mp_S06_AXI_transactor->rd_socket));
    mp_S06_AXI_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket", 0);
    mp_impl->S06_AXI_tlm_aximm_write_socket->bind(mp_S06_AXI_wr_socket_stub->initiator_socket);
  
  }
  else
  {
    S06_AXI_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    S06_AXI_transactor_target_rd_socket_stub->bind(*(mp_S06_AXI_transactor->rd_socket));
    mp_S06_AXI_transactor->disable_transactor();
  }

  // configure 'S07_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "S07_AXI_TLM_MODE") != 1)
  {
    mp_S07_AXI_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket", 0);
    mp_impl->S07_AXI_tlm_aximm_read_socket->bind(mp_S07_AXI_rd_socket_stub->initiator_socket);
    mp_impl->S07_AXI_tlm_aximm_write_socket->bind(*(mp_S07_AXI_transactor->wr_socket));
  
  }
  else
  {
    S07_AXI_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    S07_AXI_transactor_target_wr_socket_stub->bind(*(mp_S07_AXI_transactor->wr_socket));
    mp_S07_AXI_transactor->disable_transactor();
  }

  // configure 'S08_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "S08_AXI_TLM_MODE") != 1)
  {
    mp_impl->S08_AXI_tlm_aximm_read_socket->bind(*(mp_S08_AXI_transactor->rd_socket));
    mp_S08_AXI_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket", 0);
    mp_impl->S08_AXI_tlm_aximm_write_socket->bind(mp_S08_AXI_wr_socket_stub->initiator_socket);
  
  }
  else
  {
    S08_AXI_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    S08_AXI_transactor_target_rd_socket_stub->bind(*(mp_S08_AXI_transactor->rd_socket));
    mp_S08_AXI_transactor->disable_transactor();
  }

  // configure 'S09_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "S09_AXI_TLM_MODE") != 1)
  {
    mp_S09_AXI_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket", 0);
    mp_impl->S09_AXI_tlm_aximm_read_socket->bind(mp_S09_AXI_rd_socket_stub->initiator_socket);
    mp_impl->S09_AXI_tlm_aximm_write_socket->bind(*(mp_S09_AXI_transactor->wr_socket));
  
  }
  else
  {
    S09_AXI_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    S09_AXI_transactor_target_wr_socket_stub->bind(*(mp_S09_AXI_transactor->wr_socket));
    mp_S09_AXI_transactor->disable_transactor();
  }

  // configure 'S10_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "S10_AXI_TLM_MODE") != 1)
  {
    mp_impl->S10_AXI_tlm_aximm_read_socket->bind(*(mp_S10_AXI_transactor->rd_socket));
    mp_S10_AXI_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket", 0);
    mp_impl->S10_AXI_tlm_aximm_write_socket->bind(mp_S10_AXI_wr_socket_stub->initiator_socket);
  
  }
  else
  {
    S10_AXI_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    S10_AXI_transactor_target_rd_socket_stub->bind(*(mp_S10_AXI_transactor->rd_socket));
    mp_S10_AXI_transactor->disable_transactor();
  }

  // configure 'S11_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "S11_AXI_TLM_MODE") != 1)
  {
    mp_S11_AXI_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket", 0);
    mp_impl->S11_AXI_tlm_aximm_read_socket->bind(mp_S11_AXI_rd_socket_stub->initiator_socket);
    mp_impl->S11_AXI_tlm_aximm_write_socket->bind(*(mp_S11_AXI_transactor->wr_socket));
  
  }
  else
  {
    S11_AXI_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    S11_AXI_transactor_target_wr_socket_stub->bind(*(mp_S11_AXI_transactor->wr_socket));
    mp_S11_AXI_transactor->disable_transactor();
  }

  // configure 'M00_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "M00_AXI_TLM_MODE") != 1)
  {
    mp_impl->M00_AXI_tlm_aximm_read_socket->bind(*(mp_M00_AXI_transactor->rd_socket));
    mp_impl->M00_AXI_tlm_aximm_write_socket->bind(*(mp_M00_AXI_transactor->wr_socket));
  
  }
  else
  {
    M00_AXI_transactor_initiator_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket",0);
    M00_AXI_transactor_initiator_wr_socket_stub->bind(*(mp_M00_AXI_transactor->wr_socket));
    M00_AXI_transactor_initiator_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket",0);
    M00_AXI_transactor_initiator_rd_socket_stub->bind(*(mp_M00_AXI_transactor->rd_socket));
    mp_M00_AXI_transactor->disable_transactor();
  }

}

#endif // MTI_SYSTEMC




design_1_smartconnect_0_0::~design_1_smartconnect_0_0()
{
  delete mp_S00_AXI_transactor;
  delete mp_S00_AXI_arlock_converter;
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "S00_AXI_TLM_MODE") != 1)
  {
    delete mp_S00_AXI_wr_socket_stub;
  }

  delete mp_S01_AXI_transactor;
  delete mp_S01_AXI_awlock_converter;
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "S01_AXI_TLM_MODE") != 1)
  {
    delete mp_S01_AXI_rd_socket_stub;
  }

  delete mp_S02_AXI_transactor;
  delete mp_S02_AXI_arlock_converter;
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "S02_AXI_TLM_MODE") != 1)
  {
    delete mp_S02_AXI_wr_socket_stub;
  }

  delete mp_S03_AXI_transactor;
  delete mp_S03_AXI_awlock_converter;
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "S03_AXI_TLM_MODE") != 1)
  {
    delete mp_S03_AXI_rd_socket_stub;
  }

  delete mp_S04_AXI_transactor;
  delete mp_S04_AXI_arlock_converter;
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "S04_AXI_TLM_MODE") != 1)
  {
    delete mp_S04_AXI_wr_socket_stub;
  }

  delete mp_S05_AXI_transactor;
  delete mp_S05_AXI_awlock_converter;
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "S05_AXI_TLM_MODE") != 1)
  {
    delete mp_S05_AXI_rd_socket_stub;
  }

  delete mp_S06_AXI_transactor;
  delete mp_S06_AXI_arlock_converter;
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "S06_AXI_TLM_MODE") != 1)
  {
    delete mp_S06_AXI_wr_socket_stub;
  }

  delete mp_S07_AXI_transactor;
  delete mp_S07_AXI_awlock_converter;
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "S07_AXI_TLM_MODE") != 1)
  {
    delete mp_S07_AXI_rd_socket_stub;
  }

  delete mp_S08_AXI_transactor;
  delete mp_S08_AXI_arlock_converter;
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "S08_AXI_TLM_MODE") != 1)
  {
    delete mp_S08_AXI_wr_socket_stub;
  }

  delete mp_S09_AXI_transactor;
  delete mp_S09_AXI_awlock_converter;
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "S09_AXI_TLM_MODE") != 1)
  {
    delete mp_S09_AXI_rd_socket_stub;
  }

  delete mp_S10_AXI_transactor;
  delete mp_S10_AXI_arlock_converter;
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "S10_AXI_TLM_MODE") != 1)
  {
    delete mp_S10_AXI_wr_socket_stub;
  }

  delete mp_S11_AXI_transactor;
  delete mp_S11_AXI_awlock_converter;
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("design_1_smartconnect_0_0", "S11_AXI_TLM_MODE") != 1)
  {
    delete mp_S11_AXI_rd_socket_stub;
  }

  delete mp_M00_AXI_transactor;
  delete mp_M00_AXI_awlen_converter;
  delete mp_M00_AXI_awlock_converter;
  delete mp_M00_AXI_arlen_converter;
  delete mp_M00_AXI_arlock_converter;

}

#ifdef MTI_SYSTEMC
SC_MODULE_EXPORT(design_1_smartconnect_0_0);
#endif

#ifdef XM_SYSTEMC
XMSC_MODULE_EXPORT(design_1_smartconnect_0_0);
#endif

#ifdef RIVIERA
SC_MODULE_EXPORT(design_1_smartconnect_0_0);
#endif

