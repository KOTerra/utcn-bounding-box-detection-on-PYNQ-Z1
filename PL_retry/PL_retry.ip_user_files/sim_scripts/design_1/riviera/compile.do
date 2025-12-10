transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_17
vlib riviera/processing_system7_vip_v1_0_19
vlib riviera/xil_defaultlib
vlib riviera/lib_pkg_v1_0_4
vlib riviera/fifo_generator_v13_2_10
vlib riviera/lib_fifo_v1_0_19
vlib riviera/lib_srl_fifo_v1_0_4
vlib riviera/lib_cdc_v1_0_3
vlib riviera/axi_datamover_v5_1_33
vlib riviera/axi_sg_v4_1_18
vlib riviera/axi_dma_v7_1_32
vlib riviera/generic_baseblocks_v2_1_2
vlib riviera/axi_register_slice_v2_1_31
vlib riviera/axi_data_fifo_v2_1_30
vlib riviera/axi_crossbar_v2_1_32
vlib riviera/proc_sys_reset_v5_0_15
vlib riviera/xlconstant_v1_1_9
vlib riviera/xlconcat_v2_1_6
vlib riviera/axi_bram_ctrl_v4_1_10
vlib riviera/axi_protocol_converter_v2_1_31
vlib riviera/axi_clock_converter_v2_1_30
vlib riviera/blk_mem_gen_v8_4_8
vlib riviera/axi_dwidth_converter_v2_1_31

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_17 riviera/axi_vip_v1_1_17
vmap processing_system7_vip_v1_0_19 riviera/processing_system7_vip_v1_0_19
vmap xil_defaultlib riviera/xil_defaultlib
vmap lib_pkg_v1_0_4 riviera/lib_pkg_v1_0_4
vmap fifo_generator_v13_2_10 riviera/fifo_generator_v13_2_10
vmap lib_fifo_v1_0_19 riviera/lib_fifo_v1_0_19
vmap lib_srl_fifo_v1_0_4 riviera/lib_srl_fifo_v1_0_4
vmap lib_cdc_v1_0_3 riviera/lib_cdc_v1_0_3
vmap axi_datamover_v5_1_33 riviera/axi_datamover_v5_1_33
vmap axi_sg_v4_1_18 riviera/axi_sg_v4_1_18
vmap axi_dma_v7_1_32 riviera/axi_dma_v7_1_32
vmap generic_baseblocks_v2_1_2 riviera/generic_baseblocks_v2_1_2
vmap axi_register_slice_v2_1_31 riviera/axi_register_slice_v2_1_31
vmap axi_data_fifo_v2_1_30 riviera/axi_data_fifo_v2_1_30
vmap axi_crossbar_v2_1_32 riviera/axi_crossbar_v2_1_32
vmap proc_sys_reset_v5_0_15 riviera/proc_sys_reset_v5_0_15
vmap xlconstant_v1_1_9 riviera/xlconstant_v1_1_9
vmap xlconcat_v2_1_6 riviera/xlconcat_v2_1_6
vmap axi_bram_ctrl_v4_1_10 riviera/axi_bram_ctrl_v4_1_10
vmap axi_protocol_converter_v2_1_31 riviera/axi_protocol_converter_v2_1_31
vmap axi_clock_converter_v2_1_30 riviera/axi_clock_converter_v2_1_30
vmap blk_mem_gen_v8_4_8 riviera/blk_mem_gen_v8_4_8
vmap axi_dwidth_converter_v2_1_31 riviera/axi_dwidth_converter_v2_1_31

