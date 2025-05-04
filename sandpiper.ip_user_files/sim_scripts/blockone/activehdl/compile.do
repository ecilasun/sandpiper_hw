transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_20
vlib activehdl/processing_system7_vip_v1_0_22
vlib activehdl/xil_defaultlib
vlib activehdl/lib_cdc_v1_0_3
vlib activehdl/proc_sys_reset_v5_0_16
vlib activehdl/xlconstant_v1_1_9
vlib activehdl/smartconnect_v1_0
vlib activehdl/axi_register_slice_v2_1_34

vmap xilinx_vip activehdl/xilinx_vip
vmap xpm activehdl/xpm
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_20 activehdl/axi_vip_v1_1_20
vmap processing_system7_vip_v1_0_22 activehdl/processing_system7_vip_v1_0_22
vmap xil_defaultlib activehdl/xil_defaultlib
vmap lib_cdc_v1_0_3 activehdl/lib_cdc_v1_0_3
vmap proc_sys_reset_v5_0_16 activehdl/proc_sys_reset_v5_0_16
vmap xlconstant_v1_1_9 activehdl/xlconstant_v1_1_9
vmap smartconnect_v1_0 activehdl/smartconnect_v1_0
vmap axi_register_slice_v2_1_34 activehdl/axi_register_slice_v2_1_34

vlog -work xilinx_vip  -sv2k12 "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_20 -l processing_system7_vip_v1_0_22 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_34 \
"G:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"G:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"G:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"G:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"G:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"G:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"G:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"G:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"G:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/0127/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_20 -l processing_system7_vip_v1_0_22 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_34 \
"G:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"G:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"G:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"G:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/0127/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_20 -l processing_system7_vip_v1_0_22 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_34 \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_20  -sv2k12 "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/0127/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_20 -l processing_system7_vip_v1_0_22 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_34 \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/0f82/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_22  -sv2k12 "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/0127/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_20 -l processing_system7_vip_v1_0_22 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_34 \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/0127/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_20 -l processing_system7_vip_v1_0_22 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_34 \
"../../../bd/blockone/ip/blockone_processing_system7_0_0/sim/blockone_processing_system7_0_0.v" \

vcom -work lib_cdc_v1_0_3 -93  \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_16 -93  \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/0831/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/blockone/ip/blockone_proc_sys_reset_0_1/sim/blockone_proc_sys_reset_0_1.vhd" \

vlog -work xlconstant_v1_1_9  -v2k5 "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/0127/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_20 -l processing_system7_vip_v1_0_22 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_34 \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/e2d2/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/0127/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_20 -l processing_system7_vip_v1_0_22 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_34 \
"../../../bd/blockone/ip/blockone_smartconnect_0_0/bd_0/ip/ip_0/sim/bd_4389_one_0.v" \

