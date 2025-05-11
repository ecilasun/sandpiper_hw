transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+blockone  -L xil_defaultlib -L xilinx_vip -L xpm -L lib_cdc_v1_0_3 -L proc_sys_reset_v5_0_16 -L xlconstant_v1_1_9 -L smartconnect_v1_0 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_34 -L axi_vip_v1_1_20 -L gmii_to_rgmii_v4_1_18 -L processing_system7_vip_v1_0_22 -L util_vector_logic_v2_0_4 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.blockone xil_defaultlib.glbl

do {blockone.udo}

run 1000ns

endsim

quit -force
