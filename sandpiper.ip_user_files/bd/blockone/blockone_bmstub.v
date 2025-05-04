// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module blockone (
  DDR_cas_n,
  DDR_cke,
  DDR_ck_n,
  DDR_ck_p,
  DDR_cs_n,
  DDR_reset_n,
  DDR_odt,
  DDR_ras_n,
  DDR_we_n,
  DDR_ba,
  DDR_addr,
  DDR_dm,
  DDR_dq,
  DDR_dqs_n,
  DDR_dqs_p,
  FIXED_IO_mio,
  FIXED_IO_ddr_vrn,
  FIXED_IO_ddr_vrp,
  FIXED_IO_ps_srstb,
  FIXED_IO_ps_clk,
  FIXED_IO_ps_porb,
  LED_tri_o,
  BUTTON_tri_i,
  UART_0_0_txd,
  UART_0_0_rxd,
  SPI_0_0_sck_i,
  SPI_0_0_sck_o,
  SPI_0_0_sck_t,
  SPI_0_0_io0_i,
  SPI_0_0_io0_o,
  SPI_0_0_io0_t,
  SPI_0_0_io1_i,
  SPI_0_0_io1_o,
  SPI_0_0_io1_t,
  SPI_0_0_ss_i,
  SPI_0_0_ss_o,
  SPI_0_0_ss1_o,
  SPI_0_0_ss2_o,
  SPI_0_0_ss_t,
  GPIO_0_0_tri_i,
  GPIO_0_0_tri_o,
  GPIO_0_0_tri_t,
  HDMI_CLK_p_0,
  HDMI_CLK_n_0,
  HDMI_TMDS_p_0,
  HDMI_TMDS_n_0
);

  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CAS_N" *)
  (* X_INTERFACE_MODE = "master DDR" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR, CAN_DEBUG false, TIMEPERIOD_PS 1250, MEMORY_TYPE COMPONENTS, DATA_WIDTH 8, CS_ENABLED true, DATA_MASK_ENABLED true, SLOT Single, MEM_ADDR_MAP ROW_COLUMN_BANK, BURST_LENGTH 8, AXI_ARBITRATION_SCHEME TDM, CAS_LATENCY 11, CAS_WRITE_LATENCY 11" *)
  inout DDR_cas_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CKE" *)
  inout DDR_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_N" *)
  inout DDR_ck_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_P" *)
  inout DDR_ck_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CS_N" *)
  inout DDR_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RESET_N" *)
  inout DDR_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ODT" *)
  inout DDR_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RAS_N" *)
  inout DDR_ras_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR WE_N" *)
  inout DDR_we_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR BA" *)
  inout [2:0]DDR_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ADDR" *)
  inout [14:0]DDR_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DM" *)
  inout [3:0]DDR_dm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQ" *)
  inout [31:0]DDR_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_N" *)
  inout [3:0]DDR_dqs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_P" *)
  inout [3:0]DDR_dqs_p;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO" *)
  (* X_INTERFACE_MODE = "master FIXED_IO" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false" *)
  inout [53:0]FIXED_IO_mio;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRN" *)
  inout FIXED_IO_ddr_vrn;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRP" *)
  inout FIXED_IO_ddr_vrp;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB" *)
  inout FIXED_IO_ps_srstb;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK" *)
  inout FIXED_IO_ps_clk;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB" *)
  inout FIXED_IO_ps_porb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 LED TRI_O" *)
  (* X_INTERFACE_MODE = "master LED" *)
  output [1:0]LED_tri_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 BUTTON TRI_I" *)
  (* X_INTERFACE_MODE = "master BUTTON" *)
  input [1:0]BUTTON_tri_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 UART_0_0 TxD" *)
  (* X_INTERFACE_MODE = "master UART_0_0" *)
  output UART_0_0_txd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 UART_0_0 RxD" *)
  input UART_0_0_rxd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0_0 SCK_I" *)
  (* X_INTERFACE_MODE = "master SPI_0_0" *)
  input SPI_0_0_sck_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0_0 SCK_O" *)
  output SPI_0_0_sck_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0_0 SCK_T" *)
  output SPI_0_0_sck_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0_0 IO0_I" *)
  input SPI_0_0_io0_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0_0 IO0_O" *)
  output SPI_0_0_io0_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0_0 IO0_T" *)
  output SPI_0_0_io0_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0_0 IO1_I" *)
  input SPI_0_0_io1_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0_0 IO1_O" *)
  output SPI_0_0_io1_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0_0 IO1_T" *)
  output SPI_0_0_io1_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0_0 SS_I" *)
  input SPI_0_0_ss_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0_0 SS_O" *)
  output SPI_0_0_ss_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0_0 SS1_O" *)
  output SPI_0_0_ss1_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0_0 SS2_O" *)
  output SPI_0_0_ss2_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0_0 SS_T" *)
  output SPI_0_0_ss_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO_0_0 TRI_I" *)
  (* X_INTERFACE_MODE = "master GPIO_0_0" *)
  input [2:0]GPIO_0_0_tri_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO_0_0 TRI_O" *)
  output [2:0]GPIO_0_0_tri_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO_0_0 TRI_T" *)
  output [2:0]GPIO_0_0_tri_t;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.HDMI_CLK_P_0 CLK" *)
  (* X_INTERFACE_MODE = "master CLK.HDMI_CLK_P_0" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.HDMI_CLK_P_0, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN blockone_videomodule_0_0_HDMI_CLK_p, INSERT_VIP 0" *)
  output HDMI_CLK_p_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.HDMI_CLK_N_0 CLK" *)
  (* X_INTERFACE_MODE = "master CLK.HDMI_CLK_N_0" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.HDMI_CLK_N_0, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN blockone_videomodule_0_0_HDMI_CLK_n, INSERT_VIP 0" *)
  output HDMI_CLK_n_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [2:0]HDMI_TMDS_p_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [2:0]HDMI_TMDS_n_0;

  // stub module has no contents

endmodule
