// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2.2 (win64) Build 6060944 Thu Mar 06 19:10:01 MST 2025
// Date        : Wed Apr 23 21:39:10 2025
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
duW6e3FCzWgV/tTL31d+Swkt+PY7AROcb+IOgPK5JFETx2GBU96yF73Wy4DeUUXusKb+oNk881yw
nUKEJHoaDKV3eO3gTtG/Pxf2q/y8U0HOjlZ50bs8xtuIvXGrTipONU9nX2HQ4xMYq3mbOuo1Qpc6
N5TE6NDmkxSO3aXK/2zQkMVBS0nw3WpKg11uyvW90IC4+EuwmTP8cDm3xIU8uRk8FQDfQBirllaJ
SNVV3WysN9fpVO65oGXLVAijt+vkCzS6SIJR39MExcrCJUzBdlKM4HpkOJdCA3AUHK7KsFl/2KRD
fFHmk8rsY4cYZs+qdgCrUzdA4eBkoAQTpiszvFzk7KlnJrXA2WFp8Je23xBaynC9xHE5k/Amr96Q
bdYdH9Cr4mSxJ5vxMXvJAex8p6MrEtUfhKB3e3n1ERL20ot8z2Wv0xYj8v4YZ3rUMXIauIZT5ot0
SYECYZnjDGumaWFeDHdkEsFy0NovNAAhTaVb+1Q/I9a4vK+TXfxLrMUwwwDYtSIkyq1OHE2TCd6a
rqFrAe0DmDwsexGftGWpZRNqygMuCa5g12GmA4DQ3REFM8I/eYwjiSGURd6eP18tttoRqvwbh1ik
FGF4SV/46EB8fmUn45jrPGUkGY/cVz3jxUG0sZ3iezqCTcVaHOTxaPbRLtQpx/9PXUB98YGggeoe
ySHItJbTxA/P6cnLpOqmtSqTiGo5216uNqIgqwg5PJMUDyU97aXdX1jX4dhDhqORd/3sg8SQU92J
Lh94J8f0lnLfRnhZEoaGn0CgeFqABmHfdQ/Xb61+NgCCzIXR1mcHs/D+gv3YHNvG3RczYUD3Vdlj
EeTU8DQgP1cS6YZUGcsvlWv2BbhE60o0w03eUsPhUIZLGFU9S8/PwHQHtjnGIkjfVtfxNz5UNJCL
slZFzjZiBquw4NIU9f1/1NnLgEOVRieQNrTgSLzJVvjykkAYE5IFgFh0uRTEu/lWFLS2SDlNU70A
+AeJGxuKaGB8cWp59QhRVdfF1LmtiiFKK90Q7cZ30n86YUf9mQZW+pYEa30lMCCvnDawAac3P+2T
I/RNMnhZf7ddIFVvtFgh8rNKMG+C61h1ic31iFVMbPWKda1G6jADXAmARmoygIU7tjfXCt9CbsBu
BEdxsHW5A+/4fryHiWF83b+V1b0RY5o5/lPBapotCAdFfQP11EFQbH1mVLOLtsPnBvVuiVD0m6jJ
c/er3EWA07f5dg+TjFSlDF0yu2gzBO6q39Se3Jygx9UBeTTbmwIdCFgg9uytYeGZFUisxQC9iqSL
iy3+0Tk/HxqVDJvK36mfcASWhAc/NCJ67LrOJcpNzcZP3Gz2o54Utjp+irylO9f5DbwLZc9rd2Jn
58NlOTPaE2D8A/SDQ07EHMEvOuoSssodpDTNLZKNpAAa8oBNUXKOOPs5EEA8GX4XxnPD1aIWfKxe
HoyIWtzZXUDr6Wv5BImaGbeklfxB/kAQslDJZdNmxEn7E5Q8I7lTiqJk9U/Q6qDW6XZuJOqpemxP
l4SNKoAf6EkBL9oZN9MK69n5263ruSTSKxEH6StNku6vbzQkbSRA8CiVcmH7LUBKfuqDI4DWNUPa
bpUkm62nY1nB6hU8JorKUU11CwSDmQWcEM6h/TxIoQeweuGxQ8Hbx9VbNzMH97Qi4dCTYL8kXIhL
q33XYFK2UO1o8/8lwQmkHfaaC129oC2N7mPIfuw8pOXNrW+EEzV8jFeYJs2vPswGikmyLmulZm4P
XTjG8HB9N5/zpIn543FeSAa4k8q8VpvAzq/msWGWcTTlMygqrnoezWx2WJHvE5/KiMGwfPIoJWJe
d8mCVkaUKDMQ2OoUYoIMSTSZLy1arGEfDJGB0udvk038v/VKlytLXxCGlelJTpQmTyEpIJ9XLCRR
2LdFXS796oGimZM6c98fuFGqmGg2e4r1Gazmi9N1f+k1n07Kz7oLlSkesTZGUtuCGmDJFXRMrJlY
eMZKC/be2Ikt+nj8bq2oT18j210GDXN250saLWoxFn6BqgaWfnvbxWUzzP5ecJ7RiD5bHotauJyJ
KGp9D+eyY5dN9BlbVInKJ2A5Za286fPrjYNG32OTnZyAgO81RdIvIEPO7E07nnH6F7tX1ypQlwvm
rNSZ+/4roCcdzLcAVcVm62IG+pB6u6hHkaN/NQIMD+f+DokbnDIh7hkVL3gihvzISxmtLBtWveQx
JTjA+kZnnTS2xD4+Z53uTwRa45CZEsx8A2ipeR9LY1ZLFnAM0P8cFJGpJStDTrsr/nKWil3NGUsW
LVxi5ZDAUlfbWXAppdTimKn4maAlXXVdL6p/54j/JX9+NxJOo495hvhqKL3nvHIq+urPpI/eqDlM
dZ4zyhMn+nlJgkCV7OCgvCTkias8CZluHB+UZoTs5xO975anficyxVyGWGytO2u+ZvtTJTCYIQru
1m4qz5Yi5gzh06MvQvGAtSUFeUdIOBJs3a1GEr9shfOjXr0gBoeXObDlPVUvaWt6xq8izm7xc1SC
saUi2RbmXnYh0bPhafFiuztwnxUSJ7K2H1PLessqmfx0nY/NSzl1N68KTk41mXN2WUd/jgH++ymK
WTfUdTFp1rRYCDNkTcsUcgVO2KTX56AmX/ZvS8CR5UxzmNKDGlv9qSUwCl8ebDd5cz98CyEDYGMe
u3xTAHdP+XKMR7LeJ0yNd0MoEkPMXFbBxMkcTOHUEEHIf5XPjpQKIfEiWxcBynDWLW4HjjAFnBbI
RkAi8Frm0GKjngPNn0E+732Vf8IQj7MpqjnN5JfycNJEFUQz8BNMLK52PhsP8Xp4RQXRDeDGCTGY
3f6oYW3chTLQqacBcyLnEFyTXKo8Mdcn8fmHe/WIh/q0m1G6Hh+kCAfc3wZg9Gy2PMj0fZbUCOLb
Adfos5hD/BTZHc2lnL5HNWTzcRN7PnNcWDp+2Cibqb4dwET5WV4cTmcxViwCvEPKKnr4Qd6KuA4m
XSAW8s2Cb1U0xRAW0S3RqFxuyqxTtgafkXq8urEkpfQ8HnCmYnchcU9KUvLGfWKXciC15urctfOk
o9r/GplHCGmnj9b0+BXaB/Vttg13HRgf1bnI6VyXwynub5CX9WNKue4JQFFMj11qM44bSe3QA21l
nIv1YDRLUJlV4c4qE/l9JR0pxlvEI/LwldNjREVBSkgZBenHYkrpHr1H7J763Qf85WaL7lhvWwnm
pLGveH4EsWGqtdhQlC6OwewuGyrtLIkfVEFqLXVbpw9nsiSNW/z/3Gf+QnEfk64a41ctJBvjHocS
Ls/+5PJbkKnpTdOndtiXnWr3aT92FqjJRFXkfVJcrVgsT0S7HdARqdU4GR0D4gx2L51A+BJtyy7s
qzEo+nUw2ECGSDWSZ0l82LCC76UGX1ajItfrzYhvyTu0COtIlgcMME9e8F558lGIV1D0beMacTac
0sq+mY61hgkAqIIrOpz/OgXh+QcUZ4ZF57HLc/bLDRH6Etxp5QK1l7v0HTcjPqKRYEOaMpvIzlxC
/WX5o1bEI51nvw72789YpgQkDmHOfDb+pStTiFdsCP5X7hdS5HaH0KJ5pBfEVvy4DUKVp1atsbu2
cdI+Gk1O4Fb4GTmBhzEbnkDmb/9Wo8JkKoRNd0hs401XM5/0gzqyjkEHy/FevjRqsDKf1o9k55XD
ybHN+Ye0ETO91KYRB6gkkyH43CmAQS45M4YWuJbA0VVktK9+v8o/lClZ4vNJ2RiMHFu1EH2IkYWY
sYObVP6/Ybv86xUgHiQeaV9nzSdRHW4cDmmrf71F2U+7GTGeU7J8wTm6suIQNIdgtd3wcFaA9zLk
N57+ex0JiAj6JnZ0oQ5MDvbOhpVUXIpNz2/Ud/fscfaw1VjggffRBY83543gt6tyJlXH4KKe4H9F
BZl02b/VBLjvAV5SxBtSgJ49xlga31i7fL1BVz1EI/9Nwe2MSnFRhEpKPLav6pltqAC4cs2StTvP
8P5tgesP1Qtrlht04vE2hJtXoEiQ+n1ypc9gChnHrqtrqNPNrxt6e1cpUe8jfs2rFVduoZv24inR
d2epTF0Xxh9G8Rh15bUlGxvVRONq+8RxOlBG8qj81TWmj48mJHSK50A2K77QVh6eBPEDfwbIyoRm
M7pMW9ggskKevtXsQ0tYplo/JHStDJCJ1+p4ejf5oNrRxcOH6T7KU0kQpoWn7OTDOYbPoI+3XY8z
SUp0wChAMRGMHZXzGrr1EKHWXiRHWnzBuTkMeQLD4XvQJn+oRWisTV2iPS5VFKeEz2/DUlWN6jz5
8how5H6TorzrKyHRUxAaBfK+s+aPyIECEdqPePxbXOG/NXCADDxQVy3S51ewmE2VRjO0gqXyD0Cw
n48dQmWB9g5M5jHY0jc3jS9CpcL1rRARAfHZJnjSsDZ3Iv/2zB2HcyGX83i4XtdFHGQbUOVtXUS4
5TOfVqpndsGthdVG/W/sVrH4vn/zayRqtFaDvPx9Bc7M2euaZ+CabFSAS/GZ5bDvGMr1X49kqPKj
wp4u4KxdqcfVGbnfreU24vXuL0xRJnJd2CVhGjn3e1TDHTtIEN5yvIFS//bJxnfu1364t/jYf34u
xp49/ApDFiS8ziwyFNOAt28y2eKou2/oXr6nwXoRlAMzWVLx3FgVGTfjlvYAEZmLcHGOpY9D4iZ4
DhUP8dVCdGObKjCRLtnsHrO/2woCq2xUzNmjwjmzKHvq6aVJU6xdzvHiGSAi81GWNbkhdau9zBkT
RmD+dkuRRMkS2y4zCWWV58pzyguU2nse7Mvc06KGjTrA9aAQl0qH9w+IHm7E+2D0tizdZnYzYiZE
gJUXewuBhNCBrTcpzAYBElBloIwWQJtShXWp6Bp/yJU6HGYGfs2rzcq2Qj/xRO8znq/2X4Qv3DCt
YXlHzgZM6qdg28+nqDmYmEVrZEqzcaqUsQodNoTkCvkvgRlfOu5nRkCccsSuEiVlnlbW8njXvbsS
weC2V4r795MEmR77OtcA8MXk5Po9xYVPhlcfkEgYXVS8tySx9v8c+RjrsKQkLq8iToDQxMHn2iXd
PDQOtes6XjICRSYuOEebs3flwCn6CG2VzZPbdpch2LQ8M2AyiC4Jn95OD4Ugth8U6bQixXZoZW1c
cqEm6oDBXl8SxbkrmnTsY4LBG1JntQRG6UutAugvkEhD46rySjkUIMsNpaRdN6fi/8iPVWm5p0aY
jtgJRibo4sqpC+0NXRyeE3efxGv+M0bJ7ExEBsMwnBDKUY7xbZfb1miZNpWNp/4RYp48U8V6GnSG
3sqILGbUmxPjnmHaejClixn60GcEqlaeaozM1VanAG1AK+Ltpx62fXEEmpJPc5LAVb2kTYD/r+wf
4WTRgDtz22ABhJKkeID/2uMdC0nu0PEyLpx3uEVh1vTRBubv+sX0/gZrORraiQETGq0pBgP10BeZ
tZNV0H+91JqO49crBS6RrPKJ1T8j2YauoBiPLOV3Pi/YgwVgGyH/jdC/FBtCEZV36pdW1P7dTMSi
MX+X7iuagTqz4iTj6Cxz18GeFxpGf26ZLlatUP36GYFQVF6j4OXFGqGJ8lIz87eTrNK8l2l/Sqdb
TYG0vG48AXRPsBn/Ir1GrJE6XfG2llMqjaobfElmoQHH2jSAK5sBdbStj4SdcRAlCphbrhXKqjJW
wzaDCkAr6BhDjOqUhsR/yeZCw9HNmiuGPmDJ8bDs8dksws/lze8hKgGxQ+aytyrpT74qTWLkBcCS
zk4vtBibdZRYx/5wRaqqcE9b/RLgGBWgBYiEIdOLR0lQx2AvZLLz8Afi9vsNmkphtHYsln3OjWUo
ZeAy/m9Irv22ertuXuM6bEHpG4mXwPIDaN9f0WAgVrswyWESSfXAT0qYauovdDl3P4o2BzTmx0SB
n4Ey38h85nLXLWl2Cnenv1iqcDzfJDIKtbwWyt3NCjxP0Ch3J96MZjYJT5t2OQHv5yEnIhGarnb7
+gQOh0LJ7kD3H/le7pbSRk7UjYtkKXG/TGsypeBkrMeaqsFlsUclUJXUsRugukQ9aP2xsd9a2p/z
fTYmc/63zX1ws4joNQg/S/3GHWZ726VWs1q+VriLzKDlQlRKKXkYpTl24oBo6AsNzbwDupLYfLy6
gsMVapF0nwkIwz/XoKOelAwjmClV2Te1zQauVCO9t0hkCw7FZzUZy7SIFBtfuyh4frI4WrDzQQkM
xKcoJUJ3rph/AVTfgtTxXxvA3XicPCo7EjMWGIEij88VfxEUFs+tZ7ehwU7fqv2ANKLrteDZ6qP8
4NvnyxHA80Aq4iyuphr5yWDDENQTzctIdG49wpBJoXYA21cf+rklfYWgsy0waf/UFWWUePuYJz4g
mhBW6askAt9K3PcejPpVNByaovqaAFAfKTeI7i17wzYagWpL30wbhKz1u3wxsNkSIMy3eKMcJcQ2
bNz1upBrDo9t1gFxxgvSf0jaFpfeiOXbKytAqAYY/UsQIa9t6RtORgx4aLbgeoSd053s8B4+BxXu
oJOPjMaqX6nx32tAANqq4cdDlFsFWt9qFlyV5O0501C0xAaLAdZVlf3BF05AvpX+Vs3g7F2qeTQS
px91g36l+9afxNbU75/4LYfRSJsZLyBRU+IHSPvT31YUQnf45pw8aoJyAB9fcHVnJc8oOB0twfy7
5ANktv4GZl8LN/XNO8ugrdu/Gh9cJCjyRW6esckKbkwgEQR8N2oHZN9Uq0HWMVHbf2hPiIGtcP+n
nBU4i0N+2gShf8geEWQEgl69dDqzLbahXAbWsUwP+3T8vRuFYx1Hm6JTT0WVqf/FYLNxf0bqQIUp
HZwGLr6ireF571n8vjcbEMAeVwloAYfCLaYsEDz3KgsQGV7jXiokGJDib73nMSa7Aao23U4F5n3F
u9SckpISKZMQErMw47O5w+rqE/F4PJggemWTDUe7TU4X154x0Zv+Qv77UpVQiTMXJNlsbExmikbD
9Rv/Fdpvi6SEaptxeVvi3JrK4//8Ipa659ofqFE37W93Tw6qyfDol5sHjzpiO1B61CYwveqYA+tU
BeF63Fcw0ju8/IOzbjGi0Tu6fXr0Bp4OEzdMZKws7amJ29iOK8hVwFxsRYD7ntg9WlJiFAFENJhy
i3p8MAgdB4duN2IDUZIOZQyCZeknqqms/a0S0S46tfBoS3EApApADgEqJVbTORNaqJisJVOSOXHC
WP23mQpY6/BaOY9pSvyJKtiUIya2tfiwaThGJDd9XOF6H1gcF2NrdB5WaM9ihGOZQXJrZitVMERP
svNZ7cKAjkphAFtfntxC/zMHfWK9DqrZAeYy8DNQawjZ+3Jb6cz1In5q/KeDwNzmHlccJqipL3cx
y+t+VWGVd10eIUDgEIbF4dzkAg+IFbGiQPtLp8n+fLvYPSL42VtrBkNJLVAe6QBr7l9tNFANsjRf
O5w2qGfPt2KyOT86+VB46ZkvL8jeM1m7vh1ynQbZ6re9PANIUATKZsRJTlz3xQTlkeZnPw3r5Bmn
UQcANZyki3Q+ctgelOFjs2to7RLC4KTfZK2LAyAarEOO1FD5sGbpNyL/opuShI0npdzWliKAoHv5
4GTMcQ8fEBx9MZj0VPcN44Erc8V5qXiFCfxmB40Dte20y72hFETHLz9Kkjoi2UytLmFGz2EGRt9i
3Vyo5fhOmtTOalLMC/i/syAakZM4gDleDMYGYHTdpIiZnuWCjkahEsZ+Sj49apfQAAlh+cDop2WD
v1DQtF1NzRxZFAdOpzyh8CcOiZYJ7nzUSccTQmd2fMYW9Uyq/JQR2t2hjVGXnV1AeZ+r5DEujug/
Wz2UOD5j7fhG3TTzXW9/9PG7Ijp+Oef5diy+6fq7CBDUJmciAR9h1JFpleQY/DGcPXP1D9nmX1J/
QEETwnymuOrKTH/YSJqAnUYer89r7J4MZIHddZd9VizPkBa8LJlTfstzULKxd9tl+kZEkoG7P4iO
zVetWG9XcB9kpL3J9yx33UsrtLpaiCVL8Fa/I5h5IyzrLPSYGg87OCYKpdNnYRTbNuzg1FAwzBem
uYeFyAAmImYt8CfqG0XV+MWvz9kbdB7LvBDIqs2xpDKFAMHQAeTrCcQ19RTdQnx2u42m0+UzNXTn
FECN8xlsOJS5kRdBSNFAun/NdGb4PBx8p6/tFDKeACE5NC8z2AtxpHH8YspJMHn4SFMYppseJpG1
acTlHNHq4lUkry4kxskhLY8P66KX25roxDWWJb9tK728qZY7B083PypWxxmd10Ctr8yxNq9i4p+C
j2qLp86aisq23NsNHnycALJHF6YfGZFeFKh+0zKjOXXOUmIcLslzCKEvYZuftiarn15OSX4mgaWz
7T4TUbJc4Fyvl4r1S/AbIdLEV6jVCNLKJWRdV1K87f6iyjkOnPPeZOOk4+QXCsUevodybnRXXp4E
huQjVj4QJm6az78ymbZXbrkhUZzBT1k0bpbnK0bm9intnK9//Z92SSYUu1x5OY6hHLSRc8yt+TAX
+DERu0lp0EcMmvkY/hJTEqxOcPkxULICXHR58LnfCoGcpD7gnUSG/WKx4Aw5Lx79DSwpy465kIQ/
X1Bqr8mRRtYyd7w/EaLxgiDX51Mf+CzSFjkuF7fRTawpJkc+PeZQddVKCTPmThazqukO0si6PJgd
qMHqNdykkgoHMw70TVV4YYV6wafFKnoJrLEPWbY+uGnsSIQ8ntsyXZeeQoDGvZKS2gLTA62Kw3ji
2IDjlg8KyXc6/zRyo1B/GihF4czVeAOQI9rfcAALK8WFHhJ5NIbTkpeT04Znw4DKdpHnnvRlt6Hc
7FJj88Ang5KMHte/opId1oZBf1aLeMOLOCBKlJ0gvreDo0cPJIes0BytrOvTXSZDrEo6oZY5Qlvv
wBBzcLhcOtbUYVOOSoXkmJWan2ZjsahvYCWWt4tH30zL8L4VfBVsUIl+d/XDebXaZSwpZPo+AwX2
sKENuetCKDZaDcWLDzX+tg6Y7oEGSezkMZ2HVmJ0A+usuI+COvNZkNpqWmXolptBFSFo1GD8u4qf
s3NiV2qrPiysTfc77LF+3qrikj8eGBgvpMSirNJZJmuWj0/ioNXm6HRTdG3beqBTIcnG4MiuyV4I
Kme8e2wqn+1YbMRxxwFdCjIFzfYaGn3v2qrICvhAOcR+lG5TeJXKBbk21xzZlQx5MU2edMTObnIx
Gyf7RlWNXkUN7tONnCd5G5ekVn8a9XQkt9ldahrHElDgaAvJ2FM6TppC/6UKxE6jb6lzW76xPMBc
UjiDeq1mT5OP/GqMk5saChB2K9VGPIehLeFSBL/s3stCr0EVc/LE8+LdcyWWFDP2onnY7ciNZhzl
qhz3GQmJeM53IOnDuWpb/fUj8M5pFwq95sof0619UdD5WHt8A5WUGe0oo25Ekt4Yi552330EaBnX
w/KsjoFRA3zMErHTwqclC/jfWIY9XzwSA1bJed9Y8P28Lvg/8kIJh1ei/JCSiaPmOz2MDrLIRBtf
D1InHLAAmaDnq18QBiIy991dXracWMdyAFSeRZ33dFDPtbd3UEPXWWOH1HrepK+byuixvV3MFfwP
03tdpQ01lJ/lID2BDxVir/Kdkg4YOpE+LE46JJYYCRuoLqRxU7hbJIWM8g7Eb7QzwvZ3jRm/NPzI
1YvArn6MXs4uR5RQ9Y2FmVKuGsWkYlJiD82dW0GQCsGpOkJWKsf/1oazK8aT56cZIxMmOz/rkdaQ
Lb3bki5NTAVVBUSZtB2alPRpekfaYfAuJdfDTUTYDx4fnMwFAnt/C3QxmNm7SxKEZA5gneOT4URn
7C1Ppvx57ic3Q7TgTbQvIkrpC9OQVsFKQgf/IQWCweczKrQDywYTZKBPR9vh8ECOAIQqcFETdxLg
/+wlYUAaH/ZV9yczCI9m3ekvpFUpnZDJA3R5qEL3z9DHzE+CD2kknk0GrfhMZJWwYtBGd3noVvQ9
yz0RA+vFqjEacmG7gIolehYeJPKHHYLb39YjY3F0jqNGNlfULfjBCvdIZd0Wu5vPThdDNKB56tTX
ThgbeHcpTdaFdFgTXVJiX8dUPesz7cFOZ4z/6qz23n7bxretnG2mRRRLX+DdBvOelrkdARIad/n6
AKF0strKt/tv1BV9Stw+yU3f5YZLqRNfEDicGjVphtd/CXrpUWR8C+wVlaMOWTS5Ddeu/T4sXNvf
c34fK/M7TJD2cknmvh1QW/YH0kK/ya+4K27C7YZhRV7ggZyaB5N3loIycCWLr98vuCOBjCs20rqK
CDKqnC6yElmk/RE+c2h+N4zuF8CVDNLGitjX4sueLK5sHXXkQg9n4n0lU6FrKylAyt/5JNoAcrTV
i987jjIAgnLe6leRXOpAGui21QTE+4MG2GGP+E6wAIIUwnHidywcFRoo7l9mibhrRvLXu+bbxMB1
VMrq1k8jYLdnQ7FH4kzVtMjZUzWdxtoI/bQQgB//S2aMVWD3SdtErWlkO2HNcltombnjc99cFboT
ZRNt0bYcYnARbWchNg3HRcKaYHHW027gzlNFfCjINXSpRY+i6fJbQ4E4oBWG8SbPkMaBXf7ZYqMY
9GtwM8dm4byGaT/YGOpDbWIm0NWxdiSTWAeh8BvfTRsoKnjs7o17oZYiCBd8lrWYGdgNiCAHsgSC
FxRI/HKE9207b4LqueeCw9JWNiDaex5rgBqL7rq3cF9mQuiHc92fstpiQkIXYTUd+jSzZMJpOrkG
3wbTLdA5bmNcYBBK/txYuoW/cl0sUNZGrTAkcMD0un/Sp+IdVgLrsW/RXD0En1pbvOckUFbjXBoS
8QqlziXOTX6rlGuS0409UIvoeE9IsHprvz4IqijK9r01ZEqsgSwYwFwEvBi84y5IsAfABp/fNEUK
vYN8P/gVNLROxSsxrq7mZp+4aeNWmZ7TcwamVZ5ghS4KBqfJgyvP6rswoKKVHvuPnRkYsJE/yrJ9
UXmpgI1berfEFSaIvWg5IXwd6sSgil+u/iEEbTd3Z4TrSsOBXFIexHZMPjSFtr9uKpASZ7g0zQHy
A3FwNXSpiRfcbSL4lysBsrXFJYDUc4Wb5AEuf4eaQiVQ4pMuE9d99IrL6kcKPXr4NB9W7TY0XzQP
6yIIVtRbdUqPM63yXF2xP28rgB2ryGJDsB2meylToAdvuO5vrRy/bnqZ4snNxmz26AiFk24s9U+l
8rV+JuBgeUbKeiFqc05XXyOFS2eDi+nCH96zdIQyGBPbjMds/W4xTVCDbZIG2T1PPOWT9JCQpkdi
mG83LMFg5eVzcT1LEqb6vdCZY9Q+kTzOzZmdJwlOtjZfuNasF0LTg9Fna2nRHXXe3XL07UDKvkSz
GMKsBPkXiQInbihjQMS0B73/j95JkmBX71azWa+aNwO+vNC324b+qhRWkN6eug4g3g0+qzwVX7uY
5atc9YPmj7LQb7mHohFpcZSxTdcg4TBw6q2E4LsDInnvSe1nABeTVmUau51CJEokR0ylllvZAlGE
ZLP4ihCWftz8VnHD/Yt7TjNrZHnT3SU1hOXSsxEXjJroRyURdN2+uNd9I2z4c3NN3ogczQm8I6bS
UuKVHPwctC4/q1ab3wnatrguwhdhqIq8TRzngrTS8C8E5AkaysxZh/1QeXnVPZMGWMmW+VxNtMPO
4jY2O6JJyInfKUCK1ijs6A6o+KBrrj/ZrKfandMP1tskfJZTl9ElwnV5FhRPAUHMWNToA4GIPSrG
/sX4gDIqG4s/C+FfxVZ1hW0ifBPYsK+d/56m0GDMunBOUiQ8SZQg3Wd1ITWxSdI22We9cQK7iRs9
r1aN5z4Yaz3ywL/7IpR60cbrN8iS+S3G2kZkKHlN4EUM70RxRkTvy0el8VY+zYxJULHcghvv+mP7
7eSxukxi2k9uz3H4RSPh6sFZumCmoKOBPlBNW6sARrz7enyz5Qe5vgDyc5gF55Jst+ITOz5ICHTb
zfCLIKShEfUvvoMWZk6YePuHW9eL/I9rox/fQYPmzmRXnHa/prYogcL9T/+4WpqCqFacE5xHVIOJ
PC/X3zNJqCnU7PyEDnMgEPKwSNIoDEUTPmJGthJgryQfqVYAS7wXD5ob5tfrv5eJB+OFJj7ErOOn
K4LtA6sSgtUvdIa88nzJEByj3s2hKFiLnxrFbAiQxWTM7k/Tuq8KqVP2MKEsKggqsuldcbHrj03p
bH9UAORwYDomyk3qvAWuFJgYaElbmiQ0hUKl2bOid+pLlWeXNZB7Z3cnAj0lga23ZHob74TvQJKz
yvsdU/cXouVwmCwdaYwkajU048BCi1T/p0vFNVDVgaxfdHkqi7WWG+PLMFQk/qi+Y6Vt9XpFyjsq
0qmbgKkwH++OrPBumd2OFlWZt8z9D6z17YPkVxIObg/QLr/S0XVvDBfmkMJozQfAT7gl/5xq6ZWA
BEpjBfKk7Her95gKt9K+2IFSS8j03lEGPWQD5KKm/QrEsL+1eOBss0S7BAAH0PFiU3+4HNZzUfhU
btFrV8IgFiNGQBuCVuPxmO4PEnKaY/3yII55kJ2B9L8W4ZICJOPKjgfJAmBANwyepe2hauALqIfk
mUNBk8lpS0S55sfwsA8xW6dcfystpLi/3YWFhAvNGTy5kIB5SgcE6dbv7NO9/sCYDyd+xii4Bgkl
m3R0gOJ4UEH498iqYRbrIznPe7ihTWQ0IGbRSslHz2pp/JbESSIfW73B6aRRatCjJrgGmx9XE10R
snx4U7noPqEgYqN7SoB0veoVM+i3EndjHxMdPfcue1Gja4YChfbggPREfC1zNueKf3CbgsqVy5I1
TbrjBpETecHEJS8EdJ8wF2mwJ4zgpTWOUCKj4IU9eZkCiSLHa5m+2n4psEFUAahDwLGzVguCEPIA
vjHGnMMqwydL8n4TMXFqrKDgho05nmN35AOxP5zV0uk3Z2yTK5KMU8IpB09SBmmKcGdoxfU8NV63
gOURLE6gA3T67kYsHUAGK8z7DAIC2JzL9GPlkFx+FQtw3j11V3tJNrg+dEMEhPSlPdpdZkhkXX3m
Dpyba9UChg9CX4ZvhUqy7PyEPh+gAN73MMnKMcdgCfwnHoCJGxJpOOO7VmZLkDIk7U3YuRC/ydP4
vBgHs6V5OLyDWZQJyybPGNT8pNeGw9Wz8dF7eF8GbRnE7JY6hbujxC8qADHpq72G7zRorJ7MBxWe
yzYMPlbetY4tyArfLyatczbPE/IwX3WZGsMcjcVKZ51IYDACSragZn5A9EixJ1EZhLmla+La6lhh
iv7V3ZKKQ2r4GaeEvUeigWufSMB58VYiqRX7zy8OcihmuxRuL+qapnZwOPVLQ72ikE6G1F93gSk/
fRL2Zpj9RZpbTs7tw73+aDN29maI4CylHLAfY7+tyQclNG6/4SypADGS/iR8+6BtXPre+NiMf4y3
OS3hmTaguKinBRUyLayb8iqbcnOpBrcz7ta8q5SmGGU+APu0REAwEaq+CriczIz7EdVsdCBRtXX5
duvdu5C2BbKkAXXBSL3xEI8FqTFhPbLPOJgQctYVUSB+LLHIG3NIDMq55IsFvFNTn46hb7GmngLs
nAkM8HucZpmh7Rb6ZHPQN0b9Io0mv70Db08Zp0W9+XmnPM/lDd5AcVJQYVEO+iBL/vBtai56b4+d
k6F5MTA59DkfRVGVLXYRqredD8bGFanzCS9vjgQ5xRy3fudzZXtEgfAW+OsVmS1LVcHltUbE8DJ/
z0qYJhhBfv0vYOBUbhSsNqflfFG8CpMc1U1k5OoGWhp2U1t1x2KhiCceEXYcne9BM/RJuIupOESJ
Hl+w9HR1Uxj8Muz3eIc+3TD9kYRX9Dg5mrdPKsxPxtQPMZQegTiYIh47sNni3IJBBLkSG6rmFmAG
kwwpT5BTMvITX5x8YRD6YH2c4hYex4KmcYrpzGP5PjHTySLJ713bET7AxNMee/m3Sx6MqtvRJa7I
B5PJvrTOtL0tm5QcXX8pj2B/QiIwx+J0HMpG67nV92UkDW9NsJH63B2TRWDI97BXZgjwRKOcO31y
oBWBBpPMrxTBFMMiiDnXAGW/NLMzoo8rgkQkvgAMXFnLH3StiJr17Pw6jKCW/4rgukcEQRbFuSQN
R9i0S8HmcADf2tDTAEaFj/9/HU4yEoMgW6MRXTjYvJKKtSLtHIV8FFqD6pMRGrZ5i3iz/dpJq6Lx
wlW90f4GbPECHvJwHd/qZ8BkNAD1JRwBRLqR9piTgBel9qSG1rKh3XJdKxJtqcJOk+yYCl5xsiHy
obTx9qieP+yg/HK4Ywn4mD5ePuyHweoDlQgu2FfDqteYJvBPuavyxLluwwI7XkNG0j53XQ7Y/LIr
dqnnXubQ9/V2T8L+Eh7Pj2rUs3cX72wbB91phfFyMexeDfEk7VUNVZK82dEa8w4JrxjdmSQChJ3j
z07DnC9dGLx0DljkaGFUe+HibjAE2w/5Y6n4tLz+HjZTz4Xd/LJhx7dEWGMsazTRhXllTtGOLBFf
noIbpXSpgmnfavItcqaODtYojOfy0+bNgfK4tkaLZiYvpYi111RrGSwrrIiuwxH7XI58ZHNrO70T
Jh5gTT4vbri3ciMKkmGwfXB4v8BUDFLZgBhc0aklTEwWv+wb01/StHlxrAhtel3LJk+HWsH2k3oL
qqWQqKtwMe7r8/nH/7mO/XXrN7Ggd3FwAO5atBcOTXZWekescRqv4tzeV2UEfqeA+pxxSujZa61v
Lm59x2x/zwDwwQO25kIeN6QVdfJebQPBG/ZQh0xRXeLjqgEDlaFisiaI2Wre0f5+AfIzSCmcUk0g
jvOZHsKvAupJrC5+E4NxT/9V3NvpGFH5HveIZLL3/3OEbTvya1/3AxAyMMdwYqVc7WmVACXSU/VM
thfTqWtVNZPwkY3opXG/gYGreXP0xCDVg8+f7vwV8/B7ZTT6lcKY+1E4vTG5ym1fDPgoWN22CP2r
EtlzvS+6luwetQ1MpPdpOxapEzTWkdWfRdJ+uRg4OSWEIoqRQgQa98Z8NBSjPq5q0hiBR3soxCVq
qUNduJKO/NPj/xHD3fYXAqwLd992LlX1LCZk66EMdMS97hZPHn5wyV26blxW62DVl3rcxPJ1MAPU
RDCN9zLScEmKcRaxL5sC9gAQ7odWuQnOfMIa+5qSbUtvOQ/MtYGvwv/80pzoxTtRtdFyc0vaxyEg
k09vT5dLM0nODH8zY7Qp4GIDUN52/oqNz03tvb2aGe6xesf/X4D8v6wKsGNQtT27KCahtO9j2j7f
DwWm1lxLP+JUI+bbgM8Xr449Rw1wgRMH/gDAMeNeIc1ky4hZIBavKfquZpagGj+x6ODtYdMsDdnJ
2xVLegAXHOJC/Sj3UiUrF4rrooFaZYQzh85GSY3FuSHy0gOSdDSNKuZNlHX6kvBGo7zeZrCcO674
KIPLBhnJatrdmNsayvhnxMlr6qSjjeWJB4vlUvj5TSsKbz14AACNPv5GDIRYCadQj3Y6f2HTGpdX
BEdeEi8VGEYddhnUraCPS+Y1YmVDOV0SpyZn9+qJeDMWFZSDZ0tZMezt7i6B2kpU4nPFoA+6Kw/Y
hfKoYkyPSOt5+VLKpGW92zoe1zf1yGiq47xSqVI7XprHozoizHugg+Hyic5OLwzmn1nx5Di7s1nO
aNgFVGp9w6UQ9dju/Z2cVgpVh3o3bVFXGsIJFItaUstiNoJyWg/lThXwOytD3boNunHW4lGSHDzW
/YBo1OM0jpqr/wUTGknFBYyz85zW4S3zLzX7xjvOuzZXPdu8mdE9K2ycztEBpG4zUsC0ganKQc63
FDmxf/6svTxAyOoeFJYlrKyoJcBRGdwE1swMmonPDNtGWHSIAuwzZInlFgvpYGfqOkiKL87uhzYv
8CNgUxlBi0Q4/i5eOj0VSmoAAMwlruRSEqdQDi2ubc/9jOE4Bq9tQzUNAFCBKpIIgm92ICCKMOfE
pgXf+55G3ci49lBf3i2hH8MxiADParGDgC/QOEj50FefenTCxVELVF8SbWOO4nsqD1kH2PQ5bFEi
+waW+KmfuTbNQbyOGrvoXUXVp7uts5vNWDXobjbEepJFJmAL44Vp8I6lXhC7uxAeBpRCgKc/G9ft
h4QlXMsvq/H7+zzjHJ0QpngCeGb+itnTSpAV+1L5ndCoPuJhhHTNOHiEq2+/+E4l1iBmzdzQoJzN
Alt3RCTu+rTelBWbUHyg+elooA8t5WMfKjAkYIq51H0MCqYwdHxCtBl6C9LRgxhE4U32bYe5fYFa
knknQHIsFSMllyFyHSg+fze/VTo0kvTT3oH+vz6SoxLpa5otkuIlgY3RRs+vmXKsPNzyI/Y1OGVG
/z7D3YIRwKXqk2GFrTTYnSOk6oIOKC835G6rg1MXnjW64qaWLrnBCCNTjQN7+pIgzqUB+a10r6RB
n+VldVIV/PFi2K5qP5QhrJzSjV/xeUTWpNuQMA13uHP7Mwua4kdHHJ1ev0C51nhD5D09Wb2Mz6OL
e0IAxR9wb2UtvHKXw+56F2psbw/9ITPjj4uQjHDto6GbCeMMM6DFLVjKfmsCKfiMkLix7uLmYGYX
Zo+JSeCm5HlZbet4c+aKLlHr+Vi9TOtlT1pibzD1m40l63Cl30mbn3BgvBtLtiW+Q79EC3IDyEYg
6eX/8hH2BxYH54+YOpweI3vWYwWFXxGvJM0bG95TDAzKWmT3gJUGIeHZwDfoZ3bEWVDe+2fXmu8R
MIFH81vq2X0ttKrymqKNXtNIy9dJCMBnaRUmIjgnxxPcM1xYuKruWZ5UcPCHA/1Yb5PsjdXk8gMu
SCVMkVqmC66aIZGfqMv7ccxmjdVuGO/SvpOYZmC3jeKh8XbP5T+zz8BqFaSIVFgnMH7NPP2OSawF
Lz8Ooo8myPfn4UAVJc08he42waqSJWNShLEoQN/Ny2artGiSiOjMyl9YnPwBP1QGW9nQzN30oVNj
MloBBAL25t+e579lJsUrJVI2Gq/Hxp6eyv8j6HbavD9qyWu79AVbUAd2wqrL45q6A/MqCjDiRfrb
vKrXw3ffqL0SYgf5YBRGoi6oa+VQoeKILCIAsniLm3jJ5KCHDY05UzCmgAKiSoj4DvZSsRcuM0Et
z2wWCmdxehfp+FRR1Jno4VsIyoUgbZfMIA/KiaZ99ETLnjIsMeHvsF1FH/ERxe7XyIlfK0IFNJSn
JrCmapRJr0VyLDQiAc23thaPPc8SonYVZ3ec8ooy5NUsgzA9D42pWGloyJr3mkwZQKUsKh7Jh09C
8mk2Uqx9GoSXsVtb/Mf/+sARXRHtOBTdTVuQvajGlmFgcV2pVWyuQ1Xtxz+j9oXneTFauZyNRw0J
ft+iasj+dkXIltbx6FfZLrM824AsnjS8eBFBCzVe6+tJdypvSQi3EiR/RzKfKS4QPN6mHGJPomVW
fsYmmWgQvp4DUzp2/pQ3qhFEY2qtgqfAQu+ecADVUZCwfJEVOlwRrJIP+JIB+ZMpkINPqBDsg7RU
9Rmwxd1SMku7cCJL05SXXtMMK3jhYXzlnX9ZTs7kMpvlEvpkbnaD87XEla9pEA28lEuUFvp7NEI3
zs+6HKrPdvjCtcSLQDnbDFP/PV7h3qdzuVRNEXghhBwwLg9aFwYc7AOQpmg5UyAgoyXL0DkNnE1A
Tz2pJShx3FhV0+jGSTtnybkHleno91AHWhvVIYW0axUHAbjJ2w5V/GJPXxHWqv/Z/39yXN799pUv
Z/PhdOwqbJMI7GVdXhm131LOhRZYvU10Ky42Pxofz4wzsq+YLgmsEsciQ1Xf/UHyaDdTCRx5m/qs
Gz3c3ZED/EjFf7nzFX1Db0v+sygrhI1PSg3QI9fSMF70v/r9yWvSahcSnW7nJVG8Ip7ODZFvI4JL
bWetVOP+2lXBlKQhkDhtG8ARPKi/8mEuOWxVE48XvX2A2ya9LW+Nr/ot6Pw7bJfaf01TjBk0oCg2
/7hP1mlZCLib5FucR5BcwBXlDg02o7E1dVNPhbN7ThrUgMi3lJNj1Y18n7061dqTvsu+2oIp09nv
qur0TaeyXDc7RTdmQDI5LSeeazQodr9bflg0OtRlpEeBBmWh8USPK/FqfO4cdFXRlMZu+bsfa8rh
8962fhQ9MGkzbwUzjWfDMdy2QjrULD/8dB4t5wAJVGzcILHJ9a6ZGVxot5NjPxNzybz7lzNTC3mF
XOs63IJMROTQevET4Mfl/oKudqaf4UkR+CtcJRMFQc4x6Ze5VpZ9PCh2vSF0zPtOGWtmbbwXsOnQ
0vly/T6dFFizAsSrZM5G1JZZ2HuRklz/KUAx/bSl71Jcite+m+EkQOHDcppiLXymTD9AIPdH42DN
OqX5j74H4gPfQs+9Zhloo9zSxFPySv7mLaSLVU3ADHHXFjrzck+5ybdOoTet48VV1CeeJBQlHqep
v/jgp7FftWbqQ4feuLTLiN2hg7pco1FONIc9xlDGLc6D6l2O9G4RZAD05moAXkqGWYGGznTI6CK4
pjazWVH6QUn2ijLw/frBNqCsiPJJxruKwy+KIcvTifLAI8DQ6o1GKekO3jj5p0kad7k7mtWPNyUO
0hDd4WnfoGeFj8LCzICYcZvY9JR3qvui0JodXv/zSN24hk/RqVV1D3NpV7VevwWoISHsNhuDTWva
pB7m3rBQfP4ry9J3ob3BO1+bPMlOonF0jjd2/F9qo/k4Ntd7cDZMZhRv+moXJmuNEIHGhk3iM7Es
CPBcVailPv9oa6PJBEHeFMbUhcqQT9QbJ+tfhO3mAxInGyoXYncWmyxq0LX8OAY3J7Jh1UIBX8iU
JNh/Dr3nbGm/4nte6P3YsD8BrMqB+LnsJdjLkZaNVRkezVTi0Q4VfTsVXkpFJUAryVla0s0O4rqX
a/a74nNzQrcGlc05vdYZgtGKJlv78fh7W1jSu7XVAZriRuUEl0Y7VARZksUyi5JTFQntJpnaXKOQ
A3At9M3zINrjK5ScdyYsvfbKfbjbUzRSnxcLzBBRl6KXfzlw3TMK1V/gLFta63zLHjPXRk/NHeJ+
+1nbc/KpOcmrxVARKYgGHkg8dpBbULa0QGKa7QF4MXUrCDf0wtaa7OkxBG9UgpyY2j3tN0vwckZW
zNfRxnL4EL65Qx+iIunLfdVKUL6QdC8FsAA00L8m9vVjnw6bMnFOVxSZgiBS5CXxvvkcF9D+kdOn
O0fiS2Fs+0wLYjouGQaZQCFuoi3nhVPtWSK/x5lZ2PzwIZcSMPc5svBM7t1nQdWcPNPVqEv2fbug
jgOezk6rQux2BfUaQF39uOxurOqGYC9PUoNFLwE3PdbtVPcdOt9CsMfETo59O0zbCFgGI9wgZMS+
XPlrKevGxgVeagFuCfdLeaT9EJzM6PbQUDmDACXkAj+y4aiTGihYXugtygbqhWiljeoGVwBZfIv7
AAmF6GvugnGdEJCqW/VPF/Xm2f4F2jqUN/8zipJ5MkKXqx3M7m1twZcZLp636wIXlsDtwAKsv5WD
mAObJ+WTJeP+3QEKuD4fH0n6DIQv7isvlhoBZudZSRHdRX15t8DcFkMxcfI0aoEnzBDk3oy0ylCi
d8p1o3cPzY3fQ6+VhPwFNNGRdEBivsl6sTNtCk2MOsBiljy8B3FUJf0eg+6fswQgctEt9s08DVyc
c3+JT6r47r2YeZpCxuuacQ4J3+TYgXjPYlxL1v56SjZzpv66B5c/Y2axmHbFs4iE967f42iY255j
j/U13UcvOaVz23ZICyBgQaz+SC4B59OZFuN9RJioBD7c8c97DEJMvN1oHXqwFNKxDiV+wyANzKxi
L+oRdcRbW+5RfbM53obRiToee3dDlrb3B7bIYoqIJCqi0joPWLN/KG+odlxY+UQxlua6RTvQX9ma
477x8tx0bzaQRC6K4r/RhNJJ/XcMfzsnIkLuQgGhptp/g1QWXbYO/gzro1X2FOBBnXZ04sDGWYxJ
LzcqSiia8lJk49rwcFHW3RymmiaOgcNEyWDEpwETup4mF10gUo5lsWWg5l3L4qj4Ickarh7VhfW+
ulLORcTjRZzxgOrcOdH7qMUFPnHzGgmdg+mi8Y0FlDv7rNN+b9nUldKfHs/W8/dzYO0S5LqQR05z
QyBTOwMGOUhvTYNsq0KPPNVUVBdfdXHvAwDqsNdpEzA6qb9h5Fm2g8Fh9838tXZ/ZxKmWZrjFUYE
vekVOy+wq5tflidfNmKZ/MyvSHiyWfKu0O2daHVUtMuIbE8rSKnhtR/OJUKoxGPnSgTMnP63Aa8Y
WbBZs1nbmdl7arO4Vwfxs3unW9sIuX/k6+CIDFFaQq8t5UE2rGnxy09b0jc/4ZYHJK1k/tbQNDXz
iX4cByNW3JcX4rXHMEOPTlvaoSZSbWLSWs4lvUmL0ZIiE+2h1YSdDg1Ooh+dSMn8z0ZzsPGq/X0J
njUEzAiroCNizAVVRBnq9zIMMiuLQyStXQ+3qUiGLHxrM7ixx5nvPyR+k8mpO/3krNyyN9mzXd7O
Cg3Dov6z0OUWsFCjQD5oGeLSQGliWh/wIVcxY5U71XOShynllELLamr8iOBH/bFwXxYNvr5d1Ztr
2ai8HuK3ih9HRlOv1V0l4aC87bhg0Im0NZQ2Lk3jZDQNxqDa8CYkUFIQwRGWw5GtFKUzHzqQBJBw
7BIADV17YESMBDrfJ0kG759n2xstQOxMHPuZGdpbvcKrLfnPsFdPlQIOb1ZKd1bEx901naTXvy98
+x7zixhwyvzg093AvzDSLmYW7sahCqOAlYEk7FgOHCMepUSAyTWkYG4HYAtxJPjPrgVFafV1ykOj
KiZsncPI08D327HFFjhPSaHRl+T9l9DiP7kk7n1GnQKGcSX8eV9a0QVYM/r101UDo+6KPr0k+0wC
9qVVhYIwzbtckq6O2qxWz8MKBjDAKhBszIIOOAMvCysVFlaLzvaDxnsXdHmTBGDxTOzyZrXkBx+T
6abM5KnS+kbFZYn1HZpkVplnkD0v0lg7Y5pMNHgLoNv10SuRljduKdtk8kT1KEf2B02GoVKoaFH2
V4645MvzDRhw9c+ielDYJpSbHPBTNgoHGwqV16ut3GuR0D6gv0xyTFhC//G7NuzJv54HbweHU+jf
QbXPmOYiOCcWygFresaeBoGAChodsxNXuOXsgpsV+ruTMnt8Kbty0KggH2Bi4tgtfKVEOS6qe/t1
MH5a2BCi+l4WzjNocRfVVdMe6wpJ0oaM0eu1t6cPA6XAk7n3rlPySTSoGdbNcDed3djZGabl8tT9
8t/7eCCIwRWZ8cpR1QsS9CYXuwIH1sufTBRpMI/y1eMvgyGw6KCz9vd7JUWS36f7dTTFguJxMsBJ
kW95EvXb08YZls3zW2GGlHkbouCrusz+Vsn6p2sLdIiByDtxCFdh4UFkjh7BuVjPFz0aVcEbjK9B
E0Ddz1mQGNmR5ocOod7MRxVdG1Y7zCtK7lU96ppE2XAz+iWshYBYP3Erjxh8rTCd5FgGgfr7wsS/
aFJ+FFiF1r2yrjrhx5DbBox2/OUnOXJCMHuBT6O9umJ+UyTcM2+3M+flQ27SwpyWQx3Mop4oA9DU
5s/n9Jes5uAMgnHjpEjZejRgViJ+rnKjPb/eCZpWqSsL80SvQPN1UigrXQ5Nv0eVELcDcZBkyW61
p5bAm3r4uPUSY3kGWaFhGNUm7Mf09nhuHEfMX8lJkUoSAywDu2U1Hwox/mekveElXgfoLcEAj7Eg
0v+5i+EiOaqhiu/LpCZeov91pMwxPHS8+0OcCCjwSPdcN0PBImYM3OnHeRvXJzOf+HfodQ1ZKwWa
PC5htBjNlVKdPLz2Xszw3ptCWa+HFE+AN1uwNvbac8oadiaGg67WzE7H7DrSlKDqcTpPsTEVjnlx
03l4D5zcJ7z45jwxZUy/80IT9yL3H3iFq28Hks4yWhTiJFWB7yLO4VyitGJFuapIvdrdS+h36BM8
s85Dde1S/cr09/b4Ab5HLJhgMOa493O5WINxm/x7yVeBoyHJN0LJkUIuEgH42B5lR3nPr8vldNwv
TBVkMmlti3pSrqq3N90ClfKH7kQVDe7GTVM+2YchafmgYGaSjIZ2F2sJR3p+di+WhUtGTjYX+zaY
XcYh00jvUl5hzKs33fCPFYnzUJvxLSi6MSFr0m0zRs0esUI91Upwcp3E0hpMgE5fiq2yLEyUbuey
rBzqeEmSY8Iw6pGJHUmuRAgF+5Yx36433kPOizeFYB9Qw+u8ICrB6f/z5ipU3afWIB0Vsd6qww2O
pQ0Y6H97QmPoY5YudkDC41NNhXeFo0RrqyJ0qBhZPnuDBG8Q4ATJ1uyqxHXtWWHaPwr8U2Olvtv6
qsnrOY80oJfMzyXtUgucd9AavWh8X+1Q+fJq6OTOF9YJiFq6Vg7bUgeyKJCbwBltySyNrw7HMBnp
MUAeCypHJp8QsnLJf0v1g0+XUCHHb9dRdZ3C+xxudocm50vJlWhlFnxtLsdKxMEm7AQ84uxnfeUf
TT71Lp/kzFgwlQJBZ8DAk/j7eSjAmyj64LVwDi6etgRFBpW8wDq8ryBfjfY0Nds5spT20K6kRDJU
9qXjGN8Zpb8CphldD1gpfV+kbLJZTwDy9oMMKQtqWq4ovpuyAn2YjBvpZi5EpVxpVTfDXBOE3Q3u
+/6JJvM2WIvxhedgARvNL9wy84YzZzTSu/a6IzzJLm31JXlWkX7ZAdAlhNJV6RDTzL7wyT+qapcT
cQC6YntZMAEwxe+M5YHJIfgeXLlGSKVJ+eYzy6u0Uwzh7ZAMUi83SyazL+B009XZ/2hTxoQlH6xF
DY4vuLVd1U5PqrYpH4xCJHijvby+94H+zk4wRgPUMJhM9Qfeix+ISvfNBNg8QrceZs3VMLXgBncp
FgNIaVoNvmT8qiwT9bz4F1yk7Os66+wwF6kvLOih0TTWlfqGRPxYo4Huby+4DHX30yMKZpvpzg54
/UftFvgb0k8AOI3iT2punHTApxSykC6nQ5MSbIxAxhY9INChbqNUVgUqazqKZHYJSrN/ekQef/Up
vFqMf65jM6Am9WTCXoM1Yv2Qi7cBx4V+Ilx+/6IeXMQB7pIRsK3IrfhYLaN5VXF9PZSMdNz3Xa+P
VjeMhJgGJsJh6gX0L2Va7D1LUU6CHGrowGy3e5i77cAtLFARgNSyInyEGHq5bhhUeHcP4sdvAhnT
N/+Nntq97XZRF4pnEoPfGUBQQOPpNtlYlD+cWtHwpUYNdkUPiWG6Eg8sV5Uyncbo/sjL3uLcgfZ2
F5moppkmR29hUX5GNQ/gRSwMyvDMVZN77f1GJHN0mDwKQ+R7a9f63EQ9MTn7LCTJ1OZzDI0bmbA4
jkpnxvH3BOgXdM5P/UZkthoKh+bLnCxCuGtzhBUHOCRC90YdSe56iuT9OLlKgnkDP+CCnUx5J9xx
vGPu3uEMUC2XO/jP9Hc9ya8xfh8k0mR2d/9tMCy04kpVdqvosOOVgW8Urm4SgF8LGiyIgeYp6m7F
1fMn6M56DdYlAPRVMaliQP1M5d8KC/uShTDiY7TpZyZQcu3nLaWeu/N3lObPah4SIagBKC8xPE2n
Ad3EhGPZ4SAtVvc04nrjFy9ojPqLzaXHB3zy9DHGJOBvaAQbHYs43qv5T04NhDJEZrB+2BsVXJTi
tz6heYe/OgSj1eZ9/kM3btTdCAI79ReamFbYFXUFczzXRVlxS0a1sjj8DST4rQy4M9xypi9KgGki
EeBLKNlCFQXSRigBwft8ySyJCGRPyuxFwSnT+SyUgfo2HsMVfTndoyD+f7VlNeyg2q8rscRjNdSv
YVx2nxKE4fDIT/wWHuvvpE6jNtgSB39ME4O7SMArPNOJlerFZcBcUgBLPCy6tz17AU3tTM9qLZXH
tRRVc8wGSBqzsHBaTQ2oD9MMYLPsl2f+fZw+/NTEnbqbIme1+zvSnGIfNzBVUY2xgzFsNfcNGCMk
781/IC5BH8v5jAxORKLTyMHIccTYeZmULPt11SVHYeg9a1Id8J2oYZuUJD4nHtMJ1dQ6Vpvj4S7Z
TEPREcZd5/fKol49Sc/Pfhyr7ljQqNC6WoKqDfTPxbzngcORu4QgCGXF/qfrjpjrxQs+8oVzfg+Y
gf4aZRPXAwJvLeGTAW1kSrRYb95tz5f0Ml3LTIVRy7wmSEFHl/5p8SbiXRWbsHBEYqnvDulDsi4U
yBs1vcQqWkDcMLh+A2c6OEEQPvnCbndh79el5r4nqne3ViyIwRPBLtew3fIVS3zrOtd7CxqXWXdv
/+YS6W4n8O/u3P9A7jmYkhV2u2E3bHKaw3MXatiu32N7NTx+4YueOL6Q8ryyiCY0scwgAC5WfRlR
E/s66gAN4aZubr/DAExazsC0ro7BvLqi1Xd8ijzHN+S7WMBv2lvXXNDGvFkd27OyhabtcJ3+JRVE
nZj4VyDJdpQHG80uEM8vRhCmbiyXKs8PCBzIRWQwyxWIcMylMxmBPf5q960vWK0Vu77VxGjvz4E3
HA3UKG09uAxgIP6oStS5Z4Sp+SVfMXOf1PMmXWEMRoNxS5IiMbzufuYptXm4frl01vGUCev9Q8hV
a69RTzeyRfcQIR9AdEi9+fZDHkWxWOO3e0MdUeEaBC89oin5ea/ycZTymqRLW1SO7XJdgk45tP43
HWcnkRKIkVN5tSHFKAtk67H6pWva13xLg4csf+NvbjOFATEaljhz4XjKJ8L6y3kkKvMFyIHSZnFB
gP9amKO9dRlecB8UjGAYcOPXl6dHUuSf7zhA6ZT56befbCej1FnzlMAorbjpX91S/Di0TKAgYufD
jpjxkDtQCzADVpWZ8He32mAv9u4L148pQQvOOVFUChOQu5DtajHqv/fOKOt5paduIzOEDGvvk4iB
GlMy1d9D7hUGaQnuvQ4f160nrM7hhiqSQnhv7f8AU5PgqB72Ybi9KdmQl5P/RiZyXOiGJfqqZUBf
e0ETY6Tb7ES8X2tJ+DEy2eL1ztsWhJEf/Xn7qio3Zk0PukchplXQx06iudf0Ptk8OkHO1InCMI1D
JO9DKxV5cVbmgEfuJB84qj6/GT0UfS7qri4jpKr6FrwxhRNW97BvlvKFYQDWidCvmR6xpD4DKUwW
0/CPB6gVQgbrGfT+tr2n6LTY0e6NZQmyTXzCQVnRsd2Y+WVqyOf4Ym8WpBAoueSr5nuZIDNnrybT
3UI318tD27iK0I4yf4dIxDmA0txOJAoiJKTWEqLiPbdMMsP+1hfFR+1egL5Qf3j+UBfX/lbkGZv7
1Bkr6SZZrv/cYM2ttSARDa1SCJt3zWLD5lZR/DGgwY9vREOV14VM4W//1tOvYq++KE1JDa1KAM5g
YIvoJDSLg4NS2GHazKMvJDXez+j8qOQ7I/XwFleKWDucyqW1UdCOjC8M2Fixlf9vLwMv38zbxH+b
60YLOmB7l0V7Txi1bIG8oZgCVFg8W0KsJ/OajKAE6a30/mgM41D9yVgYkUfLNxJ8SX8h94HULpMo
nZqrMU8dQ61kLrm7TCfg6T0f3wfiTEbsqeDnBhkYRTFR8+p5ejTgahxzCxE0Ou72a6zK0jtdoTMp
BONAHLP35fdwcFDBqM8IAtCRpAvlCGmnAb4nR3UE5dhTLj6Ne6P4Bu6zChJr7iVDrw8bpxUjz1so
cEMptb7JfsO+giQIh1s8B+xqbZSFLukmFQDerjpmRfgC1GogTtHNu2QW2vyQlx2LGDm2MG91MBsW
D+VoxAXdPpLoOvQYEw2wQq9l4vzW0N2+85mLMjRcuDMXOyb0jwbxqtrTBtkICCsPOM4Re0H7IIQE
XfjkFFl2X+U6LYstJEtAWjTLGi8NBDO0it3ahtXhyBiI3NFvAdyBApt5ECaPEVj81z4F2rANL7zX
oRyiG8Yk9XTLO1P1vDa2CbLZ5IOHHoEfp399gOkEzzFB5kElg9tXRfPHCo+80QQzNo7wjOlKgdnu
EzGoWnLPRPJ3yUUawpRkVesIJLi9YB7mejvGIeMO1gjm7HfAYjYYp0OnRCkrSsCVNirRfshuunsu
x7fvgAnaeSrxaAZNXQAKybDrCc5KyJNZVLykpBMSen4cetmk8WgKemiRd6kTO/mLmJZaDRc1VnNz
K1eYECqTaEbcWbyFSSCnQLV5kkllyDVhuDau6FkDJFVjGIq8KrRG6rSudSo4xybOKZYOMLFLSIEq
zpzm/mZyvNEYWIx1+v6UCkwMFC+yxEvBzdtbDA9iV4aFom6HBLuqfcfiyv4ksW16KM0D6nx4ZWZz
XebPDX8LRW9SPAo1gz9JwFnRWv8oQjJcZbS+/b6Ws+Azl1OnB4GRvTmC3ZM7rmVjaskGDTIDMmlt
n+uSmsLmonHxoczOghPjuEITkuZcb3q5m+3aJg2wkLbRJbeC/8ZEzXh2OkBoB7EV29Ld9qixoQXy
NZKDkCIRlQMMEYhyziAV7i5f+imuGFFccGB6PZ6R/XB+ze/WDGKDvzQg9cPFTzxJTuNIMJjC8ZwZ
t62qVLpmruVErM+TDunc2BRpd3kuDkeOUa1xZG5Qew6yri06yDsesHkuGESQDzlofgKaVA9DblIX
EtosJOxeTTV30d/wAaEOEBAptu5fog/CkovfWdqPXq2DwLnbLoeGu+yLeDo8Ji+yEKYBj78j3h14
+JqQ2ZIg9Wz0nF6ez33H+uc2/POWRSqQ5QUX8qRflj5FPhZw+pntbl+hsauHoXuXgJ8k37/8Rzky
mjresq8YslGi1SotaV+cBmqEUP7zJv/AN5N3wNHFAbRyM00OeWOUgN8OPgnIV1jj8tT+zSyhqyUj
BOKCXkHNJZtxwjliIIdfnEJkVP6BGtuGTILnBEP3dLgwQ9OqN4zftPMgydrL5INCqt1RZkNzxc5o
06Tx1hsFWAZAYoTKPl2m7OKm1Hjb1rfBTU2bvbAszrdxllVv4DIG5xglWRaUu85GtXnCR0xafKPo
kcGK8IwkhZITVcEZjfdPWd0EWNWKnJOhmuWl4BkZUgebw2H4QwnvAPDSBnCBd3GfJPDW95B1fI1r
t0wV6lviUvWIpntoGXYo1RXWLjwIjYJzLu7ggQjxzi+Ox7GwPCzRhKHYiirDgnPH+yvOAjuFPCB8
D6YaxcdXuMbbaMBkNjQrD5Uyy+JtN1a0ZwhTWKR2YUC8WV6T0W9Hd8fPGmtd71yTgjCMb5y/ZZ7M
mt7b+Zvi7ZwsBeFeRQYgB6WEAm3JSSUnggo6c+em7IdXpz8jDzWHaVO5n/BqIjFqlATTXotTG2J/
/4TYCVpg5peTNPTsrZZP5UE8ml9GcYoJ4lr8kjqEPZU/AZ2GEbDEuxMLDJAfBe7xfzNRM3AOkb+C
ad30ClQfu6GZUy9DVLsWdmVJFbWSu+WCXZxBVfuzIqUOrh1/R9ASJQehKEL4W5f8tLfIg1TPHRP2
IHw3kypgiE59NVxKajfsAiVdpvDdiI19QIcEtqzLkQWUtsfbNiWtPYQwZqUOuCYN1mk73htPo+6U
P0WFlEk2N8Q/u0Cb0pAemouYVdb449YthZyidimgmmWueohYat+1O8u4UwAp8+B/KMfA1LIDfLcQ
yN4meVWHIy/zk3z8FiDe2xQmDY6HJ4xTPZJbelU4bVJMeuMqtSvfwTJjwZfulj7hMNl7wQ9mSaHu
AHhI/tiPuh4Crj3gp1AuBnG7L1WD6fvw124Kr0cQ1wGMXMq+KvadkFaZx7Nhxhc34l0jI/R+CjqD
EQRcqRUPYto2gPHXWl3S9ff2AwGrTY/C25vTnv2ThQB1nlfSW4m4N+kcWgzJ8aExtz7nrB55Px5f
g4CL4hv6qpIluM0J9ZRitZGwrFDdk6FtcWAPpbZXs4KUoLJNNoMDRzz+vu8gp0Z0dAIRFAJizzv4
J9ZCDemIi+YXIN+E0M496W0Gc+J2SuM/fa/SCGb7UZbHK8teEo4zxp8jDHGy2KEXSbzF2mKeG+5k
FgnLutN0mwXPVxcBv3+TlV5y4roetwJqZt7Ylgb6EYBYiMRtperpsmG/j3uWfzuJJ2rC0kyjbNy1
fpSPMqB77O+3e+3s6rOkWgLNkhGreuVuFR16u+SNqIGtzbsu1Oy04CX0fQ0QCL/tmD2TW29BhV7H
5QXJPW+SECdX/lYXFRkhKtGeHxmw48iWDy+FXvbU4TG1FweGkIB3cCzuB4CPuhWH7jbfnM2x/LrP
I9QkZtbbOTbpu0fMRh5EOO8Yn2LgXyZKVQ9pqdR2ppIRLm3zDdpLU+dO03qUYn4Ka+stiHxsB3DQ
fAsK/OE87/C2HoGVsKZQXBrG9lCt6VQBKSngYshwMYXLgBIsOgmHMlDxD38OBDzuZ7C2xGLXlCx9
4E7xdLv+qE79FDgWGUPzYc24guEgwJ+4J8n00A7P/xsU1P5y0k80z3H5pJIAT/E+ZlcmcIt2WuIn
yvSXnNxj66jJe3ogfJfvHlvE0hR7Hf5eXgHWzj0dk8/eExytRtEgXWZjvP1V8f+K1MUYw5E4O1pE
Ry2Lj+4hQlh+hKr3Xf9e0Rc5258jb0RsaL1+GLqhwp4r++dfPc39XLsvcvLWo4h1PAMhpsq5A4i2
3dVxWFbOExUDW6lqb9sxw/BqEDAqa5OR80usZSJwcUwSWTbjeMcPPOdlLqce6LOE5jdd0uacdglD
1M42x1T3gOet+dhB0XZmO4BfbwscVzD7dBpGXrQvJ/tKf7Yzm7XAvtGLeRK8wZQU4x3tfnEw8c93
Mu9sdbCOoWFrTyIdrMvMKEonFH/KFTU3CdpBzh+HOKSY0O29OOYU2GAWmiMprFspeyO8RQzgUhN5
zMFTcnjcPYjD+eV4UuNSHsfPCKgcKQiRHhwGW6EWLXSP7ayVVvJOcwhd8b0kjUv6/ZmCWqR5ii+k
TnGZH7Rg8rkQroi6Fi58/mJH/3/dMqAfYuduPvA/BHXTzmKKHwxMCA8Ke2SBkjUVAlqrcy7ci11Z
ldZr5oXCUqIi4SC8eDfeRTAEJqkH2LnutYlnkqnCPbtXIOlfl4TAEeGFYk2v0SU6p1zfixNDcN1Z
z6GDjE9hRFWixTdR+JfxGLfXOwG6G4fGoLU1KMRVy+zwQcJMgTVjqdLZ4cRbBnifVsI1Txl9uPpL
lp28G3lhhZcMXfKQsgfcm83cB35cmv/0LRHPOCJUJuydgpHGIgZzooVTpIjA4xFHwlTLqVzlPyTC
EMochduwvNioyBFE2mKIHQeKOcYWBXaikq8YtwiM+SiL9lboO65X1rREGbDqxd68kqgMqEGhZTuT
jHVuW3A90HwyNbzSXkC+T+LgVBr5kNQ0tajhnZn6osTy/sl3xtSrR80pbKqxQcKTsKrgeZOE/Ku8
Un3cF459spfjhF0EvkVRKi7FHxMkjZjfcCqrwoCXtFhIF3HRO89ux9PS1+9CO3mzN7lWLkKmpfJi
Chm7TNBAZMz4Wi2OQDDUf2r/1k9Mb9UrBvRLby0ZNguni/SOd0MkuiNVGJra6gOAZcvk7B+xAGSL
hBCoW9WLxc+3E0qMRN4haQRp9YWQlLBwX2QUjpq9TKcPt8APySNaRfdG+M5mNxmrnckBsNSkAvVT
tYdD5YID+2TdmqMIljqcQb9HzjLwv7yIeWn7i1EHm1WOfnoRrLb4hFazTODdqFwHz7bDKWh5qS1K
uEiV9lsOHaLgd1wHmb1ENGR0U2ItAkSPQnwGLo2SBAOtqMgBYKiqtjrtpjIv7sKpOD2915NScQdM
qqfLr7KW/RXLNxDosm8r/RtUr46v2r+EcWxt4F18H562LBu5heMbPrPFnhkGceQkk2YdT009G4H4
JSMebLm3ilom1drrXGK7fApa7xHCoRpHBPqNX56TwcrCwGlpg13Eeau3yRVYJKpOL21AhbP2b0Kj
ZszXOwGSonwAeJ8kZFNrejq1CgmC9s5IGuRFZw1B+olb7V8ZQbv4TvATAzvH6eYk+ip+/pXSY5Za
ELGslu0jP3KeF0oRTQw8XgUjdAmTP3u0CArNrIJXcwDL8hjDrsIod+VIkPBm9KLhrB0grxsDOH94
wCOENXSAzRFFQCiis3yz5oaBwrQts7qScp5RXmCit/jr989/5k8rGNX0zZ2WEn98/q7Fbjdsx9xZ
r3J8ds2sSl+tgkOtiXOY7Kko9bWzZpPupFtu2aMebPKF0TFnv10B6yaHgbz9EwJsArZv5aFJs5xH
UsRGcNLYg2OBAfK4Qg7Ax4ZH0z6YQhzSuQrzXk5mPemL16AB8s7F98GkRE96LT28JtCfr15DPt9E
Je62AyHpNErDs3DcAwrmYoC1/IFOgH/FhCpJbN2fUBxJBiH9bCCEjnHE3rZBIpQhhRsSt2R1Qo9O
yZx0oN0Q/L8FLyiAImmYAMD/vykLoCIjKc7wwYRMtWPv8vUElQjrvdji0/djWl35GbSzXMZseRMt
u4Du316A2gw7lumqgLMmqnx01at73sHoITjrrmPEpqSipaXKzJU4mLdFd47Q1BEU94/+CB5+ZO97
ynU32dCaEGGqhwJq51Rxc2En3gz/nFkG861NWYD58cg7iyW2SgihBQpvjRQsyc11kgbTdhuMTbEm
/28rUy//FV8CePoIR2HGYlu4eH30N18PsHCjFwX2MAkITIEUxVgmw7CbTOEhFf/UPONqkAvqxKqi
zJDcj5O3WmvapUhXhQUGUyR1UWOHvepQG/44wBjkyXLHcSsEkYaPtqSIEH3bZ4GqSGh1s7TceR6q
tnjuAgTPVFjc6dBrMRUmUgukmwKiHl1ZWq621XDGG4/jb3iUwcwK6yBe4iUc8wtcicGkKu7mAhum
CkgSBqZ2EKSwQUEDDOkeTbVpd6jkvqUtzDgn1e+irimB4gC8jePu5kj+35XgTyMtksioekZTyoe6
d5Culjlnce1as9Pc7tfFY+t3MoXa4YCgHAx9UnTeu25zSavbhrcITA6mFgUSQgobT28Wntli2faD
lspne12mMcvutrYWRHPljXYVGXZf6d64ap0aimOhwi8k34KpA4xscIgVbraOyXdyiUwITyb71tQt
nKMWweCRSVRfLARZLxXbEA/KxNcJo3+/TDHD4yFq7MeFPHtAUGRUTSFlGONkbPJi5BTOKq/+VIP9
rygOI6CG+BBWNMpZkdJL7b9AoYl7Tb0Vk8kF0b5gKXxl4p4JR6hCxhyiX64MpIRZKs0vOG+uAYnp
Y7adNfJOh+ilsXJlWuGv9L2Xu3AtgN9BnAT/SzOoW50jVa94n+HMVM2PoWqccXPvCCBFpGZjGost
Pwrw8zLnDuWRdOJUs7modAW/rTpPeTmOItiYI+8pcfyjed2xHJQtuATrL60smIsrrzeWzL7QuNXs
j22K7EKeizYruBhRcTiTJ+sQzqv5HPZLSL3RX3ohoJ0X/VNgVENE2cIRZkFen5pS9W1+euLBcU9L
pFkNxiYaREV0Astc3fw0Q33lImhsu7J6xiQeyQecke6YAa0gqB/E0229JREwQPYLanr1vjIzeutT
3EpcCCWxwTQo3OZQOq21wBaPs00zbtXI0ZFf04Fx0IvEc5FyzOTbH3NarXyX1wXrEfzq+yIaauOA
TK7F6J1VfOwExnvyEiUOuKSVJu7ha5RhIK0G+ArV7/anpPAKJVr3rm3VUFcf9WPgBcL5H6zzoEco
t1pDzVAj7LMsBIs3zOZ0WZj0UyU2knhBxZj0H8f/lv6ET0TOl0DoM3yS9TU7PoPktbPmGZotLtJz
LpHD43b64Qg2F6gHKwmp0jF3myjTkTt2abBeg/EiGVjCdU7/m+CdC18drTME+t/zKpHlH6dB81tQ
C3egFvV056Bsmrv2M+5dI5Lfx+UtXDd0AnBhm82R9D5onL+h024Kmz/5JQxjGzn1qOfemdtpmkK5
4+y0HrJLS9q94QwInolPiGK29pRbRXoH9EiEmRfC8qaHUyv9sHw9aZvhtOoLBAFrv93jyXdvPtZV
PitFud+U37EOxX0Grp/JUt2j/S4ieCQlZ8UHfMPcxGPDJkHeUYljR3zi+zwZib+w6C19/HyEfrhJ
VzI/x5oWuDABJGmx7N+mNIBsqIy8c48pVawluzeJpsjPebDFbQ8VIRR7bZTeokThwyVXe5JtSGgg
X/7LUH03Qe+Y8kDzGzqfj45amVkwShCGUbEZ4VBk/UaU+wGSpt78oPjkZF94oFiN1Zut/AxzY4UQ
k423H8Zq6ap77mac8snIJi1nFCy8Y70HegHzkBEPqDvqTvMFONtqchftgr02W9ZhaZnSgMaL8nLU
YhXvkgh+7UjFHq3g7/A1oSFv91TJirPmhsqAaMI/bV4u6UdiA0kIFdYa+9DQ7haU7WmL5FNQadPp
5tLBoVWDqtf/wWLlLbSAzQEeMerOgWZXA5ETK2MCFUzpvyrB5USHoOwi8Oj0nmzaLzNIwqdCRjB6
zgUbHa+jOj85ucWcOnpUMKOC9Nn0OVg1dDDbUHdhZOoHwZ7sWqIcNJN4M3KDijt1bJXv8UtpWa79
lLrmBZF4MThRMjdQYRqzMIaINgTYLFyyvk6S+g8wwVKZ0ovhyOm9sFErGgYtGVu+n7397iCxf82F
U6yH675555eNlAaKIe/iAEVO2Wwuy3/h4jCj0tQPY9+SJfbDrCm+auqxkl75sS/GCX1/ywYhv0+n
FcWuv2LTXo+MWk4r5j0Z+IKFtjMMclm/U9EL2V24iTnFlqr2iKoziqO9ANdgq/KKEfVMROf77Lb7
whlquG47wfnflSNVYQ0zRqgpsbTgCk8O3AHn00VjAKb16qfGMlGdjMn5CrVVxWNpnSvbcteRPTXG
WGvWZlV4wt14uYRPuYtq4iW8SijZ0YT3p5SC9iqL+buMeNCc5YzwK10elvq+LpdARKdF6Pu1iWQt
13qASpgrnVR02xwwPa3BK+NRMQd9Cq/0cPOBtEBlkJpKYlHMVzBPwpz4xMsO7zADI4lfsbRBuYx+
sltgZackJ6Vd7f8OCXhJGuEoBMnmMfipSrurynBqyawFRmtsDS3LKLhoGLqqR7ZUYikBRVAU9Lba
nJDGD7z8+XbKXNiEipskom4hcQACL5gcaq8QbAfA+eQJnz+Z98IG750hjSsIJKe8Z/zWYj89s7Dj
pAeB2VawTcxYSpVKd2mrrT63XJHPT82QqudXoCUvDRIOfAG7o9jvr7ISBx/Z2fsL8pMyyg/siL/s
APNA5W0a1yaP58+Jrnfg/OaS+9YHcC3/KEgfEzSIhU3Ij5JePW/CaDxw9oqndWQ/LBuPcIgGA3gy
0/SLKWhETE3z3Ix3B6N6QKAcG0cXV3Zjn+dGtazTOseR9OSo4Tibi7AKKDEW9M1IiX9hNvlwKH5x
GJm/gcpmKUABbeCZXgf0ojrF0M/ZyPmDVPekSCdmkhRBko3RPm9IaFH5p14y5r1pE91DK/gTuAD0
HKTSmTPVU49aP9EYHC1Yz1pz+pEak55EUZsZQ5K90d9whQn8pT9BOgOPBRmM0215lynkMH9QdR9V
XBbXWuCu3lqF8v388az+8C1WLFfQEyNqB1t7+wy3SUmuPzzcVpUPWxVwWZVvj4Vob0bQk0LYZfel
OmKfiIUNJ2w+gXMLpyzNRkQsgBqr3ESLU7oIqOmYm8yUp9PhKNe3M8ANXSFV+RmlIEsIPDFxcjRX
klVKNYO4SvmcREuDVNWLam7AexxpF3bYwRhsLyd3l3AI2nIUyx67MJCpgoEn0DlhU2EQcY/sq3vJ
JZE59Tg3AQiXm9HurQ4uaz8xtdq4qBODohDIlNl3WQKvDBO9YWNjix7YLw8LZqy/VwSC6sV3S3rA
H3XzJknagDCNSoMOkzb3NvTnwlHtJT3HNq1Xu5m6i9qzA58G6enHGkKtRZaSBOXVJfVgYsYkFBWo
7IFBP6PmJZJFD7qrc7BO9kkWnf7UL+UnRg0EPkAThkfvlStSjWXNxEFYvN1uzABVCx7s8ql5rnPg
Zuwtdf4aQDeUxwIDJxok61b/Sup1cv90AtzICDfz9ePSBT1YmrA3QkPqvi/ymJ1LjRP4poEl/gBL
JRTH8Tc437ZZnr6CnhywBPSBke75o7W+1TiRqkgrX2eBZg2NlpNTkypXbJig5lScykwA01IrgI1u
hA0u5p4L8LRgtODFoHK2yxUFABDsopS5dEuP8XHT4UODmb/EosAvOSOdYljh7ydxxR6PEwB6wE2S
ABJQtT9BKfh/Gw8OqtdM3RLZ7cVAaEp/Q3VH2SC0po6QP/emZCdhf8Eg4wMEdB959M5pV8IqADOE
uKZYYrhCX8DV8HDUjRCg82y9hym1Mtj3TDxSh0prpfgAxnCpdkuiurj5Fm4XqGu5I5sjjVuVKOSq
6WvIoZdzgZ2HmEiJNBsIXGYzf1A/K9ju/FePHpLrybH4t62PwgjWUbbdZYCEs38BglCzmNZ6LOFS
MQTs/DHSvUEgOVEkXKEwe1NI6G0xozO5ekTRb6lpf60BKN2Ja51+hiuUyZ6WdMI2wmpba20sQvmK
i/YAwdYtCHfpBAWkiVF80vA91ohuevNzVrn4WzIMj3L+jM+zqZpWnRB2ntWfjyMUbQQ4t4KB+viN
XYlWlfD9719yuK7wy0/wBHE/nw/BB5hzmtvDV1W2NuT/XIayNkQAkKZUokMHWgqzuxCNTa1Da66z
unHg1m2aCQXvVrV4/5HseKnrK9iYbs3WmyQM8LnACOi0c5oL2JNVYXAnXxdt8tOVZewvbwubpDjW
EqM7TJhzCGgyqJ7KPonH3vnkNgxViaHJbFo0UvkNNz4CbgCHoCuezKEmWAhScGcf4L0id96u2b9V
RchCc3RbJY6TChiIOKMTFPH9n/TWw04UXjyiyduGS2AGv4Gb7KTzp5bghKyTZFcC5eUDotRAJ4fp
buabDPO5eJ5ihwVe3mvEB8j/JzOPZHiv06bV2oMoBejNVXouWTl4o1Jftz9IEdBDwa170zJcWmsf
t9ev/WhfBVGvs8SOf5atQ0tbq2q1POHB2vRkdLWMBUlFydnv1sRuOl1VLplfBOxPQnQNcHievRNX
lqc4g8RvHjvblZXiOt/r4BaFnHRsCR9rdOHoL+cNa+2ZrDerS1cDhRfL5S9poyvULgjVVuj+ZbTu
kpDjI4IKkDVHbMKUqNCL3KcHi3kTuCZjircbKH3U/bo1n6yS/Z8/AGS5SGEEAySm0Na255qRTiAj
fjLlJ6Pn6thEnO8rJkHEPwaDBZqOClvLVeNTO1C/OfWpQFYFFYJgjtTJwHEKj+FBqiTjEAI7fL+h
43gLJpWV0pmhZ4rzVLD8ns+P2Qzojl0nDvBSlzSjPScCHAzzv37r1t4ovzQRAuQXhT3UrXXVj5y0
bDO3x9R9cUyy5H0SdxzucsB9QgNAhF1iuXXYCpiXzYeGdsO4We9S8Hskkc8r4aUvnugmnUjCvY3q
8VqlbWhWmszntCcVZ1D1QxTUA4w67tI6Ag7Wh08W/J00cxcvAl6qwvuG6RVKBFwqUAN0fWAViseQ
fRBkXUausB098l1vq8fWuyEqtqPCnxQLZjIr+hps2JDgM7tabpI5Hn8DNjxKzHEvc0HvLLdGYyJU
8bO2DXlRrIXnEhD4UELbmOieohH20xBdbn3Gu25J3blw4t4/vPj95vvtIgaHvY1RQrRC1FKPEpiC
lSFV46RzsvVjbQYwy1YTHUFGBXM0hdTsemYG+NZlAGDhcF846gEfyLeYJm6xmumENoTW2NjAJ2Ay
UxJCx0aQrulKoVuNRdZEmlNVwkkctYmj5IYUm8W3aUPc/M015AOXGeyUgFKtMg83iHSd4Qlrky6o
Q7Pa0wPZOe283XucNGp8Qaz8vB247PQ6BqRrsMOrkTvfm+VNAA+orYwQRJjTP8SUuhL7/CPCjmk8
pPGcPCLJWUSlGBc2LUb6u5BZJ968C4hAVFr7j3TBCj0pURzpr/V8TKsNxDIJXR5YfoJgbrxCApdn
5UfBXUgTneaDMwW59po5OasisOqQjgSqQuDnYMVyDTogFlk2Xy9mp+DhZQQ/3cLT0H8pHNXjcbZN
qDtqKncJfSArHvkJxx01IvomnoLXXTj4NSExVf988aG/uzkdNo4j9REwRzrE1m5YpkZDwv2ZGw+2
h0KiSkZAYYVvf+OgWKeVAWEyl0Ns0fNE7sJObid+K66IQ8ZFDyrWE0invUAgdIPb5+486WDXHxxJ
+EydvVEwJggCxNRr0kFRoke7gvIbMzPW57Gu7J+nknpTj64OqyguFeKmSawCL2iZrtQ1N4iTTM8z
+dtyFUQC0iLBNHtwKC3k3YR4rMxeiCVm6fJ1sI08ees+6sMdhIa4hPB1OcBkUZi3TF376+1MVoeq
J9kGk5fr7pzRkComo/Q1TaKR687ugK7gWB80H036fCUxRj1xp6cyOQYufPyoLiGo6PQOpgCSI26F
78BB/HMRkrpmou5Auz1w3/hz2WDAPlcq4+evCq7gvCrB+pgUHMFiFvteliBGWcpk+QE8mAKbAELc
sklRo9cim/K162EG4X486Rxk3sk75DBeS7r1e3o1ZxYDi8rRFhN8hEMuHjo9gwmn0H4F6HGzyelq
tf3omfmzjgOnAykTqZ4CO6pM9qTopIJNDFY8zaPvkd9Sh7+ITdc1d3IYy6izE0/ZZeRcirJ6CoqN
z9BAiEQkLh1LRkA7+51zOYvzXQNCRlc884y4iAsoX45/BfdZS5gg6/yjPZQAZc2EjUTjONPQSaxj
+P60IrBeQVfPw6UMzfoczpbsKyKNjXPq8ve8mvSHGksjzsoE9/omFzOBtnP4CFoMXX5h5ENyduCX
JB5SRPwuDDZODgK1gGcTr53VTqR7pHEYLUYpcqN0BhSqMjEby5b2XS73lytYUFrHfyYjsN7fKbE8
Efnpw3U1WQKXyyaU+c1pi7tkIXDdzSlYe/1edDF3Or9HuoMIgt2GHH4xQkDFXtARBzpuXuZovpi4
BU3nLkkG7qu4U96vdhTcYVwSHM6m+YDNtFt9hK5c8J1/EdUrVgpdM01+Ma34NZD1lTgG4CzKsbtf
NXkCaTksFeEeuckP+vxtbPHjEM+i5Aqx8L2qo0LelZY7YkKQ5+wXn7LZy2eNBO0tZ8gHoBJxT4v4
DSOWvC7CGOLD7Zd7f3aLtzrF6sNixO0AmEjFjOJ27rEInj+SFMMKl9taj7qJG5mA/8RoV6MJn03R
mGbtapVKhDzfGEBvJmdZ5+peR6rp/a4oYQNADJNtrnRKjCh6RgE2JpRZ1Kuln1gi0K7NekkoBFoJ
9tXxjjpLhmp60/Nmz1b1PjtCUVI01EbfO2B5kEYxhqO65USJOp/GBN/7pk4/W01vUXa4olGHGVAF
KBqo0bm5FvtaIeIQuulxlHxE3FnaPmFEHNciuRgWS/tCYF4gRu28dA0+a2OQeu9nQPMmcIupD8dG
x7o9dRYKaABffw1T7hOUH5N4D7OUnyAfJvOVwocWtplqvO/AAjzwwZ/hMtLjPGUkGWBK6xwYYgvu
bpXi7VsNakbHTdEhNgfxlnyvAl0N1o+ichX6eLS/vPHM3jtUk1vcnT0Ln7mVPkNO4UIw2MUKoXuC
40KoJgBsGpr/DNB2HYGcjvv9Lb36ZS5nOMbyIVLtxr57U6TCqibRpaO2lNRhmFvkDAzeTLS23gYm
u2qZXs+5mW8iIInrWBAVuvfJNK86JeAndEXcvKLarHTqXsyTcaCw/YgTQFDjdJPqQTJ3j3syzAHK
UPi/rzJU8JbUNAKUyMonZk7ddspfd9QYhNc/uGSnQWk1Dt2a3bcGZ4ROV+zUQfMs0/xnxiu1JV84
1wj2wACPJd1vIQ3NeKjTK3w3i/ug1wAEkIULHv24M47WEr9PPy9rAT8UzULJYrqpbU2yEiystpk5
s/WA/NTIIKJkDc4SsnOEEbToQ62Jy1BR4+N2flNFyl8xBAnGA74Z4BjF9xaDsVdVBX1LVltgvWb4
z3iFIQFwUAt9tv3InajLZ82J9hou0koOPE4GUOaTY4UM2/FXbC0eGpatuG8RuiYfEn4zndsUxIPO
WNWMDly3FnUFeZvzoMk66MoOJ8cruhwN1JzFVX9vrlIvmRNp28KiShRUCt0biL144I5EK9vzLVe0
frFAvPzsKJ0frNjIe2+ULemxj8VrCaH+FyqBaY7ombl2tfSl8KS6WKfrll5afZs2c6b6SXDq46UK
WlckE7+60DZAkhm6/vHiY7svODoR/+3AcJltt7lkts2rlgDldocgEYX/DDnbQiDlgc39+ZRpIXgi
tpc5Xqy6EBwu6EY7jp8xMhkIJGPaY2zcczzeKCQrnmxBfIMRuizpA5toIsihOPZBw3uqgdoL/wly
KetHA7qO7+EJFG4SEQBPUwuqeeO/SzjhhRpnPTnn5uTyfNmK9A/VyjGH/NPQSiEOOUkbcUbqFN7u
RKxFrTxMsga+0Xq9N/6xe6X6qfKQHL8a5x4bJ7s7qt9c4k4qUP+i4RbkHZNO3O7j1/6005VDlqFU
XiyJ7crjnFba4RLGPv/+CdBtO9l3LIszoF2dORvhJDP2KcjKbDq0EZKTjM8jNcuFiZB5baMaWjB7
CEVFaqFrhjoTyUPh6MPHPbndtECDcOXia/jegjD1LfyQXlTDspmzWaWNrPJjS6Ew9xtgBYbsTk4N
LVxUqB2HD/LFkE/DNfRnE0Wk0JcF/ryNFU+MEyRViuNnFQixxKhir2E1X+XFgSQta/jKxu6ACTxj
uiqMPZX1DIo/nAAO1tKqpnm8/rVKD0TSiboAz23f2sTRc8EUtNKVSMxNekPCGDawkYBEm9STQwod
gsH3cVFmi7ypzYDSLVJBb07awvYkS3r4XCFnvV7C70Fu47+IwiDjyC6NJ8cZ8Kug2T4o0nexHz2G
IEh9KhkSvwIJFx2HxUevKKUWiM5TpecwkLbKGN4L9ckT0h78wJbmbm60EG4em13ACtwMqipKydd6
UFCtn2ZjPYcdLBEgjd8X3P6oohiuZItgp8wRGHgoZG1PhxxsYdyWIiZalz3hDgOrXfCNPy8aH477
i15693GQYKYtSvS0Nlfqb3NwSCWe0HPJ83FVcj0vkkJv7+UAjBy6QaLwqxW6SGQgHtI60ANZU92M
b+jIIbd1QNV6W9ME4ynaf9BEnfv7FbQxReeSPnnYUWm/42N91pNNgbUw13Ufs7KIO30E3Kslswqj
hIS00b1dd6zslG7bLLjYohc/zptv6bKQpzWWqLuWKDxkDejvtKM4qrMmvIZBmJuvzDzKjByu6cd6
tml9QNATdFLS7vPaPntVRDxIxUlEd7UDy6Kn62/Pl1CEGS/1W4lkp6jFJS3b7IGJGbG63wV7rt8a
p+lFDbHd4fGrLzIZv01BCXPzBxGfvCx5ATWIOD6guY2DeaCoeEqxFSIu8F2ip6kBRSZ3wO0fgCcY
TID4SXtzqAFgYuB0URdc9ZLjZLE98Q5Xl3F2Xd9kBc7OsOJnpFX9P9uDqDhYE4Ms/PdZ8M+aud6K
tQaoBJ2F8yZFSx1kWtXm3ou/Qx7hpRFnHnk9jehOPINrw27YGByw3pC0hq5pCVAfr4mMI2PtA8Y/
VCKkrvOZRVWOCh/8Plb2I7zH9gWI1ycChcNjCCa1ZjnpRya/oDRPo0INAeXF5sJVOgZLHsxWy3BM
e9RMCuf6R5VCwHVAK2kYkdIWYNsV5ew7YdzXv3u+6rSRcv6fiWFxlRk9cxo7zNlfqCwJS4lHhAkE
OIUQCbIXv14yMeRyIjiCsU0Y54KMBy/orran8gf/sqiYaVuEE9siIZFWV1iysbeOU7QlayWizhro
0Ny7Ga4sAVu6WQwEqTWgV1TZ7q/hhF9AhYCart8LBNlP58IYOyENOJ28DbR2ZDL4E+yTuHd3kYa+
Qlk3eX7vkYEmTAfVAVE/4/L8avJ97+wQJV33laPEqXMMmhL6vw0jZOSC/sAqD4MtPOM2AymO91Ju
sihRh2l+HvzGUC0ILdiizXL3L3YjmacBcD6A2qNKlpjcvWmhp7mEGpH9rcA5VrqDCeRYH/FIduGt
xKBl2EIBSCx4x8U0Z6VW8OLdjAcNxmmhWEGGf6O/0E2oezGa1ZgtntFkoYnDmpocDAHuZOQGEuFM
8cEd11xXAaD1cQZ4hIwKf6RoFi+rhTN9d1d43emmXNePaCc7QK4fqJEB6VL752YaMtQEXfksEceH
Q2i27ggcaYWVqBEIItkskhtRDQeu7Q8ZC+epU6kqUkL5MZL8D6cZKRJMydIxI/Ga9BTlt/eDrqlY
oxcCsPYNQlLJ7Dvb4eT/rchet2cM5Bep44kTSSuaeFoPGF35rZZSgKcsgLFLF6rddrr0lH6q2Opf
r7/A8kj11j0Fx5IFNrtrhA/+qXwEyMk3QrCGnjr4KZ+Ultzy4keR6JRlNYR0J83vJgwiWt+pWR0w
TYMRvLMcuGVJHESpNFpmUIjp1TLLmgt7cm4ZSf3jVZVFD9VUq2bt06pSzYZe3M1azCf7YM/C80qZ
1yb02RXSzWxpACuNdlfrGspAC5kb6NJNYDhL+m4Lr5FZjIkm6azqfIn1z87+tNWysrlFiQCkY5UI
WMXR9VKk8Z1cl3UXfHxphrC+og2dzfSL9EB3sMW++dpj71voCemKuDmbSlo8wGQoi8QqnGdOPf0q
XP8j2rsinrFx49bkG8SuBPVdlAXxSibkjOEkfzjpM1Vvx/7saPl1c4nr0JXc+D+6B1g57fh35Qnj
v/ONgTnxlvuRy4E9kyUlCmEsqR3L37ft1oyplbN3mZ7ca3ectaiMfzCCGNjbY4YkabdtMQkm4FKc
xymA5mgA4AXpjHbfvMebLLbvd1r+XDpUownZkcqkyzGeGYp0k+m7jb3Qgfy3xHF2lSZ1WpfZMfyC
2LOgc7RcxlteNcq+BxkHKJcx3jAzqFRnzaW3YXdU+QoHkeCs5bgBfrbAXnN13RyuqRF0ug2Ys4zD
q5aWv5XFosgVqRRoVHQwogxC/amh+Pvmas5qL6gxGn9Jaj0aaWs1yV4PtgwV4dzAIxl7+GW7lgJX
EOumWUKWmCO1N3teEPW1o6FQXnWNJtkab2Ac53jYdec4QBscmTf5tX2ytFQPN6FcbsQFmEcZclXV
3ZRR9JKjenGzYIs1wQOG2cCypyocld1/iz37mVFG+DoNHLWeQieX/CUrTmE/dxSPFrUGJGPTmNeE
XrMldD/GRBTR8tULwVVNPu42rJjFfpHT+swIUghSbhqNskpYc/BlkachXoho+MGEOQ3YjQZVGlNg
/Fy43jv5A2wJBJ6RVeQ0K67caOlwVDvtodMmFSF17uXk166CjNsiqLA5wI5QVUmL7npMImv2fD/S
/IX44/yPPK+O+iGe+u5pFyHHTNhs1Ku9Hvf3WFDbmUwXzHcqoVUReG6mC8ZQp/1Le9B2RWZ83JaS
4rP47aQ7f47DVYOJhux4o2LolydrokD/eZNBF6KnOR1TjFiIrZVuDT/UIlEXrBSt0ChRh9WVncmX
JRKjOelUNBSVy5CKhECuap3sUIu0vWSiVw0V2AlTtg273mW2oGy6GFGfwRrKR03AFaT5S0vVsm6l
+BFI+czLiJlsvosP3nEl0byFZj0r58YxF6lEjBPz6GhcAglZx5tw4Ov9qUM0ZXo+YdgBSRu6wvQJ
HhnAwXan45CSbPkJzFEHUeL7QZQA7fPcw/VMT1REBOJvzu54qRV42OwbGEEgvc64l2jVYus4zSpH
bS0nZcZYuX9Tbr14DkwC0/yEEnYgqCTsBwvikIqFBlbt3gWe7NJk7PPjGUtG5UVfQrqIpbqT/CVy
bFeEv9yExJduIxeJPSlMWfTxUXwk4PGLpibN7ND450J7VUeFhpN/CnJi7zaKnpoL3hgG6K4ySIIe
JPTJUdbKgoso4CHdCLOXBd9UoQ+iZUhgsBKeouDgwFWy04H6PBrRI4MF+nQ2NLh5OCFkxm5EoLrX
mTBCrG5Abd2M1LeDlHb2jEpHPS8PklMryOcKv2C9Nk6q1eV/57TsD/EoM3nGJ6taavX7SS1GCawD
t2nSA8+LB3mMQYzaQlHrQwGXOzb4v5XqfyqN59NTDglf01XFTll5OP4J8znSxt29mSw0S+YkPdDV
EljQCHN8V+8g/x+TZ1F+zbZohU0dv2ZVglO/2d0fhENujKvR4AWqfgaxyGIZimxGrOD3GJxzGqxA
+ES5au/JrYFR2FoCCpUEBCPCqp/3wtZpFSOLYwPxPhPrrcvfxs5sgI5eEw74uzBTMLuK8a7n87Xx
P7TQH7OcfDigLd3wuHIblPY5ih/jv1gFI9TUN5vuwAmgNt0aBmcs7baT7CrS9VSmxi2hIP5kW7oN
8Cup+6mGlZCGA8Bt2AHm5qFgn/SFQi3zRmG11gsHQ/WSTC2cVR1MS+JHLs5ppNvQaoXzyaIVEUfv
cFUxC6OMIanvUr1NOjZ4FK+piaUOuo4/PL6zdJzkUAP0QWvFLIKrlJVdTDKuNt2bJ7ZESaZR1+yC
LQYZircds9nNzorMm4+NEVFC4901sj5giwS+uAVAKxuc/O2ZLB9lmRHwWBNMhzmZQfw280ZmzVeM
m/KAC5MSvuTm21PJ7hH7nuoL+aSXlj0oQ0i2b07tKEgiv7ezCAKeIxetPVtAUxc2YrQ4ERT5GmpJ
hnMdFvhTYBK+jN3F0eALogCJeVUzvFhFWtyQp7GMXHzyGXaMqcuWL8/s0D/ab7utPbxvgkKK7iXc
lAqwRGU1jP58b1hLzfhzU8RfxNtY7KLpPhKC8AbjeJ1h42yziej1e4YWeXdtEw2IaCyT2SYoP0JY
lo5IY5ljob8lHUHXog0vxeW2+ZMCL53vkewaDw5sIOl6UyzT+wuGqNo6R02D7R3rYHi0y8o/HaJv
UcQH/8J9gQud+VtpxMYP9DPNxl1eT/MWHFt/5H5CSs6DwtPQmJoYBW+zKGJIQYXhDKlF9BKwnXib
NVZ2nMl4Bhvu5WMgwvRyEf8NjlgzjhgU2u++KbPRl/cswk1MTttrhhSv89RQseGTDfh8soJ3tkWL
P0DTW+ZifYQ6XaTeku3x1kd4WO6NY3K2Hy9FGv6xB2lYaAsN2GkOLIN301BOhx18NeWO8WuhLZE6
YGXU1Kh/xzUMt9rUok5sghZpnQSuX/BddWyGIcbgHld24Bz4cy+uP3v5rkM+AiRdV0667x/nMi3w
xjFepnhcHJ4G7NElwOGshhVXIpmL/uV1BDP3PXMPHvxNxLFmKDOMKKKCEGPHP8ihckdasyXoOEOS
Kr5DM9lV4arYkVQ2KjOP77b24BdB4X+xsGfmivL2LS234U1MXR45jDi+Xo7qsdweeU6YWZNKnvaa
Xixz+2iDGOOtY2OPEMuKYzT+Ql3l+pp5TNoVhzORTsj+MJqCm+wo9yObB9CpJsFmagKCelFd4MUW
omUz6c1+ppkcTaTjyTo73TlBtqjnE5OeRaJTrpvpA5Wo3FtjQJt/BCDAx+RfwFAEB2qLfyToDluJ
wpXoFUOLTJFf1hvjY/K5aluZQNpX3/xxsu5GDhS/CZuYLzjv+OWmvp7sZJ46j3rXSTUougACgzug
1YFmzi8EFJAE1DiSMkfcekEL9EE9XQ0Sufmq+2E7WilLUVvHIOWudyU7hoWoxF0SzNTBNkBS4UrC
GsNagbNusmIFeSrLL2J9KGd6UXCfUbbnH0885UMghMn579TnUsiX77HQgf+sBKtDAG83kQ3jToK7
+G6p503b+mMBMpK6HJamZiZ6f5Jyf5H9vYqrRtRwtpYDs16FK3fTqICn3ZOWxN4D+zPwKJHkLJvL
5cZCMDXfHPOMSQFe0HatD3v0D4EsIluPbHscVw9RTqzHK3NWD7hAv09ilsHDKbB7/HOpbmUrCrXx
ZSVsHAwEDaCsPsKozsxS3DkRDWNVVN/JOuZvPjD2W21JbdOnkqK0NdppiPTX882bkn0M5SyjhmAh
WpELgHEiAs35HaLWgBJMxfQU6ytfDMmVzPoHMwZaSHKIL2jVY4eHrEuvUHuwlY8IuvPFHh/NYIJy
GmHvPvlvvu51RJyFEWYrywp5SbULu5wC6nkJ72bOS+B0MM4K07RXubk1QPVy8QSQTdRAOXczP1qx
AphtsWS+HJlXyVKrx7t3fmFhQt5iFcB+d19wp7+V30xFBRfQVjqDzNnfttyF3Z8vd8q8B0V8pYWu
U4SVGYHv0FWf5rA1K7pFxMDsyZzffBtIN2wF6rlSF9H0XeDukw4yIBOjGBEDrdbLImaLruKm4Cz+
RG+37d90R7qI3JMzHH2YjxfCuOq76kxy1EMyWdLVhZfJGWvJ2mqBh4rU7Mfj6r1q1t36VCBn7xXl
bUjdlCwR/3m1r/iTR1va0FNAxCWSwAK7QxEKLLXWOX308SRXf/JwINk5wvtdTfrbDLuVGynfshK3
VmELdtZVFOOHi6hGtS+blNJQUMiFdP9OLSlX526rXpEqxMZ3mImfiHcBozAG1SfB/8935CyPb68t
Ip82Myx6a53DenDgQNT1eXEQBBttnfPaGS10N2VmM8pCWzs82dnVtVrGuSuwYu56+ZBVMyRDmRz5
sGSRVsReK7DtwY0H74iFmg8+QIsmeL5iDf/0v2SPiuofAsXtWzlX/XkgD8hDsVAES0cVZ8c9YWV7
SoAru+cZHTqvc0AWi8+vHkCGkChjpPgyYanlyJZM3qL+CLQkzf9y5wZSS3TShLanH3RVtW0dTMRv
TcqK/EVWwqGaXAYX810E/kvEIJ3WItkUQ/tIAf4lVzsueMZxHXeVSVgFd4aDMZa978MbajftYDoz
8Z4oi70w8UnIOyv0DWdGU6FcKro9Qiv9R+a/TqchE5pbL38x4WVfM/an1cBxajra7K/XdtMh2wlc
OG+7I8qM8HhMPrdJOvfvqVqCIiyS6/LmwhQFrOQRORrfgDUxvt43NdLrTY8z5Pdl5hsAMUtlFW3O
kVguytWttUni9ClkST/7P2cN3p52v7Q928ZEUa7b5aQqw433gCsKW7MEnaatT2pNzdbjakB1Z0WI
Xw3MTBFZs8YOI+y9l3/I8/jU1sn4XcMF5x5n6F4g4TuAq/xvbbUKoGWWbibozKGT0NPtTTTMT090
5BsiPEWCuOWH2/eeHcpTE2JbiCCvu8zfS0cmhQUYN4x9FP5DDw78RfI9qCQg1aib5PSHGhGHR5Xe
rC9B1hma2lctfmuP5F7AHUIic62nTvprZC7IocZtbS9ydMhnnUjzP0w4ctNGBix/q8kVZ5RWqiHv
j7mES71t+62FFdRe/wlED9XxjzD9a2ITl2AbSfYmI9FeLR/M9zZDonXXxxFk5MkEllQFJei/sRpG
JQanSQjJDFYsx4/WXPJKlwSusqOyBjb+9jU2OjMHz1qQkNwrgPrMAbGu4DcvlzP3tPhkdrXVoeEp
cdNTVTdD/gpIb21vJd/xmx7GSBca8Nt6yX5ca4F32ZaPhMkGH1J3iqUE4E2IsK0eOsH1K7vcuGmh
BrGaioZa1rdrxPAyl/oSACtOG0z+zMVDxtas6q1RwyKfolGbtTAa21+Iybsc0FCar+w8DBkZBtxS
Ed+cU0zLdZDLblKiONLarlGBVUp/hAATQAQxj9Ak9rBOg2zto3UGhEli4WnPO+UR2EtCscZJJNPm
/DgWxwVxea9tTSWccx3y5rA6MVnmSzRkpmNkHxbRTCFkh75NYpAkdQ/sLPwPj57Ea3MwNZmUFvI1
emRdseAbPvfFqD0Vf/3kU5kNmKmx/66uNDl0xz7Lau7uL39obMUrDHyqelZZw0rdY1HRKRtHhY/j
r7p+lJV76pPkZaFTVZzXyB7s5cHvH3I0bREbkfXuFoeoClZGHmAN7nojdgrDiDiyxtZbDj6c6GmZ
ztA2kK1VD7tdNLBZdnr1VbuOd/FnhwqZ17HZYF4vW+OsXR6XsOp+SbTA5eb1FKImKdA7vOxD2Eze
cejQKTUSR6ft8a8dHRyDOORnEUThRI7Hx04KJl0QMtS4p3DhBTgRP0hLCSG5eTejQ7gwVMp95Z9x
qbTkS91Cr/Uh5PCUYGwZ5kfxHUd8mOSEe/pcQkXx0t0yVxj7AKW7TwkQXkmq/vXWO7hSpwBlFp07
AKuFLGv/P5z1DH9bSzBb5HY8bUN7E07qRc4QG8rFOV6kT6pQHRljA/hwy3tfk3KVx5LWG+QKZVVa
XSwYPjoseuxG7WU1bcNXKMUlTumiX4GE3AOgkDLx0I44fT18dpumu83MCCSYpfeSNax1HlklVd7+
9KNgXeDPOJtrsuema30UQzqOWB6EuWtISYvWHw/BYtSvOH2hvOyb69gmwpC3rNXZ/wFVzhH7/2al
Iu6gFP+vChe50KtJVkuixHNhBcMiIj8JaSfbYSbaEYA5czf+SQbVfpV6CSwL7jSvt/y65Fv6uZRS
xhHUGk3EbjmXXZXSLqQCxMXnztrxscOEJtekuD21lhX4jZBkHqyIBSM75mx/nc5HTZTWPmY9hSfl
YjAZRfTuuKlo4/aX9d0inCOy229RUhW8DxPwL7bJrKr5pj82E2+q+yAnqC/KeQZWBfAJIJ2opG+f
Si+NPBUdEeErfhXQYgFiOx79oip62KnXDeKZXdT8FIROV2TncNsnBZ21mRyYzVt9pm4/9N4PsJLE
CHWtlB73czBsPeiCnUWdUAnsNM2S0EXr/UavNto+Th9vGLGD6P+kig2kc5kJNjpUDCI8/Uqvf2bv
tsYyG7tq2zg2DAZ7Dm0zk7jyciv1d6gWQqACquURRKsJztuNJypMesJa0/c9pwZvknoeFTeg+n4F
qzlaDBw0HPypb+wmnrUF6Sej3kIyrJKAKP5abkr2A3tNcqnHtR9AGibGnKvyivAPtJKIoJPgd6I8
2NNuFW4ESQedld6bJayJRInagE2W1Mm/6DbZjL31/fAGzPvG/VV1CkqmjeIlgJqQxBAZ3rwx7AXY
uviDyN+OhvzJQ4bcWdSpewPpsMVWtxaiadkaveByRTCi8e81VzM90Uqoi3cFKI8jNJSHzZ10L80a
nTvo7EMZgo/hSeMZ/s1TfXpdcIa2Md3p9v59LeoeTZjLdVECu6CGuSNcRxMOvGgO+765OhgTMsM9
EqBUCPG8usPJGMIdH/q5fBachYRTSp/HKe6Zl6G+IEy+tjwpJbyrWx9rhFJ4WcsuFqNJQ/GMrO1D
0pikstru7oHT+G5JqZukAPREO7EaYzY5nrZERs/9DakBspeOVXI4NSpkQdLdueF+L71A40E8ETTJ
xncLQJ7ZXAQIuEsiHXo28nHQyyzR7DUycrjAmUF2/QuWNt7K4zxMlJC5uGJ+cHRufBV4AMs45AXU
M8Fr3vYvpLblkXjKgdiW04PXvwU0DtJuI8NMR2XdV28rJhs6txS+UKrEa2Rom9EBXQw12TDevb59
PFFQPvgv1aqIfbA5At3yxByFYBB6LcIm4BOBntaUisYvRJ0+2i/VXvoI4QNFB8Or8UG4XMMXsAUz
FfTGEWvnHfdCESFIZQrD6McuHXQIZu5+rJ+KSBpZhBmKRtk5ZcM68xHGrjM/w7jrdvjTyTozEBoL
ZCXBAu3Cx+WdHrxok+5+8j9lTzMMoPe7BhuAjV11e/hvMCSUzMyn3CmqsTO3OdxpKfThHlY3MhKP
E/YiCWOUUGuX8gVVkqsZAe695rVdF8uiEWa2MIgWLdjeout7pK7dJ1GxVmONZRuY9kwMEchw2VNa
P9sR/iH0G1Nvz76wtSrqDOIxMr5KkiVy5zKtT1FGdJPRawARu3cbziUv7tl0vnr3CsvqmN70aKju
iWhVM6MaO0Gxmgs47esG0kUrSl0Qj0qc1zoYhrWw7863RJjT7OkhgfFXpSfKwvX3RE81hbTLQ2xU
X+xbYyM9ArSlay2+Fw2UD6Q3fsaXetIIx+hlcFxyXoQIxR//PCU5k8WNX7SEZO1+6JPE598hbynC
2HymAafAhqfKZqFiDsD6UKVlV+aOlT1rB5hgq31920rv/VkpnJWK4wB+iZpm55ia6e1fMuDW2pw2
m39SWLqlgjJQXD6wiaHbk14pNZuVTOMRZIhjHZa/4Fhp6pbGBPGGFLuUJodpUYQ0MXb1l3KCgHU5
fXDmzHp3ecJdkuxRQfLxk6ibRPxkhj9inTdy3WePwU1ZKxSOUncNoMpw2caqvijCIKBm+URf20qf
o73o0nP0J9ZzPPysWrLQmqNCmIOYPpPOBGcgUrax5tCdjgp03A7JvDljXSiiee+nJG4Vgi3uV5l9
zbtoYJWvD+dBTALuzozbCXsfX87d/9q3bBCxux+gzLVQ24O0gsROdnO6zUxFHbYxYqvJvGLOL64/
hk3NKy98ti076Xeuz17hSWVNzSs4t7t1EXcW8fkCSyWbVS6o2VbJ/IZ9Eyq16aC6DUGLm3VNLmGR
HlpJWePVQlNpS/QH+erQk4+fmnX7dSMj8ZS/PXSZ8ojrCjxBSqbcPDn7dZMlAQ2a/BXfWrY5gHF4
DMu7g9ki7P8xlajNDIRZ58FvIcL817/RTIsL7BiOIwdS9r23jEG9oOnI8zARo+6U3zOsHUpG6qtM
dUWvTB8FBnbdtIUz4efpsiPuLZEuYCSl1CuK2R/ekI4AJpa1z3VUaILyPWl1Af2S4U2fge3oem7b
/TjjThX6TWuGKsrvSJ00d4B1T2zRNJo5tm1MNa4GlaVG0ef718M64ceF+UkgTKzOUD4bIyv4NTsM
Vjrxbu3hPuRpS6NGSODWQRBIwXMcj7lvOPYWhH0f8youKuLYpqIMamuU4Hj9DrRaJzLFz9tZIxWj
K+Sna+kjBJ0UcIesL9i4S7fgt0+8KpsxVPKBrhCzqofv/Sdxl9SG/4PE8yrq88GAUdCv57qgwP8f
trd1khfqut3kDWCqsukLpXG15uub6vSLCqPRPVafBNja1Im0ghKQi8GfzF0GYjfioEWK+sfte98+
lY0PxtKg8TU+xFm0ZJ3EI/ZidWmecEuLas/SSneAa19TjlKMZ/LbmPwekIaLxji6NaljZks/vFP/
Rx26KYEYdPsVm38VHrCRVXyt3TM+hHv81XMgyCMA1sb88xlQRoym9uj3B2PzT1tOA23tfIxwqEsw
D3RZWyM/Mek702KZBEwfii+3lH7i7CMswi17Yafsh7KwuQ3bbOx+hzWbfV5JjbbV5dFhy5VNFMLD
4ULXivncJ6KncTAscILwbJMEJzCLplpA6JY/cXNBFbZGRSwHDLzj7N+r3dfCp0lwAwZi/lPUjE5z
rGzxsP1wr+T42ENMFeXzLpIOEgR1NYcOFzV1HGIrnU56sYFqQgspTINgal2T1VgIEkqYmVGunS0C
rwLh0IvKLH39mxwpCATGibz6M0dbPDTe4p0ZnQQLlqS/l2Ph2gbCoklkN2OGcDYEFnRA+xs49t/w
D3pePsO9gHNq1nknfVJG/6uXtOjm1TCF2j+QR7qkKQfPMSu/MuwQgAj1o+5lP3l+l47wgUa9qWgQ
MAuHqGtI6hFbA52yFNcPs4sqAmyS3nCk53ZWzQy0ekzLesO68lHPHACzHdYphdAZH9O7x1Rqkzxl
wm5tGH4ey5kdFRBXw8kXsdy4sm0UxWWcHs0qp/1z+28QuimsuE7PLT2hNrLaR2Nm4uWWnB9yNnnp
67A9SXW6qjGItnoOk63abzT2rRegkb0LIWoHdUz1Cx9bwUmDKvnhu6ZBitq5MjZns1JDRWKRcqhQ
A2WygrkXhOCtpEM1yWGQK8RZ51+IUimULV/LIX0wZKVsV3tAKEuqimoZWvKup8Gt41y6xIU0YaQ2
ZDPoveBsv1s+D5ybyd+T+TSFeJ17IdsSJrWYiFj9Q6vkb0Vg1eT+APBAL+K9sDaZToS9q+UGzfrD
2jU9V0nb7UZM14bJ0D29owHjNGL/762IJuMkL5RmnIVXsqFF1qfrPmWK4YEN9QYRxOiOtLv8eIx0
YpL+pqFaptqn1UD8X+9VYXyxXitaNMfpY3fDHbM0yuWTvs9yfgXi+GalG8HpVawB4hKXWem2+kbd
z6ACMnCwTvL9JZUq3p/H66jbJeiFKP1kdaX0hDYUghVWXoRXcbzSAT1cDnaEbuK/Xj4efB675on7
4RL4lRdudh8xYTXEz6Y4usgf+BVFhILkYZQH/wrsIJE3qHVDHOTF5BZk19+/dcgNiJoLVtzA0a1W
jYLaKhNugF6p9SHhJ42S6R0mTUr7QXJlIqRaWmiJFxUeKJFUhTQ7GSaE7zySfuzXFYURft/nnJc+
Mc6vxljBUx9q0UbnyEJEVjgiL2E/MUB5JOg4HyJx6pURIxQ9lzhzorcbrkShm8YXEbKRECQNX7iY
XbrDIKTL625VzvVtFMjAZqcJ4LTp6M8TSlbLDt3TvU+j/TyedE0v0WdQwcJfdcWn7XtFVUQuZF82
uD5Yx8sKL15utSN2UTb9BbGDDdZT7lgYvJ+YRwu1kenA//F2KJ16ytVuNcFfl6aVnNMItlQs44nu
8I/eQOqSmxVe+0aqZBR6B0sqg/mX9R516/XWYw6u+cG63Ib09RPTbWuZodvvXI8LeWImdv6C525n
MTCQJM86b2Cb0oI9+Kojuz2Ap8LFVpIKyeV3VVtnEqXXD7Bqw0GNrQzAK9mfXhxIPHY2I2F3WaVE
nYxU7mHWC1CuBy1l5om0sAz0JAy2hzq+maHnqG9WEOMRlkQ7obMqWwC7zzBt++sN9wOG6W67Ozhs
3NSK8jq6+2vJc3rM5/BvWGqkMnhBYxZrqOBujboTatWnfgvxEmZTbSC40yqEdDuBupzGTBqQDbY2
0jvcfhnslzfvhSXkEOPZ8o9GujKs2+3UxIsbHU0PuQUqPThQxBIcZXFOzH5ZBAeDtO2Y/qOUGo2T
ta6J9Tk4cvtkB06smGcnRsTc8+f9EptPbDQ+F0Yp4dmNDqO5bqQspsbjQ48X36f7K85chlTxE6dr
c7vNiapN1EsgnWXQE7Wl5MDG39o/zzbT4OCYg70JHFb8ngqTzoYqYP8i+IbykoKws64PsbkuI7mc
U89MAdF148oDUArhF0iA2uyMI7uYTuwmz+Q8Cx0cQwSrOdteQ6tOs7bVCvdv15M15W2KccR6veBI
BS/7c3EVyk5wXY4OKFXDD4fKkjrK5gXWgiKsqXA/0jC2kAUcXp8NMHTEJ54/wZzV9aV3Gokc5WRg
LHZtYGeB+1xyAZQsnZdsR7pnMPRiWbPe7tKRiXPOXahWOT5KA8qC+IvRsTWu9kCC8/2OVJPU6CyJ
K2KKtzaczllhHSXA2VR+YAe0Vz/q4GZ0lzmX+0PvQC3rJqKEKIHN46PZBjOGIF9zLCAUadegNQda
E8Ff4NbC7Zl/3nPtlAwZsNynJYCVxCWgubTbrgE63jJ92knHgN32Ocgw4AEwvdWHy8AeExTMuu3L
kEOCOToY9G5hOdea15DUKqwIBKUPK+RvIy2sbkFMZqYby5ua9kfNsq/mr0R8Hedj8dNbQLD3+vmu
Ws6zRNfXv99PHKNFBoRqJHhfSH6BU8XieAdt9x37tGwq6PMsFJDOetzChDlMzeaBIaGq5xw7ZzCr
s/sYt7FfFKjuYAXxPjL+jn19nn1c8HiwgfRNrxTC89Bx0fsHqeQr4YcJ8GWT28Kb+yYaE9QGQV76
Tz4OTCy9wcb6yDyVwW5g5QZbcAkkYb2KaJ2Rqbv+ab1PeKhO+cLcHE10blRE5dkWsgf/xGBGWKTV
26uM47UcBUsLujueMl5FB5PMfG+JcaeN2Vf93lYDCfColyVjS2C4vQnhVLFV+ckhV5Z57/ftG1+I
e0Jt1+zu7XjzMpeFcX0QpNfyK/y4gyB18LRGths31pnguA+3NVVmHtA5LDkk3f4K9crCD7NccFCV
mxYf7XYmfyrw/tACqwNhijUjkhDl/v4F/Pq9IGl+HIkwtxwSa/zfnajvkmP/VfIa3pVPJJGmwNCs
uIEYYTKnal3a3lTyZZUP9febpus0y1+2ct4OOdymheJlEogAIhV6H7pLxcL+qu1cs5y43P5rmI6H
mfi4cFgRAX21Ai3WlQ471AUdkcNl5Ijw0lbzVKXR5df43iGBB/IbRVFVPk7b+nrTvuMNJ0pcJZS1
d4Vj2fh3OQT68tVRbMzhS+CF95y8oEl/Yififj+0s7tcfX+hSgtbBYDXtA/aa0LqUrNgvlhKHlMO
5YQW2vzGYfvDFg1xGODHsC7UFcfOfuW28QfkDiHRG482SXxtqvmJU0ldIlApvA1Og+w+3qa2krXn
pC3NjjbRm3z7XQgXmyTtuRqW/yQBB1pFo3NO8S3+bw/viuR3j2qkgvWWdL0/BPv0tucI3nCnWaWB
/hoXrSVzGkBwbZ07qSvg30jKm4VdI94gqdwOvGvc6ne/Oht2msas7gcAhID/3u0FrDKrfT8Y4VYH
ydZ3YBnEy/yZeW2mCNkJiJNsegidb3NpZmzokZHsbN7RJU8HCb6HJebx5VRZDt0oOgoTsKR4e+OB
TbbeXXbFhqyOV8jcs6X8xBbvWW5Ghsw4vlSb44okOD0yQZEPWw+/a5zBx8WVCuHY4Ie8tRyZNoAG
S1MkRGS77Bt7CyWxhbnoFGfLvRMPLYEDI0hZMugW4Sh1Qs1qoyZc3DN9OQT51RpKiiUE96uxzfeB
qB9bXix3x4V/bYZ/Mzq8Wpy5ttVRFmhX6hbTEkfISlcPg2hBfDcbhCnmOqheeyY5bHeruLX5+x45
9qjRFIJ58H45ExLjU5EaHsP5SvUCHnOq0+KaW31AiQWUD6ygA0QknqLWhu/uXIlW7cQ0c+IoPSjl
7qzyWiptYyg4QQXtbnPv90/rlZr3fp3yD5KL63XqI1JA5t3RH8fHt26rK73lwPhqK9twtVL9dIDv
lyV9vaMEdGU/IKe/nJPAnRo3R+6bL1Pjz/AlJWy4Pu4+yyll/2pwDIlyYP5GKdqfQzxypATNXNBo
b4KbBDN4740w/KJ1hEliBzZDbosfvsvxmhAVbgOx5jLDjmfgXlGOvSzxytelD3egE6cXfXZWKk6Q
yjTYmHZb9sYL+A1VrMHUYUwSFdeB7W3mktWodCaVwUto4f9KTpbqmBMZ5UlczMTePlZDFvyOSbc5
vXj1+2OMrk4/t6yEjMHbq3EseJDs2iJgZa1oBKUjFaEGly08NYhrYG5L6Eqw4RnbJWWsxe7WGKYn
/LDvhdY50aN42Y4rjHy1MSqkQop3WBRRpFOClasW/syNl7MehKkbGfyK782aLt9uEeOdfe7pnEJ2
iHWrVucv5mLO+O5MNeiRIaVTfd4yKSPUBRLIQM35/Cnlj6wXYKT+UWddhngtgiU+nil5GIO1TBT6
QD5av2tWMUKbhhhCZ8DyPAc5iJbxol4HNwvFkhP18A8/I1TB0LkHK6AdvJK90fKp7VU9JoEyss25
WJW+uugOX0hzotpmi1JSrKV/vxrmgOcLKtOrOB+/sVymTheaUAL74Y1vkl9GbZ25v/77yQqNTJ72
rMfHP6rbhFFheTK+d7w0Gu992zMMZurrrQRGYTMfyGAFmY3gA4SC4W0Yv8drEISlhza/e2E1CetF
dQeRAZHFc5bALyBZBCe9pos+BQmKnUdc2vAlmcfBpLT4dzil1kHb5yq9NFvEiDAwhfl9CC35Vmdg
BnnfKL2x9Y0rBZwZtpNBpEjSyVfw/eRO8tzJ6M4ZSLUwl1ZeT8FgK49xIjGO4bPcYfw01uns7XJe
UFGEAcPaGbURNr72V+8FxifIUwAO0kQfabsM0kIMg1stsFa8/XbfdERqAlSxbldft/SjR9/VZhQ4
6bjKH1l+3qtObfVVgN47fsm8Sa/TPw1rueiwQpXiuo5usBhmZn42SuNzou19ryWl9q+fvOY+hSot
I9/iXR1rSOWjZ7boJyO1WT6URYLxb87rxv+VGFiHoSNdD+gq2aOFGGHLeaHd0YJXrHJ3m1+lqkn2
Pz6vh+EBj0LxpaD3xVKTiWa6yiEMo/j/3jEj4jqyEsaUu5LzzllJSVdS49fYTeIcGzYL6/vzLa/9
4MF5xnsXKXAvZN9TeHjCQg2aYFFpGBVtsOL5IucK3fYn/EtHw+HL/mJgCvtDn31b7txbY6XhtvcN
mrDEo7zdQwFqaR/yHVSvpWGmREZ2LgTzCOq9z9YwPwW+L1u4zWUhBZFivNxw2+s33wJKhtsLHetw
6uHrEOyXI/CXwWNUVCQ88UYu37ZXKE2wc8Fgu9xxYVTSfcliRXlSZK0ublrp72db76TaJuU2Y6S6
UNyDhdoa8ISerqp4nCGzz8idgAh7nw7YyPhJjtK20TV52STe663GrYmjetMtHn9vToaX5VBdkY6h
CsOlrzDGTjcmvjEKbedXMWHpmzc0zHMbp588e0AL9cjisguvVvqLIoEuLAag6v4l3lW3sYmqj0Gt
Do0iOsJP5g0aSJXkgf4Gv/z8I82X8I6evxAtJ3AuELQRaM3zCf9Ng8zRLVr8ASvX4zzabVsbh6LM
EUkW7ILCBhOpXwiU/V7KnuLVXeADfmnd7HnAmBx7viRSHVGCgEN7Pnj8aS+ag/mAMdyAFO0vWglY
RR5zK1K5fQO2sVd23bCIlGfUDC9xI22LEnng8LhYExxB7Do+E0bPfGApphTIeU0eIfhJhqsJNFHg
BqUK63JEVl7XQFdQk3hfaWD4BX5g36dJ46J5CSTqoXc4FWDNUqfin0PK6zmJe3Aq0f8z/1UKvKtO
dYPMmBacmxl/wCAgEawx0b4Xt7mWot/QyMwfJvddGl4qBVA25Kslqj9jHiXKSXzD83h8ZXUxmj1S
UyjIgbmDq5J+2rYRBXi9gFgeiip67m4CZEBqC/ewB5AsjG+pzHlieT8b2dVZNJ2Pb0N+oWkztPHE
wJ/JNM5mlg4tGV3dT+VGXqnx3i/n2KPK07AJ2tBj5guv9j/XLzutrXNyK1t9WOujq9jzZxZ6asz5
nIfpcp3BZLupa1TUqpARcUB/4rnJYrCcjefvRnuWJjDe+RWt9m7CWbMhhIDzAG5m2z5WXcEdOh4D
8g7sIa/rLtQ3us3xVqws50gpBhtbHVoJ6XGnIKygOxcBweDXzRIHVoGWj8u2LDtUBTyukH3VKmF1
NZRtXmaUuYHFalK1igPAe+1YJKcDjK6V5YWbUTEOP94dgZWAYsI4qzDhTk4RliCdIWWSr9YpIqwu
qM0PXaXBjIF6RY27nuCk+4o4h2OfTi5358Cnd5DQQHFleNWxpVdpGev1TziINS24EBc1l8EhDXQf
7FTr9KVuE/0bYEJO1OoyEPnr6tDoAhZ1pPinwgIhSa8Y+KTu/B7CUK79hvbVD1bG5qpKHXtsJf3l
O4xm62VCTdjxXFZ2+ae8OPkcyfg4qS6zWlfiuatokYGrMGKCG/4Addrgu0wV4dYbABJZc4ityqRH
Z+aklaJYbMkzXtDwTyBWrQ2V+K3veihqAhWCiKAqjL4rPLU2G5ijF2YH8LVrUvroKDBKA8B+c1p3
I3S2GuIWU+G8TN5FP+iH5mBzLGm3ztijHIcWueNHyJNqjKNyKA9+fpyZ09QEdQ8/dyaZHCAb17Oo
hb1qARfwIjnfkXssYtGhxX33hZMKXOe5FYuzZag4oLkEjLslN427ec2/87nC333DmSDtWvXrlEXn
9kuoPW+XV3a6bJwPNg5tQTTEO1bEgg+Ke7DC6l0OPRsKoZZavQgHiBs0QUOI/vs5A0iIxL2IoNrz
/MQb/nN/gXfwdwoJCWJndyrMNtR/9UXTpsUiNrdqZWH7TD3TYigbWgujc1BAMs8jJxs9/jA6Oo6A
P0zuuE1A1jUKjm94dZMHJtExGhVw4EzACR8RixKIPU1P2wVzMVau0pfPl+n2JpZUppDtPQL23sPR
ydthqeFZ0OQSUdKKReVdQL5X8GMn3R4TTDuWH1TA4gwbyci8a2IzocatOk14nIpjp6Hy2Ce3tQiE
8aW3mnbck9aY0xhv7laAQOfZGjvpR4GakohW5KGIHonHUnIm/7WfqbzGWOO0DIMOUzzGeDmo0HGO
f4PPzlmBZAlAVVXHx4MFf3x8fdroJPL/1gTeG/0Cdvr3QUwf1ruKrI+UQ2Al/7LWrleg6IdcvY6A
Kuowi3MbMKOvCfb/kZEPyF7S1jo6vk4hqM4N5WpAQnoutvqz/y756BP4U4TmQKeGApqKA3N9xDmB
vfUuyaP8mRDPBPiy/W+tLZQRnM8vsySKbF1+3zpjM6cY7mNMIhSl7beP0A1+1hxLEc+WyBpxJBJY
Mvlxuy7Y6DDDJiSd5Ww3BphYCv1JPpRCCIt8zGncHw9kLuYwCWryxQ1/qaieSTgfMr6GCmIiJIiu
Ad9u6cIBXHR0EHNFhzZwKnb7tdbmVgAmPgr1XsFUgVPltYZfbR0qulLFtUnlUCBIMvIuWT3LsTd6
EGvR+F0+bFqFYUZ+eVA8krQOObsE8q4HB7gXO0p2cxklccmOBwWxrCR8Alx4OdK3RzLT4O+FFukS
yLBz1S1X7BY//AvmVR4tWOnEmL46NU1xIC0AnIZYnieZRDUX5McvEHed8Op1wHsA0tRyLrtOl7l3
nRopNHti1J1aV2FqbSuJbdSw/3TugIv1U7l+73888eYOzK8ilh5PCv9js4bzpTbpTG7tJ5Mhk9RV
lUGRV/zwjFWDaOi7F2ATjnO1Xb87DuPtdTBNdeJDgSCJrCE5tBsjKjmW7p5EjHFMforFsXYqfxv/
oozt0qsYi1kLPUkYSI0Z0rdJ8HnWq3Mafyg2EA3PUSg/mxUn8J48FJ6Rl6C9N65g1FjSPQxtCoCy
hpaG+mm7XnsHHLJnKYu4AWDbWNG07YTuycWbHf3yEzFj1tNM+sZOncw46nB8Atnt4XMolwPLDq6z
7LYcc/xrckIrxEYGWZJVdIX6HHXAEy/SD/+Oj7+i7pzKIKBtwo6flHRdZFBxhA/uupTl+m8PdE9U
HPX+R2Ur/fGv75jhzto9yh2YrkW6PwLXb4u29Ors+Ur99P3j/tDk57A6STprYy4hf282UAasK9DT
HqzT4v6Y6uqzhYLG6TJ2kDB5MnVeDNOwbp+H8GDvE7+NGBsF36P8GAobxCXqtB+/l9LbMA6jH4qv
MZxquXl35fVkeXF6PUU/0IgBSiF+32e/mKQ3qYvggwvLkhLBRVm9bQ/9IvntFGf0WF4z0BKqbP2+
0PKyHjC8X9t8d+w7hxEox+nxmMNoPghkbrmE1xXiGVRGPf5GNlgno3IQhNSNTAM3WGr4gay30AUb
vmuhc+QbrFsunWZWxYZBcx2j8nzm/L8DpuKSGf78IDsctw7lDm8FKSq7fDBWwknKi7/iucRNMVTc
n0v3Kw2//Po/qrDIQ2lz27FV+Qbwypv3h+CGYfxALi2N+i+tSzkdQYN/lM73X4le8PW+XK8783eW
tK7HH9wRAA04cM1vPqgyBQu2P/7JIgmAdiW1eFrl3e3vscZ55I6lDfpYkgQkO8vEm7Ws8V/G1Z3c
B3LzCDVsU9z6gwy2VkqPyBhyeor0FmGsUWktx437GECSM4nejFzfb01TN23i0GTK/5V6MgARCeJr
N4lPr1ySlidpKiKTFwJVqKKkUXRIHmbwZge9dJPjL7L5+klg/YCEB9emqTqxgsLz2dIftWwjsGNQ
q1OjCAnJ6TlqFAYFWRswoTxRn3+ZCLlG2Ws2TZcEWfnb6U0wa8fZ9/aZw6RoJ8w8SX3NB72W8/Ya
Msh64ffwy1HsAUsNty0t9nPHyuhTbu/YKvxAT8j+QlSeyH8eFkvpB1XvqRrWN3LntrKSpvzebs6b
mkulLToJPJLK3KK1RPCaHVbY+Xl9zwBd95XGMPiZGKKXWPEks/7RhznH/M9fEGmQ870tnDFEqg1y
NRteg+Rnljq6kSl4mr7p5/MY6NXGUoFcue3ND0pijDkJG5n61SKYBOmqCrH1+2/fQYkKexCB9Ktc
nM5EN8j0qJhPvczX2EhCxsu3VlAAOr7GNlFpYsS4RENoc6soJXhvWaK6850qsa2osXiFRYfk9gAj
H59gGCn48nUEuyYcynohC+G+ZXbIEtnQ+C5be64vd2eTO3LR4QdK7dvYtPJTW+gLKFLeMHJ5cAmJ
Ve8WfFyrW48BpW8qXINtXvPARfMn0TcTduPj/AD6m0RQWl49esrK+cpdFMVlVXrqI2CDRGLLUX87
JyL6KcGrvt3RW8l1m5wcB7UhTWeSvp7PZAe/QhvdPZlzF+XcULt9gexYCypDuv7NbQe+zfa/MjQX
uL4UP3AwulV+jmMEIUtP/EMdC6APOjg86AnCKh1sBs1ZEhH8vHjG32iVHgv7DBcBgY+6Yo32s8ri
bNPPi+Np2DsStaQGXBObYuTU0oiI+xI9uXKnU4cszik4NfE2WQ68NjeeAvIUkxNNGnT7zl30mEEd
G6hB32wjfza90ddN88BMpas3TurI5QiICz68Z3bupBG2tmP6PPVzd8eHfE4IjIrTmhIG/uK0iIdQ
Zc5McQbekPlQrBYykMd5mTHS0U065Hhwy/yMAQgAe2/UBpd6fdJfb3PScoTLta4ABWQ4aUOvuzWY
gXQzV6i2NYpk+l6IFh/ET+Hu0AqBMLNOIDTKcF8lyG0Dlt2jgiG8UYlRkaxqm/MyxR/vwChlHNmP
MCdD2Ha4U70ArzhBlueom3pHmI+5mySj9l1/UFIM2Ao9s2j2ACkgY4Pe2n3iHoCI4CmPTef1i+id
HF3FTF4kIPn5wxPsqJpyp6Ek4z4a8o8MQBn6z5/LWBHZTl7//INy9mee5OwZZDmVTWGYTkide2oT
RgrWbCrfBus9nJM1irbtbV3S86wDJeJDuQfkvA8OxFe82OwgG9awg+q1opVzDm5Qbv5QO5QqTfeM
8zqio5jAxBAWUP4fTBXqW6iPJvCabASlU91vbgPG7YArq0zfOTNTQCx1sEJUyHS/9wNtuAuaiyxc
bb+zKaSKHb+0w+kzi4j9yjXONgPRWZ5F4H9/LKVC67E3jTlUu25Nk99rhj/+ed7+0NbSHT6nuVjD
/LWR2drLyFV1fKsWDg/djqu9bRfJ9GNlTtXbSIkoPCrRZ2dYdDwXv9NV9iv+qhQFatyUn1FCwh2S
Qq7nEXX9VY+Xj9BATGgrKByGGPxFaOzaUPqleVIgiVcQW/jy4jo6fL5abGjXA8sFrhySKtxmGlBn
lgtW9sG4hUq4G1+VyDlOy3Ya/1gG0yZ5AM7NgHMqkm33C6jbYwMbTmCShlfIQibh6V0NYAPDIvWy
EosojkwAc7LM1ieq64T7QvA7hLfpNh2y3Qe0gAhtjppQwmVtRIfzi+hjBWJAyBuRlpnHukI3OHM1
6LrXbxTKks1rz9dUKYpuXAE8xuiavma/rkjx1YgiuKPysVbaRTdESI+oKZKwpd1UhH+yl9RfcYUq
WKsLouktQ4Q23cD8bYTHbRRo0ECEJ8nwb4GKpHWrlJ7F198WXCeW1C95T0Lai77H8sWjZkZpaGx+
4vARJDSxnMKZGWO9sEEIRnKQfyTSWT0exkqtAf5QGQht6JlAu8fOEc+hXQvyDyDiKwCDaU9vqJlT
VofGqLIvJzKfTrl1cGNfe/5MdM9Atoc5HH1vTWeCqZYxQDg6Ca2DQTgC5OnuJ78Fju7bfaIgIh11
XLmOv/14TQvKsjthqlFufIr+4t0DhopsLsQAmS+FY+AgnbLB5RX40Sag/RNelpRa7V+6r32UNDMQ
30jDUpZ427Hx4urogbb726G8gG/Jq11WdkzUKKtUZtBaTKYQcK+Cclr6IgeUnZmAS9TnbTy9sMl9
LBfOMIfbYu6FsL0d6qZMxQsSu4SyGPiDoxQ6HY2TQXqBsW/+lSDgsf/LxPffepSC7RFlpmUCfMLc
89pvENabGeAkIat1siKGNuhuelOTVOOoKrDZdjEfvJmvQ38xupYoD5xZe9Tn+FflAvwgMz8Q3rET
F7Xl9EMJCaxf0ipUEE35RcAhbhcgXmmkxh7xEp9YeSiHkAEIlprYApDl2FUWmuF9J3TLKa5c2XPk
Mq4s4W36wl8N1eDds0nr5LZhH/TcyFgNQdoLTW+KkR0zv7ytpGXAAwlVXwTXzL/3gugIYaHK/Ts+
JvRv+7nuMhsk26I6fvgmHpIVv6vTnthQAM5t/VH1QRvkHAAuMsDqpA/Q+wK+7ffuSvMNFEtie4vH
iGq46L3d7vDKAxTIePbbuSEMmvEKeOoOUlJW0XZ3XJnB8UFQt1ulAc8zOpFFQb7amOYFfm78EZEk
JALB2zrHJDjBBO5/gTUFFDQ1DNw1UKPz43WDE8j+kD8QbsGMgqLaMYZCf9Q29Khc5atT6yvNswmB
WzpvRcwKpM2TTllGRSFf5R2j+Efl3ARoWewlMljIQRCoksR2k+pzmJ8S2jHQlIwQlwm0QTFUlmtH
mn6j4DmyOkVty/yDagmJdWODjIxZ+WYM8VBlSkewTbWNWjXiDtYeEHKgCF/sQIFkIKTFsxeA66Fw
nw1G//uzgYGTtsB2hmRfWdQiT029BPhyG+s6OYgUkQIZt8nxlfluHo+d5KYoqsRoa3HoC1DtAUrA
T0ukMHLQv+DM5BjuW6WMUEAk8+hOwlhAEORSVezqVJcL9p3mQ1/adN67qFShvsGCjEPLsj8xvk4g
Pk1d071Lr7afMGvJw2VZbEtT0qggXmZ7viOgfaBch0MlJqaVaoalw5GJBuDwsl7cxb8sLVzeh9M7
ftCjsd5hEMGsWw4YERcXbc88ppp6Of22Ef/3ADTGeahcsaRdhpmewjzrtCyhu8OB4qwqS4n4299E
C/qil9BDA1mAUSf5rLEg/CZeryxYkI1JvsggGln/c8BYr2CMe2+B7pjOHLIhcLF+CwwUHFY7jOw3
K2ylfoTx2FWsuqFics3ULoBeUwqtyoDCupqGRGpDpXUkOfRi7J8k56bVh39YihipbkmE7/FdOHKx
3jVXyXtd1qJhUohkfp6f7OBy86jAojEc6lngtg1rK4kUXUqvMfyA7fFvg1Lq9ttq/uOik0DZv5mn
Hqhnbie3Nvo2uxnhfbgQoyXUfK3f7GhdOm8D8+426+NTlETjp+woKxDkbW4P2xH5YO5MF1R89jqv
sYZuCr/YxNfO6zoi+8tCWpO7C2jpJEfo2pnLSLb7sAvMjL4TxvTvLjQCMaLZiErLvUOzRQjhc88q
5jwXvtcxXS6A1YMdBi+oDKqMt2tIoJDl1zuCrdvqjbSf5ZJNJ/wCQ7s9TD2OytJY4dG9AQ4N+hdK
lRwtef0znFCNXB0D2WH2MH5IwDkfFMTo+1/B4kGkDv6fzOwYp2+qznqL8kivqdz0yew3oBFEkdCr
YUlRHZxCOxCSMWrb4KrcYFW/rXzZOXdmraPwuMgMJWHFKRM1XHKkkxqC8PiQf9J/Sl2P2AsZC4VL
O3yqQKPIzusha1jbYZn9lEe0DoqNj/aKWxspfXwc25tVP3ORE/4O3RGSR9nQXU1/kejRAO2Q1GG4
dlYce8oe/McsH1/k9ZWk6VXa1m1ZsDzNZoc/WRqlsoxrbr6ODYQ/XtzHgJQ3qSvNP7D8hNJoVwK2
tQ0DrTWSh9KkBoFdHkuFF921vINHLEgzm6fgLcMDJ39qDGYu28kbayP/Q/8OUmPm+reD7gG2Sdby
wTHE1dGAEAcdB4LhuhsQFT7G1v7FSq1Mlj4YRnJs0h5jVQErL5rsAq0XEh9/BkROcWZ0bgg+a4gL
Bnr4p+QwxQtS8laBUCQnIrw5MwzZwEm28S7wTIghqoieg8HGUWJBtBqTyaT4zBSKVIZmjGae5iwX
hZtDoL7cRVE1TGZwC+iSVguUaSVrVUnd36MffzQQB35c2QT/ibMPK8QKwkJKaNLgbvpdkgbqhV5F
8AhYmFH5YTZS18sBxPHs7uTDvhClARbN4ifol7D2aX+sigZV2Zb/Ey2cNw5nV4aa4S/U/VH7VN+2
MMph1EJKXYWPKUpl17z4n9czCZWhqKVzXOGygLTm5diyFzSjFxh+llw7jTowYQstT31FjAWtNmfN
kZRPHlH1N6bFwBfwa7QnSjvvU/wcl+kR7kXK6XiQjJ6ZREYRt5MDJSE2NS/LZAXhk7Mv1XR6IRDH
8DirmldB49emEqLliwjcTOqxHfWdDgEiKvDhF8E1hPs6K0mSBBQdTBrJvhB++QIhDRGLYqcM3TJU
PVJ//KeeRhw2ckByq5og7KooBdLi7jTtoAORBWewvLZRpSSBhgbz9s4gHgrjF+QlWMSKXa7w9uvi
RWak0VBnVJmtz+lZedssFaP2WsTkEACMzXw8jt/Bv5Dt8sFAjOUIYk6dFbYcBym6wCkEmXKcRrh8
TR/iqQmODkeOL1uyNMygsx8C0s7f57FGj5hbananF+67MkFItXtOtDGOCm+BfOiIAEGF9wQ5vwiz
Nm79tdRvNbzrWwtW/JWtAckI8oZXlJOvc3G88MKiVw8Ho/+yOcBkU1kBMwtkzuLKCZpDi5MgtIiL
hwG8HIp9mdCPld2sGH0UUOHVdBiKA5vBHOc7cTsWHnUr4CMP1fxuTcDOdxiuP+B/CAV1UyGFWCGo
3B+70DgvhfC6UvlbK8YtF67/Stnv9OVccQFZwmd/fkniYU/JkBJI+HX88xCmRMBIYsuSu6p3UO+5
6HOg6/V3QAwceEn9xdfgQC5MlC7qqtse3m5+03lr0F++kk9XTbvLbh35Mkz/UdCc3TWR/6MCh+p5
lZlTske9XUmrszdyPICPLcHRUkx1LkommpWw1h35O47QbFtzXLYF8vkv7yyw1vhi1zhYthr9d1H2
QAai5sTBUdRHLwS+Ymc1vvBctJi8XxY4One3uDDOXCEn6Q3X/lAJVRGPjDETM6Zzj1QWPUq7B4km
MPUbcQVz31+dvoTyTrcn+FxCAOeO1xxf+edjztfqb396+gS72H90v1xPShEk3JHblt8xELMYbRp2
v+3B/DHFqtXVxesEFrnceqfhrm0JM+UnIa0F2e/V61Vf70E1+QIdkHemr3D9MFmjBydAFtcQm3Wx
RiyR6i3rKGf3ezdJMOK28WQkqwTUnRW0mppzqIV72jASIeVwJwG7fBE+RNaOjbL2cweWYGeLofA3
1Q8Do5D7bM1iK6Z2HNZkQlA88QClK1GFKdM3a6mL7gI+Yc2oUV52w9Z71Zw4uKxWmiq296bwb9Tw
S9koAQtLdzeWqkQ6IS5/jBrU7jhwfTbuMkUTbClbok+H0NnFyXDZEdRQjMdwrNe/iD4QJJnWy9Ie
u2BRRhYeauCU0rhwOD8kzG+SfbifL4L2mNTzpT3BstYBcoCp+Snc7XZVTHvDNhOTZ8P9FTj07Vnw
Qqw4a+NFC8vn6w2XEDezIlf9SAhC8KOkOeZPPAQr7E7Qjex2AHS0tZcmvyoCH1PlDnt7qxNtwlkT
KJcGxSCQh9Sa0i3dlcfW0lWZsrHplwmyJBYfTLTcu3hhuUR5ICNltUQYuixrXTfB/IGHbcq3qmOX
Mb55nLiBNGdbd31g01UFj91yaBZ4LxTQYqN6D+Vpzyh2KcaTDW9j6TsRxdD38kXzfRHmg/KcXJac
x3sIPqkNuCB4qS+dSh3fUbQyA/lP8rsg5Q+PCRWLF6X1abfgzn26A92Q0MJ3gYO6PnLIAwSklC50
CnWsyFYXmyzqU3lokabo3O9wrIlRljqNbTS2AZLh8w4Ox1u7C1a0pghxiSH1ZGVV+NXNLds98klS
uFVfPsVjKMZsil5cmyQ5WZ3uhVnbxBFYXBqD2XPEw4+oeqtjA5Ylfqnv6btBt2vrVl8vTGWNlfG9
OvgwGENc1GEN64+I/v8XLFqV4BOXUunWoouUCWExN5lobsNaggU2nc4Q9tesAm6RmQXBS4eamIf/
g0qwTh+QGQRpsiwjyOZINOKagXsg6c4wt4MytfcyhsYUDTtGXngLtjWSz730W0cDHbW0AXbh3ldH
h3wojZekftzPIHTda2p+y2e13ViImSCgmR15Hwd0DfwrQYlPA82E1sOFpTxNL6d+iHXz6xH4swR7
O2svDCHjN0ZvTDCykPfkmZOacKk/uqSu5M9xRb2SFdqpPNGuShZjBhtf05HEkL/giYoHgTzm4eiS
hwzeK85iNuMnCPc1+dloICi2mj6Pkwpb4Ztt2lRVDuwRWZF1ine8lAkgQgfyDd/UDxO9QUNipRFn
gVSpyf0HF+yrb+Vll0C0gnJtBIgLnxNJqevzdkNQHfEOsOXFQefRkdipGrweGcpAb9HN7++hf24i
S1RSabMs6b13sJzXTxWIpsEXVQ6H2qt8ZmE8NsxEWw1kJ5RRFHwQ+hC5LB8wYyBv1TlW2lHk69Mw
yBHodjRy0h5ONg2ChfRIyQKEaePIMRI3sPKhZO7FKSJcqPKT5tbeQlCD70d1oeUIfMH9eufxY8Kk
VWr5l3q1erxF03Ow9TJkf8j8Cvhj/61OYnYOetJ0KrjwARCjQgu8bknujISvx+vjGNVP6dFBdHek
4hcwQnrxT/Owdg6GzhG5hRZ6IcUgYFMqHJBQMV2Ku1H9JjRT2Q9SXH9Hf0iiA3UrUODEO4wJ37qh
kvkx5vuX+UKgiBEiQIcW4eySMgzszAteWPiKPpsVPvXudemfEA2ag1xgNfD0MW8jD9ooUEGX6vos
crTqHSzxOS9hYJcnzV6nnc5enydoQNtKGPeUmX8D9UJ99t80bSLGwaxdQxvXDtlcCDLeSZ17oel6
b4I4yv7RoauDebdtjBC9HaJ2gfCNm0hgnNkGZMPRlTHgaWBEmwb9dZzx0WkExm9LO/jrNVKP9nvR
nXwBhVqIqrSWLNyQNpAEcAtphOG1bGveAJvnq9FXq75SB7LrMklAoXteZdl7Z2Ln4VUNIkjorNH3
xG+YaCf6QY8RtaMwRo0fCRGM7PGqAJchyyurkVLQvnYtEJACc1FvPl2TmBZlt0FCC5jokflIkfuJ
oCipwHFTUDpesDC13zXYxJ/d/SUbzFeTfzprb6sH6+OYiXREoavV0GfDxBF+Ny59B99MjrE41r0I
48qVImpZsHeJbkjGFbrN88qNmdJ8YILHylVuRv3CvR+BGsci2UAtcSYU0efbSG/YqaXElzuHV6oA
wGtL9u8OMR+qID9CmcdaQlk7xoRb27rUbPh0G6QzzyAelM3h9rCTmnCx4K8YHK5h5defNQuezVn/
verR7m/S4YU5d6FdFmR+T7mQf0pftUcwicaLkY+MmurlmO5E/xw7agW6Gn/pgosYFtRN4PFKzc28
+ljb7daBYpr3UPQxnULalQVDRdz87q3dqB2oFoiLNjnB/XN/Y2AHioLxMHHsSdV8sa5s1F6NmRen
/4/6UyvGmAwrhxjP3rFRYdiZmT4uNqSsmrfSQfVedeei7UFSHyFHMO8qRTXm2hpDI2/en8kULCvw
J9xmkU72DX6IWPrVvOLotI8ZmWa/E+YQ1RmEwo6uAt/mlUM3pCAmyjGjWmyhxCqJBh901bQq3Zg2
oRC93WDI4a6sZFuq7Um0+vliDTsT3ib98SKHAJEZtDinrlCihLFvm0hW+rfeGbs6GB+lMr2u9Ccy
NtRqQofeN/Wk5PqfPdCfcnl127r9ej6A6L9OHynbEckdy+FAD5g2WHpdk8ysgPwXjvWEda/uzOQ1
pgr5I8DsYnYkstlY4uEVt4DFWp3qQNXLamKVbNshU8pfGlcKvTra4GtkOhTCy6zhbkZkBWsm4XUq
kpiMwSqYolo82AIpm59WCtJBwvBuGDH/+Ha5fLC2h9UQBKklar96TXrLVZd9HZtboFe1AoMLJSau
5PsttaqXkx8fZ+9atirxwsabIuk4MCkCfLMvvlqzujtXN2y/41n17sL2P+3Oq3CkFu5nC1eLAt+q
cpo/RUUwfGjyZ3if4902RC4ZpkFBFvJoVJassinYg3K+NzqKI/FXRaZ68u3fE4XN/qjDqxgugr0k
KFZ4GoQ9y15qnnVzkHfX7zrx+ZF04WVhRSWswre1xQh4B00XEaghyA0WcbIcvMIeIY7uaSXjHj9o
h3q+jzsw5OE4VJ7BCRjCjxE6zGg7x+1A6oHE2UTfmqVN+c0M8KjnStE7AOsQtUZskGyXfEmc467n
kFsePgO7Y3xo/vxI/nqqo1KgjR/qL39YW/ZjYnF23U0rVPBhvpRD1wzq8/CciQhU8Gzru6ZsrNze
sX7hB1964TpA1lT8v9kHb58oeHwL5+kOGGwEU1G2Hq0KRAXiPGqUpiK6+sPg7otWwEI5yEV6O9J9
Qcrw3TYmwEhwUWMsCqFbc/KyJUMxDGQ6zRUIN5qRcnDo7PjxL2a3xbkGty45VlJmGVw/h2WCuWgs
yO9/racNYUx2YG2VFC9skrq5kAI+V/PfFDt8xIEg4rHyfXAPXComZ9zuVfvqRfU/tMKkk6xdkykl
EBkRZYnldmCjKZMU3LECkuKbCC8Ub2YLjKXpdb6JyrOvlZv6sTDEcn4Bzso2V1RSZJcAL8tD6bRg
ysiISSK10FYeuVQ4hHJkgtf8BgPaE5t0+XEVYcUZyjAIBda1Clq4+2mbWj4ke2DEyXXUvM/tuuqh
ylqD5oe2vGqOGjlvKeIDuasLXJSzHW7rWQV16xJHFJew52Qe7WgE+dYb15Jc0/LQtdC0BqWVczDH
7/6UkP97jzIZUXCA7BrIJ0L8zahSdya4DhAvgpUaEj4/mfMsX/gr1KZM5BwleWlWzqiWW7VDMPlX
17Wnd13Nlo0vH87+nbv/KBjh84mvZvhAF2PPjktas6sRJoMV4Q+ljo0vFQL1kz2ul0aM3oslgOyv
K101cHgoVWSQA6VD/b+9DnOemB6CHX+IRuyl2LA7d3E3BrLNAOjkRM+7UyF6TBWtS4GOwqi20mH7
j47i4d6OScv+KAr245zJJqv0CGzQd2lMYk478oRFv6KV41acNd+BEqkEK+E+WAmGLfl5SCouWwDs
XisRxn1nxfj+NYz6INhqrU2GQ+0GNcF7EZ6gGoIRpDtSi9RFa511rfkVOw7FOdFAvJ2g3WhEkt5E
aHiMnYgzpXjxX7snoUnKjj3oZkrFRzoPkDeGRIUYkUBpX+OVirjBdKw46Ow8C9s5e3RxxGOjT8hg
IjIu+RI9L1iBYazLl9rDo/7cs6u72j5xPAwu7Q7UDi4rh6zBvSG3D2dhV711rU1WaYN5q/+sdUNw
t6PwSHuhZvDlbcx3B9XCbZ+gFkK9Fda7FUkmNo7gbHpD8gZwIip5UMPqGq0ob02SEBO0pmKcEqsT
6JZVyElnzyxgPVs7Ybzg4znQhpI5dLSa9iViIiDUYUyT+DzWghflj1i52L2VxfEnxG9iQT/x9wPx
q1LGJKA1yYSSz4LTqXAIKyTEnUOaTcEFvAEeK2GKqagixqYbO2FV3heyrb0g1RHMTcUL3KRBTOyy
WRP830AchGaHE0TEzLVRINK0DjD1LoAAgvZIuWcbCXKpUqcnt8oS3OCaMPqT4fZXl8bOnyvYm95z
MtDsZ76KCUOkv5knqt1SQTH27R1OVkaNE2z4lnBPLOy2n6kAqy0Pd5/DtslPRTkX9YBRV7MCYX0m
OtO7dft2dorBr8Xfmf7S3ig/AGkw3DSJKilM7/uVJs0HKJ6z4MFrmGtHwLvxN96M9QAjgsW7HfsF
wZExFeRrW2OtDTXpMKLhsDqrdVJUIxHUKfOwk5ISPLUZLh/+jyAHwH1NKJsx71v6SILc5QfK3Y2m
Ms55rtiWDWeBCrNrVY4CdgSxU4njB1BgTxUDpLfjAbihXblw5FAbxopIHjwub8AcrlNuEOP4foV0
M2z4cUtwrdGqZ3IUtFcUP6N9FjIB+81MkPADcP/MyYGpzTZtPPYzOrS0wH9BnDJaiX6mPmNTgTm3
O6ySBJmcT9w2Yij5QJoP+KjJLS7+UIYLftjgvJnpk6IK4gbISEDTR70u0AL9G+WjjykPYUPiwqvW
pgt+ToP88HcmydkxXDVTPT5xY5/GXrxtaf6c9S3d5xrWlW9ybzLHaJn6Pq+sLRVMwpY6gbSnJPz6
tEyAtJNylJaXvOmglHAk9K9kFJPqJxIWICkg/3xtdlQnCEpkt+Cym5zCmBFqfUsvEsuLKVGjp7V0
hdotgx7mB3RX0oIn3cp8o0cijHvu06IOX+SB0N3wIAgLnCziQ9A6InoaLMIBQKbztVdohUIse8iN
hQ3Pq4+uWMtv0Wz9z1gfiqSYjJjKP1Nhe0NbQqJA8FUOYsKXReQi9Ayx8+Ys1BR0vysDrp9olcmA
R8KjzpTcvBYk3evZaKBoSpi+jVqFWocF4wYDw+CZpr4mVpsoRs37yK3J6/vWCIrNql9xAxZcpxBs
TYNnMe3DR4SS5hW9xCp67pdsfzEN174w3IB6GTVgx2t8l3jccuwFLQ21lDhjGsKHKrT8u882ukIS
9Wu5sneIeE7WPPBU/XSjfmnINx3ah8mpu2uLDKbNr6S7UIqcSLjqUAS3Ad4sSbqDOPY36GbfPm0x
Fv7vCYoRn/QRnBxfJORLIfduRRI+1E1iM9Xfz8w1oR+OvMocVFGLPVV7jAlUjZcj5J+I/i5GKGKh
SPMjNW9YR+Ktuhk1a2lq/VzAZ17QXhfMDQf81zGYxc94FQq2iMHlJcn73uZSKwrDjtY2qfnxpq0v
GcaQCXr6qY07mAWRwgRrEJhD03mS4bzxD9Ckz0We0IFbwHW1Hr+g8Rledmsd6+eUsN28oCxooQMe
9m7mpgSaGm9jhr6witgflLPXpiygK1UEBTx9N252543r96RMeWMoIcYD9XWqC2Qe93w/bWtCnmST
rnCwDaGc6prhnUdktjR4F2cTmDsIDsZLUauWT3SK6YwaOQ1mA+WLkc6csbFEbwWogLhahTfBlU+/
/Dw+mmmOGvvU8Pimo+XUTOo/jFpcPtQHQqole3a7ECH2XVTk/O2MtJk4gwRSCKZr7Mg49vEjYW0g
pvehKglOeCzlM/4qwx6RKzdc4+of4ADUUtxJwdfTrvaKeO9qL7cPQDtQZT71WZnDia/e3hShV4fv
G8Si8b+ZPlOOLP832WaHupjxeWBWmM7bkb+7HOiYfdLt+Q6jflrOJAR8yneNL6sTN5IJTjxbbqxm
vSMoW6C1NcxhHzUznerLzoZyzeKQmRrzpZW8Si7dzJp9XzYzDKjLhWlDMIWNuoCvyuC3fOglgCdT
vfkSzqjDaR1JGBlWzk/KozIL9vZ4Fbmu1pPo36kCjH3RY+M43E+bB5PDdfdxqb1OQ0TUu1HVWdEv
h+WaEFHQhtcM6VcBThTWJN6kmBafmRKGp7XsTMt/olLSimRdk6WF2vTvCnjkXRr/NcA+AoNBUnTH
NrZjqfF+m81St3pFdBVe6FNcqx3i1FC8lX1XuA/+EEhAY8QimuDr4cmY6Af3R2CM5IXCOilvBRMU
QeLbfarECcKouUZ9cBmDGPO5Z1tVnN/FL6kz5N/XRWxKDjuQZHcmKQfmIuraehcAFGYW/kBUwvWj
at7O+ReayjZwtpO/2WS/kSEP+1UDp7TQPmz5luBpPdiPUgJXmM0W10eGMsJduX+yDqC2lKOlIFHn
9QnKkFuHVJG06T2UZNNCmUA3RTwzAjvAHb/A3yaFnr7TB6Fod9UvwEmuBXMVRsmRXMDtB0o7GK2n
qstn1NSho1W6bIiFW61HjtHzyJ9HegzLYo+/c3LuPxa1WNgAaMhpPMZluPRcD9OG1gwbpAay2KhF
9dn8PGBuUx+oVx982OZwmsLcbOr/MlV6Qe7lunOjcEcNKNR8DGbuxk3MfkMcbwzD1gmuVtpyIQvS
fwoiZG+DvU+dFtIDR27JwvglQW7OgM2oivmSfpYwLbBrnCqky/ZUf9sfcYy7helfaIel46agbkmf
R0RPMK1CXfI3M/fqN6741bl7XozaAgKxakJJyiPuPguCd4D1fGBTRxzfKArKoxgJ+I3uOI6lI8r3
QdkXeOKiBPqJFv4q/viUX2C707UyQtsvQoYt4NJRhzi1UatK5G89mA4/os8pn1NynwleBun3JQx6
cVmbJFwelOX8FZan4Qt0Ea7etOxrWbIdILkf7pS37qVa8f0KL6UKGsaFvNdQfGquF+TB+K2d8aHd
+VGqt6gE94OGRrx91FTIIpFYHW0ES9cN+13F46vDIiCBKhHQzpOpS63oOieYOiQz3HPwtaTthmCk
LoQagU2yKOQSuH/s1loqfeJTVkGZGVXttDSHWx5ORkIvansLnGc8DDDpZ8bLjDD8fURz3qkjSW7U
QjlRT3CrwJiBiWIaqQZJAYOsuM6bCtBiFDQGGNErMjZOxyOfcHLFuxjCI31Qjs6mC3efbOEzhsin
ggU6CFzBQl+5wF0jlW7rtPOGcxLWlleR/f7YWrmaANs3qeWMroqgnzKTM9Xh4QH/TEkHBmb8p1jn
s63caeOFyfsYxeUfhGHsHAvKOCdD6ja5+D074A8m1lbiS0A6mi+J/tsxjxADaIgO0exXH76Iw5Yi
VvbM7FRqfb/9OYylgkhZrlAvV+P2RO3XCNQ1lhhW1ySELIeNOxext3QyvAkXZ7yCC3fiEIJEDNQ8
MJLC2vFww0RC5z3b529AGhGge0moGU2VQfQhkab39uPO3Y7NWvowaygfRoz7/fMhYIlo5qmt+P29
bIZjSQFZCVLmKNK8DhF6h/yGIthEP8Mcz9g8XfJWYtX1+gsg7ePYmamt5EigY9f4N/uvXcBoMPZ8
tl96Jw5umnEub6TK+XbpgO74OwoDL4Qw+MXsJ76GT/r4hWGUxvuEtuwDH9C5rvzcXeH+DeeCbRhL
IeAFM/jKGtR9h5pb/TREvdro+Zv/HEbDaRe0YpI8NaEB9CMZq4H0q7MP1GIAcPccpEhqHQPvqnYk
rXbA3fnfEbT06kTYGmUVlea25/fCIOKgDfI8F1lqUbzUsoQZqwz3a08hGOYJcPLBSBEcv5FMXCnO
7/aPIjX4SLNfDbClbpE84QOCHsdir2QzSQByQE/W2vmWNKZEokj5DZnSSQVH0wo7tz5WSzd2Nii+
lrsdUO8jk9UILROKYpP9u53zFL6v4Bh/lCa0BODd6lXfEGn/8SZOhmhtsvOQIks5shH1uHidGZHD
zQD4pPCICPV282wLn2OMJULHZqRSMX2YnFyCVnkGm7q/sWF9wxt5m2JbMFdFI9ID8w0r0NyQ//ih
bPPuW6obkL3t+9gg/BuDyNNsuZZn2orQflbkdTH+LMUXP8JhyHqUbHT+Y3orCRlqm6D8l9N96pJE
7fiTNPTDNo8WN7OGWxavrixfzLUOZpaoDbku9+wqLEljoovMzarvZa3UVx5IZ1j7+hSFJcMvfhcU
gBWjmYgFxNolfZ2bUT0vzt5QlgDebBYH6j8nyV7kIy6b+hgTXrdjQ0R3sUWFlF2aiuKl0XrXjTNC
5P9QbOYD0qWqkSFv8/KO2yXQNrdUJN0hOXGRL071yGR7PyYOatJFDa65UOP3NBIOh8Q0am/gH7bH
Hi12xz+PTffLpe/fd5PAaxaoVX29/legWs68WJWGJHHkOt8P/r0uUcRa6Lc1GjlQjRESS5YqmQEA
sjACyNHU3MmTn+Y7e+4l9T6yP+Tni3aAzOqUusLEpWJqUjKv0KB/wUfygwgJWtYQYZ6WnIhMMcH9
8Rg27RtQrHXcioW7z+V0RwsOpOThSw5nWKwu53PVR9k8ynuMSw6E9NNzLZ/nztqjRBzshabTVYsN
C1f8qdIWg1dotFhXokHNyEZvQ2gWdsrX+GRARtIrG5/kX1Jnt3OAQBfeT7vAoQrHMLO+T7Cf7wCO
U6bgmytVhfuraQFX9idIgvZ+KTjkSARwXcHAjv3v4BYVTwalnCaghvsH9j7b/xdQeqY2vO6NzXkP
RShfc8z49dspOGb36vAiajiAyI9vZ4g/69PG0oGtdTLn6O3VAAcykFhnOOoZVi4suM8nAaI2/bMt
5zXiVL9NGr0bq8YshjHfJD/URYzKrkNolPsb17c+gHwzLb6nZeizGPtJ2o13igVZg212eOVV+uIH
SPLhKls6GjmPOTs1AHMQGvg/2+/4ehsHgOM6wxV7Xgt9qPJS1iQZYXQMT0XUE0tB/F9ijpWXSvur
AO2fXg5rbQRbL4jh29qoAqAfMjAaTJLyGEaFndy8oEe2DIwMqUxE86FqP0DHtXO2RCx6+fTcujT1
Q8GYzaDE6omlkE9u1QvuhJPwJ5D1co0l8vhpMs3iHlWadPCm3GNBhLChqesQc9bBwfC4bPNl/tDo
Pdy+pP0oA5u7LDgSIOLjzborbRnmsG16cTfd0VwX4ypaUtLcGtFNipYjARN7l8WqpQHiCHDi+1ud
0kcFNHIjgwJIiNgLn0hsBGTM/oxOaL6BtLnwUt72Z1Ij75uL8QRJFXUuQFFWx5XNX12kH1kVmY7S
ZP+03bxdJDKvAo7Bx1kBMm40s448nNo16CLKnCErRRMpMaMNl/7YsthdtQAiU5pttqSGq3LwZMCz
gON2Ow8DWmpqyn7EGi/xV+wkHdd1SV5AbKRuGwXcgIowlH8vtK/XBEGrv4fspBUrQJG/Z4gCF/a8
FP0Tb7vi4yu9AovMCCZd0nufHe8zvEdmzUFG3ZreTiQf/l/BqlKpmLmU15XveTQHYRiopEF5ewDb
1MPeXwbJnfLnAccNChBmM6Vac6fNBPZJgyhwifPU68s/6hhXaDv1MRIeMdSG1gEWclwiqJuH4Eel
VPnIo1QTh/wzRhLQVzG6GV4vid8zFR+T9A0vKa+3h4qC9p4l1Y1Enz/b5S34etwlj+gbLPxFZlqA
qRaSnql7SrpfKN/rw1cnDGfLjQYxmDdFfnqqFzgCNdK8+jiXfJ5+X1gAHzgF7Acva0U/JEBCqrqz
LPYfxcWfr9Ojj3gEsmKdz3tG5E7ZTc7qDV2mzi6eMPOBkd9DYRjhpqfyDGWybhStTMSM4UUGzrDI
qQIpensK/gafhecUkOPrDN5zZDDgIDy1HT/v9rx/kiDDUXFj7VycjuwfV5vrbBgvQ+TWEZBEsEnE
joYzzM9LrWNATwrGTlbUbhhghh0wxfSn3OChorj5Xj/Wl/wC9VbmXBUd7C2go9JEkZd+ExAlmBIr
QGzwFbRvmcccze6+q6qY12pPclX9zvzxs1KBJ3tAicLQGdqUNQ9GKcVqx+Fl5rOyuKb03uUGQo4P
3IiJrn5SZv2TiR0jQodzTA5QUcNcYsfelPXl6kzWMYtJIGGmo28SoAb1u+ZHhKD1S3dQ2Ma9M513
L+xvBvCIjRMmDB3qItF0BBwsPjQvpMdRITclIjvZjf7yeji1qLsY7KxO3/hgaVcudWe3P9mYJz3h
wA1iAGsMqjPietki8djt72gamAYDuVn5cndD5JdfZjZSx4yZdHCNkEoZYe7BtQBmgkxsacBk06r+
LLCXgC1QAHL7YZWN7iXMVNLsbdT0TgO7td96IObOZVOkd0wx8G5kuBBnrxwS0xMlJh6ovtIyWhVX
D/nXmgFJOQDOmHBaLcncKAUczprlMo5yoFn9jEpaR8MSKTceV3LeflKFmr4ruVD8CfgImnkDoPBb
98uPIh8AJDwkVfLV48OOecsp1GydLjkeM0Uoz4ErIBDsOchKP+i5iS7cxyRJGvrcYdqppj0O2wEu
HIoJ5MOGXQmEd7HSwOFdyM6NH+ND4GPZMxtMlXdQO3AMUMHkUEpEs80XzrI2oQ+6r9GF2mu2ofvA
yrndy6jecAKwfF6raUTGItFaXSk3r1pZxoNg5zb+dPBoJqBUp8gBWpMckg0CVRH8OE1cXZAQnj03
jvho2h/q0sbwjbvbPRUEQt7g8oMYOvufGVVn23j/Rvfz+BEYjtx8WXdEDw66uMNDrHX8a7duOL1N
7beC8Jya32IIv7sVPMRzbcSA/Y2C/xXzRggdq9rUSUmINgaCO1/OGuQDZ6tz41vlrccMaz85MLYh
jeQDpFkDFgNqUZINDPBtqrj5ONhPd/otukYFgT2gFoTLvCoA0b5LH9nxdUoq1U8wFgwYAAfqOwHZ
N4QuIyWT7q4FCrPtgL2Uz/46HWFOV2AGULw4DOwg2nxwoyf9XuTA120v+4bd2wE0sQzXEVyVHGSi
LF7wOTVmpXdxMCEh+pQl1epwO0TMTsr/6qwQcBaEkl432gqomItCRztlbaG/+7muS97w5LP+ssaJ
DF52qY85BeMBBzShW2YCQEM+RloDd977xg9ErxhA92pC5C0xuDPE2tZFfPFtN9e2JNrxtb6gy8Qb
ConoaBsKXc0MJYjo7BamgKCNZ16xzNOi+Qlv2irNTb63wc/BVh7fqm8mtbmO2RP7jAaRQ/byoC28
UvFfm7gPWmJelHWgSZ3Kwyvd9aPSIus2+3nZ0Q7r1oGTnMGFMgK2+AqKLgkSZvepFK46Aeb7vhtt
FrLs+XdjwDNskQ0l/66WvVet3cWWGjFKUzQjDY2ycRdDULiDeyEsW0t+IUOYZVraX2OyBfPDhXou
VHR8n3H3tpF5DPvdGeOcOS4MJ4AiDx65nodPOXOq0wgYbpoRa4Naa5zKONhM3eEA2jJmAabX20Eu
N2qwI+sjMwBQcREHZxIgbIirbNeWIsmGYK2UVjddODSUoVOzgKSCTmOr1mM3xIXqb55JFNu2Jtbc
JoAZvRsmfihOTsbBn23OUlNBf1E5JgMaXNDdMZh5r3vHjq1vw5px0BeR4BZXp1vjcIGm/lpjKwuO
3l0cJOdu/chhER088q+pqaH0vG0YzKawRfk+Xg4iPPSghIba5OjGP0d2IiePrboW+FnYaR7c7A9n
p3iJXkh+Ka7Zh5nCqhWHH4lMNqe8bVPhtnjapIywS9sgIOjx1y1GBzWPITjJ5FM8GhR8dD28L9gp
sHDqIfdQlwiSitrEnSfqGXyr+nel0ymhmNj9xxi2XU4YgVCXUmg/uJ259t3fT8ZT8FgrKH08DVp0
riwiV0hvY2g824nYExNl8mT1Ofh7jPlDMt1BkV2x/4rIfNq+RSus1T2gdpG0QgIiWntBdZfDzuvY
v5mlIRnhaUsEhADXbSDMOLY4qF9QFcajD1gstLwVQUwCshO/9+VNtM+5iSAPTimudOh5TgzosT3c
EJMUCAFohiDjLGQjaqU1Ph43sB/PuMu2LRNfLCt8MlnXsoWmXi7OGYrkqT/mMziJuiQho/fQ6XH9
XaSQvMMlcqZZPSVENwEsdoZWfiKeAatyYfkhT7k6RVm2C2PNC+dIUPtQyEoKrJAcSv54R/b+1zwZ
ZLGBLGocJXH5/UbyN9tffbfHrPQ/Qqv9vQxk1ZencrTX+4pyZtVb7FuKRb3luYX0t7i7Z1KlVSNo
TMbaZt8AwzENcWJ+cmWuHyGMA/C/htT0PlZqcKEmT/x2cd9LPjkK2WKYhfDtaIRIBAd1hHJRoRz0
PBl4SId+tn5uu5ciMAm6oKW5lEabREKifvWwyugBslNX7KlFXi282U9yR2kTa5rE9oXqutGyPp43
g22KQZqA8Wzx6jLcnvbXGgpWDCnOyPgvC2lQrRgwfN9UJSi/RUxWZzmV7ujHAxOJwF5cCEs44nZ/
LbxrH1bzPDgX2RcIrsx2C6FfhjGeSXV1rDRjFMNjIWvM7LZwFz6GjNsOePDUJI7LpdJ4NhWJRv3P
gle/UfeO3wJP/kBxs5BVVsNkDkLEoL4oJZTn7nMgxmeG8UsHr54wpNeavU36pqpFnxq58PNStV8t
QOBNHKqAnEc0hjINRRP5wORGT0mDWLxNS6ZyvbmcTUtoNdwVkCsuVkz/Zhbwq4FV/UO+Mr1nh93n
bVgzkBfKa4OyjsWer/MDz7yiopfyYwxqK0+wcAdB92BnRqnbDv2XJrloXQkO35oqWKI5SJyl9wKg
/Xzr1OTZmnM92IWy1ieeHGSIHZeZif9/SBraKk4e7lc0MydcO4Kwy2yToq71ZEaoamyMqRwpMZPq
Mif2TqBSuY8oDjoFpQgqUAR3vHF7LAQUlAZeubQP7RFB6Qb+ePcoi+dhLHdLsHbdaX0/h+W/MCku
gAK8xs65fiWFOSy48OxblJi9dCoW+DWtywlwZWPrPObkHQ5mJcvxyafjVvmOE431gpFJ7zdGHF+V
OKeMhpAyRyof9YvawViArECPbYBabqtjXYIoywiNV04Y/SvlXz2nxUsrmTcl1N35td+ZKHNj7/Kp
aCTCWmUlRDt6+Oov83Hb0NkhDS1T7+ERRJqHYHwdDaiwTanwiwfvzV5fHjf7J0G7q5tsDCbBppZY
r9APeGRm0tnlZVnOukDku+H5J0O/qDbg1mg2hB5wt5iHckmvR0eL5vyI6vm4bgfcJMyhjIyVvOMu
Vg/zw0pwsyREKxUOVc7ucgUeJVlDr9b8fP8bLx963pkn/Jz8hP2ge4PkiO7vjbpXJkknCXuB2VZD
RtDtxMbegvlZ8IKLuXedTA80n4y+K7Xb9OY7LcFA7+eDef2cbcOpm5K24gdb/0J4t6U2QqLJcdb4
OYTzrLj4EH7u9/XRFifB3g5dieXmkTNNd3ATze3to0mofIx9RaxcqBsZDAgcS6Iuj936HfUZJX6y
4mSFZV6pIcIo+kaX1VryL5LNTdwLaJRozsDfkoGP5vMJIjND/yGSJ0+rXf9gM16rabb2IpU6uN+Z
EvH/aEp9hJXrR92XSQt06KyNEqdWlVXT9Yn6wceEU3fpz6fzkt6sRF2lr1O51Geoz3lhXPER8BLV
ve+5i+dbs7XiO/vaSJirorzU2XhHdNFBRsQnJzaAUbURMHHqMkjzqmIqMia9+tD/2zrMXBNlGWqi
PleFP593CLxWAXiXsrplFcu6W+QmQi9IB3kmlTes4eir5a9wAkRRjIAaBHOlzsqj0QAYesJqw4Cq
J/rT5aDbTcKnI0Y7QDIUQM1PdJ9O33G2b2BDpEElx1Uh1//+LvAtuBXvimqeTWJPdZiNM7PDC68j
aqpmdYUtALS1l/oXbmUz01UaLt0n7biL8jQWNjq3E1JA+TyBI8/ZAmXPEvI9bsd9X8Uv08Awa7/F
UrUDErUItaFXLl4QfedfbWhL4hsIwqR1rEeBlSirWvGixlUnv1I5j9ugHPwCvEzifF7k/u22fmf0
7pnIIKwnhjcJi/wiusKRhontHrtoeDhy6D+LAt3wzL2AZub9us2Kh2JxAQ20Hil86RmhuQrxoPeY
wVJCc3x6FasjYw94+8AqKnou7lfmeoe+nZWctyRDYZIFJz+ltVt+34EuZiyYU0y9qVbUp0IAQNYe
lghy/YOBcItwsS0SkRQ3QBDtqrMEG4473+52j8PSK71D0Stil9ES4g2bVeuG0rEiQs5q0nbF/xQF
hcp9a1Jz+W1xiVhmfzBwA/W0cTOkj8TxTgbpQn4ZlW0gRNXmz+ZN725moeIZ/Unn6Co5OX6mWMcA
EKtyXSi9qE3oflXYKDbPZdtt5QJteZ4gZDTUZyk+NrFolRou0SQHuGvwnMNOGRjmxqjzA1nBP4pJ
jlhGD73B2Qw8NstrU22snI6WfqD9yzQsQ0hkCPEXABsvoAjZDenUFQe8CMIdXrMGJGDroTQyH5na
c7TiZ6loEOykfYcXdTgomI+CIVv6twTavhETvwXfl+FFy6xLbetm5fmt0vg26MiYIi8ijHXQNvDQ
nApX8ejkt7ttJA+CYGTpa0s/K2RB+J/93z/dXlH/0IRCjq4R6ZzOYX3ld/+ErjO0AYltennXwBFj
QreW4FQlEzWuTkbEZlW9q/ZAUoeXR1poRrH3G/hW53yFQP3wyFkhL44Fvric5VKX3Xcev58d0RSt
PkFDUffeVLvABIZsenTdnxGya5CI47cfF55lXvMZAogJIQFw+p7yBjBI/24pCadteUt0QE2fKF3r
iQdgWQ4jH3ImDqsRcpMwraVfba1E82FzLVRQuMcDvYa+tJXyiIIXTHw9dOqu8y0l4rzDdwYvr0yt
DZA7EmyEtaezHtUp+f8jvaWLFyiEYRExV47yQjXBhm/k3yfXAfJVvfVMSZv8nP5Q7JYdGwBp31DY
utEPuCfEHDIYdqyt5Uwr3QS0xFaJwJ0BEj6BAa8UTWdP2gmRFQh/F6IrXOBNfoh+8SEuFdNztiw7
aXVEpS76roJC3th0P2P3qw/YC9rXSqcJT6Lh7sfj/UnvK6RxdIGKpbnsdSKPWmpb7BQL2JH23F4D
qaQHT2L7uth2AXhY0U/+BILjtA9buteeUFJITrNqRW39niV2Js2qmbcqRjNwCdCRY5Rhc5Gya+GD
B4iDBwZGTsJLmZa43eE2qQcgTZuHvbnB/Wa8/QAgxpcB32Xpk8XVf2UxYxQti5S5eHJ0SC76jqOm
QD2cnuXNvEGuBE4j3ukcp9TdmacCpmMdSReoONovDrpoxIHlenhJsilXrh963ErkIw9kcKPUN7vv
8qYad7sMh4z/nIP42iqOzolw1lMy6ZmCs1x4kphA4FrZ9OUYyTgra+eEvuJz9pJxBPphL4o7Nbrq
5bknHbc0il65XXLO446phIULZgGGaT2FzK4TQ4zOiG/12PPU2ODs5n4m7UJeBbyiDQBSXfQGybHM
vo6selaNCf6iPOpvkt3sqD0LBHcJi7zrihPIqIVfTxpAY3eMknoFZvyWjlMJ+ccE8nimIK1X4SSp
FdBhNU294oZxx76Z5mftkm0ZdmR7RH0YU56OTmPBYFAPcXP56cV85ew3MrarLvhnjCV9XQpHFioT
o/tnTpmdgnK8Cz9Ktmmhih7ceoslINDZx6tgU30a+fijDnQZ7At6cU1Pv+ixOivf5b5JMveACuNH
1yc0RGjf1VtcwQ4NnhCr93jbmNiMiZPfb6K1cAYw2f0WH/SrB2KM+K3RbwEljaA/te8ydqw8z1w8
xyKk4JkjDZQlEg39kSCmQGP5cGnC79yujpv3HNQ7XKjWQ0MHFrXbpDDcPebDu+I+gzixc1VYjBp+
ecOh9CR7M+ja+mhuxp3pCPKgGpjHaMVFn1Eg59JzsFJdDnwXLB4cMYPcxpfIo6DRvWHNn5XltBgc
aAoT+95LhWqZXUTpBUtL0PhOKPv7Xy47WbuuMaBKgANZSs5BmDgaN16hvPDxLhg1wD80OMAorv2+
sCwXHYJP1+BmqISsH0DA7djJWyrlI5RafZYgnRKjAxw+N885DCtGKZVS4//O9oZud5acwK3j4Yd0
RLR/cFCxPbRaIF/oOrsb2vBagU/jL5X9FRkl9NTm6IKTGwn5cP69CbMGKuI/8hpJo+zt7hxU3sq8
VGozkAUoTxlvaKyXUgN4T2Z9AmGNXFNVXYq2TP50a4xY9IymBgcWhQ9BoIMOq854uoQ4jGwvt5pZ
M/Kf+gGhpFJX4q2viBFlk8x8C33nLZAduDopuAzEyX4WA14v8Q0Bv/xw7dpkQifb24neoPxich3y
OlWezxks+Erwa3JSI4GRsNFpMHGsfpC/B3koovEHJSiE8a7RyB+JEP3oV7rpFFAWK0HPPyf10cA2
TjRTKvLMCM1d5e2s3DqpfNqctFcDN9ifgLYv8/Nm4g8P6R8o54nt7Kv2pELFxMCt1ekjzb2YYcwm
Jevt4uyLbChomvxxVOYI68sPUfp9UwUZ+GMEzUNd+wV3bmS1Yu6XJjbrU0zWIxpM5V+H9ARZtADr
LoFNJO2MvvslRBbS2DtHU5AdExsg1bCCrKrWgJSmHv0pRZA7UEpxpBCGty3nPP57flMZSw6so+oa
7iw8eorsr5J3cpfh3ziODgh16/epTSPRW031uOIpTjj1Hm6GPKCtMRfBJ6o30E7H5S7b8ighAmH4
T6rDaSqwYYjL3O+K+QbmUrt5IRr7M0O3iopKZzV/zzB0GWEjjvyi2YeDD+cQY7eLRczpwABNUar1
Z/RDqL+DP2EgAZ5AHHItDat8IaobN7gy3kvmRp+PGJQBgcgDVGTBkXfKgLBWXL+WdACxB5xmRLvQ
xaZQfP38cy8m+7U/u5tL6ry2gpGNu73TfdaRZfImPB+kUsfuI50FaSNAPwdPt1BvhqKpJi29dCrT
4R4SMC5wBkY0KS+bUJEY4RwUBTqk39V+EVFdBGnXYISRgBgrqxHizXlfcgD48B0cyyEYW0BkgduM
skcjDLFt3/t9k3H5NY516yhHH1t1/gJMI/Y1Vdg04HWE9dcQqkgAN53uRAPGAyZbc2QQve+hFbSj
T8Jn0H6lKJCTbHwuUZERD/3BIO+DGujaCPjN4k662JJ1gFVaoqP3YkjKRRWdQolkZArei4hut4RG
F8Rl0oYMEMvwIrZsPIsmWYvL85dj0CYcxrVR54mNTBdGQKYDRmb1bJgntGOnSznpgjaSIAlLp7Zx
6R7unCHsqFEgC3iFwZLiRiQGHWG1E9C/HLB8SFX/gjJdlkjET4Atj58Q+Hr9Ir/AlKoWP8m2YGNr
aB4Rb6tXt6jO0Ld3GBGN6MRlEqZ3dWw9mHzS9GOJ+x4B24UK+yH5KzThyaTVzIyoi4RC1tPhU28n
Utp3EfnIKPY6LbfNYki2S28/wSOhYaZTRBewzpMDO+qtud1yDpB7Fl7uiJgfiUh7Yq4pB40Trtgj
5Diq0sJOMDx7noM+ixHHu6tmQovs8LVGo6p2GDAGOV5QPo2GYiux9tufdS12QQk6yxxFSVIVLmh4
f0u9GWtmw6PWRVQ4uhgGDQIsK9OwHR35zV9ch85C4KAACT3mSn1i1BkR78ur3ueHnlxdnfkxOTIL
B9DoC6LpVun3DG+OPM86Vnzvgm5zLBVbsOsLexnwBZ0gw4S3FfCBUz2mQBwy7Vw4E2mCaa8vTIfb
TYTzUXKwji+kzN1JfR9WtwM2/KkV9umkMwreqMw5z4v30izVBRrUiHkTokoPGcQQixmDTWzi3gVa
3Yx9Nn2Jl05LZsYQsrAq0x6PUfMluvZ6YY2o2KxjK0zZjTqYHNgy9iXyx0q6mYVDuV+CS7evDVdD
0v6jUg1RGpDcRAcTtSLKOLXLnhR8G4anBl10hWQkczw+QZCHaV1jDGP4sgYhIgn1NJVP+RitU6fl
q1uamILP8M8ipzYf/U0wX50zeJ8tIlj3oGPYj5uL2HG1NVjZwXhQ3y5Vp/AFhyY5NNaqYcAbl68X
P3ihwPulOcHLCb1nRKVPgeN0pggbcNS1MMWWcZUvIIeR+AQrEB1pUGLKKnVVlu+l+4mZuWGgt2MI
cvl539KA7jfy0eVn6yMl5fGvrjXDRjYFMfQEcP1Z40nUm3XtpkValt2ruTD0THEAEiFalkiqF4Sh
BMvHdFrc3cLNfS1WL5rCyQQmAZoeg7RR3r6CyBgdDV3Tcv2ZYud6GoqlnqmdWLXoyXWlBIeAKujo
YYFykSZTi0EwNDU3Th4SzLs0P0Sm1T+hXdPFIa9SQbQUaYbsVzv2rR1fmcEKXSjvbiqDa6OoLyMy
0SG3qRrhocDaJ0U9gBvg8CIHJtvw7MNIgeWIsGrs7zTyuoFgmo4wFOITVN9JY1U7TV6XSvNXrlBK
sz5Udvy/1/Ypj/v3r8B/XGUzjvhcjCqRfqj08+EHSAFXGHnQVCK84MOYSQJVnxF0fLW+Cq9xkhaO
ZPZ6VR+Z3EIfpo9Q4W5IsV/piys189+bpJFHDE3z85JLg/jZNGgl3HooRQKNudfORS3ZwpWd4fVT
fhy6GKbHBNigxXiwNVJKZu3Mcm3AG0i7LvcnPWl0iBZVqhHQz1n+pJmV8N8irT5qILtGHgjdL79x
39UWM9h/i0adwV89/OECdA9jxUrfBLFESxr1gGzS3J8q+TDkVwe/Nhiulee2NjrxTa/kTCu2Ejzt
08AcLCw0QPKUJzkPaG0rh8pR3OhTNR8+5RXY83FJXz9HU4Dg6I6EZVV/JiHs3IN74Rl3INmlBcTl
vQA5kTuLVOLepJcVzhHAXgKJTMp8ztZkMfKSoGB3jrVjmtqa4qAsLuvObTTgV7KF/VDWSQpLYf2X
Uguur4z0hZ9dJJtLFHZovNaP7V9mPqfxKxTZ4Wv44FA18Vc9Ww8/mPbmzUPMYzs9HsfVG+K/JY34
CwAYYcGZNowPlTPgyvLSsdFGiBTArpF9P6+P3C0AueCdyOQeLNJ5qQt7PM4n2e5Rb92btRhgUoc+
PM6l6hXCMpNZn8oiNs8SfbjJp+hLqGXPg23b58nkdqVS+yNs2azZFL6Df7mXTeioiLLS82mcHcOd
ciofSOYbP1J3OLmTXNPqVAurk7nC7lbFIb1CjRpMoHt5LdQ4TU49A7vUT7xzfUVTRZhdPwVxfE4J
KWFMvnKhB2KnqWsWWvS4E6hSSDjEy1ypgIkJ9W1KB8T5rXo8ynSLI6nORFoWP+ZX++7MF0LGg54v
JrwtKsARgt3P+noEa1Q1ZruS/760qWkAHsZFYITqPP9P7W6/MdvbRSiB7FVEP5qB/GnRfRv8DJi6
2k4RTa0wBqEWKvky19qsV2EopiyXQBwVy6NOcWJtoKn+K1lDDG0Jz9pW23Zcein+dDS6E/MyTwNW
QmL6zc3kgdYihiy1DEjGIEi9JM7YVw33P4D73LKIs/5eY+G7EEZhwkUQYvAf/kbQVj0tj5nCntTj
G3XvO4KKRBe/lkqP3z6EbW4wGD8Ut75v/N3Zx26qIhv94oYe7gusz8sgvHsWl7zICDFWctFbHMni
jg32sE9CCnyK+DIvUtf5QnN0IjGS5d1sX4BY6QB9ND3VYCPY/P275QkiJE3xvfY5JBimsJbnPZHH
u3PVutpHzBxVt0ThnRTDaRcBrMeyuS2dDZd0Pxoo2mXOhGfnsTkO+6c4fpD5Zp7+AZTqMXgVy4WY
v+XAh+JL54lFOfLvgkjjYTT9UtojFn+UZYHhPdbKnoOnSYUpqu9ruvDOmtQlA2k5w9OBoeVhz+fo
tWuk9yyst0IPBmiadQSlBJBoeU7EOshHu7GxdNWpAdVhFdwgOSIhLaR8Nuramd9bKAxikFrMke9x
CbIYJuli6fN314rUu68QEZAuvsWeF5+4WqtC1GbdWUTf15RQibQd0AMUEMA7etLZW5l0j3fYOzJY
f6c6qM7TUpVcMcPj2TmsjSogebABTTvF3csiKfB5hSjKNqW6VZHYGDxNq+E4cFpI5QYCgCZxZgOR
ws4gVdcK3P+g6D0LFbt0WrMrGUN/z0FCyK0LF2m2oGnoomkbh0f1MiHMcX+JkAGzYdV956DEovUV
zxsyTKJuEgqbzpIvGKSIoweYSwa1lV8gxJuf7JhrHt8D0XWdkgkHojFxx1DvU+CfDgEjB1H5N+Vk
KOHlUQ3Wwo4YHwBJvKr1k3f+JwKHtWxsUuGwvgXJI6g7/WdvW8ZLBdi1KCirLsUmBN9QHNDABbQN
WcVi0I9kVy/LvuNSk2k6S2ptqfhdmH6SqTOZ2Cm/T7XHJLFd/o5sLzeMfdezbke8a/MA9DjzKz4R
zIXZvEJr3crm51YCr7M0qoX6ym8aEfGW6TrksY4Oyd4RLrXVJ+/sQAHE7SPYWBmdx7NDRTXSSfjt
R74DHlWygDx320nncW4gkqTCPT8fVjNUFzZYSxgeq/zVrpj+4R/M6HpJGtYtnd9DyOtc9IDU+jbw
TlxEDZUkjdvGbBkXnzhgmwDWsHUJ9Po0uINa8fh7XNZu9ZZRiIecnTPBHat9rIRxI5dhatuwk82D
fjI6DYBhBBirgcK1MNZL0xF6/TpF/WKARwjkR6QQPEyhSAZA/7h81h4JFJDGugTyBxUjxVVgXKgx
wjshA8BQKvPHFc2A7IDjO79CZEUNgjybRjyPZnbdwpDZQzTs8TmsoKgs4JFBU3oPEensILLmaRFD
b/E0/cCkglTpCVz1okid4ISypgwgKPGL84qhAfP9OaRCLkDblAxCr+2lWPAomLHpKRXvS9lyV9Re
mQF6wVk+XLc9C81UskZVp2OwWI6HvOwC5hganm6dWndOeDwpciuKhz7GUi8l860NPU3yrLm95DE4
nrFESh2S3zuAnv/wf06qhBQSTJ3kmIBNhw9MtVOypWTdVf0H7uc4/x4vk84Nwl78DVYYyoyKF59+
39LJ3yglbuPz7tvNHj3J76sVBla7lwdAacsiwRs6YQULwmCLAIXzDPGXelbquKdhE/dUbwkCNFN8
wHgBVM0cjhZOl7L8G84zJTMR6qmHUrMSxDqoQSclcCn/hqVZ5z/7viZJ/bL2cuIkGzbhd9fR6QPF
BvwqO2nor0JndVdXG0RU9GnggT+sLt//8Ju8lFyHELt1ImvOtjCdyOHue98HLIFWkrWQUxHSdnbT
qQ5OiOL/S36G4rAdIw0JtmojpOUvMSBEG8mE2HDzjRki6vWeXfhNaJVhN0Nfze0ETh+omJtfb3Uo
hdjddl5ZQvQkyZ15PGLEpYzsBSRnqhrtyyhiSFGvhmVMgY/CwqNlkQ1oVKFSP0RcmhCzNG5E0sla
jQPHwn5tQOONEDPQqzNRmlyrrEWkx/Bzo0tvDETRzAqr/IDJLE7VP7vPW58Lk3aET8TspTDgVfjm
9wK+S3WXMNZbCvVSqjMtIO6dFuWevuPz/d+f9/AI11BRvvjvvoIBAx1gawlFZr2NGPgdyePHGpvB
mvcSbHK6x2ktCzgroqYkiqlaAqmncTtjFA3fxUkyJf2ouaVFn39MpxJNlXSz7HfW95PmSClcNXdD
M6y13Wjv2CZ9n5NpE0COS0MBegwLbuSGArwKTVDQdVyHO2AO364dGBPDc9NOmVZbIM6QLDTpekzn
wmOZ6cIM/eT+WkS+ShL3IFh6DQ8bBN+HoiSErxKtRFa3JnFtl8D64SjEC7Gft3De0KOTiFv/Npgs
UsjBYaBkN0LBNWrl0mymVCIlJjJ2kgHMLdudqW9sn/jUaX2mnjI3t94kbX5xbLchFK5ui8n7hebh
KhUPxgJZP1r5SiRzxGzOvBFTQWWnAV6qrns48nEpuCwWa5a6uTQ89dWJ0hEw+FBxijYDEIKgmiJz
Hs2+7e/Ts3niPl0p8fNrDnaZ5TEVsrR7VB7Cd45PSUYorDbsok0MLrWt0q22MdhhdPnT4ZaBicNQ
gdEn8r3frCh7vPpoqjOPsXmbuDuJfLTldyRMSzomfBHYFu1ffa1dYEnbH0gRMnIhbDWztVwl4jAw
BdEDu02JJtnB817fqXdmpYEl87hnzxp7ev46YmVYd7XzQLZJyu92JFQKL3xCRRS2nsULeoQQpRQG
KXZ6d3+6MkU7PJvbPW61i9ljkLpWst1aYZFcQM1LFBg43TiM7+CbfzRT1joxH2BPQ8RUnRYTgY5/
e//0lYF8N9JU5GOdhEOBhq+A3AfHeYFc43q9cEH2uqcSLLc2sIPre0Js5gHGcKW/53lJRoS/4Vwy
94xtl6CAUu9IX/LfRbaq/yKF+ETwUnxhjFDFzz4JheOou5ye6oFu2NZ5NME/SY2sGCRvH/9afog6
EQqAmj61pmcV9aPRVr9m+8zykI2kujTA2nt3d/0CLKsPxq0i3+j4VesmQwS4S9FEmnec+4kosERG
o785QkHbYdQThc5pL99r0sDG9xdgUIR5fBtgAzV1bdAkxLTXvszUJmo1vIScAzNgG7Uktdg6E3Ui
/qSKh48LwNbYVOPgf6yBa+ZsLYgmIo4AfA/p8HydPLFuzmKrfbOfp0qD6PA+Lekc2GNNz723ts3Q
vuiwVWh44/1hz7JNJnjUik9nWrDEugNF7/4XLVPmO2AxYpgfTdsKSf7oWAin/OYnLjFyLU7lgUih
JjDnzbAqmGFF/UeWEM9DIwZWY8r2IZDp9b96njIAWvbqSlnvfL3aJ1pVYolrqvA3LWytjMOt3miC
aFwChFbicWeBL/E6rZvz/Y8IrM6chknWnHNJXQwnGkblbFuP9obeO0RYNshR19HLErJJ8m1PuFV2
QtGnLKJYOYrdjRUZxHcijKDlmVkP2AzPa2DKCFnqZTKLFOwsoaEl67drsdMSNpsXnVMcIBnbyLxY
miX0/iMxkEtZcpkEV/WPBvVbnSqFmGfQ6atiNfcF2raK/uHs4nMltnUqF2yPOyGjafZ/334/xMmg
AveOoiAeATXZT3BsK8dAOq5/IEhKSXS6/QAjr+XIdvNzL07xRqxDJ5oYEK4E2fW7DUS5z63tvwZQ
9tF1Sd2d6668lvOGtvZwDtRTax/U8SQAaWzB/7EoSLf3bfWly0PMZyqAixeueqfN0tDtNgfaSqDy
SJ5lRBrHTYC+SURFeYuCd7OWz1ZhwCyc/dxl9Xhd04RIs+yslDRxVGOTUkEb9HiXKCoy2GWBEmMB
0PY5eXXGZmFbjHwAjF6rJOxdTMWe5Ot5zJu5Nwd4H7D9QkEsT7oh5aj5ERywwsctLoDPDQZU33VU
Xv96gxg4BrKLmhCKck7JTYu2PFe06ydkI9ke/UMyxXUEw7/YfCH8mm7KhQ5U4Fx1RMlh0p8Y2ltF
6+ZRhYCta6NNUWQcRYwXL9/pVhXE3Q1Zp4Pe94HIHx/ZT9ni3PBd7JAQrYveDHRNdqLFdnhK2oHw
+8OsrgcYiLu3EPZ8lKmM/aBk4N1V12T8skVcDQL0f1M/F+sGFkXSN6Wdl0qSZYHZDvvhyxqqrzte
6oGnv6HiTNMJjcUvg/QUFkS91sN6nqHiE4D43DW9HJRfD2/BJ1enwm2mEu86HgzbPH9/R5MjwRB3
rUFlrMoSp/k/mET3tra8OQ2I3i+5TK/y1GceQFnPODpltsPxO3uw5odZ4JteGaitZXyimsYyfVuM
lBoh0rpTrO0Sxw6jCcJjgRjxT7m4gr+Mj3jBx4gkyxA5YgHC2IsFtnFF/PpuxlAkHeBoRC9rZjRf
TeUcJ+Tq7EuimR8HEmS6Aaa6UN6zmprJD6bLTC56mQYF590M++/pPHKHBVT/EfkIjBinV0DoENUv
EogsNRBH3pd1CxwjhZF9NAcRTKiuVDobyEJjczrsqDxSu0MqwEe4/Y97aIBVy0cJqNb406Xiitd1
VbBQ+ktk6ztDfFJS2AjGE88bwUhB5uZc5WpwTcf9gDmlswHoZESAtSaf/5UjeMPso4bllZemQ5zs
3JRq05vM4QUL6zrOyTCIAwpiFGFVI1wxzflrYIv7IijJA6vWhCEUqVw1Kx8LL8zhKEmqSpaxYU+u
W9YOgZHD9Wtk723Hzdgl7w+U8hlEDuPQlpvPyH+wZSN3wn0tAvz6wxkhoE1PQnsM+H1G+a7oNDA6
9alnk/No3aH6Ls9VirKGRoJC65Bc3gdnYauTUbnWv48Fel02GqoiUEBAsF3A6DwxxflF15SbABLr
MeBbhdyfHmSSIOyxeNYU9sM7VPlJle9JMZ83ZE8spjhMYimB27OEwldKn5biNFImn1qmtzx4dju7
Fw1WNqbHzpa+NmgEVJOXJWeVY9WXYC5I+6uQgtyS44K0PlSCF5VpJV8bJvgFsrkU/7YX0mrpS/Wc
HtYtOgVe4+0Va1Xtx+JsUw3kP/C271BElTOY8QgKACn4jdU55cQ2x5DvHU+uoIhi9Ek9svlZyHdc
otkJQcmJy0uYZoqjZ3WM4oHx551iKmYrBVSsuqmgFEa4Vj+SQnf+pxkXRNhkJBafiytK2s5lEeXx
bD+pO21GB1DxppcR2aJipS2cFalzd2f1PSXCPFMaKBzsE7pc+Qt9GC5i5KjxPF1wofMDemCfe6fg
emzlqdVM+wQYaoCzCzvwC2O3VpYeD4cVwNcezfG8JeOBLAlcYF7deRlW+5pxez2bXg4L7p8D1INe
2mFLsHVEKhrvGE9OXyN1bR7ZrTWtCaOv4qnp3e/uRrhxwWVmxITN4lahhUMA2gCL0dwUyNA5gFKq
wTGOhdtNqKudjG50Y1EswZaDXRGXDodAopsg8IJpUJykBlLPILOFDQ+3xl+giWIBzKoPN18TnUTt
5DSuaZ1Dl/gBi4QCK2PLBmh222DAYQJoHLob0vOcmwmRSRm3P02ySWaUMv1fXGzj2gkyGTgWtgnp
p3su/VBRf+fFtm0maQ6DhMPFTEZu4pZ8z7JTO6eQ3tQXeAO/wzWGnlzxTAjWWl5UeDFNn4VY29a9
xDBdYLatjKCvqM9R8FPlgmg2dl2nPiF/MK/tfHxqWQPTODvl5BVYROxqe70EDxhvuELgQm3WPwIx
B5YDhqBfUngrJbeXnF9T8H7/WpPyiwiNBakAuikjyhmaUtM/tdEX2oPeR/g/+uwGAjvaRS27BGRT
HFM3BWnZhZyoPI2hPvZbBMSe0wtVmJ5BSPf0mOJRebMCR7aT0le8GvuHODpXc+hseGWfsoq109N+
q9XOzZUNjmQgB8pyp/yPSij9g+X5O/UzWA05MiYvvXqFxvIo6Bhxc/ldRnL/Epq4UgQJcoXCulFo
1tAgWLMKqHo6yK4QjTOoRvykPKJR51RT35Mvu/f4m7mltAI1042WQLBI30Lxr8FGiSsl4z4KABSQ
9CnRfEkMawWVCw06qduggQ/HL+S7ZxQ909q65o0niGf/SmuhUTpbATZ3wD87pFt0b0OkyMtJ02a0
aILbchmOyPiHLkkRlUczZNg2BzjXDmdbmTv9C6gsyXevArSFv7+SIOnmfXcQF27zAnKUb1E9582y
eZq/oztnmeBsWgBJlE4Gyyv0hlgf7NUS0vBzK9x3/T4fo6sEPCy+CNnbsfVyFgWepQ5wOrypFEPl
RuGB1xooLuYvTNhEPbL5pkgSZUej22j3ABlR4lKe1elzVaeltClYKY7uGLZ8Zv241WE+xAgN6xjz
ykSLHYsihTyK/HkWWcm0mTrWffXBEC9sxL5ftwpNp8ikZ6W0oB7J9eHNW9elr7vg3EAxzxNQW+sw
GkLlAbgbKJ7niX2Iu4X38kkkvq7TvkXyFFVK2zFE7eR5C51W2dhgrjCQZdE6/G2sCFK5+ivEbXZ+
Bvj3WOCsUvOKfCyDuarUURRib9/TZw0jtd+sQOgvs99m1EWUOUyo3RML1AqU7W9tlet1il0IFHTs
hPSBtAMJpMfi82I89wvt6THiXxcUWt4z0fxd+34YeRfvyzOQn62uVrbe+j1w029vJKhsd3ac9uGr
CqlatnfLeeuyPpv3hufxj75LoV8sxkWlads2rwSrUNRhNy0Ka9hyQVXfsg4oWaxFO1hdQxLAqvqk
uuxowrm0j4o0xx79nJPcwX8Inlaytumkt41Fb7/eSdBMKS9H4sLpA6iPWJefgKX6CljRTYLATuM+
y5T9Ea/f8SGY177WOLkTBaFCuIcVCE0Jx/jE2LQfVNxySMA12xWMSX8JHJeIBdrVaSZZYWhrm4rR
bYptseFXaikr0Hiaryc7S2tsuJ2HCImzcv7O1Bjw65ZLoJ7BQrooEER8bh08IZRHmVDF+cAduS+k
ItA3CTL74f9DfJSn9oaWUVRnmJaK/bfnxoKvXqgkztLUwVjVXr39rJmpM2ofc9fkxTrn7ocAwLvW
2qkVEzjco5ehryGMXiOlca3oQ9NRsj3IhXtMA/9607iVHoipP69t/BU4pTsE/5kw9Z05a688inSF
eVJork/Cu0tQ+CWUzvX8zfaZoEgQLOOGhhGkc6L1D/nESuS0lK1znqBaEkJG2VuX69FBloCICvw4
e4xPXVangxeBVFrQ2qqZ25IvomanEwSjt/5wKAlFFJgKOWmvMrgnDUZrS5X7hIhkI9dottlwPvc9
J4P1hQe19lNpDF36BqZo7gzUspVPa2th8PppH4jYQ33J4Sx1ze7Au1REvVWhwv6TDAcFPlTaeVDW
KAjoRZcXwFSovbpmN0quJ+q+uFv4YRGcf95z+5KnKUSKk2kUQL9509mureJ5NqXU1o2GpshT3gLc
zLiUjSWffEV2flQhdcZ0tY/P36oQDiyHRIjFHFTtnyzWMY2bamc1vr1bORCApPt7isD42VqybR1v
/DfhwSlfmv4p1wLz7Hjhj3oNJpXX7rtDA47YnfTqBxZzUAbMaiq+Fd6t7GzVUtSfyJHoJ2mFrhp8
/TRJO32Oq9KYKNQh8eMoR/gkfP7emIIU+2zJqE5OKmasI7wAaJm0XLqh/Z2C2M17SCwBVlZa6usE
gaiQA+Dzn88ns+/oPlreSvasZED1oUwcsVqa3cnfiE9cXmmTXGaGKawfL4ZvoceBfmbxYwzYwJ1Z
2iC49DnD5s3XcU6Y+/jUlJN0Qvuov6N/0TpP6sVnSpsAKto9EVEaV2CpE4zkF2ZlajivoyyF+WxD
SWlKALXxgiLMDSLB3nfHoqpCjs2CDhGLgChjSQvJJV1xTTb+fphBJYcdYAetki1fsoxT3emfHYaI
qUKCBgBaO1jdSPC3DZUWLuFk6oXTjNwNJmQb8zcYZpHWBlx8hiWm/XXZQtgpQG+GLsYTERybtZdv
aBSoU16KRw23lf5wMvzq6kiGPwCcQF1vOmW7sW6ZaUJMm26luj+GsF+hAfke+qpEqQd1bfPN/nmj
pY3b6szx7RMNgGOs7QykqtqdKTIPaZeoT2KzoC++v4EPafx9qP1y+RV01z2HLd6zUKw4F/+9Gdt/
I9GXFPw9phuLgb7w8XVRwxV/yK5BSGFlnm76Dzgk5TLT8kX+zkV/9s60+gOgPI38aubbZ26rly5T
7DolELkjM5zXgndUpVoQmS0b+nqxK7A1dQGFFeMhEkBaYW+jzX7g+dCAZVO8msxy9KUXWuWwxs4h
ultnRx6T3F8XZE/wocdY2M9KeNayAgXndLvRCV4JjxfxFbsliIicrUW+O8HBqO5+a6xLYVJhdhdU
/RzrpSxPKeAUt3rbHZ9ihkgc9cfXCXx0yBWK2JWKRTeYpwzbVhkauAGYqRZl9rwB3xS7JXxLzpYR
1asjAz0LK+UPU0P3Uh0Q5xlM3JSDxSko2n9mZCJgkdGLMg4zYVtc6OZqAk6EUofgwm3abQNmoy4a
gCCrXEcneDpOGJPcAg53bQ9h2kalVpxxC/qtIOZQPsXRDonhPnJL0PbOYGoZg6ra0pBjLIT4Z1ZT
B8KutEHJEIZEm0M3oEHU1ebcumaPpTPiYFIaGuhNUS3V/ygjVq7KS21UcoGP+yLgYmZCWyWxjWFy
d5mPNXTqcgIimOZkAK8LgNZdupv4ySfmnuCXJp8CY205o/vnLRArVZQ8tXpCOVHP6SV6IFCkuyTX
lm4MOVVuMWe7Hk5fAGDJuDf6zaP+0H9Uvxb36+UTkFfD0qXS2F+jekGGJkmYpTWT4eYsG88NsVPN
+OgzwHuWA+WtfHpThq5vS+YT04jsNozeK2C3ncp25dTCjsL2f0MBvLjtQ5NImLHoy8pZlQYHsiB6
mZMMkXRUjql+YoHQ71oD+GTdwK4C6l28w09DvFxyv+KNpt5Tal7cNxUuMvfHlF4+ywKzm5AH7Pih
vTBNkwfuxs8YiatEz+FHdtxG6c9vgQkLDMLTC3YY20t5BW+7LhAjpQ/SVahNcvUdnAy82TilzvlH
+ACWqLR/lXbqWbTNK9751Gah7T8L73jGoQV3hACfdVg3q0pvNL+esvUwv2jpBGBA7sytHDUtzzl1
dA9vdC1POuP4e+qDYlXWLyZoBpVZwJvXQkPurs1jXW1g9BtwZ0+qjeKs/IF0tutK5PoswJzjfYi0
8Cxq2mlIv/S4WvXU11j37wNIEzEwFphpbqaAKVLrRGe8yVRynXCwuyyVSSe7nJiC+/S8SSt3p7V+
Vk+jsj7Lcx64LdNhMUlpTDg4tIZdMaoYhOy3WMSDIUzAnDkc73s6MaFvKnhshgWBGUmO30GR2kZb
QukhGYcdK3o6FuTggRNl4SW8SQYLBYgtvOIFXexCTbbePMBuOjvBGUuG+I3Vn6ftlix9yiYYvltB
1CcTED1pKE6lbVSHy0Knx+TKO36tLn2/fTVylrobNqLqow34I7gg6l36YAvVNpalIFbOy7KAE8U/
h1Y+5aKuQbxrFBTLtvfr8/BBnxxkhPTSVCH8sSMTvWDtiMHKT7dhdkUa690DmlfAHfzvXLlVYvOa
PoRW10/qAilpOQFg6xLYeNw2O2vm5elWJKpQANrGxQZtdUM/2BvR9TCE3prHD4k2jsilzDoNiR/P
g4Bqba5WgmOX0UCrg9fX+jbccO0mi1EIf/oCqjJQTfHq+3Sm70QAXxxNBd0+Yo4lso0Qb4qzenEh
ivbQL6mjyErJmoygt0iPdC82eusn2jZYLUGfswS3jiDfYwUNGUC8PA2vVnr8iOKouVzZp7HqYfXd
kqQf0sWzgbkMtLs8qY4d1RNNR2LMLJzx0F46F/HZlSfNprtL/7MwQxavuyD8K3kLoXYDwVpySp7b
1BzVvVup2biPtNU4M6WpxPTSQmC/7TAtTO93t1KTZIkWkUTnXykJgaImQObDxIPBvL7LTqDCtz4O
Wl2FUYP8kiIkr9iP3YyuLEPxs4h9TIhM0Eayj8kL9QLK2kgdtrqIugoXkGw1nxZEncjHDkYcJUPM
lceWZss9t7r+YeOF6d+picB0rGnSbrHdqz2AMHTKQWBbrlJXaf8t2JH1u9o232KgTYxVpLcj2uHE
75aeBY6VxCoQbSeqcgGzjCS7B9eu/qtUUHXndY8hwgM1X/7wsdC9ZTDiNAGNhr/lbrQVu0YpoIHu
xaD40jbPl3jSE7q/5Dr9FYzvPc+iFOMFD8FVWrURE47s6pmiCt98f1M37EyWBmUTgGLi7RlsFXvA
wMBOJlGhvd7rtV1ghtctjbNKjJSpI2EKAHS4SA5IQQi7l0RY/AuD/JG0E6SDuiG+lp9yI+6Oj03t
QbNSrtM6rGInCgWBDymhj7mYxGwYkt5lubHfCPotByaQwFowGNU9jjKbfaKDN9YQXVaV1muiTSra
6xhbfP6Om/c+6HM6GtNezlA9zZtk43RAuM7OJMWV34cXUXQ4g2CtanAxLdny7Wr96Gqi+A8AyQJX
s61cnNEfjbEI6UkluX2MI5myICLtITuMipP98RFUvcMolABsKPIL9p9qfEsSI2saAM9a1xTm3UZ/
GI4XGDhSfqeKRLGgXjOtBaL3rS/K17vEhYH7m7CuTbwI15gksddHve2mgyUCl5QdzXxGVgLZtZ2o
YzLEtTEfMLyYkOBJmbvu76pnrNqT+Edg08mWuQiw7eAuloUDsvFk/grsuh+M9t+WRQAB8lSM3nOZ
ze+IGoHnxOWWsYisBpg1u6lt13PcHmViqBv6ofaENWlZE4kSpi/nw8Je7r91P/EJtKe1rThVHxIR
ttk9glPAO+NUOAOy8t3/UhNNHAq1BcvgKj2Qa9KrKBagxNSFdyxRI4WDJh/jR+IokftXRgoQC5DD
rkOzcaWv7o5Us5/vMFW63F5b0vMwNwQQmP2ccnDTP29wSfvYT+VogU+WRJN9Nucu4NzhBAUX1oYE
9kCebYjcG9bQjkj+EQQbLeQJqRRlrE3HD7SJRN1Cpb5PBh8yblWc8L6eqfPsP/KFvH5G/Ia/eO1K
AXpong8Y3RCCVm3l9g3M+b9dpXQFt6HzsDuODjfxMR+3E4G0rpqbqyNgrBKb3G/n5s2SBB/GB6Ms
8WMLKsIDrp25k+RNv4CAZ81yOajtodtf4KfBBHEkklcx8hCKGzfdaJMCaFmQSkOt2mE6yw5tSS7s
GFWQNB6Xw0wbT6opHzERxXkBYy9vqUI32sP9MjtGn5IWI6O8nxDG6u6T2ikDIe6XM3SwfKt3wS/z
o0k77b4BDwQTii2T8SIezic+Is/e799Zr6HizF0JSNmHTOZ1wMXodyjuky8Ql6fr3su2cMR3Ypqj
Zq59K4lEGH9L7/xIYFnR6Wtp7toyWwbVCC0XjOk46vVC/To7T+rslsPhuHlF+6fLB+iViADmS4W5
gzDDcK/kk3wcLu+k3LZgthbgfl+/KiUYw1HlIz6g9l3VKwc5MfwQPSCaipwCm4pobior/ylp2Av7
wVxPjFpO3RgSjsHF9QAVURREqQhXvjA2jU+F6EPSU8cPqXLgIyweAcmAsgfmuIDE8ZVaNahoGC2h
i8CPPMC4WR+p+XZSwdCo5wTkWFJ5virLLKy/WUInmzaZv6xrxiy6FQyCNdhWpDV+QszHn9/S6ltf
1LyydpZzOHWzUh12soiCHhtScgOk1fCqfR80gMv6CYw9C/QVIOijm8An48ql/8k/cpHOzbmPD1g8
wLnBHB4Bqaw4p2kXWN5PzTBZSKCpGJSTaUBCJ3jTcYubdGr98oueTsnWnqF0Vc7OOT0IYxPz5W6h
6Gz09g0df7U6ClJybSJ9Aib6Ti09/ZCTL3VLu6QQyueepquXpjwn1D5ErCtwWYB0U+iu3uBQ3AN1
IF9MQi1jR4PagYxy2MY805Q4hSmTy+/t1bKcqLFcfmvPFoas8cppnUP/uMm0nzTCVQjnH1ouaCv/
3aV2JZ6MnX/mi27ce7NHMKN0vZDZJ6JcbGQTDK1hhIZmLSKtb+Zr+yjyYjfNDmS5G3Eu8SHhC+YV
j5uSHY/J6+nySrPRymi/QeB9eTBX14m/eDfJtvq96Rk2BjiRw9ohP6KaB0zGC1LtiOuVaNuvndpZ
jMvmPpqYPidqEkeqNODiQBrplJr+R2GGKP5ZlqTzyh3MdrvVZnP4+a751tp5Jfk6Yw+9Mha1SmCh
K0sUFiFmQa1e2VRV7TfTC3Z0BTY3YIp0GOJatg6okO5RE6UpjpfxoMHEKGLmFkZZjxIv0g6jtn4U
edsObt1CehBgD0qDvO2/DoB3DutG3KTTyzrJQqmxybvWbuLKwSnncFifFlxaZoZVuZv//394trHG
PF66GnlZan3YVAbgYEhn50bdDvo1anJdKROBDQGpg54l4vHHNdaN6ElN7huP15KaG8ud1axprgrS
8wO2vbAN1ecnwdQRhB03jSxEDfgUaVwLJVAVltJsU65MQruCN2ooUm7pqd5Za0wl/mps/AFoTy3C
jgYqIN4wDh62v1lt1Nlgj+HgRj3s74wb33QDFzgINQRxADsxQP+pMyyMBathTjc/ZJbE2qdFGXtb
F1XXlpjFk3b9IT/Xr4U7wzu8s8Hb15x8pN+aLQ4r/lzDdSxlogilK/bHkzEaPG/TfpfI+uSpvDtq
9FMJHe7mEHpy/HHwgY0gOJQZBiAc2/2eT0rEIkh0fFZkXHkjNUC/K5GZMmAyo17SN5TPfXh3MzAZ
viexYUrjbmaRwEbbcwo+kHKalMhP5nD4H07kYY/7t7BQec22+07w61Au7LMczv8IpmJMz29qn2rr
aPDQGq8tOJuKvIpXjxxiWIDYw7EpOCeYdiPTx5hOxczgRjvmHkSPBoZ09EighqCjCLPwtn5OMUQk
G9bB/SVxTsS2iKpBu+nwozbwnCIeM0Ar8h1q9QDGE85tuLg6fNoYXJahdfWDdQWi2JkBurCrl2ou
Y6uqDz6KX92dghG+B9Jj5O5tSQispMNTMrAzcqQT287UwTHPIzxqGfxRQiMWPVsV8pLl7E969qxJ
BzbUWHKSDVlmstuuwWTtTKdMNHoAW6dCrPU6VlmYw8YcPbNQl3yYg0kb+C/xWKxN27PsISBjyIsK
N82Mdg5a8Jf+ObKgz+J+OLC5hWS/rKfR1/h0W9C7xEIxGeoSHHjaim0oihXwxB6Iifp0T575r+yq
MoeXIxo8CvX3KmAEuD9zypKGqSUrVnZknVPwOsvJ8T8o7mQ9gz8ES54Eib2IyjdvqqoWaF2rWVXb
BNvFvV16lewIAM4fySxlhRN53P7DLb/tisSpUpvwtzyDQ10h+yrdWL3OpEwm2Mon6eHUbqZSnPeB
msWu9l4enu8FiNQ2QIq+piK8Hmp0qCkrUdWHLiA7ijeBNRgq7I+6T25ny1sgMs3zNzgHja5kF4dC
HbITaNq0PIEmp9hd77ZJ3ZkaosvxdOtgM23u5C4tJlXkeTMSi93v2Bw9GLlAAHzo86hm+tFcOi5n
pk6gQ/FsRGoqIjHRNUhMjdAa3usQoS5sEGW2PuD1gw7qajEeBfVhp6Jbsmb7dVHEONcVcz++4KjW
DOvcJ+9YdUpe/5EfT0X+pau+SocZbU30litIivLbuQR9SG7Y5JuZ8yxFUENAGL8CIGfLuCudNTh4
+kd/uuVeNzK28t/vA7HG1gh7Gh7oUHi8SyecM6oc1B3XjM/wcl0838QmZO03VAXXtPfrShwLpDbF
7Xi0zeGxpzKEfLeSvnMgnvVkyP5tIkdHqFcUmYIO4uTZsfIrO3qqcnnnoMrvrxvswmezfv2PyTnX
vIs72mDD6ePsiJiSSJH8s5mo2N/jU3ADysE+L9S/Ay2+Vs70DsKH13iSZq5uwKzWm0N/GNLKX86w
5Zc21et0M3MaCIHlVxe/yoYiByTS1E9RomIqe5+n0pv+Jvq/OMCtHv4xTs1ugaAHuU6mMCyIhV5w
KWucagN+wi2WhPsO+O5l3WHCNtrZ+vunIxiyjpUd90YeevWN1ihhwW/pTq7jfDwM+wPkU7UAHFb/
qBlR0uqWV3U0qcndaA/GAPNd00PGZ+iOLt2DPimVD428LjRVm1Po25f8rz5OEnHop2yZS0oQKhl7
ZL1gQ6JjxuQqeqzy2XBH1rj/3lYFJrU+3t5tK2jfGkLXg0Y0p57lC1UUc/eIguRF1XK/4NQ85Fks
Phn07NNHvjwTY92JhYwUkjLKofjscICJ53NZ1J7mnIav/2/rWD3YmT56VemC+Buw7a6bMkQ9dRkW
Dz9CnXp/hROJyCpV81jY1lDJH11d5UIwH9ptKyu0z4juhzqkJr0+c+Cmw3Si5H6MqpoMdbcH0Hei
wJV164I6iYeSLSY7hLPu9hbwXIBLp3KB3Oa9+DWhftR2aS/vfxRSUstWf6cHDOz0zFKajHFS5aHF
q8YT6zC4P5YY8tYd4mH/P8209zQ+DLPGntCuiBsV8ehah+KMIsKhegingkWeerj8WIAIMWiWpQbi
txf/uVMHosxJguxHLFKhU7zKzpXG+HvvljhGg7K3YXvVhGofFsZv9cpKbEPTf1vz8LbFm4GSGecW
k+rb1+beqdkw/w3dlb2hkAHIX8Y93KvZlgwe3VhaoMJEb9iY+iS1/XiDbWb5ulLilHmTAtfgCn3p
n3nr4254T+M8ixP9SmXXALy56A+UDGTDd8inqYN6+jJiweuU92rkyuKSzyeNIeTGwqiR6ulrP3h/
cK+4wHjtdRGusMSHXQPHT2PAyHlG4mAKT5egBH+6+DGtgoxZB3a1m7IOoOYRssv0ia/fvnkiF9T+
nWaAbE7wV0Gg5x4dG/G6Jx16KM9dGQSfn7dVevTLXbE2yqLNin/u8xuJBwURaoTGizYbhtcxnSkp
hC+Jo/npNkiqbcCudwc3/UycFm47DsARPOn/e9GQH3Qspo7X7VFPFss8/SXCemY2LPZcMnPAAq5b
liRQM5CwfnY+u3hwbBTsvs+4N4dR4tJSV1qcAHMvGv1grd0YZMUhyj3GFWXvxIHwJDwxxTDcYjQu
eETt/4T/Mw2m8LiurW3Sybojg5ADKA84MDjSMSBzx8gcKyN5/H7NUzyoFJuCTHS9zPrJ60JeXPYi
Ysy0roYUfTGjGdPee5v26vLVqAGkiFMhLUcgDL7CssP01V6E80+1wApBnpK0zF2FRuCcXOJNDjfe
WZjRUq/wMMtg3skt5u896eB+kMNAV11N7Uy3xGFiEcLhj/cVxm3PyfiHHv1Y2WKavwmO6dTix5Vm
Ull72zAeXXE7Kv3a8UhzLLpX4itDD2XMWPB83cbN634Sw0kTd1xyASyhtXnBoD3ZhtpmVzKQOtnK
lVc6rJ0mPYDyRucdBhBvM+sWvJwzHlFULdpMOzXgepulqa8Gj+ptOR9iP85IVDEeFBQc2Yf84Lgo
YYc3NuPhkGUN1FmC59A5KPNHDPcwnQBEFeXCkuT0lhxT29bCDrC3GBqevh+rnOfuT1TP096oEo8f
wcifl4bi3mFfVmC15qjmy5okHoS9wBv54F7nvy8o6Urol8HVevgEd5rmVzb//KcxaH2MpGk2yxR3
VR8zys3QIDkLaEt4oXn7aDq0FCs4JELUzzjuxWTtEdDfKC/A769kdDPC/CY8hzvtRnNqshU0dtJK
BEXGqwPZh7MyH2ApHul/7m7iWpdmAeofV0flboEnt1Xo/E7c7TiDwnaeJ1k+ATKmwscCfvNef6bU
Hjjes1o7mRToFHQpmdFVbhI36Nucxq0ufc0EVNhfskQ5gexvOTAVcyUyeBXMeoHHr2+Nk9rL6RT9
xvFOXPWcXts0wx2jUZWlm01qCiK+XeqjLF8QeRID/q3di+Z+wdwvlF3vT4MR3mvop5YDYV7aPZ0Y
xmOvztGssRwKfE1SHGg1tZ3rNhP+l8JCVBJ4gSHC/A6S/gXVpABU+/HuWd9BU0Tf0UbyLu3q39Dr
bFusA5Ui6bqm8wu5s4znX9/KbjR8HOEGFcRFwr8S6WP6XVPqPYdqduLhw3vNrP3Er3Fj88z/oZIS
c7lrUwxannHhq2aHIGCm8PDEvrnTcGJedH/+RXM1zSE2xMHgXe87BF9fiUwaQ6aNLvn50OQB8im1
0qgipcwHkPcz8rclQPIlwDiM1o9CaSKi1uHJHKJvAOgTHUGp2TpOlNWa0RpLiNvl2neqJ5WrEbSQ
dCt5yH+Tgvu0/BOyPZzieeXgaX4HOQ+L3+xN1+fTJDlQVobVH/qUgKcuYE47lCqofRrW4SDTT2WP
yKPDnkKS822NGw2yjsPcWIwZB3SWAcYJ3JbqCkCq7up5Zod3QiMx0dVdBPmm4DBBhuaQWU0Kt96u
2pz62a/K4qgNDog3gmZiwE07RqjshMIl3iwORN7iMD3rrKULoCQZ3zE+8ZxVxANf/6gN8AqRbsC8
k1Rxr5jQfZDqH/Zw1NLs2FyM3VA5jcbZWotNkTLKcf3InKyPBdjPzprfRTbxTGxNNImLw7RERAmi
vxKJYgi6zajpZvKvjnFm3GrZPSDjuw4djApEJJ/jh4fHDBLz1Qf42pipxdk17Dbk8KO8bkBiGET2
drjjWgIyBoSFiJXwDi3JgI7gPnMdQJFRLnkFvMZ05uZQ1W84jzlX6x0ZRvviIqIr6nTCPT81TlYo
S0C2ximzJW6NFu0or+QpknHdCYXtYLx+8nIyENU9rQlfmKHNq1+Sck9sZfCiFTAjDL4foZJbkjPJ
RwjA3DKrW6E8znGmH1CtIivjyuX5nbcHOVINvQXBKnoAEzF3FxU+YOfTDfmcpLhgvn56L3jQZV1k
T8zaLdIhI+eUDCRGvIOmVWIN61KSRhNchCMA/RX/HL5LlWzJlBjRiTSsZIXA/Be/zRCqPn9IhlQK
i9qi8EZRuz+XnAZ/rrmrsv1StA0qFD7uR6FFwiUtb6w0TcelgqMJnsAUsH6rUSKtaZ3eRHX2Fs9X
a6aCrRkPyFjDxV9iGmpRb5MQTNAG0J1+jDcUqF7WP95B5S3yMutuhEVpMO0gMCT/BmMlf5/sdtQl
/UrvERICM88IhBTu+gdrXeWhHZ4Z3hdRCQkj1Ue3K+H1KxbIkfyeWESGrpgU2QeP9b+0A07ddISK
lfYbBhuQKIb6BQy5do90gew3d01NoUkG2Ri+mxvKLWPSjwuXiN1DBKJinea4BMGL3x/Gr1kjgDVw
W1/E7zuojjJ1Ta9c5OOxfjk4VrYF71uAjUzHsR4yosHTPRH1Cy1TDdnGMc8BvkpTNur1aIEHUT6C
K+8gcxvcoLtYgr8vpo3nws3MOrL1cJ11wJnXxlOS+3aJ3URlaLnfAAa+9GuTdKJB3sJUqbRyeTnh
LbeCeVKJBLNK+5gWzbdOKYldDnJAr2zaPOnJHlirTLogxiWOpPd5jXWjdfeK+hq0oNjrXvnJj6mb
xxzpdefErebw7kL5aWzuV2NW7dDjDhay4ImyXUF1MZIo5Aw9+0AIO+82WIkVUL4ko8TlNBjEBJkA
awq0DPkN9f/uE3ahuWutpoe5bk3SQCVKVDzewBR2LegRDCiBv/hgxyK93XRGoOUgSl7y494Zl+w1
wHGFCvn8xQb+dzTQ84PPQYIa60cawIC3Ow6xUs520243dWRD2fIwYUpj0obWBO+R76H131qjmKG4
FuPwE/qkIU7qkVr61rZYojLvhe3/E5S8JW4lavzrtfVyg+Tc5vHHjzG0RKV2E9Eh3/12GpwA4KRf
egC6l2SVuWw/AE8kfgPkFdPr5emBQ8pZdpQPZDavbm6vpKqQEfvcpYl5/GQqcV3yYfucFRx+tkxU
mxSaz5AQn6fQGHBF07sIClJGR2CKTBFSozIS1ZOajyfGT+tovCflNn2NUd+ocD+Xr87Km+nUTKjR
5jgBUyJcJ1C9QLrYaKaUUvTQjCHXRNkMvcFZCzj1VRdrpKr/LEk9mVXkQfGgHH34r/1eqQQf55hP
D7UdemOdDfh1+4mvkuyAYiBHvjVBVXJN7ebcUO1WW7HI2G50xqxIZjQwe1LqVkOgLBCiGs1XtQOF
f9cpxROAMkF8nWS8TFJTcIeCYNRWvkcNhrlBZG4b0WygQLPhTNm50zazZnuTOPj7ler9ul2hQ1Qy
jFRvbrF8ORU/YS8onOx0qFhvTm+0wd9TDemQ2cejIeEki+9Z8WACxJAxJEG0dsrkVQpcehOFxw4X
cWL6337b92ORi35AiE4Zc4bgGg4hpHdV2A4CWOZUlA/y3s0wDmeNDG7hGyT6kALCHuFd0ZytYn1R
dP61msoPj2bNqNqnCWniMeFxoATSVcU8R0Hx+xdfcTe5SVI91w1OdQ05mKpUi1VanC9t4gllGtnD
BkX9UuSaHbVigPzLTs9pMfvtO0LsxSJqjCpaGdpBPs095NfiT+xTp6g88hd8u4Z79AdIHbQG47rf
dZ+3ihVav4vLQBDSE7Cpk/F3/cWTOCJSfBwHFk/1oQnNYBN5o/HprnQg4aGkecTLa7SPoVqVYZF7
0XGK4E9qZrJ+eA9H/c6FYk2n0cH8/7ZUtPg94EVIW2rynBrxq+VG+9wNohOCDu9c9Gah767b7UEh
TIf1Mx0+sxW7N19iRdogMnSaWxT2nVRvTImfwsvdEmCqGvIfbjzGfwmWU3Z02Z+/Jwe7dhsHBxeD
HoVFBYsBclcuqILzIK7qJFt9BR9Ez5f8/r5Cw/r8Z2Ax4U9RXIWSU0Ax4veO9HgIwRhdw+QIW9I+
79ZVK6IAhcoIXeK4zBrZW7KeCxPFH+i8dWIr0cF7ZzwZIQgQYrhXTktE6868cDyY3KP61uDiP3ug
7wByC1kMMI809mhFkB2whn42eRaloFLncQhu9U3NjUyCGyfvE8Mrslrp6dItd3IeB+3IOkqaFf4A
pV4EFMvHMEBw64EJ7AVxBlRzBsAaaKudf8y+FcCL13ZV9ouKMWKVc5eKviuz+pbBdWpiOvHoLGYY
uR7xVR/OIzdWakxGJ9DAaImGxcIpJSbUVkQEoMLbUj4/Qy1uy0TgNYB4RJI9JuFtGH4+OIeHGA3Y
3UQLzgjZQJxJq46wzJ/30t8ktoR7Na8lnY3A8L32a6fBPMpuD50D3PdWwJkIKrv5Xujre2hYJSS/
UflOFce69KvKUpMo7+CpCEWTNqin9InvhxNZnJt4Xrh4naqCB13AkLaryPRnvPyZ1dH5SXSGYo7S
ALFGa2jyZ5vfJX7RwU3prmtNaaispXgQGVuT9evjiwOYYu29l7X4fRTb+Oe/fjEfFfc9oopcPf05
wKk7N5jalb524QTEqmZXmZldQgYWcxRmbh20HmioZlGawC+nAAIO2nMmSbKlP7WHifCyCy3a6K4q
abrlweSv0emIUX2ENaZTqO3eStKSZSVVUyNcmE0ThiF5UoBzLpUivEfQySUna7lyjdsIIIPABXzD
t2xCPGouEAF6zl70/nbUAcGgat586N4DzdUtJcQOy0sBwL3tZR+8CL4C3K1ipqBSAxblA6qmGJ59
+ZxVuR3VBuTJsmbYsnzvlIQL+oxqfI1PsNMSpJciQ22IRcjBBRbBetWmi17nblM7l7lQvh4QGMxn
89HV5MhXcuVZaXHtagLjtkPF01UCyPNep2yS9Lw+DwwXw1D3ivWUABQsoLsWVBzxtorlZ6vDl1fR
SxHWpovb/uF/rrcRNXdDmDe2/RqIobpQV4A17K42zv6ma+MwBOQnw0/edBkXEJcIWc/FLNOJm2dL
vHkfHUuwBFlumHoMojLu+ulNA3LDlTFbdUaFiRJ1BAbngLs++Cw7FudflAmUkUXyQX11uH6Gxre7
KXqLHH2dLVq4uZg1B7+B8sNDmLuGoMpuoHKYm07XqOLlJs/83SBxpfg4R0DVI31ZiYuTYb2KlkNC
ARwac6V/YqHdfJOPGofkt1EjMZ7u3UQ3GFjWbnH5CAtryoEkD7u9IVXrgM6zLAMHkX9AuRPR29Mi
/v8XBdg1bNt717wsEOdb4IWGSJO0s4re3UoDZCITeF2pxFutP6d8syvPAJ93bGN80LhZdTfUaB9g
NYg6L2FJmtwVlkOTAJpyUBk+kAZDvDL3LqzkKHqv4xs2hM7IZdzat6hZA/u4mfgnh3SaU/rBxcUZ
X3TmVBDHI+ECkBieNmAIH+WwoxiZu2l2f1s5idmHXx+XUcPq6shKsYYlMOjoMyrQO8alKV0fHHXN
rxSQ2nfh7YQVsV9GLKgE97+3TIebeQ5G1ypjOW+GJC9f+JbijZzt0XkoLXVrDpRnhVTU4L1wvMef
sDQHP/HwXZQ1n/c1QQaqVdJU/Y6xwaO0ZCGcUoKXQYPWUQP2krZbEkYmlRmUm2Kn/mxF2fKDqio5
M0j9kX/rFIRRkq0RZKti4HCNQbJ8eriXVwowkAWL1yfY2Z2NiA54Tu2wfBWeIVAmyKheP/bYJ0m/
P5qYq2+vwST7xjtwVTueQf9K1dSU6w4ASjGrpO8MArRhSWU5t2hBGGbBMF5zfJZapoJyHmVchj0U
ACvxPRQwyaNjmVQeb8Q9+epkvvjrJ4ji1yHhdt6o1fsA0E3w/3uIoAnrLAeXYAelSofnChTHosgh
E8+3/cR0xf6bdtVKNhQSm1YeLakwjIslFWcfitipD8h4TmwUYM9uBsT2a6g6p9dcPb37kW24iAV0
7iRS0s+nKCD40fv4B3ZlHqz7cMEjjpkZyI0x1qZjBsix81t+lBn/qXIcpsari89Bc2Z9gtGfan3f
CFZKxiEjnZEBcCwoJAorCRaAtHFQ2MA9YwM5/uDZb26RPV5cnIpP1wIAGAh7zVKQJIrNckSmsllE
EMkXouRLBBrBeO+Jy4NMwbbKQ04iOvlLpU4njRplTg8MYgsPjUCtl58Esy1infj0gWH9T1/J7I2s
QbESN4iCd/tnnX1i0EXJwn6vuGKgh5rUGS/Bvot/O2NGHXZX0d6YycEds2kVghS6rhNsEhJiNd5K
1rhaHrXj26jcOZLf4TimvPJ7Mf68SUdoq609don8rWXrMS6902B0ZqBBYiDYLFYQv0IV9cBRmSrG
AVJ5l0peMM91vfOB6UtkGcxauplh8r8bbhM5pDPqF+EiIbrgP8TpGjYzt/H/eOPSE95Oumrm3Vee
yer/QDgb9DxC/pYk/GA6zVZEx2M4T2OLpCX+/ZhuXH24vGa2L6KH+NGZytLMAJCw0t0exqwM+oc0
sUUj0Musue9Q8la1GIz62XfQ4Ucx9JPE9wTtxBsOdCcinELHQOq7vcqVM0tbSYDbvUEOeekcj/G4
oNqalFcI+0u74A1GCFwPNLAfQbBKJEdmTfZhvdkwSDj+00lp1kCkpZlW/Y9NCEe9iPbOC6LVFeJR
LY+0JOExkDoSdLOG0/Cy9aJSWUEOACfA5QDttJnUejUB9TJxtmfmHMW/vKaD/QzAUMUGYyYFE+6P
hvInrg5jDitwdxT+Fr8/IZEkmHqhvmMmVoCzt+2G6wOAIlAYRZMrSYemr2ARuXp4iYij3QiR6PBz
k2y5UZhLWA/DsDXiqot5YF/62wsOOJfjGJF2BcB5j+sGZvzKbQjwrXVb8M5iRRbI9FCK2OsMbAxU
yw1ITdIkSaai4F29NwM1SobOaOdgEH1/8/pB2O/qU60A+L9PNyvSitpH4kKu5nF9KOjxY8eMmMxg
EonqjosGiP/vuyoul2UMPSGxJcqbn3HNIx6qRr3LhJZJoGSL2ukJKI2ONweaGLUnQgf/gLVSKkHQ
rYqgE9rjO72leUWVfXPQD0QxJVSHzFjM7NSLe7mzLrPEmffwx/ql1eFqgMZmlmnbv79+AhHB7ox1
LrbA25I4m2obM+m+9gNQ0pSVpP4VHYd2IyEs1mF1aldzOZI3CKRx0lDhs0ud3jnoRl1lRFka+vBQ
lbwlW7beeNumvPEqHj7MVPRDG9R3qzCwavYa/UOvFYDNR0EXB6mkAF5Bj3QfJkd1gWaqo3YPBEXc
CuVswfo5IqvGzGaGSpqFnSr4kYZk+iZwm9Bfts3FjJfq1K9FkNJROW5pERADGJaif6DE3868nMMM
s2Ep2tBCTQwdH1e/P5RjLW8GxwovvdNBjf8CnIRZmeR/sAlv+vwImSGQmoKfBMqHO8Ff50N3fTqO
EwTjMgIU6LQotDhXaq5yAK+GxL1oYF6Y+sGfZ5t32y1P36Wa/cuCb5KjGVeRISuoM0GlpURfaN9E
3gOlB1IQcWpRg7jDIGEDG2p5+U5/sq0Quh+NA4580oOhjkmiAhnSQEhIAQJr3xvOM46hG/06/YM3
UPeLiUw+kmOqm39GAQd7ZjpoeR8U0e2eu3lsEfWECTVua+PkxWUSXr35doWxAS757m7i2YRbo7pb
jX/8Z+qTvZnxomZGz8qVLqdizD38Tp5n2OB852SEqXAH7Tv+nyI0aTp7ZOp3SjA70E/d3iVLL18t
ReA5cdTGcFwGkPtEr8KY5IKfvn2MYUXk1qW9c9uiImLr76ObJVDIGwQomXu9zKisxEyFjP+pdfDu
wh/E82dTMp8rshxUaWOIbIfslGC4gG3obscsZV9WZor1AIZKUXfxlZsaTwrBY1MbSDZVgOfYKGjO
L3Dk3vLV2XZuwQpAaDgv0dMtgU0ZCE1hF0JLJtUXxdZvob+7bYyI8JxZcK7YYV5Z+YUfkuM8t1Au
6nZYYow/iUJRSy/nbbP1AZbIEO9W01ATSsdFFs5XQz9biYRJvUKnqjgT+gtGIp/VBTG+lG41bxms
aP0hhy6qK5tfm7DhaceyQNoy3d/JPETyXSuddnww/FNKp/cwCQV3Uei0CcQhqm3uyeMuDchEm29t
iiMnZPHHMP4rojtgxHEfAci4ecwKODV3l3k8UDBPbIWots8DFRkWyhv6ZVpyVwSNAI57WIIesHeo
/d2ecUkJeJmDvHd3qFOca4K0jlqTShHUULtW/6DUaFQ7JvlkrJcIV5n26pVBw3D5Yz/uWkAdigHu
HDF0GMpgSB6rMVG+9WY7/Puy/4z8vsoLl32VAEN/L6wxMcn26FlOi7y98ARWFhsXrS4J8gmyyHRO
Eb02rIxkHuUnSYlxZ52YtDqrIRXRQpwhdfwjrB4dPx1DKk7rG4xFrhFrjK9yQXtgtm/nqC+vJtwH
xVJky+u2eootJHlhQd1nkgAAQhk0roKpPJanAR9SRdHEzmdG86rla3B5bHhiJD8LkfEY0mlOXWMG
OJhmnl4QSwV6Drfz/sOOq27xnGZe4jDoG/nPJPUiesZk3UH6RUylsFTpsgPjivSC7Y4DrjrWpW83
ejlhKsa8eTZcJEoQQSQUORlLyJnGR5HZGTDPdR8nl5aGl22rNzLMxCca+HDwesSV43XLOJnJEt+5
pNGizfK6UBFShWSwq0rgtER2xWcNzgsdTXt13HZYI3XuDItkIqyCRhJ64CnelF4OhcZ7U4q/yNn1
KDg/9AIqq0l/IPcHwshwUrljcI7HlDwEm1ID4GpOzxj9DL4jBsB2gEv9FpusuSadiHl0bH9GsXJJ
9Rnf4aoP8DGrtwdT9V7wTfkJy4MrFBcPf50Aqm8Emx7UL0I3xbsC43u1JQnHjN+s37G9kHSxhA60
LZx+D/erpWUZSAXiJL6wbV4SrdsyAbyoiblnvhX7Rd0nSlkLpHSObNtsCnlaSPv9IPSJQV7aKhd4
+NZBofsjMT1IVIEm1dtsUtY9227wyrVjjf2emwij3ULWx5B23VqZX64WTOmvl6/GVmFJyy2EazUW
VM/Ld0wukEGefk9vABm82GbAfqpMxBVEHYyO1vKheI82F6YTzrrkeYc/vK7zCAf2FWPIET83pCCz
J/jdm+dOAJfVaHbumlzlQY2avrmblBvro/kz1qzGI2HNOoB8KHQ/nEuQYdOWNZKV/gHOtea+9ke+
AS1i8783vdliwGdx0XD5NvJjgYo/0UzbaJQPxk25rEguj7MczSg+4geY7cxYXpvewMrD4ZiiDZcT
jizg6ok1Cp0M1E+QwumlbEpf3fs3wFanRAoSBVftMDBBkKslHQIkxIKwsCDnrndkJS806tk/LAR4
pKxqLPGmhdGjvIYw2uz22djRPQyATYj3JDLc6wJquOW8M5KvzMXsTKSN19lJ8X5krp2yygKdwh/E
cCkwtGPGdsh6bopBZ5AeDgB3I7li8njdUqgR/3NI5TVaUv6E5pkUavPc8ibk3DcGBXTSyyh3v8Pp
Prf4P9nwULygSDIyGXth2Wcr6m4Fc43ROEeb+KQyt5QIS0onNbRPWOQr+JAUHAOoVcHEcwmCRuB8
tH8xOie7lL70dxpjzzK6Lnv78fHsQ7EcbXXOwg8nvQLbH3x4CcwGEoqxs7DCxnVn/hkxUSk+dchC
X6gQxXo+rjF8DWtGC/XbfxxRLkMQhayaL78Sp19o4FLrRV+h5XWl01gi3/okw4Rs10CZsOk6ks2P
Nf4ZYdHqEdWnQT6WG6r+Dum5oC4MJuI0SEAyZt1aK6QoBDPwL3iIGXKOGnANd4Au/X6QzM8UPctZ
BaCkFGhuQjcQt0hgqcAQmffLGSRu6VnZueSYiTRFqMwRyjHqJ6uJ/w6FLuRb9BEmDNyZHxKgNFS/
hGd1nhYLEYAVjGa4Q6RvO8vaIGWK7t9HUwpoXElOLmEvvhTD+G3jOCqchF7+BziInZRhkKWlr9KI
73n68bB3FtN56g2IzVQamstwlq6KZ4tQ5HaDHwYTSyGuKeyMp7op/RMeeVh9dLsbz5TmBHnCNbPa
bDzHuAPtASzXdyRhXzqF+tI3diGqGudPdEPomSDt5Z5wdc2I4QBH+XA/g6UBV3n9ev5HPFFUULTu
7Rd1QNJ+C0M3MPucxxWpIBZi4Hy5bGSAxtC3y3DT3vjOfHZrdttE/LP7gfkGXIqqQKQehFliPgt6
YuRaa6b3j33so2JkZZDYdP/6pbB08VGwbrpBVGdbWxbc+U74pln6vJ26rJi5iatN58l+1MzQ9fjz
Zl3e/pIkvgpz8AInhKC3ga0AwpUQDtqNoWCGfrIc9DfQH3hbwPNvZI7l+ZH87CT3SAvxA+dux/Bg
OgT7/envA0dphQSjvD/whG25vb8e2wehkTQl8AftTUgVLStm/fNDPyVbNimJMNSwv7mn1EOzqFAn
A5v3dFmUds9sjd54YbRTGoIs/GSc+sZd1U3VSiCgCk0oW8sGeIbkA8VQTeyOclvYLUSf212fmeC2
vJoAqCxkgAvxUUEHVRthZg+F5BcIwB+iy0fZ88lVnkzNX0tqnEe+BSUPE0MisNi5K7ZOFqZoxyvK
Sf5g/GSe3D6KvLFj/zFZawkE6jVOAf8IUzDvNju/iASb2auvR1WJpGySsPZ0rACi1ikssRVkVtyW
XHjhNDixaqG775kbhXRSVKXrTU78rIazK98SUWCtwRjsn4pcjcEWLvtuFZNf0rNSBh1ZaXb3cuJY
mDwY0ij5VgNKXQ3o9LFoacy63rQj6NiiGc5PWj+usvoP5LL0Wg+u8tP8iSoHtJHCN0CaYGn4Ae+D
OMQ5q4t72RWG53crtDTD8ENJ+0IPQpFf6CQFD65cHovTiqJXh12EuHZRNRRshY4R9yRMlBlpcjOu
EhKLVkfSSFyXv8Lyzer7+/iNqQui7uXlPuy3+MXpFVh0nlzoRUnt1Fce9p6eGckWCWZd8eYeUQWV
86WEt6qtzjoyzTBqTtqLrQ58qnRzQIRDz+S4q3IDnxl8PK9sRwTHFkR1yN2dsLuGdd06XZisIuny
qxrc7g3O3tsY6X0c6GGKXKY+Gg6OTQkoTiRFhVmppo527GEIyt0HW2GqTIo0/p8LbgOSaawYeVQi
02lZHX4LcDnaRtQ2lI2DPmUGNV23dxdxh6n0AzjqdCv1o2fgb0IK9kf5WSXKrQLVNDXHCAA6sT/J
vBZzaRMJhBx0rPZWbjCsdKu7bZJKLJT4fJ+wRmBCzMAOJ+JTDVYGRQgmuTVlTh/pGSyi1moE7YUQ
ZggRFL83FMuvsID1NqGDmIhC12XeMQkjoINjEKOFo3HMZVzJomzY4C0/mBrVeR7KvC6sWEl8KHy1
JNx/p7OrnPJz2mhTqXLWqk950UOv5zoIhA/M8EGHnpa9LuZ8CJdf3H8+E7kmLAVFjWOSsmhezsVu
JDzklIAMn//PYt8RhD4DsGKSqKBo6GjAb4AmdLvJd1+qEKB8fKj194c982EQxTDoPIdqfZsVrjSH
Jjt9qQWc95bFtm5Oks+uPmHFTI020f5A8fu7yOI6t2LShJX0Sel0uszQi0ELFic70vE2DAgdzZie
aiU25WcLq3wHotl8iDAJmF2+5iq0ujhzW0tGAR7BZahu4BseE64byvHehp1tcNW7Rn8M770hn3jE
VBDqPYrGO9gs80zysp+ZQntfO/Pp+eBszC9eNNQ9FP8y+EVuld7tc7IJfyERRFwazf4a9fNKWvd3
761KP2E19NChNizQimyFdgfw6Y82RzAbur1CcgchGywIUqkjz1LBOOdRLMjOI7kzPScH3Qs2898G
shJ1j5AwnX8nPYYLSIbmlPS0ERhYTI31gd6aN1v88AnJy66rn+E0SB9XR6n1QAJGZLRfE9pBDokC
l/b+ZwfaAdqE8CGUl6RIA8FwP7M0oncJmUbqg5B7vNNeopL2zcIZX3pscQOYeqNeHDxSHKdS0NBu
xmc64xFZ5Y0ihXGn6B1uUK5oO47a6Qt5gVul5+QNqPC6kXzW0Pw4KrOMhb3YOLpU+cn57YD4p9Za
ixX3r+LwaoPqdgy9iZ2DzkfdcXKYdNWIigwNa/J1qh1QHQOdH8xtlm83CD3nJIElPSWV8gadLJjF
BzAee+CnNyoYEgsdLTPvh0C1zv43sYhiSXWqVqqBpNMJEA6vsnD748c6GDEAWGGK9yXKXcqGGiia
ufCxb4lrmPSCfCHwSZN/eZrLa7Ld2utYwGYJjr4NOhV9CUkMF2CiSAysybTJE9dpN0ktluMTBPvd
KtrhNj+4/G/hZ8R0vrE1SwmIx/BwCpTxm3XFa33LTaXOzgoLZDjLavUVrzYKqcrhVxvSfI3FPg7F
koOXiFmYwWvhE+c6l0q38xYM0ZYFFDbACy+EfgTKeZz00ZiI1Gsxmq68WmOlBxwcux7j2eGK8NaZ
NSC4nklwJbiv1VahWUrt0STh2g9kQkJKCHL0817YqdB69FX3YsVg8xgwPxmygd0cUnRQ3V5zIneh
Rqt/92Lt3uRF7zIt9hjD+UAX56+lHKelqjAV7lA+orYxoGJ8A3GPGWDZIUvXd8ODiuv2dmuUrriF
194k5uHp8t451FvJ8/uTp0HWjt+zMLhrAc2wGGwb4qbMEquTAVtxkTp9uY/DNK7qcVetkVW8s3HL
f9y144YV4bKqH127kyqPVUmJlsLVgQNyCf9HNwmmO0Fi4JNR/8r2/1de77FISHhNr1azz8W+E4sr
D3H5g7zQD9eUrQlQkcbLErdZXznCtnKy5VKQJoFMbnBPZN2UZEnitXzPwIsydohQMwHNhKahvlqN
22tgs0ESMbQ5RMEMfkeuMQSmpTp1F3n5/X2zaOb6/i7oqUQF3QV99Gla5ZRIOiNFsLGZ2/LzWnvZ
HK90KeDLgC/SyMTaTTpFUtTKo3fkfcAYv0yLxR/xPMxHckhcOQNH93SAU4lyzC8Ruv4smMok66D/
fW2fdLGu7GRwVpOPJ05y9Pr08XAOyT8TyY12HNG7OsrFJf841lZVFOsTFmTinKyazbN1DDHh+2Xj
ptcceZls7kIzk0bwBn2xO+gYMUgxzuesUprG3dSOVSDg+sCshrDqH0Ht5D4BXMdw424dGmTg41Ef
pOCmoNgVU/AOgeTH4f242DZm9Wd5yUWyOu1gOD6hUfDQBI5km4S3ESvfhnFzESwULw6gMrISbfXW
kGlJfIs+eNo3iPqrOFWRN5hmmnCie9YlJHaLFqOC0YfIYmRnJY6a/w3RP+SKDsYVCWEcEpS3EAxm
xU1GlHeUzYOi2YbIXcVTHa4WUKEr+MPEwIfdnwpV8+HFMwOhBsq1H9KjOUfQ1ZHd1OnpK7ujGYR9
d5YO/IhQpvT0Azp8HB8cgmFwsGWKwcR+aRESzGhJopq9h1x27bACv8+xxGZfCy/gAMauSBeQU2hZ
F+Er3MJvKn6nhgjEAZtZUpKHoC74s1so3RTrCNhXCPMmq4aYr1BxwBLftU4rkKmV0MtHaqi2wCaC
MC/WuvulRJWC5LaSMHrS8ePdyLMh79oOeFL2maFvm9p/nwyd0SJ+w7FtNcKy1dvk2eDnZpAFoUjD
kw7yZ37YXkjy5BGxBMJNd3+7YEDayMkzK/iJ5zSJXp5gkwLPsG+6GGrEEW9d8xF8QhXMdsHuIZ7u
cvXgU5Qs2Sm4ZSCf0O8biOP+FkD5sPJU8sPq3YKevrO1Z67qMWkwJ1fg5fKWsyerDPHR5bJ/GshW
leDhP2XAg8fJsf97I/P5XB2cDAm1ZwNdDgAKv4P1MKtGNPtoeIObG6h/AhYnJ7OlAb/xHisuaJCM
Cb8Mpugxak95WrJfNN07ysUEM8R/YSNtKclS6fpuW3C18InJyEDmUBGM2LDjd92Np2juANxpiPGp
Lfy6ouC7j/k/KrTPL4iHysXCkg4APvLRbqhar81m15ct+OwzVqAVweCwph/pNahuSLc8JuHlRPtM
msiPLIeLfLEGsY/dvKLpU3R6P2MDGLGyw9hrx8yYfvfyq84QC9Yu0yIW4s1RP4KLacsc6b8wgUY1
O7BmVo+oqo0G8FJkUMwEqYn02hbtZcpptsyjaVqjgXFQqJzgrtVvKhPJ56VzvDYDhAt1i3GFipgg
ResTw8AZ/XgWie1lUejTPThk4bFCccdR34A1XRxld1vnsqDv8d3L//inOSaywot3esZIgJdMvCkh
kWnRDa2wvX/mAnHFrQP6+wf2zDHNybwKKxTckYp9PTz6spaP7XpZsn5U9T44PKhI572oV8rB4RVk
X+A/q8Z6dyRJrdqhPWSRGBx5106wL68+XcNMDLGErXJHaDry1itOW18IJgIZ/oon97LX9qp8sesG
iND385GuPPHsFWhvXBSMt2lUutkSQcchUlZV5QTjcjAPy2JEuwV6WXOqWLaDOPqai42l4ft+GA8S
tV4UBqRYuDkAVJeouLKp1bEUxqSPcLGwI0hwFDcDguAtElRzCIpMvMagVfI3F3i2BfT3Q5XKfFHJ
rykZIxjp+pn34famhHZE79EZv76l45EY0g9W/rLsgcgkWxqMVmxjpy0OAzpGmbU/eB+kPu4QpITb
vHR5qAL7gNxYJYo3FuOkqjTJw+4MBRwgshhySlZpLTOiUODn51SNH8ckRYN3f1DMlUH93O/VnT8c
HTgKmqFQ41+aaxLYy1U09Z7ixQ23ijEspBN9C290tQUHtnaOrzbO9ekShsQp4nJ7tz1NlSBuAOuC
5KEZEA4h2xOFDYDnLugyVn9xZB2YEfE+CWGU+HAY4UV6gmTPmzpurOXNxYhZXQeoMdSV9NjDCOK2
5GdIhLouzr41jqXKsyBiLK1HROUQwjwUek7hsvSNAB1Gc3FScgi7RYgVAte7iHo8+RboKxtZ3fjr
Jpv9fjRXlWkW4SkQRhqTsfEtrZEIfh/ViCZediR/0cWSP+v8Qu9pindTByio/uPjxAoomTRXZlUp
R51Glv1STDZomXUhbTfvyXGxn+TWrL8nsr9zsSbrRG3pqDrQHPEsuWrwXrvOn9bWlIbJ4H2ToRxh
WRjG6BmbFkUaBoZSOzAGDMcS0BaZVURkdXqamP6FB177NB3zEIO+kwSPm6B+OF9CipX3bIhoJ/Ne
VbUC2XhhzurbgdSQcWXSmJxwB9SiYhb9eZ12b1lv0V4C2ELH5qmkTV4HVyC7CUXoWw+3uEXucuAY
iibmvUrTMY5V6JfN2r0KNYKQg2zD8T7OW5OPr6YeV4OgzZJVC7uIu2TmJo0FYTJS2/9RXTCVcLML
JIqu39SS4Kc6J5sXBZWv6Q2/SRC2du1pnP4BRLFwMeoby/JY6HK5IT1s9bm9V3tIhPRhrj5QxAsk
+zX9uNVCOnDg/ukaRaK3Y/e5JFypDOzxt1CpX5+s5dPNnKP79yPecumeRMcLVLdTg/rUtK1ZsPdu
/X4sNfhsdInGxVA839ueZmgpw0IvJjnkwbBqkLfiNlSpH+nNK0gPFj8wW4ihSxNKK5tVQNdN0ehG
d9V7mZkFjlTRY5wbTcxcSVU2LgRp2QrJfUWsdvw0EwyMCBto1tyxQmvafN50yrZH9jAmcaGZJuzt
sWMF1ZJ6z47NCGCTYN4L8j2LbN0rBt2owI4qFqFN79njWTD1AWXFotvST5ORtkVbqyIO0/yo3bWr
K9e1uwXzNklWroLAGKi9c+tRufNFFymOZ8BTax+mIeWNfcegaQifvjx4s9Gg0UG/4GoexpJ+pjEz
mnPekxIDiDAjdBKwrlbxqh8k5A5H6793hk8hrKiIIXBSmw7d7A6BTb1K/qo1YD/67WvMQM45I98M
a/dm6GLgaypKtHe1GoeJojbDVin1/Pl6TeaKQi+KjAAw1PV+RCxgECm5o7LwtAGDbmaHCN3TSewo
yBA/a9BRoSPGFHho49Jzs6S3lnMuvW1Xke7AdwMGrmXRWdvbgC5MCw9RcykLlhD8tx/IUIfGL5TY
zEC/QR0xj60Ndg++VvL17GczG36dvNWjg/qh3hie3196KRMTOZGxV9/4vuBS9UCgCGO6m2FejPNz
sD3hQcp7lcWkiV+Q600HmZkaOKWRZsiaVc8cCqCndTChox9x74Cs8b/OmOmPlhAuJ7wL0BLI5DI5
rtPhrA9OEdPXCebFYUa/thAjebp5/IAG0hkRdRmEQFjoFAeNI32KEZBcmch6lXD/12UWYzq2YCMk
NZRjTvenvsOvjki/MogDYgnIWoWMwfezNcPOSw3O03jIi/gAKlM8f9+VBsuTp26zdEfbV2MGhkhl
h4VMyTbVN/id0JOyDUHvD6Yc8DPsroIQ5l9bbvh5UqYaEk/aOR2yXrEnErDEnB1CABKRzj6yXix2
M02mClJmtGewJLbcLxmIOtsVnQArXkNFbMuEMoSpkbaJA7TK6QA/H/UQHHdQBzfEtmSwk0V2uqDh
+I3w4E9r2dGBAuYirtQWD9QtD4HLzJ7EK/vhwY3Q1vwp4aeqpdtjIR4QUWnRbvG0hxEanYg4h8FJ
90mBMm6k6uAlVnRN1PdPKwRIySTdsIwkZca9U8/P5hosmKIh4rKDmMHeJepioy1YVZNJurR6SE89
JyM407y867iJxcelbc/K4Kem8q0WntaO5RoXEivh9wYR0rk6pX3CegHTGuLUlg63NpXkyGYu9XAs
Te9yaGlt3YDoZJKcrjtPe3H0GzwMFGUNttgO7r2L4Yu0HKYQJOEfHOkwR2ZUNR4YoJKTANAtKZZG
cdti65mLDqucKOg7cwbDUM7nCu+syL+GnPkDqmbTrBwrAY6G+Usvd+7IVe+HOZk6DFMoPhTc1n1s
pI4DLnpzONa8qs6laKMsfjCaZiWm+yg8aH5QAYQQ4q8RYk45Z+PBUj+iGAvjs9Bei4B6L+Uj/v9V
FPmGG5u6lzlpVz1VQVIkwKkiAxN60hWBkKr1JBzmSab9TJZ/0N3xalp31vOOe0JJ9CkmEowa0C+l
C299D01maVr3NEZ21p706jKA9IjrW94OAyOobrsQssezo5TxsmGzmnq22Va87brpqxU3JWfgEYSx
u/ZuW+Cz7f8g7KZ5bMs9gbGDjMLCaqNlV9E+95MoxwnTYM5RyX7aJ5mwqjbIUa4At8QFFAI074Wk
wotkyCri+lNXCHFQgszbbLFSFjUEKFzX4hzPV69Ulq/K3MCJH12PUxk8nkKGKA0yYseQxYMZ8ie9
IaoeyaWv+VCk5GWTZTxW/GOyXS+lw7qSZWtmL/BU2GFLn8xsjjMv4a8KOiXSQ9rW8IVuf0btJSbj
PEZB0Svf/MbTW8I2fKDww2mpYt1zDiDEV8khi95XA7NHT+URrVm1LhCRJEZ1WtFsTY1ZKHN7mxPA
TO6g19R/3lGhuQFNB/2TR+4Fdpp1RgewkfuNbLRIR2LsJdZ2NB9N85MFrsDk/A/5WiP7iGFv7F1z
djLw3yNEpfPvqXMdR872rOLCuqtgUqnVDhbJLuN9EYIfaWcjRpymuvwxiSFXuErooXKz2JQ7VV+k
dhB7PF5Ids9sHExD7tkwxxNeMydNIS6m/umdO7GRi/Vf/tC7qONiDVlbp+wKwYftBnx6m7Cxv2B8
fwzadOhugkNhB9NTiwLuwJtZ/cm4VHCOyEjH+FwnI6EbGxQFmDli0OvUCAMYr6fA86X3axVXq2cj
SyoFIug2Awh4YAEKqvoWkvspukRFQ6q5iZcNoEM/6olJ53sN4Do/YOiGQ1SKvluDCx4Z7dGKie5A
8CtyQZNgrtsOBNW5sNSCsnBPvyQHsqotm6PJLwDPfPb+G0k8sBcJ46fwYIiiPi9GjemEmi+HCP38
K7yXYvW4GDuDOpF+aG+rtAISYZwoahdm7CSSg7//8zLuBOo2OComUAka/eBBgakjsCUlwnBwDb0n
PtHMEU8fdL4afLe3gV6fM9+nGNjx6x5TZtbW0sQ6r1jUVB4IsV6J4mWNJp09uw/yjRwApugB2b/T
U3u5zVgF7Gjt9KdUkKLd9/VU/qYSQQJYrL0ekQds0VKf8/dqsFiPaqaD0SnzjDY+WZEDy2ONYqMR
fFkpzWN1w+OopRxDw5Y4JBB7Hj9e9aWJygfIld1UPSf7zZRXFknn1HUdqG9XWmC4EShn0R9fSGMy
KHnGe018OEJ1OeQlb8Ucy7HHSN0puNPChJT4hnW3YelcTGMvpTyROGa0iN8evmggxwo7Qd/daca4
OZb+uaao6i5Y+OyP27avJmjvQAhfYqM6QE+hmMQMl7Xz+FDh2W36YxW456SxUha7k+vI0X0TUpWN
qzTq0cZL6+EQl7hF8Grmi0EK8cxdCepwHFWK6aHrf6QtilznMcP5ZFUa8GeZUOy4YX1RsiGe75rG
YyqfxBs7BZsurrrZQHid7WZ9DMm1hKk7/TB7APRkJ4b6PAxeP9fZVw16BrrqjmP2B/2yiiY4bwL+
vj4d8w+ynwT27Ychfi7KNS4WFbokJxKz7ziIc1vecnlhQqsTjOhv1duLjcnOqPqGTSQl1xp6ClME
OEtCPfOZAOD57hNQt0I3Yq0yXIc/Kyp1LFqspxBeGlPsiQ2f/4sYngRXSR/tRIgJxhsck0SvgNVA
R8oOfgozyGNgYKMoM7fhJCjC7HNec/i3pl6a47bByTg9bQuEZKSeaYvvEEoLY+sKxrn9XtKiAb+X
7LJpUpSIazAwmgIw9Ee+0IZaGVp/4gE7eM/viOv9mnHEQZNY7JK36qmQsxn945/G5cyQjgTlOkmD
bBTF0MC4Abl6p7Yd02AhkdI4kzO3C7U086sTOD9HXWLvx3oDz1RWbyMW8jLnM7jtdxYJ2sVLVGt0
fqpS6wAgI3+9PYvJW/fArFUgUa3fXPrhc1Ycfduh5OM9DOHDeBriReIeLDm0C3eMfxTcB9As2G3h
Tu/J/fY2X8QjUMEc7vDdNhaMwsil/WKAOL1dihPXuNOyEsd8mnFmPa6MxjR9Qnly4ObGqSE8bGsv
JqYfjGMNfI2+9BQBmFxAYIT1cO0549NO4l7RIytI1vmWmx+b/yDQhKSj9RMnfUX502VA5nsu7PMz
rgAtaS9oDmj6mhVlXbZr7vfpaQ1ps/dAt3wG5bgzbmNxtKOnHyLFZTHcAK1pVqrC/nBBjMAYH3aT
dDBQsa3h2KHQBDiield3Rav4KGZlhSegopFxiTJuHAjpJXvX8XufkLHJEeGQdsJmdN8o+Qpt+ew/
UQ13/N+p4yRjdd094kvajvLaYQRxJoyUQeKzxV49ib9VY/6bDCcA2TN8u9o9HEBgOuc6xgMc6Vu6
7MpFZY+ILQRjm8d1D/3xNIviqK3VRmV/RBOf9lNKdFwfaLvl7h0aZwhG3EOwmAxDza5XVCoKsNWj
RaV1IbZ3vJA+xkwngAnxr0iL47V7lTTK/WLe4yDIgzdtGweguDWah2cI6o+SVO+6WNSkI1PkIyAp
xKtIdylVG7OkldQqC+jOKQfwS6dBuu4l13nW3sjmJm+CXL+5dZzuCLCRbQr+VfFekkJJoRAdXXL5
BHeUG94q/Ga8q+YBtDz7diBsw5ZW7n7NFNMeehXZ48K4oruHdu/E58p9lqQ0N8qrFPF5b7AKSIva
ZHDesdut9gEcEGOF6Ev52Qq+vTm2PNDYhlre0IyKrGGW5hGvnf23LW4IdHt+AU3Au1JUt9buF9MP
6saVrghEageiQJVUG5ZuEJLJOnAlbrEBBXZYgSkCoDr2bKEyqpDhG4fmgVI1B+LhfBkmPdFLVPDr
1K2QPJi3yQ1eI/I9SeIGvtU/YBEYFHGfgZ62hfUQO2CtkmL/qWuEKbFKUf8Ft8j4osMS5zEG1QZ2
YSwKR95OKTYXlKGllU0RE10PzFq9trFKE05eI7W3CPPHNF9cK7boqm6Yrsec4nuL50gGthCEUHYE
d2Mo559bxjVxPYQgpJbY9ElGYvG+LFfwN1wtjv/UVQa0qNnAMWSuT3GesnUnHOGxd5MLXDI6ISDY
FPMiwVoJpNuV0tfsNBQ0llP1BGXdMxi6s9bzUO8r4j6MxPa0Uj9KGNRdvhTq4znJK5EFWzNVzHJU
/Ar6Qv5QC05GmpUOhSOHOA7jMzbPO7cG7x+7axCNhRIkz5F+vCvscMgwWh7a6mgh9IIf8F7endh0
6rMd73ly+yxa0z5vRbctZ/I90hiVigWdyedU/os/xl6CGYJUAIKOriHtabovPwObDusVw/DOg2VD
EnRg05mmz+nKyxjB/dwgdpuVSIJmfJj0A4h7xM+nzeo1QIqty8TergdO4I3hsPpKi2llnf253t3c
KsiHdn9ZGMBRZi4yQ3enJB3Shh0nR6421AYF5BxlgPzQHl8eKnEAkUe7Muhuegf1YSyneDTy5Tyi
AsVcASZFR4UHPkyR3SgBzikiQ87D5JEV6n220GhG56UyVH9xrtsI5BjqZLm5QTAoUtmrzH7EMsYH
7DgHs9RxPe++112HlcqolN8yWupw3Uq8C8/jMmBkaZx3fpV+x8GeAf8CEUWc7N2xluOJ1WFUiaTc
MJbS+U0itEWeWAfCT+4uDF/SeN+1+E1e+sqL2tclb5mkJjfAKkhoWMcVORPu1AlxFTgpaeF7BZIW
36JOMeS5LY+hmmDrTem505cKx+hQiPt/Kwrk3e82TUNR3b+Sv8tIr0Ser658MH+p6/BzsdpDAZUd
qNlpfMvYY2p8UdUKiTC6iSuqyiaLGHTR21FxWfas6qU23kON9TxZS4kd3YKvt58+MVZLELTlVkTB
yWHm9UQ8ShBTlxqpF+zyJIi0aGmohp+DxBmL8LldXp72nrp0BBQAN3GbdtgkI5vsZW5+fYmL/utN
iaZaxNx1I955YDJ4REvTuCzSv2NEntRGg0o/Tpqsy05SaGw3/YTRwcdkhF/jq5I03rjldNcFJ2Si
afQ0Wz62GUlW1L4tnVwgUZSdAZwZgY8JI2PXBwRU4v+Je/iR2gagagDaEFCyubn4Gg8guNody3Yn
3BPMMmiWZ0B4O884BAx2Ovt6kCuoqokpcbV9mt+ERuewwjstK1Qbs/PleHSEC4DRlUs42yWHpP8O
iV4+uglsu5nAySqdUQZH+oKtfLzufsCLO4hlEedxb1OWZC7KrK2HTkqfFdVtbKdxt6cMxD7tIWuR
q3thQ7enEdZBzPlWZOyAd+1xNectBFuKAxgpgXyhq7kyLSlkcvxwpItWrfDJxr+8RU5d8e2lJUj/
eZ4TZiDt4p73uCDxYhoTQu9HAQRivbFNh6jpavt09hy2753TtNMyiTrovG3sBoUsHNOerOZcOg6o
0LVoF0lVdtajp+YusfU7jfFE+RQctGZmwRaJnxt1Z4w56iJMw7RP33kqhkGE2/w2CjMR4WxBPol9
adNK1oqkYju+q52gaS530WJqFvUiXifR2MJdzBJS1fCgtKTkIden3wzhlcco0bXs4J+sXRlE657q
aQRjM13T9IS82S/1P4540/HzelRATHY7PcoNlmuOm5HLQ4gLxoNqCQDo4o2bt2d4dWYche65/yzA
1+LSLrBXoPvL+YUOLpGad0RdHA9D3vKnL0E4n8dZLuYGzqLsq5ou6W/ycV42wPxr+Ktzjpb9kheG
BCoHdChamZQO2PtD12OWnslm5pfoVPgfOeXHSV8vlmBp+9ZM6WNd5NREuaqi+4o5A/XzYZPTUUqs
SS+mDRVlkmao/bD4/EVH/GbCgbKKzx2HTroU2Uv1JHfIatit1tNmwUYPwjVxjPj+EHMMQlexIBeF
KzkkCVsRjePnNlclGTW10rXxmsUZI/yHmHybGAwmEQi2E2lf6CJzT6URS6rMSmkfHip6eKmJiNVH
p/DoW5khw5tvVKoF2DXBV2TtzbOcq680F9aGFbKXZJk9GCz8Da45Tb4VQqVwitAiCpShURhxCSfU
R0ta3i1JZ2VWqwoBsI6tWl84Qj7kb40YAOcSlJ+VuRaZ69KF/niPmQjNYM+DHJbNt+MMX+oZMcju
gY0AGF5K30t91JnK+HT3fRir6J1jkSjX4eSLClSVZCQxMIH10OLJP1xCO0y9lcu/R2/JFe1XBQIo
Sp43sQ39SMscSs0GxL/blV44oKU3qYyevgVpw1EtpM++EUTX0tZo36by4VkNhCky60M5zQ9Y9trU
p5UqeOF2gIJkuuhrFztQQbfJ4RWAelkQEob2MPbw96Hp21mwcRqxzf3hTQ0k/t/+F42M1fgVj9rZ
lyP0fCEVcQehLkFaklYf/wmlzsWjUNEaugvhAiKLRd2r4zR4wgEwsyX+JMPOt6VqQzW7l4mqMA6S
ICR/DoV7JxqrovLQ2oXFku5nbMrgVG8lYLa5sSZM9rJAKDhspNwJcnx6awWFduKJTqWUjt69QPfv
g7oT7yogt6i1V5a9PXlBQSJLVXm/3o0uo9E1kIVy2oZJxx9DCZUZJraLW/SKshQa2QMZMcVWBwux
n6t4JmbCRfzUaOc/CKJfOn8HC0jUejA45AEbZQf14/y972hVYpo3LqmKq49+zkc51mUUlDE38+76
tSjUdHaAm0b2dvKF+zl6orwMhLfvHX5HTiZQWxKDzEeAc83TuJwMTlloXVzXE9DwoFPzLXSCDerE
ctEbsgwW1a/rZCas5SErB8J2905cgqLNbkvD4R03Wm29wkvwluih4POrLkLDj7ZniLUExf+oApdB
OMzaODrhvYNZ9CftFJ98E62Sh6WhJ5xFY2esSzornm86hfhWoaHhwKCOs0R+OwHSDYT/yC3+5rJN
QR15GZynHCYjNTOUTzkUCMD+bPnpWMx94g2Dc1AjLWGuExma6UL4g2vWmsC5Rw8u8oWuvZ7DMTYY
kw6iWA79NaGp1Ke9tSBFxGbmgkRzpshMy6aWDBVx56W1M5PHA2YKsT4SJhdfWdZq94Scx/I+Gx6Z
PmKq/voWMjHCEJ7nTEpLINpM5YgI8x1LLjSZGLxC3hMWSzyP8b1SWPKS7gdz6bjzdtz1P4VOgaJx
4JP76KaGTkTdcB5hcywweCPKtsrdG6MgvbnN0GVux+sIqsLibwpYonUGjQZHK/rRKn33xuYQeqw2
QG9F9jniM77wRQ5uuu1b89ERYvt+6mdJek9NjEH2WYJP3KIycqqB2IrnVotzB4afHmAplvHqw7pC
ScAWvEONN+cL1PtlLsomzDGeNmvvIWr1FrveQB2hMdkIeaY1+Masl8SLAVOLhIO0SiseBPpiRqy2
S4v7ruJH4Mzw3HdazWAlA/goILCh8UicPy/UW6hLUMX8FHlxC9kiRx/TKHI0u/Yz5t+mbx3RVyFN
hHFw4kiCYOLUNX0+4f95mKs1Pl3K4kgzbm4TKTdlJbeMR5gizWoj5fDQFO4wOrOUi6V1FOmUdKT2
P5CJuz0PaGnsi/7d3XxXfVQj/0tm8qVue8G/T3PYSTeGt+gh0E+78h8RWZfTs8H2Lq1NvYJPCAsF
QudbgebSusWWQikuyyx2m8cmtGFDFVvMQ32V8AY3TY8JrstiDxCOkXU0ZDlnHEfBAjl/gyAuXFey
uGbBPJ8EeIwC712SQ+xvIv2dLz+GWCaWHVc9jI7boNCVPfsdB+ZZoGEidskhLMQDhATl2IWR5d1Z
SzmausH5Nf9jXt3fK0oglyI7lJSJ7wNATlSrl8P5COijUdnVyrcHjLfysaVad7ckTeHgZQA4XQm0
17Vl2CQOGzg6oqneZNYlH4aMADqZ7LM00+37GOZTK2WIR04Sg1Qsop04YqP6KwnwBX/tdzJCfar3
awvImB08wdUnYyd1HNIRQ3tMPNZZR1gOEvEcg/Et3+4nyH+B9eBjuuSLEru4Y4mAD7/uuhFcWH21
nLgR/kPEZO0vXtB7XJIraUsV5RENA6YeIajsm3IoCO0onSVspF4LPVcFCkqcE74U9dJ9zBrgrQBa
GQ8TJOITZJWMV4oNooo6WP6QRrwblCIwPz+oa9NOBCQKN/i0GoMWe6iNWYagHrZZ7DKNk6ddJYM1
w8y2I5csZ0VDtKFezDP//EBPrP7h54+N9USeDCsGuk3Wzz1Vyj7QMdFQJR6K7wlL0QESKO1bZfYb
J+miqptAhOpWe9l1/FG2XIOI/OeYLEMvg97INpbB5ZFjBA7BHpjbWNAuSXuy2nvJeME8PG9zqEu4
xTKXe0jugmG2mU/8PnSNT6PB0/vn7PqH2sB+c7YTfCnVZnk+bTB3Z+deLEJKjcYpMKRXP69GZCGs
XFzufCdrkKagNnDLj82VeyIu8poHmr9tVCqg5AyAO2PP6lxtd30QULhulJiIsSyMdWc+L/T/sp6G
GbIxK/HFvu19l+WoCZt4Ufi+hFQ8G8sXLzhazBTS38Tv0aygpse+DL29YnLelfvLKGxhssQwFuw6
O53aphPORkKkQEkMgzs4glKWgCpDwyjJMY/IcMvQdMb4H1rfHsS4vHedKWfvSBpAVZx2JvZUUyvi
ph8/gTWxI8232FbF2QlVyDKHUf32gklIemkD2nVqO3MEZxdGgK/gvQr4hLzF/q94LP7juzPxKVyM
/UuQh1HnRPyiMe8rSwG5wU/h43Vk5jO0/6xPLhQUo361OwEKTqRKzXqKKD8hKOO2CUa3kQxBdpYw
gXkfTHa+WcAFzeZvVV7RxwyBE6+4utDhtWPBn1Q61CWmtR59Wnh6ixd9NwpDjaTYtw0W5Sxw3yWP
t9CfizayeKesvTQ76DpUaZR5gPfUMO/+kAoQnlbaUiJno5rqFiGz501tMm/N+F3eifobo0otOsyF
z6r1hA88ES+lEc2olJl3KRkd+KYeEqxATzgYvAFAE+7qYqScV+YdfQZr8eQUORUvmBw+ioRG6mOT
Vszm1LGVvYpvYwY2KNLG051p9Kz6kOD5Gl3sLcH9wCtQW0gBQ0Z2KnGhRScEDWk9WNi/AkBH7VPX
U2B64BaAAv4MU7tATNYCWg7sdYrTPj+J0vJoy0LBNENYxL2wg15O7DZcxZ76jYEKs0DhKg039pXl
OUKGV4v2S1/6OTMEktrrPmNwifUT+eJhqMstmoLIYgouKOV6Br7YEC/W4mxLRLkLMeLMPqqBos4v
nKwVqJumg7QREW+K5zWxay+a0KxsiohyQfjmosRiHL/zkcX31CLMITYZURDuXVTlbweKX2vsOhce
8V/kSEurJCiujpifHRT8S4U8Xqay9Yqceip1spX8BcWXfHkOq1x9JZm6jk6fLSuXIHp1Ci9NOTjI
0hzSHxutHkN56sYTFTromOy4MeLO7My+wRY6z8VjXPHDUyxEnowskAKWx/eJucvJgvfu+0CBMrA3
/U1f8iPtZHVs5lEZLqgMK1WVVX14i9XrV/0HbOTmxOZSl4NJoirmC92Tt4CUYYlkuCx/M4XeuIim
nV+1+0qwrwxJSkHU3WSC7gKymSF7Ouk2Zk4othXjZzblYDDg61+Z91487hZBZl7XmCfyeCBIaMcv
f+vJLw6Az1IRO+MhmxzClEiLLcH5s3PBlq/wmZ62uBJBXeLzD8v35KSqWaVqyS0nA+MM7pKltHlX
gRWIR3Tp7BbKe0SVFYxkEaINe+UmCKpSuNKf0sc4YHiOc55AV0Hfv7a7Ja0YBmxU2I92XgEPU1Kd
oaT4qH/4TiQOiVEnb4hd/NPg/HI+WdI7nP05/MOh/9smXT1TSmoxXvnl3CTQwI8oLh9ET+geEhjL
cLZkON1wd9sVuggNVKP60tgMYr16cfVWR+l4yIP+M4LGtrmjaFy47DLfsb21iO22DtmZCr3RLLXL
GvUDm3sKYwx+gNLPljoyxIp5YExP5bPnlsiWKN5RtsGTtGqUQv5zi82K/luh2g0dTSbg4v2/DXeb
zQqAPB2m1dVi/zOiX/eW45hozW7vd285TJRZ43fPpHuvkZA0Ymzj+e1gCSx2U5cIsS/XCoEjFuQU
mMggYuBCTb2wjg7PIHMjsPa4+3Nw8EPCrndhDLatkYMJY7wg0/+COVkHnhNtHg2O/d4X94JO25gX
bpLDY2YkKuVVzg+TMQ1PzSfvHlcYp+WY6PmWuEJszvcY2zY5ohqvGY2ENb0i0fCFD7fQvWPcDaQ9
ocEBi5ijz3NIa5ZKIoHJ6fwe+wWgxhDdVdoBEindQs6c3gtnJtT6VlphwdigOGXU28yMA97uP6SV
3yzu/i9HKXFGEIZ2D30PHf2oFEzfdhValUdrWu2LG1HuLAZgL5n3vJHViGztedc4xJ5iRamkXpi7
OmS4dXEKC0cm9g5LXlguD7/uUnTBCmC108Z3EdhnC9slOfziRMPJtOqdaOQ/rif+p3rt/12Qq/0b
pbnlC48HSw413FZBSTa2/gH8sOP0ZxfcrNwwVUhob4YNk2+kqJ1uCjo+TDzLCgA4kJCpsotgmAZj
axZ3g00xGxVWD96Bv315WLA5mgMmaWw+6oWvFIyob9j8YlMhFas4FkqV0qhvu/MSHDLWT0iymu/G
PcS0NyOmN33VA5Rbpa+0XWC8M070+qx47w6KTwnkIJc5nHNzliqxxvtm56hA1eF81TkurkMNiCus
rH0JW5m5a7PAKHZ+HLpLbxMfhKlyV2xxBdkqwshm6AwWfNCl8krDusN7c1+6oOzNofRVSN8GhD0i
Yfd/Pqm6uEJuL/PQrqBrck1HC2N6vKm4Jpgg1SHwimJY/KPnNeT3op/Yf70CN/9WA+pLACVZXEGs
1tvt1cltDr7UeHldQNeuJaMaO3flQRjjNOjhSXHKFp4HQqYGa5mKErceh8RzDWEpmeYqv+GMqayA
9kMZQhedrfDPmTtB6ZZiu3w+q2aoQyMNe54de2NeU1sS0uzUZDwUSaZQaQbdXtwP4alI3adebOX4
0ADa01VX+Xq1D6KqZYIPrqSkrzpc9BenByT2MhxLD8OGHM/OgExexb384y+Hj9R8776x4CeglXea
GtqhRSpp3x04dt0dAd2kKwQnFXuj8GjIZx35Xqaiq9kJcNHDUg8HaommWEley8ELtIIk/NbaeDPg
cVSmlhJk+sdcbpncpXGHnNkRTu2OBRkWakVIcb+vkPehkHhOd60V5oEJpl/bn+6o10ptzleji445
7IC5cxlfo4qJu4XrSJ20r9567ATkzCkZp7S6HgMNdhqQ6jHzhmLA4gbPAxVg9BzIodiqjQNuQJme
uFA7H04dEQ0R4/zHzeENoZlPOOJiQUyCsfJRRNkIJEPpMTFcsKZ6LzBQSyxSJWC0uEI11NNJn46z
T7WIzOxPEfzfy2zntQlpvFNPgxewW2aFPTkvezFgdiY/IjQzzYopro557qIEjrksAOH49Nm1MwEz
ezn1Ux7J9qP+8Ea2bB4TzMDYsdKHScMwGfj+UWzBuMA4wMRQA6uTiK4WFyK13Goc7FKluCVBJaIc
Iz1pikNP8+PhmF9+2vitnQceaPCgkAMoG0EpdkBgYgwzP3r2hIP0B+TMDlkzwbjNE1fT2xTdHLtL
KLrxIqqi+PfpQZAi3AYyItflq36rt1WbIxTmg25a5N3jH6AT8P2AmpRcHQskh6npLVsRnY6TZmEZ
lo6UwCJiGpDvV7vqNoi7HGkjHFe0qKaSArAba/8b24cVVoqC64LL0r1jNzTzb3IlFPENaExZzr/h
b/4kUDMrrt5DgwVBb7Vtc+e5pD6YqAMGMVuagNeDDC8KgzCCnRrml+tUwMXDXsDtW0UV4RP9X1EZ
nmNInHy+8NYfJ9iXxIGHK1MR6tWBcXK6Jyr5hxwONzPG5wH/H1ZpwBddWsUQo6x16E8nMGCr6JB5
Ue6oZGpgihPXDb0tYaGV378Vla9WYZ6GX0jRkBE7z9RSPTGpq4o0G60V3JK1pMVhI5RX7cWG565d
3WsneAPeEDcfrwPez1+kPy3tGlO1jRnWrDv911vGNzBBHYkKvTd6AJSl4vHvit82f7tZ2Ewc+oTL
XYbkZoqiwoNOHdwGtUrwE2XToqJW5gKca/1cnmYN/Fn0ln+J/AxBoPbwX18U2nJ6eJicXuzgie9y
2BqhheVsbHAVQ50s2wrwSLwpt+1eF9cJ6QjZqI9ggmA5XAfBivnVjK8PmHdWnSVas8uAKPwJwLkF
QR9wtjX3FV/ER6DPSdxcwWz3zE4JXKLZBt5B8snHLXG2UlbterwWGYGpPrLCX4vKA4a5tXRBrlhu
j1xE7O5B3iPIWlOmYPzbD/znhjKwrIBTr1VphQCPuUQGWoKLKWDFmJU5wnUG+D1PQ6OPFZ21tPO5
DKtqHUQqmLJuZJEBrb0Yoet5NaLcE80r9rlYhNnsaO/qZWZXuyvjW8lHPXCwt/dnzxsztQwgwvpF
ArATSCx6xrdPZMOJzuBL96en8lwFUgck1iQqlkwViKTKdlX585tZctFScy0S5Fqu6Wu/7Iw/dIlD
h6ghVwSRGSP6Rxcfv9zkmSA6B64yP/3ycY+EA9NSQAeCSpbNKhm/F/ujQph/XhLtVEmGxrGKQHkT
3bONbMtS14lxjd23cZfmwNgtyAO+DVutjeu49P3GzTYKTrLraYhey2iHEW6bp33r49wjjRlSaBQ6
xCKkXpmwnr1s1vHccTkJeX8af/VJnog4jTZjBS03UJhD67p63ojAaDVgWHTRCw+npOrnRnL6wbuE
rjzd0SWt/BTsDZnHa73vwlnCg8pNux9Jep5SY594BqUYwgav3NLE+vGUB2FHqDIdpF7o0UHP1lFl
s5JKWPQP4Za44N60O8IVokkVRLO/g0D5BXh8hSaFxhoslDbQU0zuiamcH9TlYIzi0fD/o8FJPmzi
onhMK1Cig8Z95w+JwqswJM1P5l7mNeDIQKkug9KT1mw4kyHON0cN/K0RDrn8gccYce8n+jvg8JAG
I3Y+IShrcxwG65Hy7Mq3uEi+izitHRE40qEBjiSbVJhHMzuXsQvUCKDkaJMijExDcPUx1/4CUPLn
8//Ay0PR11Srhq57ufDWJNmQ2K3C6kiXtz8VcA4axW2t3ex2xgUNOMjetRjBmKygWrbYCPfYH32a
PXMOEqDCUJpa9sQbcZ3MwNGbeZWZCLDynkLj9Ohx7IkkTKgajDyWunxvjRxNktAnizgiw1qMHg1c
ytt6pH3tTRB++ZY5XsFXoBioC+q0colbOAOYp8f9hAMkmVzt2TUtp7fiFkaPuU0qTnCpp9JQjJ+3
xT/VtZBY2cbqW+v5Qv284hFrMohJo1/GQdxFVS1eF5jys6xjYXbYGXrxqpJ5j6Ku4okP4gktCwuz
40SmGgh7ol0Niys5kkPfhqg9lVPBqGNUGsnPbplWpN6ef1W9aKKOceK57EWwM7nToRMs7wqr7ojA
veY+Qmpk5PgOn0p7+VXq0v/pyXJElV/yDI5+FL2o6Q0E6fu3JysMv/u1/FeYglPi07Ies6yihrtk
rd4MIeHRk/h8S47/OS8whhRjAdLLKPxQ3U1pkeviUTKOpj7pqHG4yMDVcb0dPaL/ijrtsvcqEx/P
fA6dCvHFL8qo8NNzGuZDDh19i/SUjmsWc2zRM7UnvLFImiLFbWs5E0XQt+vjxZyJe2nziryqJLPv
b2zroyToSjv4Yz//ba88rr4KPgrB/aT5hxQNVeWQTml1HlPjlMw+1vvuGLse5QWhXc7tvNH5Dxrh
1RvjKOqDiH6nD4cB1mGiZjT3SV0BOpMNM+XvDS/CnE+PxxF3mCx3n7BwH66N2c3kOHu60D5j4JBE
tzxeK5KQxhtsL7qGyMkYnJ+UqeisX5lvzT5JXxI5zcsxHQrOFOojIfy0aE1nTyFWoCeHBCh/QT3d
nZczgEvVSzODLikhU4Ox+6kNBaTaIWF8gscIll+v8mQv7xwTNZui0XVMQ/k05ai0wgHLr5gRr6fk
TptIlORXkpIG4UaB1p0FNmPnmfwKXXyV/UsUFAn8tWaOS9V2Z+pmjlGafLthGfwJkcKU0pFk5uaP
fg0R/p9VIUMZjm6mW1Bpal7O1gNVDrGGzn5a8ppr9sx2l9IAHD+6HOwe5sCmcjynzDfv5aS1LPIp
Nne2z2NXNkP08v1f9gv+QdEpn27GBw2kxwMJ0nAOBlTJ1g/XchzwDN5y8zSXhU65hK1qsJKoHMq4
eLDHSe1nPxM8x5UhK3cLYK3FCpdrxBPXvktbPI71vc8ox+60paAibjtvevKljqwDXkDAmS9nOD/y
H8YBjERyYhqSgh5aoyDvpENC59cH4f242QJtRogoHLyUqNga0H1/EPh0HsYk0kllw+mQVF+kGggN
JQInLyyaJpNp1rZBDTgWj/c3/qabFR8YghBSsuGsqEFcK1REK7eAo4lKOElRQa+l7y1pVNIx4oae
dAgXCajaAM4vkyDEyl4Be0kfEPPaPtYEj2URaiBxIeZK+0YSSez7uecWsTnHG0/04hGU4KuKyGTU
3hA8nuXVokPjb2ofZc9/1i5GsGcPEFz2ftqsva+10cDjNg0ajE4wtDnaAjtdfKXmNT1d00mbxkhn
8qujRWLdwX/Y/Qz3jHQYmm/yAUiUNWa/iWXgkcC6MZI9GjFtbdiOTxrFjccq28GJSWu0Gd7x3Au9
p5sc/9/qF9M8Y/2l0+CMq2aV2aOZE4gV5dLRkmEgShlKNRENd2Bxb81mavVPVKDLTBm0m3UFWOUY
4P65tziygJKe+ksG8n305ltw7lcfNAJMiXHZT77Cb83WJShQ+cUGMitSlD8VNsEORxYaR71KlERy
8REz6qQ9q1EEqctxMC8Xm6KyKKKIpGdtNEMkiH+Z0JyTminuiP9pqOPW6o9vjzSMCnaBkKHzon2G
D12UoX9ZhOHLhU8EV+BdYSr9pw/B8mscYCkMt+OSCptAw1yRVjQTdFd5wog0TPgBR+C0HwYRK0Tz
N5o05pIgpj/cz6kHu6T8aILJWWZXoDZPdLlX5rphtysW4P1ocuK4mGGhRmy20Zjxg0A7IkNSTnsy
lpCBgpCTGBDPmeYqrkXMKjjk5mU5wVNOOaIpXVjUsVAuB3ZvuSGpxo5LWGBBZe8hWXG7tiedfy74
yzC5DksmpYi2/allJ7dFOzcMBOVKGyeJM1XoerwOqOFDJGl9GXQ6E5wxM0hMLcMM0qx3Tex8Tacn
pvJOLvyE6RAh3mNsC7gmIIf2KDPiY0whJd7G/50DvkXAKQzjUOHRBwTeGgGdnKfottr3s47HiPEY
wXPAWS9Pi0kuZ4JLTfqq6CoWqvRFoln0ldRrbIwTPzcFMmmH7UTWdT0N3Zjwjs00IwQzmN9n7Rvw
4IKEJn5NtF4zY75NoRSJjdFLCkanhRXahblYwQ0+pXcCkj3VbJwTrx5e1K5p4h+BhH4uCpe2hb0m
PrebSwysxLzw6F/FU8mqfnZ4ksU2rY0agtofX0/ea1NuH9YA7iK5yo575zNflhGh0GzNxlv5nga6
JAhditEN1aAAYx5aeUS1AynuRCcFAGhEfcD+09f4YMot2IbV3Jlr0EjXaTPE8CSIzEaJ5KTUm3W3
ZDtWAoL+XOvw+9tkIDMr6b7XGIgMkrNYB8WkHA0tz5J8SvtMX0AS699p17GTjBTqpCpHrfEVR2cP
i5rm/5/MYlEwSrCO2eSs4IqGltXyl5jbqA74E5VpSSgP+vQE4qH4jTuwqprUUXJ0wtyI//8z22EO
6GqBgr3wIFbd+36+yGM3fJHCAyP80tCu+z9BTPQcLbvnKy4y8c3HKFilp/zKuYeeoMMRG6bg+2ee
OzSjXcRl8odX7WnjheJCs9VhvrpJSZjHJHsEWGLiyYqDp21PQ7icL0VOHMNvoL395LTj4t8vi7uV
LUUa8dtOX0+VwQkA99n1OdhEdRu3mrDQxszzuSo6Z2YtWZGjF7U2C6RO8Dk5DCngLkAoX1RO/6Gw
b1TfGzVuQ8NQHh9Z2oVCyqEUi4KSynj2X4Boo5eB4oZ1Q3c3+RAQMHnPsURmQh4tct2bisyRUotO
VN/mDex8TFzD9N2sYhuZdLQxbNjELFvoXOFvTobPBYeqZjjKay/qfoRwvk5pinC3dzSlyoKliQb0
H3svssn22zyfMzE6Iz/tKHWniPwKHTFpEembcmNGzGhe841L0WmymxBTznZ6iAT8oowxTOYpGOYG
9bo+XkT6uA75JmO4kHy7ppA0kNbtToeBqwr8tccYpnLpKrjnP76QxmoHNmsNyiODET9Cg9Q83ofs
hq2cgKoVORNuQgiVxXD6e3YamoflF/pLNDsjwB2CLfCqIRwzVeGpgZCdB8lyK1/dFnG+t+sMMQ+v
PIC4Y71JQbYkmPmo/8xRcjW6ArJq3FEbFDTs/IYVyLtbw1bWuxog3BcdxLRKma5MwkKR+ERcMn0U
K/n/1QoELc1q9V+ybeKy7zuPUuyATvDy3PoACbk9Qvcc8UGmt719iw4FhCPTSuGxE4vRhEgyDUKa
Z0B0rOtJ6SLBYNB6DBYBwT6h/TxwSt8/gQEfGg7lfkQ72MxFEHk4mZj+6pTBKabqhS/voSRJapqI
WpPTDMXqPBUjKEPyovSQb/Q5j+Kj9gbjGXc2rWAfLP/pej1d+RJGXDYgQiZVA0Y+AMFoHpbck63x
A86FXr7H5Dh/eyzTql2AJ6LJtIlqr1fETXPM1i6zE1ZCgK+ZdzJ2mlKZRvEtgDEeUHetxxT37GPr
ijvndNvUAP8Au8MMOhsanDIa6dbwh9i9ZugTgwS+FbEz2iaJkifQCBGhyIIfFDgiX8BPd7b2QQBS
YUcJuK5YOsfMfmOw57CletvOBbDnHIppNNoojZfiS0prj4UunZd22HsqRpWamtWX06XQH9PeQ/R5
y38SzQrkPIDgDqqaQ+V7w+K7KY3NgP+T9iMYArKLmkOkRc51GqJRlLLat9KZtHQBjFYl8X+2qONW
YnVGRyn33ezWBSfUGxYczwUjRWlAuG+y5OKephi+JldU2ntPRy0rPSPpkVac7LNOFSXQhUI+3iJq
09TfSlhrzRfjjkCHuv7/BDjm957TJz6qwyb+eoOV8LHLdiewN7rjxv8CVzPmMrqXAOQUAZrDCsZZ
NRjdstXTewYlBV4E8AkC4hDkvQsD2l5jMu/75YpzYYjzrb2T/d/7+vGG6NT52JkMPg/l9lPiYwrN
aiTDivQuM4kcem0cj8mFWSknX3aaU7B4UHlbUusas7n1UKQe30u/KY1Ku2DlmIxtlhkNtXclHeY9
PKapn/u0089F0KvYbXGBR0cQebOLAQ5uxp1D6dfK9kk8gWy9RDenbiWCSBzi18o2jqboVBnMRYDL
UX2h6LO3QVFDTtTVj+LPWsQFdrGmM7gUepriiqqNvkJV7v+zndT5VvfTkKURJjj5K8/YmksUIvSe
aa2tLsJgRKzviA4+idw+xmCG3yS/yqsI6j0yxbznPgxC/eV/Wh2zxXAq3LIxfYRwzMOl+BqJYmmO
mUcMIcjl3O2DTtVAaoKzeB3/1o9WJy+aVAb7txrEOTFMcv3bpLe7H5PBqueWIAGvAic0IYyHDwzz
vhW8Ll8GFlbrUCESjjqGCCg5ZUjm5QM4Ur22jPgvt9a10sdFCWbXWnM5PvsDOC3yFoDif6z77pLV
bxlooVgDvbmR0Te7WXFPSprMjVHGM3YzD5vA26o3UBRM11hX587QaCUFRULoSJi0/jCIBRgN3Ggp
UVc369XK9Qrrrr+BRkY2bY7zz2ezdZUj41A2RaxzwqYgQWYz5RiWhbd4EIET4KKB0RA4v1fbq/Uz
HMQzoSJ7aReVBoI+/Bft/dHp2Gz1V8MQ+KMEE3uIOrkUN/7XkOdkb9MpyNUSahar3VJCPq03UFWa
QTCp8QZ+rP2N423/4VUn7Gok/LSpL+UN8qeRBgA1HerdUWqGGkPaBnqKwIgNW415XY2xgF86ThBZ
WgcfKtuLr+y/UmRYuTUAti7H7ZF9jhJ0SFLDpliWwmt+uNwhN/d8PHJnWVVErA1kdI8WrbBNO4Aj
qAiexV/lL3P1819uLUPfgJ+jmTI3lTx5GWmhXQocWrvfhKrgSxarn1F4U6xxUJ9dzPseLHVWRoBf
vrKoeZBJN6Aur/ofcYLSxwCv92orsotyX4/k4ItCnPksPsguNOFeAP9E8Sa1T0zCayFczdxkyAi9
MZOrOx2NyGrWKTsMKq/o1wyn39JRKnBcJv0JpmzWn+beGea3QAlbIOrH9ZQZQU/YB8YmznlcagF1
C2N2Vnp6AP0rkfEoFA3lYKRTMcjCKqJ0V2iTRKxatw9mTup6GaJrYqUUEUqn9eDnOhVLe2AtlTR+
BmBVQKuKiix5QnvVpaMVQKvbuEhvKou2NQfMTGx0Iqo1PA18BqsrNbrw+PxdenyfWIONQjQOM9+j
kVch/SnQ8laVV/LhzY5h9kJOUHS+C4GYkm0Szcl0SiEXaOQIiqw0AGaswGtQcuqkFFqcNkDvnQIF
MMj5xqCANvI59bUKrYy7ok8LA8j5JZEEz5Z1UKY/yXPZZCyk89YeOv02PhgKtnY7aJ/J80hAbXAy
lw/LltffPhDfU6XXXYrdv0YH566DT10HSO+3R3Wr/jiWY2hhur6LRhaynhEIqQJePd8Y92U4AcoO
kW25jorEWRU2GuBoOlP7vgSMn/aztSnei7yQk3O+gO0smVIDA9RqvdRN+FJQw6IjiH0AAEvKDMeo
1MO2cHcg6AcmNYMF2pxo58jeQxZgZ6JnMvLfHLwSa57O6WnObENh2JBgy+V5BFMHdv55ajF5359+
yun0rg8H4XohXIOTNyud4ubZ1Xh1g4fc5yd/ST3i3FLzNBl/ZtuD/0E/qbM9FarO/oXJDLYv7rcY
iktBLyHGAeOlQ1BT9P8sBXIZ7KjhTLfVbchRhvSfydgxCPbnyCZ1i+vRhKDYIdgnkATftA0465O3
2rWDvHT+0hCJBtg0TtP0wgh3531GqrIaGLQj7IqRB9xXQmjOclXWtYGApWmVnvJloL9UMD+T5Zcd
6DYlThqm/MmZ53P54m4o96o2QqAKDV7BIqElLjHDZouKFFTyaxZikrX5bP2DjV9VV6X3JnypvkKc
0dJe5O5dwqvGTQooXSCHha7RQA/JcKiGwF3M2NX8AgWLsNUl/yqp9NMigeb3ODyvzKWycCWsRcwb
MvdYmgYHfZy+AM4H+Vy1DJuWyiIEu46vhdRFzKNTMratcy3CfUa81wZ5xNCHdfk4dQ4jU9JDyqT9
W39fkf+Zk4qzxBL2wDw7kRd8Es9Tq6IcUJdDkZHlatgKZn/Xs5clN9x3toHHWsFt15VdmDqz66xr
LWb+lZw4c70kHJU2EIqm9UA0r06j3kebkU8MCC98Sn4hRnrz+IlQyMnXK5NBol3YY3ycvaH9rAh+
qQJQAPanAcCb+d8VItFlPLaldVRvN+sMJwQfMuchHabFnzoTF6VxdcjErc7OMqbKBfLsFEIWJZC4
nVuB2A+CG4N1nsUvTFZF2UVbzW5LWsLidxF6spW6UEEA++/QUynTfZwjp6YsaoomesLGOnBbLvfY
IOcpXdm6Pf3WppkTvoNhAEU0N0BLX/C31yYeb147wwTvsD/P41CLyyOnYU/LEFbKT13TXvYqDtBh
HX4HJvGjaQPg8UOLjby8bGCMYULfoDWEZpMDt8IXx8VRnbfDU540KGJfvXGlPgNNVJPQZIhDJCqr
lHrccy40QItq12MddBRqwX3Q2HJLRhV67jASXVkzVPJVRIKn1RTRST2Vv73OOXFurNDrKCQZHl9G
xc4+4KyFbWOD8czpUKPRcW52UNrPpf2F0v4M/6usnklDSqAPlueUX+S4l1m3jiOP9TzjLSjXfo4h
QK7Un9H11towQzh/RnJ6uIHk/TEM57fUNd3h7EBfmnilIeJOTVxeFADMpH6HcdS5TPrFvewhohb5
IJuoA6isGPu5fSp+EJKEBlLfAQP1wkUMaX7+YtXKtjV9ZuLyVeGsVGT+mKPBd3vLThiTFR0k1oh6
yfdwALPnqy21FsFABUyDU5QFW54dqEg1BL9Je4cRYJG95NzvLMDl2hFVHqgW9IzgJuIQzwS6SnPT
VKHr3OgY7vAKS5mgxobKYy7U+5lbvphkctrXN1HK8RjEO+RSILMjTi+27Nxys7iXENekI1ZMxALG
xdn4nhQ8yujYwMJR0hw0+ghKtG0gSSURvCfv7zUWQeKJ50jWzn8N59p+Fp9NWhq78cTwQY30y8z3
PMOIlko0pMRcm6BtY1DV3Hgdb2Zmxdc++wlm8t17xloFOpSj5UhgQT+F32eRHmapoibWRbuCGQ+K
jWUN4QfnuCOK6D7viNTiC9J2Oh6AcZknHrK+relfk2a1sOOsgfVckwmG1Es/j6E0x9T4NhEVmQkR
EGEttW/NSCqra2aj6fd5WBFFt8HJh7vaxDU5sjbBWXnvHdFeIUdgewDDhhCx0mfnKftktt9hCU2n
WS0LUhyrIoe5zoNyuSV3S747ORL0a3xRfWG0NeG6chbv/bCEWESFUSplYD2O8/mV5H6KiQ3T9FQf
pzzGm30wqSuasU5Y0Ob595OGdSZHuca/8CPj8y8qbms/wWm38Y1YlFgNLDOsnYh08nHYIhfIU3oR
F1s5bpxtJehTwV7mt5s1xwbZq6TFNFl7hiwmsQkpW9XZxluM04NWpAwxDW9O7MuM8JuBHfVkOKjz
KsCHsVTUoV5ilf+hBZBv7KRdsbFm+iySqujeClKl5AzomMrsUjj8KUFAxXe+7iZujq689+qQsAPx
/yThQh0CYEGdAVapKP+9X4ZFHAWhQuKlL90+H3JYz93iA9QaF5/6OQrs/iuLV1ATDqoak+zymkkh
1itqn4NLI0FkQ0PDHagcW91fEQ6XSZvoe2XdBf+Wfd3bSDgq0zFTil2yXEeuiMytnr1lBGFE9a9C
JYJPDXMiTnCfJR+FWVmmqUM1sWA0zxWcC/cKX9D/6v/mmgaSxlMpHk6sLRmdUbGYBOaBO6DcND+Z
gf1CP6FyVnh+KjpTFKMLwBnjyFJKDyPqjaxNFjFhJsSnnluF6kiwW20USs27yfc8VT67o2onlbWz
wKJXPxk33H7nG7m0QD9aIXR5X8cqD494HrT5pu76tKLuoU2sZdbpJ9qoTutTQENfYZTHTwmoXhAP
v0Wi0yU5UDeBRoPbvjUDz580MQP7MEC4PL7dDBo1Ry8oSocvsQkTT/AECBbXMi3QFdr3TeP2sw+v
RjYkW2fY5N2v4m3i5AR6kc2VZq7RDCIjsiHLJ58XJzq2KbOSzHG35ouI5fTejwgg63RpJBrhmney
rlsy592oJbGZgH6Un+CmUDcE+qTH0kcywv3mF/a+1N+efxglJAuv/EzmbiScrr1h7+UbXn+ah4S4
FDOc+GJrEXZGoSQlbevQiXZaP1Ec0QvCCtqYTD9/pq9PHGeN6J5NiVjARip8eXhc5vm2jT0Z3d2w
sEalSqlOfsu7EGfnpFpjGKVyZ6wupEBQcb/7/WiA+IpcrXNWFBfKbYpG7SQnlbS8S1ocOP5DRjfD
6WLlxHyB+f30tsRkCI1ojX156LyArNNPuofr++4zAGimvBMmWPITUIT/LCJJ8wm4GO2KnSr4wC1m
pux+Z6TALIT1CnN2xGtuy2K2VVOsqYvnTGfhCLIdFSAQH68jQep4YXnnxH+QjtJtbN+N97rTJp7o
tpqa4+pZcjBPcTBeVVeDYASMSGZu0CUFOqTvH3ks/Av4HfmvDg/HuLBz8WGa+4Jz4Yzv9batknXK
XUSUEdyKGx2T3+S/hsNwrEsINXx60jQpw/eKVnu+l7f2Cwp9eesx7BzkUE4sizjojAItNTBegxw0
yemCxSTom7sot4OpZ9hkMX5dyvZc2yOjDNIpRIZaDLZcp//UykxBXddotZXQ0mO02KbSzoebp7X3
GHNfsMfwufNNzYEPQF+9tPu2/qKTW8qX9JlWuRJKHVJM2s40AocNYww9qiZqhgj3Tb4QheieY01V
B1Mh3z179sgT7xBslzFQ70Pi4rxR5ItwmSB9abokLyqygRUCaoUra7ZJV9v3odtTXt432hZ7EWIG
bR3CUG79tEjX6B2ALAvuPnFhizYHcaucnTj9BdH6aNMGhkGUvuson8VBR40R+gkwHQ7HTLiWpGeG
8MByH9qEYHhnluFyTMgTbgwTbmrzrtihE2azbM7dT8cOcSyI7rvTPevIhJlvzSW1ahYW9atJJeAY
ew/E7H7gqwYK9W9o3Ec2xwb7zhBzE4BjWMtpx0ra8AIHJ7Sr2JS0YfMU4JBO8006IZZLGl5INBM0
vvQ6/DJJMmjCIRJ4ZGMPZi/oUpK9GiC2/IU1pCKh0MlUwjh7DqMYEzrGGdV24bP4ctcbyYhc9ynB
xw7vi7c//WDOEaIIBkprnyKl+YtjYHep/jjZfqgpEXeDmqhHkon7DK5+BNrBgwUBquIFZ9cVrpDh
/8rtNQXPPTNLlVuMxK0VCxA8bC1IUAagap/j+LS7vzWeW0NAo+lfBTnHWbwGarYzax0Sre5q8h6o
WzJ0XIhxJQCPYN9HPCPMZofT+5zIMnwdXx03tNZy+6YzZMm4vWsoV25J40IDhbnXPRtuhChgidrn
HN+bu8MWyljr0SVi88I5rIT8by2/YBdcnTJo5NAGx0V3CNbfu+IH0UbsWN/R+bUa0yGmPyymbWZ6
lwc0LjMIBH1GRh+xbFdqRy3TVWl3p4iatuj+8epL/eVdJF9/waxmVsLsmhnelg4QFdn5pni6E7aB
rkhCv74Usm2+0+F1XmBUhJK4inu5x2Ut28Jld/KGlJjIx56O/5phdsB3s6B0fCdw+1wFQIbawgyd
/O/CtrD/ib1qPpIHohk76+oC8VpJT0zoXjC9s6dmqpjJS4qpNrucjhkyTI35KV9hbZ21CUkyxftt
HRHeVrmFkIZ3QPIi8r/wzEbmoVe/vLHKyDKRHiHy3JKVMFtfdor2o3p6X/yUE3ggCRu5qKn0NPn+
R4GFvRuiTNobpd8FCrb6KIAJG+vlCCb0nD7HP3LHMkVZOnfd44vQcdub5dQCI2/08xTeHuD9YfLO
JR8VEhA0mksay4VG8pmiFKLbYqK2t+o6j+3hwUPniEr4nGQsFsq24eJAytMk3gonCEjRnGzd2kDE
MfzhePls2BAM6RzGLWiJEEO7cRhNj5c+qwXaRNp2FPfqp9KJmT54mjkH2Vl2tDLXb2yx3Ldwpox7
Ww71x507S3mLGP0K5soK9lKzL67Q7MKuSsuRTiV4YwayeCPteFVlnxChyIzQ0oYFRvFSTjpluspf
eA479mw3NRhe3pqbMBWg28yguzgn1O+HAh3TF5F+CoiJ1B42chdfkTQzyVxVQHD9FhxS5eP1wd2A
P2wOpW1vOVLffg+InTvIgyisLeZGWNgR8gAKQW0Y4ludH2CeX5uMS7m/d+0sWJLhh6rPVGD7/bt4
8fJUYtcwynrMikRrDsbvlXuJFmjD4hX3n0rhJ60hBwMMugEO4LU6ynMQCmTlSai8fZpj4ipvhakT
Vtazvdt+wnG/AM6jf0WZAzn9tNLDxYIxd99L+uvKuQrhbBYaNDfDgNgbEzMqE/avDzc5eQ7BEoFj
WMRYXzyPvw0DaRwtC8cPuH+y2fgDGHVa9YpInSBgmOdSUjLnih0LZTBMbT2xox4ouAqARtcErJAI
cJWDI+hUBQCdimSVcWcyMwgKRE+zdbH3LgGa3DdYpaBS2avj4rQ7cL39XjXiEAnm31VZuvH1pj7U
mXobhA64IVEQ0VA4RrhYOHZBLogI2i36qNPs/XTuJY7LMYJyAclXoLcfgUbP9Ln7kcw3NqOulfiM
AcCvcJEQOQHN/GJDqgQGr3LO7lgwz52LFpnLs+x7S1sbq1SyFODWxjDED8cEijKyobEKe/SO6zlk
0vWSo/uP/uhJ8ncvBJWnYd+5NpztgMJJTBVhG6ymB8MlokYpejajSrXTP+Dt38pNQgr7N6rNS/5r
WRbEnOF0w99XHN4nFemdpbwzzBCrqhg6zfEXeKxZRwvqWT9hhsHAV3YulQc4r6gnuwQQp75b1p+C
3Wmp9dFz3Sjh9kJsbhkT1iABm/x6zqy/pjVApyRvjqpNyWBN2VF+3RsMIm6MFcUM5j6BGdgdG8pg
n3nQ9V95gZUO1P+o4/M555VoiGQZ1pq/H+P6rtjAS8aTHdsx9yBNMCxLSscwpyDWqJT+KbdRNRjk
neFYRM94m0pcYgLD/CRzNiSxVQdC05gW53qWSvQEU+ayyFpQLhOfyKa/cKIPI6ORyzOSHuySuYPs
zBSX/FBOr2gdMYdDjKXcbZ+Sqkrt7KpK1fdcrnYzPIgJv5RYmAEtzEoKkwY0npH8PObqCy6uw29I
ZsO2L9KEg8dMKchsfuTKFl5/Zsp8aabwTupIgBM/24Y8yNL47bmwJsZgMbegG2Pe7DaAdOXNcSBH
umsjUxj1BYdUuicNcrhAt+NKbJZrobExUGhIJRELZtorQUV4DvPKNQUf7yCw9kJPa0aJrbLo4Wf7
e8Y8zk5HJy+f2IrUiwfEln+vmGAMxG9+rFr04MwEwfgHmofyDH0+FWHvnYEi7hf4UL48pbdLt4dS
RUxsuLsAezD2919S/V8gW8jh6Su44SbxoMaf30gYOBlBOkgObU+oCNYr1+MKhidMAV4KSgN5kXHh
K2Y2zEUs5JXDxBNaxIQpxO60JSmb4xQdnpvT0GYNeQ0RdD5DBTjENveJlDme/6WibK3Mzleoy33U
vVLP9H1uo1zGbS1ssYNJm6jV07Eny/+huGGTVrVjHbpracqCdcUXqCFqzNBg7IQlgo+vlBF28Rc+
kN3EM+MpNpnvCWMhmOOPTwSnTAHcM3HHJF3jn/KU8pqDvQQTlmLbhOhczSx1Z/bWM/BKAhcOQbtW
LLFR87g2i6es+ab5hYUJRA6Oz2H4lSWCr55N36D+Mz3+qhj/xWEhJfgMmNagl6zc6MfrXvmPY+qQ
iER62MXWwQ2onasm+tAbDxrKOUgsmtunGnz210Sfy1QiVdRhTD6Sbn//oaKKaivtDDDiK4HpqoKJ
n6wZwzN/FmO8TQIKrkxfnAhuJKra9beNbJhBBqoFDkrCDWvcngQ3BRIsdOAVCoMh6NJTsaYkCRwa
gE0KnwYihN8RIdnmbgpx6QB+YjX1Y9DzWbzBjOMlhvtec2YU7R/UUy4Ro/bj446Bn0x1/qgwYKx7
hqzdl1VZwZMSUW42kAQqL6pndiuUa7vGsxesGxBWp+4bhNdLAl1Ee1bIWxem8plQzDoVL10zb/3j
b0P1eRKyw7AfpWQfeFpmBKcKIuAWVsIlTL54lTawDje2arOWr/+yFhWqC7e0AJ+QvWxG2kyZqrPv
+Dy7iwyXCPKCT9EgS1/N7gjSos0RHojSCTMVKqVsJRjlKGqyiDohW/Vw2GUXIRhxftz+B6TLUT3X
ZAAGuhCINBCfAncA/pn+mntRPIk2yiS+a/F07fO1KDnJzkuIMRq7bzUX5k0tNlIiTFDTIJDJLCI/
SSAg6zvK6RJLQiu9ltGjIYWDEserTdM2Zw8mRKRapb7XShlIi9Bxu36kS831MA7cTUSDO/hPnu7W
h0F+zRjrwndQAcZCb7Z3PqkkmqPCnHH4tkTz2GtozksIOC65SNW1uocFrvv4crW8j/IkNVBim5xo
XWtF5gstdwsL6UfizLSRKgXg1QVswHHHKw6zHs36pto85QaLjP4Fwz4Cz0EhiGfqpu2gqyWCjcXx
a3BY1HqyXyjSnegIo+fDDxL7azCCsrhHeK/pG8NUE6gE7d3rLmmVxdk1kjNC4tO+T9alo7ssXd08
xXhh0lbziZTkcIN+IlPeh1Mf6O/TqqKPnNBrMSg4pqe9V7xwDCgIUcmKji93fG7eysr5GjnBTt3t
AMnPREy+t6W9ZeLlQ9SAhR9AWF+Twtns1D9O9UrxbWlqk55BxLChCLu8llyEeVRmdt0lrcdbA01M
7a3scaYgaOq/rnqDJkVGePltZNzUtwMSnXQ5v5v7AyEPrsEsgA+jnZvdYho1U86G4lmfi/2/oakF
k2VzyAm8pbpsPtuQyxSDUdWhh6ndK6xr+rPiHVGY5YWWkEgDSkUO0HfYumP7d9YAv+J3TVAml1m/
Yl9Wg8pvsYzwGi0PFTnpYnZ1fb18VSivXyNscxHCtW2rT4ygihRe1V1Vak3KkC1YNEGNlRgVsJtj
tQAYhhOHhh2pDOzN7TXOjgfRaWa8PVxRb5F3U23ri6XVroX93eJJBay4TSwrHs0V18wZ3HjMN0cU
oUonZCFCYG5OY9899XuekmiwNGPGN2iyKmBp00D4wHDAOt53rfu7T5B1vo6UWH2Y+ew0PnqvbQd1
w+ruHMJmToa8dqfz1PPpWSbVwyj/HTw5YrdwBPyWU8LwXiowmFqZceEcUxGTEVTn02LKV9Dc/135
WYEG7a+OwiNOl1vLTmvtgS9O8MboevUJDUNbdpgvS/qOeQHxgFmcuzoMn6bxRhPT0XZXMOBW4jy8
YbsnayTOwA3nns/YbvU3hoL+FAysgHI8legjMlto6gi/uhVhoHPZLS+AAmRGCl4S66xKwJ+tPdsT
VTZWGUPxxbPVXfALTIFQ8g4IgYXrP1Rz0MmjJp6IUFJTxp4bCiGlYdTmDS9G2ijXtS5bTohOv4yM
upfSo46SoOfOsA4It+vE9yVEksXEkqQKAvm9+sPDkqGzyT/KY819dS0hps7JBbNLMeTTrP4UkCFS
PW5kjrhsJyd95dpzWSbcga0b1qzJ+cRsIBSfFH/qsV8/2HlEO0M4rUfMA7Lk41H5/NNJV1VNcUcs
yqx/04J7Lb+H+Aw+FZx6XgYRRNHk5L1Uv3K7HR6A6ukKaFAHCyrvF+tZBGS3BMYOzS+srWgca/rJ
SLxoPGGto0ITrYZ/jI7BE/u9LjOg08ds0Wz0BA3HBvB7UWqiV5zSjwOJmywePTLRMJZx2nheI/1R
sy1NZ3sVOO0ZPJp2psJr0Cn4hy6OlvhhoSFaHRqp24y4Yrsp/R2KC+GJXp81Snos05bFGms/3FzE
ireHXr1Mg5z4eb9Se06LAbmX3frBT7AgpH2EF54tQriG4KlmuG84Br0qiEoHwu3HwEZD8ipP4UZM
jScvAjZmfZXIZpWfz48GwcOiExUmI+KR85E5EBunYHH/5Y94Y4tr7/jODIpQQ8jFdRQmCm8WLIUV
YWH+KJ6Do8TcuBHwaZYaejhz5ukvM5tlJ7rfkDDm7l5j93oTFuXIHpM7PXj3FXJsHjJfCef2D8/w
+TfkniEydwjeaaVYoPr0qzLzzOnpm0NjLQu5XPJYqmxTJsSPPCSzbUY8appZfwWDw2uUtXkslISh
cAv8ZEZBii2upBNJMem1ceHEcXBXVQzyDN08JB85tftGInbRKqQkmhshxu9/upxBdIl/517On5Df
fEwhbOPfHsBt8cR0+NdN0FumPDBAXqsJlyvSTtcK7gkHEdYsV0JlDk3CXILFRmMEPWt+qrhKk0nm
Mmu0xjL+rwhQpHieKkvbQdN6QXz1fXbIwgXh+Ia58azUstabWVq0N1hqV+pAtPbV2x4v+x46GNA9
faZbHGobU3smVOujEgjnJ73ZOY69Kh92MTsml0xHbgh4MCtUnVDt1ihs8bZbthTQqZJpVnHMWRO9
4wpwJgtPyUpjcUOiTO8GwtCLN5PmPW2hzXUO3zOOuHHwzuOghbL6ZybvMgMc+HUJvffuPzt5Vibz
Kyf6KVSCX4EKKCBM+2t0MlZD4gpt2hYUoYnU9hk41NLZa+MPfFSUS6ehf0XvzBjKAJ3w8h254YTe
pAAEK6gEq+IPuVS1xifRvB2apxk7dr1zlZx0lfLovDkwhVQix6A/1M+o33kf6SaIOE21jXxzkk6g
ix9XawXhi2EeNK/HV7R1pTXH4XfpWu4ofGK8U1StEmsV58aP27Lj2nMwzqOHYCobWfHjPoRmxHZJ
CvP77g2UQrtVcawmVoKrqAOVTWCiB5ACJMz1G7rS4bdNb028VYLpKwZ9kVK/6Qy0feBIUddt1MyN
a0HUyRF3XrnEQr6IMw5HPHaHj6Ab7Zfx6TndwIusmdYfNbatECmXLjzxw+1zZ66jH0FWe6yFBfoj
CV5HdLyPNMOvWforrgtbhomueSrbhMLaZ4EHXnunxlb/HCAWOuc4qAFdpY9cHOPm8r5/1a0yb2Tp
KXRw7oP24amVaJL8BdNiS5SEdPjJ+aLv/acFFds4gOhu7w/+cZaC2vXzTuECF1MxGGMfmIK9t5+m
L0eQyV0Zy59LIMZcLW7YhEL7CSQBdnvdbt1+lsYX4Z5n2UHd+eYqgY2uAjPB8R6QRy1vKBqtyN5A
nsZkfYbc+8C3frajRIn7s1P4xXQmVTV4GbLenf5Twcdy57tF80RcwJr8TIkT474xFRskJ6UQUUqv
9H+BPCmQgV5f6MhAaubke9wKL3l1caCuQU9bWVFAIFe9OCuCqqQtICMWnxB/UN2vwWnUhzu/PtIJ
7HteyHug/T7anQJRTP4UzlMpdtlxsWjGzdxksggIMbOyeli3DK3vSjGu9k9kM644LivQqIp2pp2u
StXfc+EmyWuYyqvgiiyV48Qo3InWjhr2dLH0hjo9ax9fF+mczHvqCCdfboOxOHEeUj8Kzt7TUj6u
S1a9SEGyCnBY77wspVKQGjkP5djfhOibCciBYhrWx7pvluYxCyR5ydmr+m9cYcvOUm1r8NRszWFu
DEJvYJkw08K480ZFohZCXsnlCoy1W7jIGNjRApm/VfbHzAZ5DlKjUDDDJ3CgHwU7ogTyZuYUu2wJ
7zk4yYEEgBDDANiweZMjtnUKZzjDjV9c9eCv9+/lQ3oeehvxJCkp3OkG6jeuoMNgHCh9bdxhBau9
2Cq0wnJInmiTgQ0i/nvzrEjqphFsfJQViI3zmBvOzInzVlh7avD5fjFwXpZV55Hyh/t4nTOb9rk3
qx08QM4SoPG+Pqmz4D0CI/dRC05oK61ZXj621xbZ1n2CTKO6CTvcU3FDCfguQV1ZM7qSbXh9MZL3
CPa/XjZevQAGeTLzANOTpKv2NOsMETkeflXHClySQmNcoEGEr3zpomypq/uuv/5JHx5OXE4jMMl8
whdi3iqYGiKeygforG32etJZaD0hhKZ9W9EHCVWGBYLI4UFv/t2c5wLWSZRHXu//g682txlsZU/t
pxUdD02CUEtJ547fAfVo63lbRkfvdPUyY42OtjnfuUyXXQo6zA9sCgdGVA3IYAOvuKbLc12Eh5DB
FWQ6dA877N2Gbq6q3AmXSWCbISgCKQcYap2QK6umyKrongABBwll2U3Lbx6sW+oOpjG6AVYJ7Bc7
fP4Nk8vwDuLsgvYjEZ+GzidJFW7fETqkD5lrHTX52svhnXVjdf9KyX7pYcCNiUNzro1XeMlex9Uz
kztMM/yW5jR/4Y5ISHU8YGnSg+w2XW8oJHxXC35o2wugIr7kOyU3xAwYzRd7CFO+/tWlqFr27jLY
rzKSgZdgabw12sDj0ST7unmwvxti9C+NxYkN5V2kSEGJ5Wp6fw+GRCq02Us0IMn6088NmD12GbRQ
e82btmFOVHES/Ua73oVi75Dzg8gRbVZeSyqwWvPdqkT0+9Cgn5MR8U3diiEmMKIMkiqwz/oFs4lO
PH+r7u5W83MFr9vgSTfLN1+rQV2o1IuxbybgU0bSxcKHBC82pyqDDJv8VN/SAeiTOE42qe40aNVZ
z5r94N0x49BNj3I5uW2Bcf6GkGeDYTrzX4mEnvBchjDXeJpobSVBujaLCOjRRFSiAFlcThP6zPyp
kAsbBJm0obRVD23NBRO/QV30zQA+Y3gNUGaAS11SiWBurBP+A8ELTiawCwAaJy40VgDZgywz+UMn
xb4y0Wv5NnYRLpeUr0dkX/JzXqbyVDH2bxw+yVIWmAPkXarB6gNyagfH8axd9kblElyqBKan994u
6tu8317omZ3dNNNaXerhNZNq5qPnLH2GZJlYM3F0W1BWMsedf8q2Z2rgqvm85aOHBllbUP0HHF5z
HZOcei6DmTlOerS4jTbv9BHZ47B+CNISDTbaBFArNHrQGQJ04dwPK5T1V7SUrQjQ4/w3NvtOIH26
1r66bNcShrqmrx21NZHZuHzMwfstaTuyOTZoI2jayBWkuzyhmVAVZlClPrsXkWK8EnqfZdIVla8h
GNMNwmPWtx5AGbBb5apUxvXcavZ62YUd90t0pMRm/VqjhqTl6urNgbrn0y3St/XdLGAF9mMz+wK1
cuB/l+ZAbh6OP0fMIHI5n1AzZAq3BRQOYZOsNrVLwAR0jZBXIAbbtNXqVsCuRnhQPDe1gakbGsTU
R4JgV13ummPwr2KDgMsgjqN29JXYaCfJzN/ZUOvyzSolEPVFmeF0iq239mO56Lt2zpqWpEIVd4o3
XJ4hwKDzGApB6JKbe+p9P5d6+s1rIsCcxFjSVTmMcf464Me+R691r8oGmywutgauHH0HJLU3w/Ud
vvyxpLl1zljovApJOAl885J3z7bFwg6gA8ey1M4HnCChRyB8dKto6LXvbNBGakZxcrFur4rDiOqr
YyXQpd7ySnVCCkdq0hP6g3UgRvdx1Ww17+GI+7x1z0dB84ixuMPUXXPEhZyafhACdmhLL/o9lZ9K
RT6tVlhFTjMmiKObDxz2dtW4Bv/MzpZa/K4MBPneohLk8H6tXAUMMcPhu787IPnb4D7+oWqOKHW3
0Cihcu8UG0e2vSCNKaPMVaDdiv5aPDnpXQX7fALEYurGXeP2PkSLzDXfz7mHAIC9qPbkeGYpNCDg
Ca2jXQKytcjU4zm5DW5yLtlhACJxdiZL1DSR3C3Wupxi4PbhKhxaO/wq3UTTpmopK2IOsA2yXeTj
W49pF17ZyZsV3L7fDhTQkohbTfeRlkqJ/NIDlanSv8SaMT3IW627olSe0fbon4e8T9EwP//36VSV
rYJBfg90c/5hAlSFgN48NA6Qq+LqZUd8zk+Wo/VvlPNnAEmnbkZoTZzxfCNYK1D409Hm4dlT7kUR
LyUj2YA6/vY7+aKGY6kz4NkJHNyfJQArOXC78++UjZRpL2DQrj4/DZYFCEExXxN3E2P5JioHL54H
O/4nhPitvcHVD+yGeRBAlWNUBrEq1YGu1LBtkfD7ixcluOqH6WN/lh/oXFTJTevQZ6oBPpVtX4RC
EgmancMSur/bCfUVr8DEHOqBXTmEDKbrM9Mk1qKQgFGiJUrp0+rVyF+F3jnuzAO0GZhWz1UPPwUe
5N76gpa4Am7jnAjcPQg+mcdUghSBgIkZ/CLdJ5cjb2cWStiskreluxHv24oBiZ1+qUPAXXHkEwCn
DdXLuFEpVsVt7/6KtL3TpXVHwiHHnJmsyg1ezVEh9+4RcDOz/EQF0z9QGiM5pSR58MUNet6gnaIh
ShQisNEjmlEEluAvNOZH7qe+ZS4fkoq0bpvJLNj+50BKdnR0fS0+4iD7R2iULvSiIs/CBdEvM+1p
dm59pdK962F+ypLdH5WLUjYDZI2IVPxBdyt03P2h1Xdq1Tpz/w8VqgUDV/Shdo+CK/tLN2b5xjnj
rc+1dMTAQU7bxbU16Y/LGe0Lb99ZMKvJD4TgOfHsPCOwzFNhbhwX4u+mPvuWoKcklGJUa50eII6v
6owtV2PvlrhJt0h1sz0exgjA6h6k/Fr6QijNnRIGYz+ZXXVROAVfg/kn5/veKSXhojtx7slrjz1g
y3n46g+70ZQnHK3OifAm8g/xo7R8rJTbYs+I08SURSxqvHWmCtg6QSa3BprH1Z8R44shilkh+C1p
SSHDL7vaZosjmKjOLMs67hqqEnffVyzfGLSmggZ0hfGQMdTDooCVu3ZT/zp7/po0cQ1Js+I4M9It
M42OppvHnfogkDLpqvS8P6acZfTNlE5eRTbYk+OYt2iNTpCfH3Yu27J7dDfP9w5j3dJQfIO1tC0u
i3wgs9TSd3M5EziPxlp4zAgfVOvQof4eJ0tmdGKuPW19bM1J42nnZdmSTNYFak9V/INuKMhwJJPf
06/9zpdy6xFSxds2kk95itXqOk7Iu2tLC4AIulDdSLlk0v6i6eLVM08XBbyXZ+6qJf/4JWOvYZaQ
u4a0F04QDYCkaj/LzJUA+ruKg6eryYiMWQmLsyzBTqhvLmTYPFvacLVSpx4gArg2IqkkHVy0SQdx
X+L2KXAqpHp6n+Cjikt8FiGWRHwTms+HSW+wX8h/5u46pxZNM6zcGbKEB7ckK/w25HW1l87C366P
EX1CgTGCjAfDxFh97CPIuKR5ft9wsyLM2bWYgo9BSFoG4GmX4evNxTF94MeC6pBckfxbArO81eUG
EHQ9YmLArv1fQ0O+AyuzuuDyiEZA+sOsGxR2oaNOFzYRJzjUGlFFJOUtZs/K0+EhpAxETzFUGYAU
UCF+z455/jhkxEDoNSsMfAo2HdY3YB3/i9hn69vdhXbl1O4kUMGL+05LYPkPcr3I+gjZBwXYXs67
o2v8K0ivLd4S3H4lyyIV5l+m2613ScV7Z9TSrmu3l3BwMOhBp4GTOidScvlV59tVI+qdjY/Ntwb6
ZmtOD/yFBgKJKaTA7bT/14MIwcV0Rntpvhgv/mzte2W82uFD8VrJ9VIgb2TTEJox2DU6u7rBXb22
PXZl010X2q2bIc2WOHCoA8qPCdEV/byIKZIXw+UAcfJP1cLFeAc7Jd90RucZJcABnhdiVdgiLr1+
XhBJZaNRQqs6pto8OgZvO/5DOeLjhnTPwyDO7WDf7vMXKXJ2qwkVKSET1znxvfq+/P555hVoc2Uw
4ORJS6CnuC15V/i/+HhB+9jI1/IgBhtEyHdTmjH7ntEDpN+Op0vnvbN4CkzBt3SAl2QA9+MBw0OK
Nf8o4mifOh1PqNrP/M8b/EhPS7dCdGLPYneJDBfo3V+2lGMy31gk+XMMPvE281BMw7DN/fF+kRv7
glaUagBrHzFku0qUMJ4Cs/lN3u30BEQelQZRWNKM0HulwJp93M/IuniVc2YWjnQv+FrsgtTqmeto
dfY2qK1wQzumYJU5u8OIkclTrY33KYddNccFRVMPJZuiw1rVUPCBRs5NZtw25csRKSZknIej8wBO
IgGaKriYxg5GPad8947ViH7z5XMnUbr35f5UUNeYoo/ITd6InQ731P3rcUjokrChWqhBOGPSbPpr
ziSshu8iBvtT53QCy9yl4KhJW4JZhOPtDD+Mm2xUFYVmQye71nn02ueQyua1i6eYTDp4BvaypDaj
guOInOij3YnnQh/vrFQXk6LI8x1ZT4SWNBdN5PM8t1uhj0nriYkVswGhewsXvqY25igLjwR66QNe
ksYZCqh2pSrWsOA6XUSsTcnKV+npLfxu+oNl77hKSZPyx0cFKN9XXygTA2Bs5a7laC1C46ymctFa
mTDtiFcOgrYtU1oJlMeZrmr1dyVbQ3C2SsTQc6SgtLjs90JQ7jqfTmiXvYnSLg6HBRU3SP7i/6Qf
nC5N1hRSyRM73cV8sUaZ/jxAonBoWdkMX5twPKKtWMAnXKyBn7XvxKDMhlBcbQsqNu3UYq5OQNuz
dG7BAl0ZkQ2VkvIFZdfXdli1VOiDhTnIVI9P75kuUjhFlC9dEivkdTfXGqvbAU/O1m7eyAX7Uapw
A/7Tt7GGj5TtL/dXQW8JfB/liAU9q/zpjQpUK6mJa/nX6vSR3ltJA1TeTBcRPOSXksv1cTeOYQS/
AKN8KYCBCxcKnP0Uo7R84Qw622KxCPeDU0w7Jr0DtOe6iHWdjv+x32g3Q9GcITmDBcuGnzkJlvsU
SnnIxqCwML8+chDaS6LFpCUX7xK5p5n0RNvPa7srwfMBsTTZE1rpG75lsV48ajJlDaXke7X1rlTB
vr/UEDOPW3MvkB51fABZuZ/puVNNZQVAYPA5Kxg2pbB3NN5DhgLmeXsisS/tE8MrmSIk7oMdtNms
isf9v2OuWiyYjGm45UPSGZENVjzapA20gHkbMdTfHXqHE1n8ROJBqQVBtb4LouUtj++6B3DhSPdg
qCz4QIYND0Ah8QpbKcCMGfGTUmeaMWjWbml6fuz/NlUWGMaKmbB4618W/UnLElhdGiovZeZS9wnG
T8s7pNKKDdomv07HFMbTKEI8yyexyNeJxiu4AgUkzKxv2FUJPEj7d24H3gYCKl3X17kLsFxb3pRt
cvDH4/ihDKt33twoMH1a7uTY/sPKUsK29c6nz40SPJrS2YLh0oAzFmpUrzD+i3i8fVqzdQBlFWkY
kLMq7WotqTcIxA0KqQNAZVekPaenEAskAVOYYlYk314UXyaMy1KvZGwt5+iC6Rcnij/VJm9xnwpS
Tr3R18VNUezjb5G6o6t0KlsYFBSGyZlVbS1qzqTulna80630DVc6fMHzuKyD7bXsnoQDmfWnNvPD
SIV07UKyH1tJo7SOEPPkif7m4eTjMU7vdRs7shZE24opJ19QFfj4jnC7V0//YrtzsNkYy8/DACLm
GS3yJtYcebDHcN/Jeoy5WOo8WUeMaSyTBMMUVKKBNIAtiDpEPha5Tw/06V6OS9ei9yalYRIDREQt
OZFILlnlf1kVnUsebn5OYouGZorXFYTW8MsKD6fLkWvmIbRR2VX1GXn0bqy5FF0ptUYkj0ciYQSh
QO6+E+YsMne1Koim8jCPnHCKRB+p0kq3yaBjNFBkC7X4HqcYcnSqA+Wvh8mzLAPG7WzgGiVisazZ
Ait6oZI7R01V66F8MWBP+Sb2mg29SarFxOAeAOlWlbQsW6lmkyHZ7sKBMoyjpkb2k79Q2kfG8wNr
HWH5htfcfNGTfkb3LW+zc8daLvprtJlCVetqvyg1YeyoTzPtmIhPCJFd9zns5IKQuNFEzWlvns51
fgEulW8UlN1pR7ro5obKfSMvoutD0BnaSdseMUeAWJJPcA0/S8tgAlvogT3u1RNZ4W2q6A9DfSxr
pdJt/RXlTa0WWRWmRlQiWez6qAb8vRS+5t5JzcWHPcJSHIDx7tXTtYvOdFfABk7IPe2cn5LrhSe3
WEgLoMLl2Z7XC3gCTogtYid64gWSkjTO0FUMYqDmAU+XbdMACjBSGpHEoPWeJfcPPSFiqA7O4oq5
+dcP+kmQWvIqZ7kUYhmBL+WbOKWDu4Q8fDFJ3URsLz51I8uIuRlgX/XSVApvMUpHo8CEXX+RMPPA
RJHe8VFCIpCu1INePfompTsndX86rOjQPPUgNUeUFuHwxeaxygm3FjB65ghRQTH2gGjuPtZWTnv3
DA6ONT/wQHVm3TC8NmQZ5sUeQ1CLxYuePAEmvV8V5sSeBV9Bvdcuz5wfvZBP0VMQSvebYSttST0I
kcVLpXBwMZJHFJbOnEcQ4g9CklaGvB6G7Pp4utfqhfC/QLHYw7Z8XT+HIGO0aGvd02VypI/avHFi
UV/OPgAnizZ2cQ5ZZIgv1eeSbaDkj0pJecPwC9ClrophKXZSvFd0RvHKjcJe0JC+KTDChfL/c4F3
WTq55CwHiKjNuvszoTPlYjJgJLer3cW9zRfU2U9UOK/2miE+gm7a6KRyD34YC+JSFXVyCTVv2oRq
krAdPbfkfd3MNufXusG5vnm214VcdleetYKr+iKZ0HX8QA46vnIL6Vsy+r2mBqStUgkv3g1qc6+1
uuTgyqrOwyEmN2dcUYEaDEsMHsTGVmU74u8cXtJzvT6jJ4zzJtAYEeQjcPaQysb17SBbcnQ9L1M5
SQ4DdVSTMI70SU5npDM0Z9WuG1LT0qlMkJpKv+vM/eDwyC/thmXpYUrwf4+hLLxynR7zMvG7opse
wzEFmgkyHMVurMNTZPEbJm+961VTUb2FMC5MOOoRv2BAkC079Nggxtb2XBwt7MoejWgbyyX6jfPi
ZgpVZ5NiUU2cM9kXoYwGYt7ThGu/PA+uxijqWtsxCzDYi/95Rwojj6nPeje2djMmgM5MjByzLXKH
+Su51Z6qi7G2n0hUE+vRCZIoq7aIS2ErnvCRoQ4WSqOc8vLpN2TJJ2zeni0pc3B9CCy3djExYiUr
VLQCvBdQ88O8/Z9awpXKKY1jCbaFZGWbW1nTHXQ9T5sgw4uI8K3a99BqYTV71NwvonEjCgScvooZ
YaDT0kfW1U2M0DPL4Ie5xYCGxpyWK9n+FjnuyDrSshHsj4aIZ7ivIMuWhSpK11r03u1Vusuq1BxB
xUyVb1VG0gW7wHTzAmA4ljUQ3wHedLlkn/4ztgWlg9wcJdCc6hVHbltSK9LyNrIxYdeXO5YYUpXl
Ndig12126xvzqmp2TEQfeIZcdyAc/JqU0UsBqwOqki7ymYfCsRGfAkAK4NUUQu+7Dr08rp5vEEwD
3suHKhby75cWOp8nnI8923yKOcJMWKNVoU+DF3GCrbEkUja6/Q56IjTrnt0FmTmE5dNFz/wQHeUE
3LoyhpVFrnn0wMA7kVzSk8Ow0qiuLGyvwdnn0Gy4AoZwmwWkAUFrYgeBGGJE1X5nUqn6kCxbwog7
BbC+1ccdvDQoxZ4sQqxdZElh6i2A84nR5AyIyoubdbcEQ+JWls0b2+DBp8t1mncrujT0en7f8ry4
V9xI9Zrb8nHSpyKxN8wQk3taNbNuN5FB1XXKzr6IAiH6muNE1W5VYEvPOcXKHGplIeS5EqT56HGC
dC3CwrPcX1NrhRJgTjHxZWiz3KgiGlHg9E6sVj4IwY7N1feZBE/OUdMHKYxlG4ght5CKSgXvE+GT
VC8TPbKtf63s3zRDfPco2xXPlMcvUsZuZ56pO4JVOU7svCf6X+f93iAOh8+zVdGXW5h/eJg5NC3e
eLYH6mJEWD4MLoESIwGNi1i1WuKDaOovAsDiWeu6Mp6HZTdIOZIuGVN50MR592CAOPVfBT6sRS4p
DyycpUW05suB6DDme8KwdUqEECn9k+sagWdNCaxhXtcy1FsBP3oRYyvBSNfeT4kPeD5JY5XKo27c
inznERfxtaiGQBS8aVx5l+7GBPGvEuSA8eBO4bXs5CemFMFJ3wflsUdUXol+Ukuc7R2tV7WeKI6j
P7uCvJdXcsfydOniunjYFgP14UyHx0890OfJqgHYZw/UKXI7ZqYvJx38MFtE+bRtVr8U+L7eK40B
oHaQQKPrCtZCnoprkBSJIHY52SzRXEonD7TF5rMtQdZsc5/CPy8+kZXnBCH+A8hQVJAKvDjie9xh
AC4kbZdOtqtCi2DCFsejKhnCplZ/yxxOYsE7WtsJ7fLJlKSHBAMbKvQGUx5S4eP0M8OUwGo2qOHY
LCbyyHcbDxUEjnB7FI5KDY9mZI+W55KvHJJK6hwgfks8IiD8HqpCrBZch0R+m3/fqpuGWJtjKyaS
eK3Sf0qX8A5o1VlbXbq6RgmcKhwCiCpQWMB7TCwV9j7FGwKBMgbFQomtyAkriOzqJYT3JDh0QHIY
qFFQAu3stGlgru7VWdQ9h9c3/rBtuXIOynvA6jNlr8ZOo0ftQZYKzct7kFaP+k5zYDnzX/x6QG7J
i/FboppXn6bv5SYK5WiGuLO9XquruuzuJB5Kv0EsAx4s3s9VtRpn38NaoA4dyzumg1fZ/SHkB+hL
sAseIT1A4+atMQYlvPnyomKRvS8r+m5llhNA1GeThnBiYKDsvmjkuXfx35APvW+KkQhsfkarQAK1
F2pJUkYbNjHPPd9PQZeGqP126wcbbVvokx87XC8q7F/sDXgetoNUJkTejQFQ9qEwjmo/hprlRd1R
Mw79XJCg4hzhV0wysWVHiz1qTepoKnLmwnO2lunsoghS68NUvn+wtxrEIzv1HqHp7o05dCtXEuF7
yGuTyULxEfDzWBDEmpJE9hF8mQ24q+u7evUrBKJwbeOyUvaQpZo8JBGBIPExxye2vS5HrcDzh3ms
PyMliPVqWLWZ1L0exGqpQRsXRwXdFfqkCClCyCx+usQ0GWZm7Sy91M9hzLYPb4hwDWGSCO86pn5h
YvH7uqANxSnOzcwZSRxde5U4ivOiroNwMG5AE5Jy0uS5HHIQHzDP9/852Jwi7KPG2YS12BWFCX8g
tpQ6ytOD9dVzh20zqyMcwfYLgvnbap4DYRRE3utQRwK9CGL+iNlYUVjyRZOZfRDUez3hjDaHYTef
J7vX2OisQxLfLzzxeQfovuY7WbLysrqqNBawlLipe9zJK8QuVSYwt/hE+pI6B1WTecRRA/XcH2WN
Va9fBIxU0ekcRJrCxyhArqr90w4ZrRiVRBHOOJw8vZKoEahJzqxB9V272p7V+AaBq2a2AWm8zd82
H78wI+CoEcm4KJXxZXmfSBnWi+rjMDrfG1XX0Wrsg201JC0UTOD7P8RzIUDpIk8QqvGIIQLtiJ3o
9LZpMG9pHensWf/B0pRazPhAlCVhr9CJ5kcFR864IQVkhdnO44kVLy12olhrGGJFvMwrGvH1rTpd
o7lcqP7zL+hFYuXHIfr2cQhWupdzfRaSOmM5b8ACu+FEpfjxzwhqVUTm47k0PBu7JOKQRnfuLLnK
mdD59FG01bRxKhZnDusM+U6rMRE96v8YXZJpEjfwGvkCA92QgL4OMNzX3yJ2z3jw0zhwfqxnUTm8
Dxi/ThAYmCDhhqu9Cv+elsDenRxyfkDgslKyTvLi5pCEpJdwPkHwKxec+5ai71Y5fIhSz2nZ68Cx
JWVT5UgzJ30E4GQdBn123zIPBK/aBBwp5N6BvswVQgGk8e555AUlMJIulT439LO97x6xGE7hM00Z
E9+eRzweH+GKysN4LtrAfj788tTJftvQpvdYaGqZjBEkaMvsRAXbRv87b8A0Md743z58A8tZv1FO
x4IInTeIpvE4UIfrDJs1pAQSHqktul6lb4hWRtz3P5uawaHL6AttkoccZP43h4HUjTyYTod2M/Qg
ZhfNkIkXWrvPt9ErIbFWC8Luy0yy7YR+5pXQpZmmL+JfIN38hE6kBbfrodzQqsFD5qVj/8Mk7O0u
cTCmKb3C4RniI/qqUBk16shpvBP09pjmOtld+JmQGj8hbHopLtXTD9W5TBRauTBoj04QNfU5fiME
JIUrOcYe1ui8Vt0G7NrKUrD6eYhNI1XrkBq4fS6aPLA/llrU/fdGcCjq4ana+8kNDRBqU089Mn0j
BqdeWQpyU0damiVrz7oAutdfqhU0MUfY5y7TtK1ztHfisgtCPrn2zgATZxy/HU1zf355v0aLTyJr
O0cdshBlxQDSj6KFOHBRhTjwkSSDZGf0BLKf1pk1+MZoOeWrKawiAj1IkhNPZBCiGgSHnRz6vtV8
mFowcK8Kr/8z7KzpIP6oR/CJYvZrzsNRdF9jRW7Mu1qkkOt2pPwSv4s9+ElTuYlFgV0e+0/Pjsm8
SfqP6nDexs1EptKIBker0EXosaNvNH0BtULO9aBY758ugXJyaNnBpHX2Te+SXtrgaejOhbOD/F/i
WszchOWlg1Q3RK12fts61v+YgbyRqjM0ufkjfAM5/sVzn5aBPsUdGxf4MEAYmRQSm6MEb/5oyZE1
2XqdWhLgUqQ3rxiLH2CqLuqTDLweiImMgY6ew0j/EV2Kbv+K8J+if6PYL/hf/9ASXBUFWbTz3fV/
UfdvhEHMpKEHHjnaXM068UVARC2F70IYykEifN2qn0Gd55Whjmqoh6AGbedORU1/eWfcFo9KOcOZ
qxAzmVtRWlboEj2UH1gRcgS7i1rYlPRKHHtYXZhU+JB+kb12K7MLB4g4UQniCRwgxsa4Bihn9hzl
cr9+UvSHEJ/8Deq846jIVdfoN5YrWkMVNYc9sHNOt62n3sZ17xiHsTSYTfRkGWekupfj81lvdrNh
rBadf4XZql0Do5mzO9Zd29hHDGrSWK/daM78wBd/WNIFcMXNaKxh4S8WEECuzAasCnwT/LyC+sfo
QRTX3ty6lQlLvmFKAjJ3OwbJ/uQlfDKd7aVHh5ziDT34XKNlib1H1heiBC2ygj0vmfMZbFjyenF4
tIenhOlhyLDNwoGqFwlYuNSFVaqj1JFGF2hNRPAXITMIyyEwkMjoFIHmKjGJ6/yxMaB9Hj418B4/
vx8AmM15M7OyxKEsASa1/b0HV8nXLptbCbHwu9yEqfL8/drluiH/YqVucnFydBf+V+Z7fW9jw1sM
Tv955bFHjDUqkF94e77+giwx0SCEpl8NEryBsnRkm5nIsjaOlm9Ti41CuJKnPNqMHCJckSoMEFXh
/h/qNMneTKt8Vjc2Yseo7WUq6HSscXAhOgkDYOoQt8PLthi7Fs5upCt1edfYMGtCH039lE5l+cFy
x7sfnWntYRGXC9RfFUmH7GjmlQNfYxbwq14CK9pao4ZVqhsPzobry9RTKcRnPW9RmE5aP8c+Kp7n
YgEQ6GGwWW0hte2SzH13nox2pUTCGsCr/LcArUn4bCHVt7M0dIaa/6ygC1w+H/dkclmI3eioKZZv
wGcSAajuJ7ZWqKUrS1UyBsysxIcz472mN83r5scrcLxj2PIZzeDeDYVBXm9neaUKMMeQaEubzgu4
ckYYV/ibGoZ68oVMG1sU6qMwqkQacEiaQiN9x0QjSPiH7yqm/kEAOdxRVOQM+wkKZ6x7V3IqsRDh
5LvETz3sDrklR4m1Jv15z05vzRlgLaTBO+2QVIwj2GyW7vDT5Z2hHIcWphXlc0usBvTovnHR2PxL
GkthbIOO/Botjo4SKt4MVStniLa92grhWe1adm19/0tIC1X0VY6p6Ir8iaMrxs6ru8LDdnLcxju8
45+ng5c+boF00KWlpb58Sou7ehLYpQzgeI5XhGtl4byJE3XD+KE0uGLqY5Sda30x4Bm0pGveaNST
HNY5VNUC2Yx4COl1XPDgtF/hDfQZjc+gAtRt+dWs+y19TIM5MrQiskUc2jQ8naqXibKVTyhz+gWd
06FWYqcO1PA6DkNx5ZfWgEioC+glBV1dcGyyv0LEInKbwR1DGZ3ZsTR1bVbm83n+MXvhcKQ1eWCb
G/mijE2cE7h/Dh0gBbg+6oYAqGon8f9TSoS/Y16bhbA3sP4uySqGX26CLJ3g5XqM1h8bkdOxpqBh
M2gvZjkFuDIvN+QoASzB0NWz2Iaj+WbW0Wm0jjf7HH+q7GtEYzhWEiKjbT/YZvsixBlEbG3z56oj
S62m0CG2M+yxMISEBOXNr3oRc0uUCXiybNlr5cE8/yWpe8yant7ZrIW4mPFgkba8u30Tb7vzSxHl
MMseX8BloqXQupiDU0HfIY+3us7p/oicTiElZhQqDfb6btGTDzrjfasHCztyFA8h4dJeyKoJ07gF
KL45G8pYRCV8+Fl28z2PSAGvPQU7/7CZOavhJyALGt/cIQnoExB66cqLr5nk64ggvXy606pi5hoi
1VMtI+J5tPQl4HVX77+NVOtMDolk9aQq1SlWna1LsdQRYEzJvUGH2kpkcXBN7tpCRK+dzBh7vTS8
Guu5kxXj7AVlct7aCwe7t9H0w0klebMCru3+SfYEQKTA7DnpozlHn1WCCs2qiuQB9QlQYfN35RMz
yjDc/NrPZGoKRk3bV7ybORLjbBnU0npTDav2cyq2399qaRr3M6MYKJl6pYgf/fnu76Xk0+a5/QYb
a5g1Z2h8hhgC+QSvK3KZ9+sM5N+yxXUvoLXVYO79M/p/tdjo/vzRV8j7U9lhyMYeubKJZm7KAXj2
l5Ws633ZMn0A7hhFtaAem65eGXbhxNEEt2Qak6Ti6n6LlNqz9UIAvoRYSpmZq5XXpEDwwe7uc2H1
b/N2dqYTIGMP2tXsQDbduXWM0//MjbMt0fz6r6hfWcy2kfmYRLkuEjUjW4uGIV+MPpjkVzjAuj8v
Y6OuKrj3PkbXPP5qth4Pns1ZPpfMl9u67qtiMdjFaE6w9LcgU6qecVEemhRXZkSJYKjFpYlyLqJJ
jfysrHdb0fT+y6lSRZ6Z1P0vUPYij6HxcvOT2L2pHU/aRCMrEdP3GtWGL2ygWskTJR0nRtq++btQ
UCHnhCj+5IPnN0KXnGwSCKxlZpWyZBxTQhlSgWajq+BJwlqo9ly7/0xOBmarXAPLOXMCRnapqYUG
oZiY7yw/zAQn5QjDU1M7BzJszfeIK5RPBh5XXQDztotJZ6PYu4cfHWvkwuaFAJL2IUk6nF1Tbjsw
+es4iuqKV1vq13s4C50APLnmR8KN8pVCeAhd7H+DeBjUaa3rxVVZ1+k8r9SthMaUEVOxKDze1/3s
ASF+GxwZW3DtGeNhlO7oohsjAPfAgVK5a+SP0JmLAHmFRk5KKW14tHYcZAT1IG67htVO+z6LxFkM
IuLpS5lHYPw7d25lgFXAG2szb1bse4L5CIhR1MGMyoCmERdRkXeJ6ax60Hp/kMsRntPp1i91lANc
vsOuU27SX/R0tDPBr6WaQ7krqQ7OlCpAKPDLsGPug56zkZsrSQs61CvcylMCqWdxznz5KAcMrxRD
tlbgdXD110pqIghBlBIxXiXDsA2kpRezLlKVmpXCQffISROkFIcmJ9QFyBdUv8/lgGqSPNDFGT+L
U+VDZ4+OBY1+2iyFKD05FL7e8lXu/CBBUowlj0xM34w7r/EkPMvdrq9tTpWRHKsdBS8n97PefN2E
AP8WMwMpG4zROexRnguZX6f6SwKf9Uc++B/Zvqitf+O2c2YlELYFo3GQC/q+JDgcccvMY0mwO3+/
ePHYJSnYuxTPkHQtDV8jOmYSYyrSyC331ATYq2NP6UNkaXavKe+5du2yDBMVCjQw2Zu+3ibzLniR
nTCBJq8Cf8WuGJ7lnZFaNm2AGI8tGVbOveKow2MuLMUGa8XEjLptgI0VshBFxbWHMsfGQmpuXp+W
6FfDU+7Y0QMvAxY4aPjm5jK3n5h9kDONSNIRcQQozcplysHuAyz9eDgTyAqIpdvlN32n3BuEpFwL
uX+VsYZC4bV/xPHe27eH6TR2uAOxUzIOH9oIGSN7g+WKMnBVd5eaPa+0uQpA69EBiRirI6gHDekX
NT+3WI08kSYAgOXlrs0ClN/HOv0DmdXkTY/Vuf+t9ztMQAz+MqE3GSU57qLDKXniHcJWhpNYoC9S
RXT53UDSfB22NMwyZykf7HK1ONZzvfHMP2bU3ieby/SP0iwxLnnefdZ89UYbTfwCwgtcrYzlovJC
4R1TlNPfnONtbBsmwA4dSF5hv4LHokiVlyN3mtyCsZxks7kT301wLHsFvvcybBHKsvcKXhr2bLG+
JVTvLdU5iPHsQ8Y+92SZRXmek7qAHx/TxplomO6clPr7di/9AH+eENInuvPvlS0svGb2bEJdcy/e
vCsI+nU9d5rzKHIWW7NIysNtfI7yIs3D9X3+t6bkXwtXWqCDsbjC8Gzlx8s58dEwO4VcMraqKOZt
UAfALuYiBO6WV72wfwQIZN3TgkX6ZDAXRYqtKIHEKEnIPGjFOUvKvxGdeqAUyWg4nS0TrXn5Z6St
Res7+Axp7K37ckU2sZxfsY04zUsDL+KKVJmrPCBhK4o86ytDU1Y+YniCMvNlFOs+JV1qRkoGdtir
u1TOdmTcLhVRRsAsNk3VnyB75HdyTHs3Iymkt/pRFKDUH3UI1/sSiaEcYhxqpatK+X85GBuEyxO1
cGSn/C9o8He4bD+mUDpJ7xSSQuNABToQy0mQghRUhPUaDkkIuaAV5UU0V4SLCuNCdVKytuSjxZPp
5faFxMt8bF3p7+KJr2rMEssuzoYxcEAlJ/Zzz9fnifOIaXFwNDNrDgQrMuiVVF/LGluR9Br8qKcj
VIGS5CjGaPZYGGuouOfnq2je8bCGCoe216oiWuElJ1Ex49SMJWwecLiJWZ0mKjU0NdIzQ3vhgFM5
YajchlX/KGWHoFehQwrQ6T4uwXuGTxeeOth8r60p/s+yHkJOQlLwNxvlaGkKRo2eotOBxUcdmBe2
Q1ys5CNPaJQpy0tQBB404f/gIhF+Z7x7SPHF2z94VwxNfVMMHe9NH9DiTz/f3+iFcIH966Uswq6t
deRz5Hutpr+kfAeidtemEBuyXwexKtUblWDipmZTppSl1c68o03GAtHeRt6fAfCn9VE2nKCgifto
TXwht7GgPkOGeiBm57SLbFr8pJ7IR2fT88tmHf19JwyiYTQTkO5usTOnLcGEr1Q/xfHVgCOo/kQr
90Y+OQa5eMdW1VVE71To8S0e9wM8R2VvyJBl8QPUe3hgWL4IXHKKsyyHKy8R3t5OAmLywQamBs3F
JjSXbt3CmLHdn/+BpgCgObP+jhSDzlR6R0rpfxmyU5xFrd/lNsEcXGwre3uoM+GH5CdSXYv8votR
s6yQuV7wWp/25rET2nCkBkpzFxiY/ePccnUJ5bE7CGyMnwnd+J7qpDLHnqHhsUWGpIU+KB6sj2Q9
GceiFzq1qdJvSDSE5mtWU5HRPu3W9yvrQdE1PPA3XJM8Ozdqw5LG4USIXbvC7adfeqw0U2lJRUTJ
7Lqf27OliRRLrefmjBVjQtWbHG0z+4UQnV1bXySh68c7kxVv3pskTqzRYwSYYJZedkynTHRuhQQQ
Nywx/r/2mXCCAgwo3jp8JdtWAgwY2xkSPwWWbyeDR7qL17Fkh47Cr8JV/g88gxhUCdbCq6LZS7L8
GEW4vFK6N5KPT5vCXfK1vQBCO+0lEfAvf/83nF1KL3Ao2tLNW56uKgsmnNowiL6VF4Q2CyHAq3uG
JyNcRaGV65bSBhL45wdWqbHdj/Ua9qWf8CFC3ZB7WCG+5kK1TQlhvLXRjFhy38/IJsOic0xgw3f8
os3aUR74Z7r+BpTN/629NpcW1JEe/NuLpX6Pa4W6uVnqNIhgCgWY2keMu9MsM7j98Nv3aydfhNaj
5TG0VQhLZ+JJwEZBKquEDqPEUChinojZUmiPT0tiMI8eyvfmSeO8xpn1AUwVM64M0e9glUfbm7O1
4M/rKe+FBOu2J80+LrOp5391HAMyLgZrybu2yWTJj38LWj4nM3VH93jMIcDrpjcgQqekl9Z4d88z
PLvJfjrMlcRd6DRd8yAuHs258NkwScNkNsCgHwK3STplyet3/mb5T1SxbPwhVYzs7XQA7B7eYLes
frhm0VI0RCiru5Ff1vE5ayodWfM671TqiMpG9GS/LgjnQy/PpHWu5HwI8grMAEFTJwWl61BhCGHS
eqPq2g741tab2vrc9J3QeKnPzdU8ztDzoRrXcyMa2BPA09MdpVRFS8IL18VFD0Aj2kS4KN0HoHZr
7Cyd2mLtU3fRgKUspCXmVSdI6oXf8NFrsD1o3yq/CBolQTjueWqJVbO3V+c2l+3gqLUVwVxKYYFH
H4oq++qRUvXoZsszeRAN4Ks0/PRcGhjFiLPSepB4FyLSnwb9O58m55BxQYxTyJi3GlT73XFCijRL
/2Lt/nkNBdsi5ICLETPRHZZiu4kwxvSRwNFFNoiQxJWatkX/v4ZEK+Yau2/6+nDzQftVNzGWNfer
YOxji47K6qhGkE0DTo5JK7aHc+5h4kEqUHZaLOFiGuZ5Sm3WBzKvYTc+QTiG5YMvnZiezVcj2YLf
u5K5TU8Gp9t9IzMlicjU1qia8YM5rKtYThny4vhiGUoUaybv9qEcn2mdCFLtIfwVlO34sCcsGdHZ
pAHj8SfaRMUiLLCFHrqjlMVEIwlM0YFiZAOK5KuC7gIKl+KrrssFzrPMY+QpamiZaZGBPjUQz+Mz
g6kOcYKMUsHP0WWlJMYSgqBXXhvUYnmtDXnRf0OWm+5DTJ8R/0G/H0nz9MA+hOqbDJuhqz3dwxmP
1JOlSlAmFXrGccRqbuwjRiIUQEkKKtexq/kZg5iTh2foBv2Kxn/xE4G0w8SGjL8jlhmB0q7jSndC
PUb18m0FdmgH8eZ5ZI7bDqW46n27ijKUXrUTBxGrWkqiAOMqDRtctjcWd6pTB/24h3wOZjXvyv7M
NR4g57rj+/ve49l1rhLUw1klvYPGaTt80Fg6KGAFGAsZdYYYzUckLg8SRIgkuwA7W2fCnzGINkfN
Ptnt0j3aYa0iZ7RHZVfle2Ho8kLbUsoduHZpKIVuoAdBIqSYDkyP963SywkFsz14JqjA/TYXDkYt
EBZMuUlyEIfA2bfj1WaFmXyWYq+PDLGIpXI/7SdAtA0/BFCWkC87TFWjr0QdPRxtuz2aTG9+luim
xw4rE7fs9f8jp+dTEXLn6lO46M/Ak3tFqrmcWqsQ6K15btuqAkAJbzegjCs3wCOipNGmNJdphTKl
Qu0NsOBvrmslh5T7dzTGdQlGKxcmE1Hyzq0DGjqnb9cx+tFVn05GsQijS4t+YVeGRn2HCAdmnOtF
caGvyolr2UmNpZ4rmv9oIV+gGa1qMSqOkr+YgNnZFYXj/LikUSOeuNJIRybAaCCw8Mg9oA61LOWd
1VHelVKF/TdNrWRC8HfWzB6P0ZvnOpNiY/L01k8FFFVRvMvsBgVR2vM/IEC+9vFN2Wt/9R7BxvpE
kc9gJxMDoKIIsbhWxx0SdTHQTHiT0V1uRe4dM29jR8YhvjVkIpVwcVix9mZci+1Iys7vay87bL7a
iiRErDtkug050xl98q/+CsLZK+bynPPRViA7sLsefKywKXGOMH6Az7PGSvj209Qo8Ji++hGtRVhS
/Z58f/6lp4NadOwMwGqWnuHgnzDssZH40eoBtBfiE+ZCwg6kEszHqUAjN168fwizv8ZGFifLLw7M
BNGrgrHkJHoWRxvLeata22jb6CDROPlP8p9TgxTooj+HGtfAnDgJIcvUywMDNOJ+AFPY1UIVVOjl
29mQqWuCq309DjQDGkAPu29u+bhCUnZDhlYqtvNTbBdUUl2OHu691Jz+Vy0vhaNF5WIveS5FzXTb
MMGJpW44vEAKX8y2tTJU6n+jHp7QKOk1dGoALkA6Hf9crJoeA5+DaeFNCKpWPVaDZWN309EL/GSB
AMd8BnHnkkwhc3ti8rF1NjSu8dorMI1E1s7kvfEQ6pYBlPJHfOVRHf89UOBetZtzw/Q+iaLKgIgi
MUYPyxHxvOJ1/cXKcmQ4zbQ4TdgoiWTCWsBRlVl/XRhkmrgt71t9Ar5SFPhDnzg44rrjdX4fJ0ll
+CBGR3sAgW4lbHQMZoNTecsPqmkZY0zvPWEAayighGrBzxANLWfExfb2iapiVpOpbyjo4sx8haGu
W8GrGAE/7Tiyl1s/J3rLff8CFCWgiKcpV934r166LnBr20OCGnRQr3C3u5Cx42dc2T1NMS13IQLW
cWgGxsHoeaxc3EQG0IDdx9Jl75X9037kx2ijJRiowiOI3Hv0yfn3sL0QXIUbVi4jtz1n1fby/U2E
F+neASKIj5gtka3kpzuHWVG2RNSy+Tz4P8Na2Q98RQTceG7L3R5nZr/hVm2l63FMy/8rWgspqLBN
iXKE9Ejd5wpShH0C620ZS3G+Mdf3nZvPyrIxbMihBSCxofEdqTHxyznVw9dx1vhiaTvGm0LTmYRQ
X35PraC4goaEXUPgRGXj91yn6K3JbyzsujaPeBEZCpzIzR6NuOiq5lsRikwpSQ4HuZeCanaaRnPy
r5rj4ylxKpUx1JHBu3jqEmcvReqvcMjpeENmpMCgynnUqx73bPsLHfehKNhetyMgODnY68NQVgow
lXvRvtOoFRMEm85ofHZHjsmfhagyIP35mwQ8VVRMjQPg1xMCDViGLMedMUR8apwXer3n3TZhBBMU
IrE6ZCCCASCrN3+aXKmYKn7KydGm16qv08zWB1FVJ7zwQi5hbKFzLHTwB+LSwQquiNlxit5xNNiB
R6m7dKBiLZTP3EkFtIdqyEDChlwOPAFucZQNpFeuLKSYWjnEhwyFPQTFlXLP2+8PkJllk8WzPenE
mLuz4d8xHhyj2ziyjEInYuy1rYq7Bvdb7A6ZhNbZQN2xGpqCjAW4+U8ywHLzap6KzE1gNyz0j0Q3
ICeeBbp6PzQWCaGE64xAwCozOiRsJMkbxwUepPv3LNSOOOmuVgqABeRzdEAmFAeF3BdOYyE9Kt5v
Az30HHihRthQAkrgi/t9MutIsqB6/gjpq0lbWGBXOPTQS6vp7CTyNvZo6djVJVLjvmbEECPTj0Pr
2Bxx3ebcyJD5yngbNie/bU19bgt/6P89nNBHv2MjoquCtumXYmjl6IZ1nt3VBzPdVXpbPA2vH+ZO
hcRI0B2xVuWWgv0MReMg1JiOVOt9swj7fURDDRR8XTUSX20OxMKlXLZz9xxWYEjZ7OJLz/nONCTk
9J2R+yqyOTeVbypCGvGSnvDBhv9PkXxxHAwfjfpXbxPuN1Q/vfiE61qNsSQoxAslnfqyOGY7Le+G
mEfJBx4JiGwgLfPILnaImvJ8ufSmm8e6bnKH0sEIurm+XzboRIglxIhqbVM/zYMDPO3IFk9U77i1
8dWiau1dMv7ATxA2Izj1LcSkpE8yqksVKfa4jUQKrpsX9RBVqSgEgW0TI2AC6WvPsmwz5bzAfNyo
t/0VA/7+/56O9Rf/wW2yLiKoD61YnyoJu3Y6yCy59hubtl/JhpAR36w4eXXeB1r2hCaXJIcefDI/
WedRkOMYubyiBld314AOcl94jQntXr6xKe9JAmdulrXeNU/LC/m0FaSUBNki5fSFLzHyYbMu0LMC
UbdPS5UpsnvqnHMUloTYYtcovwcfl5jT+ElJxXfgKakta0hza4Ug8FSgdPPvFW2ycqLoDhEbZ03/
cgATt0MTwyOwbWmtFUts/S7zVzfZDRQDTHzGDPPdryYoaxMsD1TeiaT12IoPzNZvqjdCNJGYWXGd
5wUxlj57cJZJ9KfXYP/nI1ORVbiXqAO0VmrS6v7cxi5uyQfGVBJEJuCkfX6sGYB3fu9PbzL7oGUX
sT2tKaj6sQUMXx6QcemGtDggd6m3tnkzWjH+mdBoLzs8fKFf12AxpjyDy4RGdWg1ZbpWLnpEEfnI
42dC20XR1Vnx9FQHEY5xyLzh5FREskbOfzL8Yxy/1rzPHw3I5sQ6nd5aNqemiL9LvfGuRyRmSa0Q
ay+DmJ1olpGrs7kZfdeefPhAzw/p/lkq6Lzjxw9ODu31aVlBmEWOT6/7S9bKzma/xeZzBO2x7e5h
saajP5Qjc9z2EyRXxoWkk4svzsCQouEnqCUVeWyiSyth6mHsxjtcq+gCtdcX0Gas+5FSJgvgBx7F
vqXTnLbImxCGGZIMZ3KFNQWKQ9k63rCJpwiZXiCmxSHg6iKF286qyCElKCJBSUm3NrSrJJJehkQ6
ia/lRA40+wv+YqDYIPHQNAoW/hrYC//1hmwmKn58KfmUE8MFmyzXy/FhfhbrcqRyzzclxJlXLc9r
lFtnGy5lP1H7tbAoYmDAegBafipJ4gadIdfDQe7sdjFfDvX7ziNdvURVx20tu9vU6iRzOfPm3yOV
19IkbxyZ+zBAoQCzjHgJjt/ZOmzZbq1K1S4lyDMO1P4ok+yXzA5k94KE4GLlvWriomP4SdrW7XKt
kdt6Ge3uVeKuncr3MnMvsjDhdjY3B/bfnOoV4eNmYLUm0UqKDOFAb/9IWNd1Qa3K6DY8JPpitgZM
fqU9Zl3NNppFmGfleufp698jmBXg7XaTfmZm+TkgdLWFmNalla2aT2rjzmH44L9Ryc6VHSWCT4ue
6m4hZzYS2TqOfch/nGYqogPf4E5y8paza3f3nAYna19juVb6r3UAE4hCab8CIfgi0veX+hsCl5bk
UM4hstYW1oI845fvdUmAPivJzgDpJuUjr367E+ItP/ZgPQfe7qRO2xF3SdzygPS0S+FKc9pmE3VY
LEzwS8/V8AplCcoHDNX4eEVam4o2z68BFEnRkmau+2wufEvk7Ot8nEjF78ZnEOrMqQFcFiu1OgmT
50gpFWzgWEtdgGrLtsufWrfvoqilIkNqygvwjIPowFUbaY6bzVDd9K0roXuBQseVYp25wpxraHyd
f+I9675suNg0QiemtHmb8xXjvBlYKEob/BLSMfMgLDjpArVXypJpIZhp8k6ygXZdMIVl6yLPmy25
MVrCJ0LsbRQxgVDNGsvElYC6paHNtj4bYIqEnlnlymMRQeEBXzwWqRiBqmZSnsJ5eWphClo56C0X
gilir7LyuGJXmkKEBiVqWjq1TKCSU8q0f0x3h9ct/YSypOqZ1I5cPIznXogBpYj5tSmFYRMtoO+p
at08zFaD4HHZ7F8Q7eYylbAUr3dO725tbMg8qYBfkLOCLpPYKXZ8hd61n/7stJiytE+MV7O5JpJ7
9jQlGcmJeWk7NQCzb6f6zEdAdT+QuCxIwmi9At5KvtrpFaesfEad87brSg2H9Up/w6PFTpAB/JIb
JqftpFTgxYMCcymfKyc5l3dKrqsUfQEEM7LyZR8fmR5aLk6SHq9yZU4I7kQmuwp8dC9LcehGfpqF
koVgFbyXMUS6tiSHIuz6S1fgzY9wstFmyKHTXVwfQRYCmfQlc+AIJLyVecDuhlu5PvGNM88ZM4+0
dmhqtCd/ftj0mK8VBxnDUc9Yxeg0I5WgKTAFE2VKStySsqsbarAVWaA1/XAxf902h+KJVrTRhg18
raPP9VsM4x7kxc3LeQxsM3WQXsElYf0eeLUOaHzHIXTYCjvCqRO1ox3c8ydiAvasi4Yqz3LyPBJc
If1oT8r0vHMHT+YoKvelH8tEESj0dPlyLQsVetSn0amIFOwqe+cUE9s+uTl+AAEL53dESxvO+iDq
jkKX+weBHcGWHjpPDLTKylU2TOkdQn3rJEokxZRQAOJHvteLubXgef7SPpEcctRHRCGnLnkC6CkN
vXcShAOFTE36Wx92SBl6SFunprBbE5zcz4d4m0cuunXGI4j77e5RTGhHCqoYjpfbNkTnPEgPC8F8
d74blfdV2ZlhdBxYE8vftPsX471VejR6hvTR519MwVZNWyf70U7Qrj1fZCtW8fii2AMMnqbRCTLB
8rZ5s0G//uJ8BGuvu+GRBWvWKjD+OqgPZ7UCD37fV3+MMdIyFLrtlHs27/6zPdtZ9ypcVZsrUe61
BrcNJGSbEA+/f3VVp57gpMPst+zLOX8Qx0kTblP9blCha0Xgb1cFyC8y+cFrKeIdRLTv8IZpuNox
JJTKRytIqr9hS5H2PhTZZrR8fuHru/vsPqJzoCJiqij7V4hEFFIHUNDY4H0cadGB3A6JcJSaIvAt
tAf9bXtfdMG1LOM6t5oE+JBbIuM7h6qIDuLOuTebBHlQdvgng8IOU1kwh/bWaHFMDh/PTadZEq+5
Qps3vogm/QfZKsDXkbbgcLB/U0K1DETelspVwPocRTyiMd8gvOfqQroAzAEq4PwxQzIc90KjbGlq
t1IXG4QCJ1nsxS+36bO0oo4qAlEXMHNkKoD6fw8O97GQIO0hh711koXZRD8Ep2EV55N8aUgnfQJC
z/J1NotT/HJt1I/pljUUti4aBR6NPsYVMz+Q9aXExoo/HFiD7XOAa7sGo432OJLkG7Lowd814+Bt
61M2ctCN8C8u4CoRNOLCmCXRj/UTjywpfTSwK7+gBiAUiQJdf36UKEUxipct93YANstiXWwdAzV2
vSyv+V6m8BJTs9L3faavUY2N4sEIBWLN1aklbvvBWzRuUMBXi/dtLD7nhlSD15su69CRgR6U9/ul
s8rJ3H2cbtbFVgjmcB32QsU3oCf0HCrGODur/TabpEN5/nQiCnMaQA35zhzekZjZh76TDvX9bW/v
1BHR9QQBpE8aTLWx0J2N0/tEMyYYJIC0v0jzMsdM7/D8ExxTrELDTsPDckHY/xIqzzvK7lypMT8c
TeeAAU/eJTxnokLJOMT3cu7K9lkEcKccAzcpZjrGe1JtjVXdfpRiSVGhv1knEJeFAmMm6QSVroee
R1yfroM8nOgFIZE32ckNhlPha5G2VCKoSQwbF32sOFKHHMTvvFnmJqYXzK59lZmYBnn4q5otGpub
CWhvXWrjbbaXdAKfQo8oG2OORXVCaG4vC4IhDh6ybThwOKr5SrjahH3qd14fQWIRkux9VY001DSv
RIgKFAhUReBhxbvzg6qFQsWMkDpD323om+UpAmEfnG39LyF2ZekEHKPNJKwFhv+Rwq5N0R7s+lOF
s5FN1dHGfzvie7ywQzEs/BTTEn5AgwjLJfq+6HpK38evVkWh6T2IET98Yeap3V0Cb3Gb/uQwxZBI
NdUh7X8mf3yHYKveRJzhW6lTZOHEaiSWaVSlwyS/tyB2uzaExa2yChEAYcbb2Qz/mGqoleAU9U+d
bp1uQ5AF18ny7iOQmpCUn4Gc97MJsLnS812+/IdAKwyFanFyTog1ptnRFjsqsg/fZvzliqIMEVk4
PfzOcrsz0YO6dMuXsd2lcMvkf5NuqJCgxdv92n3ZssdEmJXPDkdNSN41Pa6gU0nRiXExt9YApg2R
Y1gYv2vFeOKdcEWzI/GowUgNL2a5vxMBn0pNV525Z54/ymayTWNuSWDN5gQkQVp2Oc00yHu1ibJQ
bcOzG/7h17JCvqalkRfoIgGVQnF7PXWW5dv1I3l4SzDLG4loZyqzabmWPYBDDbAayaUETswnBJTf
nHqldY33TmVxgFIg9rsPwZKb1P0nMDKXb5kQUfawSUIkuKcp1HwIDaQGN4envMi+yP4O28QMMkcz
COrtuKEDCaWM7S88tsF73Ku0KvebF+KS+6tJa4TVQI4rownJLYq8Lg8HmYoIfiCZ30g1kx+rcVbU
zkfi8x1rm1Cw9RQ8BBj3OMUUS+47K4bhCugbyKQ8HY4cy/8w+Dc4aiGL59Z5zULz998jtVxhcvo5
mybT31R7MNrrdxqd2wBi9qUT8HdfH57rE4G4NaD3wdPuC0Xb4FgrpnBFFQD6XTVx2wVpOWkeLzm5
hlMHxSthFg4fBarsqB+3UketmpwTItEJW/Ox63TGE4XbNz4mUlg5RWrPoabpnc2LyM+WIXwQjSky
zBkn/mOexPN2/9uuINved4+Rp6Y0bj2OKTmWMncdlV7ruxRVDQ8NfokUxvC4dELSUePa3bx+TKCV
P5raCDordVFf2bkL2I0jzB07KR14LYA57+o/PEz3CeZFNcrQ19itacitbQPep/2sRnMila4iJVAu
TlVvRPiQBU03+et/D0H7opG4ngBdslDPyC7fblwO/7MT2gCOTaZarOIHmGBGhKtgQB7jM3/7AOrK
ZrnAaUpGSGBRJTuF0nIUGroE15iDfwt2zpEsOgGD8jXXzkTBmP9UgNNtcFX03xiqDIDWLnsxF4Pd
buUItGfRtJVkbnNJJw/KbnjvLDI4M84Af+yaUjH/Xys3HI83rdQqtVQw18avQdyTqksg8GpWIooZ
4X/C1wn+m12wrH9Wekm8cAN2c5SkD3aNIJofr1Q+ML74NQ2EkId8EMamp9kjD3JbqEAdjeQwskkV
uc1UVz9Hv4wp3PlbP7MubJJ9EHACjVqI40lRx26IqZOZnhcJSqOgweaN09GlROOxMctrseWB4u0o
TM7KCqkhxczKMO1qSJwh4UBOsVexgQafhUGOQCODE9dRuxGmh1iDhAoLUD8OfImOoFbJF5xTaE9d
eWt8jHis4r1HvbDkTawbQip2dPYznCjNTBx6zUu21Q/+Ox/kIoisaMISLaug/u0LqWomGKLWOS+A
uxE7mlL7SIEeb19dfIx+TY0qBLEjlgs0ptHDtC/1HSNOzYx+mSDPsIg4MYf6xF9GZ/D3BwE4qCTz
Wmvw2nkg/YkjDXWCF8gTWGc0Ylh+S6ORL4/wr9CuRx4hsKqq+ZnGpmjdek8t0lj5deYgIjEF8uWl
6xob5y+HQhveJPz/DHyi53dYnmlbjcV5P3XNg0OYEcFcHZI4Fu/CsgWTM8XQSO+YifBU+jkClq0e
qvWxBo7aDgUutuV7yQ5/p4kzNNA6mLH+BYbqwjKdb4At+fFaEFq4HDOBza8PTNQPKwoUXJP+uQ+V
d4QcKiM7DfIz4g0Eskm7nC6foA3cs3Q4Qkkh9OZZbLYFGw+4RysigPbnsmxDsWJ4gQNHLdYRmM1w
KfP9412uJEVVj4F5ckxfshc8RpGKgOhRXnmZgJjAK7P7qg6cocaMmKn3yMgKl8aIkcNwVCHP9eDQ
GKzAD2EGXr7eC7ROuaXYWTxE3c12nPTgQydbPJOtUT561AfPWSyf/YS4H1D/m3hTTy0s9clq+NVa
T51tUqijsKmS9KSbjORdpkENlvBgGjDSygtKK392ygaK3tqqB+3eaWWdau2pgItAuZIO8gDpre6b
WwTTVPhlMDnhg5G0iFX+8jD0qLm3Pl5rrmZ+2W4tDxn5yYakYXmVAYck8wz+LzXOKaBdtw2XZm4u
MbnJeU9DQ8XLUv6nW/kGwOHVeV/n1Erk4FRCV3j5AZ2GTUaofwCMAHq3PAooj+bm55YGHtm8tHHX
lWnRnO3m92rSY5UTRGTVh/FgFVX+GuIDDQ83s5J2Xe5hcb4LGggK0+tX3H7TuQwWGyZ+a2AKk3O/
lQCOTASkDD1fptvFX1fBZxJMFp0+9cAZzxBKKRpUoFvMouDCS0zOAiwdBMCjbvZ4mczukLfEbOJp
H3MjcdzQPezBzK7qt0seCtbzCng/Gc1WjY4yChm5Jnp4GXbpcjNfTyIoUPh/be8mAjE/4r09+xHV
hpl1gPf0r7D1rYHfPDD4LPVv9ovTYjDLXVvWfc7o53+z8vH5hWMXl0k8p2UA47+DTqwjLbzrBykb
FLhnRX6/op4U60J6bVZMa/PzSMTwxpCDQiSRgnku6gZb4HkJLlpbyh+0V9kQ4nGWXCddUgQlhLl6
CGT7h65zWzkOpB1pY/MLmbjHbkem+k7ikS4baxKnkHd5D9PYUnyIOP5Hm41xuQ7cDWYX5H/zhnEE
OaFHcQSaJOcvFs2uYt0vZkhV4kvU80xau7BB1IzCuAv9ecFs2UFu8/5noDeJNU3iH7608MaeFGJp
fjSPdcRgOkLDPSpgIYndoZ4hsbZkPi8ZUobFt2a0+zZjLTZ20JmHxOa7m53Tut6RftpMT2xjv8xp
p+L8SS/Tl2zWIaveA6fuSendr8yyFlLGHlBMChdu6nvBILxCsG4OaafMScZrIMJjoYGtAHW40IuU
SXNLM9aVi+Jp0dlX0ALcELAoIyJY22p2+BnG2qaffYL6YjVCnVP7Pg47/itgcKJShj0AcZUNYEr+
z7CdNDT3I90DMgOYml1RGfWZS2iCFX0IB9P4hmEa92ev/UxCOFUDVtjf/7MmujZutA1L41zZ3qTS
PBjsixeFVDTDEt+LnSv1Y892F2AZwy06BnsGq2SeEFEGfV/SE7tqs3HujQbIProqODFZB807dI1P
SBiq5iBHg/Y5/66lTAuLeRFyiolS2mFoN3rWY19lEHEPmqNx4aIxEakqH6veYUBk3MGyHPCvOoFN
8PpvzneXxXJpFsapMjywnHp8isrgYW8KPMD7xXdCkEU9l4LveI3bpho+mrnZupkUJiKNTHK1ryw5
QE4wjT7Z0E8TKTZEGOOLBhtpF92C8M7wM41KBV+mWxw3MhkLQYKj1RdWInvZS8aGCY8ES+SAQ13f
bKvromulZ+DfhB522p0wCTQut2IrF+7opSRmWQ9kxrX4wgFdgUF1u+Zh/UPwfrQ/TpAVmk2N+9sA
CegJjVuMZMXoM+O5DNXzKRp2F+GvPT08CGHVQz5Nt9lsTB6UW9Q/aZxunS5/sCa6gHLSCzzmO2hi
DT4EB9wdn4r6JnSSVp5LtuuVEKjUQOQMSSAWTSn0/3vfa39uVwehJIKALViOz4ucuquGzrLXifbN
M+EVP1cuSoYLYLW8/TKXXRNtuG6zYM3hCPdE4/FBfoY30KhJHhFTd0Udq6CZ0R6LrHNEElr6wXCx
AL2Ww2shofIhlrSj7jJhn3HSyk+qQnuu/C2DhujgUakbtxYm/DjV2dU8SPjibkOmKVGLT174fYpy
9Cf2lzx6+aT9sj/rKFF+fgaZPSJginzjZHyUVGHkEiWnBr6rmzgO37VOpcpfs1nmZb5eEE20b25p
1exnHFDtbS4AOG8olnvt1LOWufEoedMvb2KmqhKUFtgvi6DWcDKxHQfGuzGKI8tJ2ffQf3IVAXWs
RhUek9VHy6aTMUjcU0VXjOT1x2a+f6zb3owaTpAAv0pnGrvEkhkuLxOj0S2Jqtd+T0C7eqb+sW8j
UJ3eWeCyXazngSuRJn6osfu+QRvnDNFyQX/muyOgtP1Caa54OzlIH8rcz8P+18Q9X5HVt3NPcJG1
F9A/BSwbbB6ivPxUntgPE5MAjYuueq9NT6ZR6Sm80AbOdvHA4m0toMCFEli5ns/hBgeo0q0VUlmr
FfW79bVYUKumpLC1WVYAjW+brDApRmbBkiEKI/u1vx5DHdTb5ZnUSpaOj2mG0B9HpZJhoUPClGsI
rxDHauHfD5Oh3/We+y+68Kil2LcMDYVCT2gGtnOn++AKTiblaOo2kd3CO9RXPNpWeb25FtoKyfkX
L2rFutmGMzVE9KgMMz4KdfSfaOpAvsEdUBgX2HngoTSFP4o29MPmKj59pXTsk/iKJzqCILVsxo32
FsX1SNx4psqg9l7bOAeh8w+XMsydSUePGTbg0pFoEYkLwUUnnMp4X+j0R/2eYWWmKwCcJcOSDZhQ
HwbFt+WUkum4WHXP5aZo9sjhDcQq7zQsXivD4kkYV3ya6f9rsBxsURxJ1d4hXf/f+epVOMlrVas7
5EMtyoBSZyzFa/qq1bO5dLUMwfi5hUKAc/qqI8DSRVWm0cF9KBh3BetprbAtmvMuxWpsnFwfA/3p
TbGWu++uzF+FFtEwYmU8iZ33VTBws4YcwcbnfSXi9QtHgGbVPoaojahZ9J6hCfWb0dKrhoIFmonJ
ZcoW606ofAozYT+xKJb93063qetjZ2HynrWD6m/tPWLUzUGcJ5v3807AHaWPZXozyZ+Nc8mJzMex
oK5tyebd9AZhQI2MnspiHXKjdUVJsU/y+N3CcXwV+Gnmzq6cK4XLVlE/6mMyLbPEC+L9ybhPYTop
BljiegCH3KFMBTTRB6k7o8hcyKPRkiGZWFnCquoRgg/G+Rh76Fi3TWEz7nQZb+0coCERDN2vl6DO
NmEm5ypHVXacqsKoPTF/OG1x8jLjuovWr29LUBvDOYF4e6UXyZjkeDnL+2J4H9dO68RPoQeE9RHI
iWoXRHSPTNJcFLiJNpf1/Vry9hLIswdZacg+p1GBzT1cXZochTHUM6xGHycCo9Db7s9+J0NArxAV
Xgap5RCoEIoWXH3sLCYiWfLy612AXoO5g45xVw2lo/WXjwImhVWqE0cjNwepkP9K5eYBZARiqEoZ
V8Yekv0upPbv+OWwVIDENCMeQoSk0NBBu3NmekHgnWA9aqlVhACUE3hsGQwG9Ms0xhNNB80Qlj4x
QTSYiqOs5qi9rS8l0x1ZumSR97bbIcwM0AyQT3J7i0lVdkhsnUawzpj8HbEUa8cE2NfLJo560F0L
dVmE21o/vlpATrcCoYMXvuW9JA3QtauzucNfkdYcR0/wiZmPnIrhZHsUoT6s+IdqTYg7FioaGaLq
qatJ4j7kk5pHt0iD488mt3chkVKIfA5ps+rnE1ro2O1oN72tRoPJXrmCw/9MKa8vNflZe6gzRf2j
7EBgBA4GH61BdEdZIrhbVrZ+atq6C76Wu9YJEqimBrulKIvq9ZOkjgxAWgodR7xQnT/FLGJ8KKtL
b0HACt8oo6n82ht5KnLAYtGUk+1k8al0Yb+iXHyw+vmZHXSMgkY1q0wypiQHFEet5AcJ/P8aW3iO
3FnTkdAG/Ik4IK9l5IslRFQd46AEDNHex3dm/aTIBxME94pK7gG2GVqZZdCEgsbSsJxBuKbm4XFI
4gvd8oO2R9t7i3073rfGPOR5mIuBSjqV+XqfQBHu6AHMCbl+nARrS7e8a64zsng60wv9jJh7JRWZ
MnSnxsw6jaQmWMithQqTNH9BdPSI9RKQl7AxyPuI9TtyEkg8449f6U0loE5uE8sT7eaRDUKgLEZ1
aWAxBITFWf6PyXD+eTljODI0Mf8bNM9hlMd9c6LcFhx6NdrXDqU8dBQuzHkIzJFtSjJLEbxe0I7+
cr5Hjn7IacQmA0OZi5iRmqYxZRH7MvAezcePevYVepChc7BC3azguykGCaMDwh7MHgi8ai7ZjykI
dHaqjSES/RaKpQp62Hrx9HzZoxQbYAyaQp2OXAWw+/5IrtIiC2Y2ti4Is0RWdXWA1CTo9F7VcRVw
GzTlJAuJvgOoLuJMrD41fzVDi/RwiZ0GRqwu+b+ZIG56KkqTjpev1AcCXYbeHHhR7l+aFmdyGYyc
DePlyjerxf2ZRNG2lhlBhB4hyMQGVc15T2Upuj8CuxfratvaysUclYh07ibm73SHcpMX55Tc93IX
LcyCvk52zm2S5jx7HsXzT635Hq2Dh58BY7yz0GzDLrKVh6jbmxquG4XJVt6DCZ0Us281mO/wI4bN
5tZDSl4ffCLBRSlQ+otkq1wXT8xrDhtrDOXEVkx0V0O0R22KC/PNBsg15SRX5CrzlkwGtI0NRJf2
cU2PYnD82ZJnQ/aZPIWrFOmwnaYNA5BUVuGF1C+WD3Cc/vkHFc9ujzKwp8YudTwWgfSR6uOpzgTc
7XaLELOyK4fJSenw1obZuDoNNPfMdVEcm1fNx4/RJHm+LYFx7lEEYHNCBY7V29+KyHJGSO8BRBm7
SFL94mqfGEm7o5ekvu5nff7Cap9X+lNosFdPCeHB+p3WSsgMXy137T4AjxjsN3qmBVo5dx7m1AYh
Jp5XnMIkXZuTbwxgUdN/6nTuliTHDSnXKXnpWh8FCz4JBoVHDB5lY8KMZZcMdz7oJs05ihdQhJBt
VgWoptHHDSDG91WpMzHYfHbu75dQyTtP4r8GgVxmHy9BoeC269Xib4Cydbw/G83M/ROjczpOhXPJ
goxOPkdOEynpF/QF8cetJ100kpT4U1QZgHwOYg180OPjcjOTwMWbAyGHTY74m+hYlX5Hc9MF9oW2
cZpQt/x80zdDfZuky6tmDFeYSTN8QZ6awZ2wG6JvAi3moU6oBYbVU4VqvAB6tLyw7N3RGQWknmSz
lMbDJHaSxKwsP4mpe60SY8/GypfRcVHcwzBlV4C8NwyeF45jOQu9t176ypWWc8TjtnMRH2HbNPDo
vUeW52HWSaTepDZFVTcLqdYYmf7oHvGQZkT7g64euvBoqwMavUGjt0ChBAN6beWIBe/8NsMdOPoO
7K8ywdZe1pCRrCevdFCQmd4/fT3PMBAIizfMg5wnhJ6VSeK+TSE2UJYc7tjClmBWuxia+sM6P5eb
GcFeAXkqI1Qgnq224fPS7F7tLI43AAkCenV9RJLFPk+FeW/GpyLQyE38uz5/MTwUhpj12CJPUuRH
IHUJCqZotd+3KpyGox8RotbXbY/dIjYURlmynHtiTtvC9jy8UR8oS4BE1of0Yv3Qm15xPfGLVW9j
zrBvkHfSrBLNnTtaK5USWajw0/OyykWHU+U1mDnHVC0NJKVpUzNPgw5GqjDJ+7S8abruW3ENsapI
vqSaF80rHPMCMBOquJXC+agRg0zFPxrLpli8MwqxkmY5vCDdRipR/EBwmqBQUOMnoTr18/apI+Sm
UVTfUMU2pIh9hZK3xmZ1sQO6GxR12U5pe0UQEsNj32r42Yd3NW9gdsXKXfFjSrvDR2XmWl5TRjN+
XJLkozacbz0CFWHEyNYL5Z9a2w0ZK54O2a5uAIaZOp6Kt8Gti3xy5vyOCTpnBIQRIUwa95PlfsmR
WBxsRBR0v33eTO6qGWaAQyBOaEbk0NTXN0MVWw9p+JH0AgzBd7zBEQqM2ETEcFDtuOdm8SCVxpbx
CU32OIuuwGno+/KT8+M4LRbQFskBPYtBTyJSbbCEyVjiKsnjCNpIrncEKIhCL9QUH6hoRreu6Zza
5FvGYTOrsY3uTxcqWQcfarZzO4zbiQIIH1bQeWR5yEIlSBXAnXioExjDRueFNGNe+i0HIh62SFU+
FvH3KpRUNIp2NgjhWNOHzMYPtHXwPLl7FJ59TWAC5W2j5nYVTLw5pcEtDYlkxZ+nzhBwSc31AW93
uYqYWdZXuwxcoRAFKkq6UeH3vRI7ICS34B7kYpMcc90XDe7XSzUBjhEPWOuHh582tRSbSHMmdnqi
9rj/5Z27J4PssYKUbOq7YqLM4GY9w9bX2qP2e6ZqYMXtdtyPSK3udy+lvT5TNCi9V03sjQvEcPoU
uJpnRj3ODsTI7wTz2FsAKn3vkOhL1nOiwb9DdZuoQhAokrm0MKeKo7I+NNPxZkcclfL14dQSwthu
x6313C7hTBqmnG2ycvI1bi6za4IrfheWkU0fe7rPzF68WcAS5ajVq1kIum/oSeTx5xiWLd2coXfy
Zlc/QJLGA/jbBe1dfkttwwJn+WZSUCNty+WQWs0fRv9EKQ933dN+Xtr+e+Ib9q8gil1iFuQ0NNHH
fW+rIa38kUjBq9mv7LCy7JCI0a/eK5VKFo5jtPuU92ozItfOr40KV9DCOrqfqYb2c1scqOV0bMZs
0o4dK9NGfmTGw4NNBo7t0Hsqcs5ZaOI6NPxJQ9m8ToZFlFHvivqKdIJ0AoGdYZ/CQefm8mAhmtAT
XBWHc9Xz5hGNgqitfkWMpVpQ+0Q9jGTz/lmdFzHTabowMpjPMmvWxfncw/9aecKtBxx5ZTwCc5DN
0S9ia7tRx/fdSuWyYs8szTq55Pv9ilUl3rEM77tJswSeytSMPNZuoTr2l/x4Wimyc14+hdY0HSLl
m6tZSs7orXbDqwhguq+0HXsoCff9Xu59WOW28e/OiNLZ/oG2xykXUxoX4jaLS0mnpYRbI0Loohw3
d5lYoew5rTgKUbjpJZvYGvYcczxphTbOWMXIK9z5WUd4Ki1zTpthE3VKLID7eXZD6v3iY1E/3JUW
kOhrLkiR1K7MQeFVFZ3eY9mc6rXwTk9EVN7X/rxli9gxq8qRDy5xYcG92LKAf6K/W3f6TMidgqW8
tPXc5hQ4pXIwI24QIqXW7oWV/HYp9iNWEQ8xa9vMeIC2xWolEy8kagHQ0SPGUU0W2yJcLiO5Gir1
1adCws07HdmootwSxSDWbFjlPboz+MCiWTLUhYimqPE+ddHwHL9L9+F/W2nPsaD5BxHOIUxe+bk4
vEdLryVdcFiUkOFGcmU1iPXwjvSf2YdSzV1qlCAcFNFdwqt3JKX03hjfpWRfkst5opF6DVVhNBbR
5k+nYjQhlGhSfjYvD/qg3UUBvfaazK1L7z4/hBPqzZWByXG0fwFz4hRTcSb99UDO7Hhk8ISek4M4
qyb4jE0UDMazp5VIDiG2FBAe0aB7T+hKmSeQeTs3P7/eW46NmLolf+Wtzz/br4cqKO00wGe86EKP
nWCm4VnzBHdSRhw6BE5Bt6l8X0XT8GdsLLefP1E1Kaa8nepp6uJkNDJTJrKJCZ/9zWEeEz+6fJa2
SP6cIiEIqedDeRUFmGJS7ppejY4UKj75zmpMfr1U582K+cVSgs7w1+4DHaiZyqL1uPv2ckTEDwME
LEVlWw2VZJVKPStrlefT3wwcvgl463/AadrzcWNyly9U/TYQgym1l7xZCVsIZxzKyt+aiUGMIRDN
zJa52kZdfP9SHnwQB/DIaAPpJXrOLmxR+pzx7lei91zGYhCytw7L4JU1FJem0Vtw2LkgnJDFCYQ/
NmpAHlBbSUnN4L7RXM2yh24z1EeF9SVcaP3r3yfkreNRENS52beqAllByWZBuYZpg3IG3OJ9vifs
riDObnOknjiOeqZSYFTIgBKJa+AIVGSvxpCjQvXIVQ1wtttQOQOSHaA4stMKsesMNNFn+O4M13pg
HRSenhgNzRyvx8LzIUZcV+oh2okuG1lUzWLDHPoC467GrDv9w9TWkj3u30Z70KwHzLaJJHMQYphy
IuNPsnJmeImkbU+eJAdFl7baUZGF6RnpvL9xveraDquZDlztcF5gpW2jsM8DDmYnWfECEG0Lgmdn
gZMnK707FeOAl7k6o+EIuao2EMM9uNxwsjTMO8S/MTucxMosjGPqIop64HCoUW0SnPvoooyNDoGf
SJ5Mjem7JnMbJemS5UUH06BcIc2xCdwST/ojCsm3mCj5hy4lBVY9JMTYI+qG22+SFeqSm2Dx9Mfr
yvuGYXP4/PGE8Pizl3NJ0QEzQpUYHr9vKVILuuGY2+f4Avl3xFBcx2ssBldz0bEXkf/YN2/ImrYD
yJ5D93beO5whSviRXACr6asqGVSDFQI56X16anTEKDLxunQrJa8YwfQLFgJHd3+B9+zGl0lColOx
dN+ZOoeOKqaPThpZl3k5pBVRFUk5dtSz0sdPwG37RAY2W6Jk4vrUYBbNLXStLldnfrNze4FTnWax
kPmrdK3sXHEP5eV/3oNNiqr5XywCY3S4FSrUklqInFshXcUXIKPwLGNrLBszkLJjwntXYSPd4CIS
TkdUJYFPZ+fdlB/hpsY+sIiCcsRme3ltDp5ZKFsDYgBe54cuD0Y0RbDuMK8Ig3YoD5mjYFJat+qs
8Xqs0P7LpPwFjjVpPDr6ZE3wGzA1N3SHrnnevhupI7u9YSxHBQ3rLu27wiipdBy8osKp3oUKg9Ez
BACWUCBJtIC83neXrAB9u76XtnahptyLKrOK0YK+L0np/bUAtiavHGLvPO/zputrbOZC3L7v5oi0
WAupr+XftBHFxpUcn+KnUJPSEb34HojFUHEOEUvfgHxzBDmN40/jXZ9YziuSAJ0xw588CG3XCCx2
i6rmf+GVKGlXB2gYgefrN0s9BKs1V6s9Abt7q+Th1NL1gwm4A07ErI3dX92rgNb5FwDJ0BeqzIwx
qRsDicCIZMRMG3FJtUUqk+P1AZEILJOo+i42VPTc5MVsVtd9CxxLaF6/ev3VlskmwZfc3+a6pLBC
TLaUd7PfKyC4im9rkLGKDAF722IwVNUZI1NMPSUQMrRp1JTRGPeCeYV7SXDlEPVgSWLr0xleRXxw
UlFZ7sA2ZDW7hjLQzKb6BlcAyvK3yIIfRZliXq7/8YBB49F4WA8X0BxAlJIYetkfFhuUHdixZ7Zg
Yvg094S1o1gc/pZwfucBa6rztgHeyI3UW4i7KFaOlhU47e5CWdqKDmZN59a6Oa/mcvTJNjljt1V8
xXLWikoyjKc2TRFfhnnuF+aHDeO/N/4uko4fp4089Jf97+VorGBK8Q8g1E3EKpS+i35BPlOGMG7a
N0tBWvqK332QB68hXAjH0yj7L8Z2NT6ZsxOtjb8nmqTjQzwn1DG9KwWkh8Chh3LV/dPbWzot4LgR
qEZmd6jBQnLxrtVsVcOihhR4RG9+r4ZnnmDmh8RzfJgTMqxKeAqNXwI4/gIKegOrCxkXBry1G9M1
3AektrgpGEE7d4/Sx0a7gJYH5rUptIcVadIXvPHya58xHDkZPmNsd6XbbK6Db7Bl2ypTq7F9qDwh
lBtc9qIwrNIQ3PhVv+zE6PoUCEN4jwiF05JoFbYkeE4174cr2F8hq6rFMPHQ/9A9wx11xlccj/qT
2dQd7UFapWxchQAIEhDRCYoUjmIX6YloSy0EAVEiIXgblzr5XUTp7d1dYjTuhYrekOzN6Yx87gg2
RtNt8No+3v5qc1IJdJo1biuiU3ygIXQrwIBnAnURbf89GdLa4mZl/qj1FAb0GwEldyPFmvbMno3l
7CGhrw5FiO7naWNprcSpJAUEECOiByV6frlE0ZBnVvhpslvOhVzyK7N3mKXGw6DxWsdl2Jpaf+v8
lD3Yib7P6P/XXBiYAk4DHdzP1yJRprUFiKRfKSF/1jqotK6NfGMrZv8bvGrpEOuDyribmv7smPSy
qBwgFjuamAEwF1rorDnGcmhL2bIywvtgpipZwNna9aTz9TR6qfYBdvJXtkjWn8kBzf2rvV4nJJYA
ETJYDAHB3+tZ/sn0zd9p++qXAa6LzxU7rbnAiBnzAc0ipz9YbzFLmmdwV8r168F6zeb6BdNyl6uV
EkZfTlrKTw2LHkzwmzy3/Low/ODoNmlqUXUy3twPbYxm1RloUlCr1d+a2uBvp4x6I6Y4HSyl8lkq
yFr/Byn6QglTe2Hy/LNALhU4B+6VMgcKENXAfhOgWWN3ZIFyUMVYAgfyiBWmjlfhOsBZ0Ul6ZIpF
xrC+e3DOQNnza0DKLgxJyFotF2PJOKUOCYTW2XuGFYSHFBO6zo6M8cyy6gL5mrlimDBl8/26ayP8
Y7O2S+NRAD7ZA2Een6nQvTvkVRG/w0duAKO5KNr9SRY4IFfB74wQ6WMp8oubqvaM9TPlvXyCUQIN
aG9V2ATlI5kT5nI0uDxVTzAXBZfp4QEfxdgJyNIZyaDDEyUuCk9VnWpjs97vwHyG/Raq8JDT809x
Lfi9JztAfjbXPdodRuXB0bJDCmGO95hRuAuVt/Mf9/IABB/ftXE89MRLenJ3jf3TyHGw3EE2HsRr
gmJV0ZhcrGsPW0Rq8551vhrdIj7skbOOB0iKiHEaDl9ljwMzLJwaNxw1R+CseWj7dMo61snYaRq8
A1WoQP8kFA9jDNPTjt/1fCswUSRlwY/pb61Fdexxa+c5gj+4BRhnBuG+68D+cbt2KIe3zhlqWpWO
pnaQNFFqBHDVVTNY/AFR6/VmHq2pW97zSZc1Sjah6z98/g+UyLwElRIWEftcY6eBMW3dC9t5c/Mh
a9MqavjwAOAW3IC6gi+sHChIaY3SnmFImsWYx5vK8wM3JV5dt43pdmrs8kh0XidHWyvEAuZQ80o7
tmvElJh+87p8KHNCyxUhgXks6hRLWf4frLiSaf0uCbrYDIxXyUU3ibTeN+4qhQxxuoBMz0i7mWIp
A3DJV9Cq51OJjUDV+AAVHmFwIirEtuRtATNuTru+lNIu/HE3AsVOgyKp92MkYQLpPVFSSuHnZWPn
YuLfn0JqbFJIrJl8nC6WabToY5Ao9U9MepuPorvcxbJ1ANtloXQerAXatHmRGjd+d7TWxtZVdAjw
CbeD6HnSEXfiqoa24qx3GSqSX9W/Ql+XeOOL/8AY2geKeUTp6iS2ENkEb2bZSWNynWkXgeMWbo/4
VPHz4Jwhth7ifWQXjkYVCM7Z60ZJCiZF9p0vx/kadfaDFK1baC3cL7kNX71PNrpj0EFnOvKtCsGy
fxq41Pdc3dn/DFhRmy5IAnmlnhu4aE0ukt1LyLHPlT9dxJbcr8gKXJ7rR5MBeykexm1TWgZaeErR
Fn3iPH6CAFQ/40GqZGg2p0qRPPCCwGCBXis+k1QvaI82qYFmpoL0QSEPSIH07s/R/GO8HV2Y/QZw
HALaLp7G06GsOA0RqM8lRJzhBn2QV51ga5jECBXS7aabyUE462ib/V2eex7fCF2/+H+hYLIhQ7qg
EaVVe60MUvvHjs31aPJH5+Nt5GoVurQDNVMz/QVoU3wEyFDn5zA2HnfG9oWtu+f/Pe247iT38Iid
dZjPYwI7CZTEeOjyin5CTVxdonwOdfrkypCu7QIYm8G/VvMkVbqixfDyzPZKIdAYixMKYYIU3QU0
xL96arfis7YSh+9DWaf3nsToJike4W1+6CX8hyiNWlXcLeG8XvQOkg1CxptQtfRyQ9ruJy7F/ziP
dpHQV3bSV+6w8JaWl5Cpd8fPn234oXmTQ2YwffhQsowKpt2GvTzoOREHEj98E4He99GJ9hIKB+Ov
6QrHsRS7AIJh+W/3SGp8noAkWJlDJt6pUPP00Xru4Xqn5NE03ZOSw5Qa/EcEljZfIUPQgHxH9w+D
eSyJXSOdUykU+pyBYZ+I8lIfNkYwd9dhhhyLxjwlvj9QFlj7/yV2LKi/IKesLIte7Q4IDxw8kMtA
VedjiO2DEJ60MB776sgFosF7lDKFW2w+yoAjq/8OgfM2oAkg0XqhgESBCqFYXbsa3zcA6IrshpsL
Ov6dSRi6VURG5gHRCilVqQttnB47qNACZ1Lj7lzQHzxp07MYde4e6336iBQkrLVGl5COCf4kz7q0
KMwFekGGFKi6VapHRIC0/AIDYDh01bj5e/fO121XAetK6BReGhYvw6ZgHZoVFsaP7FvLIdlgYVZT
oOX6CKYgqoaJyNP7WzXpIVb4A0EmoD4BsXuQy4cNrCPopBj02K1U02EfwGq5UMIHt4uK9mlE5TiW
vCh6v/yYJH4HBa1VHx6YwJzyeK1IjM5h4D4hjcXgO9KR0lgnDwfIIR2c0q1LKQTJeqh26DDOyscP
E3UJLDOk1uPrFP1jYcw4ZDCXoMDgtzRF3nCM7EvjNHOAbzmmYrw/FPfxKZDYsuLj98PfLl1cnNkx
TsK+YlPqD6wwfyd+AcZsZT8QFJjYw57mLrvyR3PP3I1lSSY3YrgApAMMc00B0sJVBTzC03SS/N+G
cvcuj2eCKgpkzSDXB7Ybir1hNPXjnmQXO5W/xr6E6aijuUX/kKzJIWbaKCoV8/ZenzUFUznuoIPm
+BmY0SO4DLL8ma9d3z7ymD8fMKMgjlvtqw+tGpuqUUnyaZl5VChDaDEQhpQBTbsa0SZukzOJetbs
bks0bBB2ma8HwBOOF/P4dqk9BOkpPb1zj7CVO6Le0qdwhV6Aps8BrXXEejLUm/e0px0WT28H+Q9D
5BxdMPz/oDfiU6MeJgvWmqGANt1w5YIzJxkNR7icZjThZtPPyZPAlzPww/lg0MK9MX24Kuf1VjjX
dJks7TReTGrOSaO6YOPd5RO7dk+9qxE7wIAkI9FGuQzMrG2XkCfzzePZTrHTRc/XYLoq/frvFxNe
fWDDHOkA1FP550dgKRZyQl0wOX/s8bJtl3gqIo5qpdteQoRKppmBiM7crBMIOttX1f3N72v966IM
LzNjerUZburdEfhWpUJANGa9eaTtdfqnCZA8ZMANuFz4dEizkIsmtcmkw8R+bZ2N0QN8hiTZTPXv
G4syTmzmQfhE+ZxWzkKsxpGfWJXLNMKVu0OZVf0GlW22eExJdoxF1ZZ9ueK0JmqWKU5TOCvupTpw
AVIiSIazcLuas553jkbYKTrShqdxU1oh3CxclxDHZnePFZrS2ic0V61AFkNfmMetZxhZVm40Qdky
kPiVxhn+wqEuBXbcbVjmHfc7bpMzwuwRQ/sDq0cq38OedN0WOywW8kXNRBflZyLBhhSU1bwMaUNj
cHgQMIoArVKUYa41ca80/qNUGk7i3Kux12HhtO0JYko3Dj4B5/BJlzXo0Uk7ztKP26heqklHBLgQ
nKJ2tHr6aNxocdirOKC/0IFGslVwUDbwMyEoIMpiRKqnvvVA5o9q2M8MvN8dhVFFSecnx6jBJlod
LhL4uvzd95kw8kmGrcg8bhNT4BvUYXmlCVVp2o1Rdy1NFXfm7uaAKOEbcQBoxcNmPudzDSvL2uTk
a0dK70fZBNjP08GC2NR3rCrsJRn7kspzJMxHKFtLjmfqL8fE1VPpVSJjyko4tSD20XH3V8Os6i1P
Ld7FZLc2/BoB6afwCzC+viOI7D7FLdvYBFcXfF6SewEpMnyC1Q0kQTC9L6ydRLsoKTPl9ASH96Ta
40xW28bd5Udp6uM2ZfudujSCVSq+Nysv/mir+gZ4kpPBI7vZ2ypZcoV892rf9b+WXrOqvMyBsQGz
3e0Z6wwqjXT+2RNgyvkE5gxefSFRZ0Qah0k/WSFx8atctjM6LyW2eiq0ys5LbxdQtGxmlrMr2rgJ
zUjguuiDLbMt6pN5I/pIHz/T/oVEDpBcfs1RsCBSHVlMcxl6DinUKe+8tENnnd/mUdht5ncYod48
eq2qPxE5B3h3xNOmTlRujQKEO/llBoEQnEh4eQsPMa6SiMU/t4U/wOS9HezIGt7NDei2hakQXYcM
DpuTl+rB+DYSLgZuHFrCapvJly5cTphvVZtF8F2hC1IrgLa8ZEpY8QfaJnDEMQxzr1pc/NxTOaal
qogTJ4e7ZgLUCR+Tigcnt9bdkrO280ZihyVqu3zCxeb9nt+px9Zd6vfVuz9v0qDVE8rL4kE6dLjs
lhgvEU72wAwa9YkRxnU3j3qjnQ+q5H3iOwUKMIw1i3ajQZrVSQ7wQ4mQhsOnUxOC8mvw0ahf+aWY
ukXhttqrjvhWUWhD/3TGTPbY6H43MzAY5U/7CXg4djBEfB2YI2aHJQi17xRrnxdJ9fRWrxrZIL4d
3ZNIVKMa5DpcZISL5sCLHi9TQ9Sdy8ZrzgCSIZxRWV+NG9v1U9poNo+9uLpv5SY0JJftdEot+/C3
bE4u+UfyIciDs5HiJ47Aplk1scIfKWlkIunJVKCxIkgv/tC31799XVVt0148iymyHaR33VvhRyoJ
F4KQxBw3pPz5xC/ISQEGwLh1QadAlLqp7+JJv2wPqmKbV5marKBMW7Xz29l7hhfYXwflPkaZMgLO
AcK7HcHoFVf0ntSRpjbRMv2OKmBCEdn1cOnm5ESGsdQJxviBFQeR6D3kbKMCrjJRRvim8HF+vbzd
XlIK6OiQ5D+cSMwAXeJGD9eP8/plgrtDqMv+t/vVk8X6osHMCqIf2FWP3idXMMwD/iBRqufmjcwB
FjWr4Sv1g3RtP6+V1xpI/QCbAfLrHlpnwkQRWMQgrzyBYDxrVO/CMuECc+d4GRznwJTfOtyUfZAZ
TftE11HKetlUUiApY1F6cYYIUvYS93x1MUgKlE3miuNrV7PgznSdH9BzhkqaIKZiEe2wgnB8ESfh
Kf/4cYbqqBEByUsNpb/SgliG/Ge3iP8zJCIt59FZGpp4k5QpImoS1igYWQL48eUJ0C6O6qVx7tWw
xQyNh3D1RO+zPtdzGSirLLrTXnUvzl2DK+2BuIH6DgJU5UrZC2AU9JyWSKVwnuRLn4wNyBqCCONw
8jE/3NURh+j6bMtV3JBWrT4W7LLFDQPcGJc6McdKQFMmASpUBEaKlAvp0pxEB01rz3JD+tKI3bKj
baBJBI3iDjPtBSasywlKDvC0Yo94vKlm++0iJNVvYleUsKydQm6Js1/Y/3r+chJOplgJOaq+40qY
nRmUG5D26HdhcEgs05iLroaMOQaCcKxvGPbxQnvsb2/ySu0g+Txr9vvSNQU0QI6BugqZlb40Fklj
ty9OJFuhncxVz0cdZncryykP2YNFmsIPDfr/+V7XUj97kgSL/OEEGnX/edN9HefxanPOJAEUQ1nG
fv8K7/fDU94C8aLQ4esIbPvvx0qHUFiOkktP5wtg9ZW6FUgFljqHwBmcrRMDVDEnMTt1t1SM+5U9
8bO/cCIYRjiIJACUvd366bASvCNsQaLOxJD5W4Qxs6kDrYzF6H8mIO4fBScKHLj8WWvLDbMe7QaT
9ndjKdFL0fPTfbehihWrCUeiHwwolSmd3n5RPmniUaDMqK+Py3FCCnmProirUvnFAtQwo2cKfxEg
BeRRPfqPOiA6D1o32sisgI1MeRCGvw/IeFuPW8KxPrpsb0Q2sARYXZbVaF8BiC9oJ28qO2WKVlc1
8S4QwPXFYPsFkolAgmym5bAqrlRaM5vU1eHlCN/Nmr6/GHpHn6/eabgl5ubp3J8qFzwOEltkbMxA
aRluhzvHtwdh5XKjbChNVN1v6U4jJBx2n16W54wgOkOHRDhHT0Jqa74lKwIo+Kla3kC2wTLhxkDT
ACCgp7coqR8EUfQ1Qa3kNCmBMEJjaJ93j07wHrZy0Svy4NzkvpMY37jN+qP/6NMXjLiSfM8elzkU
n3Uo2IGjjPTAoeT2zP7pWzcLu9kUZzycpGdF7u41QxkGIkcdT3JdyOPeTJ0Nk/NfS83jwK0BPGwA
L08j3CRjnsW4xbu4Y6fg942SQbJ0x4xry4M2iO1Je2uzuHedLwzrZiBVEFh66QFmc7SazmE4GJyp
l/I1scyg/ge9oQHpZv+USN03nkem6S8ovlRjW7TSJ4cZxGfaBPEiq9vXmiZ+uDSWGn9Ba/zXg6UZ
MDUhuySWTOS/SybbnhpNfgTBXR/64Y1t0Grt7hMS2lb+LY82qFuq0Sfa0yRGX8AEDA1ihU2Y7J9U
a0Q/N/nBNsM7ScJBETb/M0cSagFpm2Qe5f/sgx3GpyqBEISoi0MBFVyabJX2stSNS/LMgguC3JKf
7brB9in1RyUxCPTJN4DvkMcdb7/qR+ftnaX5HLzx1FUyQdLVCz+owh8KlWEWBMnhWstG38V8x4Es
gnM+e2Et9Tj01gZPvPx885gjjZGgynn6bQOUAe+n6qCbqljb2lrZVzv93xo5w8rN7eTx2bbc542b
uw24CXdJqru2Ck0eUlyZKEy+2CKMmCtJslJCvePA6CE/I3GmzqwqDeGzM0EuxdQ0rHad0ZXRVHuG
UmM3CRDA05UuhYKP0swlmD0iS4aLhGCkIkWTr4ucA+7l/i2YBvrlexQTH1kIFqVwQM4aAarqd7/e
/AW+1ZyRi+5EJc3yolFEWIwENqRX4icpzfHMulsqtZ0kEUBJ0wPSx4lPhTvtBQ5E2rmrbl5vHf3R
SPsbOMInskK8elJLCHVfMVdxca1NvXl/AQ7pTPas5cDkKZZSA7DGQKB3okAE0PpsOJn6hx5QKFHv
76e9fG2fnFpTTmGfSeRyFaiYi5/2fPzXS54tg9SuG/PgCM8mZ2CsunfTADtNKDsv/sjWS//9D9x7
POOGbJj3Hd8k2NasDpw054y6JcNExjnBw+/n7B1RwPk9GqMKry4uPByBuoZH3n1Xp7Xw5IkXlez0
QFI6hzvqodtS+4nvmsE2dRFL7u1oUl725kbRycC9sNE4h3mwdMeZpWGQE5D46RfAtcZbfCzJqqCW
NJlnMyDcFwkjKrPsZFKAJmeT082oAar3svKYxvHvea+HfAm8sRtUHdT5nWJ7QmgG4mmFEfxBaDrQ
tkz6YBg8144b+8IVUpmSM8onSd8Eewy9dUdxBVLPOQoCdCjiOptQ1lshv3vNMwL51fS6rDKES+1D
ctJUSXO0kRwiGxp+fh44/0h/Y0/ScETYzP25dbq0Z+n8GLVZh5Ev6eK9juSKJ4tFGGBg1eEfGyA2
daBDZnD4L0EP+15VJTJCmC7Atc6Tpb1d6yIz7fLDOTefDEuwKx5ZsSAENocq2iRcVd/n/tp7j4OC
1kHf3c5SEBrgOWjlpFFKnSw1XEsoUzxhifMZYkFQeOceGlmZqWOwKuhQRGTbHWWU1i8HTEBPsjta
CMLjRt7EVKcpIa7p9HKObknyv8G/4yfCQjatAl7usoz7vzsQcFubG9e3GyP12yLwz0StAjCRULA4
U787lZ3hYUwJHu9Obmds9w8JniXACOhanLic7F6mkAui3vi6DxbV5wpZT2js1bpXOmqcVgiTk0RH
Atb+r5ustfrurUREyzCB+U9xfQgv+FgT8KfKkhNPBBkeqrWwRGW1tLWOlr9I3SMOczKpoI8KDk0n
H+5JbIxnpVBj0RFJd4ec/Iak2LLNwqvE1Ahd5ZHYKfvWrFHvc5aH1h1AovzNpKlAyKFDpGyacURZ
e51qo4wRYKoKauNjfB1Y3SaB50jbl7D5+zPRv62aYYKO5Qq95hxazojmZPfB/FU8V7VmfxhODWmg
+OeoEJICTqMRZwxkLhMBFGcKpjt7O99DDF5db2s3fsO1BmF7/dCNcPTVOPOA3k2Hes2gYE7MjkuW
BGwJUQDn+0Wx8iGTHPF7yDbPfTmGW15cyAA3afZSD1jsVbCYOrYshet83Z2Oid6MEsfwHZZfZJyB
2I68bGyph4mvPKrZecGhB+nHPY9+qR0N9oDvLFcvjrV2FOMU0LUt4aE2dyiNJ1RVRMCJ5Otoj7xH
+noEDpvEBveeJEhJWyDJ87R5PYJ15zLrSKCBop9hqj3T6WsMh7dr5aRaA0aSRhxIXUGxvcJ7+EBu
zjfMxhl1/FkBSPtw6VvPmwQnmeOSjPPiy88GenSJVm5Ymg8DsRmikmLDUfBUgH3vdeWKZuQtZQCX
qoFLEtY97gWWPEGNu6j29Kj+WQiu4mVxjMyatKsUH7ob5ak9QEGsN/5nWdgzBQ8V9dHar9UJo7TV
dsvZzDoFTvA9qZeOR8Tkh1LGHDxWU8r4fU/dh0+XUokY35BmgLkHZqBxnui049ebwsGv+rzCSsID
RFbnKsGnweUd9pgZWMjhe9FzXcx6kktuPkM=
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
