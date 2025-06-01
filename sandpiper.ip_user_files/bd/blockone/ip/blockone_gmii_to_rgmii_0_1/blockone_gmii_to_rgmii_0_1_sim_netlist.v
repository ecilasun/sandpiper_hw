// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2.2 (win64) Build 6060944 Thu Mar 06 19:10:01 MST 2025
// Date        : Mon May 19 20:07:07 2025
// Host        : fastturtle running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top blockone_gmii_to_rgmii_0_1 -prefix
//               blockone_gmii_to_rgmii_0_1_ blockone_gmii_to_rgmii_0_1_sim_netlist.v
// Design      : blockone_gmii_to_rgmii_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* x_core_info = "gmii_to_rgmii_v4_1_18,Vivado 2024.2.2" *) 
(* NotValidForBitStream *)
module blockone_gmii_to_rgmii_0_1
   (tx_reset,
    rx_reset,
    clkin,
    ref_clk_out,
    mmcm_locked_out,
    gmii_clk_125m_out,
    gmii_clk_25m_out,
    gmii_clk_2_5m_out,
    speed_mode,
    gmii_tx_clk,
    gmii_tx_en,
    gmii_txd,
    gmii_tx_er,
    gmii_crs,
    gmii_col,
    gmii_rx_clk,
    gmii_rx_dv,
    gmii_rxd,
    gmii_rx_er,
    mdio_gem_mdc,
    mdio_gem_i,
    mdio_gem_o,
    mdio_gem_t,
    link_status,
    clock_speed,
    duplex_status,
    rgmii_txd,
    rgmii_tx_ctl,
    rgmii_txc,
    rgmii_rxd,
    rgmii_rx_ctl,
    rgmii_rxc,
    mdio_phy_mdc,
    mdio_phy_i,
    mdio_phy_o,
    mdio_phy_t);
  input tx_reset;
  input rx_reset;
  input clkin;
  output ref_clk_out;
  output mmcm_locked_out;
  output gmii_clk_125m_out;
  output gmii_clk_25m_out;
  output gmii_clk_2_5m_out;
  output [1:0]speed_mode;
  output gmii_tx_clk;
  input gmii_tx_en;
  input [7:0]gmii_txd;
  input gmii_tx_er;
  output gmii_crs;
  output gmii_col;
  output gmii_rx_clk;
  output gmii_rx_dv;
  output [7:0]gmii_rxd;
  output gmii_rx_er;
  input mdio_gem_mdc;
  output mdio_gem_i;
  input mdio_gem_o;
  input mdio_gem_t;
  output link_status;
  output [1:0]clock_speed;
  output duplex_status;
  output [3:0]rgmii_txd;
  output rgmii_tx_ctl;
  output rgmii_txc;
  input [3:0]rgmii_rxd;
  input rgmii_rx_ctl;
  input rgmii_rxc;
  output mdio_phy_mdc;
  input mdio_phy_i;
  output mdio_phy_o;
  output mdio_phy_t;

  wire clkin;
  wire [1:0]clock_speed;
  wire duplex_status;
  wire gmii_clk_125m_out;
  wire gmii_clk_25m_out;
  wire gmii_clk_2_5m_out;
  wire gmii_col;
  wire gmii_crs;
  wire gmii_rx_clk;
  wire gmii_rx_dv;
  wire gmii_rx_er;
  wire [7:0]gmii_rxd;
  wire gmii_tx_clk;
  wire gmii_tx_en;
  wire gmii_tx_er;
  wire [7:0]gmii_txd;
  wire link_status;
  wire mdio_gem_i;
  wire mdio_gem_mdc;
  wire mdio_gem_o;
  wire mdio_gem_t;
  wire mdio_phy_i;
  wire mdio_phy_mdc;
  wire mdio_phy_o;
  wire mdio_phy_t;
  wire mmcm_locked_out;
  wire ref_clk_out;
  (* IBUF_LOW_PWR *) wire rgmii_rx_ctl;
  (* IBUF_LOW_PWR *) wire rgmii_rxc;
  (* IBUF_LOW_PWR *) wire [3:0]rgmii_rxd;
  (* DRIVE = "12" *) (* SLEW = "SLOW" *) wire rgmii_tx_ctl;
  (* DRIVE = "12" *) (* SLEW = "SLOW" *) wire rgmii_txc;
  (* DRIVE = "12" *) (* SLEW = "SLOW" *) wire [3:0]rgmii_txd;
  wire rx_reset;
  wire [1:0]speed_mode;
  wire tx_reset;

  blockone_gmii_to_rgmii_0_1_blockone_gmii_to_rgmii_0_1_support U0
       (.clkin(clkin),
        .clock_speed(clock_speed),
        .duplex_status(duplex_status),
        .gmii_clk_125m_out(gmii_clk_125m_out),
        .gmii_clk_25m_out(gmii_clk_25m_out),
        .gmii_clk_2_5m_out(gmii_clk_2_5m_out),
        .gmii_col(gmii_col),
        .gmii_crs(gmii_crs),
        .gmii_rx_clk(gmii_rx_clk),
        .gmii_rx_dv(gmii_rx_dv),
        .gmii_rx_er(gmii_rx_er),
        .gmii_rxd(gmii_rxd),
        .gmii_tx_clk(gmii_tx_clk),
        .gmii_tx_en(gmii_tx_en),
        .gmii_tx_er(gmii_tx_er),
        .gmii_txd(gmii_txd),
        .link_status(link_status),
        .mdio_gem_i(mdio_gem_i),
        .mdio_gem_mdc(mdio_gem_mdc),
        .mdio_gem_o(mdio_gem_o),
        .mdio_gem_t(mdio_gem_t),
        .mdio_phy_i(mdio_phy_i),
        .mdio_phy_mdc(mdio_phy_mdc),
        .mdio_phy_o(mdio_phy_o),
        .mdio_phy_t(mdio_phy_t),
        .mmcm_locked_out(mmcm_locked_out),
        .ref_clk_out(ref_clk_out),
        .rgmii_rx_ctl(rgmii_rx_ctl),
        .rgmii_rxc(rgmii_rxc),
        .rgmii_rxd(rgmii_rxd),
        .rgmii_tx_ctl(rgmii_tx_ctl),
        .rgmii_txc(rgmii_txc),
        .rgmii_txd(rgmii_txd),
        .rx_reset(rx_reset),
        .speed_mode(speed_mode),
        .tx_reset(tx_reset));
endmodule

