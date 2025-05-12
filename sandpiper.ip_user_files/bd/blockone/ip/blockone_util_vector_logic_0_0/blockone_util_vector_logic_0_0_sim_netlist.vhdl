-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2.2 (win64) Build 6060944 Thu Mar 06 19:10:01 MST 2025
-- Date        : Sun May 11 03:03:41 2025
-- Host        : fastturtle running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top blockone_util_vector_logic_0_0 -prefix
--               blockone_util_vector_logic_0_0_ blockone_util_vector_logic_0_0_sim_netlist.vhdl
-- Design      : blockone_util_vector_logic_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity blockone_util_vector_logic_0_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of blockone_util_vector_logic_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of blockone_util_vector_logic_0_0 : entity is "blockone_util_vector_logic_0_0,util_vector_logic_v2_0_4_util_vector_logic,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of blockone_util_vector_logic_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of blockone_util_vector_logic_0_0 : entity is "util_vector_logic_v2_0_4_util_vector_logic,Vivado 2024.2.2";
end blockone_util_vector_logic_0_0;

architecture STRUCTURE of blockone_util_vector_logic_0_0 is
begin
\Res[0]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Op1(0),
      O => Res(0)
    );
end STRUCTURE;
