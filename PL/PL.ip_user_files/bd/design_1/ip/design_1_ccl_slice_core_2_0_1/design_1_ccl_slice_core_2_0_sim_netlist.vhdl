-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Sat Nov 15 16:45:29 2025
-- Host        : POWERSLAVE running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/FACULTATE/facultate/anul3/sem1/SSC/proiect/utcn-bounding-box-detection-on-PYNQ-Z1/PL/PL.gen/sources_1/bd/design_1/ip/design_1_ccl_slice_core_2_0_1/design_1_ccl_slice_core_2_0_sim_netlist.vhdl
-- Design      : design_1_ccl_slice_core_2_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ccl_slice_core_2_0_ccl_slice_core is
  port (
    out_valid_reg_reg_0 : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 17 downto 0 );
    s_axis_tready : out STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    irq_done : out STD_LOGIC;
    aclkrst_clk : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    aclkrst_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_ccl_slice_core_2_0_ccl_slice_core : entity is "ccl_slice_core";
end design_1_ccl_slice_core_2_0_ccl_slice_core;

architecture STRUCTURE of design_1_ccl_slice_core_2_0_ccl_slice_core is
  signal \FSM_sequential_proc_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_proc_state[1]_i_1_n_0\ : STD_LOGIC;
  signal height_u : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal in16 : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal \^irq_done\ : STD_LOGIC;
  signal local_label_counter : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal local_label_counter_0 : STD_LOGIC;
  signal \local_label_counter_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \local_label_counter_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \local_label_counter_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \local_label_counter_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \local_label_counter_reg[15]_i_3_n_2\ : STD_LOGIC;
  signal \local_label_counter_reg[15]_i_3_n_3\ : STD_LOGIC;
  signal \local_label_counter_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \local_label_counter_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \local_label_counter_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \local_label_counter_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \local_label_counter_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \local_label_counter_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \local_label_counter_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \local_label_counter_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \local_label_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \local_label_counter_reg_n_0_[10]\ : STD_LOGIC;
  signal \local_label_counter_reg_n_0_[11]\ : STD_LOGIC;
  signal \local_label_counter_reg_n_0_[12]\ : STD_LOGIC;
  signal \local_label_counter_reg_n_0_[13]\ : STD_LOGIC;
  signal \local_label_counter_reg_n_0_[14]\ : STD_LOGIC;
  signal \local_label_counter_reg_n_0_[15]\ : STD_LOGIC;
  signal \local_label_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \local_label_counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \local_label_counter_reg_n_0_[3]\ : STD_LOGIC;
  signal \local_label_counter_reg_n_0_[4]\ : STD_LOGIC;
  signal \local_label_counter_reg_n_0_[5]\ : STD_LOGIC;
  signal \local_label_counter_reg_n_0_[6]\ : STD_LOGIC;
  signal \local_label_counter_reg_n_0_[7]\ : STD_LOGIC;
  signal \local_label_counter_reg_n_0_[8]\ : STD_LOGIC;
  signal \local_label_counter_reg_n_0_[9]\ : STD_LOGIC;
  signal \^m_axis_tlast\ : STD_LOGIC;
  signal out_data_reg : STD_LOGIC;
  signal \out_data_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \out_data_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \out_data_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \out_data_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \out_data_reg[13]_i_1_n_0\ : STD_LOGIC;
  signal \out_data_reg[14]_i_1_n_0\ : STD_LOGIC;
  signal \out_data_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \out_data_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \out_data_reg[17]_i_10_n_0\ : STD_LOGIC;
  signal \out_data_reg[17]_i_11_n_0\ : STD_LOGIC;
  signal \out_data_reg[17]_i_12_n_0\ : STD_LOGIC;
  signal \out_data_reg[17]_i_13_n_0\ : STD_LOGIC;
  signal \out_data_reg[17]_i_14_n_0\ : STD_LOGIC;
  signal \out_data_reg[17]_i_15_n_0\ : STD_LOGIC;
  signal \out_data_reg[17]_i_16_n_0\ : STD_LOGIC;
  signal \out_data_reg[17]_i_17_n_0\ : STD_LOGIC;
  signal \out_data_reg[17]_i_18_n_0\ : STD_LOGIC;
  signal \out_data_reg[17]_i_1_n_0\ : STD_LOGIC;
  signal \out_data_reg[17]_i_3_n_0\ : STD_LOGIC;
  signal \out_data_reg[17]_i_4_n_0\ : STD_LOGIC;
  signal \out_data_reg[17]_i_5_n_0\ : STD_LOGIC;
  signal \out_data_reg[17]_i_6_n_0\ : STD_LOGIC;
  signal \out_data_reg[17]_i_7_n_0\ : STD_LOGIC;
  signal \out_data_reg[17]_i_8_n_0\ : STD_LOGIC;
  signal \out_data_reg[17]_i_9_n_0\ : STD_LOGIC;
  signal \out_data_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \out_data_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \out_data_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \out_data_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \out_data_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \out_data_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \out_data_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \out_data_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \out_data_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal \out_fire__0\ : STD_LOGIC;
  signal out_last_reg_i_1_n_0 : STD_LOGIC;
  signal out_last_reg_i_3_n_0 : STD_LOGIC;
  signal out_last_reg_i_4_n_0 : STD_LOGIC;
  signal out_last_reg_i_6_n_0 : STD_LOGIC;
  signal out_valid_reg_i_1_n_0 : STD_LOGIC;
  signal \^out_valid_reg_reg_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal pixel_x : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \pixel_x[5]_i_2_n_0\ : STD_LOGIC;
  signal \pixel_x[9]_i_3_n_0\ : STD_LOGIC;
  signal \pixel_x[9]_i_4_n_0\ : STD_LOGIC;
  signal pixel_x_1 : STD_LOGIC;
  signal \pixel_x_reg_n_0_[0]\ : STD_LOGIC;
  signal \pixel_x_reg_n_0_[1]\ : STD_LOGIC;
  signal \pixel_x_reg_n_0_[2]\ : STD_LOGIC;
  signal \pixel_x_reg_n_0_[3]\ : STD_LOGIC;
  signal \pixel_x_reg_n_0_[4]\ : STD_LOGIC;
  signal \pixel_x_reg_n_0_[5]\ : STD_LOGIC;
  signal \pixel_x_reg_n_0_[6]\ : STD_LOGIC;
  signal \pixel_x_reg_n_0_[7]\ : STD_LOGIC;
  signal \pixel_x_reg_n_0_[8]\ : STD_LOGIC;
  signal \pixel_x_reg_n_0_[9]\ : STD_LOGIC;
  signal pixel_y : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \pixel_y[4]_i_2_n_0\ : STD_LOGIC;
  signal \pixel_y[5]_i_2_n_0\ : STD_LOGIC;
  signal \pixel_y[7]_i_3_n_0\ : STD_LOGIC;
  signal pixel_y_2 : STD_LOGIC;
  signal \pixel_y_reg_n_0_[0]\ : STD_LOGIC;
  signal \pixel_y_reg_n_0_[1]\ : STD_LOGIC;
  signal \pixel_y_reg_n_0_[2]\ : STD_LOGIC;
  signal \pixel_y_reg_n_0_[3]\ : STD_LOGIC;
  signal \pixel_y_reg_n_0_[4]\ : STD_LOGIC;
  signal \pixel_y_reg_n_0_[5]\ : STD_LOGIC;
  signal \pixel_y_reg_n_0_[6]\ : STD_LOGIC;
  signal \pixel_y_reg_n_0_[7]\ : STD_LOGIC;
  signal proc_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal proc_state0 : STD_LOGIC;
  signal \proc_state0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \proc_state0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \proc_state0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \proc_state0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \proc_state0_carry__0_n_0\ : STD_LOGIC;
  signal \proc_state0_carry__0_n_1\ : STD_LOGIC;
  signal \proc_state0_carry__0_n_2\ : STD_LOGIC;
  signal \proc_state0_carry__0_n_3\ : STD_LOGIC;
  signal \proc_state0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \proc_state0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \proc_state0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \proc_state0_carry__1_n_2\ : STD_LOGIC;
  signal \proc_state0_carry__1_n_3\ : STD_LOGIC;
  signal proc_state0_carry_i_1_n_0 : STD_LOGIC;
  signal proc_state0_carry_i_2_n_0 : STD_LOGIC;
  signal proc_state0_carry_i_3_n_0 : STD_LOGIC;
  signal proc_state0_carry_i_4_n_0 : STD_LOGIC;
  signal proc_state0_carry_n_0 : STD_LOGIC;
  signal proc_state0_carry_n_1 : STD_LOGIC;
  signal proc_state0_carry_n_2 : STD_LOGIC;
  signal proc_state0_carry_n_3 : STD_LOGIC;
  signal proc_state1 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal proc_state17_out : STD_LOGIC;
  signal proc_state1_6 : STD_LOGIC;
  signal \proc_state1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \proc_state1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \proc_state1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \proc_state1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \proc_state1_carry__0_n_0\ : STD_LOGIC;
  signal \proc_state1_carry__0_n_1\ : STD_LOGIC;
  signal \proc_state1_carry__0_n_2\ : STD_LOGIC;
  signal \proc_state1_carry__0_n_3\ : STD_LOGIC;
  signal \proc_state1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \proc_state1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \proc_state1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \proc_state1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \proc_state1_carry__1_n_0\ : STD_LOGIC;
  signal \proc_state1_carry__1_n_1\ : STD_LOGIC;
  signal \proc_state1_carry__1_n_2\ : STD_LOGIC;
  signal \proc_state1_carry__1_n_3\ : STD_LOGIC;
  signal \proc_state1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \proc_state1_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \proc_state1_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \proc_state1_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \proc_state1_carry__2_n_0\ : STD_LOGIC;
  signal \proc_state1_carry__2_n_1\ : STD_LOGIC;
  signal \proc_state1_carry__2_n_2\ : STD_LOGIC;
  signal \proc_state1_carry__2_n_3\ : STD_LOGIC;
  signal \proc_state1_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \proc_state1_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \proc_state1_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \proc_state1_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \proc_state1_carry__3_n_0\ : STD_LOGIC;
  signal \proc_state1_carry__3_n_1\ : STD_LOGIC;
  signal \proc_state1_carry__3_n_2\ : STD_LOGIC;
  signal \proc_state1_carry__3_n_3\ : STD_LOGIC;
  signal \proc_state1_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \proc_state1_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \proc_state1_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \proc_state1_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \proc_state1_carry__4_n_0\ : STD_LOGIC;
  signal \proc_state1_carry__4_n_1\ : STD_LOGIC;
  signal \proc_state1_carry__4_n_2\ : STD_LOGIC;
  signal \proc_state1_carry__4_n_3\ : STD_LOGIC;
  signal \proc_state1_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \proc_state1_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \proc_state1_carry__5_i_3_n_0\ : STD_LOGIC;
  signal \proc_state1_carry__5_i_4_n_0\ : STD_LOGIC;
  signal \proc_state1_carry__5_n_0\ : STD_LOGIC;
  signal \proc_state1_carry__5_n_1\ : STD_LOGIC;
  signal \proc_state1_carry__5_n_2\ : STD_LOGIC;
  signal \proc_state1_carry__5_n_3\ : STD_LOGIC;
  signal \proc_state1_carry__6_i_1_n_0\ : STD_LOGIC;
  signal \proc_state1_carry__6_i_2_n_0\ : STD_LOGIC;
  signal \proc_state1_carry__6_i_3_n_0\ : STD_LOGIC;
  signal \proc_state1_carry__6_n_2\ : STD_LOGIC;
  signal \proc_state1_carry__6_n_3\ : STD_LOGIC;
  signal proc_state1_carry_i_1_n_0 : STD_LOGIC;
  signal proc_state1_carry_i_2_n_0 : STD_LOGIC;
  signal proc_state1_carry_i_3_n_0 : STD_LOGIC;
  signal proc_state1_carry_i_4_n_0 : STD_LOGIC;
  signal proc_state1_carry_n_0 : STD_LOGIC;
  signal proc_state1_carry_n_1 : STD_LOGIC;
  signal proc_state1_carry_n_2 : STD_LOGIC;
  signal proc_state1_carry_n_3 : STD_LOGIC;
  signal \proc_state1_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \proc_state1_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \proc_state1_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \proc_state1_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \proc_state1_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \proc_state1_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \proc_state1_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \proc_state1_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \proc_state1_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \proc_state1_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal proc_state2 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal proc_state26_in : STD_LOGIC;
  signal \proc_state2_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \proc_state2_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \proc_state2_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \proc_state2_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \proc_state2_carry__0_n_0\ : STD_LOGIC;
  signal \proc_state2_carry__0_n_1\ : STD_LOGIC;
  signal \proc_state2_carry__0_n_2\ : STD_LOGIC;
  signal \proc_state2_carry__0_n_3\ : STD_LOGIC;
  signal \proc_state2_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \proc_state2_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \proc_state2_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \proc_state2_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \proc_state2_carry__1_n_0\ : STD_LOGIC;
  signal \proc_state2_carry__1_n_1\ : STD_LOGIC;
  signal \proc_state2_carry__1_n_2\ : STD_LOGIC;
  signal \proc_state2_carry__1_n_3\ : STD_LOGIC;
  signal \proc_state2_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \proc_state2_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \proc_state2_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \proc_state2_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \proc_state2_carry__2_n_0\ : STD_LOGIC;
  signal \proc_state2_carry__2_n_1\ : STD_LOGIC;
  signal \proc_state2_carry__2_n_2\ : STD_LOGIC;
  signal \proc_state2_carry__2_n_3\ : STD_LOGIC;
  signal \proc_state2_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \proc_state2_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \proc_state2_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \proc_state2_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \proc_state2_carry__3_n_0\ : STD_LOGIC;
  signal \proc_state2_carry__3_n_1\ : STD_LOGIC;
  signal \proc_state2_carry__3_n_2\ : STD_LOGIC;
  signal \proc_state2_carry__3_n_3\ : STD_LOGIC;
  signal \proc_state2_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \proc_state2_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \proc_state2_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \proc_state2_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \proc_state2_carry__4_n_0\ : STD_LOGIC;
  signal \proc_state2_carry__4_n_1\ : STD_LOGIC;
  signal \proc_state2_carry__4_n_2\ : STD_LOGIC;
  signal \proc_state2_carry__4_n_3\ : STD_LOGIC;
  signal \proc_state2_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \proc_state2_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \proc_state2_carry__5_i_3_n_0\ : STD_LOGIC;
  signal \proc_state2_carry__5_i_4_n_0\ : STD_LOGIC;
  signal \proc_state2_carry__5_n_0\ : STD_LOGIC;
  signal \proc_state2_carry__5_n_1\ : STD_LOGIC;
  signal \proc_state2_carry__5_n_2\ : STD_LOGIC;
  signal \proc_state2_carry__5_n_3\ : STD_LOGIC;
  signal \proc_state2_carry__6_i_1_n_0\ : STD_LOGIC;
  signal \proc_state2_carry__6_i_2_n_0\ : STD_LOGIC;
  signal \proc_state2_carry__6_i_3_n_0\ : STD_LOGIC;
  signal \proc_state2_carry__6_n_2\ : STD_LOGIC;
  signal \proc_state2_carry__6_n_3\ : STD_LOGIC;
  signal proc_state2_carry_i_1_n_0 : STD_LOGIC;
  signal proc_state2_carry_i_2_n_0 : STD_LOGIC;
  signal proc_state2_carry_i_3_n_0 : STD_LOGIC;
  signal proc_state2_carry_i_4_n_0 : STD_LOGIC;
  signal proc_state2_carry_n_0 : STD_LOGIC;
  signal proc_state2_carry_n_1 : STD_LOGIC;
  signal proc_state2_carry_n_2 : STD_LOGIC;
  signal proc_state2_carry_n_3 : STD_LOGIC;
  signal \proc_state__9\ : STD_LOGIC;
  signal reg_control : STD_LOGIC;
  signal \reg_control[31]_i_2_n_0\ : STD_LOGIC;
  signal \reg_control_reg_n_0_[0]\ : STD_LOGIC;
  signal \reg_control_reg_n_0_[10]\ : STD_LOGIC;
  signal \reg_control_reg_n_0_[11]\ : STD_LOGIC;
  signal \reg_control_reg_n_0_[12]\ : STD_LOGIC;
  signal \reg_control_reg_n_0_[13]\ : STD_LOGIC;
  signal \reg_control_reg_n_0_[14]\ : STD_LOGIC;
  signal \reg_control_reg_n_0_[15]\ : STD_LOGIC;
  signal \reg_control_reg_n_0_[16]\ : STD_LOGIC;
  signal \reg_control_reg_n_0_[17]\ : STD_LOGIC;
  signal \reg_control_reg_n_0_[18]\ : STD_LOGIC;
  signal \reg_control_reg_n_0_[19]\ : STD_LOGIC;
  signal \reg_control_reg_n_0_[1]\ : STD_LOGIC;
  signal \reg_control_reg_n_0_[20]\ : STD_LOGIC;
  signal \reg_control_reg_n_0_[21]\ : STD_LOGIC;
  signal \reg_control_reg_n_0_[22]\ : STD_LOGIC;
  signal \reg_control_reg_n_0_[23]\ : STD_LOGIC;
  signal \reg_control_reg_n_0_[24]\ : STD_LOGIC;
  signal \reg_control_reg_n_0_[25]\ : STD_LOGIC;
  signal \reg_control_reg_n_0_[26]\ : STD_LOGIC;
  signal \reg_control_reg_n_0_[27]\ : STD_LOGIC;
  signal \reg_control_reg_n_0_[28]\ : STD_LOGIC;
  signal \reg_control_reg_n_0_[29]\ : STD_LOGIC;
  signal \reg_control_reg_n_0_[2]\ : STD_LOGIC;
  signal \reg_control_reg_n_0_[30]\ : STD_LOGIC;
  signal \reg_control_reg_n_0_[31]\ : STD_LOGIC;
  signal \reg_control_reg_n_0_[3]\ : STD_LOGIC;
  signal \reg_control_reg_n_0_[4]\ : STD_LOGIC;
  signal \reg_control_reg_n_0_[5]\ : STD_LOGIC;
  signal \reg_control_reg_n_0_[6]\ : STD_LOGIC;
  signal \reg_control_reg_n_0_[7]\ : STD_LOGIC;
  signal \reg_control_reg_n_0_[8]\ : STD_LOGIC;
  signal \reg_control_reg_n_0_[9]\ : STD_LOGIC;
  signal reg_height : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal reg_height_5 : STD_LOGIC;
  signal reg_slice_id : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal reg_slice_id_3 : STD_LOGIC;
  signal \reg_status[0]_i_1_n_0\ : STD_LOGIC;
  signal reg_width : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal reg_width_4 : STD_LOGIC;
  signal \s_axi_rdata[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[11]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[13]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[14]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[16]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[17]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[18]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[19]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[20]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[21]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[22]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[23]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[24]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[25]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[26]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[27]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[28]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[29]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[30]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[31]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[31]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[31]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal unpack_bits_left : STD_LOGIC;
  signal \unpack_bits_left[0]_i_1_n_0\ : STD_LOGIC;
  signal \unpack_bits_left[1]_i_1_n_0\ : STD_LOGIC;
  signal \unpack_bits_left[2]_i_1_n_0\ : STD_LOGIC;
  signal \unpack_bits_left[3]_i_1_n_0\ : STD_LOGIC;
  signal \unpack_bits_left[4]_i_1_n_0\ : STD_LOGIC;
  signal \unpack_bits_left[5]_i_2_n_0\ : STD_LOGIC;
  signal \unpack_bits_left[5]_i_3_n_0\ : STD_LOGIC;
  signal \unpack_bits_left_reg_n_0_[0]\ : STD_LOGIC;
  signal \unpack_bits_left_reg_n_0_[1]\ : STD_LOGIC;
  signal \unpack_bits_left_reg_n_0_[2]\ : STD_LOGIC;
  signal \unpack_bits_left_reg_n_0_[3]\ : STD_LOGIC;
  signal \unpack_bits_left_reg_n_0_[4]\ : STD_LOGIC;
  signal \unpack_bits_left_reg_n_0_[5]\ : STD_LOGIC;
  signal unpack_shift_reg : STD_LOGIC;
  signal \unpack_shift_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \unpack_shift_reg_reg_n_0_[10]\ : STD_LOGIC;
  signal \unpack_shift_reg_reg_n_0_[11]\ : STD_LOGIC;
  signal \unpack_shift_reg_reg_n_0_[12]\ : STD_LOGIC;
  signal \unpack_shift_reg_reg_n_0_[13]\ : STD_LOGIC;
  signal \unpack_shift_reg_reg_n_0_[14]\ : STD_LOGIC;
  signal \unpack_shift_reg_reg_n_0_[15]\ : STD_LOGIC;
  signal \unpack_shift_reg_reg_n_0_[16]\ : STD_LOGIC;
  signal \unpack_shift_reg_reg_n_0_[17]\ : STD_LOGIC;
  signal \unpack_shift_reg_reg_n_0_[18]\ : STD_LOGIC;
  signal \unpack_shift_reg_reg_n_0_[19]\ : STD_LOGIC;
  signal \unpack_shift_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \unpack_shift_reg_reg_n_0_[20]\ : STD_LOGIC;
  signal \unpack_shift_reg_reg_n_0_[21]\ : STD_LOGIC;
  signal \unpack_shift_reg_reg_n_0_[22]\ : STD_LOGIC;
  signal \unpack_shift_reg_reg_n_0_[23]\ : STD_LOGIC;
  signal \unpack_shift_reg_reg_n_0_[24]\ : STD_LOGIC;
  signal \unpack_shift_reg_reg_n_0_[25]\ : STD_LOGIC;
  signal \unpack_shift_reg_reg_n_0_[26]\ : STD_LOGIC;
  signal \unpack_shift_reg_reg_n_0_[27]\ : STD_LOGIC;
  signal \unpack_shift_reg_reg_n_0_[28]\ : STD_LOGIC;
  signal \unpack_shift_reg_reg_n_0_[29]\ : STD_LOGIC;
  signal \unpack_shift_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \unpack_shift_reg_reg_n_0_[30]\ : STD_LOGIC;
  signal \unpack_shift_reg_reg_n_0_[31]\ : STD_LOGIC;
  signal \unpack_shift_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \unpack_shift_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \unpack_shift_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \unpack_shift_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \unpack_shift_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \unpack_shift_reg_reg_n_0_[8]\ : STD_LOGIC;
  signal \unpack_shift_reg_reg_n_0_[9]\ : STD_LOGIC;
  signal width_u : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_local_label_counter_reg[15]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_local_label_counter_reg[15]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_proc_state0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_proc_state0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_proc_state0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_proc_state0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_proc_state1_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_proc_state1_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_proc_state1_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_proc_state1_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_proc_state1_inferred__0/i__carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_proc_state1_inferred__0/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_proc_state2_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_proc_state2_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_proc_state[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_sequential_proc_state[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_sequential_proc_state[1]_i_2\ : label is "soft_lutpair7";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_proc_state_reg[0]\ : label is "running:01,flushing:10,idle:00,done:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_proc_state_reg[1]\ : label is "running:01,flushing:10,idle:00,done:11";
  attribute SOFT_HLUTNM of \local_label_counter[10]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \local_label_counter[11]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \local_label_counter[12]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \local_label_counter[13]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \local_label_counter[14]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \local_label_counter[15]_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \local_label_counter[1]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \local_label_counter[2]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \local_label_counter[3]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \local_label_counter[4]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \local_label_counter[5]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \local_label_counter[6]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \local_label_counter[7]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \local_label_counter[8]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \local_label_counter[9]_i_1\ : label is "soft_lutpair28";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \local_label_counter_reg[12]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \local_label_counter_reg[15]_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \local_label_counter_reg[4]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \local_label_counter_reg[8]_i_2\ : label is 35;
  attribute SOFT_HLUTNM of \out_data_reg[0]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \out_data_reg[10]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \out_data_reg[11]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \out_data_reg[12]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \out_data_reg[13]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \out_data_reg[14]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \out_data_reg[15]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \out_data_reg[16]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \out_data_reg[17]_i_11\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \out_data_reg[17]_i_12\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \out_data_reg[17]_i_3\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \out_data_reg[17]_i_4\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \out_data_reg[17]_i_8\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \out_data_reg[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \out_data_reg[2]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \out_data_reg[3]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \out_data_reg[4]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \out_data_reg[5]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \out_data_reg[6]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \out_data_reg[7]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \out_data_reg[8]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \out_data_reg[9]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of out_last_reg_i_2 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of out_last_reg_i_4 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of out_last_reg_i_6 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \pixel_x[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \pixel_x[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \pixel_x[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \pixel_x[5]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \pixel_x[6]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \pixel_x[7]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \pixel_x[9]_i_4\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \pixel_y[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \pixel_y[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \pixel_y[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \pixel_y[4]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \pixel_y[5]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \pixel_y[6]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \pixel_y[7]_i_2\ : label is "soft_lutpair3";
  attribute ADDER_THRESHOLD of proc_state1_carry : label is 35;
  attribute ADDER_THRESHOLD of \proc_state1_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \proc_state1_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \proc_state1_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \proc_state1_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \proc_state1_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \proc_state1_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \proc_state1_carry__6\ : label is 35;
  attribute ADDER_THRESHOLD of proc_state2_carry : label is 35;
  attribute ADDER_THRESHOLD of \proc_state2_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \proc_state2_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \proc_state2_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \proc_state2_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \proc_state2_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \proc_state2_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \proc_state2_carry__6\ : label is 35;
  attribute SOFT_HLUTNM of \reg_status[0]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \s_axi_rdata[0]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \s_axi_rdata[1]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of s_axis_tready_INST_0 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \unpack_bits_left[0]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \unpack_bits_left[1]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \unpack_bits_left[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \unpack_bits_left[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \unpack_bits_left[5]_i_2\ : label is "soft_lutpair6";
begin
  irq_done <= \^irq_done\;
  m_axis_tlast <= \^m_axis_tlast\;
  out_valid_reg_reg_0 <= \^out_valid_reg_reg_0\;
\FSM_sequential_proc_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C074F374"
    )
        port map (
      I0 => \proc_state__9\,
      I1 => proc_state(0),
      I2 => \reg_control_reg_n_0_[0]\,
      I3 => proc_state(1),
      I4 => \^out_valid_reg_reg_0\,
      O => \FSM_sequential_proc_state[0]_i_1_n_0\
    );
\FSM_sequential_proc_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F388"
    )
        port map (
      I0 => \proc_state__9\,
      I1 => proc_state(0),
      I2 => \reg_control_reg_n_0_[0]\,
      I3 => proc_state(1),
      O => \FSM_sequential_proc_state[1]_i_1_n_0\
    );
\FSM_sequential_proc_state[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => proc_state1_6,
      I1 => proc_state0,
      I2 => \^out_valid_reg_reg_0\,
      I3 => proc_state26_in,
      O => \proc_state__9\
    );
\FSM_sequential_proc_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => '1',
      D => \FSM_sequential_proc_state[0]_i_1_n_0\,
      Q => proc_state(0),
      R => \out_data_reg[17]_i_1_n_0\
    );
\FSM_sequential_proc_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => '1',
      D => \FSM_sequential_proc_state[1]_i_1_n_0\,
      Q => proc_state(1),
      R => \out_data_reg[17]_i_1_n_0\
    );
\height_u_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => '1',
      D => reg_height(0),
      Q => height_u(0),
      R => \out_data_reg[17]_i_1_n_0\
    );
\height_u_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => '1',
      D => reg_height(10),
      Q => height_u(10),
      R => \out_data_reg[17]_i_1_n_0\
    );
\height_u_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => '1',
      D => reg_height(11),
      Q => height_u(11),
      R => \out_data_reg[17]_i_1_n_0\
    );
\height_u_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => '1',
      D => reg_height(12),
      Q => height_u(12),
      R => \out_data_reg[17]_i_1_n_0\
    );
\height_u_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => '1',
      D => reg_height(13),
      Q => height_u(13),
      R => \out_data_reg[17]_i_1_n_0\
    );
\height_u_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => '1',
      D => reg_height(14),
      Q => height_u(14),
      R => \out_data_reg[17]_i_1_n_0\
    );
\height_u_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => '1',
      D => reg_height(15),
      Q => height_u(15),
      R => \out_data_reg[17]_i_1_n_0\
    );
\height_u_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => '1',
      D => reg_height(16),
      Q => height_u(16),
      R => \out_data_reg[17]_i_1_n_0\
    );
