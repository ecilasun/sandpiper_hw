vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/lib_cdc_v1_0_3
vlib modelsim_lib/msim/proc_sys_reset_v5_0_16
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/gmii_to_rgmii_v4_1_18
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_vip_v1_1_20
vlib modelsim_lib/msim/processing_system7_vip_v1_0_22
vlib modelsim_lib/msim/util_vector_logic_v2_0_4
vlib modelsim_lib/msim/generic_baseblocks_v2_1_2
vlib modelsim_lib/msim/axi_register_slice_v2_1_34
vlib modelsim_lib/msim/fifo_generator_v13_2_12
vlib modelsim_lib/msim/axi_data_fifo_v2_1_34
vlib modelsim_lib/msim/axi_crossbar_v2_1_36
vlib modelsim_lib/msim/axi_protocol_converter_v2_1_35
vlib modelsim_lib/msim/axi_clock_converter_v2_1_33
vlib modelsim_lib/msim/blk_mem_gen_v8_4_10
vlib modelsim_lib/msim/axi_dwidth_converter_v2_1_35

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap lib_cdc_v1_0_3 modelsim_lib/msim/lib_cdc_v1_0_3
vmap proc_sys_reset_v5_0_16 modelsim_lib/msim/proc_sys_reset_v5_0_16
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap gmii_to_rgmii_v4_1_18 modelsim_lib/msim/gmii_to_rgmii_v4_1_18
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_20 modelsim_lib/msim/axi_vip_v1_1_20
vmap processing_system7_vip_v1_0_22 modelsim_lib/msim/processing_system7_vip_v1_0_22
vmap util_vector_logic_v2_0_4 modelsim_lib/msim/util_vector_logic_v2_0_4
vmap generic_baseblocks_v2_1_2 modelsim_lib/msim/generic_baseblocks_v2_1_2
vmap axi_register_slice_v2_1_34 modelsim_lib/msim/axi_register_slice_v2_1_34
vmap fifo_generator_v13_2_12 modelsim_lib/msim/fifo_generator_v13_2_12
vmap axi_data_fifo_v2_1_34 modelsim_lib/msim/axi_data_fifo_v2_1_34
vmap axi_crossbar_v2_1_36 modelsim_lib/msim/axi_crossbar_v2_1_36
vmap axi_protocol_converter_v2_1_35 modelsim_lib/msim/axi_protocol_converter_v2_1_35
vmap axi_clock_converter_v2_1_33 modelsim_lib/msim/axi_clock_converter_v2_1_33
vmap blk_mem_gen_v8_4_10 modelsim_lib/msim/blk_mem_gen_v8_4_10
vmap axi_dwidth_converter_v2_1_35 modelsim_lib/msim/axi_dwidth_converter_v2_1_35

vlog -work xilinx_vip  -incr -mfcu  -sv -L axi_vip_v1_1_20 -L processing_system7_vip_v1_0_22 -L xilinx_vip "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"G:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"G:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"G:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"G:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"G:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"G:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"G:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"G:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"G:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -mfcu  -sv -L axi_vip_v1_1_20 -L processing_system7_vip_v1_0_22 -L xilinx_vip "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"G:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"G:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"G:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work lib_cdc_v1_0_3  -93  \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_16  -93  \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/0831/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/blockone/ip/blockone_proc_sys_reset_0_1/sim/blockone_proc_sys_reset_0_1.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/blockone/ip/blockone_audiomodule_0_0/sim/blockone_audiomodule_0_0.v" \
"../../../bd/blockone/ip/blockone_videomodule_0_0/sim/blockone_videomodule_0_0.v" \
"../../../bd/blockone/ip/blockone_clk_wiz_0_0/blockone_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/blockone/ip/blockone_clk_wiz_0_0/blockone_clk_wiz_0_0.v" \

vcom -work xil_defaultlib  -93  \
"../../../bd/blockone/ip/blockone_gmii_to_rgmii_0_1/synth/blockone_gmii_to_rgmii_0_1_clocking.vhd" \
"../../../bd/blockone/ip/blockone_gmii_to_rgmii_0_1/synth/blockone_gmii_to_rgmii_0_1_resets.vhd" \
"../../../bd/blockone/ip/blockone_gmii_to_rgmii_0_1/synth/blockone_gmii_to_rgmii_0_1_support.vhd" \
"../../../bd/blockone/ip/blockone_gmii_to_rgmii_0_1/synth/blockone_gmii_to_rgmii_0_1_reset_sync.vhd" \
"../../../bd/blockone/ip/blockone_gmii_to_rgmii_0_1/synth/blockone_gmii_to_rgmii_0_1_block.vhd" \
"../../../bd/blockone/ip/blockone_gmii_to_rgmii_0_1/blockone_gmii_to_rgmii_0_1/simulation/demo_tb.vhd" \

vcom -work gmii_to_rgmii_v4_1_18  -93  \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/990c/hdl/gmii_to_rgmii_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/blockone/ip/blockone_gmii_to_rgmii_0_1/synth/blockone_gmii_to_rgmii_0_1.vhd" \

vlog -work axi_infrastructure_v1_1_0  -incr -mfcu  "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_20  -incr -mfcu  -sv -L axi_vip_v1_1_20 -L processing_system7_vip_v1_0_22 -L xilinx_vip "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/0f82/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_22  -incr -mfcu  -sv -L axi_vip_v1_1_20 -L processing_system7_vip_v1_0_22 -L xilinx_vip "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/blockone/ip/blockone_processing_system7_0_1/sim/blockone_processing_system7_0_1.v" \

vlog -work util_vector_logic_v2_0_4  -incr -mfcu  "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/fd7b/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/blockone/ip/blockone_util_vector_logic_0_0/sim/blockone_util_vector_logic_0_0.v" \
"../../../bd/blockone/ip/blockone_keyboardmodule_0_0/sim/blockone_keyboardmodule_0_0.v" \

vlog -work generic_baseblocks_v2_1_2  -incr -mfcu  "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_34  -incr -mfcu  "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/48f8/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_12  -incr -mfcu  "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/cc30/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_12  -93  \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/cc30/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_12  -incr -mfcu  "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/cc30/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_34  -incr -mfcu  "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8894/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_36  -incr -mfcu  "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/cb42/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/blockone/ip/blockone_axi_interconnect_0_imp_xbar_0/sim/blockone_axi_interconnect_0_imp_xbar_0.v" \

vlog -work axi_protocol_converter_v2_1_35  -incr -mfcu  "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/2a7e/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work axi_clock_converter_v2_1_33  -incr -mfcu  "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/e59d/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work blk_mem_gen_v8_4_10  -incr -mfcu  "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/9e79/simulation/blk_mem_gen_v8_4.v" \

vlog -work axi_dwidth_converter_v2_1_35  -incr -mfcu  "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/e6c5/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/blockone/ip/blockone_axi_interconnect_0_imp_auto_us_0/sim/blockone_axi_interconnect_0_imp_auto_us_0.v" \
"../../../bd/blockone/sim/blockone.v" \

vlog -work xil_defaultlib \
"glbl.v"

