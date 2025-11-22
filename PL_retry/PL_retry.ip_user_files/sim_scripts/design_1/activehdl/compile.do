transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xilinx_vip
vlib activehdl/lib_cdc_v1_0_3
vlib activehdl/proc_sys_reset_v5_0_15
vlib activehdl/xil_defaultlib
vlib activehdl/xlconstant_v1_1_9

vmap xilinx_vip activehdl/xilinx_vip
vmap lib_cdc_v1_0_3 activehdl/lib_cdc_v1_0_3
vmap proc_sys_reset_v5_0_15 activehdl/proc_sys_reset_v5_0_15
vmap xil_defaultlib activehdl/xil_defaultlib
vmap xlconstant_v1_1_9 activehdl/xlconstant_v1_1_9

vlog -work xilinx_vip  -sv2k12 "+incdir+X:/xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l xil_defaultlib -l xlconstant_v1_1_9 \
"X:/xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"X:/xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"X:/xilinx/Vivado/2024.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"X:/xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"X:/xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"X:/xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"X:/xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"X:/xilinx/Vivado/2024.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"X:/xilinx/Vivado/2024.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vcom -work lib_cdc_v1_0_3 -93  \
"../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_15 -93  \
"../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/3a26/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/design_1/ip/design_1_rst_ps7_0_100M_0/sim/design_1_rst_ps7_0_100M_0.vhd" \
"../../../bd/design_1/ip/design_1_ccl_slice_core_0_0/sim/design_1_ccl_slice_core_0_0.vhd" \
"../../../bd/design_1/ip/design_1_ccl_slice_core_1_0/sim/design_1_ccl_slice_core_1_0.vhd" \
"../../../bd/design_1/ip/design_1_ccl_slice_core_2_0/sim/design_1_ccl_slice_core_2_0.vhd" \
"../../../bd/design_1/ip/design_1_ccl_slice_core_3_0/sim/design_1_ccl_slice_core_3_0.vhd" \

vlog -work xlconstant_v1_1_9  -v2k5 "+incdir+../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/c783/hdl/verilog" "+incdir+X:/xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l xil_defaultlib -l xlconstant_v1_1_9 \
"../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/e2d2/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/c783/hdl/verilog" "+incdir+X:/xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l xil_defaultlib -l xlconstant_v1_1_9 \
"../../../bd/design_1/ip/design_1_xlconstant_0_0/sim/design_1_xlconstant_0_0.v" \
"../../../bd/design_1/ip/design_1_xlconstant_1_0/sim/design_1_xlconstant_1_0.v" \
"../../../bd/design_1/ip/design_1_xlconstant_2_0/sim/design_1_xlconstant_2_0.v" \
"../../../bd/design_1/ip/design_1_xlconstant_3_0/sim/design_1_xlconstant_3_0.v" \

vcom -work xil_defaultlib -93  \
"../../../bd/design_1/sim/design_1.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