\height_u_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => '1',
      D => reg_height(17),
      Q => height_u(17),
      R => \out_data_reg[17]_i_1_n_0\
    );
\height_u_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => '1',
      D => reg_height(18),
      Q => height_u(18),
      R => \out_data_reg[17]_i_1_n_0\
    );
\height_u_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => '1',
      D => reg_height(19),
      Q => height_u(19),
      R => \out_data_reg[17]_i_1_n_0\
    );
\height_u_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => '1',
      D => reg_height(1),
      Q => height_u(1),
      R => \out_data_reg[17]_i_1_n_0\
    );
\height_u_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => '1',
      D => reg_height(20),
      Q => height_u(20),
      R => \out_data_reg[17]_i_1_n_0\
    );
\height_u_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => '1',
      D => reg_height(21),
      Q => height_u(21),
      R => \out_data_reg[17]_i_1_n_0\
    );
\height_u_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => '1',
      D => reg_height(22),
      Q => height_u(22),
      R => \out_data_reg[17]_i_1_n_0\
    );
\height_u_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => '1',
      D => reg_height(23),
      Q => height_u(23),
      R => \out_data_reg[17]_i_1_n_0\
    );
\height_u_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => '1',
      D => reg_height(24),
      Q => height_u(24),
      R => \out_data_reg[17]_i_1_n_0\
    );
\height_u_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => '1',
      D => reg_height(25),
      Q => height_u(25),
      R => \out_data_reg[17]_i_1_n_0\
    );
\height_u_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => '1',
      D => reg_height(26),
      Q => height_u(26),
      R => \out_data_reg[17]_i_1_n_0\
    );
\height_u_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => '1',
      D => reg_height(27),
      Q => height_u(27),
      R => \out_data_reg[17]_i_1_n_0\
    );
\height_u_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => '1',
      D => reg_height(28),
      Q => height_u(28),
      R => \out_data_reg[17]_i_1_n_0\
    );
\height_u_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => '1',
      D => reg_height(29),
      Q => height_u(29),
      R => \out_data_reg[17]_i_1_n_0\
    );
\height_u_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => '1',
      D => reg_height(2),
      Q => height_u(2),
      R => \out_data_reg[17]_i_1_n_0\
    );
\height_u_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => '1',
      D => reg_height(30),
      Q => height_u(30),
      R => \out_data_reg[17]_i_1_n_0\
    );
\height_u_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => '1',
      D => reg_height(31),
      Q => height_u(31),
      R => \out_data_reg[17]_i_1_n_0\
    );
\height_u_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => '1',
      D => reg_height(3),
      Q => height_u(3),
      R => \out_data_reg[17]_i_1_n_0\
    );
\height_u_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => '1',
      D => reg_height(4),
      Q => height_u(4),
      R => \out_data_reg[17]_i_1_n_0\
    );
\height_u_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => '1',
      D => reg_height(5),
      Q => height_u(5),
      R => \out_data_reg[17]_i_1_n_0\
    );
\height_u_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => '1',
      D => reg_height(6),
      Q => height_u(6),
      R => \out_data_reg[17]_i_1_n_0\
    );
\height_u_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclkrst_clk,
      CE => '1',
      D => reg_height(7),
      Q => height_u(7),
      S => \out_data_reg[17]_i_1_n_0\
    );
\height_u_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => '1',
      D => reg_height(8),
      Q => height_u(8),
      R => \out_data_reg[17]_i_1_n_0\
    );
\height_u_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => '1',
      D => reg_height(9),
      Q => height_u(9),
      R => \out_data_reg[17]_i_1_n_0\
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => proc_state2(23),
      I1 => proc_state2(22),
      I2 => proc_state2(21),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => proc_state2(20),
      I1 => proc_state2(19),
      I2 => proc_state2(18),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => proc_state2(17),
      I1 => proc_state2(16),
      I2 => proc_state2(15),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => proc_state2(14),
      I1 => proc_state2(13),
      I2 => proc_state2(12),
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => proc_state2(31),
      I1 => proc_state2(30),
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => proc_state2(29),
      I1 => proc_state2(28),
      I2 => proc_state2(27),
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => proc_state2(26),
      I1 => proc_state2(25),
      I2 => proc_state2(24),
      O => \i__carry__1_i_3_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1001"
    )
        port map (
      I0 => proc_state2(11),
      I1 => proc_state2(10),
      I2 => proc_state2(9),
      I3 => \pixel_x_reg_n_0_[9]\,
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \pixel_x_reg_n_0_[7]\,
      I1 => proc_state2(7),
      I2 => \pixel_x_reg_n_0_[6]\,
      I3 => proc_state2(6),
      I4 => proc_state2(8),
      I5 => \pixel_x_reg_n_0_[8]\,
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \pixel_x_reg_n_0_[4]\,
      I1 => proc_state2(4),
      I2 => \pixel_x_reg_n_0_[3]\,
      I3 => proc_state2(3),
      I4 => proc_state2(5),
      I5 => \pixel_x_reg_n_0_[5]\,
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0990000000000990"
    )
        port map (
      I0 => \pixel_x_reg_n_0_[1]\,
      I1 => proc_state2(1),
      I2 => width_u(0),
      I3 => \pixel_x_reg_n_0_[0]\,
      I4 => proc_state2(2),
      I5 => \pixel_x_reg_n_0_[2]\,
      O => \i__carry_i_4_n_0\
    );
\local_label_counter[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => proc_state(0),
      I1 => \local_label_counter_reg_n_0_[0]\,
      O => local_label_counter(0)
    );
\local_label_counter[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => proc_state(0),
      I1 => in16(10),
      O => local_label_counter(10)
    );
\local_label_counter[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => proc_state(0),
      I1 => in16(11),
      O => local_label_counter(11)
    );
\local_label_counter[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => proc_state(0),
      I1 => in16(12),
      O => local_label_counter(12)
    );
\local_label_counter[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => proc_state(0),
      I1 => in16(13),
      O => local_label_counter(13)
    );
\local_label_counter[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => proc_state(0),
      I1 => in16(14),
      O => local_label_counter(14)
    );
\local_label_counter[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20203320"
    )
        port map (
      I0 => \out_data_reg[17]_i_4_n_0\,
      I1 => proc_state(1),
      I2 => \out_data_reg[17]_i_5_n_0\,
      I3 => \reg_control_reg_n_0_[0]\,
      I4 => proc_state(0),
      O => local_label_counter_0
    );
\local_label_counter[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => proc_state(0),
      I1 => in16(15),
      O => local_label_counter(15)
    );
\local_label_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => proc_state(0),
      I1 => in16(1),
      O => local_label_counter(1)
    );
\local_label_counter[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => proc_state(0),
      I1 => in16(2),
      O => local_label_counter(2)
    );
\local_label_counter[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => proc_state(0),
      I1 => in16(3),
      O => local_label_counter(3)
    );
\local_label_counter[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => proc_state(0),
      I1 => in16(4),
      O => local_label_counter(4)
    );
\local_label_counter[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => proc_state(0),
      I1 => in16(5),
      O => local_label_counter(5)
    );
\local_label_counter[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => proc_state(0),
      I1 => in16(6),
      O => local_label_counter(6)
    );
\local_label_counter[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => proc_state(0),
      I1 => in16(7),
      O => local_label_counter(7)
    );
\local_label_counter[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => proc_state(0),
      I1 => in16(8),
      O => local_label_counter(8)
    );
\local_label_counter[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => proc_state(0),
      I1 => in16(9),
      O => local_label_counter(9)
    );
\local_label_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => local_label_counter_0,
      D => local_label_counter(0),
      Q => \local_label_counter_reg_n_0_[0]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\local_label_counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => local_label_counter_0,
      D => local_label_counter(10),
      Q => \local_label_counter_reg_n_0_[10]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\local_label_counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => local_label_counter_0,
      D => local_label_counter(11),
      Q => \local_label_counter_reg_n_0_[11]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\local_label_counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => local_label_counter_0,
      D => local_label_counter(12),
      Q => \local_label_counter_reg_n_0_[12]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\local_label_counter_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \local_label_counter_reg[8]_i_2_n_0\,
      CO(3) => \local_label_counter_reg[12]_i_2_n_0\,
      CO(2) => \local_label_counter_reg[12]_i_2_n_1\,
      CO(1) => \local_label_counter_reg[12]_i_2_n_2\,
      CO(0) => \local_label_counter_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in16(12 downto 9),
      S(3) => \local_label_counter_reg_n_0_[12]\,
      S(2) => \local_label_counter_reg_n_0_[11]\,
      S(1) => \local_label_counter_reg_n_0_[10]\,
      S(0) => \local_label_counter_reg_n_0_[9]\
    );
\local_label_counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => local_label_counter_0,
      D => local_label_counter(13),
      Q => \local_label_counter_reg_n_0_[13]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\local_label_counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => local_label_counter_0,
      D => local_label_counter(14),
      Q => \local_label_counter_reg_n_0_[14]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\local_label_counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => local_label_counter_0,
      D => local_label_counter(15),
      Q => \local_label_counter_reg_n_0_[15]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\local_label_counter_reg[15]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \local_label_counter_reg[12]_i_2_n_0\,
      CO(3 downto 2) => \NLW_local_label_counter_reg[15]_i_3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \local_label_counter_reg[15]_i_3_n_2\,
      CO(0) => \local_label_counter_reg[15]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_local_label_counter_reg[15]_i_3_O_UNCONNECTED\(3),
      O(2 downto 0) => in16(15 downto 13),
      S(3) => '0',
      S(2) => \local_label_counter_reg_n_0_[15]\,
      S(1) => \local_label_counter_reg_n_0_[14]\,
      S(0) => \local_label_counter_reg_n_0_[13]\
    );
