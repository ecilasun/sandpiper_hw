vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_vip_v1_1_20
vlib modelsim_lib/msim/processing_system7_vip_v1_0_22
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/lib_cdc_v1_0_3
vlib modelsim_lib/msim/proc_sys_reset_v5_0_16
vlib modelsim_lib/msim/xlconstant_v1_1_9
vlib modelsim_lib/msim/smartconnect_v1_0
vlib modelsim_lib/msim/axi_register_slice_v2_1_34
vlib modelsim_lib/msim/axi_lite_ipif_v3_0_4
vlib modelsim_lib/msim/interrupt_control_v3_1_5
vlib modelsim_lib/msim/axi_gpio_v2_0_36
vlib modelsim_lib/msim/gmii_to_rgmii_v4_1_18

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_20 modelsim_lib/msim/axi_vip_v1_1_20
vmap processing_system7_vip_v1_0_22 modelsim_lib/msim/processing_system7_vip_v1_0_22
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap lib_cdc_v1_0_3 modelsim_lib/msim/lib_cdc_v1_0_3
vmap proc_sys_reset_v5_0_16 modelsim_lib/msim/proc_sys_reset_v5_0_16
vmap xlconstant_v1_1_9 modelsim_lib/msim/xlconstant_v1_1_9
vmap smartconnect_v1_0 modelsim_lib/msim/smartconnect_v1_0
vmap axi_register_slice_v2_1_34 modelsim_lib/msim/axi_register_slice_v2_1_34
vmap axi_lite_ipif_v3_0_4 modelsim_lib/msim/axi_lite_ipif_v3_0_4
vmap interrupt_control_v3_1_5 modelsim_lib/msim/interrupt_control_v3_1_5
vmap axi_gpio_v2_0_36 modelsim_lib/msim/axi_gpio_v2_0_36
vmap gmii_to_rgmii_v4_1_18 modelsim_lib/msim/gmii_to_rgmii_v4_1_18

vlog -work xilinx_vip  -incr -mfcu  -sv -L axi_vip_v1_1_20 -L processing_system7_vip_v1_0_22 -L smartconnect_v1_0 -L xilinx_vip "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"G:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"G:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"G:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"G:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"G:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"G:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"G:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"G:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"G:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -mfcu  -sv -L axi_vip_v1_1_20 -L processing_system7_vip_v1_0_22 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/0127/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"G:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"G:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"G:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"G:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -incr -mfcu  "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/0127/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_20  -incr -mfcu  -sv -L axi_vip_v1_1_20 -L processing_system7_vip_v1_0_22 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/0127/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/0f82/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_22  -incr -mfcu  -sv -L axi_vip_v1_1_20 -L processing_system7_vip_v1_0_22 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/0127/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/0127/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/blockone/ip/blockone_processing_system7_0_0/sim/blockone_processing_system7_0_0.v" \

vcom -work lib_cdc_v1_0_3  -93  \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_16  -93  \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/0831/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/blockone/ip/blockone_proc_sys_reset_0_1/sim/blockone_proc_sys_reset_0_1.vhd" \

vlog -work xlconstant_v1_1_9  -incr -mfcu  "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/0127/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/e2d2/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/0127/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/blockone/ip/blockone_smartconnect_0_0/bd_0/ip/ip_0/sim/bd_4389_one_0.v" \