vlog -work xilinx_vip  -incr "+incdir+X:/xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_33 -l axi_sg_v4_1_18 -l axi_dma_v7_1_32 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l proc_sys_reset_v5_0_15 -l xlconstant_v1_1_9 -l xlconcat_v2_1_6 -l axi_bram_ctrl_v4_1_10 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_31 \
"X:/xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"X:/xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"X:/xilinx/Vivado/2024.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"X:/xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"X:/xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"X:/xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"X:/xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"X:/xilinx/Vivado/2024.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"X:/xilinx/Vivado/2024.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr "+incdir+../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+X:/xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_33 -l axi_sg_v4_1_18 -l axi_dma_v7_1_32 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l proc_sys_reset_v5_0_15 -l xlconstant_v1_1_9 -l xlconcat_v2_1_6 -l axi_bram_ctrl_v4_1_10 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_31 \
"X:/xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"X:/xilinx/Vivado/2024.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"X:/xilinx/Vivado/2024.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"X:/xilinx/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -incr -v2k5 "+incdir+../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+X:/xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_33 -l axi_sg_v4_1_18 -l axi_dma_v7_1_32 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l proc_sys_reset_v5_0_15 -l xlconstant_v1_1_9 -l xlconcat_v2_1_6 -l axi_bram_ctrl_v4_1_10 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_31 \
"../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_17  -incr "+incdir+../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+X:/xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_33 -l axi_sg_v4_1_18 -l axi_dma_v7_1_32 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l proc_sys_reset_v5_0_15 -l xlconstant_v1_1_9 -l xlconcat_v2_1_6 -l axi_bram_ctrl_v4_1_10 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_31 \
"../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/4d04/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_19  -incr "+incdir+../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+X:/xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_33 -l axi_sg_v4_1_18 -l axi_dma_v7_1_32 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l proc_sys_reset_v5_0_15 -l xlconstant_v1_1_9 -l xlconcat_v2_1_6 -l axi_bram_ctrl_v4_1_10 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_31 \
"../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/b28c/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+X:/xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_33 -l axi_sg_v4_1_18 -l axi_dma_v7_1_32 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l proc_sys_reset_v5_0_15 -l xlconstant_v1_1_9 -l xlconcat_v2_1_6 -l axi_bram_ctrl_v4_1_10 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_31 \
"../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \

vcom -work lib_pkg_v1_0_4 -93  -incr \
"../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/8c68/hdl/lib_pkg_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_10  -incr -v2k5 "+incdir+../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+X:/xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_33 -l axi_sg_v4_1_18 -l axi_dma_v7_1_32 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l proc_sys_reset_v5_0_15 -l xlconstant_v1_1_9 -l xlconcat_v2_1_6 -l axi_bram_ctrl_v4_1_10 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_31 \
"../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/1443/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_10 -93  -incr \
"../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/1443/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_10  -incr -v2k5 "+incdir+../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+X:/xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_33 -l axi_sg_v4_1_18 -l axi_dma_v7_1_32 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l proc_sys_reset_v5_0_15 -l xlconstant_v1_1_9 -l xlconcat_v2_1_6 -l axi_bram_ctrl_v4_1_10 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_31 \
"../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/1443/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_19 -93  -incr \
"../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/0a12/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_4 -93  -incr \
"../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/1e5a/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work lib_cdc_v1_0_3 -93  -incr \
"../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_33 -93  -incr \
"../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/bf20/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vcom -work axi_sg_v4_1_18 -93  -incr \
"../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/6f54/hdl/axi_sg_v4_1_rfs.vhd" \

vcom -work axi_dma_v7_1_32 -93  -incr \
"../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/8830/hdl/axi_dma_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_axi_dma_0_0/sim/design_1_axi_dma_0_0.vhd" \

vlog -work generic_baseblocks_v2_1_2  -incr -v2k5 "+incdir+../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+X:/xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_33 -l axi_sg_v4_1_18 -l axi_dma_v7_1_32 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l proc_sys_reset_v5_0_15 -l xlconstant_v1_1_9 -l xlconcat_v2_1_6 -l axi_bram_ctrl_v4_1_10 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_31 \
"../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_31  -incr -v2k5 "+incdir+../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+X:/xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_33 -l axi_sg_v4_1_18 -l axi_dma_v7_1_32 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l proc_sys_reset_v5_0_15 -l xlconstant_v1_1_9 -l xlconcat_v2_1_6 -l axi_bram_ctrl_v4_1_10 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_31 \
"../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/92b2/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_30  -incr -v2k5 "+incdir+../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+X:/xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_33 -l axi_sg_v4_1_18 -l axi_dma_v7_1_32 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l proc_sys_reset_v5_0_15 -l xlconstant_v1_1_9 -l xlconcat_v2_1_6 -l axi_bram_ctrl_v4_1_10 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_31 \
"../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/9692/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_32  -incr -v2k5 "+incdir+../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+X:/xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_33 -l axi_sg_v4_1_18 -l axi_dma_v7_1_32 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l proc_sys_reset_v5_0_15 -l xlconstant_v1_1_9 -l xlconcat_v2_1_6 -l axi_bram_ctrl_v4_1_10 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_31 \
"../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+X:/xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_33 -l axi_sg_v4_1_18 -l axi_dma_v7_1_32 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l proc_sys_reset_v5_0_15 -l xlconstant_v1_1_9 -l xlconcat_v2_1_6 -l axi_bram_ctrl_v4_1_10 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_31 \
"../../../bd/design_1/ip/design_1_xbar_4/sim/design_1_xbar_4.v" \