\local_label_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => local_label_counter_0,
      D => local_label_counter(1),
      Q => \local_label_counter_reg_n_0_[1]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\local_label_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => local_label_counter_0,
      D => local_label_counter(2),
      Q => \local_label_counter_reg_n_0_[2]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\local_label_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => local_label_counter_0,
      D => local_label_counter(3),
      Q => \local_label_counter_reg_n_0_[3]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\local_label_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => local_label_counter_0,
      D => local_label_counter(4),
      Q => \local_label_counter_reg_n_0_[4]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\local_label_counter_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \local_label_counter_reg[4]_i_2_n_0\,
      CO(2) => \local_label_counter_reg[4]_i_2_n_1\,
      CO(1) => \local_label_counter_reg[4]_i_2_n_2\,
      CO(0) => \local_label_counter_reg[4]_i_2_n_3\,
      CYINIT => \local_label_counter_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in16(4 downto 1),
      S(3) => \local_label_counter_reg_n_0_[4]\,
      S(2) => \local_label_counter_reg_n_0_[3]\,
      S(1) => \local_label_counter_reg_n_0_[2]\,
      S(0) => \local_label_counter_reg_n_0_[1]\
    );
\local_label_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => local_label_counter_0,
      D => local_label_counter(5),
      Q => \local_label_counter_reg_n_0_[5]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\local_label_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => local_label_counter_0,
      D => local_label_counter(6),
      Q => \local_label_counter_reg_n_0_[6]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\local_label_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => local_label_counter_0,
      D => local_label_counter(7),
      Q => \local_label_counter_reg_n_0_[7]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\local_label_counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => local_label_counter_0,
      D => local_label_counter(8),
      Q => \local_label_counter_reg_n_0_[8]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\local_label_counter_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \local_label_counter_reg[4]_i_2_n_0\,
      CO(3) => \local_label_counter_reg[8]_i_2_n_0\,
      CO(2) => \local_label_counter_reg[8]_i_2_n_1\,
      CO(1) => \local_label_counter_reg[8]_i_2_n_2\,
      CO(0) => \local_label_counter_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in16(8 downto 5),
      S(3) => \local_label_counter_reg_n_0_[8]\,
      S(2) => \local_label_counter_reg_n_0_[7]\,
      S(1) => \local_label_counter_reg_n_0_[6]\,
      S(0) => \local_label_counter_reg_n_0_[5]\
    );
\local_label_counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => local_label_counter_0,
      D => local_label_counter(9),
      Q => \local_label_counter_reg_n_0_[9]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\out_data_reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \local_label_counter_reg_n_0_[0]\,
      I1 => \out_data_reg[17]_i_5_n_0\,
      O => \out_data_reg[0]_i_1_n_0\
    );
\out_data_reg[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \local_label_counter_reg_n_0_[10]\,
      I1 => \out_data_reg[17]_i_5_n_0\,
      O => \out_data_reg[10]_i_1_n_0\
    );
\out_data_reg[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \local_label_counter_reg_n_0_[11]\,
      I1 => \out_data_reg[17]_i_5_n_0\,
      O => \out_data_reg[11]_i_1_n_0\
    );
\out_data_reg[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \local_label_counter_reg_n_0_[12]\,
      I1 => \out_data_reg[17]_i_5_n_0\,
      O => \out_data_reg[12]_i_1_n_0\
    );
\out_data_reg[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \local_label_counter_reg_n_0_[13]\,
      I1 => \out_data_reg[17]_i_5_n_0\,
      O => \out_data_reg[13]_i_1_n_0\
    );
\out_data_reg[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \local_label_counter_reg_n_0_[14]\,
      I1 => \out_data_reg[17]_i_5_n_0\,
      O => \out_data_reg[14]_i_1_n_0\
    );
\out_data_reg[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \local_label_counter_reg_n_0_[15]\,
      I1 => \out_data_reg[17]_i_5_n_0\,
      O => \out_data_reg[15]_i_1_n_0\
    );
\out_data_reg[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \out_data_reg[17]_i_5_n_0\,
      I1 => p_0_in(0),
      O => \out_data_reg[16]_i_1_n_0\
    );
\out_data_reg[17]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aclkrst_n,
      O => \out_data_reg[17]_i_1_n_0\
    );
\out_data_reg[17]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFC0AFCFA0C0A0"
    )
        port map (
      I0 => \unpack_shift_reg_reg_n_0_[28]\,
      I1 => \unpack_shift_reg_reg_n_0_[30]\,
      I2 => \unpack_bits_left_reg_n_0_[0]\,
      I3 => \unpack_bits_left_reg_n_0_[1]\,
      I4 => \unpack_shift_reg_reg_n_0_[29]\,
      I5 => \unpack_shift_reg_reg_n_0_[31]\,
      O => \out_data_reg[17]_i_10_n_0\
    );
\out_data_reg[17]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => \unpack_bits_left_reg_n_0_[0]\,
      I1 => \unpack_bits_left_reg_n_0_[1]\,
      I2 => \unpack_bits_left_reg_n_0_[2]\,
      O => \out_data_reg[17]_i_11_n_0\
    );
\out_data_reg[17]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE01"
    )
        port map (
      I0 => \unpack_bits_left_reg_n_0_[2]\,
      I1 => \unpack_bits_left_reg_n_0_[1]\,
      I2 => \unpack_bits_left_reg_n_0_[0]\,
      I3 => \unpack_bits_left_reg_n_0_[3]\,
      O => \out_data_reg[17]_i_12_n_0\
    );
\out_data_reg[17]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFC0AFCFA0C0A0"
    )
        port map (
      I0 => \unpack_shift_reg_reg_n_0_[16]\,
      I1 => \unpack_shift_reg_reg_n_0_[18]\,
      I2 => \unpack_bits_left_reg_n_0_[0]\,
      I3 => \unpack_bits_left_reg_n_0_[1]\,
      I4 => \unpack_shift_reg_reg_n_0_[17]\,
      I5 => \unpack_shift_reg_reg_n_0_[19]\,
      O => \out_data_reg[17]_i_13_n_0\
    );
\out_data_reg[17]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFC0AFCFA0C0A0"
    )
        port map (
      I0 => \unpack_shift_reg_reg_n_0_[24]\,
      I1 => \unpack_shift_reg_reg_n_0_[26]\,
      I2 => \unpack_bits_left_reg_n_0_[0]\,
      I3 => \unpack_bits_left_reg_n_0_[1]\,
      I4 => \unpack_shift_reg_reg_n_0_[25]\,
      I5 => \unpack_shift_reg_reg_n_0_[27]\,
      O => \out_data_reg[17]_i_14_n_0\
    );
\out_data_reg[17]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFC0AFCFA0C0A0"
    )
        port map (
      I0 => \unpack_shift_reg_reg_n_0_[4]\,
      I1 => \unpack_shift_reg_reg_n_0_[6]\,
      I2 => \unpack_bits_left_reg_n_0_[0]\,
      I3 => \unpack_bits_left_reg_n_0_[1]\,
      I4 => \unpack_shift_reg_reg_n_0_[5]\,
      I5 => \unpack_shift_reg_reg_n_0_[7]\,
      O => \out_data_reg[17]_i_15_n_0\
    );
\out_data_reg[17]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFC0AFCFA0C0A0"
    )
        port map (
      I0 => \unpack_shift_reg_reg_n_0_[12]\,
      I1 => \unpack_shift_reg_reg_n_0_[14]\,
      I2 => \unpack_bits_left_reg_n_0_[0]\,
      I3 => \unpack_bits_left_reg_n_0_[1]\,
      I4 => \unpack_shift_reg_reg_n_0_[13]\,
      I5 => \unpack_shift_reg_reg_n_0_[15]\,
      O => \out_data_reg[17]_i_16_n_0\
    );
\out_data_reg[17]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFC0AFCFA0C0A0"
    )
        port map (
      I0 => \unpack_shift_reg_reg_n_0_[0]\,
      I1 => \unpack_shift_reg_reg_n_0_[2]\,
      I2 => \unpack_bits_left_reg_n_0_[0]\,
      I3 => \unpack_bits_left_reg_n_0_[1]\,
      I4 => \unpack_shift_reg_reg_n_0_[1]\,
      I5 => \unpack_shift_reg_reg_n_0_[3]\,
      O => \out_data_reg[17]_i_17_n_0\
    );
\out_data_reg[17]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFC0AFCFA0C0A0"
    )
        port map (
      I0 => \unpack_shift_reg_reg_n_0_[8]\,
      I1 => \unpack_shift_reg_reg_n_0_[10]\,
      I2 => \unpack_bits_left_reg_n_0_[0]\,
      I3 => \unpack_bits_left_reg_n_0_[1]\,
      I4 => \unpack_shift_reg_reg_n_0_[9]\,
      I5 => \unpack_shift_reg_reg_n_0_[11]\,
      O => \out_data_reg[17]_i_18_n_0\
    );
\out_data_reg[17]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \out_data_reg[17]_i_4_n_0\,
      I1 => proc_state(1),
      O => out_data_reg
    );
\out_data_reg[17]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \out_data_reg[17]_i_5_n_0\,
      I1 => p_0_in(1),
      O => \out_data_reg[17]_i_3_n_0\
    );
\out_data_reg[17]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^out_valid_reg_reg_0\,
      I1 => proc_state26_in,
      I2 => proc_state(0),
      O => \out_data_reg[17]_i_4_n_0\
    );
\out_data_reg[17]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0C0CA0"
    )
        port map (
      I0 => \out_data_reg[17]_i_6_n_0\,
      I1 => \out_data_reg[17]_i_7_n_0\,
      I2 => \unpack_bits_left_reg_n_0_[5]\,
      I3 => \unpack_bits_left_reg_n_0_[4]\,
      I4 => \out_data_reg[17]_i_8_n_0\,
      O => \out_data_reg[17]_i_5_n_0\
    );
\out_data_reg[17]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \out_data_reg[17]_i_9_n_0\,
      I1 => \out_data_reg[17]_i_10_n_0\,
      I2 => \out_data_reg[17]_i_11_n_0\,
      I3 => \out_data_reg[17]_i_12_n_0\,
      I4 => \out_data_reg[17]_i_13_n_0\,
      I5 => \out_data_reg[17]_i_14_n_0\,
      O => \out_data_reg[17]_i_6_n_0\
    );
\out_data_reg[17]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \out_data_reg[17]_i_15_n_0\,
      I1 => \out_data_reg[17]_i_16_n_0\,
      I2 => \out_data_reg[17]_i_11_n_0\,
      I3 => \out_data_reg[17]_i_12_n_0\,
      I4 => \out_data_reg[17]_i_17_n_0\,
      I5 => \out_data_reg[17]_i_18_n_0\,
      O => \out_data_reg[17]_i_7_n_0\
    );
\out_data_reg[17]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \unpack_bits_left_reg_n_0_[2]\,
      I1 => \unpack_bits_left_reg_n_0_[1]\,
      I2 => \unpack_bits_left_reg_n_0_[0]\,
      I3 => \unpack_bits_left_reg_n_0_[3]\,
      O => \out_data_reg[17]_i_8_n_0\
    );
\out_data_reg[17]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFC0AFCFA0C0A0"
    )
        port map (
      I0 => \unpack_shift_reg_reg_n_0_[20]\,
      I1 => \unpack_shift_reg_reg_n_0_[22]\,
      I2 => \unpack_bits_left_reg_n_0_[0]\,
      I3 => \unpack_bits_left_reg_n_0_[1]\,
      I4 => \unpack_shift_reg_reg_n_0_[21]\,
      I5 => \unpack_shift_reg_reg_n_0_[23]\,
      O => \out_data_reg[17]_i_9_n_0\
    );
\out_data_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \local_label_counter_reg_n_0_[1]\,
      I1 => \out_data_reg[17]_i_5_n_0\,
      O => \out_data_reg[1]_i_1_n_0\
    );
\out_data_reg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \local_label_counter_reg_n_0_[2]\,
      I1 => \out_data_reg[17]_i_5_n_0\,
      O => \out_data_reg[2]_i_1_n_0\
    );
\out_data_reg[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \local_label_counter_reg_n_0_[3]\,
      I1 => \out_data_reg[17]_i_5_n_0\,
      O => \out_data_reg[3]_i_1_n_0\
    );
\out_data_reg[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \local_label_counter_reg_n_0_[4]\,
      I1 => \out_data_reg[17]_i_5_n_0\,
      O => \out_data_reg[4]_i_1_n_0\
    );
\out_data_reg[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \local_label_counter_reg_n_0_[5]\,
      I1 => \out_data_reg[17]_i_5_n_0\,
      O => \out_data_reg[5]_i_1_n_0\
    );
\out_data_reg[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \local_label_counter_reg_n_0_[6]\,
      I1 => \out_data_reg[17]_i_5_n_0\,
      O => \out_data_reg[6]_i_1_n_0\
    );
\out_data_reg[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \local_label_counter_reg_n_0_[7]\,
      I1 => \out_data_reg[17]_i_5_n_0\,
      O => \out_data_reg[7]_i_1_n_0\
    );
\out_data_reg[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \local_label_counter_reg_n_0_[8]\,
      I1 => \out_data_reg[17]_i_5_n_0\,
      O => \out_data_reg[8]_i_1_n_0\
    );
\out_data_reg[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \local_label_counter_reg_n_0_[9]\,
      I1 => \out_data_reg[17]_i_5_n_0\,
      O => \out_data_reg[9]_i_1_n_0\
    );
\out_data_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => out_data_reg,
      D => \out_data_reg[0]_i_1_n_0\,
      Q => m_axis_tdata(0),
      R => \out_data_reg[17]_i_1_n_0\
    );
\out_data_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => out_data_reg,
      D => \out_data_reg[10]_i_1_n_0\,
      Q => m_axis_tdata(10),
      R => \out_data_reg[17]_i_1_n_0\
    );
\out_data_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => out_data_reg,
      D => \out_data_reg[11]_i_1_n_0\,
      Q => m_axis_tdata(11),
      R => \out_data_reg[17]_i_1_n_0\
    );
\out_data_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => out_data_reg,
      D => \out_data_reg[12]_i_1_n_0\,
      Q => m_axis_tdata(12),
      R => \out_data_reg[17]_i_1_n_0\
    );
\out_data_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => out_data_reg,
      D => \out_data_reg[13]_i_1_n_0\,
      Q => m_axis_tdata(13),
      R => \out_data_reg[17]_i_1_n_0\
    );
\out_data_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => out_data_reg,
      D => \out_data_reg[14]_i_1_n_0\,
      Q => m_axis_tdata(14),
      R => \out_data_reg[17]_i_1_n_0\
    );
\out_data_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => out_data_reg,
      D => \out_data_reg[15]_i_1_n_0\,
      Q => m_axis_tdata(15),
      R => \out_data_reg[17]_i_1_n_0\
    );
\out_data_reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => out_data_reg,
      D => \out_data_reg[16]_i_1_n_0\,
      Q => m_axis_tdata(16),
      R => \out_data_reg[17]_i_1_n_0\
    );
\out_data_reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => out_data_reg,
      D => \out_data_reg[17]_i_3_n_0\,
      Q => m_axis_tdata(17),
      R => \out_data_reg[17]_i_1_n_0\
    );
\out_data_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => out_data_reg,
      D => \out_data_reg[1]_i_1_n_0\,
      Q => m_axis_tdata(1),
      R => \out_data_reg[17]_i_1_n_0\
    );
\out_data_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => out_data_reg,
      D => \out_data_reg[2]_i_1_n_0\,
      Q => m_axis_tdata(2),
      R => \out_data_reg[17]_i_1_n_0\
    );
\out_data_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => out_data_reg,
      D => \out_data_reg[3]_i_1_n_0\,
      Q => m_axis_tdata(3),
      R => \out_data_reg[17]_i_1_n_0\
    );
\out_data_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => out_data_reg,
      D => \out_data_reg[4]_i_1_n_0\,
      Q => m_axis_tdata(4),
      R => \out_data_reg[17]_i_1_n_0\
    );
\out_data_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => out_data_reg,
      D => \out_data_reg[5]_i_1_n_0\,
      Q => m_axis_tdata(5),
      R => \out_data_reg[17]_i_1_n_0\
    );
\out_data_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => out_data_reg,
      D => \out_data_reg[6]_i_1_n_0\,
      Q => m_axis_tdata(6),
      R => \out_data_reg[17]_i_1_n_0\
    );
\out_data_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => out_data_reg,
      D => \out_data_reg[7]_i_1_n_0\,
      Q => m_axis_tdata(7),
      R => \out_data_reg[17]_i_1_n_0\
    );
\out_data_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => out_data_reg,
      D => \out_data_reg[8]_i_1_n_0\,
      Q => m_axis_tdata(8),
      R => \out_data_reg[17]_i_1_n_0\
    );
\out_data_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => out_data_reg,
      D => \out_data_reg[9]_i_1_n_0\,
      Q => m_axis_tdata(9),
      R => \out_data_reg[17]_i_1_n_0\
    );
out_last_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF08FF00008800"
    )
        port map (
      I0 => proc_state(0),
      I1 => proc_state0,
      I2 => \out_fire__0\,
      I3 => out_last_reg_i_3_n_0,
      I4 => proc_state(1),
      I5 => \^m_axis_tlast\,
      O => out_last_reg_i_1_n_0
    );
out_last_reg_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^out_valid_reg_reg_0\,
      I1 => m_axis_tready,
      O => \out_fire__0\
    );
out_last_reg_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FA3A3A3A3A3A3A3A"
    )
        port map (
      I0 => \reg_control_reg_n_0_[0]\,
      I1 => out_last_reg_i_4_n_0,
      I2 => proc_state(0),
      I3 => proc_state1_6,
      I4 => proc_state0,
      I5 => proc_state17_out,
      O => out_last_reg_i_3_n_0
    );
out_last_reg_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => m_axis_tready,
      I1 => \^out_valid_reg_reg_0\,
      I2 => \^m_axis_tlast\,
      O => out_last_reg_i_4_n_0
    );
out_last_reg_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFFE"
    )
        port map (
      I0 => \unpack_bits_left_reg_n_0_[3]\,
      I1 => \unpack_bits_left_reg_n_0_[2]\,
      I2 => \unpack_bits_left_reg_n_0_[5]\,
      I3 => \unpack_bits_left_reg_n_0_[4]\,
      I4 => out_last_reg_i_6_n_0,
      I5 => \^out_valid_reg_reg_0\,
      O => proc_state17_out
    );
out_last_reg_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \unpack_bits_left_reg_n_0_[1]\,
      I1 => \unpack_bits_left_reg_n_0_[0]\,
      O => out_last_reg_i_6_n_0
    );
out_last_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => '1',
      D => out_last_reg_i_1_n_0,
      Q => \^m_axis_tlast\,
      R => \out_data_reg[17]_i_1_n_0\
    );
out_valid_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCC2E2A2E6E"
    )
        port map (
      I0 => \out_data_reg[17]_i_4_n_0\,
      I1 => \^out_valid_reg_reg_0\,
      I2 => m_axis_tready,
      I3 => proc_state(0),
      I4 => \reg_control_reg_n_0_[0]\,
      I5 => proc_state(1),
      O => out_valid_reg_i_1_n_0
    );
