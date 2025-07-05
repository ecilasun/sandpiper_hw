transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/proc_sys_reset_v5_0_17
vlib riviera/xil_defaultlib
vlib riviera/gmii_to_rgmii_v4_1_19
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_21
vlib riviera/processing_system7_vip_v1_0_23
vlib riviera/util_vector_logic_v2_0_5
vlib riviera/generic_baseblocks_v2_1_2
vlib riviera/axi_register_slice_v2_1_35
vlib riviera/fifo_generator_v13_2_13
vlib riviera/axi_data_fifo_v2_1_35
vlib riviera/axi_crossbar_v2_1_37
vlib riviera/axi_protocol_converter_v2_1_36
vlib riviera/axi_clock_converter_v2_1_34
vlib riviera/blk_mem_gen_v8_4_11
vlib riviera/axi_dwidth_converter_v2_1_36

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap proc_sys_reset_v5_0_17 riviera/proc_sys_reset_v5_0_17
vmap xil_defaultlib riviera/xil_defaultlib
vmap gmii_to_rgmii_v4_1_19 riviera/gmii_to_rgmii_v4_1_19
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_21 riviera/axi_vip_v1_1_21
vmap processing_system7_vip_v1_0_23 riviera/processing_system7_vip_v1_0_23
vmap util_vector_logic_v2_0_5 riviera/util_vector_logic_v2_0_5
vmap generic_baseblocks_v2_1_2 riviera/generic_baseblocks_v2_1_2
vmap axi_register_slice_v2_1_35 riviera/axi_register_slice_v2_1_35
vmap fifo_generator_v13_2_13 riviera/fifo_generator_v13_2_13
vmap axi_data_fifo_v2_1_35 riviera/axi_data_fifo_v2_1_35
vmap axi_crossbar_v2_1_37 riviera/axi_crossbar_v2_1_37
vmap axi_protocol_converter_v2_1_36 riviera/axi_protocol_converter_v2_1_36
vmap axi_clock_converter_v2_1_34 riviera/axi_clock_converter_v2_1_34
vmap blk_mem_gen_v8_4_11 riviera/blk_mem_gen_v8_4_11
vmap axi_dwidth_converter_v2_1_36 riviera/axi_dwidth_converter_v2_1_36

vlog -work xilinx_vip  -incr "+incdir+G:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l proc_sys_reset_v5_0_17 -l xil_defaultlib -l gmii_to_rgmii_v4_1_19 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l util_vector_logic_v2_0_5 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l axi_protocol_converter_v2_1_36 -l axi_clock_converter_v2_1_34 -l blk_mem_gen_v8_4_11 -l axi_dwidth_converter_v2_1_36 \
"G:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"G:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"G:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"G:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"G:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"G:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"G:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi_vip_if.sv" \
"G:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/clk_vip_if.sv" \
"G:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/a9be" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/6cfa/hdl" "+incdir+G:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+G:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l proc_sys_reset_v5_0_17 -l xil_defaultlib -l gmii_to_rgmii_v4_1_19 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l util_vector_logic_v2_0_5 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l axi_protocol_converter_v2_1_36 -l axi_clock_converter_v2_1_34 -l blk_mem_gen_v8_4_11 -l axi_dwidth_converter_v2_1_36 \
"G:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"G:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"G:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work proc_sys_reset_v5_0_17 -93  -incr \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/9438/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/blockone/ip/blockone_proc_sys_reset_0_1/sim/blockone_proc_sys_reset_0_1.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/a9be" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/6cfa/hdl" "+incdir+G:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+G:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l proc_sys_reset_v5_0_17 -l xil_defaultlib -l gmii_to_rgmii_v4_1_19 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l util_vector_logic_v2_0_5 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l axi_protocol_converter_v2_1_36 -l axi_clock_converter_v2_1_34 -l blk_mem_gen_v8_4_11 -l axi_dwidth_converter_v2_1_36 \
"../../../bd/blockone/ip/blockone_audiomodule_0_0/sim/blockone_audiomodule_0_0.v" \
"../../../bd/blockone/ip/blockone_videomodule_0_0/sim/blockone_videomodule_0_0.v" \
"../../../bd/blockone/ip/blockone_clk_wiz_0_0/blockone_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/blockone/ip/blockone_clk_wiz_0_0/blockone_clk_wiz_0_0.v" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/blockone/ip/blockone_gmii_to_rgmii_0_1/synth/blockone_gmii_to_rgmii_0_1_clocking.vhd" \
"../../../bd/blockone/ip/blockone_gmii_to_rgmii_0_1/synth/blockone_gmii_to_rgmii_0_1_resets.vhd" \
"../../../bd/blockone/ip/blockone_gmii_to_rgmii_0_1/synth/blockone_gmii_to_rgmii_0_1_support.vhd" \
"../../../bd/blockone/ip/blockone_gmii_to_rgmii_0_1/synth/blockone_gmii_to_rgmii_0_1_reset_sync.vhd" \
"../../../bd/blockone/ip/blockone_gmii_to_rgmii_0_1/synth/blockone_gmii_to_rgmii_0_1_block.vhd" \

