transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+blockone  -L xil_defaultlib -L xilinx_vip -L xpm -L proc_sys_reset_v5_0_17 -L gmii_to_rgmii_v4_1_19 -L axi_infrastructure_v1_1_0 -L axi_vip_v1_1_21 -L processing_system7_vip_v1_0_23 -L util_vector_logic_v2_0_5 -L generic_baseblocks_v2_1_2 -L axi_register_slice_v2_1_35 -L fifo_generator_v13_2_13 -L axi_data_fifo_v2_1_35 -L axi_crossbar_v2_1_37 -L axi_protocol_converter_v2_1_36 -L axi_clock_converter_v2_1_34 -L blk_mem_gen_v8_4_11 -L axi_dwidth_converter_v2_1_36 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.blockone xil_defaultlib.glbl

do {blockone.udo}

run 1000ns

endsim

quit -force
