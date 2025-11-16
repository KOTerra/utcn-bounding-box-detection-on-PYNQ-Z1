-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Sun Nov 16 12:35:55 2025
-- Host        : POWERSLAVE running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/FACULTATE/facultate/anul3/sem1/SSC/proiect/utcn-bounding-box-detection-on-PYNQ-Z1/PL/PL.gen/sources_1/bd/design_1/ip/design_1_ccl_relabel_core_0_0/design_1_ccl_relabel_core_0_0_sim_netlist.vhdl
-- Design      : design_1_ccl_relabel_core_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ccl_relabel_core_0_0_ccl_relabel_core is
  port (
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    irq_done : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    aclkrst_n : in STD_LOGIC;
    aclkrst_clk : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tready : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    slices_done : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_ccl_relabel_core_0_0_ccl_relabel_core : entity is "ccl_relabel_core";
end design_1_ccl_relabel_core_0_0_ccl_relabel_core;

architecture STRUCTURE of design_1_ccl_relabel_core_0_0_ccl_relabel_core is
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \^irq_done\ : STD_LOGIC;
  signal irq_done_reg_i_1_n_0 : STD_LOGIC;
  signal m_axis_tdata_int : STD_LOGIC;
  signal \m_axis_tdata_int[31]_i_1_n_0\ : STD_LOGIC;
  signal \^m_axis_tvalid\ : STD_LOGIC;
  signal m_axis_tvalid_int_i_1_n_0 : STD_LOGIC;
  signal m_axis_tvalid_int_i_2_n_0 : STD_LOGIC;
  signal \state1__0\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "wait_slices:001,running:010,done:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "wait_slices:001,running:010,done:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "wait_slices:001,running:010,done:100,";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of irq_done_reg_i_2 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of s_axis_tready_INST_0 : label is "soft_lutpair0";
begin
  irq_done <= \^irq_done\;
  m_axis_tvalid <= \^m_axis_tvalid\;
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00002AAAFFFFFFFF"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => s_axis_tlast,
      I3 => \state1__0\,
      I4 => \FSM_onehot_state[2]_i_2_n_0\,
      I5 => aclkrst_n,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAA002A00000000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => s_axis_tlast,
      I2 => \state1__0\,
      I3 => \FSM_onehot_state[2]_i_2_n_0\,
      I4 => \FSM_onehot_state_reg_n_0_[0]\,
      I5 => aclkrst_n,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCEAAA00000000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => s_axis_tlast,
      I3 => \state1__0\,
      I4 => \FSM_onehot_state[2]_i_2_n_0\,
      I5 => aclkrst_n,
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => slices_done(1),
      I2 => slices_done(0),
      I3 => slices_done(2),
      I4 => slices_done(3),
      O => \FSM_onehot_state[2]_i_2_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclkrst_clk,
      CE => '1',
      D => \FSM_onehot_state[0]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      R => '0'
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => '1',
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[1]\,
      R => '0'
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => '1',
      D => \FSM_onehot_state[2]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[2]\,
      R => '0'
    );
irq_done_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0C0EAAA00000000"
    )
        port map (
      I0 => \^irq_done\,
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => s_axis_tlast,
      I3 => \state1__0\,
      I4 => \FSM_onehot_state_reg_n_0_[0]\,
      I5 => aclkrst_n,
      O => irq_done_reg_i_1_n_0
    );
irq_done_reg_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => m_axis_tready,
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \state1__0\
    );
irq_done_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => '1',
      D => irq_done_reg_i_1_n_0,
      Q => \^irq_done\,
      R => '0'
    );
\m_axis_tdata_int[31]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aclkrst_n,
      O => \m_axis_tdata_int[31]_i_1_n_0\
    );
\m_axis_tdata_int[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => m_axis_tready,
      I2 => s_axis_tvalid,
      O => m_axis_tdata_int
    );
\m_axis_tdata_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => m_axis_tdata_int,
      D => s_axis_tdata(0),
      Q => m_axis_tdata(0),
      R => \m_axis_tdata_int[31]_i_1_n_0\
    );
\m_axis_tdata_int_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => m_axis_tdata_int,
      D => s_axis_tdata(10),
      Q => m_axis_tdata(10),
      R => \m_axis_tdata_int[31]_i_1_n_0\
    );
\m_axis_tdata_int_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => m_axis_tdata_int,
      D => s_axis_tdata(11),
      Q => m_axis_tdata(11),
      R => \m_axis_tdata_int[31]_i_1_n_0\
    );
\m_axis_tdata_int_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => m_axis_tdata_int,
      D => s_axis_tdata(12),
      Q => m_axis_tdata(12),
      R => \m_axis_tdata_int[31]_i_1_n_0\
    );
\m_axis_tdata_int_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => m_axis_tdata_int,
      D => s_axis_tdata(13),
      Q => m_axis_tdata(13),
      R => \m_axis_tdata_int[31]_i_1_n_0\
    );
\m_axis_tdata_int_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => m_axis_tdata_int,
      D => s_axis_tdata(14),
      Q => m_axis_tdata(14),
      R => \m_axis_tdata_int[31]_i_1_n_0\
    );