out_valid_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => '1',
      D => out_valid_reg_i_1_n_0,
      Q => \^out_valid_reg_reg_0\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\pixel_x[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => proc_state1_6,
      I1 => proc_state(0),
      I2 => \pixel_x_reg_n_0_[0]\,
      O => pixel_x(0)
    );
\pixel_x[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0220"
    )
        port map (
      I0 => proc_state(0),
      I1 => proc_state1_6,
      I2 => \pixel_x_reg_n_0_[0]\,
      I3 => \pixel_x_reg_n_0_[1]\,
      O => pixel_x(1)
    );
\pixel_x[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02222000"
    )
        port map (
      I0 => proc_state(0),
      I1 => proc_state1_6,
      I2 => \pixel_x_reg_n_0_[0]\,
      I3 => \pixel_x_reg_n_0_[1]\,
      I4 => \pixel_x_reg_n_0_[2]\,
      O => pixel_x(2)
    );
\pixel_x[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"007F000000800000"
    )
        port map (
      I0 => \pixel_x_reg_n_0_[2]\,
      I1 => \pixel_x_reg_n_0_[0]\,
      I2 => \pixel_x_reg_n_0_[1]\,
      I3 => proc_state1_6,
      I4 => proc_state(0),
      I5 => \pixel_x_reg_n_0_[3]\,
      O => pixel_x(3)
    );
\pixel_x[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF000080000000"
    )
        port map (
      I0 => \pixel_x_reg_n_0_[3]\,
      I1 => \pixel_x_reg_n_0_[1]\,
      I2 => \pixel_x_reg_n_0_[0]\,
      I3 => \pixel_x_reg_n_0_[2]\,
      I4 => \pixel_x[9]_i_4_n_0\,
      I5 => \pixel_x_reg_n_0_[4]\,
      O => pixel_x(4)
    );
\pixel_x[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1020"
    )
        port map (
      I0 => \pixel_x[5]_i_2_n_0\,
      I1 => proc_state1_6,
      I2 => proc_state(0),
      I3 => \pixel_x_reg_n_0_[5]\,
      O => pixel_x(5)
    );
\pixel_x[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \pixel_x_reg_n_0_[4]\,
      I1 => \pixel_x_reg_n_0_[2]\,
      I2 => \pixel_x_reg_n_0_[0]\,
      I3 => \pixel_x_reg_n_0_[1]\,
      I4 => \pixel_x_reg_n_0_[3]\,
      O => \pixel_x[5]_i_2_n_0\
    );
\pixel_x[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1020"
    )
        port map (
      I0 => \pixel_x[9]_i_3_n_0\,
      I1 => proc_state1_6,
      I2 => proc_state(0),
      I3 => \pixel_x_reg_n_0_[6]\,
      O => pixel_x(6)
    );
\pixel_x[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"07000800"
    )
        port map (
      I0 => \pixel_x_reg_n_0_[6]\,
      I1 => \pixel_x[9]_i_3_n_0\,
      I2 => proc_state1_6,
      I3 => proc_state(0),
      I4 => \pixel_x_reg_n_0_[7]\,
      O => pixel_x(7)
    );
\pixel_x[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"007F000000800000"
    )
        port map (
      I0 => \pixel_x_reg_n_0_[7]\,
      I1 => \pixel_x[9]_i_3_n_0\,
      I2 => \pixel_x_reg_n_0_[6]\,
      I3 => proc_state1_6,
      I4 => proc_state(0),
      I5 => \pixel_x_reg_n_0_[8]\,
      O => pixel_x(8)
    );
\pixel_x[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2232"
    )
        port map (
      I0 => \out_data_reg[17]_i_4_n_0\,
      I1 => proc_state(1),
      I2 => \reg_control_reg_n_0_[0]\,
      I3 => proc_state(0),
      O => pixel_x_1
    );
\pixel_x[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF000080000000"
    )
        port map (
      I0 => \pixel_x_reg_n_0_[8]\,
      I1 => \pixel_x_reg_n_0_[6]\,
      I2 => \pixel_x[9]_i_3_n_0\,
      I3 => \pixel_x_reg_n_0_[7]\,
      I4 => \pixel_x[9]_i_4_n_0\,
      I5 => \pixel_x_reg_n_0_[9]\,
      O => pixel_x(9)
    );
\pixel_x[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \pixel_x_reg_n_0_[5]\,
      I1 => \pixel_x_reg_n_0_[3]\,
      I2 => \pixel_x_reg_n_0_[1]\,
      I3 => \pixel_x_reg_n_0_[0]\,
      I4 => \pixel_x_reg_n_0_[2]\,
      I5 => \pixel_x_reg_n_0_[4]\,
      O => \pixel_x[9]_i_3_n_0\
    );
\pixel_x[9]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => proc_state(0),
      I1 => proc_state1_6,
      O => \pixel_x[9]_i_4_n_0\
    );
\pixel_x_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => pixel_x_1,
      D => pixel_x(0),
      Q => \pixel_x_reg_n_0_[0]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\pixel_x_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => pixel_x_1,
      D => pixel_x(1),
      Q => \pixel_x_reg_n_0_[1]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\pixel_x_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => pixel_x_1,
      D => pixel_x(2),
      Q => \pixel_x_reg_n_0_[2]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\pixel_x_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => pixel_x_1,
      D => pixel_x(3),
      Q => \pixel_x_reg_n_0_[3]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\pixel_x_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => pixel_x_1,
      D => pixel_x(4),
      Q => \pixel_x_reg_n_0_[4]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\pixel_x_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => pixel_x_1,
      D => pixel_x(5),
      Q => \pixel_x_reg_n_0_[5]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\pixel_x_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => pixel_x_1,
      D => pixel_x(6),
      Q => \pixel_x_reg_n_0_[6]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\pixel_x_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => pixel_x_1,
      D => pixel_x(7),
      Q => \pixel_x_reg_n_0_[7]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\pixel_x_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => pixel_x_1,
      D => pixel_x(8),
      Q => \pixel_x_reg_n_0_[8]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\pixel_x_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => pixel_x_1,
      D => pixel_x(9),
      Q => \pixel_x_reg_n_0_[9]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\pixel_y[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => proc_state0,
      I1 => proc_state(0),
      I2 => \pixel_y_reg_n_0_[0]\,
      O => pixel_y(0)
    );
\pixel_y[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0220"
    )
        port map (
      I0 => proc_state(0),
      I1 => proc_state0,
      I2 => \pixel_y_reg_n_0_[0]\,
      I3 => \pixel_y_reg_n_0_[1]\,
      O => pixel_y(1)
    );
\pixel_y[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02222000"
    )
        port map (
      I0 => proc_state(0),
      I1 => proc_state0,
      I2 => \pixel_y_reg_n_0_[0]\,
      I3 => \pixel_y_reg_n_0_[1]\,
      I4 => \pixel_y_reg_n_0_[2]\,
      O => pixel_y(2)
    );
\pixel_y[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"007F000000800000"
    )
        port map (
      I0 => \pixel_y_reg_n_0_[2]\,
      I1 => \pixel_y_reg_n_0_[0]\,
      I2 => \pixel_y_reg_n_0_[1]\,
      I3 => proc_state0,
      I4 => proc_state(0),
      I5 => \pixel_y_reg_n_0_[3]\,
      O => pixel_y(3)
    );
\pixel_y[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF000080000000"
    )
        port map (
      I0 => \pixel_y_reg_n_0_[3]\,
      I1 => \pixel_y_reg_n_0_[1]\,
      I2 => \pixel_y_reg_n_0_[0]\,
      I3 => \pixel_y_reg_n_0_[2]\,
      I4 => \pixel_y[4]_i_2_n_0\,
      I5 => \pixel_y_reg_n_0_[4]\,
      O => pixel_y(4)
    );
\pixel_y[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => proc_state(0),
      I1 => proc_state0,
      O => \pixel_y[4]_i_2_n_0\
    );
\pixel_y[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1020"
    )
        port map (
      I0 => \pixel_y[5]_i_2_n_0\,
      I1 => proc_state0,
      I2 => proc_state(0),
      I3 => \pixel_y_reg_n_0_[5]\,
      O => pixel_y(5)
    );
\pixel_y[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \pixel_y_reg_n_0_[4]\,
      I1 => \pixel_y_reg_n_0_[2]\,
      I2 => \pixel_y_reg_n_0_[0]\,
      I3 => \pixel_y_reg_n_0_[1]\,
      I4 => \pixel_y_reg_n_0_[3]\,
      O => \pixel_y[5]_i_2_n_0\
    );
\pixel_y[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1020"
    )
        port map (
      I0 => \pixel_y[7]_i_3_n_0\,
      I1 => proc_state0,
      I2 => proc_state(0),
      I3 => \pixel_y_reg_n_0_[6]\,
      O => pixel_y(6)
    );
\pixel_y[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20203320"
    )
        port map (
      I0 => \out_data_reg[17]_i_4_n_0\,
      I1 => proc_state(1),
      I2 => proc_state1_6,
      I3 => \reg_control_reg_n_0_[0]\,
      I4 => proc_state(0),
      O => pixel_y_2
    );
\pixel_y[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"07000800"
    )
        port map (
      I0 => \pixel_y_reg_n_0_[6]\,
      I1 => \pixel_y[7]_i_3_n_0\,
      I2 => proc_state0,
      I3 => proc_state(0),
      I4 => \pixel_y_reg_n_0_[7]\,
      O => pixel_y(7)
    );
\pixel_y[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \pixel_y_reg_n_0_[5]\,
      I1 => \pixel_y_reg_n_0_[3]\,
      I2 => \pixel_y_reg_n_0_[1]\,
      I3 => \pixel_y_reg_n_0_[0]\,
      I4 => \pixel_y_reg_n_0_[2]\,
      I5 => \pixel_y_reg_n_0_[4]\,
      O => \pixel_y[7]_i_3_n_0\
    );
\pixel_y_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => pixel_y_2,
      D => pixel_y(0),
      Q => \pixel_y_reg_n_0_[0]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\pixel_y_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => pixel_y_2,
      D => pixel_y(1),
      Q => \pixel_y_reg_n_0_[1]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\pixel_y_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => pixel_y_2,
      D => pixel_y(2),
      Q => \pixel_y_reg_n_0_[2]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\pixel_y_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => pixel_y_2,
      D => pixel_y(3),
      Q => \pixel_y_reg_n_0_[3]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\pixel_y_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => pixel_y_2,
      D => pixel_y(4),
      Q => \pixel_y_reg_n_0_[4]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\pixel_y_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => pixel_y_2,
      D => pixel_y(5),
      Q => \pixel_y_reg_n_0_[5]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\pixel_y_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => pixel_y_2,
      D => pixel_y(6),
      Q => \pixel_y_reg_n_0_[6]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\pixel_y_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => pixel_y_2,
      D => pixel_y(7),
      Q => \pixel_y_reg_n_0_[7]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
proc_state0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => proc_state0_carry_n_0,
      CO(2) => proc_state0_carry_n_1,
      CO(1) => proc_state0_carry_n_2,
      CO(0) => proc_state0_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_proc_state0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => proc_state0_carry_i_1_n_0,
      S(2) => proc_state0_carry_i_2_n_0,
      S(1) => proc_state0_carry_i_3_n_0,
      S(0) => proc_state0_carry_i_4_n_0
    );
\proc_state0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => proc_state0_carry_n_0,
      CO(3) => \proc_state0_carry__0_n_0\,
      CO(2) => \proc_state0_carry__0_n_1\,
      CO(1) => \proc_state0_carry__0_n_2\,
      CO(0) => \proc_state0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_proc_state0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \proc_state0_carry__0_i_1_n_0\,
      S(2) => \proc_state0_carry__0_i_2_n_0\,
      S(1) => \proc_state0_carry__0_i_3_n_0\,
      S(0) => \proc_state0_carry__0_i_4_n_0\
    );
\proc_state0_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => proc_state1(23),
      I1 => proc_state1(22),
      I2 => proc_state1(21),
      O => \proc_state0_carry__0_i_1_n_0\
    );
\proc_state0_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => proc_state1(20),
      I1 => proc_state1(19),
      I2 => proc_state1(18),
      O => \proc_state0_carry__0_i_2_n_0\
    );
\proc_state0_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => proc_state1(17),
      I1 => proc_state1(16),
      I2 => proc_state1(15),
      O => \proc_state0_carry__0_i_3_n_0\
    );
\proc_state0_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => proc_state1(14),
      I1 => proc_state1(13),
      I2 => proc_state1(12),
      O => \proc_state0_carry__0_i_4_n_0\
    );
\proc_state0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \proc_state0_carry__0_n_0\,
      CO(3) => \NLW_proc_state0_carry__1_CO_UNCONNECTED\(3),
      CO(2) => proc_state0,
      CO(1) => \proc_state0_carry__1_n_2\,
      CO(0) => \proc_state0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_proc_state0_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \proc_state0_carry__1_i_1_n_0\,
      S(1) => \proc_state0_carry__1_i_2_n_0\,
      S(0) => \proc_state0_carry__1_i_3_n_0\
    );
\proc_state0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => proc_state1(31),
      I1 => proc_state1(30),
      O => \proc_state0_carry__1_i_1_n_0\
    );
\proc_state0_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => proc_state1(29),
      I1 => proc_state1(28),
      I2 => proc_state1(27),
      O => \proc_state0_carry__1_i_2_n_0\
    );
\proc_state0_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => proc_state1(26),
      I1 => proc_state1(25),
      I2 => proc_state1(24),
      O => \proc_state0_carry__1_i_3_n_0\
    );
proc_state0_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => proc_state1(11),
      I1 => proc_state1(10),
      I2 => proc_state1(9),
      O => proc_state0_carry_i_1_n_0
    );
proc_state0_carry_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"41000041"
    )
        port map (
      I0 => proc_state1(8),
      I1 => \pixel_y_reg_n_0_[6]\,
      I2 => proc_state1(6),
      I3 => proc_state1(7),
      I4 => \pixel_y_reg_n_0_[7]\,
      O => proc_state0_carry_i_2_n_0
    );
proc_state0_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \pixel_y_reg_n_0_[4]\,
      I1 => proc_state1(4),
      I2 => \pixel_y_reg_n_0_[3]\,
      I3 => proc_state1(3),
      I4 => proc_state1(5),
      I5 => \pixel_y_reg_n_0_[5]\,
      O => proc_state0_carry_i_3_n_0
    );
proc_state0_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0990000000000990"
    )
        port map (
      I0 => \pixel_y_reg_n_0_[1]\,
      I1 => proc_state1(1),
      I2 => height_u(0),
      I3 => \pixel_y_reg_n_0_[0]\,
      I4 => proc_state1(2),
      I5 => \pixel_y_reg_n_0_[2]\,
      O => proc_state0_carry_i_4_n_0
    );
proc_state1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => proc_state1_carry_n_0,
      CO(2) => proc_state1_carry_n_1,
      CO(1) => proc_state1_carry_n_2,
      CO(0) => proc_state1_carry_n_3,
      CYINIT => height_u(0),
      DI(3 downto 0) => height_u(4 downto 1),
      O(3 downto 0) => proc_state1(4 downto 1),
      S(3) => proc_state1_carry_i_1_n_0,
      S(2) => proc_state1_carry_i_2_n_0,
      S(1) => proc_state1_carry_i_3_n_0,
      S(0) => proc_state1_carry_i_4_n_0
    );
\proc_state1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => proc_state1_carry_n_0,
      CO(3) => \proc_state1_carry__0_n_0\,
      CO(2) => \proc_state1_carry__0_n_1\,
      CO(1) => \proc_state1_carry__0_n_2\,
      CO(0) => \proc_state1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => height_u(8 downto 5),
      O(3 downto 0) => proc_state1(8 downto 5),
      S(3) => \proc_state1_carry__0_i_1_n_0\,
      S(2) => \proc_state1_carry__0_i_2_n_0\,
      S(1) => \proc_state1_carry__0_i_3_n_0\,
      S(0) => \proc_state1_carry__0_i_4_n_0\
    );
\proc_state1_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => height_u(8),
      O => \proc_state1_carry__0_i_1_n_0\
    );
\proc_state1_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => height_u(7),
      O => \proc_state1_carry__0_i_2_n_0\
    );
\proc_state1_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => height_u(6),
      O => \proc_state1_carry__0_i_3_n_0\
    );
\proc_state1_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => height_u(5),
      O => \proc_state1_carry__0_i_4_n_0\
    );
\proc_state1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \proc_state1_carry__0_n_0\,
      CO(3) => \proc_state1_carry__1_n_0\,
      CO(2) => \proc_state1_carry__1_n_1\,
      CO(1) => \proc_state1_carry__1_n_2\,
      CO(0) => \proc_state1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => height_u(12 downto 9),
      O(3 downto 0) => proc_state1(12 downto 9),
      S(3) => \proc_state1_carry__1_i_1_n_0\,
      S(2) => \proc_state1_carry__1_i_2_n_0\,
      S(1) => \proc_state1_carry__1_i_3_n_0\,
      S(0) => \proc_state1_carry__1_i_4_n_0\
    );
\proc_state1_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => height_u(12),
      O => \proc_state1_carry__1_i_1_n_0\
    );
\proc_state1_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => height_u(11),
      O => \proc_state1_carry__1_i_2_n_0\
    );
\proc_state1_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => height_u(10),
      O => \proc_state1_carry__1_i_3_n_0\
    );
\proc_state1_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => height_u(9),
      O => \proc_state1_carry__1_i_4_n_0\
    );
\proc_state1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \proc_state1_carry__1_n_0\,
      CO(3) => \proc_state1_carry__2_n_0\,
      CO(2) => \proc_state1_carry__2_n_1\,
      CO(1) => \proc_state1_carry__2_n_2\,
      CO(0) => \proc_state1_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => height_u(16 downto 13),
      O(3 downto 0) => proc_state1(16 downto 13),
      S(3) => \proc_state1_carry__2_i_1_n_0\,
      S(2) => \proc_state1_carry__2_i_2_n_0\,
      S(1) => \proc_state1_carry__2_i_3_n_0\,
      S(0) => \proc_state1_carry__2_i_4_n_0\
    );
\proc_state1_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => height_u(16),
      O => \proc_state1_carry__2_i_1_n_0\
    );
\proc_state1_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => height_u(15),
      O => \proc_state1_carry__2_i_2_n_0\
    );
\proc_state1_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => height_u(14),
      O => \proc_state1_carry__2_i_3_n_0\
    );
\proc_state1_carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => height_u(13),
      O => \proc_state1_carry__2_i_4_n_0\
    );
\proc_state1_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \proc_state1_carry__2_n_0\,
      CO(3) => \proc_state1_carry__3_n_0\,
      CO(2) => \proc_state1_carry__3_n_1\,
      CO(1) => \proc_state1_carry__3_n_2\,
      CO(0) => \proc_state1_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => height_u(20 downto 17),
      O(3 downto 0) => proc_state1(20 downto 17),
      S(3) => \proc_state1_carry__3_i_1_n_0\,
      S(2) => \proc_state1_carry__3_i_2_n_0\,
      S(1) => \proc_state1_carry__3_i_3_n_0\,
      S(0) => \proc_state1_carry__3_i_4_n_0\
    );