vcom -work xil_defaultlib  -93  \
"../../../bd/blockone/ip/blockone_smartconnect_0_0/bd_0/ip/ip_1/sim/bd_4389_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_20 -L processing_system7_vip_v1_0_22 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/0127/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3718/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_20 -L processing_system7_vip_v1_0_22 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/0127/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/blockone/ip/blockone_smartconnect_0_0/bd_0/ip/ip_2/sim/bd_4389_arsw_0.sv" \
"../../../bd/blockone/ip/blockone_smartconnect_0_0/bd_0/ip/ip_3/sim/bd_4389_rsw_0.sv" \
"../../../bd/blockone/ip/blockone_smartconnect_0_0/bd_0/ip/ip_4/sim/bd_4389_awsw_0.sv" \
"../../../bd/blockone/ip/blockone_smartconnect_0_0/bd_0/ip/ip_5/sim/bd_4389_wsw_0.sv" \
"../../../bd/blockone/ip/blockone_smartconnect_0_0/bd_0/ip/ip_6/sim/bd_4389_bsw_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_20 -L processing_system7_vip_v1_0_22 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/0127/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/f49a/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_20 -L processing_system7_vip_v1_0_22 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/0127/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/blockone/ip/blockone_smartconnect_0_0/bd_0/ip/ip_7/sim/bd_4389_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_20 -L processing_system7_vip_v1_0_22 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/0127/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/2da8/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_20 -L processing_system7_vip_v1_0_22 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/0127/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/blockone/ip/blockone_smartconnect_0_0/bd_0/ip/ip_8/sim/bd_4389_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_20 -L processing_system7_vip_v1_0_22 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/0127/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/63ed/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_20 -L processing_system7_vip_v1_0_22 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/0127/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/blockone/ip/blockone_smartconnect_0_0/bd_0/ip/ip_9/sim/bd_4389_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_20 -L processing_system7_vip_v1_0_22 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/0127/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/cef3/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_20 -L processing_system7_vip_v1_0_22 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/0127/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/blockone/ip/blockone_smartconnect_0_0/bd_0/ip/ip_10/sim/bd_4389_s00a2s_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_20 -L processing_system7_vip_v1_0_22 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/0127/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/0127/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_20 -L processing_system7_vip_v1_0_22 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/0127/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/blockone/ip/blockone_smartconnect_0_0/bd_0/ip/ip_11/sim/bd_4389_sarn_0.sv" \
"../../../bd/blockone/ip/blockone_smartconnect_0_0/bd_0/ip/ip_12/sim/bd_4389_srn_0.sv" \
"../../../bd/blockone/ip/blockone_smartconnect_0_0/bd_0/ip/ip_13/sim/bd_4389_sawn_0.sv" \
"../../../bd/blockone/ip/blockone_smartconnect_0_0/bd_0/ip/ip_14/sim/bd_4389_swn_0.sv" \
"../../../bd/blockone/ip/blockone_smartconnect_0_0/bd_0/ip/ip_15/sim/bd_4389_sbn_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_20 -L processing_system7_vip_v1_0_22 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/0127/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/7f4f/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_20 -L processing_system7_vip_v1_0_22 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/0127/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/blockone/ip/blockone_smartconnect_0_0/bd_0/ip/ip_16/sim/bd_4389_m00s2a_0.sv" \
"../../../bd/blockone/ip/blockone_smartconnect_0_0/bd_0/ip/ip_17/sim/bd_4389_m00arn_0.sv" \
"../../../bd/blockone/ip/blockone_smartconnect_0_0/bd_0/ip/ip_18/sim/bd_4389_m00rn_0.sv" \
"../../../bd/blockone/ip/blockone_smartconnect_0_0/bd_0/ip/ip_19/sim/bd_4389_m00awn_0.sv" \
"../../../bd/blockone/ip/blockone_smartconnect_0_0/bd_0/ip/ip_20/sim/bd_4389_m00wn_0.sv" \
"../../../bd/blockone/ip/blockone_smartconnect_0_0/bd_0/ip/ip_21/sim/bd_4389_m00bn_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_20 -L processing_system7_vip_v1_0_22 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/0127/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/37bc/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_20 -L processing_system7_vip_v1_0_22 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/0127/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/blockone/ip/blockone_smartconnect_0_0/bd_0/ip/ip_22/sim/bd_4389_m00e_0.sv" \
"../../../bd/blockone/ip/blockone_smartconnect_0_0/bd_0/ip/ip_23/sim/bd_4389_m01s2a_0.sv" \
"../../../bd/blockone/ip/blockone_smartconnect_0_0/bd_0/ip/ip_24/sim/bd_4389_m01arn_0.sv" \
"../../../bd/blockone/ip/blockone_smartconnect_0_0/bd_0/ip/ip_25/sim/bd_4389_m01rn_0.sv" \
"../../../bd/blockone/ip/blockone_smartconnect_0_0/bd_0/ip/ip_26/sim/bd_4389_m01awn_0.sv" \
"../../../bd/blockone/ip/blockone_smartconnect_0_0/bd_0/ip/ip_27/sim/bd_4389_m01wn_0.sv" \
"../../../bd/blockone/ip/blockone_smartconnect_0_0/bd_0/ip/ip_28/sim/bd_4389_m01bn_0.sv" \
"../../../bd/blockone/ip/blockone_smartconnect_0_0/bd_0/ip/ip_29/sim/bd_4389_m01e_0.sv" \
"../../../bd/blockone/ip/blockone_smartconnect_0_0/bd_0/ip/ip_30/sim/bd_4389_m02s2a_0.sv" \
"../../../bd/blockone/ip/blockone_smartconnect_0_0/bd_0/ip/ip_31/sim/bd_4389_m02arn_0.sv" \
"../../../bd/blockone/ip/blockone_smartconnect_0_0/bd_0/ip/ip_32/sim/bd_4389_m02rn_0.sv" \
"../../../bd/blockone/ip/blockone_smartconnect_0_0/bd_0/ip/ip_33/sim/bd_4389_m02awn_0.sv" \
"../../../bd/blockone/ip/blockone_smartconnect_0_0/bd_0/ip/ip_34/sim/bd_4389_m02wn_0.sv" \
"../../../bd/blockone/ip/blockone_smartconnect_0_0/bd_0/ip/ip_35/sim/bd_4389_m02bn_0.sv" \
"../../../bd/blockone/ip/blockone_smartconnect_0_0/bd_0/ip/ip_36/sim/bd_4389_m02e_0.sv" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/0127/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/blockone/ip/blockone_smartconnect_0_0/bd_0/sim/bd_4389.v" \