vcom -work xil_defaultlib -93  \
"../../../bd/blockone/ip/blockone_smartconnect_0_0/bd_0/ip/ip_1/sim/bd_4389_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/0127/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_20 -l processing_system7_vip_v1_0_22 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_34 \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3718/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/0127/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_20 -l processing_system7_vip_v1_0_22 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_34 \
"../../../bd/blockone/ip/blockone_smartconnect_0_0/bd_0/ip/ip_2/sim/bd_4389_arsw_0.sv" \
"../../../bd/blockone/ip/blockone_smartconnect_0_0/bd_0/ip/ip_3/sim/bd_4389_rsw_0.sv" \
"../../../bd/blockone/ip/blockone_smartconnect_0_0/bd_0/ip/ip_4/sim/bd_4389_awsw_0.sv" \
"../../../bd/blockone/ip/blockone_smartconnect_0_0/bd_0/ip/ip_5/sim/bd_4389_wsw_0.sv" \
"../../../bd/blockone/ip/blockone_smartconnect_0_0/bd_0/ip/ip_6/sim/bd_4389_bsw_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/0127/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_20 -l processing_system7_vip_v1_0_22 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_34 \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/f49a/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/0127/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_20 -l processing_system7_vip_v1_0_22 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_34 \
"../../../bd/blockone/ip/blockone_smartconnect_0_0/bd_0/ip/ip_7/sim/bd_4389_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/0127/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_20 -l processing_system7_vip_v1_0_22 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_34 \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/2da8/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/0127/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_20 -l processing_system7_vip_v1_0_22 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_34 \
"../../../bd/blockone/ip/blockone_smartconnect_0_0/bd_0/ip/ip_8/sim/bd_4389_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/0127/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_20 -l processing_system7_vip_v1_0_22 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_34 \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/63ed/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/0127/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_20 -l processing_system7_vip_v1_0_22 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_34 \
"../../../bd/blockone/ip/blockone_smartconnect_0_0/bd_0/ip/ip_9/sim/bd_4389_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/0127/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_20 -l processing_system7_vip_v1_0_22 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_34 \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/cef3/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/0127/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_20 -l processing_system7_vip_v1_0_22 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_34 \
"../../../bd/blockone/ip/blockone_smartconnect_0_0/bd_0/ip/ip_10/sim/bd_4389_s00a2s_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/0127/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_20 -l processing_system7_vip_v1_0_22 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_34 \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/0127/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/0127/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_20 -l processing_system7_vip_v1_0_22 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_34 \
"../../../bd/blockone/ip/blockone_smartconnect_0_0/bd_0/ip/ip_11/sim/bd_4389_sarn_0.sv" \
"../../../bd/blockone/ip/blockone_smartconnect_0_0/bd_0/ip/ip_12/sim/bd_4389_srn_0.sv" \
"../../../bd/blockone/ip/blockone_smartconnect_0_0/bd_0/ip/ip_13/sim/bd_4389_sawn_0.sv" \
"../../../bd/blockone/ip/blockone_smartconnect_0_0/bd_0/ip/ip_14/sim/bd_4389_swn_0.sv" \
"../../../bd/blockone/ip/blockone_smartconnect_0_0/bd_0/ip/ip_15/sim/bd_4389_sbn_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/0127/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_20 -l processing_system7_vip_v1_0_22 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_34 \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/7f4f/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/0127/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_20 -l processing_system7_vip_v1_0_22 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_34 \
"../../../bd/blockone/ip/blockone_smartconnect_0_0/bd_0/ip/ip_16/sim/bd_4389_m00s2a_0.sv" \
"../../../bd/blockone/ip/blockone_smartconnect_0_0/bd_0/ip/ip_17/sim/bd_4389_m00arn_0.sv" \
"../../../bd/blockone/ip/blockone_smartconnect_0_0/bd_0/ip/ip_18/sim/bd_4389_m00rn_0.sv" \
"../../../bd/blockone/ip/blockone_smartconnect_0_0/bd_0/ip/ip_19/sim/bd_4389_m00awn_0.sv" \
"../../../bd/blockone/ip/blockone_smartconnect_0_0/bd_0/ip/ip_20/sim/bd_4389_m00wn_0.sv" \
"../../../bd/blockone/ip/blockone_smartconnect_0_0/bd_0/ip/ip_21/sim/bd_4389_m00bn_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/0127/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_20 -l processing_system7_vip_v1_0_22 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_34 \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/37bc/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/0127/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_20 -l processing_system7_vip_v1_0_22 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_34 \
"../../../bd/blockone/ip/blockone_smartconnect_0_0/bd_0/ip/ip_22/sim/bd_4389_m00e_0.sv" \
"../../../bd/blockone/ip/blockone_smartconnect_0_0/bd_0/ip/ip_23/sim/bd_4389_m01s2a_0.sv" \
"../../../bd/blockone/ip/blockone_smartconnect_0_0/bd_0/ip/ip_24/sim/bd_4389_m01arn_0.sv" \
"../../../bd/blockone/ip/blockone_smartconnect_0_0/bd_0/ip/ip_25/sim/bd_4389_m01rn_0.sv" \
"../../../bd/blockone/ip/blockone_smartconnect_0_0/bd_0/ip/ip_26/sim/bd_4389_m01awn_0.sv" \
"../../../bd/blockone/ip/blockone_smartconnect_0_0/bd_0/ip/ip_27/sim/bd_4389_m01wn_0.sv" \
"../../../bd/blockone/ip/blockone_smartconnect_0_0/bd_0/ip/ip_28/sim/bd_4389_m01bn_0.sv" \
"../../../bd/blockone/ip/blockone_smartconnect_0_0/bd_0/ip/ip_29/sim/bd_4389_m01e_0.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/0127/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_20 -l processing_system7_vip_v1_0_22 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_34 \
"../../../bd/blockone/ip/blockone_smartconnect_0_0/bd_0/sim/bd_4389.v" \

vlog -work axi_register_slice_v2_1_34  -v2k5 "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/0127/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_20 -l processing_system7_vip_v1_0_22 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_34 \
"../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/48f8/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/ec67/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/8391/hdl" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/0127/hdl/verilog" "+incdir+../../../../sandpiper.gen/sources_1/bd/blockone/ipshared/3cbc" "+incdir+G:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_20 -l processing_system7_vip_v1_0_22 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_34 \
"../../../bd/blockone/ip/blockone_smartconnect_0_0/sim/blockone_smartconnect_0_0.v" \
"../../../bd/blockone/ip/blockone_audiomodule_0_0/sim/blockone_audiomodule_0_0.v" \
"../../../bd/blockone/ip/blockone_videomodule_0_0/sim/blockone_videomodule_0_0.v" \
"../../../bd/blockone/ip/blockone_clk_wiz_0_0/blockone_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/blockone/ip/blockone_clk_wiz_0_0/blockone_clk_wiz_0_0.v" \
"../../../bd/blockone/ip/blockone_xlconstant_0_0/sim/blockone_xlconstant_0_0.v" \
"../../../bd/blockone/ip/blockone_xlconstant_0_1/sim/blockone_xlconstant_0_1.v" \
"../../../bd/blockone/sim/blockone.v" \

vlog -work xil_defaultlib \
"glbl.v"

