transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+samplemem  -L xil_defaultlib -L xilinx_vip -L xpm -L blk_mem_gen_v8_4_10 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.samplemem xil_defaultlib.glbl

do {samplemem.udo}

run 1000ns

endsim

quit -force
