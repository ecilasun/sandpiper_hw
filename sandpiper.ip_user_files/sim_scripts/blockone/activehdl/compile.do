transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/lib_cdc_v1_0_3
vlib activehdl/proc_sys_reset_v5_0_16
vlib activehdl/xil_defaultlib
vlib activehdl/gmii_to_rgmii_v4_1_18
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_20
vlib activehdl/processing_system7_vip_v1_0_22
vlib activehdl/util_vector_logic_v2_0_4
vlib activehdl/generic_baseblocks_v2_1_2
vlib activehdl/axi_register_slice_v2_1_34
vlib activehdl/fifo_generator_v13_2_12
vlib activehdl/axi_data_fifo_v2_1_34
vlib activehdl/axi_crossbar_v2_1_36
vlib activehdl/axi_protocol_converter_v2_1_35
vlib activehdl/axi_clock_converter_v2_1_33
vlib activehdl/blk_mem_gen_v8_4_10
vlib activehdl/axi_dwidth_converter_v2_1_35

vmap xilinx_vip activehdl/xilinx_vip
vmap xpm activehdl/xpm
vmap lib_cdc_v1_0_3 activehdl/lib_cdc_v1_0_3
vmap proc_sys_reset_v5_0_16 activehdl/proc_sys_reset_v5_0_16
vmap xil_defaultlib activehdl/xil_defaultlib
vmap gmii_to_rgmii_v4_1_18 activehdl/gmii_to_rgmii_v4_1_18
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_20 activehdl/axi_vip_v1_1_20
vmap processing_system7_vip_v1_0_22 activehdl/processing_system7_vip_v1_0_22
vmap util_vector_logic_v2_0_4 activehdl/util_vector_logic_v2_0_4
vmap generic_baseblocks_v2_1_2 activehdl/generic_baseblocks_v2_1_2
vmap axi_register_slice_v2_1_34 activehdl/axi_register_slice_v2_1_34
vmap fifo_generator_v13_2_12 activehdl/fifo_generator_v13_2_12
vmap axi_data_fifo_v2_1_34 activehdl/axi_data_fifo_v2_1_34
vmap axi_crossbar_v2_1_36 activehdl/axi_crossbar_v2_1_36
vmap axi_protocol_converter_v2_1_35 activehdl/axi_protocol_converter_v2_1_35
vmap axi_clock_converter_v2_1_33 activehdl/axi_clock_converter_v2_1_33
vmap blk_mem_gen_v8_4_10 activehdl/blk_mem_gen_v8_4_10
vmap axi_dwidth_converter_v2_1_35 activehdl/axi_dwidth_converter_v2_1_35

vlog -work xilinx_vip  -sv2k12 "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xil_defaultlib -l gmii_to_rgmii_v4_1_18 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_20 -l processing_system7_vip_v1_0_22 -l util_vector_logic_v2_0_4 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_34 -l fifo_generator_v13_2_12 -l axi_data_fifo_v2_1_34 -l axi_crossbar_v2_1_36 -l axi_protocol_converter_v2_1_35 -l axi_clock_converter_v2_1_33 -l blk_mem_gen_v8_4_10 -l axi_dwidth_converter_v2_1_35 \
"G:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"G:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"G:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"G:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"G:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"G:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"G:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"G:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"G:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xil_defaultlib -l gmii_to_rgmii_v4_1_18 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_20 -l processing_system7_vip_v1_0_22 -l util_vector_logic_v2_0_4 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_34 -l fifo_generator_v13_2_12 -l axi_data_fifo_v2_1_34 -l axi_crossbar_v2_1_36 -l axi_protocol_converter_v2_1_35 -l axi_clock_converter_v2_1_33 -l blk_mem_gen_v8_4_10 -l axi_dwidth_converter_v2_1_35 \
"G:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"G:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"G:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work lib_cdc_v1_0_3 -93  \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_16 -93  \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/0831/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/blockone/ip/blockone_proc_sys_reset_0_1/sim/blockone_proc_sys_reset_0_1.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xil_defaultlib -l gmii_to_rgmii_v4_1_18 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_20 -l processing_system7_vip_v1_0_22 -l util_vector_logic_v2_0_4 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_34 -l fifo_generator_v13_2_12 -l axi_data_fifo_v2_1_34 -l axi_crossbar_v2_1_36 -l axi_protocol_converter_v2_1_35 -l axi_clock_converter_v2_1_33 -l blk_mem_gen_v8_4_10 -l axi_dwidth_converter_v2_1_35 \
"../../../bd/blockone/ip/blockone_audiomodule_0_0/sim/blockone_audiomodule_0_0.v" \
"../../../bd/blockone/ip/blockone_videomodule_0_0/sim/blockone_videomodule_0_0.v" \
"../../../bd/blockone/ip/blockone_clk_wiz_0_0/blockone_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/blockone/ip/blockone_clk_wiz_0_0/blockone_clk_wiz_0_0.v" \

