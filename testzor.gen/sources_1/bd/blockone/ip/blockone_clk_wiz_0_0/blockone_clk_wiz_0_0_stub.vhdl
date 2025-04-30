-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2.2 (win64) Build 6060944 Thu Mar 06 19:10:01 MST 2025
-- Date        : Sun Apr 27 19:59:14 2025
-- Host        : fastturtle running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/repos/testzor/testzor.gen/sources_1/bd/blockone/ip/blockone_clk_wiz_0_0/blockone_clk_wiz_0_0_stub.vhdl
-- Design      : blockone_clk_wiz_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity blockone_clk_wiz_0_0 is
  Port ( 
    audioclk : out STD_LOGIC;
    pixelclk : out STD_LOGIC;
    serdesclk : out STD_LOGIC;
    reset : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of blockone_clk_wiz_0_0 : entity is "blockone_clk_wiz_0_0,clk_wiz_v6_0_15_0_0,{component_name=blockone_clk_wiz_0_0,use_phase_alignment=true,use_min_o_jitter=false,use_max_i_jitter=false,use_dyn_phase_shift=false,use_inclk_switchover=false,use_dyn_reconfig=false,enable_axi=0,feedback_source=FDBK_AUTO,PRIMITIVE=MMCM,num_out_clk=3,clkin1_period=10.000,clkin2_period=10.000,use_power_down=false,use_reset=true,use_locked=true,use_inclk_stopped=false,feedback_type=SINGLE,CLOCK_MGR_TYPE=NA,manual_override=false}";
end blockone_clk_wiz_0_0;

architecture stub of blockone_clk_wiz_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "audioclk,pixelclk,serdesclk,reset,locked,clk_in1";
begin
end;
