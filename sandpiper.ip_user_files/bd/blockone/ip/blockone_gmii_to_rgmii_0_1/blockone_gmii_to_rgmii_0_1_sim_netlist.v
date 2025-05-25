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
qGpu5hgP+jlzBsqy6XdqrsEs1iXbq8eC51Q=
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