vcom -work xil_defaultlib -93  \
"../../../bd/blockone/ip/blockone_gmii_to_rgmii_0_1/synth/blockone_gmii_to_rgmii_0_1_clocking.vhd" \
"../../../bd/blockone/ip/blockone_gmii_to_rgmii_0_1/synth/blockone_gmii_to_rgmii_0_1_resets.vhd" \
"../../../bd/blockone/ip/blockone_gmii_to_rgmii_0_1/synth/blockone_gmii_to_rgmii_0_1_support.vhd" \
"../../../bd/blockone/ip/blockone_gmii_to_rgmii_0_1/synth/blockone_gmii_to_rgmii_0_1_reset_sync.vhd" \
"../../../bd/blockone/ip/blockone_gmii_to_rgmii_0_1/synth/blockone_gmii_to_rgmii_0_1_block.vhd" \
"../../../bd/blockone/ip/blockone_gmii_to_rgmii_0_1/blockone_gmii_to_rgmii_0_1/simulation/demo_tb.vhd" \

vcom -work gmii_to_rgmii_v4_1_18 -93  \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/990c/hdl/gmii_to_rgmii_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/blockone/ip/blockone_gmii_to_rgmii_0_1/synth/blockone_gmii_to_rgmii_0_1.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xil_defaultlib -l gmii_to_rgmii_v4_1_18 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_20 -l processing_system7_vip_v1_0_22 -l util_vector_logic_v2_0_4 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_34 -l fifo_generator_v13_2_12 -l axi_data_fifo_v2_1_34 -l axi_crossbar_v2_1_36 -l axi_protocol_converter_v2_1_35 -l axi_clock_converter_v2_1_33 -l blk_mem_gen_v8_4_10 -l axi_dwidth_converter_v2_1_35 \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_20  -sv2k12 "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xil_defaultlib -l gmii_to_rgmii_v4_1_18 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_20 -l processing_system7_vip_v1_0_22 -l util_vector_logic_v2_0_4 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_34 -l fifo_generator_v13_2_12 -l axi_data_fifo_v2_1_34 -l axi_crossbar_v2_1_36 -l axi_protocol_converter_v2_1_35 -l axi_clock_converter_v2_1_33 -l blk_mem_gen_v8_4_10 -l axi_dwidth_converter_v2_1_35 \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/0f82/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_22  -sv2k12 "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xil_defaultlib -l gmii_to_rgmii_v4_1_18 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_20 -l processing_system7_vip_v1_0_22 -l util_vector_logic_v2_0_4 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_34 -l fifo_generator_v13_2_12 -l axi_data_fifo_v2_1_34 -l axi_crossbar_v2_1_36 -l axi_protocol_converter_v2_1_35 -l axi_clock_converter_v2_1_33 -l blk_mem_gen_v8_4_10 -l axi_dwidth_converter_v2_1_35 \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xil_defaultlib -l gmii_to_rgmii_v4_1_18 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_20 -l processing_system7_vip_v1_0_22 -l util_vector_logic_v2_0_4 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_34 -l fifo_generator_v13_2_12 -l axi_data_fifo_v2_1_34 -l axi_crossbar_v2_1_36 -l axi_protocol_converter_v2_1_35 -l axi_clock_converter_v2_1_33 -l blk_mem_gen_v8_4_10 -l axi_dwidth_converter_v2_1_35 \
"../../../bd/blockone/ip/blockone_processing_system7_0_1/sim/blockone_processing_system7_0_1.v" \