\m_axis_tdata_int_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => m_axis_tdata_int,
      D => s_axis_tdata(15),
      Q => m_axis_tdata(15),
      R => \m_axis_tdata_int[31]_i_1_n_0\
    );
\m_axis_tdata_int_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => m_axis_tdata_int,
      D => s_axis_tdata(16),
      Q => m_axis_tdata(16),
      R => \m_axis_tdata_int[31]_i_1_n_0\
    );
\m_axis_tdata_int_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => m_axis_tdata_int,
      D => s_axis_tdata(17),
      Q => m_axis_tdata(17),
      R => \m_axis_tdata_int[31]_i_1_n_0\
    );
\m_axis_tdata_int_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => m_axis_tdata_int,
      D => s_axis_tdata(18),
      Q => m_axis_tdata(18),
      R => \m_axis_tdata_int[31]_i_1_n_0\
    );
\m_axis_tdata_int_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => m_axis_tdata_int,
      D => s_axis_tdata(19),
      Q => m_axis_tdata(19),
      R => \m_axis_tdata_int[31]_i_1_n_0\
    );
\m_axis_tdata_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => m_axis_tdata_int,
      D => s_axis_tdata(1),
      Q => m_axis_tdata(1),
      R => \m_axis_tdata_int[31]_i_1_n_0\
    );
\m_axis_tdata_int_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => m_axis_tdata_int,
      D => s_axis_tdata(20),
      Q => m_axis_tdata(20),
      R => \m_axis_tdata_int[31]_i_1_n_0\
    );
\m_axis_tdata_int_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => m_axis_tdata_int,
      D => s_axis_tdata(21),
      Q => m_axis_tdata(21),
      R => \m_axis_tdata_int[31]_i_1_n_0\
    );
\m_axis_tdata_int_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => m_axis_tdata_int,
      D => s_axis_tdata(22),
      Q => m_axis_tdata(22),
      R => \m_axis_tdata_int[31]_i_1_n_0\
    );
\m_axis_tdata_int_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => m_axis_tdata_int,
      D => s_axis_tdata(23),
      Q => m_axis_tdata(23),
      R => \m_axis_tdata_int[31]_i_1_n_0\
    );
\m_axis_tdata_int_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => m_axis_tdata_int,
      D => s_axis_tdata(24),
      Q => m_axis_tdata(24),
      R => \m_axis_tdata_int[31]_i_1_n_0\
    );
\m_axis_tdata_int_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => m_axis_tdata_int,
      D => s_axis_tdata(25),
      Q => m_axis_tdata(25),
      R => \m_axis_tdata_int[31]_i_1_n_0\
    );
\m_axis_tdata_int_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => m_axis_tdata_int,
      D => s_axis_tdata(26),
      Q => m_axis_tdata(26),
      R => \m_axis_tdata_int[31]_i_1_n_0\
    );
\m_axis_tdata_int_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => m_axis_tdata_int,
      D => s_axis_tdata(27),
      Q => m_axis_tdata(27),
      R => \m_axis_tdata_int[31]_i_1_n_0\
    );
\m_axis_tdata_int_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => m_axis_tdata_int,
      D => s_axis_tdata(28),
      Q => m_axis_tdata(28),
      R => \m_axis_tdata_int[31]_i_1_n_0\
    );
\m_axis_tdata_int_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => m_axis_tdata_int,
      D => s_axis_tdata(29),
      Q => m_axis_tdata(29),
      R => \m_axis_tdata_int[31]_i_1_n_0\
    );
\m_axis_tdata_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => m_axis_tdata_int,
      D => s_axis_tdata(2),
      Q => m_axis_tdata(2),
      R => \m_axis_tdata_int[31]_i_1_n_0\
    );
\m_axis_tdata_int_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => m_axis_tdata_int,
      D => s_axis_tdata(30),
      Q => m_axis_tdata(30),
      R => \m_axis_tdata_int[31]_i_1_n_0\
    );
\m_axis_tdata_int_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => m_axis_tdata_int,
      D => s_axis_tdata(31),
      Q => m_axis_tdata(31),
      R => \m_axis_tdata_int[31]_i_1_n_0\
    );
\m_axis_tdata_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => m_axis_tdata_int,
      D => s_axis_tdata(3),
      Q => m_axis_tdata(3),
      R => \m_axis_tdata_int[31]_i_1_n_0\
    );
\m_axis_tdata_int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => m_axis_tdata_int,
      D => s_axis_tdata(4),
      Q => m_axis_tdata(4),
      R => \m_axis_tdata_int[31]_i_1_n_0\
    );
\m_axis_tdata_int_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => m_axis_tdata_int,
      D => s_axis_tdata(5),
      Q => m_axis_tdata(5),
      R => \m_axis_tdata_int[31]_i_1_n_0\
    );
\m_axis_tdata_int_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => m_axis_tdata_int,
      D => s_axis_tdata(6),
      Q => m_axis_tdata(6),
      R => \m_axis_tdata_int[31]_i_1_n_0\
    );