\proc_state1_carry__3_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => height_u(20),
      O => \proc_state1_carry__3_i_1_n_0\
    );
\proc_state1_carry__3_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => height_u(19),
      O => \proc_state1_carry__3_i_2_n_0\
    );
\proc_state1_carry__3_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => height_u(18),
      O => \proc_state1_carry__3_i_3_n_0\
    );
\proc_state1_carry__3_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => height_u(17),
      O => \proc_state1_carry__3_i_4_n_0\
    );
\proc_state1_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \proc_state1_carry__3_n_0\,
      CO(3) => \proc_state1_carry__4_n_0\,
      CO(2) => \proc_state1_carry__4_n_1\,
      CO(1) => \proc_state1_carry__4_n_2\,
      CO(0) => \proc_state1_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => height_u(24 downto 21),
      O(3 downto 0) => proc_state1(24 downto 21),
      S(3) => \proc_state1_carry__4_i_1_n_0\,
      S(2) => \proc_state1_carry__4_i_2_n_0\,
      S(1) => \proc_state1_carry__4_i_3_n_0\,
      S(0) => \proc_state1_carry__4_i_4_n_0\
    );
\proc_state1_carry__4_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => height_u(24),
      O => \proc_state1_carry__4_i_1_n_0\
    );
\proc_state1_carry__4_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => height_u(23),
      O => \proc_state1_carry__4_i_2_n_0\
    );
\proc_state1_carry__4_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => height_u(22),
      O => \proc_state1_carry__4_i_3_n_0\
    );
\proc_state1_carry__4_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => height_u(21),
      O => \proc_state1_carry__4_i_4_n_0\
    );
\proc_state1_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \proc_state1_carry__4_n_0\,
      CO(3) => \proc_state1_carry__5_n_0\,
      CO(2) => \proc_state1_carry__5_n_1\,
      CO(1) => \proc_state1_carry__5_n_2\,
      CO(0) => \proc_state1_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => height_u(28 downto 25),
      O(3 downto 0) => proc_state1(28 downto 25),
      S(3) => \proc_state1_carry__5_i_1_n_0\,
      S(2) => \proc_state1_carry__5_i_2_n_0\,
      S(1) => \proc_state1_carry__5_i_3_n_0\,
      S(0) => \proc_state1_carry__5_i_4_n_0\
    );
\proc_state1_carry__5_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => height_u(28),
      O => \proc_state1_carry__5_i_1_n_0\
    );
\proc_state1_carry__5_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => height_u(27),
      O => \proc_state1_carry__5_i_2_n_0\
    );
\proc_state1_carry__5_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => height_u(26),
      O => \proc_state1_carry__5_i_3_n_0\
    );
\proc_state1_carry__5_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => height_u(25),
      O => \proc_state1_carry__5_i_4_n_0\
    );
\proc_state1_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \proc_state1_carry__5_n_0\,
      CO(3 downto 2) => \NLW_proc_state1_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \proc_state1_carry__6_n_2\,
      CO(0) => \proc_state1_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => height_u(30 downto 29),
      O(3) => \NLW_proc_state1_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => proc_state1(31 downto 29),
      S(3) => '0',
      S(2) => \proc_state1_carry__6_i_1_n_0\,
      S(1) => \proc_state1_carry__6_i_2_n_0\,
      S(0) => \proc_state1_carry__6_i_3_n_0\
    );
\proc_state1_carry__6_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => height_u(31),
      O => \proc_state1_carry__6_i_1_n_0\
    );
\proc_state1_carry__6_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => height_u(30),
      O => \proc_state1_carry__6_i_2_n_0\
    );
\proc_state1_carry__6_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => height_u(29),
      O => \proc_state1_carry__6_i_3_n_0\
    );
proc_state1_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => height_u(4),
      O => proc_state1_carry_i_1_n_0
    );
proc_state1_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => height_u(3),
      O => proc_state1_carry_i_2_n_0
    );
proc_state1_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => height_u(2),
      O => proc_state1_carry_i_3_n_0
    );
proc_state1_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => height_u(1),
      O => proc_state1_carry_i_4_n_0
    );
\proc_state1_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \proc_state1_inferred__0/i__carry_n_0\,
      CO(2) => \proc_state1_inferred__0/i__carry_n_1\,
      CO(1) => \proc_state1_inferred__0/i__carry_n_2\,
      CO(0) => \proc_state1_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_proc_state1_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1_n_0\,
      S(2) => \i__carry_i_2_n_0\,
      S(1) => \i__carry_i_3_n_0\,
      S(0) => \i__carry_i_4_n_0\
    );
\proc_state1_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \proc_state1_inferred__0/i__carry_n_0\,
      CO(3) => \proc_state1_inferred__0/i__carry__0_n_0\,
      CO(2) => \proc_state1_inferred__0/i__carry__0_n_1\,
      CO(1) => \proc_state1_inferred__0/i__carry__0_n_2\,
      CO(0) => \proc_state1_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_proc_state1_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_1_n_0\,
      S(2) => \i__carry__0_i_2_n_0\,
      S(1) => \i__carry__0_i_3_n_0\,
      S(0) => \i__carry__0_i_4_n_0\
    );
\proc_state1_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \proc_state1_inferred__0/i__carry__0_n_0\,
      CO(3) => \NLW_proc_state1_inferred__0/i__carry__1_CO_UNCONNECTED\(3),
      CO(2) => proc_state1_6,
      CO(1) => \proc_state1_inferred__0/i__carry__1_n_2\,
      CO(0) => \proc_state1_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_proc_state1_inferred__0/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \i__carry__1_i_1_n_0\,
      S(1) => \i__carry__1_i_2_n_0\,
      S(0) => \i__carry__1_i_3_n_0\
    );
proc_state2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => proc_state2_carry_n_0,
      CO(2) => proc_state2_carry_n_1,
      CO(1) => proc_state2_carry_n_2,
      CO(0) => proc_state2_carry_n_3,
      CYINIT => width_u(0),
      DI(3 downto 0) => width_u(4 downto 1),
      O(3 downto 0) => proc_state2(4 downto 1),
      S(3) => proc_state2_carry_i_1_n_0,
      S(2) => proc_state2_carry_i_2_n_0,
      S(1) => proc_state2_carry_i_3_n_0,
      S(0) => proc_state2_carry_i_4_n_0
    );
\proc_state2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => proc_state2_carry_n_0,
      CO(3) => \proc_state2_carry__0_n_0\,
      CO(2) => \proc_state2_carry__0_n_1\,
      CO(1) => \proc_state2_carry__0_n_2\,
      CO(0) => \proc_state2_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => width_u(8 downto 5),
      O(3 downto 0) => proc_state2(8 downto 5),
      S(3) => \proc_state2_carry__0_i_1_n_0\,
      S(2) => \proc_state2_carry__0_i_2_n_0\,
      S(1) => \proc_state2_carry__0_i_3_n_0\,
      S(0) => \proc_state2_carry__0_i_4_n_0\
    );
\proc_state2_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => width_u(8),
      O => \proc_state2_carry__0_i_1_n_0\
    );
\proc_state2_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => width_u(7),
      O => \proc_state2_carry__0_i_2_n_0\
    );
\proc_state2_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => width_u(6),
      O => \proc_state2_carry__0_i_3_n_0\
    );
\proc_state2_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => width_u(5),
      O => \proc_state2_carry__0_i_4_n_0\
    );
\proc_state2_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \proc_state2_carry__0_n_0\,
      CO(3) => \proc_state2_carry__1_n_0\,
      CO(2) => \proc_state2_carry__1_n_1\,
      CO(1) => \proc_state2_carry__1_n_2\,
      CO(0) => \proc_state2_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => width_u(12 downto 9),
      O(3 downto 0) => proc_state2(12 downto 9),
      S(3) => \proc_state2_carry__1_i_1_n_0\,
      S(2) => \proc_state2_carry__1_i_2_n_0\,
      S(1) => \proc_state2_carry__1_i_3_n_0\,
      S(0) => \proc_state2_carry__1_i_4_n_0\
    );
\proc_state2_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => width_u(12),
      O => \proc_state2_carry__1_i_1_n_0\
    );
\proc_state2_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => width_u(11),
      O => \proc_state2_carry__1_i_2_n_0\
    );
\proc_state2_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => width_u(10),
      O => \proc_state2_carry__1_i_3_n_0\
    );
\proc_state2_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => width_u(9),
      O => \proc_state2_carry__1_i_4_n_0\
    );
\proc_state2_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \proc_state2_carry__1_n_0\,
      CO(3) => \proc_state2_carry__2_n_0\,
      CO(2) => \proc_state2_carry__2_n_1\,
      CO(1) => \proc_state2_carry__2_n_2\,
      CO(0) => \proc_state2_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => width_u(16 downto 13),
      O(3 downto 0) => proc_state2(16 downto 13),
      S(3) => \proc_state2_carry__2_i_1_n_0\,
      S(2) => \proc_state2_carry__2_i_2_n_0\,
      S(1) => \proc_state2_carry__2_i_3_n_0\,
      S(0) => \proc_state2_carry__2_i_4_n_0\
    );
\proc_state2_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => width_u(16),
      O => \proc_state2_carry__2_i_1_n_0\
    );
\proc_state2_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => width_u(15),
      O => \proc_state2_carry__2_i_2_n_0\
    );
\proc_state2_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => width_u(14),
      O => \proc_state2_carry__2_i_3_n_0\
    );
\proc_state2_carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => width_u(13),
      O => \proc_state2_carry__2_i_4_n_0\
    );
\proc_state2_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \proc_state2_carry__2_n_0\,
      CO(3) => \proc_state2_carry__3_n_0\,
      CO(2) => \proc_state2_carry__3_n_1\,
      CO(1) => \proc_state2_carry__3_n_2\,
      CO(0) => \proc_state2_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => width_u(20 downto 17),
      O(3 downto 0) => proc_state2(20 downto 17),
      S(3) => \proc_state2_carry__3_i_1_n_0\,
      S(2) => \proc_state2_carry__3_i_2_n_0\,
      S(1) => \proc_state2_carry__3_i_3_n_0\,
      S(0) => \proc_state2_carry__3_i_4_n_0\
    );
\proc_state2_carry__3_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => width_u(20),
      O => \proc_state2_carry__3_i_1_n_0\
    );
\proc_state2_carry__3_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => width_u(19),
      O => \proc_state2_carry__3_i_2_n_0\
    );
\proc_state2_carry__3_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => width_u(18),
      O => \proc_state2_carry__3_i_3_n_0\
    );
\proc_state2_carry__3_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => width_u(17),
      O => \proc_state2_carry__3_i_4_n_0\
    );
\proc_state2_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \proc_state2_carry__3_n_0\,
      CO(3) => \proc_state2_carry__4_n_0\,
      CO(2) => \proc_state2_carry__4_n_1\,
      CO(1) => \proc_state2_carry__4_n_2\,
      CO(0) => \proc_state2_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => width_u(24 downto 21),
      O(3 downto 0) => proc_state2(24 downto 21),
      S(3) => \proc_state2_carry__4_i_1_n_0\,
      S(2) => \proc_state2_carry__4_i_2_n_0\,
      S(1) => \proc_state2_carry__4_i_3_n_0\,
      S(0) => \proc_state2_carry__4_i_4_n_0\
    );
\proc_state2_carry__4_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => width_u(24),
      O => \proc_state2_carry__4_i_1_n_0\
    );
\proc_state2_carry__4_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => width_u(23),
      O => \proc_state2_carry__4_i_2_n_0\
    );
\proc_state2_carry__4_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => width_u(22),
      O => \proc_state2_carry__4_i_3_n_0\
    );
\proc_state2_carry__4_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => width_u(21),
      O => \proc_state2_carry__4_i_4_n_0\
    );
\proc_state2_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \proc_state2_carry__4_n_0\,
      CO(3) => \proc_state2_carry__5_n_0\,
      CO(2) => \proc_state2_carry__5_n_1\,
      CO(1) => \proc_state2_carry__5_n_2\,
      CO(0) => \proc_state2_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => width_u(28 downto 25),
      O(3 downto 0) => proc_state2(28 downto 25),
      S(3) => \proc_state2_carry__5_i_1_n_0\,
      S(2) => \proc_state2_carry__5_i_2_n_0\,
      S(1) => \proc_state2_carry__5_i_3_n_0\,
      S(0) => \proc_state2_carry__5_i_4_n_0\
    );
\proc_state2_carry__5_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => width_u(28),
      O => \proc_state2_carry__5_i_1_n_0\
    );
\proc_state2_carry__5_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => width_u(27),
      O => \proc_state2_carry__5_i_2_n_0\
    );
\proc_state2_carry__5_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => width_u(26),
      O => \proc_state2_carry__5_i_3_n_0\
    );
\proc_state2_carry__5_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => width_u(25),
      O => \proc_state2_carry__5_i_4_n_0\
    );
\proc_state2_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \proc_state2_carry__5_n_0\,
      CO(3 downto 2) => \NLW_proc_state2_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \proc_state2_carry__6_n_2\,
      CO(0) => \proc_state2_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => width_u(30 downto 29),
      O(3) => \NLW_proc_state2_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => proc_state2(31 downto 29),
      S(3) => '0',
      S(2) => \proc_state2_carry__6_i_1_n_0\,
      S(1) => \proc_state2_carry__6_i_2_n_0\,
      S(0) => \proc_state2_carry__6_i_3_n_0\
    );
\proc_state2_carry__6_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => width_u(31),
      O => \proc_state2_carry__6_i_1_n_0\
    );
\proc_state2_carry__6_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => width_u(30),
      O => \proc_state2_carry__6_i_2_n_0\
    );
\proc_state2_carry__6_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => width_u(29),
      O => \proc_state2_carry__6_i_3_n_0\
    );
proc_state2_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => width_u(4),
      O => proc_state2_carry_i_1_n_0
    );
proc_state2_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => width_u(3),
      O => proc_state2_carry_i_2_n_0
    );
proc_state2_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => width_u(2),
      O => proc_state2_carry_i_3_n_0
    );
proc_state2_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => width_u(1),
      O => proc_state2_carry_i_4_n_0
    );
\reg_control[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => \reg_control[31]_i_2_n_0\,
      I3 => s_axi_awaddr(1),
      I4 => s_axi_awaddr(0),
      I5 => s_axi_awaddr(2),
      O => reg_control
    );
\reg_control[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => s_axi_awaddr(5),
      I1 => s_axi_awaddr(3),
      I2 => s_axi_awaddr(4),
      O => \reg_control[31]_i_2_n_0\
    );
\reg_control_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_control,
      D => s_axi_wdata(0),
      Q => \reg_control_reg_n_0_[0]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_control_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_control,
      D => s_axi_wdata(10),
      Q => \reg_control_reg_n_0_[10]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_control_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_control,
      D => s_axi_wdata(11),
      Q => \reg_control_reg_n_0_[11]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_control_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_control,
      D => s_axi_wdata(12),
      Q => \reg_control_reg_n_0_[12]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_control_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_control,
      D => s_axi_wdata(13),
      Q => \reg_control_reg_n_0_[13]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_control_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_control,
      D => s_axi_wdata(14),
      Q => \reg_control_reg_n_0_[14]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_control_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_control,
      D => s_axi_wdata(15),
      Q => \reg_control_reg_n_0_[15]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_control_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_control,
      D => s_axi_wdata(16),
      Q => \reg_control_reg_n_0_[16]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_control_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_control,
      D => s_axi_wdata(17),
      Q => \reg_control_reg_n_0_[17]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_control_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_control,
      D => s_axi_wdata(18),
      Q => \reg_control_reg_n_0_[18]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_control_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_control,
      D => s_axi_wdata(19),
      Q => \reg_control_reg_n_0_[19]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_control_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_control,
      D => s_axi_wdata(1),
      Q => \reg_control_reg_n_0_[1]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_control_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_control,
      D => s_axi_wdata(20),
      Q => \reg_control_reg_n_0_[20]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_control_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_control,
      D => s_axi_wdata(21),
      Q => \reg_control_reg_n_0_[21]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_control_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_control,
      D => s_axi_wdata(22),
      Q => \reg_control_reg_n_0_[22]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_control_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_control,
      D => s_axi_wdata(23),
      Q => \reg_control_reg_n_0_[23]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_control_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_control,
      D => s_axi_wdata(24),
      Q => \reg_control_reg_n_0_[24]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_control_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_control,
      D => s_axi_wdata(25),
      Q => \reg_control_reg_n_0_[25]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_control_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_control,
      D => s_axi_wdata(26),
      Q => \reg_control_reg_n_0_[26]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_control_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_control,
      D => s_axi_wdata(27),
      Q => \reg_control_reg_n_0_[27]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_control_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_control,
      D => s_axi_wdata(28),
      Q => \reg_control_reg_n_0_[28]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_control_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_control,
      D => s_axi_wdata(29),
      Q => \reg_control_reg_n_0_[29]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_control_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_control,
      D => s_axi_wdata(2),
      Q => \reg_control_reg_n_0_[2]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_control_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_control,
      D => s_axi_wdata(30),
      Q => \reg_control_reg_n_0_[30]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_control_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_control,
      D => s_axi_wdata(31),
      Q => \reg_control_reg_n_0_[31]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_control_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_control,
      D => s_axi_wdata(3),
      Q => \reg_control_reg_n_0_[3]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_control_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_control,
      D => s_axi_wdata(4),
      Q => \reg_control_reg_n_0_[4]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_control_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_control,
      D => s_axi_wdata(5),
      Q => \reg_control_reg_n_0_[5]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_control_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_control,
      D => s_axi_wdata(6),
      Q => \reg_control_reg_n_0_[6]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_control_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_control,
      D => s_axi_wdata(7),
      Q => \reg_control_reg_n_0_[7]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_control_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_control,
      D => s_axi_wdata(8),
      Q => \reg_control_reg_n_0_[8]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_control_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_control,
      D => s_axi_wdata(9),
      Q => \reg_control_reg_n_0_[9]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_height[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000000000000"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => \reg_control[31]_i_2_n_0\,
      I3 => s_axi_awaddr(2),
      I4 => s_axi_awaddr(0),
      I5 => s_axi_awaddr(1),
      O => reg_height_5
    );