vlog -work util_vector_logic_v2_0_4  -v2k5 "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xil_defaultlib -l gmii_to_rgmii_v4_1_18 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_20 -l processing_system7_vip_v1_0_22 -l util_vector_logic_v2_0_4 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_34 -l fifo_generator_v13_2_12 -l axi_data_fifo_v2_1_34 -l axi_crossbar_v2_1_36 -l axi_protocol_converter_v2_1_35 -l axi_clock_converter_v2_1_33 -l blk_mem_gen_v8_4_10 -l axi_dwidth_converter_v2_1_35 \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/fd7b/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xil_defaultlib -l gmii_to_rgmii_v4_1_18 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_20 -l processing_system7_vip_v1_0_22 -l util_vector_logic_v2_0_4 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_34 -l fifo_generator_v13_2_12 -l axi_data_fifo_v2_1_34 -l axi_crossbar_v2_1_36 -l axi_protocol_converter_v2_1_35 -l axi_clock_converter_v2_1_33 -l blk_mem_gen_v8_4_10 -l axi_dwidth_converter_v2_1_35 \
"../../../bd/blockone/ip/blockone_util_vector_logic_0_0/sim/blockone_util_vector_logic_0_0.v" \

vlog -work generic_baseblocks_v2_1_2  -v2k5 "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xil_defaultlib -l gmii_to_rgmii_v4_1_18 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_20 -l processing_system7_vip_v1_0_22 -l util_vector_logic_v2_0_4 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_34 -l fifo_generator_v13_2_12 -l axi_data_fifo_v2_1_34 -l axi_crossbar_v2_1_36 -l axi_protocol_converter_v2_1_35 -l axi_clock_converter_v2_1_33 -l blk_mem_gen_v8_4_10 -l axi_dwidth_converter_v2_1_35 \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_34  -v2k5 "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xil_defaultlib -l gmii_to_rgmii_v4_1_18 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_20 -l processing_system7_vip_v1_0_22 -l util_vector_logic_v2_0_4 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_34 -l fifo_generator_v13_2_12 -l axi_data_fifo_v2_1_34 -l axi_crossbar_v2_1_36 -l axi_protocol_converter_v2_1_35 -l axi_clock_converter_v2_1_33 -l blk_mem_gen_v8_4_10 -l axi_dwidth_converter_v2_1_35 \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/48f8/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_12  -v2k5 "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xil_defaultlib -l gmii_to_rgmii_v4_1_18 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_20 -l processing_system7_vip_v1_0_22 -l util_vector_logic_v2_0_4 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_34 -l fifo_generator_v13_2_12 -l axi_data_fifo_v2_1_34 -l axi_crossbar_v2_1_36 -l axi_protocol_converter_v2_1_35 -l axi_clock_converter_v2_1_33 -l blk_mem_gen_v8_4_10 -l axi_dwidth_converter_v2_1_35 \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/cc30/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_12 -93  \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/cc30/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_12  -v2k5 "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xil_defaultlib -l gmii_to_rgmii_v4_1_18 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_20 -l processing_system7_vip_v1_0_22 -l util_vector_logic_v2_0_4 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_34 -l fifo_generator_v13_2_12 -l axi_data_fifo_v2_1_34 -l axi_crossbar_v2_1_36 -l axi_protocol_converter_v2_1_35 -l axi_clock_converter_v2_1_33 -l blk_mem_gen_v8_4_10 -l axi_dwidth_converter_v2_1_35 \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/cc30/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_34  -v2k5 "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xil_defaultlib -l gmii_to_rgmii_v4_1_18 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_20 -l processing_system7_vip_v1_0_22 -l util_vector_logic_v2_0_4 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_34 -l fifo_generator_v13_2_12 -l axi_data_fifo_v2_1_34 -l axi_crossbar_v2_1_36 -l axi_protocol_converter_v2_1_35 -l axi_clock_converter_v2_1_33 -l blk_mem_gen_v8_4_10 -l axi_dwidth_converter_v2_1_35 \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8894/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_36  -v2k5 "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xil_defaultlib -l gmii_to_rgmii_v4_1_18 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_20 -l processing_system7_vip_v1_0_22 -l util_vector_logic_v2_0_4 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_34 -l fifo_generator_v13_2_12 -l axi_data_fifo_v2_1_34 -l axi_crossbar_v2_1_36 -l axi_protocol_converter_v2_1_35 -l axi_clock_converter_v2_1_33 -l blk_mem_gen_v8_4_10 -l axi_dwidth_converter_v2_1_35 \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/cb42/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xil_defaultlib -l gmii_to_rgmii_v4_1_18 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_20 -l processing_system7_vip_v1_0_22 -l util_vector_logic_v2_0_4 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_34 -l fifo_generator_v13_2_12 -l axi_data_fifo_v2_1_34 -l axi_crossbar_v2_1_36 -l axi_protocol_converter_v2_1_35 -l axi_clock_converter_v2_1_33 -l blk_mem_gen_v8_4_10 -l axi_dwidth_converter_v2_1_35 \
"../../../bd/blockone/ip/blockone_axi_interconnect_0_imp_xbar_0/sim/blockone_axi_interconnect_0_imp_xbar_0.v" \

