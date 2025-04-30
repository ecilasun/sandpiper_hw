// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2.2 (win64) Build 6060944 Thu Mar 06 19:10:01 MST 2025
// Date        : Sun Apr 27 19:59:14 2025
// Host        : fastturtle running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/repos/testzor/testzor.gen/sources_1/bd/blockone/ip/blockone_clk_wiz_0_0/blockone_clk_wiz_0_0_stub.v
// Design      : blockone_clk_wiz_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CORE_GENERATION_INFO = "blockone_clk_wiz_0_0,clk_wiz_v6_0_15_0_0,{component_name=blockone_clk_wiz_0_0,use_phase_alignment=true,use_min_o_jitter=false,use_max_i_jitter=false,use_dyn_phase_shift=false,use_inclk_switchover=false,use_dyn_reconfig=false,enable_axi=0,feedback_source=FDBK_AUTO,PRIMITIVE=MMCM,num_out_clk=3,clkin1_period=10.000,clkin2_period=10.000,use_power_down=false,use_reset=true,use_locked=true,use_inclk_stopped=false,feedback_type=SINGLE,CLOCK_MGR_TYPE=NA,manual_override=false}" *) 
module blockone_clk_wiz_0_0(audioclk, pixelclk, serdesclk, reset, locked, 
  clk_in1)
/* synthesis syn_black_box black_box_pad_pin="reset,locked,clk_in1" */
/* synthesis syn_force_seq_prim="audioclk" */
/* synthesis syn_force_seq_prim="pixelclk" */
/* synthesis syn_force_seq_prim="serdesclk" */;
  output audioclk /* synthesis syn_isclock = 1 */;
  output pixelclk /* synthesis syn_isclock = 1 */;
  output serdesclk /* synthesis syn_isclock = 1 */;
  input reset;
  output locked;
  input clk_in1;
endmodule