vcom -work xil_defaultlib -2008  -incr \
"../../../bd/blockone/ip/blockone_gmii_to_rgmii_0_1/blockone_gmii_to_rgmii_0_1/simulation/demo_tb.vhd" \

vcom -work gmii_to_rgmii_v4_1_19 -93  -incr \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/4d7a/hdl/gmii_to_rgmii_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/blockone/ip/blockone_gmii_to_rgmii_0_1/synth/blockone_gmii_to_rgmii_0_1.vhd" \

vlog -work axi_infrastructure_v1_1_0  -incr -v2k5 "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/a9be" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/6cfa/hdl" "+incdir+G:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+G:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l proc_sys_reset_v5_0_17 -l xil_defaultlib -l gmii_to_rgmii_v4_1_19 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l util_vector_logic_v2_0_5 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l axi_protocol_converter_v2_1_36 -l axi_clock_converter_v2_1_34 -l blk_mem_gen_v8_4_11 -l axi_dwidth_converter_v2_1_36 \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_21  -incr "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/a9be" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/6cfa/hdl" "+incdir+G:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+G:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l proc_sys_reset_v5_0_17 -l xil_defaultlib -l gmii_to_rgmii_v4_1_19 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l util_vector_logic_v2_0_5 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l axi_protocol_converter_v2_1_36 -l axi_clock_converter_v2_1_34 -l blk_mem_gen_v8_4_11 -l axi_dwidth_converter_v2_1_36 \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/f16f/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_23  -incr "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/a9be" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/6cfa/hdl" "+incdir+G:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+G:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l proc_sys_reset_v5_0_17 -l xil_defaultlib -l gmii_to_rgmii_v4_1_19 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l util_vector_logic_v2_0_5 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l axi_protocol_converter_v2_1_36 -l axi_clock_converter_v2_1_34 -l blk_mem_gen_v8_4_11 -l axi_dwidth_converter_v2_1_36 \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/6cfa/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/a9be" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/6cfa/hdl" "+incdir+G:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+G:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l proc_sys_reset_v5_0_17 -l xil_defaultlib -l gmii_to_rgmii_v4_1_19 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l util_vector_logic_v2_0_5 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l axi_protocol_converter_v2_1_36 -l axi_clock_converter_v2_1_34 -l blk_mem_gen_v8_4_11 -l axi_dwidth_converter_v2_1_36 \
"../../../bd/blockone/ip/blockone_processing_system7_0_1/sim/blockone_processing_system7_0_1.v" \

vlog -work util_vector_logic_v2_0_5  -incr -v2k5 "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/a9be" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/6cfa/hdl" "+incdir+G:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+G:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l proc_sys_reset_v5_0_17 -l xil_defaultlib -l gmii_to_rgmii_v4_1_19 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l util_vector_logic_v2_0_5 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l axi_protocol_converter_v2_1_36 -l axi_clock_converter_v2_1_34 -l blk_mem_gen_v8_4_11 -l axi_dwidth_converter_v2_1_36 \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/e056/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/a9be" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/6cfa/hdl" "+incdir+G:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+G:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l proc_sys_reset_v5_0_17 -l xil_defaultlib -l gmii_to_rgmii_v4_1_19 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l util_vector_logic_v2_0_5 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l axi_protocol_converter_v2_1_36 -l axi_clock_converter_v2_1_34 -l blk_mem_gen_v8_4_11 -l axi_dwidth_converter_v2_1_36 \
"../../../bd/blockone/ip/blockone_util_vector_logic_0_0/sim/blockone_util_vector_logic_0_0.v" \