\reg_height_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_height_5,
      D => s_axi_wdata(0),
      Q => reg_height(0),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_height_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_height_5,
      D => s_axi_wdata(10),
      Q => reg_height(10),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_height_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_height_5,
      D => s_axi_wdata(11),
      Q => reg_height(11),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_height_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_height_5,
      D => s_axi_wdata(12),
      Q => reg_height(12),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_height_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_height_5,
      D => s_axi_wdata(13),
      Q => reg_height(13),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_height_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_height_5,
      D => s_axi_wdata(14),
      Q => reg_height(14),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_height_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_height_5,
      D => s_axi_wdata(15),
      Q => reg_height(15),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_height_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_height_5,
      D => s_axi_wdata(16),
      Q => reg_height(16),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_height_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_height_5,
      D => s_axi_wdata(17),
      Q => reg_height(17),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_height_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_height_5,
      D => s_axi_wdata(18),
      Q => reg_height(18),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_height_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_height_5,
      D => s_axi_wdata(19),
      Q => reg_height(19),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_height_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_height_5,
      D => s_axi_wdata(1),
      Q => reg_height(1),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_height_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_height_5,
      D => s_axi_wdata(20),
      Q => reg_height(20),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_height_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_height_5,
      D => s_axi_wdata(21),
      Q => reg_height(21),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_height_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_height_5,
      D => s_axi_wdata(22),
      Q => reg_height(22),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_height_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_height_5,
      D => s_axi_wdata(23),
      Q => reg_height(23),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_height_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_height_5,
      D => s_axi_wdata(24),
      Q => reg_height(24),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_height_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_height_5,
      D => s_axi_wdata(25),
      Q => reg_height(25),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_height_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_height_5,
      D => s_axi_wdata(26),
      Q => reg_height(26),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_height_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_height_5,
      D => s_axi_wdata(27),
      Q => reg_height(27),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_height_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_height_5,
      D => s_axi_wdata(28),
      Q => reg_height(28),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_height_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_height_5,
      D => s_axi_wdata(29),
      Q => reg_height(29),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_height_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_height_5,
      D => s_axi_wdata(2),
      Q => reg_height(2),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_height_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_height_5,
      D => s_axi_wdata(30),
      Q => reg_height(30),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_height_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_height_5,
      D => s_axi_wdata(31),
      Q => reg_height(31),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_height_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_height_5,
      D => s_axi_wdata(3),
      Q => reg_height(3),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_height_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_height_5,
      D => s_axi_wdata(4),
      Q => reg_height(4),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_height_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_height_5,
      D => s_axi_wdata(5),
      Q => reg_height(5),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_height_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_height_5,
      D => s_axi_wdata(6),
      Q => reg_height(6),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_height_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_height_5,
      D => s_axi_wdata(7),
      Q => reg_height(7),
      S => \out_data_reg[17]_i_1_n_0\
    );
\reg_height_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_height_5,
      D => s_axi_wdata(8),
      Q => reg_height(8),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_height_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_height_5,
      D => s_axi_wdata(9),
      Q => reg_height(9),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_slice_id[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000800"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => \reg_control[31]_i_2_n_0\,
      I3 => s_axi_awaddr(2),
      I4 => s_axi_awaddr(0),
      I5 => s_axi_awaddr(1),
      O => reg_slice_id_3
    );
\reg_slice_id_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_slice_id_3,
      D => s_axi_wdata(0),
      Q => p_0_in(0),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_slice_id_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_slice_id_3,
      D => s_axi_wdata(10),
      Q => reg_slice_id(10),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_slice_id_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_slice_id_3,
      D => s_axi_wdata(11),
      Q => reg_slice_id(11),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_slice_id_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_slice_id_3,
      D => s_axi_wdata(12),
      Q => reg_slice_id(12),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_slice_id_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_slice_id_3,
      D => s_axi_wdata(13),
      Q => reg_slice_id(13),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_slice_id_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_slice_id_3,
      D => s_axi_wdata(14),
      Q => reg_slice_id(14),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_slice_id_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_slice_id_3,
      D => s_axi_wdata(15),
      Q => reg_slice_id(15),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_slice_id_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_slice_id_3,
      D => s_axi_wdata(16),
      Q => reg_slice_id(16),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_slice_id_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_slice_id_3,
      D => s_axi_wdata(17),
      Q => reg_slice_id(17),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_slice_id_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_slice_id_3,
      D => s_axi_wdata(18),
      Q => reg_slice_id(18),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_slice_id_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_slice_id_3,
      D => s_axi_wdata(19),
      Q => reg_slice_id(19),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_slice_id_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_slice_id_3,
      D => s_axi_wdata(1),
      Q => p_0_in(1),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_slice_id_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_slice_id_3,
      D => s_axi_wdata(20),
      Q => reg_slice_id(20),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_slice_id_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_slice_id_3,
      D => s_axi_wdata(21),
      Q => reg_slice_id(21),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_slice_id_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_slice_id_3,
      D => s_axi_wdata(22),
      Q => reg_slice_id(22),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_slice_id_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_slice_id_3,
      D => s_axi_wdata(23),
      Q => reg_slice_id(23),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_slice_id_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_slice_id_3,
      D => s_axi_wdata(24),
      Q => reg_slice_id(24),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_slice_id_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_slice_id_3,
      D => s_axi_wdata(25),
      Q => reg_slice_id(25),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_slice_id_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_slice_id_3,
      D => s_axi_wdata(26),
      Q => reg_slice_id(26),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_slice_id_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_slice_id_3,
      D => s_axi_wdata(27),
      Q => reg_slice_id(27),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_slice_id_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_slice_id_3,
      D => s_axi_wdata(28),
      Q => reg_slice_id(28),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_slice_id_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_slice_id_3,
      D => s_axi_wdata(29),
      Q => reg_slice_id(29),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_slice_id_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_slice_id_3,
      D => s_axi_wdata(2),
      Q => reg_slice_id(2),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_slice_id_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_slice_id_3,
      D => s_axi_wdata(30),
      Q => reg_slice_id(30),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_slice_id_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_slice_id_3,
      D => s_axi_wdata(31),
      Q => reg_slice_id(31),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_slice_id_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_slice_id_3,
      D => s_axi_wdata(3),
      Q => reg_slice_id(3),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_slice_id_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_slice_id_3,
      D => s_axi_wdata(4),
      Q => reg_slice_id(4),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_slice_id_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_slice_id_3,
      D => s_axi_wdata(5),
      Q => reg_slice_id(5),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_slice_id_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_slice_id_3,
      D => s_axi_wdata(6),
      Q => reg_slice_id(6),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_slice_id_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_slice_id_3,
      D => s_axi_wdata(7),
      Q => reg_slice_id(7),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_slice_id_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_slice_id_3,
      D => s_axi_wdata(8),
      Q => reg_slice_id(8),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_slice_id_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_slice_id_3,
      D => s_axi_wdata(9),
      Q => reg_slice_id(9),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_status[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBA0"
    )
        port map (
      I0 => proc_state(1),
      I1 => \reg_control_reg_n_0_[0]\,
      I2 => proc_state(0),
      I3 => \^irq_done\,
      O => \reg_status[0]_i_1_n_0\
    );
\reg_status_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => '1',
      D => \reg_status[0]_i_1_n_0\,
      Q => \^irq_done\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_width[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000800"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => \reg_control[31]_i_2_n_0\,
      I3 => s_axi_awaddr(1),
      I4 => s_axi_awaddr(0),
      I5 => s_axi_awaddr(2),
      O => reg_width_4
    );
\reg_width_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_width_4,
      D => s_axi_wdata(0),
      Q => reg_width(0),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_width_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_width_4,
      D => s_axi_wdata(10),
      Q => reg_width(10),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_width_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_width_4,
      D => s_axi_wdata(11),
      Q => reg_width(11),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_width_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_width_4,
      D => s_axi_wdata(12),
      Q => reg_width(12),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_width_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_width_4,
      D => s_axi_wdata(13),
      Q => reg_width(13),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_width_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_width_4,
      D => s_axi_wdata(14),
      Q => reg_width(14),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_width_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_width_4,
      D => s_axi_wdata(15),
      Q => reg_width(15),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_width_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_width_4,
      D => s_axi_wdata(16),
      Q => reg_width(16),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_width_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_width_4,
      D => s_axi_wdata(17),
      Q => reg_width(17),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_width_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_width_4,
      D => s_axi_wdata(18),
      Q => reg_width(18),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_width_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_width_4,
      D => s_axi_wdata(19),
      Q => reg_width(19),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_width_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_width_4,
      D => s_axi_wdata(1),
      Q => reg_width(1),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_width_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_width_4,
      D => s_axi_wdata(20),
      Q => reg_width(20),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_width_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_width_4,
      D => s_axi_wdata(21),
      Q => reg_width(21),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_width_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_width_4,
      D => s_axi_wdata(22),
      Q => reg_width(22),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_width_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_width_4,
      D => s_axi_wdata(23),
      Q => reg_width(23),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_width_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_width_4,
      D => s_axi_wdata(24),
      Q => reg_width(24),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_width_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_width_4,
      D => s_axi_wdata(25),
      Q => reg_width(25),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_width_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_width_4,
      D => s_axi_wdata(26),
      Q => reg_width(26),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_width_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_width_4,
      D => s_axi_wdata(27),
      Q => reg_width(27),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_width_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_width_4,
      D => s_axi_wdata(28),
      Q => reg_width(28),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_width_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_width_4,
      D => s_axi_wdata(29),
      Q => reg_width(29),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_width_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_width_4,
      D => s_axi_wdata(2),
      Q => reg_width(2),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_width_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_width_4,
      D => s_axi_wdata(30),
      Q => reg_width(30),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_width_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_width_4,
      D => s_axi_wdata(31),
      Q => reg_width(31),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_width_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_width_4,
      D => s_axi_wdata(3),
      Q => reg_width(3),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_width_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_width_4,
      D => s_axi_wdata(4),
      Q => reg_width(4),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_width_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_width_4,
      D => s_axi_wdata(5),
      Q => reg_width(5),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_width_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_width_4,
      D => s_axi_wdata(6),
      Q => reg_width(6),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_width_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_width_4,
      D => s_axi_wdata(7),
      Q => reg_width(7),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_width_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_width_4,
      D => s_axi_wdata(8),
      Q => reg_width(8),
      R => \out_data_reg[17]_i_1_n_0\
    );
\reg_width_reg[9]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclkrst_clk,
      CE => reg_width_4,
      D => s_axi_wdata(9),
      Q => reg_width(9),
      S => \out_data_reg[17]_i_1_n_0\
    );
\s_axi_rdata[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \s_axi_rdata[0]_INST_0_i_1_n_0\,
      I1 => \s_axi_rdata[31]_INST_0_i_2_n_0\,
      I2 => p_0_in(0),
      I3 => \s_axi_rdata[31]_INST_0_i_3_n_0\,
      O => s_axi_rdata(0)
    );
\s_axi_rdata[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \^irq_done\,
      I1 => reg_height(0),
      I2 => s_axi_araddr(0),
      I3 => s_axi_araddr(1),
      I4 => \reg_control_reg_n_0_[0]\,
      I5 => reg_width(0),
      O => \s_axi_rdata[0]_INST_0_i_1_n_0\
    );
\s_axi_rdata[10]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \s_axi_rdata[10]_INST_0_i_1_n_0\,
      I1 => \s_axi_rdata[31]_INST_0_i_2_n_0\,
      I2 => reg_slice_id(10),
      I3 => \s_axi_rdata[31]_INST_0_i_3_n_0\,
      O => s_axi_rdata(10)
    );
\s_axi_rdata[10]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F000CCAA"
    )
        port map (
      I0 => \reg_control_reg_n_0_[10]\,
      I1 => reg_width(10),
      I2 => reg_height(10),
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(0),
      O => \s_axi_rdata[10]_INST_0_i_1_n_0\
    );
\s_axi_rdata[11]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \s_axi_rdata[11]_INST_0_i_1_n_0\,
      I1 => \s_axi_rdata[31]_INST_0_i_2_n_0\,
      I2 => reg_slice_id(11),
      I3 => \s_axi_rdata[31]_INST_0_i_3_n_0\,
      O => s_axi_rdata(11)
    );
\s_axi_rdata[11]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F000CCAA"
    )
        port map (
      I0 => \reg_control_reg_n_0_[11]\,
      I1 => reg_width(11),
      I2 => reg_height(11),
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(0),
      O => \s_axi_rdata[11]_INST_0_i_1_n_0\
    );
\s_axi_rdata[12]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \s_axi_rdata[12]_INST_0_i_1_n_0\,
      I1 => \s_axi_rdata[31]_INST_0_i_2_n_0\,
      I2 => reg_slice_id(12),
      I3 => \s_axi_rdata[31]_INST_0_i_3_n_0\,
      O => s_axi_rdata(12)
    );
\s_axi_rdata[12]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F000CCAA"
    )
        port map (
      I0 => \reg_control_reg_n_0_[12]\,
      I1 => reg_width(12),
      I2 => reg_height(12),
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(0),
      O => \s_axi_rdata[12]_INST_0_i_1_n_0\
    );
\s_axi_rdata[13]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \s_axi_rdata[13]_INST_0_i_1_n_0\,
      I1 => \s_axi_rdata[31]_INST_0_i_2_n_0\,
      I2 => reg_slice_id(13),
      I3 => \s_axi_rdata[31]_INST_0_i_3_n_0\,
      O => s_axi_rdata(13)
    );
\s_axi_rdata[13]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F000CCAA"
    )
        port map (
      I0 => \reg_control_reg_n_0_[13]\,
      I1 => reg_width(13),
      I2 => reg_height(13),
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(0),
      O => \s_axi_rdata[13]_INST_0_i_1_n_0\
    );
\s_axi_rdata[14]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \s_axi_rdata[14]_INST_0_i_1_n_0\,
      I1 => \s_axi_rdata[31]_INST_0_i_2_n_0\,
      I2 => reg_slice_id(14),
      I3 => \s_axi_rdata[31]_INST_0_i_3_n_0\,
      O => s_axi_rdata(14)
    );
\s_axi_rdata[14]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F000CCAA"
    )
        port map (
      I0 => \reg_control_reg_n_0_[14]\,
      I1 => reg_width(14),
      I2 => reg_height(14),
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(0),
      O => \s_axi_rdata[14]_INST_0_i_1_n_0\
    );
\s_axi_rdata[15]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \s_axi_rdata[15]_INST_0_i_1_n_0\,
      I1 => \s_axi_rdata[31]_INST_0_i_2_n_0\,
      I2 => reg_slice_id(15),
      I3 => \s_axi_rdata[31]_INST_0_i_3_n_0\,
      O => s_axi_rdata(15)
    );
\s_axi_rdata[15]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F000CCAA"
    )
        port map (
      I0 => \reg_control_reg_n_0_[15]\,
      I1 => reg_width(15),
      I2 => reg_height(15),
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(0),
      O => \s_axi_rdata[15]_INST_0_i_1_n_0\
    );
\s_axi_rdata[16]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \s_axi_rdata[16]_INST_0_i_1_n_0\,
      I1 => \s_axi_rdata[31]_INST_0_i_2_n_0\,
      I2 => reg_slice_id(16),
      I3 => \s_axi_rdata[31]_INST_0_i_3_n_0\,
      O => s_axi_rdata(16)
    );
\s_axi_rdata[16]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F000CCAA"
    )
        port map (
      I0 => \reg_control_reg_n_0_[16]\,
      I1 => reg_width(16),
      I2 => reg_height(16),
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(0),
      O => \s_axi_rdata[16]_INST_0_i_1_n_0\
    );
\s_axi_rdata[17]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \s_axi_rdata[17]_INST_0_i_1_n_0\,
      I1 => \s_axi_rdata[31]_INST_0_i_2_n_0\,
      I2 => reg_slice_id(17),
      I3 => \s_axi_rdata[31]_INST_0_i_3_n_0\,
      O => s_axi_rdata(17)
    );
\s_axi_rdata[17]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F000CCAA"
    )
        port map (
      I0 => \reg_control_reg_n_0_[17]\,
      I1 => reg_width(17),
      I2 => reg_height(17),
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(0),
      O => \s_axi_rdata[17]_INST_0_i_1_n_0\
    );
\s_axi_rdata[18]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \s_axi_rdata[18]_INST_0_i_1_n_0\,
      I1 => \s_axi_rdata[31]_INST_0_i_2_n_0\,
      I2 => reg_slice_id(18),
      I3 => \s_axi_rdata[31]_INST_0_i_3_n_0\,
      O => s_axi_rdata(18)
    );
\s_axi_rdata[18]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F000CCAA"
    )
        port map (
      I0 => \reg_control_reg_n_0_[18]\,
      I1 => reg_width(18),
      I2 => reg_height(18),
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(0),
      O => \s_axi_rdata[18]_INST_0_i_1_n_0\
    );
\s_axi_rdata[19]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \s_axi_rdata[19]_INST_0_i_1_n_0\,
      I1 => \s_axi_rdata[31]_INST_0_i_2_n_0\,
      I2 => reg_slice_id(19),
      I3 => \s_axi_rdata[31]_INST_0_i_3_n_0\,
      O => s_axi_rdata(19)
    );
\s_axi_rdata[19]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F000CCAA"
    )
        port map (
      I0 => \reg_control_reg_n_0_[19]\,
      I1 => reg_width(19),
      I2 => reg_height(19),
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(0),
      O => \s_axi_rdata[19]_INST_0_i_1_n_0\
    );
\s_axi_rdata[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \s_axi_rdata[1]_INST_0_i_1_n_0\,
      I1 => \s_axi_rdata[31]_INST_0_i_2_n_0\,
      I2 => p_0_in(1),
      I3 => \s_axi_rdata[31]_INST_0_i_3_n_0\,
      O => s_axi_rdata(1)
    );
\s_axi_rdata[1]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F000CCAA"
    )
        port map (
      I0 => \reg_control_reg_n_0_[1]\,
      I1 => reg_width(1),
      I2 => reg_height(1),
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(0),
      O => \s_axi_rdata[1]_INST_0_i_1_n_0\
    );
\s_axi_rdata[20]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \s_axi_rdata[20]_INST_0_i_1_n_0\,
      I1 => \s_axi_rdata[31]_INST_0_i_2_n_0\,
      I2 => reg_slice_id(20),
      I3 => \s_axi_rdata[31]_INST_0_i_3_n_0\,
      O => s_axi_rdata(20)
    );
\s_axi_rdata[20]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F000CCAA"
    )
        port map (
      I0 => \reg_control_reg_n_0_[20]\,
      I1 => reg_width(20),
      I2 => reg_height(20),
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(0),
      O => \s_axi_rdata[20]_INST_0_i_1_n_0\
    );
\s_axi_rdata[21]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \s_axi_rdata[21]_INST_0_i_1_n_0\,
      I1 => \s_axi_rdata[31]_INST_0_i_2_n_0\,
      I2 => reg_slice_id(21),
      I3 => \s_axi_rdata[31]_INST_0_i_3_n_0\,
      O => s_axi_rdata(21)
    );
\s_axi_rdata[21]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F000CCAA"
    )
        port map (
      I0 => \reg_control_reg_n_0_[21]\,
      I1 => reg_width(21),
      I2 => reg_height(21),
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(0),
      O => \s_axi_rdata[21]_INST_0_i_1_n_0\
    );
\s_axi_rdata[22]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \s_axi_rdata[22]_INST_0_i_1_n_0\,
      I1 => \s_axi_rdata[31]_INST_0_i_2_n_0\,
      I2 => reg_slice_id(22),
      I3 => \s_axi_rdata[31]_INST_0_i_3_n_0\,
      O => s_axi_rdata(22)
    );
\s_axi_rdata[22]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F000CCAA"
    )
        port map (
      I0 => \reg_control_reg_n_0_[22]\,
      I1 => reg_width(22),
      I2 => reg_height(22),
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(0),
      O => \s_axi_rdata[22]_INST_0_i_1_n_0\
    );
\s_axi_rdata[23]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \s_axi_rdata[23]_INST_0_i_1_n_0\,
      I1 => \s_axi_rdata[31]_INST_0_i_2_n_0\,
      I2 => reg_slice_id(23),
      I3 => \s_axi_rdata[31]_INST_0_i_3_n_0\,
      O => s_axi_rdata(23)
    );