module blockone_gmii_to_rgmii_0_1_blockone_gmii_to_rgmii_0_1_block
   (speed_mode,
    gmii_crs,
    gmii_col,
    gmii_rx_clk,
    gmii_rx_dv,
    gmii_rxd,
    gmii_rx_er,
    mdio_gem_i,
    link_status,
    clock_speed,
    duplex_status,
    mdio_phy_mdc,
    mdio_phy_o,
    mdio_phy_t,
    gmii_tx_clk,
    rgmii_txc,
    rgmii_tx_ctl,
    rgmii_txd,
    tx_reset,
    rx_reset,
    ref_clk_out,
    gmii_tx_en,
    gmii_txd,
    gmii_tx_er,
    mdio_gem_mdc,
    mdio_gem_o,
    mdio_gem_t,
    mdio_phy_i,
    gmii_clk_2_5m_out,
    gmii_clk_25m_out,
    gmii_clk_125m_out,
    rgmii_rxc,
    rgmii_rx_ctl,
    rgmii_rxd);
  output [1:0]speed_mode;
  output gmii_crs;
  output gmii_col;
  output gmii_rx_clk;
  output gmii_rx_dv;
  output [7:0]gmii_rxd;
  output gmii_rx_er;
  output mdio_gem_i;
  output link_status;
  output [1:0]clock_speed;
  output duplex_status;
  output mdio_phy_mdc;
  output mdio_phy_o;
  output mdio_phy_t;
  output gmii_tx_clk;
  output rgmii_txc;
  output rgmii_tx_ctl;
  output [3:0]rgmii_txd;
  input tx_reset;
  input rx_reset;
  input ref_clk_out;
  input gmii_tx_en;
  input [7:0]gmii_txd;
  input gmii_tx_er;
  input mdio_gem_mdc;
  input mdio_gem_o;
  input mdio_gem_t;
  input mdio_phy_i;
  input gmii_clk_2_5m_out;
  input gmii_clk_25m_out;
  input gmii_clk_125m_out;
  input rgmii_rxc;
  input rgmii_rx_ctl;
  input [3:0]rgmii_rxd;

  wire I;
  wire [1:0]clock_speed;
  wire duplex_status;
  wire gmii_clk_125m_out;
  wire gmii_clk_25m_or_2_5m;
  wire gmii_clk_25m_out;
  wire gmii_clk_2_5m_out;
  wire gmii_col;
  wire gmii_crs;
  wire gmii_rx_clk;
  wire gmii_rx_dv;
  wire gmii_rx_er;
  wire [7:0]gmii_rxd;
  wire gmii_tx_clk;
  wire gmii_tx_en;
  wire gmii_tx_er;
  wire [7:0]gmii_txd;
  wire link_status;
  wire mdio_gem_i;
  wire mdio_gem_mdc;
  wire mdio_gem_o;
  wire mdio_gem_t;
  wire mdio_phy_i;
  wire mdio_phy_mdc;
  wire mdio_phy_o;
  wire mdio_phy_t;
  wire ref_clk_out;
  wire rgmii_rx_ctl;
  wire rgmii_rx_ctl_ibuf;
  wire rgmii_rxc;
  wire rgmii_rxc_ibuf;
  wire [3:0]rgmii_rxd;
  wire [3:0]rgmii_rxd_ibuf;
  wire rgmii_tx_ctl;
  wire rgmii_tx_ctl_obuf;
  wire rgmii_txc;
  wire [3:0]rgmii_txd;
  wire [3:0]rgmii_txd_obuf;
  wire rx_reset;
  wire [1:0]speed_mode;
  wire tx_reset;

  (* C_DEVICE_TYPE = "0" *) 
  (* C_IDELAY_DELAY_VAL = "5'b00000" *) 
  (* C_ODELAY_DELAY_VAL = "5'b11111" *) 
  (* C_PHYADDR = "5'b01000" *) 
  (* C_RGMII_TXC_ODELAY_VAL = "0" *) 
  (* C_RGMII_TXC_SKEW_EN = "0" *) 
  (* C_VERSAL_SIM_DEVICE = "UNKNOWN_DEVICE" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* is_du_within_envelope = "true" *) 
  blockone_gmii_to_rgmii_0_1_gmii_to_rgmii_v4_1_18 blockone_gmii_to_rgmii_0_1_core
       (.clock_speed(clock_speed),
        .duplex_status(duplex_status),
        .gmii_col(gmii_col),
        .gmii_crs(gmii_crs),
        .gmii_rx_clk(gmii_rx_clk),
        .gmii_rx_dv(gmii_rx_dv),
        .gmii_rx_er(gmii_rx_er),
        .gmii_rxd(gmii_rxd),
        .gmii_tx_clk(gmii_tx_clk),
        .gmii_tx_clk_90(1'b0),
        .gmii_tx_en(gmii_tx_en),
        .gmii_tx_er(gmii_tx_er),
        .gmii_txd(gmii_txd),
        .idelay_cntvalue_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .idelay_load_in(1'b1),
        .link_status(link_status),
        .mdio_gem_i(mdio_gem_i),
        .mdio_gem_mdc(mdio_gem_mdc),
        .mdio_gem_o(mdio_gem_o),
        .mdio_gem_t(mdio_gem_t),
        .mdio_phy_i(mdio_phy_i),
        .mdio_phy_mdc(mdio_phy_mdc),
        .mdio_phy_o(mdio_phy_o),
        .mdio_phy_t(mdio_phy_t),
        .odelay_cntvalue_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .odelay_load_in(1'b1),
        .ref_clk(ref_clk_out),
        .rgmii_rx_ctl(rgmii_rx_ctl_ibuf),
        .rgmii_rxc(rgmii_rxc_ibuf),
        .rgmii_rxd(rgmii_rxd_ibuf),
        .rgmii_tx_ctl(rgmii_tx_ctl_obuf),
        .rgmii_txc(I),
        .rgmii_txd(rgmii_txd_obuf),
        .rx_reset(rx_reset),
        .speed_mode(speed_mode),
        .tx_reset(tx_reset));
  (* XILINX_LEGACY_PRIM = "BUFGMUX" *) 
  (* XILINX_TRANSFORM_PINMAP = "S:CE1,CE0 VCC:S1,S0 GND:IGNORE1,IGNORE0" *) 
  (* box_type = "PRIMITIVE" *) 
  BUFGCTRL #(
    .INIT_OUT(0),
    .IS_CE0_INVERTED(1'b1),
    .PRESELECT_I0("TRUE"),
    .PRESELECT_I1("FALSE"),
    .SIM_DEVICE("7SERIES")) 
    i_bufgmux_gmii_clk
       (.CE0(speed_mode[1]),
        .CE1(speed_mode[1]),
        .I0(gmii_clk_25m_or_2_5m),
        .I1(gmii_clk_125m_out),
        .IGNORE0(1'b0),
        .IGNORE1(1'b0),
        .O(gmii_tx_clk),
        .S0(1'b1),
        .S1(1'b1));
  (* XILINX_LEGACY_PRIM = "BUFGMUX" *) 
  (* XILINX_TRANSFORM_PINMAP = "S:CE1,CE0 VCC:S1,S0 GND:IGNORE1,IGNORE0" *) 
  (* box_type = "PRIMITIVE" *) 
  BUFGCTRL #(
    .INIT_OUT(0),
    .IS_CE0_INVERTED(1'b1),
    .PRESELECT_I0("TRUE"),
    .PRESELECT_I1("FALSE"),
    .SIM_DEVICE("7SERIES")) 
    i_bufgmux_gmii_clk_25m_2_5m
       (.CE0(speed_mode[0]),
        .CE1(speed_mode[0]),
        .I0(gmii_clk_2_5m_out),
        .I1(gmii_clk_25m_out),
        .IGNORE0(1'b0),
        .IGNORE1(1'b0),
        .O(gmii_clk_25m_or_2_5m),
        .S0(1'b1),
        .S1(1'b1));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  (* box_type = "PRIMITIVE" *) 
  IBUF #(
    .IOSTANDARD("DEFAULT")) 
    \ibuf_data[0].rgmii_rxd_ibuf_i 
       (.I(rgmii_rxd[0]),
        .O(rgmii_rxd_ibuf[0]));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  (* box_type = "PRIMITIVE" *) 
  IBUF #(
    .IOSTANDARD("DEFAULT")) 
    \ibuf_data[1].rgmii_rxd_ibuf_i 
       (.I(rgmii_rxd[1]),
        .O(rgmii_rxd_ibuf[1]));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  (* box_type = "PRIMITIVE" *) 
  IBUF #(
    .IOSTANDARD("DEFAULT")) 
    \ibuf_data[2].rgmii_rxd_ibuf_i 
       (.I(rgmii_rxd[2]),
        .O(rgmii_rxd_ibuf[2]));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  (* box_type = "PRIMITIVE" *) 
  IBUF #(
    .IOSTANDARD("DEFAULT")) 
    \ibuf_data[3].rgmii_rxd_ibuf_i 
       (.I(rgmii_rxd[3]),
        .O(rgmii_rxd_ibuf[3]));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUF #(
    .IOSTANDARD("DEFAULT")) 
    \obuf_data[0].rgmii_txd_obuf_i 
       (.I(rgmii_txd_obuf[0]),
        .O(rgmii_txd[0]));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUF #(
    .IOSTANDARD("DEFAULT")) 
    \obuf_data[1].rgmii_txd_obuf_i 
       (.I(rgmii_txd_obuf[1]),
        .O(rgmii_txd[1]));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUF #(
    .IOSTANDARD("DEFAULT")) 
    \obuf_data[2].rgmii_txd_obuf_i 
       (.I(rgmii_txd_obuf[2]),
        .O(rgmii_txd[2]));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUF #(
    .IOSTANDARD("DEFAULT")) 
    \obuf_data[3].rgmii_txd_obuf_i 
       (.I(rgmii_txd_obuf[3]),
        .O(rgmii_txd[3]));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  (* box_type = "PRIMITIVE" *) 
  IBUF #(
    .IOSTANDARD("DEFAULT")) 
    rgmii_rx_ctl_ibuf_i
       (.I(rgmii_rx_ctl),
        .O(rgmii_rx_ctl_ibuf));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  (* box_type = "PRIMITIVE" *) 
  IBUF #(
    .IOSTANDARD("DEFAULT")) 
    rgmii_rxc_ibuf_i
       (.I(rgmii_rxc),
        .O(rgmii_rxc_ibuf));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUF #(
    .IOSTANDARD("DEFAULT")) 
    rgmii_tx_ctl_obuf_i
       (.I(rgmii_tx_ctl_obuf),
        .O(rgmii_tx_ctl));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUF #(
    .IOSTANDARD("DEFAULT")) 
    rgmii_txc_obuf_i
       (.I(I),
        .O(rgmii_txc));
endmodule

module blockone_gmii_to_rgmii_0_1_blockone_gmii_to_rgmii_0_1_clocking
   (tx_reset,
    mmcm_locked_out,
    clkin_out,
    gmii_clk_125m_out,
    gmii_clk_25m_out,
    gmii_clk_2_5m_out,
    mmcm_adv_inst_0,
    clkin);
  output tx_reset;
  output mmcm_locked_out;
  output clkin_out;
  output gmii_clk_125m_out;
  output gmii_clk_25m_out;
  output gmii_clk_2_5m_out;
  input mmcm_adv_inst_0;
  input clkin;

  wire clk_10;
  wire clkfbout;
  wire clkin;
  wire clkin_out;
  wire gmii_clk_125m_out;
  wire gmii_clk_25m_out;
  wire gmii_clk_2_5m_out;
  wire mmcm_adv_inst_0;
  wire mmcm_locked_out;
  wire tx_reset;
  wire NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED;
  wire NLW_mmcm_adv_inst_DRDY_UNCONNECTED;
  wire NLW_mmcm_adv_inst_PSDONE_UNCONNECTED;
  wire [15:0]NLW_mmcm_adv_inst_DO_UNCONNECTED;

  LUT2 #(
    .INIT(4'hB)) 
    blockone_gmii_to_rgmii_0_1_core_i_1
       (.I0(mmcm_adv_inst_0),
        .I1(mmcm_locked_out),
        .O(tx_reset));
  (* box_type = "PRIMITIVE" *) 
  BUFR #(
    .BUFR_DIVIDE("4"),
    .SIM_DEVICE("7SERIES")) 
    clk10_div_buf
       (.CE(1'b1),
        .CLR(1'b0),
        .I(clk_10),
        .O(gmii_clk_2_5m_out));
  (* box_type = "PRIMITIVE" *) 
  BUFG i_bufg_clk_in
       (.I(clkin),
        .O(clkin_out));
  (* box_type = "PRIMITIVE" *) 
  MMCME2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT_F(5.000000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(5.000000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE_F(8.000000),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT0_USE_FINE_PS("FALSE"),
    .CLKOUT1_DIVIDE(40),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT1_USE_FINE_PS("FALSE"),
    .CLKOUT2_DIVIDE(100),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT2_USE_FINE_PS("FALSE"),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT3_USE_FINE_PS("FALSE"),
    .CLKOUT4_CASCADE("FALSE"),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT4_USE_FINE_PS("FALSE"),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .CLKOUT5_USE_FINE_PS("FALSE"),
    .CLKOUT6_DIVIDE(1),
    .CLKOUT6_DUTY_CYCLE(0.500000),
    .CLKOUT6_PHASE(0.000000),
    .CLKOUT6_USE_FINE_PS("FALSE"),
    .COMPENSATION("INTERNAL"),
    .DIVCLK_DIVIDE(1),
    .IS_CLKINSEL_INVERTED(1'b0),
    .IS_PSEN_INVERTED(1'b0),
    .IS_PSINCDEC_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.000000),
    .SS_EN("FALSE"),
    .SS_MODE("CENTER_HIGH"),
    .SS_MOD_PERIOD(10000),
    .STARTUP_WAIT("FALSE")) 
    mmcm_adv_inst
       (.CLKFBIN(clkfbout),
        .CLKFBOUT(clkfbout),
        .CLKFBOUTB(NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED),
        .CLKFBSTOPPED(NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED),
        .CLKIN1(clkin_out),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKINSTOPPED(NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED),
        .CLKOUT0(gmii_clk_125m_out),
        .CLKOUT0B(NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED),
        .CLKOUT1(gmii_clk_25m_out),
        .CLKOUT1B(NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED),
        .CLKOUT2(clk_10),
        .CLKOUT2B(NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED),
        .CLKOUT3(NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED),
        .CLKOUT3B(NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED),
        .CLKOUT4(NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED),
        .CLKOUT6(NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_mmcm_adv_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_mmcm_adv_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(mmcm_locked_out),
        .PSCLK(1'b0),
        .PSDONE(NLW_mmcm_adv_inst_PSDONE_UNCONNECTED),
        .PSEN(1'b0),
        .PSINCDEC(1'b0),
        .PWRDWN(1'b0),
        .RST(mmcm_adv_inst_0));
endmodule

(* INITIALISE = "2'b11" *) (* dont_touch = "yes" *) 
module blockone_gmii_to_rgmii_0_1_blockone_gmii_to_rgmii_0_1_reset_sync
   (reset_in,
    clk,
    reset_out);
  input reset_in;
  input clk;
  output reset_out;

  wire clk;
  wire reset_in;
  wire reset_out;
  wire reset_sync_reg1;
  wire reset_sync_reg2;
  wire reset_sync_reg3;
  wire reset_sync_reg4;
  wire reset_sync_reg5;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync1
       (.C(clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(reset_in),
        .Q(reset_sync_reg1));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync2
       (.C(clk),
        .CE(1'b1),
        .D(reset_sync_reg1),
        .PRE(reset_in),
        .Q(reset_sync_reg2));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync3
       (.C(clk),
        .CE(1'b1),
        .D(reset_sync_reg2),
        .PRE(reset_in),
        .Q(reset_sync_reg3));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync4
       (.C(clk),
        .CE(1'b1),
        .D(reset_sync_reg3),
        .PRE(reset_in),
        .Q(reset_sync_reg4));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync5
       (.C(clk),
        .CE(1'b1),
        .D(reset_sync_reg4),
        .PRE(reset_in),
        .Q(reset_sync_reg5));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync6
       (.C(clk),
        .CE(1'b1),
        .D(reset_sync_reg5),
        .PRE(1'b0),
        .Q(reset_out));
endmodule

module blockone_gmii_to_rgmii_0_1_blockone_gmii_to_rgmii_0_1_resets
   (idelayctrl_reset,
    tx_reset,
    rx_reset,
    clkin_out);
  output idelayctrl_reset;
  input tx_reset;
  input rx_reset;
  input clkin_out;

  wire \FSM_onehot_idelay_reset_cnt_reg_n_0_[0] ;
  wire \FSM_onehot_idelay_reset_cnt_reg_n_0_[10] ;
  wire \FSM_onehot_idelay_reset_cnt_reg_n_0_[11] ;
  wire \FSM_onehot_idelay_reset_cnt_reg_n_0_[12] ;
  wire \FSM_onehot_idelay_reset_cnt_reg_n_0_[13] ;
  wire \FSM_onehot_idelay_reset_cnt_reg_n_0_[1] ;
  wire \FSM_onehot_idelay_reset_cnt_reg_n_0_[2] ;
  wire \FSM_onehot_idelay_reset_cnt_reg_n_0_[3] ;
  wire \FSM_onehot_idelay_reset_cnt_reg_n_0_[4] ;
  wire \FSM_onehot_idelay_reset_cnt_reg_n_0_[5] ;
  wire \FSM_onehot_idelay_reset_cnt_reg_n_0_[6] ;
  wire \FSM_onehot_idelay_reset_cnt_reg_n_0_[7] ;
  wire \FSM_onehot_idelay_reset_cnt_reg_n_0_[8] ;
  wire \FSM_onehot_idelay_reset_cnt_reg_n_0_[9] ;
  wire clkin_out;
  wire idelayctrl_reset;
  wire idelayctrl_reset_i_1_n_0;
  wire idelayctrl_reset_i_2_n_0;
  wire idelayctrl_reset_i_3_n_0;
  wire idelayctrl_reset_sync;
  wire reset;
  wire rx_reset;
  wire tx_reset;

  (* FSM_ENCODED_STATES = "\"0011\":000000000001000,\"0100\":000000000010000,\"1101\":010000000000000,\"0010\":000000000000100,\"1011\":000100000000000,\"1100\":001000000000000,\"1010\":000010000000000,\"0001\":000000000000010,\"0000\":000000000000001,\"1001\":000001000000000,\"0111\":000000010000000,\"1000\":000000100000000,\"0110\":000000001000000,iSTATE:100000000000000,\"0101\":000000000100000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_idelay_reset_cnt_reg[0] 
       (.C(clkin_out),
        .CE(1'b1),
        .D(1'b0),
        .Q(\FSM_onehot_idelay_reset_cnt_reg_n_0_[0] ),
        .S(idelayctrl_reset_sync));
  (* FSM_ENCODED_STATES = "\"0011\":000000000001000,\"0100\":000000000010000,\"1101\":010000000000000,\"0010\":000000000000100,\"1011\":000100000000000,\"1100\":001000000000000,\"1010\":000010000000000,\"0001\":000000000000010,\"0000\":000000000000001,\"1001\":000001000000000,\"0111\":000000010000000,\"1000\":000000100000000,\"0110\":000000001000000,iSTATE:100000000000000,\"0101\":000000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_idelay_reset_cnt_reg[10] 
       (.C(clkin_out),
        .CE(1'b1),
        .D(\FSM_onehot_idelay_reset_cnt_reg_n_0_[9] ),
        .Q(\FSM_onehot_idelay_reset_cnt_reg_n_0_[10] ),
        .R(idelayctrl_reset_sync));
  (* FSM_ENCODED_STATES = "\"0011\":000000000001000,\"0100\":000000000010000,\"1101\":010000000000000,\"0010\":000000000000100,\"1011\":000100000000000,\"1100\":001000000000000,\"1010\":000010000000000,\"0001\":000000000000010,\"0000\":000000000000001,\"1001\":000001000000000,\"0111\":000000010000000,\"1000\":000000100000000,\"0110\":000000001000000,iSTATE:100000000000000,\"0101\":000000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_idelay_reset_cnt_reg[11] 
       (.C(clkin_out),
        .CE(1'b1),
        .D(\FSM_onehot_idelay_reset_cnt_reg_n_0_[10] ),
        .Q(\FSM_onehot_idelay_reset_cnt_reg_n_0_[11] ),
        .R(idelayctrl_reset_sync));
  (* FSM_ENCODED_STATES = "\"0011\":000000000001000,\"0100\":000000000010000,\"1101\":010000000000000,\"0010\":000000000000100,\"1011\":000100000000000,\"1100\":001000000000000,\"1010\":000010000000000,\"0001\":000000000000010,\"0000\":000000000000001,\"1001\":000001000000000,\"0111\":000000010000000,\"1000\":000000100000000,\"0110\":000000001000000,iSTATE:100000000000000,\"0101\":000000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_idelay_reset_cnt_reg[12] 
       (.C(clkin_out),
        .CE(1'b1),
        .D(\FSM_onehot_idelay_reset_cnt_reg_n_0_[11] ),
        .Q(\FSM_onehot_idelay_reset_cnt_reg_n_0_[12] ),
        .R(idelayctrl_reset_sync));
  (* FSM_ENCODED_STATES = "\"0011\":000000000001000,\"0100\":000000000010000,\"1101\":010000000000000,\"0010\":000000000000100,\"1011\":000100000000000,\"1100\":001000000000000,\"1010\":000010000000000,\"0001\":000000000000010,\"0000\":000000000000001,\"1001\":000001000000000,\"0111\":000000010000000,\"1000\":000000100000000,\"0110\":000000001000000,iSTATE:100000000000000,\"0101\":000000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_idelay_reset_cnt_reg[13] 
       (.C(clkin_out),
        .CE(1'b1),
        .D(\FSM_onehot_idelay_reset_cnt_reg_n_0_[12] ),
        .Q(\FSM_onehot_idelay_reset_cnt_reg_n_0_[13] ),
        .R(idelayctrl_reset_sync));
  (* FSM_ENCODED_STATES = "\"0011\":000000000001000,\"0100\":000000000010000,\"1101\":010000000000000,\"0010\":000000000000100,\"1011\":000100000000000,\"1100\":001000000000000,\"1010\":000010000000000,\"0001\":000000000000010,\"0000\":000000000000001,\"1001\":000001000000000,\"0111\":000000010000000,\"1000\":000000100000000,\"0110\":000000001000000,iSTATE:100000000000000,\"0101\":000000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_idelay_reset_cnt_reg[1] 
       (.C(clkin_out),
        .CE(1'b1),
        .D(\FSM_onehot_idelay_reset_cnt_reg_n_0_[0] ),
        .Q(\FSM_onehot_idelay_reset_cnt_reg_n_0_[1] ),
        .R(idelayctrl_reset_sync));
  (* FSM_ENCODED_STATES = "\"0011\":000000000001000,\"0100\":000000000010000,\"1101\":010000000000000,\"0010\":000000000000100,\"1011\":000100000000000,\"1100\":001000000000000,\"1010\":000010000000000,\"0001\":000000000000010,\"0000\":000000000000001,\"1001\":000001000000000,\"0111\":000000010000000,\"1000\":000000100000000,\"0110\":000000001000000,iSTATE:100000000000000,\"0101\":000000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_idelay_reset_cnt_reg[2] 
       (.C(clkin_out),
        .CE(1'b1),
        .D(\FSM_onehot_idelay_reset_cnt_reg_n_0_[1] ),
        .Q(\FSM_onehot_idelay_reset_cnt_reg_n_0_[2] ),
        .R(idelayctrl_reset_sync));
  (* FSM_ENCODED_STATES = "\"0011\":000000000001000,\"0100\":000000000010000,\"1101\":010000000000000,\"0010\":000000000000100,\"1011\":000100000000000,\"1100\":001000000000000,\"1010\":000010000000000,\"0001\":000000000000010,\"0000\":000000000000001,\"1001\":000001000000000,\"0111\":000000010000000,\"1000\":000000100000000,\"0110\":000000001000000,iSTATE:100000000000000,\"0101\":000000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_idelay_reset_cnt_reg[3] 
       (.C(clkin_out),
        .CE(1'b1),
        .D(\FSM_onehot_idelay_reset_cnt_reg_n_0_[2] ),
        .Q(\FSM_onehot_idelay_reset_cnt_reg_n_0_[3] ),
        .R(idelayctrl_reset_sync));
  (* FSM_ENCODED_STATES = "\"0011\":000000000001000,\"0100\":000000000010000,\"1101\":010000000000000,\"0010\":000000000000100,\"1011\":000100000000000,\"1100\":001000000000000,\"1010\":000010000000000,\"0001\":000000000000010,\"0000\":000000000000001,\"1001\":000001000000000,\"0111\":000000010000000,\"1000\":000000100000000,\"0110\":000000001000000,iSTATE:100000000000000,\"0101\":000000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_idelay_reset_cnt_reg[4] 
       (.C(clkin_out),
        .CE(1'b1),
        .D(\FSM_onehot_idelay_reset_cnt_reg_n_0_[3] ),
        .Q(\FSM_onehot_idelay_reset_cnt_reg_n_0_[4] ),
        .R(idelayctrl_reset_sync));
  (* FSM_ENCODED_STATES = "\"0011\":000000000001000,\"0100\":000000000010000,\"1101\":010000000000000,\"0010\":000000000000100,\"1011\":000100000000000,\"1100\":001000000000000,\"1010\":000010000000000,\"0001\":000000000000010,\"0000\":000000000000001,\"1001\":000001000000000,\"0111\":000000010000000,\"1000\":000000100000000,\"0110\":000000001000000,iSTATE:100000000000000,\"0101\":000000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_idelay_reset_cnt_reg[5] 
       (.C(clkin_out),
        .CE(1'b1),
        .D(\FSM_onehot_idelay_reset_cnt_reg_n_0_[4] ),
        .Q(\FSM_onehot_idelay_reset_cnt_reg_n_0_[5] ),
        .R(idelayctrl_reset_sync));
  (* FSM_ENCODED_STATES = "\"0011\":000000000001000,\"0100\":000000000010000,\"1101\":010000000000000,\"0010\":000000000000100,\"1011\":000100000000000,\"1100\":001000000000000,\"1010\":000010000000000,\"0001\":000000000000010,\"0000\":000000000000001,\"1001\":000001000000000,\"0111\":000000010000000,\"1000\":000000100000000,\"0110\":000000001000000,iSTATE:100000000000000,\"0101\":000000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_idelay_reset_cnt_reg[6] 
       (.C(clkin_out),
        .CE(1'b1),
        .D(\FSM_onehot_idelay_reset_cnt_reg_n_0_[5] ),
        .Q(\FSM_onehot_idelay_reset_cnt_reg_n_0_[6] ),
        .R(idelayctrl_reset_sync));
  (* FSM_ENCODED_STATES = "\"0011\":000000000001000,\"0100\":000000000010000,\"1101\":010000000000000,\"0010\":000000000000100,\"1011\":000100000000000,\"1100\":001000000000000,\"1010\":000010000000000,\"0001\":000000000000010,\"0000\":000000000000001,\"1001\":000001000000000,\"0111\":000000010000000,\"1000\":000000100000000,\"0110\":000000001000000,iSTATE:100000000000000,\"0101\":000000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_idelay_reset_cnt_reg[7] 
       (.C(clkin_out),
        .CE(1'b1),
        .D(\FSM_onehot_idelay_reset_cnt_reg_n_0_[6] ),
        .Q(\FSM_onehot_idelay_reset_cnt_reg_n_0_[7] ),
        .R(idelayctrl_reset_sync));
  (* FSM_ENCODED_STATES = "\"0011\":000000000001000,\"0100\":000000000010000,\"1101\":010000000000000,\"0010\":000000000000100,\"1011\":000100000000000,\"1100\":001000000000000,\"1010\":000010000000000,\"0001\":000000000000010,\"0000\":000000000000001,\"1001\":000001000000000,\"0111\":000000010000000,\"1000\":000000100000000,\"0110\":000000001000000,iSTATE:100000000000000,\"0101\":000000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_idelay_reset_cnt_reg[8] 
       (.C(clkin_out),
        .CE(1'b1),
        .D(\FSM_onehot_idelay_reset_cnt_reg_n_0_[7] ),
        .Q(\FSM_onehot_idelay_reset_cnt_reg_n_0_[8] ),
        .R(idelayctrl_reset_sync));
  (* FSM_ENCODED_STATES = "\"0011\":000000000001000,\"0100\":000000000010000,\"1101\":010000000000000,\"0010\":000000000000100,\"1011\":000100000000000,\"1100\":001000000000000,\"1010\":000010000000000,\"0001\":000000000000010,\"0000\":000000000000001,\"1001\":000001000000000,\"0111\":000000010000000,\"1000\":000000100000000,\"0110\":000000001000000,iSTATE:100000000000000,\"0101\":000000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_idelay_reset_cnt_reg[9] 
       (.C(clkin_out),
        .CE(1'b1),
        .D(\FSM_onehot_idelay_reset_cnt_reg_n_0_[8] ),
        .Q(\FSM_onehot_idelay_reset_cnt_reg_n_0_[9] ),
        .R(idelayctrl_reset_sync));
  (* DONT_TOUCH *) 
  (* INITIALISE = "2'b11" *) 
  blockone_gmii_to_rgmii_0_1_blockone_gmii_to_rgmii_0_1_reset_sync idelayctrl_reset_gen
       (.clk(clkin_out),
        .reset_in(reset),
        .reset_out(idelayctrl_reset_sync));
  LUT2 #(
    .INIT(4'hE)) 
    idelayctrl_reset_gen_i_1
       (.I0(tx_reset),
        .I1(rx_reset),
        .O(reset));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    idelayctrl_reset_i_1
       (.I0(idelayctrl_reset_i_2_n_0),
        .I1(idelayctrl_reset_i_3_n_0),
        .I2(\FSM_onehot_idelay_reset_cnt_reg_n_0_[6] ),
        .I3(\FSM_onehot_idelay_reset_cnt_reg_n_0_[7] ),
        .I4(\FSM_onehot_idelay_reset_cnt_reg_n_0_[4] ),
        .I5(\FSM_onehot_idelay_reset_cnt_reg_n_0_[5] ),
        .O(idelayctrl_reset_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    idelayctrl_reset_i_2
       (.I0(\FSM_onehot_idelay_reset_cnt_reg_n_0_[13] ),
        .I1(\FSM_onehot_idelay_reset_cnt_reg_n_0_[12] ),
        .I2(\FSM_onehot_idelay_reset_cnt_reg_n_0_[9] ),
        .I3(\FSM_onehot_idelay_reset_cnt_reg_n_0_[8] ),
        .I4(\FSM_onehot_idelay_reset_cnt_reg_n_0_[11] ),
        .I5(\FSM_onehot_idelay_reset_cnt_reg_n_0_[10] ),
        .O(idelayctrl_reset_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    idelayctrl_reset_i_3
       (.I0(\FSM_onehot_idelay_reset_cnt_reg_n_0_[2] ),
        .I1(\FSM_onehot_idelay_reset_cnt_reg_n_0_[3] ),
        .I2(\FSM_onehot_idelay_reset_cnt_reg_n_0_[0] ),
        .I3(\FSM_onehot_idelay_reset_cnt_reg_n_0_[1] ),
        .O(idelayctrl_reset_i_3_n_0));
  FDSE idelayctrl_reset_reg
       (.C(clkin_out),
        .CE(1'b1),
        .D(idelayctrl_reset_i_1_n_0),
        .Q(idelayctrl_reset),
        .S(idelayctrl_reset_sync));
endmodule

module blockone_gmii_to_rgmii_0_1_blockone_gmii_to_rgmii_0_1_support
   (tx_reset,
    rx_reset,
    clkin,
    ref_clk_out,
    mmcm_locked_out,
    gmii_clk_125m_out,
    gmii_clk_25m_out,
    gmii_clk_2_5m_out,
    speed_mode,
    gmii_tx_clk,
    gmii_tx_en,
    gmii_txd,
    gmii_tx_er,
    gmii_crs,
    gmii_col,
    gmii_rx_clk,
    gmii_rx_dv,
    gmii_rxd,
    gmii_rx_er,
    mdio_gem_mdc,
    mdio_gem_i,
    mdio_gem_o,
    mdio_gem_t,
    link_status,
    clock_speed,
    duplex_status,
    rgmii_txd,
    rgmii_tx_ctl,
    rgmii_txc,
    rgmii_rxd,
    rgmii_rx_ctl,
    rgmii_rxc,
    mdio_phy_mdc,
    mdio_phy_i,
    mdio_phy_o,
    mdio_phy_t);
  input tx_reset;
  input rx_reset;
  input clkin;
  output ref_clk_out;
  output mmcm_locked_out;
  output gmii_clk_125m_out;
  output gmii_clk_25m_out;
  output gmii_clk_2_5m_out;
  output [1:0]speed_mode;
  output gmii_tx_clk;
  input gmii_tx_en;
  input [7:0]gmii_txd;
  input gmii_tx_er;
  output gmii_crs;
  output gmii_col;
  output gmii_rx_clk;
  output gmii_rx_dv;
  output [7:0]gmii_rxd;
  output gmii_rx_er;
  input mdio_gem_mdc;
  output mdio_gem_i;
  input mdio_gem_o;
  input mdio_gem_t;
  output link_status;
  output [1:0]clock_speed;
  output duplex_status;
  output [3:0]rgmii_txd;
  output rgmii_tx_ctl;
  output rgmii_txc;
  input [3:0]rgmii_rxd;
  input rgmii_rx_ctl;
  input rgmii_rxc;
  output mdio_phy_mdc;
  input mdio_phy_i;
  output mdio_phy_o;
  output mdio_phy_t;

  wire clkin;
  wire [1:0]clock_speed;
  wire duplex_status;
  wire gmii_clk_125m_out;
  wire gmii_clk_25m_out;
  wire gmii_clk_2_5m_out;
  wire gmii_col;
  wire gmii_crs;
  wire gmii_rx_clk;
  wire gmii_rx_dv;
  wire gmii_rx_er;
  wire [7:0]gmii_rxd;
  wire gmii_tx_clk;
  wire gmii_tx_en;
  wire gmii_tx_er;
  wire [7:0]gmii_txd;
  wire i_blockone_gmii_to_rgmii_0_1_clocking_n_0;
  wire idelayctrl_reset_i;
  wire link_status;
  wire mdio_gem_i;
  wire mdio_gem_mdc;
  wire mdio_gem_o;
  wire mdio_gem_t;
  wire mdio_phy_i;
  wire mdio_phy_mdc;
  wire mdio_phy_o;
  wire mdio_phy_t;
  wire mmcm_locked_out;
  wire ref_clk_out;
  wire rgmii_rx_ctl;
  wire rgmii_rxc;
  wire [3:0]rgmii_rxd;
  wire rgmii_tx_ctl;
  wire rgmii_txc;
  wire [3:0]rgmii_txd;
  wire rx_reset;
  wire [1:0]speed_mode;
  wire tx_reset;
  wire NLW_i_blockone_gmii_to_rgmii_0_1_idelayctrl_RDY_UNCONNECTED;

  blockone_gmii_to_rgmii_0_1_blockone_gmii_to_rgmii_0_1_clocking i_blockone_gmii_to_rgmii_0_1_clocking
       (.clkin(clkin),
        .clkin_out(ref_clk_out),
        .gmii_clk_125m_out(gmii_clk_125m_out),
        .gmii_clk_25m_out(gmii_clk_25m_out),
        .gmii_clk_2_5m_out(gmii_clk_2_5m_out),
        .mmcm_adv_inst_0(tx_reset),
        .mmcm_locked_out(mmcm_locked_out),
        .tx_reset(i_blockone_gmii_to_rgmii_0_1_clocking_n_0));
  (* box_type = "PRIMITIVE" *) 
  IDELAYCTRL #(
    .SIM_DEVICE("7SERIES")) 
    i_blockone_gmii_to_rgmii_0_1_idelayctrl
       (.RDY(NLW_i_blockone_gmii_to_rgmii_0_1_idelayctrl_RDY_UNCONNECTED),
        .REFCLK(ref_clk_out),
        .RST(idelayctrl_reset_i));
  blockone_gmii_to_rgmii_0_1_blockone_gmii_to_rgmii_0_1_resets i_blockone_gmii_to_rgmii_0_1_resets
       (.clkin_out(ref_clk_out),
        .idelayctrl_reset(idelayctrl_reset_i),
        .rx_reset(rx_reset),
        .tx_reset(tx_reset));
  blockone_gmii_to_rgmii_0_1_blockone_gmii_to_rgmii_0_1_block i_gmii_to_rgmii_block
       (.clock_speed(clock_speed),
        .duplex_status(duplex_status),
        .gmii_clk_125m_out(gmii_clk_125m_out),
        .gmii_clk_25m_out(gmii_clk_25m_out),
        .gmii_clk_2_5m_out(gmii_clk_2_5m_out),
        .gmii_col(gmii_col),
        .gmii_crs(gmii_crs),
        .gmii_rx_clk(gmii_rx_clk),
        .gmii_rx_dv(gmii_rx_dv),
        .gmii_rx_er(gmii_rx_er),
        .gmii_rxd(gmii_rxd),
        .gmii_tx_clk(gmii_tx_clk),
        .gmii_tx_en(gmii_tx_en),
        .gmii_tx_er(gmii_tx_er),
        .gmii_txd(gmii_txd),
        .link_status(link_status),
        .mdio_gem_i(mdio_gem_i),
        .mdio_gem_mdc(mdio_gem_mdc),
        .mdio_gem_o(mdio_gem_o),
        .mdio_gem_t(mdio_gem_t),
        .mdio_phy_i(mdio_phy_i),
        .mdio_phy_mdc(mdio_phy_mdc),
        .mdio_phy_o(mdio_phy_o),
        .mdio_phy_t(mdio_phy_t),
        .ref_clk_out(ref_clk_out),
        .rgmii_rx_ctl(rgmii_rx_ctl),
        .rgmii_rxc(rgmii_rxc),
        .rgmii_rxd(rgmii_rxd),
        .rgmii_tx_ctl(rgmii_tx_ctl),
        .rgmii_txc(rgmii_txc),
        .rgmii_txd(rgmii_txd),
        .rx_reset(rx_reset),
        .speed_mode(speed_mode),
        .tx_reset(i_blockone_gmii_to_rgmii_0_1_clocking_n_0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.2.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
DUiK3EDgFBDtloRBJPTxN/M0n1TfxC7O5kp7EyfB800thfWRjFh0tJ27I5LKSEFAc5y5LWUh7Tni
OYseQIBceDrDr+RfIBLmYXy0lpCaUn+fo8vhs0Yc6EdEiMGEbYNDEwLjTWi7fdd49eIo1U0m2uZb
YsLGqjk1bbkbvX9ilIs=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PjBnrh5gox4DoSWpRuV/OcrnvVYshClQmuR5TmMY6joyzxNennJChmj5BiaYpqb+Qk6yV8odXFb6
LYFGsGg7RsJyalQ1ndhC0JR1/np6tIMeuyMTasTBESK61o5M5StLZwf7e+Ui1QpBdANDz7KmS0ju
GxsdIkSzaKSwtVgbztHo9hWxLOZ62/UshpqOFbv+mDqlJANH3DZ+i5pU2Db2TcWIDOtyCNlh0MmE
xQeH8EZzdppLqSNuAuYr9KWuve5HVgVYDswOIyvnEamO0rEbJ+wGCIn/V4/8Ljymnt930qHLdohH
Ur95VDw6XfsbkHVGPeI3DRMbUyNSpkySba9lmg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Bl6/grkHKAabJhCqxZRjBjXroXdFp9hJvH5idkaPLrXaznn7YkrjGvrGOHcQR4q2/XHwBRqYZS+3
kjPjQG9NIPcm++f6uMH4/hgriDhwzr8XU8HcoM2Ex4U9GkbJgJD0S6URU4h52S2RMpB+T6rPCJzO
TiXTrkVDwPV7PyErXnI=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kRaLM7YH/IXNLmtpp4+BwG3N7PqFCz92zkKNHWRCN4hRbPdDX+CbMQqGYZi7km9fQ6oHTWB2sV1Y
lbiK2hhWndWwHSaQrKSRGxeam8w2YvR+INL1/1nMf9JidJjBLK8+PI6JBXWRtmaB9T54KR9feU8E
zMFmPy8Y+JV6/BVydaviI3D+dNlaE/75riyOyS8wpzbriuMEq2DWbmrrt22uhUJJ8EKPxzs/kHY6
hVrBPEQ1oHGjdit6kgZZz5P91NzTDfPm11SKHij49cB9sO1/ES7rI9F+182yM2RxXFIJf+xr7cUw
D/aTCOkFZjRkZAgwrm4sjJOEgJDxshMAtNXDWg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
0+cihPxbjs285YZBxj9e80eeJaTlVJmQ0cGbNJwSNYmyAdyrAA9dyG3/CY2rQ1ZirhunOq51EtSs
LWJoQ5nygxQyoKuzbf4P4E/hFNV3ImS1BIwAECJtvH/9eBuNTum5SkOctTkcFM8kwkDjKBW0hcn9
WR0AY3NmOW/wx4ka0quFB7ZAmuD0JkLIJiP77bfDhfHuXHXTaD5yZpTI6CMx1MkEr7hI3Zajh2+2
eyN3sJL2V/tJ515qwrp9SiFidfBiYUW4Ht3xBbWvxdvvKuWCZFqv09dBNCWlMlMdwYYAOZr7Egqs
ztUnC5G7QXrW1sBwTy2J1cGuMnBWT2OuB3vogQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gzpCC6/kvthTRog3R0SAFhdymcUOd+IhsM0oWrx2B1arWvAmKLES+ZAUkyYPOd9wCIIAczeX9Vwj
IU6vxMczduw+AIOy0aMsojC0RjpmZdl3jmn2qUcPq3DeXXuGfBNyaNZLJxHmwvIhRRs31pXZhdRE
+zE1sLic1eMR5IdjUKCHDtCQKcra/A/A6bVt9cV909VVTw9vd1FT+Zb+JqUpvBHG96JcPhXBP84T
bS685iL/uQB227m3cerH3mQhRKHdsT2w0S8gztJBIjhx/VSEeK7YYcvkQpQpxk0wU8hvQvNChKla
iV/kkbwXLC7b4r+WvEExmAAq5depEfuDl9j7Jg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
AFl2vrlVgvG2IMYQAu0ZMJnrrHwtHhdqSx5PDGvRoJFWbq6RSkrYe5EGi65ugcwx6hCT2EfojUIj
HRsFAVqfWSQ6C7HJiqwvR8eJJtroSNo4EsH6WYBxZnGNUhjdeVTqsXTj2iHkin7rCKiagBW5OoTe
P/Z0Mf4B0vbAIR/W05YRPGHd8K12dNHqeDaTqjJ5Ck9uprrpGxsGXgpHphYBEnbmJG86mypJKT3+
E5EHnLQM4f2GrZr8fSyE8cRpA3GyG0njcAjjmO8UNt9KiPngEykmNdFWrj0mtDQz+AJ58PO5D88x
DxZ8DaayPM9gSLVaGbsyJlIrKvRaMB0cpoiTCg==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
qdschAUq+KBdgbsDYuV6YOMr8MUGxmodjVxCe/6Rw4zQ8+tJjzoJlu68hgk+fKU2dmFBGpApSkqr
zgyH35zeJdKjtoUXFLZQC2cHz0mMFxhqCcv+L1DKOfzhi2nLq19I0Dspjf0lwRJUHdvqlEvGa6L7
v0utTjT4b+/8SsJQ/d1ur4bnTri1lSwou9BV1UgnuA9UAVqvJpoDrSr7ukgOde0tioOof/wh4Dlj
X7JXvQS87vtt0YROBORbkLSgIcDcP+qNee1J8USUgi0x4TRkvw21N2IKGom3ydbv2LjiNRT/j8t0
rvuCKPzBpzUN1SeAk8tZSnLFPTWBNHsF2L/DmUjxN3wtJSEhm1KmOBfAnARRp4mYtM9stT9ntJwM
R7nzPPh3xXPw59AEKod6ssudbsKIaZy29UY6AM6QKfcyPJ1/WTmY/JP9UYPaKenbYAeEwd9KpgoU
OwhWhZeoY2nwjsq7UGeXQhf78f60AIFgDr671tCMhdfQF0Zkk0kRQzpT

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
pGZLhBeujsRmZZ/6gJrQHLgxKObnzmetVgRDCkt6UHzVyoSX6hJvje2ebsX1uHbSZU1VG6a0pVIu
p2slDU6Og+FkY4W6broJE9lyEFxK94WEz5fJq8yFPuB7VFCUMQmQn/9qDigRiv42b/uRmQ4qSrB0
yfh1dBRpyc9HDWDCznzcdaTVQ9KK0z7DwvT6s0odlUDjySd66krmIWN/43upap5bxyS/G9LOh34t
q6nnacL/GvsDnvh617VAm0ejNBSx4tEGnZ3IddznRKrveBvAHfTBFlYLmi4W+lbXk7qa0QWMgkdF
LGt67PbvP9gmHgueT3uRBjEuTRxr8libR95C5A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 137168)
`pragma protect data_block
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
zDhqmwpSpUmsoJUw40HMN8AV+GwpyoeCnEg=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
