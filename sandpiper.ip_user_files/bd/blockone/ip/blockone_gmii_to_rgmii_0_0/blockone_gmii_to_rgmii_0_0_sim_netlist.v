// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2.2 (win64) Build 6060944 Thu Mar 06 19:10:01 MST 2025
// Date        : Tue Apr 29 17:57:12 2025
// Host        : fastturtle running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top blockone_gmii_to_rgmii_0_0 -prefix
//               blockone_gmii_to_rgmii_0_0_ blockone_gmii_to_rgmii_0_0_sim_netlist.v
// Design      : blockone_gmii_to_rgmii_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* x_core_info = "gmii_to_rgmii_v4_1_18,Vivado 2024.2.2" *) 
(* NotValidForBitStream *)
module blockone_gmii_to_rgmii_0_0
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

  blockone_gmii_to_rgmii_0_0_blockone_gmii_to_rgmii_0_0_support U0
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

module blockone_gmii_to_rgmii_0_0_blockone_gmii_to_rgmii_0_0_block
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
  blockone_gmii_to_rgmii_0_0_gmii_to_rgmii_v4_1_18 blockone_gmii_to_rgmii_0_0_core
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

module blockone_gmii_to_rgmii_0_0_blockone_gmii_to_rgmii_0_0_clocking
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
    blockone_gmii_to_rgmii_0_0_core_i_1
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
module blockone_gmii_to_rgmii_0_0_blockone_gmii_to_rgmii_0_0_reset_sync
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

module blockone_gmii_to_rgmii_0_0_blockone_gmii_to_rgmii_0_0_resets
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
  blockone_gmii_to_rgmii_0_0_blockone_gmii_to_rgmii_0_0_reset_sync idelayctrl_reset_gen
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

module blockone_gmii_to_rgmii_0_0_blockone_gmii_to_rgmii_0_0_support
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
  wire i_blockone_gmii_to_rgmii_0_0_clocking_n_0;
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
  wire NLW_i_blockone_gmii_to_rgmii_0_0_idelayctrl_RDY_UNCONNECTED;

  blockone_gmii_to_rgmii_0_0_blockone_gmii_to_rgmii_0_0_clocking i_blockone_gmii_to_rgmii_0_0_clocking
       (.clkin(clkin),
        .clkin_out(ref_clk_out),
        .gmii_clk_125m_out(gmii_clk_125m_out),
        .gmii_clk_25m_out(gmii_clk_25m_out),
        .gmii_clk_2_5m_out(gmii_clk_2_5m_out),
        .mmcm_adv_inst_0(tx_reset),
        .mmcm_locked_out(mmcm_locked_out),
        .tx_reset(i_blockone_gmii_to_rgmii_0_0_clocking_n_0));
  (* box_type = "PRIMITIVE" *) 
  IDELAYCTRL #(
    .SIM_DEVICE("7SERIES")) 
    i_blockone_gmii_to_rgmii_0_0_idelayctrl
       (.RDY(NLW_i_blockone_gmii_to_rgmii_0_0_idelayctrl_RDY_UNCONNECTED),
        .REFCLK(ref_clk_out),
        .RST(idelayctrl_reset_i));
  blockone_gmii_to_rgmii_0_0_blockone_gmii_to_rgmii_0_0_resets i_blockone_gmii_to_rgmii_0_0_resets
       (.clkin_out(ref_clk_out),
        .idelayctrl_reset(idelayctrl_reset_i),
        .rx_reset(rx_reset),
        .tx_reset(tx_reset));
  blockone_gmii_to_rgmii_0_0_blockone_gmii_to_rgmii_0_0_block i_gmii_to_rgmii_block
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
        .tx_reset(i_blockone_gmii_to_rgmii_0_0_clocking_n_0));
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
fo8L4f+CEOjNBy0KcMufpQKphB735l3GQi0=
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