\s_axi_rdata[23]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F000CCAA"
    )
        port map (
      I0 => \reg_control_reg_n_0_[23]\,
      I1 => reg_width(23),
      I2 => reg_height(23),
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(0),
      O => \s_axi_rdata[23]_INST_0_i_1_n_0\
    );
\s_axi_rdata[24]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \s_axi_rdata[24]_INST_0_i_1_n_0\,
      I1 => \s_axi_rdata[31]_INST_0_i_2_n_0\,
      I2 => reg_slice_id(24),
      I3 => \s_axi_rdata[31]_INST_0_i_3_n_0\,
      O => s_axi_rdata(24)
    );
\s_axi_rdata[24]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F000CCAA"
    )
        port map (
      I0 => \reg_control_reg_n_0_[24]\,
      I1 => reg_width(24),
      I2 => reg_height(24),
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(0),
      O => \s_axi_rdata[24]_INST_0_i_1_n_0\
    );
\s_axi_rdata[25]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \s_axi_rdata[25]_INST_0_i_1_n_0\,
      I1 => \s_axi_rdata[31]_INST_0_i_2_n_0\,
      I2 => reg_slice_id(25),
      I3 => \s_axi_rdata[31]_INST_0_i_3_n_0\,
      O => s_axi_rdata(25)
    );
\s_axi_rdata[25]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F000CCAA"
    )
        port map (
      I0 => \reg_control_reg_n_0_[25]\,
      I1 => reg_width(25),
      I2 => reg_height(25),
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(0),
      O => \s_axi_rdata[25]_INST_0_i_1_n_0\
    );
\s_axi_rdata[26]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \s_axi_rdata[26]_INST_0_i_1_n_0\,
      I1 => \s_axi_rdata[31]_INST_0_i_2_n_0\,
      I2 => reg_slice_id(26),
      I3 => \s_axi_rdata[31]_INST_0_i_3_n_0\,
      O => s_axi_rdata(26)
    );
\s_axi_rdata[26]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F000CCAA"
    )
        port map (
      I0 => \reg_control_reg_n_0_[26]\,
      I1 => reg_width(26),
      I2 => reg_height(26),
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(0),
      O => \s_axi_rdata[26]_INST_0_i_1_n_0\
    );
\s_axi_rdata[27]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \s_axi_rdata[27]_INST_0_i_1_n_0\,
      I1 => \s_axi_rdata[31]_INST_0_i_2_n_0\,
      I2 => reg_slice_id(27),
      I3 => \s_axi_rdata[31]_INST_0_i_3_n_0\,
      O => s_axi_rdata(27)
    );
\s_axi_rdata[27]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F000CCAA"
    )
        port map (
      I0 => \reg_control_reg_n_0_[27]\,
      I1 => reg_width(27),
      I2 => reg_height(27),
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(0),
      O => \s_axi_rdata[27]_INST_0_i_1_n_0\
    );
\s_axi_rdata[28]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \s_axi_rdata[28]_INST_0_i_1_n_0\,
      I1 => \s_axi_rdata[31]_INST_0_i_2_n_0\,
      I2 => reg_slice_id(28),
      I3 => \s_axi_rdata[31]_INST_0_i_3_n_0\,
      O => s_axi_rdata(28)
    );
\s_axi_rdata[28]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F000CCAA"
    )
        port map (
      I0 => \reg_control_reg_n_0_[28]\,
      I1 => reg_width(28),
      I2 => reg_height(28),
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(0),
      O => \s_axi_rdata[28]_INST_0_i_1_n_0\
    );
\s_axi_rdata[29]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \s_axi_rdata[29]_INST_0_i_1_n_0\,
      I1 => \s_axi_rdata[31]_INST_0_i_2_n_0\,
      I2 => reg_slice_id(29),
      I3 => \s_axi_rdata[31]_INST_0_i_3_n_0\,
      O => s_axi_rdata(29)
    );
\s_axi_rdata[29]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F000CCAA"
    )
        port map (
      I0 => \reg_control_reg_n_0_[29]\,
      I1 => reg_width(29),
      I2 => reg_height(29),
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(0),
      O => \s_axi_rdata[29]_INST_0_i_1_n_0\
    );
\s_axi_rdata[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \s_axi_rdata[2]_INST_0_i_1_n_0\,
      I1 => \s_axi_rdata[31]_INST_0_i_2_n_0\,
      I2 => reg_slice_id(2),
      I3 => \s_axi_rdata[31]_INST_0_i_3_n_0\,
      O => s_axi_rdata(2)
    );
\s_axi_rdata[2]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F000CCAA"
    )
        port map (
      I0 => \reg_control_reg_n_0_[2]\,
      I1 => reg_width(2),
      I2 => reg_height(2),
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(0),
      O => \s_axi_rdata[2]_INST_0_i_1_n_0\
    );
\s_axi_rdata[30]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \s_axi_rdata[30]_INST_0_i_1_n_0\,
      I1 => \s_axi_rdata[31]_INST_0_i_2_n_0\,
      I2 => reg_slice_id(30),
      I3 => \s_axi_rdata[31]_INST_0_i_3_n_0\,
      O => s_axi_rdata(30)
    );
\s_axi_rdata[30]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F000CCAA"
    )
        port map (
      I0 => \reg_control_reg_n_0_[30]\,
      I1 => reg_width(30),
      I2 => reg_height(30),
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(0),
      O => \s_axi_rdata[30]_INST_0_i_1_n_0\
    );
\s_axi_rdata[31]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \s_axi_rdata[31]_INST_0_i_1_n_0\,
      I1 => \s_axi_rdata[31]_INST_0_i_2_n_0\,
      I2 => reg_slice_id(31),
      I3 => \s_axi_rdata[31]_INST_0_i_3_n_0\,
      O => s_axi_rdata(31)
    );
\s_axi_rdata[31]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F000CCAA"
    )
        port map (
      I0 => \reg_control_reg_n_0_[31]\,
      I1 => reg_width(31),
      I2 => reg_height(31),
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(0),
      O => \s_axi_rdata[31]_INST_0_i_1_n_0\
    );
\s_axi_rdata[31]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => s_axi_araddr(3),
      I1 => s_axi_araddr(4),
      I2 => s_axi_araddr(5),
      I3 => s_axi_araddr(2),
      O => \s_axi_rdata[31]_INST_0_i_2_n_0\
    );
\s_axi_rdata[31]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => s_axi_araddr(3),
      I1 => s_axi_araddr(4),
      I2 => s_axi_araddr(5),
      I3 => s_axi_araddr(2),
      I4 => s_axi_araddr(0),
      I5 => s_axi_araddr(1),
      O => \s_axi_rdata[31]_INST_0_i_3_n_0\
    );
\s_axi_rdata[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \s_axi_rdata[3]_INST_0_i_1_n_0\,
      I1 => \s_axi_rdata[31]_INST_0_i_2_n_0\,
      I2 => reg_slice_id(3),
      I3 => \s_axi_rdata[31]_INST_0_i_3_n_0\,
      O => s_axi_rdata(3)
    );
\s_axi_rdata[3]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F000CCAA"
    )
        port map (
      I0 => \reg_control_reg_n_0_[3]\,
      I1 => reg_width(3),
      I2 => reg_height(3),
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(0),
      O => \s_axi_rdata[3]_INST_0_i_1_n_0\
    );
\s_axi_rdata[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \s_axi_rdata[4]_INST_0_i_1_n_0\,
      I1 => \s_axi_rdata[31]_INST_0_i_2_n_0\,
      I2 => reg_slice_id(4),
      I3 => \s_axi_rdata[31]_INST_0_i_3_n_0\,
      O => s_axi_rdata(4)
    );
\s_axi_rdata[4]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F000CCAA"
    )
        port map (
      I0 => \reg_control_reg_n_0_[4]\,
      I1 => reg_width(4),
      I2 => reg_height(4),
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(0),
      O => \s_axi_rdata[4]_INST_0_i_1_n_0\
    );
\s_axi_rdata[5]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \s_axi_rdata[5]_INST_0_i_1_n_0\,
      I1 => \s_axi_rdata[31]_INST_0_i_2_n_0\,
      I2 => reg_slice_id(5),
      I3 => \s_axi_rdata[31]_INST_0_i_3_n_0\,
      O => s_axi_rdata(5)
    );
\s_axi_rdata[5]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F000CCAA"
    )
        port map (
      I0 => \reg_control_reg_n_0_[5]\,
      I1 => reg_width(5),
      I2 => reg_height(5),
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(0),
      O => \s_axi_rdata[5]_INST_0_i_1_n_0\
    );
\s_axi_rdata[6]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \s_axi_rdata[6]_INST_0_i_1_n_0\,
      I1 => \s_axi_rdata[31]_INST_0_i_2_n_0\,
      I2 => reg_slice_id(6),
      I3 => \s_axi_rdata[31]_INST_0_i_3_n_0\,
      O => s_axi_rdata(6)
    );
\s_axi_rdata[6]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F000CCAA"
    )
        port map (
      I0 => \reg_control_reg_n_0_[6]\,
      I1 => reg_width(6),
      I2 => reg_height(6),
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(0),
      O => \s_axi_rdata[6]_INST_0_i_1_n_0\
    );
\s_axi_rdata[7]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \s_axi_rdata[7]_INST_0_i_1_n_0\,
      I1 => \s_axi_rdata[31]_INST_0_i_2_n_0\,
      I2 => reg_slice_id(7),
      I3 => \s_axi_rdata[31]_INST_0_i_3_n_0\,
      O => s_axi_rdata(7)
    );
\s_axi_rdata[7]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F000CCAA"
    )
        port map (
      I0 => \reg_control_reg_n_0_[7]\,
      I1 => reg_width(7),
      I2 => reg_height(7),
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(0),
      O => \s_axi_rdata[7]_INST_0_i_1_n_0\
    );
\s_axi_rdata[8]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \s_axi_rdata[8]_INST_0_i_1_n_0\,
      I1 => \s_axi_rdata[31]_INST_0_i_2_n_0\,
      I2 => reg_slice_id(8),
      I3 => \s_axi_rdata[31]_INST_0_i_3_n_0\,
      O => s_axi_rdata(8)
    );
\s_axi_rdata[8]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F000CCAA"
    )
        port map (
      I0 => \reg_control_reg_n_0_[8]\,
      I1 => reg_width(8),
      I2 => reg_height(8),
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(0),
      O => \s_axi_rdata[8]_INST_0_i_1_n_0\
    );
\s_axi_rdata[9]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \s_axi_rdata[9]_INST_0_i_1_n_0\,
      I1 => \s_axi_rdata[31]_INST_0_i_2_n_0\,
      I2 => reg_slice_id(9),
      I3 => \s_axi_rdata[31]_INST_0_i_3_n_0\,
      O => s_axi_rdata(9)
    );
\s_axi_rdata[9]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F000CCAA"
    )
        port map (
      I0 => \reg_control_reg_n_0_[9]\,
      I1 => reg_width(9),
      I2 => reg_height(9),
      I3 => s_axi_araddr(1),
      I4 => s_axi_araddr(0),
      O => \s_axi_rdata[9]_INST_0_i_1_n_0\
    );
s_axis_tready_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \^out_valid_reg_reg_0\,
      I1 => proc_state(0),
      I2 => proc_state(1),
      I3 => proc_state26_in,
      O => s_axis_tready
    );
s_axis_tready_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \unpack_bits_left_reg_n_0_[1]\,
      I1 => \unpack_bits_left_reg_n_0_[0]\,
      I2 => \unpack_bits_left_reg_n_0_[4]\,
      I3 => \unpack_bits_left_reg_n_0_[5]\,
      I4 => \unpack_bits_left_reg_n_0_[2]\,
      I5 => \unpack_bits_left_reg_n_0_[3]\,
      O => proc_state26_in
    );
\unpack_bits_left[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \out_data_reg[17]_i_4_n_0\,
      I1 => \unpack_bits_left_reg_n_0_[0]\,
      O => \unpack_bits_left[0]_i_1_n_0\
    );
\unpack_bits_left[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => \out_data_reg[17]_i_4_n_0\,
      I1 => \unpack_bits_left_reg_n_0_[1]\,
      I2 => \unpack_bits_left_reg_n_0_[0]\,
      O => \unpack_bits_left[1]_i_1_n_0\
    );
\unpack_bits_left[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8882"
    )
        port map (
      I0 => \out_data_reg[17]_i_4_n_0\,
      I1 => \unpack_bits_left_reg_n_0_[2]\,
      I2 => \unpack_bits_left_reg_n_0_[1]\,
      I3 => \unpack_bits_left_reg_n_0_[0]\,
      O => \unpack_bits_left[2]_i_1_n_0\
    );
\unpack_bits_left[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888882"
    )
        port map (
      I0 => \out_data_reg[17]_i_4_n_0\,
      I1 => \unpack_bits_left_reg_n_0_[3]\,
      I2 => \unpack_bits_left_reg_n_0_[0]\,
      I3 => \unpack_bits_left_reg_n_0_[1]\,
      I4 => \unpack_bits_left_reg_n_0_[2]\,
      O => \unpack_bits_left[3]_i_1_n_0\
    );
\unpack_bits_left[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888888882"
    )
        port map (
      I0 => \out_data_reg[17]_i_4_n_0\,
      I1 => \unpack_bits_left_reg_n_0_[4]\,
      I2 => \unpack_bits_left_reg_n_0_[2]\,
      I3 => \unpack_bits_left_reg_n_0_[1]\,
      I4 => \unpack_bits_left_reg_n_0_[0]\,
      I5 => \unpack_bits_left_reg_n_0_[3]\,
      O => \unpack_bits_left[4]_i_1_n_0\
    );
\unpack_bits_left[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000054FF5400"
    )
        port map (
      I0 => \^out_valid_reg_reg_0\,
      I1 => proc_state26_in,
      I2 => s_axis_tvalid,
      I3 => proc_state(0),
      I4 => \reg_control_reg_n_0_[0]\,
      I5 => proc_state(1),
      O => unpack_bits_left
    );
\unpack_bits_left[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F700"
    )
        port map (
      I0 => \unpack_bits_left[5]_i_3_n_0\,
      I1 => proc_state26_in,
      I2 => \^out_valid_reg_reg_0\,
      I3 => proc_state(0),
      O => \unpack_bits_left[5]_i_2_n_0\
    );
\unpack_bits_left[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFE"
    )
        port map (
      I0 => \unpack_bits_left_reg_n_0_[4]\,
      I1 => \unpack_bits_left_reg_n_0_[2]\,
      I2 => \unpack_bits_left_reg_n_0_[1]\,
      I3 => \unpack_bits_left_reg_n_0_[0]\,
      I4 => \unpack_bits_left_reg_n_0_[3]\,
      I5 => \unpack_bits_left_reg_n_0_[5]\,
      O => \unpack_bits_left[5]_i_3_n_0\
    );
\unpack_bits_left_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => unpack_bits_left,
      D => \unpack_bits_left[0]_i_1_n_0\,
      Q => \unpack_bits_left_reg_n_0_[0]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\unpack_bits_left_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => unpack_bits_left,
      D => \unpack_bits_left[1]_i_1_n_0\,
      Q => \unpack_bits_left_reg_n_0_[1]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\unpack_bits_left_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => unpack_bits_left,
      D => \unpack_bits_left[2]_i_1_n_0\,
      Q => \unpack_bits_left_reg_n_0_[2]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\unpack_bits_left_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => unpack_bits_left,
      D => \unpack_bits_left[3]_i_1_n_0\,
      Q => \unpack_bits_left_reg_n_0_[3]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\unpack_bits_left_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => unpack_bits_left,
      D => \unpack_bits_left[4]_i_1_n_0\,
      Q => \unpack_bits_left_reg_n_0_[4]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\unpack_bits_left_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => unpack_bits_left,
      D => \unpack_bits_left[5]_i_2_n_0\,
      Q => \unpack_bits_left_reg_n_0_[5]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\unpack_shift_reg[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040000"
    )
        port map (
      I0 => \^out_valid_reg_reg_0\,
      I1 => proc_state(0),
      I2 => proc_state(1),
      I3 => proc_state26_in,
      I4 => s_axis_tvalid,
      O => unpack_shift_reg
    );
\unpack_shift_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => unpack_shift_reg,
      D => s_axis_tdata(0),
      Q => \unpack_shift_reg_reg_n_0_[0]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\unpack_shift_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => unpack_shift_reg,
      D => s_axis_tdata(10),
      Q => \unpack_shift_reg_reg_n_0_[10]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\unpack_shift_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => unpack_shift_reg,
      D => s_axis_tdata(11),
      Q => \unpack_shift_reg_reg_n_0_[11]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\unpack_shift_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => unpack_shift_reg,
      D => s_axis_tdata(12),
      Q => \unpack_shift_reg_reg_n_0_[12]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\unpack_shift_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => unpack_shift_reg,
      D => s_axis_tdata(13),
      Q => \unpack_shift_reg_reg_n_0_[13]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\unpack_shift_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => unpack_shift_reg,
      D => s_axis_tdata(14),
      Q => \unpack_shift_reg_reg_n_0_[14]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\unpack_shift_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => unpack_shift_reg,
      D => s_axis_tdata(15),
      Q => \unpack_shift_reg_reg_n_0_[15]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\unpack_shift_reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => unpack_shift_reg,
      D => s_axis_tdata(16),
      Q => \unpack_shift_reg_reg_n_0_[16]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\unpack_shift_reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => unpack_shift_reg,
      D => s_axis_tdata(17),
      Q => \unpack_shift_reg_reg_n_0_[17]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\unpack_shift_reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => unpack_shift_reg,
      D => s_axis_tdata(18),
      Q => \unpack_shift_reg_reg_n_0_[18]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\unpack_shift_reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => unpack_shift_reg,
      D => s_axis_tdata(19),
      Q => \unpack_shift_reg_reg_n_0_[19]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\unpack_shift_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => unpack_shift_reg,
      D => s_axis_tdata(1),
      Q => \unpack_shift_reg_reg_n_0_[1]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\unpack_shift_reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => unpack_shift_reg,
      D => s_axis_tdata(20),
      Q => \unpack_shift_reg_reg_n_0_[20]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\unpack_shift_reg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => unpack_shift_reg,
      D => s_axis_tdata(21),
      Q => \unpack_shift_reg_reg_n_0_[21]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\unpack_shift_reg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => unpack_shift_reg,
      D => s_axis_tdata(22),
      Q => \unpack_shift_reg_reg_n_0_[22]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\unpack_shift_reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => unpack_shift_reg,
      D => s_axis_tdata(23),
      Q => \unpack_shift_reg_reg_n_0_[23]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\unpack_shift_reg_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => unpack_shift_reg,
      D => s_axis_tdata(24),
      Q => \unpack_shift_reg_reg_n_0_[24]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\unpack_shift_reg_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => unpack_shift_reg,
      D => s_axis_tdata(25),
      Q => \unpack_shift_reg_reg_n_0_[25]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\unpack_shift_reg_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => unpack_shift_reg,
      D => s_axis_tdata(26),
      Q => \unpack_shift_reg_reg_n_0_[26]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\unpack_shift_reg_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => unpack_shift_reg,
      D => s_axis_tdata(27),
      Q => \unpack_shift_reg_reg_n_0_[27]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\unpack_shift_reg_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => unpack_shift_reg,
      D => s_axis_tdata(28),
      Q => \unpack_shift_reg_reg_n_0_[28]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\unpack_shift_reg_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => unpack_shift_reg,
      D => s_axis_tdata(29),
      Q => \unpack_shift_reg_reg_n_0_[29]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\unpack_shift_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => unpack_shift_reg,
      D => s_axis_tdata(2),
      Q => \unpack_shift_reg_reg_n_0_[2]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\unpack_shift_reg_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => unpack_shift_reg,
      D => s_axis_tdata(30),
      Q => \unpack_shift_reg_reg_n_0_[30]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\unpack_shift_reg_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => unpack_shift_reg,
      D => s_axis_tdata(31),
      Q => \unpack_shift_reg_reg_n_0_[31]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\unpack_shift_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => unpack_shift_reg,
      D => s_axis_tdata(3),
      Q => \unpack_shift_reg_reg_n_0_[3]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\unpack_shift_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => unpack_shift_reg,
      D => s_axis_tdata(4),
      Q => \unpack_shift_reg_reg_n_0_[4]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\unpack_shift_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => unpack_shift_reg,
      D => s_axis_tdata(5),
      Q => \unpack_shift_reg_reg_n_0_[5]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\unpack_shift_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => unpack_shift_reg,
      D => s_axis_tdata(6),
      Q => \unpack_shift_reg_reg_n_0_[6]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\unpack_shift_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => unpack_shift_reg,
      D => s_axis_tdata(7),
      Q => \unpack_shift_reg_reg_n_0_[7]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\unpack_shift_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => unpack_shift_reg,
      D => s_axis_tdata(8),
      Q => \unpack_shift_reg_reg_n_0_[8]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\unpack_shift_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => unpack_shift_reg,
      D => s_axis_tdata(9),
      Q => \unpack_shift_reg_reg_n_0_[9]\,
      R => \out_data_reg[17]_i_1_n_0\
    );