\m_axis_tdata_int_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => m_axis_tdata_int,
      D => s_axis_tdata(7),
      Q => m_axis_tdata(7),
      R => \m_axis_tdata_int[31]_i_1_n_0\
    );
\m_axis_tdata_int_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => m_axis_tdata_int,
      D => s_axis_tdata(8),
      Q => m_axis_tdata(8),
      R => \m_axis_tdata_int[31]_i_1_n_0\
    );
\m_axis_tdata_int_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => m_axis_tdata_int,
      D => s_axis_tdata(9),
      Q => m_axis_tdata(9),
      R => \m_axis_tdata_int[31]_i_1_n_0\
    );
m_axis_tvalid_int_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m_axis_tvalid_int_i_2_n_0,
      I1 => aclkrst_n,
      O => m_axis_tvalid_int_i_1_n_0
    );
m_axis_tvalid_int_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC000000DC105050"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => m_axis_tready,
      I2 => \^m_axis_tvalid\,
      I3 => s_axis_tvalid,
      I4 => \FSM_onehot_state_reg_n_0_[1]\,
      I5 => \FSM_onehot_state_reg_n_0_[2]\,
      O => m_axis_tvalid_int_i_2_n_0
    );
m_axis_tvalid_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclkrst_clk,
      CE => '1',
      D => m_axis_tvalid_int_i_1_n_0,
      Q => \^m_axis_tvalid\,
      R => '0'
    );
s_axis_tready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => m_axis_tready,
      O => s_axis_tready
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ccl_relabel_core_0_0 is
  port (
    aclkrst_clk : in STD_LOGIC;
    aclkrst_n : in STD_LOGIC;
    slices_done : in STD_LOGIC_VECTOR ( 3 downto 0 );
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
    m_axi_lut_rready : out STD_LOGIC;
    irq_done : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_ccl_relabel_core_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_ccl_relabel_core_0_0 : entity is "design_1_ccl_relabel_core_0_0,ccl_relabel_core,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_ccl_relabel_core_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_ccl_relabel_core_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_ccl_relabel_core_0_0 : entity is "ccl_relabel_core,Vivado 2024.1";
end design_1_ccl_relabel_core_0_0;

architecture STRUCTURE of design_1_ccl_relabel_core_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^s_axis_tlast\ : STD_LOGIC;
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
  \^s_axis_tlast\ <= s_axis_tlast;
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
  m_axis_tlast <= \^s_axis_tlast\;
  s_axi_arready <= \<const1>\;
  s_axi_awready <= \<const1>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_bvalid <= \<const1>\;
  s_axi_rdata(31) <= \<const0>\;
  s_axi_rdata(30) <= \<const0>\;
  s_axi_rdata(29) <= \<const0>\;
  s_axi_rdata(28) <= \<const0>\;
  s_axi_rdata(27) <= \<const0>\;
  s_axi_rdata(26) <= \<const0>\;
  s_axi_rdata(25) <= \<const0>\;
  s_axi_rdata(24) <= \<const0>\;
  s_axi_rdata(23) <= \<const0>\;
  s_axi_rdata(22) <= \<const0>\;
  s_axi_rdata(21) <= \<const0>\;
  s_axi_rdata(20) <= \<const0>\;
  s_axi_rdata(19) <= \<const0>\;
  s_axi_rdata(18) <= \<const0>\;
  s_axi_rdata(17) <= \<const0>\;
  s_axi_rdata(16) <= \<const0>\;
  s_axi_rdata(15) <= \<const0>\;
  s_axi_rdata(14) <= \<const0>\;
  s_axi_rdata(13) <= \<const0>\;
  s_axi_rdata(12) <= \<const0>\;
  s_axi_rdata(11) <= \<const0>\;
  s_axi_rdata(10) <= \<const0>\;
  s_axi_rdata(9) <= \<const0>\;
  s_axi_rdata(8) <= \<const0>\;
  s_axi_rdata(7) <= \<const0>\;
  s_axi_rdata(6) <= \<const0>\;
  s_axi_rdata(5) <= \<const0>\;
  s_axi_rdata(4) <= \<const0>\;
  s_axi_rdata(3) <= \<const0>\;
  s_axi_rdata(2) <= \<const0>\;
  s_axi_rdata(1) <= \<const0>\;
  s_axi_rdata(0) <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_rvalid <= \<const1>\;
  s_axi_wready <= \<const1>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.design_1_ccl_relabel_core_0_0_ccl_relabel_core
     port map (
      aclkrst_clk => aclkrst_clk,
      aclkrst_n => aclkrst_n,
      irq_done => irq_done,
      m_axis_tdata(31 downto 0) => m_axis_tdata(31 downto 0),
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => m_axis_tvalid,
      s_axis_tdata(31 downto 0) => s_axis_tdata(31 downto 0),
      s_axis_tlast => \^s_axis_tlast\,
      s_axis_tready => s_axis_tready,
      s_axis_tvalid => s_axis_tvalid,
      slices_done(3 downto 0) => slices_done(3 downto 0)
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
