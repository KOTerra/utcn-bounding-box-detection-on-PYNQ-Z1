transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xilinx_vip
vlib riviera/lib_cdc_v1_0_3
vlib riviera/proc_sys_reset_v5_0_15
vlib riviera/xil_defaultlib
vlib riviera/xlconstant_v1_1_9

vmap xilinx_vip riviera/xilinx_vip
vmap lib_cdc_v1_0_3 riviera/lib_cdc_v1_0_3
vmap proc_sys_reset_v5_0_15 riviera/proc_sys_reset_v5_0_15
vmap xil_defaultlib riviera/xil_defaultlib
vmap xlconstant_v1_1_9 riviera/xlconstant_v1_1_9

vlog -work xilinx_vip  -incr -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l smartconnect_v1_0 "+incdir+X:/xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l xil_defaultlib -l xlconstant_v1_1_9 \
"X:/xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"X:/xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"X:/xilinx/Vivado/2024.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"X:/xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"X:/xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"X:/xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"X:/xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"X:/xilinx/Vivado/2024.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"X:/xilinx/Vivado/2024.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vcom -work lib_cdc_v1_0_3 -93  -incr \
"../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_15 -93  -incr \
"../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/3a26/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_rst_ps7_0_100M_0/sim/design_1_rst_ps7_0_100M_0.vhd" \
"../../../bd/design_1/ip/design_1_ccl_slice_core_0_0/sim/design_1_ccl_slice_core_0_0.vhd" \
"../../../bd/design_1/ip/design_1_ccl_slice_core_1_0/sim/design_1_ccl_slice_core_1_0.vhd" \
"../../../bd/design_1/ip/design_1_ccl_slice_core_2_0/sim/design_1_ccl_slice_core_2_0.vhd" \
"../../../bd/design_1/ip/design_1_ccl_slice_core_3_0/sim/design_1_ccl_slice_core_3_0.vhd" \

vlog -work xlconstant_v1_1_9  -incr -v2k5 "+incdir+../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/c783/hdl/verilog" "+incdir+X:/xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l xil_defaultlib -l xlconstant_v1_1_9 \
"../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/e2d2/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/c783/hdl/verilog" "+incdir+X:/xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l xil_defaultlib -l xlconstant_v1_1_9 \
"../../../bd/design_1/ip/design_1_xlconstant_0_0/sim/design_1_xlconstant_0_0.v" \
"../../../bd/design_1/ip/design_1_xlconstant_1_0/sim/design_1_xlconstant_1_0.v" \
"../../../bd/design_1/ip/design_1_xlconstant_2_0/sim/design_1_xlconstant_2_0.v" \
"../../../bd/design_1/ip/design_1_xlconstant_3_0/sim/design_1_xlconstant_3_0.v" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/sim/design_1.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