\width_u_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => '1',
      D => reg_width(0),
      Q => width_u(0),
      R => \out_data_reg[17]_i_1_n_0\
    );
\width_u_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => '1',
      D => reg_width(10),
      Q => width_u(10),
      R => \out_data_reg[17]_i_1_n_0\
    );
\width_u_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => '1',
      D => reg_width(11),
      Q => width_u(11),
      R => \out_data_reg[17]_i_1_n_0\
    );
\width_u_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => '1',
      D => reg_width(12),
      Q => width_u(12),
      R => \out_data_reg[17]_i_1_n_0\
    );
\width_u_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => '1',
      D => reg_width(13),
      Q => width_u(13),
      R => \out_data_reg[17]_i_1_n_0\
    );
\width_u_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => '1',
      D => reg_width(14),
      Q => width_u(14),
      R => \out_data_reg[17]_i_1_n_0\
    );
\width_u_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => '1',
      D => reg_width(15),
      Q => width_u(15),
      R => \out_data_reg[17]_i_1_n_0\
    );
\width_u_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => '1',
      D => reg_width(16),
      Q => width_u(16),
      R => \out_data_reg[17]_i_1_n_0\
    );
\width_u_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => '1',
      D => reg_width(17),
      Q => width_u(17),
      R => \out_data_reg[17]_i_1_n_0\
    );
\width_u_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => '1',
      D => reg_width(18),
      Q => width_u(18),
      R => \out_data_reg[17]_i_1_n_0\
    );
\width_u_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => '1',
      D => reg_width(19),
      Q => width_u(19),
      R => \out_data_reg[17]_i_1_n_0\
    );
\width_u_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => '1',
      D => reg_width(1),
      Q => width_u(1),
      R => \out_data_reg[17]_i_1_n_0\
    );
\width_u_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => '1',
      D => reg_width(20),
      Q => width_u(20),
      R => \out_data_reg[17]_i_1_n_0\
    );
\width_u_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => '1',
      D => reg_width(21),
      Q => width_u(21),
      R => \out_data_reg[17]_i_1_n_0\
    );
\width_u_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => '1',
      D => reg_width(22),
      Q => width_u(22),
      R => \out_data_reg[17]_i_1_n_0\
    );
\width_u_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => '1',
      D => reg_width(23),
      Q => width_u(23),
      R => \out_data_reg[17]_i_1_n_0\
    );
\width_u_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => '1',
      D => reg_width(24),
      Q => width_u(24),
      R => \out_data_reg[17]_i_1_n_0\
    );
\width_u_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => '1',
      D => reg_width(25),
      Q => width_u(25),
      R => \out_data_reg[17]_i_1_n_0\
    );
\width_u_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => '1',
      D => reg_width(26),
      Q => width_u(26),
      R => \out_data_reg[17]_i_1_n_0\
    );
\width_u_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => '1',
      D => reg_width(27),
      Q => width_u(27),
      R => \out_data_reg[17]_i_1_n_0\
    );
\width_u_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => '1',
      D => reg_width(28),
      Q => width_u(28),
      R => \out_data_reg[17]_i_1_n_0\
    );
\width_u_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => '1',
      D => reg_width(29),
      Q => width_u(29),
      R => \out_data_reg[17]_i_1_n_0\
    );
\width_u_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => '1',
      D => reg_width(2),
      Q => width_u(2),
      R => \out_data_reg[17]_i_1_n_0\
    );
\width_u_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => '1',
      D => reg_width(30),
      Q => width_u(30),
      R => \out_data_reg[17]_i_1_n_0\
    );
\width_u_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => '1',
      D => reg_width(31),
      Q => width_u(31),
      R => \out_data_reg[17]_i_1_n_0\
    );
\width_u_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => '1',
      D => reg_width(3),
      Q => width_u(3),
      R => \out_data_reg[17]_i_1_n_0\
    );
\width_u_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => '1',
      D => reg_width(4),
      Q => width_u(4),
      R => \out_data_reg[17]_i_1_n_0\
    );
\width_u_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => '1',
      D => reg_width(5),
      Q => width_u(5),
      R => \out_data_reg[17]_i_1_n_0\
    );
\width_u_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => '1',
      D => reg_width(6),
      Q => width_u(6),
      R => \out_data_reg[17]_i_1_n_0\
    );
\width_u_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => '1',
      D => reg_width(7),
      Q => width_u(7),
      R => \out_data_reg[17]_i_1_n_0\
    );
\width_u_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => '1',
      D => reg_width(8),
      Q => width_u(8),
      R => \out_data_reg[17]_i_1_n_0\
    );
\width_u_reg[9]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclkrst_clk,
      CE => '1',
      D => reg_width(9),
      Q => width_u(9),
      S => \out_data_reg[17]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ccl_slice_core_2_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_ccl_slice_core_2_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_ccl_slice_core_2_0 : entity is "design_1_ccl_slice_core_2_0,ccl_slice_core,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_ccl_slice_core_2_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_ccl_slice_core_2_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_ccl_slice_core_2_0 : entity is "ccl_slice_core,Vivado 2024.1";
end design_1_ccl_slice_core_2_0;

architecture STRUCTURE of design_1_ccl_slice_core_2_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^m_axis_tdata\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of aclkrst_clk : signal is "xilinx.com:signal:clock:1.0 aclkrst_clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of aclkrst_clk : signal is "XIL_INTERFACENAME aclkrst_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of m_axi_lut_arready : signal is "xilinx.com:interface:aximm:1.0 m_axi_lut ARREADY";
  attribute x_interface_info of m_axi_lut_arvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi_lut ARVALID";
  attribute x_interface_info of m_axi_lut_awready : signal is "xilinx.com:interface:aximm:1.0 m_axi_lut AWREADY";
  attribute x_interface_info of m_axi_lut_awvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi_lut AWVALID";
  attribute x_interface_info of m_axi_lut_bready : signal is "xilinx.com:interface:aximm:1.0 m_axi_lut BREADY";
  attribute x_interface_info of m_axi_lut_bvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi_lut BVALID";
  attribute x_interface_info of m_axi_lut_rready : signal is "xilinx.com:interface:aximm:1.0 m_axi_lut RREADY";
  attribute x_interface_info of m_axi_lut_rvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi_lut RVALID";
  attribute x_interface_info of m_axi_lut_wready : signal is "xilinx.com:interface:aximm:1.0 m_axi_lut WREADY";
  attribute x_interface_info of m_axi_lut_wvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi_lut WVALID";
  attribute x_interface_info of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis TLAST";
  attribute x_interface_info of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 m_axis TREADY";
  attribute x_interface_info of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute x_interface_info of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 s_axi ARREADY";
  attribute x_interface_info of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi ARVALID";
  attribute x_interface_info of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 s_axi AWREADY";
  attribute x_interface_info of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi AWVALID";
  attribute x_interface_info of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 s_axi BREADY";
  attribute x_interface_info of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi BVALID";
  attribute x_interface_info of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 s_axi RREADY";
  attribute x_interface_info of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi RVALID";
  attribute x_interface_info of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 s_axi WREADY";
  attribute x_interface_info of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi WVALID";
  attribute x_interface_info of s_axis_tlast : signal is "xilinx.com:interface:axis:1.0 s_axis TLAST";
  attribute x_interface_info of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 s_axis TREADY";
  attribute x_interface_info of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis TVALID";
  attribute x_interface_info of m_axi_lut_araddr : signal is "xilinx.com:interface:aximm:1.0 m_axi_lut ARADDR";
  attribute x_interface_info of m_axi_lut_awaddr : signal is "xilinx.com:interface:aximm:1.0 m_axi_lut AWADDR";
  attribute x_interface_parameter of m_axi_lut_awaddr : signal is "XIL_INTERFACENAME m_axi_lut, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 0, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of m_axi_lut_bresp : signal is "xilinx.com:interface:aximm:1.0 m_axi_lut BRESP";
  attribute x_interface_info of m_axi_lut_rdata : signal is "xilinx.com:interface:aximm:1.0 m_axi_lut RDATA";
  attribute x_interface_info of m_axi_lut_wdata : signal is "xilinx.com:interface:aximm:1.0 m_axi_lut WDATA";
  attribute x_interface_info of m_axi_lut_wstrb : signal is "xilinx.com:interface:aximm:1.0 m_axi_lut WSTRB";
  attribute x_interface_info of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
  attribute x_interface_parameter of m_axis_tdata : signal is "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 s_axi ARADDR";
  attribute x_interface_info of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 s_axi AWADDR";
  attribute x_interface_parameter of s_axi_awaddr : signal is "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 s_axi BRESP";
  attribute x_interface_info of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute x_interface_info of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 s_axi RRESP";
  attribute x_interface_info of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 s_axi WDATA";
  attribute x_interface_info of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 s_axi WSTRB";
  attribute x_interface_info of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
  attribute x_interface_parameter of s_axis_tdata : signal is "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0";
begin
  m_axi_lut_araddr(31) <= \<const0>\;
  m_axi_lut_araddr(30) <= \<const0>\;
  m_axi_lut_araddr(29) <= \<const0>\;
  m_axi_lut_araddr(28) <= \<const0>\;
  m_axi_lut_araddr(27) <= \<const0>\;
  m_axi_lut_araddr(26) <= \<const0>\;
  m_axi_lut_araddr(25) <= \<const0>\;
  m_axi_lut_araddr(24) <= \<const0>\;
  m_axi_lut_araddr(23) <= \<const0>\;
  m_axi_lut_araddr(22) <= \<const0>\;
  m_axi_lut_araddr(21) <= \<const0>\;
  m_axi_lut_araddr(20) <= \<const0>\;
  m_axi_lut_araddr(19) <= \<const0>\;
  m_axi_lut_araddr(18) <= \<const0>\;
  m_axi_lut_araddr(17) <= \<const0>\;
  m_axi_lut_araddr(16) <= \<const0>\;
  m_axi_lut_araddr(15) <= \<const0>\;
  m_axi_lut_araddr(14) <= \<const0>\;
  m_axi_lut_araddr(13) <= \<const0>\;
  m_axi_lut_araddr(12) <= \<const0>\;
  m_axi_lut_araddr(11) <= \<const0>\;
  m_axi_lut_araddr(10) <= \<const0>\;
  m_axi_lut_araddr(9) <= \<const0>\;
  m_axi_lut_araddr(8) <= \<const0>\;
  m_axi_lut_araddr(7) <= \<const0>\;
  m_axi_lut_araddr(6) <= \<const0>\;
  m_axi_lut_araddr(5) <= \<const0>\;
  m_axi_lut_araddr(4) <= \<const0>\;
  m_axi_lut_araddr(3) <= \<const0>\;
  m_axi_lut_araddr(2) <= \<const0>\;
  m_axi_lut_araddr(1) <= \<const0>\;
  m_axi_lut_araddr(0) <= \<const0>\;
  m_axi_lut_arvalid <= \<const0>\;
  m_axi_lut_awaddr(31) <= \<const0>\;
  m_axi_lut_awaddr(30) <= \<const0>\;
  m_axi_lut_awaddr(29) <= \<const0>\;
  m_axi_lut_awaddr(28) <= \<const0>\;
  m_axi_lut_awaddr(27) <= \<const0>\;
  m_axi_lut_awaddr(26) <= \<const0>\;
  m_axi_lut_awaddr(25) <= \<const0>\;
  m_axi_lut_awaddr(24) <= \<const0>\;
  m_axi_lut_awaddr(23) <= \<const0>\;
  m_axi_lut_awaddr(22) <= \<const0>\;
  m_axi_lut_awaddr(21) <= \<const0>\;
  m_axi_lut_awaddr(20) <= \<const0>\;
  m_axi_lut_awaddr(19) <= \<const0>\;
  m_axi_lut_awaddr(18) <= \<const0>\;
  m_axi_lut_awaddr(17) <= \<const0>\;
  m_axi_lut_awaddr(16) <= \<const0>\;
  m_axi_lut_awaddr(15) <= \<const0>\;
  m_axi_lut_awaddr(14) <= \<const0>\;
  m_axi_lut_awaddr(13) <= \<const0>\;
  m_axi_lut_awaddr(12) <= \<const0>\;
  m_axi_lut_awaddr(11) <= \<const0>\;
  m_axi_lut_awaddr(10) <= \<const0>\;
  m_axi_lut_awaddr(9) <= \<const0>\;
  m_axi_lut_awaddr(8) <= \<const0>\;
  m_axi_lut_awaddr(7) <= \<const0>\;
  m_axi_lut_awaddr(6) <= \<const0>\;
  m_axi_lut_awaddr(5) <= \<const0>\;
  m_axi_lut_awaddr(4) <= \<const0>\;
  m_axi_lut_awaddr(3) <= \<const0>\;
  m_axi_lut_awaddr(2) <= \<const0>\;
  m_axi_lut_awaddr(1) <= \<const0>\;
  m_axi_lut_awaddr(0) <= \<const0>\;
  m_axi_lut_awvalid <= \<const0>\;
  m_axi_lut_bready <= \<const1>\;
  m_axi_lut_rready <= \<const1>\;
  m_axi_lut_wdata(31) <= \<const0>\;
  m_axi_lut_wdata(30) <= \<const0>\;
  m_axi_lut_wdata(29) <= \<const0>\;
  m_axi_lut_wdata(28) <= \<const0>\;
  m_axi_lut_wdata(27) <= \<const0>\;
  m_axi_lut_wdata(26) <= \<const0>\;
  m_axi_lut_wdata(25) <= \<const0>\;
  m_axi_lut_wdata(24) <= \<const0>\;
  m_axi_lut_wdata(23) <= \<const0>\;
  m_axi_lut_wdata(22) <= \<const0>\;
  m_axi_lut_wdata(21) <= \<const0>\;
  m_axi_lut_wdata(20) <= \<const0>\;
  m_axi_lut_wdata(19) <= \<const0>\;
  m_axi_lut_wdata(18) <= \<const0>\;
  m_axi_lut_wdata(17) <= \<const0>\;
  m_axi_lut_wdata(16) <= \<const0>\;
  m_axi_lut_wdata(15) <= \<const0>\;
  m_axi_lut_wdata(14) <= \<const0>\;
  m_axi_lut_wdata(13) <= \<const0>\;
  m_axi_lut_wdata(12) <= \<const0>\;
  m_axi_lut_wdata(11) <= \<const0>\;
  m_axi_lut_wdata(10) <= \<const0>\;
  m_axi_lut_wdata(9) <= \<const0>\;
  m_axi_lut_wdata(8) <= \<const0>\;
  m_axi_lut_wdata(7) <= \<const0>\;
  m_axi_lut_wdata(6) <= \<const0>\;
  m_axi_lut_wdata(5) <= \<const0>\;
  m_axi_lut_wdata(4) <= \<const0>\;
  m_axi_lut_wdata(3) <= \<const0>\;
  m_axi_lut_wdata(2) <= \<const0>\;
  m_axi_lut_wdata(1) <= \<const0>\;
  m_axi_lut_wdata(0) <= \<const0>\;
  m_axi_lut_wstrb(3) <= \<const0>\;
  m_axi_lut_wstrb(2) <= \<const0>\;
  m_axi_lut_wstrb(1) <= \<const0>\;
  m_axi_lut_wstrb(0) <= \<const0>\;
  m_axi_lut_wvalid <= \<const0>\;
  m_axis_tdata(31) <= \<const0>\;
  m_axis_tdata(30) <= \<const0>\;
  m_axis_tdata(29) <= \<const0>\;
  m_axis_tdata(28) <= \<const0>\;
  m_axis_tdata(27) <= \<const0>\;
  m_axis_tdata(26) <= \<const0>\;
  m_axis_tdata(25) <= \<const0>\;
  m_axis_tdata(24) <= \<const0>\;
  m_axis_tdata(23) <= \<const0>\;
  m_axis_tdata(22) <= \<const0>\;
  m_axis_tdata(21) <= \<const0>\;
  m_axis_tdata(20) <= \<const0>\;
  m_axis_tdata(19) <= \<const0>\;
  m_axis_tdata(18) <= \<const0>\;
  m_axis_tdata(17 downto 0) <= \^m_axis_tdata\(17 downto 0);
  s_axi_arready <= \<const1>\;
  s_axi_awready <= \<const1>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_bvalid <= \<const1>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_rvalid <= \<const1>\;
  s_axi_wready <= \<const1>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.design_1_ccl_slice_core_2_0_ccl_slice_core
     port map (
      aclkrst_clk => aclkrst_clk,
      aclkrst_n => aclkrst_n,
      irq_done => irq_done,
      m_axis_tdata(17 downto 0) => \^m_axis_tdata\(17 downto 0),
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => m_axis_tready,
      out_valid_reg_reg_0 => m_axis_tvalid,
      s_axi_araddr(5 downto 0) => s_axi_araddr(7 downto 2),
      s_axi_awaddr(5 downto 0) => s_axi_awaddr(7 downto 2),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      s_axis_tdata(31 downto 0) => s_axis_tdata(31 downto 0),
      s_axis_tready => s_axis_tready,
      s_axis_tvalid => s_axis_tvalid
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
