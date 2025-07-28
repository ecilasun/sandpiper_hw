// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Fri Jun 20 16:44:41 2025
// Host        : fastturtle running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top blockone_gmii_to_rgmii_0_1 -prefix
//               blockone_gmii_to_rgmii_0_1_ blockone_gmii_to_rgmii_0_1_sim_netlist.v
// Design      : blockone_gmii_to_rgmii_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* x_core_info = "gmii_to_rgmii_v4_1_19,Vivado 2025.1" *) 
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
  blockone_gmii_to_rgmii_0_1_gmii_to_rgmii_v4_1_19 blockone_gmii_to_rgmii_0_1_core
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
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
e9PUEh6Yzuf593jNxxHoCduyi8BrrGd8QfRXOjPaTV4Y69ZbXaU+PUWBw89ymcXgluWJbDjlXvyj
x7MF5KByvUC6N4zY7VCzCfhEixjdyTUhYbsv7QXyK2fPXexvAxVWnG8l3J3uBPMqiL6SS053gmtg
cDISXXZ1JKHUwDM9DdE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ynTL48wgJDkhc4rBmJ2tCJUEmQcqt4Uqm5CI18MJT9YJgIyWdoKugLjrF0Rit0mVbjf8DQkLT7eJ
j3Jr9hxwbKTYZ7AjkffKpaQ9mwjL4mHDzAn0x73wFhx0qVAgth0ZE5XGrSxxQwoamZ2qUzy1jmUN
CDrPcreyKimo9bOb34sNK3dsdRdzKYS/oKdK56KL7OB25V/5FsP23E7pns0go0CKX15ePPc5ciR+
GRZC55hmsa4wINC6TQ61shspME8v5sgCZMXEi/oiH80Pr8SbqnPOhRHtOXD5lz7d4KKh/Y5uxr2w
rvxuvZDBg9+nZ/KaGhYrVcIdjgV2ox7xeWqfoQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
d6vPt2rOYGTOUnZdaRa1uG/3SKouZ0UqKBw1b7kxVX09Fr6/uqyIAWO2IW6CHsU2l04BcmaBYvnX
Ri57fRrBY6ZLfedKnj49ybTFW0gmpbs3lEnHTNRKGbgayZoGqowPvnxnCX82KJ3ub5ybDweWvW9f
96k/8UebgksfAFJq9vI=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
pNEFtDh0O7D2txsCtgIPPBmdm8k62Q2iO9P4qMCb7Tm+LQBir+VlBtMYm5aco5lz4YN57IDmWakO
N5fEnMdVvJxOcsmsYTlKD6P9JKQ1rUMaCLytVwnIkQ7gR+eCcDFlvG7QHlbtdV9M3fq3Jd+RPh3Z
VUVJYaSZFnn8RrilzQ8Bh1P+gjzeCCcYoJf5jedL9dyQfle27jrwoxZTgXIeThmV+Gxl7icOH6A2
OKz7Tthin3Ho1DePvj7VeIHyPcL6nTYTPRSWITgJkW5sgr9DPL1disQtBH5nfHvkFP8xgM58J0Rk
g84qa4YwF5R2xQZ6RSlUl1Uz8kJPmBAqt1tREA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
tRoS5UZ6Qd8FOk+kCW7i7ucHAdbJnRbnD/uFykC6kNr9SJp1YejS+59HLSBPeh5i2ynfEqLTq825
8VqJLNWfuJaE2t26/yxDTFsIW1c1XgDNxwzQM6OUEIaQIn5004fpAW3q219RiTd6ESX1FoSpMIQA
06AFS5jRIAR/HkbhF1Y+w/RqF3LAu+qvo2Pir7WUrE6y6dBFheYcJa3euKy4yt44lEyQ1HdYen51
W8Kmfc7fB3F0VRi0dGP+s0b391j6Jfxt/pn9cgHPULONum+pXoXfhxJTyEu/pIAoQz1vs/26M8Y7
1jNAZx/h1g7pXI1C/eAnrujb0OH6QcXKRnR9Ig==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
az0gkWWKKLUOsla4wZYvtx/6tfCtWPFVlr4HtGH8Xew/74+S6N6OwsgyBjLN4u+4A+AxMOwhJ80O
sUZoGJrpzJJ1mxGC5RCJDGQpKu/wWa+klK5GnoNxBHZKkTiyeTYD01+SV5qo70ywGAC2NpMs2pZ8
aijr8cDLCZQpfYZfxz7u2QwUxaRtkaMLFxQAfCDnFLA080t7C7l1rKS1+ICU/JQUtdq40fFK3UVb
aw7UbVuz4qK/UOAFY52S5H9uf0QJUd32HMwwBSOJ++pkLHg6deF9ZaFg9E2eHYucjgDDI5iA3pOe
J4XokmsjT34nbIkcyRP5i452E5TxRGwyKPeMUA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
N1YdQpcm9TYP8d0d1Ys5bI02aHSTcLZxKGBvBiL5E6JTYBIoD7ibJhN91IrQBmqgbeJkhfgHS3dn
tk53wmO+TwdSSB6kpehy1LZqWjsXwzS14hVliCfPii5BeMOLupNxV5aXGZ5/Am5Nb5tOHuNbXop6
RKDKV5r7F2RU9AZeHURoC4h5HaLQ2xCme+OpSsMzvsn2uyXb1uv78+HLniAnEHidie8PJxdMX5DE
xjd2eXjDt6G1r/gAPXhZTMFGbr6YzYvIpsZ+VS9nrkVvsFOOVFen+jqWfoIXcHz/3VnvPdJGS1b8
AQrrbeCH4sHPlkMOVigfTJpLwqU7b8SrseYYAA==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
dX3pAUE6Ls7rRaPaiYJIpsMo8rid42vEcM8lfoZyySB0UWborPtlYYg61IK/T1OlKASug/XUmn2a
COqEnlf3hwdHrL5p6NaCjXmM3VFlw1i770rJCsUTvassEFpUvFzNOOcd8XtOadGaD8VbWAKq74tm
xgf9hbD7hVbTuTzt5GeFQFQZWdxV+d4vcmM9SDFK8H1VpURQaDE4g296bSdJeCjOb/iKnpzAx41E
TwdtLRBlFZx8bTgFndvMhqnaLfH2YNBSXZ902g8xia5sS5JB35LG44X/l57y5gmrSu/n84Tg0MNQ
2qUZV3ki42DYypykQJe7DVrizhGqtKWHnGzv0Azzr96+DG+eaLn4HY4C85/2597QUFuA7lAHVTW+
wIQj2z6/7VCAkHgvoV9oC2mE+L/POArhv5V6Z+yWl5C8oz2vzoALqTXug4fjKNROXk+EN82WA/xy
h9iWo99jWTo0/PNolFHbAFKgf+mp1fLSrXsth/gDvVqx+s2BVRbmjmAf

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
dRfPKgMOQp8lMdCU6X62xMB73hQHRwUQvwEbpsQuSyEzpGnjBQ5New50ekCcLpSWtmahfrGPlByq
nIGH9W2GE/1gck7T30izKsD8B4GWaArJDONXtHx2DERPiB/c71R6hpXt5GudF8VXXBPUSdNOFDC8
7p3eumxaHQn/nurhgfR9PElAte/OHAmtnjYF789WIs3nxXmCj0IeQaXAI7YIjWv8U9+scTsmME9H
ZOFGnRZdrxw83b3Wk26LntTCDkb/rTCHS2x+8vSUvaUrNpxrBmbMavl4/Y4ubglG02G7Yv0bAp/h
iBkg+QC+xpBYiVPd3OVPCd1QGKN5B3wKbncPyw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 137168)
`pragma protect data_block
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
sZVOYIJnaxCBFVLGSOQvGdbZgc54nVHqcGM=
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