vcom -work proc_sys_reset_v5_0_15 -93  -incr \
"../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/3a26/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_rst_ps7_0_100M_0/sim/design_1_rst_ps7_0_100M_0.vhd" \
"../../../bd/design_1/ip/design_1_axi_dma_1_0/sim/design_1_axi_dma_1_0.vhd" \
"../../../bd/design_1/ip/design_1_axi_dma_2_0/sim/design_1_axi_dma_2_0.vhd" \
"../../../bd/design_1/ip/design_1_axi_dma_3_0/sim/design_1_axi_dma_3_0.vhd" \
"../../../bd/design_1/ip/design_1_axi_dma_4_0/sim/design_1_axi_dma_4_0.vhd" \
"../../../bd/design_1/ip/design_1_ccl_slice_core_0_0/sim/design_1_ccl_slice_core_0_0.vhd" \
"../../../bd/design_1/ip/design_1_ccl_slice_core_1_0/sim/design_1_ccl_slice_core_1_0.vhd" \
"../../../bd/design_1/ip/design_1_ccl_slice_core_2_0/sim/design_1_ccl_slice_core_2_0.vhd" \
"../../../bd/design_1/ip/design_1_ccl_slice_core_3_0/sim/design_1_ccl_slice_core_3_0.vhd" \

vlog -work xlconstant_v1_1_9  -incr -v2k5 "+incdir+../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+X:/xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_33 -l axi_sg_v4_1_18 -l axi_dma_v7_1_32 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l proc_sys_reset_v5_0_15 -l xlconstant_v1_1_9 -l xlconcat_v2_1_6 -l axi_bram_ctrl_v4_1_10 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_31 \
"../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/e2d2/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+X:/xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_33 -l axi_sg_v4_1_18 -l axi_dma_v7_1_32 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l proc_sys_reset_v5_0_15 -l xlconstant_v1_1_9 -l xlconcat_v2_1_6 -l axi_bram_ctrl_v4_1_10 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_31 \
"../../../bd/design_1/ip/design_1_xlconstant_0_0/sim/design_1_xlconstant_0_0.v" \
"../../../bd/design_1/ip/design_1_xlconstant_1_0/sim/design_1_xlconstant_1_0.v" \
"../../../bd/design_1/ip/design_1_xlconstant_2_0/sim/design_1_xlconstant_2_0.v" \
"../../../bd/design_1/ip/design_1_xlconstant_3_0/sim/design_1_xlconstant_3_0.v" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_ccl_relabel_core_0_0/sim/design_1_ccl_relabel_core_0_0.vhd" \
"../../../bd/design_1/ip/design_1_axi_dma_5_0/sim/design_1_axi_dma_5_0.vhd" \

vlog -work xlconcat_v2_1_6  -incr -v2k5 "+incdir+../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+X:/xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_33 -l axi_sg_v4_1_18 -l axi_dma_v7_1_32 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l proc_sys_reset_v5_0_15 -l xlconstant_v1_1_9 -l xlconcat_v2_1_6 -l axi_bram_ctrl_v4_1_10 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_31 \
"../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/6120/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+X:/xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_33 -l axi_sg_v4_1_18 -l axi_dma_v7_1_32 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l proc_sys_reset_v5_0_15 -l xlconstant_v1_1_9 -l xlconcat_v2_1_6 -l axi_bram_ctrl_v4_1_10 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_31 \
"../../../bd/design_1/ip/design_1_xlconcat_0_0/sim/design_1_xlconcat_0_0.v" \
"../../../bd/design_1/ip/design_1_xbar_5/sim/design_1_xbar_5.v" \

vcom -work axi_bram_ctrl_v4_1_10 -93  -incr \
"../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/14fa/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_axi_bram_ctrl_0_2/sim/design_1_axi_bram_ctrl_0_2.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+X:/xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_33 -l axi_sg_v4_1_18 -l axi_dma_v7_1_32 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l proc_sys_reset_v5_0_15 -l xlconstant_v1_1_9 -l xlconcat_v2_1_6 -l axi_bram_ctrl_v4_1_10 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_31 \
"../../../bd/design_1/ip/design_1_xbar_6/sim/design_1_xbar_6.v" \
"../../../bd/design_1/ip/design_1_xbar_7/sim/design_1_xbar_7.v" \
"../../../bd/design_1/ip/design_1_xbar_8/sim/design_1_xbar_8.v" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/sim/design_1.vhd" \