vlog -work axi_protocol_converter_v2_1_35  -v2k5 "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xil_defaultlib -l gmii_to_rgmii_v4_1_18 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_20 -l processing_system7_vip_v1_0_22 -l util_vector_logic_v2_0_4 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_34 -l fifo_generator_v13_2_12 -l axi_data_fifo_v2_1_34 -l axi_crossbar_v2_1_36 -l axi_protocol_converter_v2_1_35 -l axi_clock_converter_v2_1_33 -l blk_mem_gen_v8_4_10 -l axi_dwidth_converter_v2_1_35 \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/2a7e/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work axi_clock_converter_v2_1_33  -v2k5 "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xil_defaultlib -l gmii_to_rgmii_v4_1_18 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_20 -l processing_system7_vip_v1_0_22 -l util_vector_logic_v2_0_4 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_34 -l fifo_generator_v13_2_12 -l axi_data_fifo_v2_1_34 -l axi_crossbar_v2_1_36 -l axi_protocol_converter_v2_1_35 -l axi_clock_converter_v2_1_33 -l blk_mem_gen_v8_4_10 -l axi_dwidth_converter_v2_1_35 \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/e59d/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work blk_mem_gen_v8_4_10  -v2k5 "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xil_defaultlib -l gmii_to_rgmii_v4_1_18 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_20 -l processing_system7_vip_v1_0_22 -l util_vector_logic_v2_0_4 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_34 -l fifo_generator_v13_2_12 -l axi_data_fifo_v2_1_34 -l axi_crossbar_v2_1_36 -l axi_protocol_converter_v2_1_35 -l axi_clock_converter_v2_1_33 -l blk_mem_gen_v8_4_10 -l axi_dwidth_converter_v2_1_35 \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/9e79/simulation/blk_mem_gen_v8_4.v" \

vlog -work axi_dwidth_converter_v2_1_35  -v2k5 "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xil_defaultlib -l gmii_to_rgmii_v4_1_18 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_20 -l processing_system7_vip_v1_0_22 -l util_vector_logic_v2_0_4 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_34 -l fifo_generator_v13_2_12 -l axi_data_fifo_v2_1_34 -l axi_crossbar_v2_1_36 -l axi_protocol_converter_v2_1_35 -l axi_clock_converter_v2_1_33 -l blk_mem_gen_v8_4_10 -l axi_dwidth_converter_v2_1_35 \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/e6c5/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xil_defaultlib -l gmii_to_rgmii_v4_1_18 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_20 -l processing_system7_vip_v1_0_22 -l util_vector_logic_v2_0_4 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_34 -l fifo_generator_v13_2_12 -l axi_data_fifo_v2_1_34 -l axi_crossbar_v2_1_36 -l axi_protocol_converter_v2_1_35 -l axi_clock_converter_v2_1_33 -l blk_mem_gen_v8_4_10 -l axi_dwidth_converter_v2_1_35 \
"../../../bd/blockone/ip/blockone_axi_interconnect_0_imp_auto_us_0/sim/blockone_axi_interconnect_0_imp_auto_us_0.v" \
"../../../bd/blockone/sim/blockone.v" \

vlog -work xil_defaultlib \
"glbl.v"

