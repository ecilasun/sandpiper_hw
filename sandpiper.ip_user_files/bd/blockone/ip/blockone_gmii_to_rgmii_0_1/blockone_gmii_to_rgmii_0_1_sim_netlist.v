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
ii6z7l+sxNtdBtoMaAAG9ri/AuJnWfguqZY=
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
