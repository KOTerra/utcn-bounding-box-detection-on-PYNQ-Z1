transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/xil_defaultlib
vlib riviera/lib_cdc_v1_0_3
vlib riviera/proc_sys_reset_v5_0_15
vlib riviera/axi_bram_ctrl_v4_1_10

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib
vmap lib_cdc_v1_0_3 riviera/lib_cdc_v1_0_3
vmap proc_sys_reset_v5_0_15 riviera/proc_sys_reset_v5_0_15
vmap axi_bram_ctrl_v4_1_10 riviera/axi_bram_ctrl_v4_1_10

vlog -work xilinx_vip  -incr -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 "+incdir+X:/xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l axi_bram_ctrl_v4_1_10 \
"X:/xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"X:/xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"X:/xilinx/Vivado/2024.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"X:/xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"X:/xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"X:/xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"X:/xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"X:/xilinx/Vivado/2024.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"X:/xilinx/Vivado/2024.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 "+incdir+../../../../PL.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../PL.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../PL.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+X:/xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l axi_bram_ctrl_v4_1_10 \
"X:/xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"X:/xilinx/Vivado/2024.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"X:/xilinx/Vivado/2024.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"X:/xilinx/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_processing_system7_0_0_1/design_1_processing_system7_0_0_sim_netlist.vhdl" \
"../../../bd/design_1/ip/design_1_ccl_slice_core_0_0_1/sim/design_1_ccl_slice_core_0_0.vhd" \
"../../../bd/design_1/ip/design_1_ccl_slice_core_1_0_1/sim/design_1_ccl_slice_core_1_0.vhd" \
"../../../bd/design_1/ip/design_1_ccl_slice_core_2_0_1/sim/design_1_ccl_slice_core_2_0.vhd" \
"../../../bd/design_1/ip/design_1_ccl_slice_core_3_0_1/sim/design_1_ccl_slice_core_3_0.vhd" \
"../../../bd/design_1/ip/design_1_xbar_0_1/design_1_xbar_0_sim_netlist.vhdl" \

vcom -work lib_cdc_v1_0_3 -93  -incr \
"../../../../PL.gen/sources_1/bd/design_1/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_15 -93  -incr \
"../../../../PL.gen/sources_1/bd/design_1/ipshared/3a26/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_rst_ps7_0_100M_0_1/sim/design_1_rst_ps7_0_100M_0.vhd" \
"../../../bd/design_1/ip/design_1_axi_dma_0_0/design_1_axi_dma_0_0_sim_netlist.vhdl" \
"../../../bd/design_1/ip/design_1_xbar_1/design_1_xbar_1_sim_netlist.vhdl" \

vcom -work axi_bram_ctrl_v4_1_10 -93  -incr \
"../../../../PL.gen/sources_1/bd/design_1/ipshared/14fa/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_axi_bram_ctrl_0_0_1/sim/design_1_axi_bram_ctrl_0_0.vhd" \
"../../../bd/design_1/ip/design_1_axis_switch_0_1/design_1_axis_switch_0_1_sim_netlist.vhdl" \
"../../../bd/design_1/ip/design_1_axis_switch_0_2/design_1_axis_switch_0_2_sim_netlist.vhdl" \
"../../../bd/design_1/ip/design_1_xbar_2_1/design_1_xbar_2_sim_netlist.vhdl" \
"../../../bd/design_1/ip/design_1_auto_pc_0/design_1_auto_pc_0_sim_netlist.vhdl" \
"../../../bd/design_1/ip/design_1_auto_pc_1/design_1_auto_pc_1_sim_netlist.vhdl" \
"../../../bd/design_1/ip/design_1_auto_pc_2/design_1_auto_pc_2_sim_netlist.vhdl" \
"../../../bd/design_1/sim/design_1.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