vlog -work axi_protocol_converter_v2_1_31  -incr -v2k5 "+incdir+../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+X:/xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_33 -l axi_sg_v4_1_18 -l axi_dma_v7_1_32 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l proc_sys_reset_v5_0_15 -l xlconstant_v1_1_9 -l xlconcat_v2_1_6 -l axi_bram_ctrl_v4_1_10 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_31 \
"../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/3c06/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+X:/xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_33 -l axi_sg_v4_1_18 -l axi_dma_v7_1_32 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l proc_sys_reset_v5_0_15 -l xlconstant_v1_1_9 -l xlconcat_v2_1_6 -l axi_bram_ctrl_v4_1_10 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_31 \
"../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \
"../../../bd/design_1/ip/design_1_auto_pc_1/sim/design_1_auto_pc_1.v" \

vlog -work axi_clock_converter_v2_1_30  -incr -v2k5 "+incdir+../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+X:/xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_33 -l axi_sg_v4_1_18 -l axi_dma_v7_1_32 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l proc_sys_reset_v5_0_15 -l xlconstant_v1_1_9 -l xlconcat_v2_1_6 -l axi_bram_ctrl_v4_1_10 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_31 \
"../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/80bf/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work blk_mem_gen_v8_4_8  -incr -v2k5 "+incdir+../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+X:/xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_33 -l axi_sg_v4_1_18 -l axi_dma_v7_1_32 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l proc_sys_reset_v5_0_15 -l xlconstant_v1_1_9 -l xlconcat_v2_1_6 -l axi_bram_ctrl_v4_1_10 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_31 \
"../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/09bd/simulation/blk_mem_gen_v8_4.v" \

vlog -work axi_dwidth_converter_v2_1_31  -incr -v2k5 "+incdir+../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+X:/xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_33 -l axi_sg_v4_1_18 -l axi_dma_v7_1_32 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l proc_sys_reset_v5_0_15 -l xlconstant_v1_1_9 -l xlconcat_v2_1_6 -l axi_bram_ctrl_v4_1_10 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_31 \
"../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/14b9/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../PL_retry.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+X:/xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_10 -l lib_fifo_v1_0_19 -l lib_srl_fifo_v1_0_4 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_33 -l axi_sg_v4_1_18 -l axi_dma_v7_1_32 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l proc_sys_reset_v5_0_15 -l xlconstant_v1_1_9 -l xlconcat_v2_1_6 -l axi_bram_ctrl_v4_1_10 -l axi_protocol_converter_v2_1_31 -l axi_clock_converter_v2_1_30 -l blk_mem_gen_v8_4_8 -l axi_dwidth_converter_v2_1_31 \
"../../../bd/design_1/ip/design_1_auto_us_0/sim/design_1_auto_us_0.v" \
"../../../bd/design_1/ip/design_1_auto_us_1/sim/design_1_auto_us_1.v" \
"../../../bd/design_1/ip/design_1_auto_us_2/sim/design_1_auto_us_2.v" \
"../../../bd/design_1/ip/design_1_auto_us_3/sim/design_1_auto_us_3.v" \
"../../../bd/design_1/ip/design_1_auto_pc_2/sim/design_1_auto_pc_2.v" \
"../../../bd/design_1/ip/design_1_auto_us_4/sim/design_1_auto_us_4.v" \
"../../../bd/design_1/ip/design_1_auto_us_5/sim/design_1_auto_us_5.v" \
"../../../bd/design_1/ip/design_1_auto_us_6/sim/design_1_auto_us_6.v" \
"../../../bd/design_1/ip/design_1_auto_us_7/sim/design_1_auto_us_7.v" \
"../../../bd/design_1/ip/design_1_auto_pc_3/sim/design_1_auto_pc_3.v" \
"../../../bd/design_1/ip/design_1_auto_us_8/sim/design_1_auto_us_8.v" \
"../../../bd/design_1/ip/design_1_auto_us_9/sim/design_1_auto_us_9.v" \
"../../../bd/design_1/ip/design_1_auto_us_10/sim/design_1_auto_us_10.v" \
"../../../bd/design_1/ip/design_1_auto_us_11/sim/design_1_auto_us_11.v" \
"../../../bd/design_1/ip/design_1_auto_pc_4/sim/design_1_auto_pc_4.v" \

vlog -work xil_defaultlib \
"glbl.v"

