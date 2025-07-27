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
OGSS8mZIWM5unQI1avke9szXJ3h6dGpDsPo=
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