vlog -work generic_baseblocks_v2_1_2  -incr -v2k5 "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/a9be" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/6cfa/hdl" "+incdir+G:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+G:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l proc_sys_reset_v5_0_17 -l xil_defaultlib -l gmii_to_rgmii_v4_1_19 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l util_vector_logic_v2_0_5 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l axi_protocol_converter_v2_1_36 -l axi_clock_converter_v2_1_34 -l blk_mem_gen_v8_4_11 -l axi_dwidth_converter_v2_1_36 \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_35  -incr -v2k5 "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/a9be" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/6cfa/hdl" "+incdir+G:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+G:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l proc_sys_reset_v5_0_17 -l xil_defaultlib -l gmii_to_rgmii_v4_1_19 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l util_vector_logic_v2_0_5 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l axi_protocol_converter_v2_1_36 -l axi_clock_converter_v2_1_34 -l blk_mem_gen_v8_4_11 -l axi_dwidth_converter_v2_1_36 \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/c5b7/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_13  -incr -v2k5 "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/a9be" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/6cfa/hdl" "+incdir+G:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+G:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l proc_sys_reset_v5_0_17 -l xil_defaultlib -l gmii_to_rgmii_v4_1_19 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l util_vector_logic_v2_0_5 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l axi_protocol_converter_v2_1_36 -l axi_clock_converter_v2_1_34 -l blk_mem_gen_v8_4_11 -l axi_dwidth_converter_v2_1_36 \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/dc46/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_13 -93  -incr \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/dc46/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_13  -incr -v2k5 "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/a9be" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/6cfa/hdl" "+incdir+G:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+G:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l proc_sys_reset_v5_0_17 -l xil_defaultlib -l gmii_to_rgmii_v4_1_19 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l util_vector_logic_v2_0_5 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l axi_protocol_converter_v2_1_36 -l axi_clock_converter_v2_1_34 -l blk_mem_gen_v8_4_11 -l axi_dwidth_converter_v2_1_36 \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/dc46/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_35  -incr -v2k5 "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/a9be" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/6cfa/hdl" "+incdir+G:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+G:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l proc_sys_reset_v5_0_17 -l xil_defaultlib -l gmii_to_rgmii_v4_1_19 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l util_vector_logic_v2_0_5 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l axi_protocol_converter_v2_1_36 -l axi_clock_converter_v2_1_34 -l blk_mem_gen_v8_4_11 -l axi_dwidth_converter_v2_1_36 \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/4846/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_37  -incr -v2k5 "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/a9be" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/6cfa/hdl" "+incdir+G:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+G:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l proc_sys_reset_v5_0_17 -l xil_defaultlib -l gmii_to_rgmii_v4_1_19 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l util_vector_logic_v2_0_5 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l axi_protocol_converter_v2_1_36 -l axi_clock_converter_v2_1_34 -l blk_mem_gen_v8_4_11 -l axi_dwidth_converter_v2_1_36 \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/a1a7/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/a9be" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/6cfa/hdl" "+incdir+G:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+G:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l proc_sys_reset_v5_0_17 -l xil_defaultlib -l gmii_to_rgmii_v4_1_19 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l util_vector_logic_v2_0_5 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l axi_protocol_converter_v2_1_36 -l axi_clock_converter_v2_1_34 -l blk_mem_gen_v8_4_11 -l axi_dwidth_converter_v2_1_36 \
"../../../bd/blockone/ip/blockone_axi_interconnect_0_upgraded_ipi_imp_xbar_0/sim/blockone_axi_interconnect_0_upgraded_ipi_imp_xbar_0.v" \

vlog -work axi_protocol_converter_v2_1_36  -incr -v2k5 "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/a9be" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/6cfa/hdl" "+incdir+G:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+G:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l proc_sys_reset_v5_0_17 -l xil_defaultlib -l gmii_to_rgmii_v4_1_19 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l util_vector_logic_v2_0_5 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l axi_protocol_converter_v2_1_36 -l axi_clock_converter_v2_1_34 -l blk_mem_gen_v8_4_11 -l axi_dwidth_converter_v2_1_36 \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/f0b6/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work axi_clock_converter_v2_1_34  -incr -v2k5 "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/a9be" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/6cfa/hdl" "+incdir+G:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+G:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l proc_sys_reset_v5_0_17 -l xil_defaultlib -l gmii_to_rgmii_v4_1_19 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l util_vector_logic_v2_0_5 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l axi_protocol_converter_v2_1_36 -l axi_clock_converter_v2_1_34 -l blk_mem_gen_v8_4_11 -l axi_dwidth_converter_v2_1_36 \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/9a28/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work blk_mem_gen_v8_4_11  -incr -v2k5 "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/a9be" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/6cfa/hdl" "+incdir+G:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+G:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l proc_sys_reset_v5_0_17 -l xil_defaultlib -l gmii_to_rgmii_v4_1_19 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l util_vector_logic_v2_0_5 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l axi_protocol_converter_v2_1_36 -l axi_clock_converter_v2_1_34 -l blk_mem_gen_v8_4_11 -l axi_dwidth_converter_v2_1_36 \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/a32c/simulation/blk_mem_gen_v8_4.v" \

vlog -work axi_dwidth_converter_v2_1_36  -incr -v2k5 "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/a9be" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/6cfa/hdl" "+incdir+G:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+G:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l proc_sys_reset_v5_0_17 -l xil_defaultlib -l gmii_to_rgmii_v4_1_19 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l util_vector_logic_v2_0_5 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l axi_protocol_converter_v2_1_36 -l axi_clock_converter_v2_1_34 -l blk_mem_gen_v8_4_11 -l axi_dwidth_converter_v2_1_36 \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/db4c/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/a9be" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/6cfa/hdl" "+incdir+G:/Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+G:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l proc_sys_reset_v5_0_17 -l xil_defaultlib -l gmii_to_rgmii_v4_1_19 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l util_vector_logic_v2_0_5 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_35 -l fifo_generator_v13_2_13 -l axi_data_fifo_v2_1_35 -l axi_crossbar_v2_1_37 -l axi_protocol_converter_v2_1_36 -l axi_clock_converter_v2_1_34 -l blk_mem_gen_v8_4_11 -l axi_dwidth_converter_v2_1_36 \
"../../../bd/blockone/ip/blockone_axi_interconnect_0_imp_auto_us_0/sim/blockone_axi_interconnect_0_imp_auto_us_0.v" \
"../../../bd/blockone/sim/blockone.v" \

vlog -work xil_defaultlib \
"glbl.v"

