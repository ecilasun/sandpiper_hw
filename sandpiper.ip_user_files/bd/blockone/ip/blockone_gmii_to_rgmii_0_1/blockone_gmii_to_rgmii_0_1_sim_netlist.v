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
fIRqE2qBhRnemahD8em29MD9nkoVoeCDdoo=
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