vlog -work axi_register_slice_v2_1_34  -incr -mfcu  "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/0127/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/48f8/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/0127/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/blockone/ip/blockone_smartconnect_0_0/sim/blockone_smartconnect_0_0.v" \

vcom -work axi_lite_ipif_v3_0_4  -93  \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work interrupt_control_v3_1_5  -93  \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/d8cc/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_36  -93  \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/7a36/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/blockone/ip/blockone_axi_gpio_0_0/sim/blockone_axi_gpio_0_0.vhd" \
"../../../bd/blockone/ip/blockone_gmii_to_rgmii_0_0/synth/blockone_gmii_to_rgmii_0_0_clocking.vhd" \
"../../../bd/blockone/ip/blockone_gmii_to_rgmii_0_0/synth/blockone_gmii_to_rgmii_0_0_resets.vhd" \
"../../../bd/blockone/ip/blockone_gmii_to_rgmii_0_0/synth/blockone_gmii_to_rgmii_0_0_support.vhd" \
"../../../bd/blockone/ip/blockone_gmii_to_rgmii_0_0/synth/blockone_gmii_to_rgmii_0_0_reset_sync.vhd" \
"../../../bd/blockone/ip/blockone_gmii_to_rgmii_0_0/synth/blockone_gmii_to_rgmii_0_0_block.vhd" \
"../../../bd/blockone/ip/blockone_gmii_to_rgmii_0_0/blockone_gmii_to_rgmii_0_0/simulation/demo_tb.vhd" \

vcom -work gmii_to_rgmii_v4_1_18  -93  \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/990c/hdl/gmii_to_rgmii_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/blockone/ip/blockone_gmii_to_rgmii_0_0/synth/blockone_gmii_to_rgmii_0_0.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/0127/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/blockone/ip/blockone_audiomodule_0_0/sim/blockone_audiomodule_0_0.v" \
"../../../bd/blockone/ip/blockone_videomodule_0_0/sim/blockone_videomodule_0_0.v" \
"../../../bd/blockone/ip/blockone_clk_wiz_0_0/blockone_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/blockone/ip/blockone_clk_wiz_0_0/blockone_clk_wiz_0_0.v" \
"../../../bd/blockone/sim/blockone.v" \

vlog -work xil_defaultlib \
"glbl.v"

