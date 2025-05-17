// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2.2 (win64) Build 6060944 Thu Mar 06 19:10:01 MST 2025
// Date        : Fri May  9 18:59:09 2025
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
Ai6YhIfFggkCyR27M5Cy4qqLYM2+L8Y+ZpJnIaO7PJIIRxDAL66iNVBpZkV7wUZytNZfiiv1ihGV
WLbE3Dl9pgcdhgB/fdB2vj2aZu33654yPbVervu33gGKhyYc6SWyYpS9+h0xrU3yymU4tJNSd7L1
jANCmMi/jRf/4D5ZIEiNCz7YSbpB5lAwOYoFOFlIybgCJUp81BLaTLG9RIFgZ3Px2ao1tUKGabiB
M/gXmR/WiRDQiWo6pU3x9y8flx8D/cIY0fEQLdOaLYMJdALud+n0QGPa/a2bFhXaUsBCRYqkr14I
2YZ6R7qjOfAVZ4IecvY9BTM1JFR4GbhW116rpKN1wYbp0Dm78Vs0vkkClSbhXeTaM+ALOeGIGLU2
wzRlAk5+hou8hhSXRCDimpWttrUeAE8uwdiKFZW/DMTHUNkVT4v0ZMJrmkjd4FLLPlKZSX+BcTuT
8ZCu8YtuasVN3Xk5s3vIZSq/rgM7N0+APz6Xo0fikBi+tBgMbt84ozLrViPpljB/fTjcs7xiOs3F
DC3ceBhlQwoGxzSEkUgj2OBT63/DZr/3e3ef/dGq/7cm1aeeHXWJDEu0pTGuRiS9itH9TYPh8wuv
tg/dRjL3IIHwYr6t6Y3DkBwsdMNwOwYyhgvE/lepSGeHLrdxB0OcAZM6zzF81VmQDLyP7wgoqdWY
6ISUUg7Gxn1gjQuPKRXhuRU4vW/1showB56bmJ+QhlE57HUJQkmPfJ1Kkd40nSkwpNew3142h8Z1
fhqfnOw/IQO49WxP+KcrlfJ7TPo898ahwsG4B3qCPfkXChB/celaDGaE+ojEael66H1bpvzSRXUE
6Wc/b1aKh8vIc21Ipk7erYvf1At+W9g28LC3IQwwbf+C3W7pcVY+fj16zrjUF+U8jxrmI28ZwMDZ
T7LRxHHzVhcmU/IC2ncgKxa9AXqPAEI8gifWKVHYX5A+3EcZPiLx8RVYBQOVNFQG+FORKptvizah
mc0l/ZCzswFM5wQt6q5p27s47k4cfhJ7PPZsCjD35AhFmJveNDznHiX1NQx7o3M32NFKxVHIbJfc
YtyY+iJg93fiDZ9uHIiBaL6+Zla47b27cYtX4TShpZCvE1IRE7zizZx5Mpd1OfKzXZCdKNuWYIH6
l9VvmJm4CqkrI+afOCJvUJy4sNFRns4m+trF2Hp7DsbvxC3aGX/HFvAkfpx39MJ2hl7kuo5nxPQx
vhhtpBim1pqqiNxjA+ys5bhUxOYqCLmOQ1elJgmFHYN+CFTeX2uNthswgZ0t8zpJrphE8tc5fObF
zifeFgccp5gDJkA9q4Av1G3Oo6FA3JtlS6AW5QZDR8dmLWtaI+5dqQhvtKF6bnzirVZ2MFCa1cyY
gF9op8S1b6Fyl7seuL09P0kpEi6Skb3lKK4l1LcH2DR6UsbrL2og8Mr5NqN0GslYdZezv4pC+kjB
NhFY23sz8PdNfUxgtE/DzTbT9xwweJPY+FRLbtgEllxCfsUAAe252oXEBsGu5daLihVA30v35ziB
Kw7M8Dr/AUnpD16SeL53he+SvqI0/ZOgCJzJBzWpDv74HzaRTghLmXSJv52Oz9Lj/DEhvs4g+nz1
VsYVc7vcyNQfAxMxajYrXgf/Ax/15AIJ55MxYGgGZBLM2SB30oLl+f/M+OgegIURk0NS74XPWUzT
3S/ugq/PlTKtNTd4h5t3IddBnK6/Yo2RHfCfldbR8d8sZmJfJ5qjYDvfeH3YahEyjiPjjV13yFSp
IiYyyNLZAdU60LdGk5T/Jhyk8693XxalH5LmYGavF90mvCxo6sOz0qsqrkuTPHwc/+nS2jQGvJ0O
fppLNmS5Nut3/AAlWFHGuMFEDvJoJ5PyxdGm/9FLJNkRJFs9QfCzJKL/W309JiVMJ+E8bMLIB4LV
PWzsKTxIwrMP1pAHRYH2NkR2jTuGMHjId4plkDYTyz3o5x7KZcnG2LY/1U57ZdVKTKMAPuS1zXyX
/M0KM3r+OfhBbzUSPKsF7QOKBcpTkn9ejp5SPrDcqUiWwzZravIru0JtQwieZHn6C+iV+CcRNsgQ
26Lg6/Wd09XVFqQGX38IVrWeaqENMdupJ/lphQAMtcra+inDbIItaWPfiI+4T6IVWWHuPz2R/dAA
SsUymZsmBm7hsI7jD5iA18T12BPNanSNWCTKP6nCBKlcKkFmgbrIp79Zd+L6lR+GRMl8a5ZV/sb8
NNYxoXuwXROilgchT2iyzMQQ3YsV4wAqZK6HNi40nyivNluz2/zcCxmMPukGcARsiFeEgx/vXu7d
pmrMifaT/9/iozDlk/fWZDdGOgWPz84f9AUx4gId4hqxfe6Btz6DlejLbTABCxvn2jkLkB9AN+RB
hajD72fi0vs5fwoYNVYlchx5Qtwq46Ivc8hLoWq+PHi9V6sVfoszlDGjZkmIqSm+YkT+oSuwMmpO
sWjo9VwOOcATHZEEzK7C7HsIMRa616Hm1XzkHzKlPXaghiGmJg+Fqx59CfRVUGTnun4o9sKunT7P
KcUtnAP3uQX/7287tcvmPnX7od2KZjtSLZVybtKuob98vMIG9RmxAJCz6KM6SPpBLre4qbhizSZu
uHQzbEfP9lu8P7mVjOxHjEo1j6rjXzmVSvnttS+1c4aB+zypIRzh/jlj8xdzJbVujIeGz/GYN5pH
fIcTXfOvMxJr1NbyKYHXmLNl9U2UndEq2i37VUCeOwUvjJsZN5gq2dS22rqyrNOICuWVDoNVIX6c
8eTXoiQfmbA9+8FIHKzrkCEcORaEsKSoDRiA8p1dD0E4rOglV9dYTLFMLfdKOvw8vrVPQlpdJPR+
17bwle/RDtY5LwOPO6mr8f/dsa62ll2hwbtkkgty1Db/8UBiXe3EPYqT0yLb1FEbzi3bIHfkaFI3
H1Uk/YG4fy9A/7d//b5QMm7UfyBnx0hUE4zHbCDOUwROxwthZDJFqJOaP3mnvo9wxu3FpY/AWDae
SAQLzsRVLUYAWNq2KCVYakmn8pdi4IeVAcfB1FxcByCzbUFLV/4IbIEuadO4uhbkFMQDPnwXQvN5
3mMf2J0iv6DYuUSrqKktC8tsLCyU41ArwYeN/G/GO0/9YW5p1r04TYKuu29BOeV0hfxsMKeV6AST
xLZlOR3USj35DFqCGERuj6+h88p9jONLT+04O9AkUkXG9AiEUzYIZSDW1YOdfsuTECVs8ImROlrB
RcgMxlX4qm5u+1iC1/FfhnyFHCw85Ot3b8i5DhKsPeO8I+d9uGWzcNA/j4rDcH3cedQMbH9MzLkC
nIOvH3Ynta/+rAm3vxJ1/yNmEb8juB5GPR6q+ecgrZgYSxkQzmOloT3ujQ00a2AcIont0ry2S1SU
K+rlBDW0e1OCHQ583anvU695TAfqSwEmWSKigtp14BmCTtYxlK99G4YNOkK6WGkKWLjj9PEXZB7n
f0Ruf9ZJNcLwQmNWMCelWQVKqWeVNymNVUj/dm1FSIwfxUvdH+mhHnJuettM9vv2sZWY7AtVavlv
8oO7uCRIM74wT0UJxzRCSUjQEerBdJMEN/e14epptc0B0tN/Lp2XorR+i6+S+v1PNpJRnDAlEgox
GCDiqfLcxJv7eyDH1Ynzseq8wea8dYz4a20qxa9O3jTRgRdap8qPZMM7af0Nz7wmUs+55CfN0zFq
lNLZeWkX8dEQEIYVdgsYcCZ8pp3658nJ1xNIF7PpBZCVcK77LPtIHcoOLgX/9izL/JCS8g90yZn6
dO3re3MNRVAotgnCLvf4zTedOIo9YlziawniQG9ieSwZ79ACGDIrjBrCLNFkVo7VCyCHNuR1zXzb
LuP8kHNysa3cc4spGtxYEQlUpeY0glX7pNaZ3MMRmMauzVWnxhiiP3t8THNNmY4a10AjeCx+ffLv
VuDytZzPVlMPycO3hIIPn7Ki06OnXC94dUhp4PJFyVqS+j1CYluuywXmj98lTgPWvIUTCl7LZnMs
v8XgL9gIKjbZlKFSUGv77OLqaRKskWiTWnH3rceaJPgQgNP0Rl1KQfH5MIpKPoybdSVs02H89Uct
J2YOx2qPnNzdKIu+tN+2qk3B3Zxbl8MFJyhoTiHZ4nVB1sqwOPwqCqR3rG+7yZf2tIvWS5m+vJWc
QZ5cqVng3nWMEcrvDfdPhtCEed5OhYh1g7UKzV+ODNA0UtQEDWPsob/CeEP3c8/q/iiXEg4ixpFY
E3fGx8R+R1/Fi11bvqS1t5oJsUSUHU4dhhmLN6cAVR5yS1EPdKzrVCj5rUwJD/RcFgiJnJfeXz/N
Opnb/U3TyUfABgmAAPpWZZzl7z1mATGV8MyPKMF2vacMULRE/z53a84Trm1jqN2Zdu5LSwvY8kV1
ij+nFVoDqRKc41PLkvZ5SnQP3Wy7ZAV9foaPBO1bqsCze6MvNSnB3gAkHmdhZkFM10egv1is1/eP
RqmuQfVQKEfjxSs++qm8djOVvdrHmMXcNhj/8enK46TYpODkFYPkkJHmk/+oGUk8pV5Hlv1Qlzt5
AZ6tCLzycKOryJOo9SX1WBDt7ANmafaMzRA0u4RIQ3hpjE39anBiCx433xmZu53Dj04Ij3M4n/9O
+NGfOPlFbviXCt2XdbnbQnkk8Wbw+a88NOIwovuU4HVbiESaYUTBGqdjFUj1LHLwtX3CdmLU2COV
cbUQsr2DOSCNOShMUkW1PngbHfOn9WSXX3/Ea7hm7T7zMVnvmfp3tJxDmNdpcduzaQh79JsOrzKI
wrjsUopr/d/E0m/QhC4opUn3vb9+79mGorNi4jEyyKecw4CTUQhHu+UsqBRlK2mwpKDSBHGlWUew
K4UR6j6/VhN9go7+0MHA0u0LJhWl8Od8OxoU4/ToXu1axrJVAYXNvW/tklGFJKAzcOhsJSAbyB0N
lBf2aaXcMc8nC/+FpzHn/mWEwWZuUz6KBiBL2drudXy0Wji+CBv4Sygq5AOdEuMmL5iwirDRJlIk
tdhjNrYy6k7b5KgI+ODWCcSkha5fksJbpZWWScn9eVDcGvbx2xpCFpVHC7qG6/0/wMOVVjm9NuRN
iZ6kY6aQfCYK5Nor4p40kPqYcaNHfx0NDWNWbqeINm2iguCLlc4wsznotpiUtdcHrKFJK5bunkeY
AD1mjGgk8K/cjcFN6rFYKr3K9vddqgQ3E3amht9pSyxeefVmj478mHbUha7hPTtEIUZ6idqm3uiv
yhvPfdXmvcBEiqr+9HDUxPEpC3b2rL+nH/5aCpUNeucmqCkDzqxRbnAPsQi6WVy8lDWXaAuFihYr
MtoOc71R5dG7AoXLy4+2qCePmWQg0V9ZND+2FTM7FVHdrr5MEn+Ga0KZwdtiXE46y45rZEShDl4F
7ySUOYBsGd/14bKyTa9FtFy94Ca+uDM3cKxAWVdpCd6xN+q1s9gGreSG8XB67WtgDRp4EKz97FAd
9XbwabevueiKt+y6/eM+mM+LoQTPF7LLJKg1Q0TfgoVwOkg17L9/gyy8b1zmJ6FahOmvSI8Bbfls
FPj4r3Pm2bj1xggVz3NU6dcx6i2ccbZqTISX0qFvmj8XTojn8aW52l0wjAo1EMNsSHzymk2eC17l
mWzPeFB0hYzTHeNEjLizcGGJEKX9duFRFEYQkC/EYepNAt/7COQe4BipqETzjzeiMYQo59aMjfdp
ZluoatjuUgma2kHLQdM4r4SD1n2RmgimCdnmf8yBieTLGBxua6uZyYhCTr5IxZ4O2OcRcQus1D9M
DJPg9iNPir+1tmjGs/wR2sOL6nQlTQfk9DdMN695CC253+INQZDU6wCFHdDbEufWNtqmJxH+Xp1/
I2SFEP/1ACBWqxtwo0bPQUXKLj+DE4VvGI11M7tbP0KkTYKdMWyjSy8dxHK3h7m8ySgzMW4Kl+Rd
pskz+WE8KHGcz/7Z3WFbCL9E1FFJUb9/mxcMPjXLiAfiArD73ESYCB7CHm+tl1YDBJ/IDgQ1txMO
N5HHGM0K6aK2dnPr0BBgxJHGpCurhfncnRwUtkxGnqj00WFui8Psj9EMS1pWXRd8qP2TAZGUMI5h
veEtfgysfC7E6iGb1YjOkqnkv6VARvduaQkP0S1cwDC6NFy1uS1T6sRLdf8aFLt7l61IH8CLIfO1
urWkhTKfx00foinST4OKEwogaWMQWKyJc2wYeW0/P095pZ/bQ1+YK9DOZsPf61UzM16Q9o45ar1Q
xUEEOrK+6gIEwFYwcGCMp+xK6hGcl8Ove1MSkjGIYtM5Yu/NprwQc2hLova3ouN4oiH6eVrkpU1S
Ii3mG3pLmTnFYK8T38bBRuPc2pp2988skIGRJZG8wmP1RkI2pt5IcQpvDOfc7zvUvHJjCyo3KS0d
yLMs7lErZSS7+ln/C3fRQjrYhBHZyCp69sBJwYoP0a+ceDjtabRihONVmJFef0NQJo9D01nklZkh
04ypQSaf6NMsQsm28qV2sgSPiEJbPnztUZZ/G7BL2z/vAwIDyerIP12qYmhDCU63Rv9dZOVytx8Z
+TRcVRvdH/Jto4yNANx3yfmV4A3+32g8Z02eAdirzGdsG4iZonGzdVp6+i93B+aOBR6eg5LAd/qV
DMTB0f9PHocihlyTWx7q0e15j1W8crpaPJNSjLsqThm3U1s/6BfSMpVUDw1kxhrCY55ASKxSFuM+
9U6/yHLRTtf958injZJ3xfcePkp59jYLeau6DOjYb9DC9UxS+9hedUz6iPLyKSBJz3oaFbFOBMHt
/VIeSipAe/ODnpVl/2LyKooD+CtgInwI0BM/RV6VkqOBbaN0HYvdBbBYOOLtto3k/QJvNZLUbwN1
yIw/qJyH1ePi9d79TBvg/RAzdcmMrWUdnB1Fu+dhgPxsgmkbHLY8/RfPurxtUPZC5XmCr+0SDgP3
FHX6jWCuyvD9o5qTXMihh2j1mnkjUkmh3yNCAHFkBoASRv6XDsSa1IkGLRfr4kn9zx1VS7LISnq6
ZBJBUs9FQ335z9UKphSKHXVy+Exwx8S+y6+Ch5kraF5dJMT8a1J3Zdc81g6WmyyI7YhUBhDUQ2wl
ncsxSh8NjyCKj/QfNSR7+2uzwdcMoWm20fbgYulEkNfi6n6Gk1YXepzC6HMZmB4dQpCw9Fp6SQht
QhA5Alt/fznouGr0dfTgRVuNbxTvbV3BVeV0cB69PD1eHNRMz1XFMK3ksspJQXEtKaaWTdz3mv0g
t7C53ntFqJJcYwO4Ru3sfgPTjpTBEzdfUgPV4Ekt5NCQZpuiZ7ivl/9HhQHMUtqfpSfhnn2/oYY5
19jWtfdyneYgkLN04tZD5uYvYma3rayU/5R5GvyG3tnck7pn+0GGh3ZFj10/YHtCLxgo1GeL9dEC
GvoYTYEI5w/1mjHbhxCj27pPbD/2KHRzUfiIHihScs43/sLbsEFxFQsa4N34xGa91Uvouml7WotP
A4XL6j9INcBvUhzrvPH526nMzI7ve2zUph/ikmHm5aHcccrFMiTjojxyS5lKdf7mTGzzC8fJa0Lg
3K28lkMkBGX3d88OmecOYINgxc/X/oBdhvIcw9z7tXsiJirZpBd/7BCc7W3mEP2cAx0/2hRGkmQu
cSx3GEQNGnf1dPgJTtLx4YVoMc/4MRks2hSTOiJxZHIQWc4Ahkd7j3fesb9BaDHW6pxtGKI2hl2l
zS/oc1EBjWD3wKiaM3gIO+qXqG0Ew9i/9ODFjKbZnoBW3rZUD9C+TX1xuEOgJIrI/x/VkTOnwjDg
eoLX69EpR00GL8U1B+iJFLL28ZjqRzHk020jSuCBzZsHfyRpHjvWFbwHNMQvfnhfSmpxzFsmQyPR
lMkJcjUsa+1JoGAOOcpdHk6QZEQOxtkm+tioDO4YDlbSvYnpkeuf9e3Kl1HVqNcZSRByHgV2pZ2F
IHLE2JvpeYXA/7IIX5a6EuyqXs7yj9zHli17IpPbcyi/4w+6aw0It60p02GYdpc7TFsW3vVqiEdr
jB5kdg0iS1pKo4sglNt/qZNGOqEumg5SepIFO7TCR9JAtRTBjGOZZ1ouNVHB2O0qwZPbHnmjGR7T
pU/W8DbnFWqNIKJMKQzIUrLu7raeHwDXu3zxY1N1MarphFHTrMCiY3FvPU+66lSYCiz24KVuWBBf
ANgiriajofLvR/At3LguhB42Lzs1bXo62laB13DIE2QmSemrNGmbBpCSfCo5fN7ORKWp1bH5Xdjz
Fu3oex3+KytXSOq4grWWclK8rRBNNBucrBB5TWcS2Hj120IpmEG4fv+vg8EfQMkMTdA/EDDTSVtK
0BPwzqpxVd5uf+9ROsKuLMZnsuFyzExpT78wcnXRvzskBcMLBbC433FJTq7fWZ/AGUwRYFn+5iEB
BSeB/RgUyOzXcTHXrS8gjQDM3ACXgPKoh87MXYe6MTQrcSVr0Yrz+05LU19CMiuo6ImCVNm0o8yg
LvgFONTvT80JXXrwssMVQSG+MgJvokqbB/jjIGUgac3TrSBUK/Lf65W6e9DIglCQmMjRELuWA/LY
rdlpkmuTEfTFDdpopVpN7+ZEQX4ZJWLOPjg3FuDyD0zi8Ejl9oczrcPgrQu/jMvl0UghBhoGBN1a
7xVI9C+tikSvZX/yK/XFvshf6WXLpmxFlUYGa9yWTpkg291GLJ4g3oWte83+m/nCVAAwOUlSNoNv
2sZSNq64lUiS5W+e2XApcwwy8MuHsaiuG0TSKujC2g2TdndMJNy6DCOtSuW5AiW03ycVmd552+gq
jENIBde8Kmp/9eI2zgu47Es1c6zLYERixFRKJKaH7OehL3eG9lKLCivL6QYlVZK7zoICnMipNY8j
EsoHEOpxT0b0S8rGXYORWk6yeolkMYdbBjWs4VYU/EFVocBYhAxqorkhkIa7Hi2792arfX6xSiAf
zZyHG8SOv0LzNGq++ocFJC5FRah00jWAw2NWosrVfN97X2DHcPVgrmTuAJicHhiCaPZRvgQC3k3R
c0BWAKatUaYHBbikVqkw3UgwAwJyvCFHUGJIfGnG+feo1RlPzzasEbWbl3AJPmG2aJsvtY1Yda2g
cXstE0p0vBso76w/WN3wxZNyOazHB+brOT9HHaNvC29WR+z/t0f6W7jGUeQBB7xrnRgXSQeeeXyi
5pOdDm9YBizd/UMsnIrpzE8IKwnEkBvR+H9yPmLguTqBG4XSNBkhqWkNIlgTKYvqhA09urwdjb5q
WmxLtAwErCDGP4Twh99lcLPz4ChUS82PppEIOG+dh0q4wRCz7Vb2QCgBOHf4N3waEhZI0GHM2+xi
eh1MyoV/YgK7y/uTs31YL0d3TZAMnKIOvysWJy6migwoSTdu0/XpOaSgqVzRfWENvuGVQL5Csv+h
31D6HY329AdTbXiEtd8AGThtib33am06j04cCJhCJB0M7v2A2ni2d+NsGd5En4KuTG+H8MR3Dn0u
xyfr4GyJrsT7OrsNL7QweU+v9DNIapobo9JmK7AulYKCI52R1YP+APjpqz0odmfMzfYydKZBXQDk
1kur2U8QqGuzzRHvz4gzMYUBB2hWOMvtjMijtUPBqteRmk3hK8LORho967Mbg2lPijuHEzzbgOzC
KDkcNsPW9SU+SYITdVK9/dk/q9xUKsoXo+r4ws5kcTTDhDslk9LRaZTAeR92vz8GCGegkAuls1t5
K/EvCetq8RDTTn3+cZOfIkmqzAUjotRymGQi7n4zOvKtW1b2wODKqozChJIacjo0O2oInD3+QvhY
P94xvWhTbPTFMvB7lWrcHwOt2TvdygYUi2CasbSGGEwwhqveZ6bj/aXcluisHOeYfLTD/SFBsTOZ
T+1a2c/Rz7aJz6g/NeMYzmPmHnwmGd7jV2xRrK3oDWWUBoBKZQzY4eWX2J+GY7GNjiHCOBK1X1Tg
+2gcknFXNiGeNnp+ap3rCJPxpitgB/K9JeokQeWKt+or93DvP0YJed6DWT4H4Oo1zqkdonC9b9pp
lFNeMAbjiXYCAb/4N5o1GIMx74FRkkyX4DiDDE1M+Ubve09JZU9VeUaZXKnoFmdTsGZUWr0l3QOT
3iSfDASXEA+rFdBrlzsT+XeM+skKTVhv130h6efGGH0GeDZmHpFyLkEnhuNebsZEpCDFfH2AWXK3
JxFy9zB7xSjNQOTBcAFlfdqgA9gGyXTbf509ILJp3voQMwCWNa5hSvrNVqnK5LWtJ5Q17mZ5yd7m
YPWKuEnV/jDtNJ7UNNQB1Bm9NHQit2XIgTAqdMjUTjFLMOV2zZ6uzDLX4LSDA8cGTuvPHmex4yfq
CKDzbG2ao3SEab+NNAvSQ0QXOJd+i9GWcZvlJcajLaAlEPOIM755I8/UKGWzP++yehPKaU0S3oX+
a5GUOm+ZcUGlkpaQd5piV2ZAN2Pzt5awETG6kYXmzDSoHESnHG8AFX2wNtjPCSvp8YKFBHLaLRUg
1DUYZ47tthNIyHHSE8K5dv4Fo+ZNCpYKW32XFN6zhMlbNFvyMs64GEp1I3C2McnYrL09OcLfHuE1
m/vwy4hcTVsii1iZTFJguCwmA94bA7LlJIWEKDS7q6QMV8cjT9mSZ05MS6jvKC7J5+hxyuVqj5qw
BfeMrM8xVxE+G/Auz7JZI8yg+ePKmFYRPqM7ZCmYS0FfvOi29G/5Ia7bROXoQsHEgTVQ+Uj7ZKLR
Vzp7ubMdzL1N/4AGLrN3PcBF4v4biXD0XCK21Txyc/6l+RQ1Of6U3oOdHsyQm2zpIcbRL05D6GRU
eWDvP0vsGgRKilSrhERSUkGk8cRQj+TZhJW1uxiGz4CbpU89cQgol8nnuG4oK1FvSwZxntY2qzKB
P7s9l/3iZkQff/1LBMfZoHGoPvIhFVPSa3ivGtBXyze6zq0cHHKu8SxxqynTxPWDiTDzkdplGFId
Bql28kSoUC6z2htxoIK7ZXmRBrrlR2YIDmdswSJO4PR/KWZfBk03nfMEZX25p2h2wBa9edPMN8tO
7BRVZrY29aBsEicaVUeKoEHKJBJw4n3wWI3qkTIR//ANw8KvQruoIDSj/DO+dvNx2qgdNhFD3ymU
3lg5sap7bvxfxULA3SghNZIYB21uparxHmMPeJ1q347UoWiLhx33tpO+qfAjxCvDppmrPJwj9iiB
I1TsRZwvpF08Sn1n4qTajSgNemCO9ggWVmn2XYyzkIYbvM/uWaIuhr+M6uIlF+sKBOrLQArANNhq
K68n/4r1rCMEtKq3C4dOMTN6kfmmNj7SL2mPb07IQBkbfWRtSVXWRp8urnkhXcKSaCrffjBf4gtI
G66MJRbIlZRLgohZiISpJr/MOEMV+ipB75GoodQykgC5fphSadU6bdRddTkinIow4jZjLYn81o57
dbFqGbpMjNimlotdtIHw9w1fvSxeXcilC4k7mEoAjtl3cpmlHdPJi+dRt0NDKIXCT4tLuR7G4PB5
ytOdhdq2kzt+MyfRCxFza+JaQNgEWd62Jd91GRFHLJaJTjKB2seWaGIjGAzo1KZy8dEo1VTCNyOq
q8+t60QY18YOoPvHvZ9xseQ6GhN/LLP4FGpdV6iZIojcuca++mw8937k9WT0XNOL3rbuuJIbID5e
lPRONoB2hF6ZJKCFrOmb2zM+5gILVzlqGC8kbdsorsjqFOWrbpQlPCUQJpjNb/yh9DObYcR5UBPq
DLWdeDtqD3GyWdJdRGmVob75RjNmR/PT36NV4jp3bnfYMS+TxB04iQXl4rgHsEnmLqYoic+G7JMG
aw2xErQVp2u7wO7MSmorVwmMKbbS50/PcQ2h50JPyvvM+ETK9YgpxIYUhjkKhOaisffwHdof3euA
i21Iu3ZZpshLubSYCMlZhFJAn/B7weagQytryrW7qx4C+/p9rgj2NtGqHvsipT1IcEf9llI1TJUH
GkZv5OYKsqQPeNZV28Bgm5IA8ykyjo1Iorwm2R5BDP/DwOgTAfZ4V+Wu/tEfW2EcKOon3Zk3HSvu
e61esYESE0TIbwfG6sHIwHawWOO3D3QhedKL4AbUc3R5BPy1C17F+qlxqYVJ8qZPRJ8gL7BkKFaG
KaVJQoDYEwJk+owO5E6WgZ8+gjHNy8evksAEhwkp/Ha8rm4veC05q8QZPYRbt1QAyR0Gj/KDRHmS
YnqZ2jNaa3uEreB6rBtgnNJueQibvZ4yVfdg2cMzjOGp/Zc86tb+DTWyDs14jvv5znN8Gmtt8IE/
+XWs3oeR5CRn3AlsZlJH6NWx9i4cV0zBMyoeg2PyiCiuUSDyW+SNiQUhvIJnpRLv+UvoNQsMQ/Mu
OQ5OaZEFVJHnOBjosiRiAFdOJzOGUEaIhn09yzrBqjlWfzIEabvaQnuY+c7oojBxuwsIlCnQuuuq
B0WGCoYJyui7REbqdfgceAsAwsMb1gB/6Wpg8ILDRwakh33NqwW8QWJEk18gdsVWK3RrB6UZCQ5s
zsjJIc7z3LwmNOkpEToIh6XPUlIzgprFNdSpSXdLr2dEEAe8JZFEliG477qac6rNtBoTFa0hOPfo
cAh9YugVPrCFSxJ0i9Dg4jiWQYTCKcrB5ieziUL6wSIcZL0IN5TTuv/ItWQNkPp/H3sCKhH7e03Y
e1SdIqTKhQ81ngtowkk6SLtqZrHvlFU5Ten+rbb0uo0ZUv3f0N88zQAX5J5K5ljiuY/Ska6GMvin
GKCoWy+qXjftcpkSvENZ1+gs8gfhoD/PSF7r6OUYCkFaRCU9qSJxpFCaM+IZXssswOjDqBVIGfzk
M24Tm+cxeZhUzZYNBnKSlJugC//tuAEjRgMOwXeVfXePSlTBXCoAkbsqg4Mhyj+khjCpfCgl2ovu
SJehtm3ZJIiXC6DbxQfnpYZBCZW0kacstSjZ87V/GMB3hoAnA2yu0X/yf4ADUkfaPHe7e3IoK04S
cCKEbqievTdS9Ekqd3JAxfZG3KZ+/6HRC3fzpwHC8MEhuGbwBrkhJMEDCh8Y0SZTIIxqdzd00bSG
0kfBiWsQQJ4mCZi2ypRmnBrD2pxofIsl5tfqb4VD4ibF0cx40JIcXDudfLHEC0cjh6dPuOm1MWMB
XiduoqiQirg7IKVQsRFBe1w5VgwxeFBZuZjCIYnaE0pgro516MPGcca/+I5ezRmX2gDFvciCSdg1
ECMs9emzrjVEkXMI6K+/HuMhZzzlhMnhpfxvqYUuHkK4MBJkAeFgbc2JXjvgDzbBwgKxIgujuHtM
KRptE2fqVmFrNkRFt+FsGpclA5b3vs4wI2lHLh1LviZAb1puQye2YHSWWv284zCbdEQgmXrXWKX/
BAwfBi96I2oOpYga5d9LOkrJ3TzIoicAQOVyD6abEAwFOBjwL2eQagBbbqqBFjjVUyo+Sfom60+2
KbV/zadZ7FND01csANIH8RTenyaIfSPkZn28vPtnGIeHOwskmZeI5iska3/i1KAPkBHiJxLpzcH5
G/BDflC+yXuR5w/RafjHQMPw6IjRFTyVePVadLjjsALQwNMj4NxZnCrvW/BKrHtKBEk4i/ZJigvD
ygZ+eVvY70XdARqW6z6vcjYVk2htfFKQ6MUtN+7gMWbj2NNj+uMef+TxaQmIzNmAYE3+/oYR9ZYQ
E5ou7e0X+ZClGVymQmR1mJZlXrc+19iTLOZEcGO8Mir+julqZrhyLqL3HZE6mSuPXVvJa5blXphQ
zR0oozWP/gywKGMj4y6p8DwNWXr3Bif1NznE3GbgDfIgOiZh5YQjtniGjrPwraeRj/3fVMWwvNud
HYffXslZtnn3UpTYzGdQhsWFN8rpKvp4ZS3WSmo9Om5HVLlH7maTKsaweiiOHS+msVojOSd2gT2J
8KYg9+qTm2B+DfLF3LH7OwyNqYPoJxtCTnrn+oEf4QyJ4wrqJeOwNT3A6pezT2ovMU4sJhQXn84Q
Kf/+cxCQaHk2XUMMBwR4JrxWUYrksQhlUmRHWZt/IQ/Vxh43EJ2TEET9cYMRQ/vR9B9jzd1m+jEx
SMylrCDy9Z+xNK0ugMOeR+KclGrV4PcVgtA77H+I3zMOUUFReaMDNuUtJDLuzxkBvP9SzL72xWgn
v3lyWkA1QgGOMZKkVnU9m0zeqOT3kWJOgKTjT95dbakAzz+Bfj6+Rp2zDZoTLucCKj3rOOiQylFJ
I7zgoXZmPYBxfGspcsbkNPgqrLGY3AnHd6KN2Rpya9WIL4e3G5ijCTW3xNQxbQ8DTSCnsmiSWm8F
NjPzcOl7DXivW1AMhFHfBCw5Y9ktUL+qztFzICaQnNq+bTJAEzxNZPL5X7lt+ppjWtY03ndtcEwr
lIBH2eYhsh94QvDleE4SQ2tTcS98nKo+OC9aQu7pLFE5W83Tq/ryc6fA70wHmfHZ7kAEYldXosqt
H6Be/JDHW8e1nKxQcfX78zxzrxgiR7mz29haTDhyPLcLET4yt+Zqgvl0FY8tfuwnW6G53g5ffoAk
19FV0NfKrq6lHMCnzTAs1voU5TA6i2pE29MSN4mVMl3gtQVQHeoTGgJ5WxBik8AakhorvI4Qi+sm
bGp/TCitEZb7En3ey7TKqqyiyV+H/8dEne7D16YVIwgBDlWDy9TNO67o0b/hM6NLfJL/2K2zQIG2
7c9Ta8MH0m9E8AKfr4fqlYlMBns5QAPI55v86DxSUlrf/SVkJ7VFRWpIardzSiqOwFhWfuYCl4a5
G7hcSYLEBndMS2fP6KupLfHoXf6GxuQQLQhOA4fvxSos9Wq4oZfyyip/rSkdg0qx7bil5NCxaKYs
cjeNLWhDuYbxjT0JCikbcb22vfAOtiskKBSwC/2R5OBl73HP/Y1OxzMq/NbcLECwhhPKOTvKduF+
BVEtfNLg5Nsa1nh4Z/a4eMQANvFWBtgwSBhy5j8bws6vxhsWpbsUTKzJUZmc7C0GZCiXnsr2J0bF
8NkymJrxrs8fD0Y/etdda3cMFIYETJNnJdM1R5eAIMZlaAy1iS0TGdQFuMzxqhPMuTjWKyJyZVYG
cGBC0m8YmeMCDdSJMCX7POwgnxSxqWvxvyYgPz0t9hmEbhVlFHU9TWYpIsRBn4DedVIimrcdhSoq
d5LceXpKEsX3mHVFdxIdjeiWnkBD4+rhDjAWwyebJQO1uSypmqUOKS9LbR+5fmFv+SBKHgJkNzUT
HlvkTfjfhXLKWZJiHq+qfoOd193YzdWYbe8yG7mNXDGsj/wNFHrrCdRF7GuJuJIywPQnGEgU53ST
zPLy3xIgAzgLj6hVV8xuH7bvZmrSfAteMAMj+NCuD6zbeJ0QqPTbCFfxf9S7zFSQIciyZyfjMbVT
l4yBQV45qdnwFk1kcl3sfBAirLX9b01EdgnxBQrQgkDnzISiTSvhI4p24n1PZ6L5sOSbnrVlQhS/
j+e5SNpu3HzESyRGUyCtNCrGbSZyJvEr7AX8PJKK5BNqXEUFwH/iRK+dXjFO2dUHOADKpAb00uH3
n+5MZaHGONjo1AbuzTm6mj+AB4OrFaI60PqEQ+9OPUs9ZrsV55UCD8z+6mCNC2JD2C0676W/DAd4
BFHhialZGmj2LWctZQYK8MZnjpiBAFDul+tPb2IdK48I4X/cYvJvtIHmrzndj2XcGGQNu2wD5i8N
AIuFqXZ88i2PdC+tcCXB1j58/s95ekdBdgU0vhy960ZU/8i3PA2BrdphjSh1Hd+X6/Hibe1V5xEl
hZSvV0WDS/JWg+oub6o5S7XAumNCculOrUDuwmFQYik/Wx8xn7UNOKBMbQDwracrcItBE/Z6JRl2
BVi4DKMzygONMyk9pYGVg5q1dQeIP16pre26xZS6LHu7c9um0yfRx/abgU2iTtVbM9mmY5pgxHLt
rrzzE6UwnK0EuIPuKR78DQ1HLDoANAka2PzDif7MIo1Z8t3viDhcob6MzlgUpqejD6GaES+jUX+U
Srtsn8F/dpn0qzjlgDuTvkGzhaT0HqrHtoYXFyYSUypCBvNS9oDQAL3GWRxM2r+FGZexePoh3Pjr
mZ0OkAtibSm+6qEGLkOwaAp9ZosqC4o3sCrtKRMxtHaYjMNpcOdEvQiG5IcaKnI3P0QB4OyqFpt9
qSOgevUn2Xn3GsKink/0ZBzDgYysdVqQ0jqhgXTC+0KXvwhEwtRxgenn8nVy9td8lcaf05WZOSdx
V1v97iDRvOH8Va2bOOhQEwBxuwwmsJSIKFBr7fI1ed44Dc7KwECftJYW/xzpwvVRxCOsg2EAccfc
jGwrTrwWpSBINSD31YZoh8WzFkEeOmLJr6Fpv4V+lEJSGWLT82TCQ0AR/SP9RIE6YzPuoQ1Q6om+
9gs0q2/x9Zak9gVNNu8oNPgmiH7hyI8kl2d1hMkeuFr2nKXcjOPh8MPtOEfxDNlt6iprdatbONKN
vsg3TP9yc9S71cCe26dB/4SJTRIs+aaD70XYdv4dM/3E6paYkaAGL00PfGxKGH9utQAlgzOFi6et
LRCjc21wciSI2clMYcmvYFFWBxm2n+M1hHh+v7yqZa6n4FhhzoByasSv/PA+Qghn11CUKmWC13lq
/YiphzVOFRNo1VIvBn/Q7oqTf7xhmeECBO1vAkYXQOlNABSsriX/QUEHy9LfgkuAObZURp9M5P+4
b2mkKGLoA1aNoDjajawzY8xGO+MQzWs/2NtR8Fa2ppz8KI0dV/lUBYi3D0GBf9MJfAne99Rn9pT/
1h0mYWM5LO8HUWJhb0buUODiW50fla+JCtWqUT6Ex70zfGZAhN7NV0uzp0cGiZTha8WeOpi7/yPb
BPKPcE97qzR8j+HVfLzldFB+troBvhphw13aoqWISQHnREnmbbiidxJ7s8EBYZ2D/GWsONA+MshT
hgQVX9p2uf3B5APj5QERvegkTnER8ioWtG55ZkctGhZY6s3Q/249rebbtVgGlsRqlhvDaEuimRwt
bU3jUaQwvPMSXsT3+3Z7P03L2qdCEf6WidCy7lUemTun3Hzquts+CMHUSPDfV3zmTteLhULjr6dy
n7nnIolMZRTunPNqZEIkhNuDhe2zlq9Ue5HOyhU2fy9yRcxKoX3t/AAMJF/T9pEHQ1m6j/KIB5ti
zkTqdKW1avim9GVObFwxL/iIj8UqS3IC4E4sPuou2vFNIJ6kbqUvc1Nmt+6M0UMjlfurUngdzkS/
ExdmMVxUq8rMPXVLSyoS8m/tcsfvityQ/hCG13wbSabAXgxdhfpLOK/TR1/H6mHJHArpRHJ0Qrb6
3otCryr4ibAzTRZIGYeobvDpyqgndAgQno8Xl3FeaeEM/QRhcbMcwzWncK25ZwxSQyTohiYHyFhy
qNcAc+zhREWwouW83WRTqD4aQnbpcp5fLGlyd7EH6+cLggkiYtR4OhpTiGcNzi2rZ77Ne66XOoad
CtLgcEt1dRScnQ1wM+eJ05HJnRh2PiTdKgAbARR8GWutV7q27wBQYU41mR9ASuB+fnJn1p/EBzzJ
wqIZmADDQK3TEnb1/JLHtdiQJCG2zb70gdvKXHyakm44UDv4JpMsM6aRpO4tjHG8OCoFPejtTPTe
XMAIiHl4HZwPTKYN6nfN8dKMvaCdADeG3mcX/cQi33JTGBcuf7jLDDAcYffYUg4ks/Hh7As6/9jn
HeOzmz/2IZTEYFJxnl2vdi1tNPUFCvKoe1L8BES5f+nKizpJMOeh5vriIU56OodScOPCq90suGdE
kl4/8AA1QLLtht874F0IsPS4CLtwZVco2329U5PV/Q5PO1DuQMw070j+maOYIq+T3DCsaXRDrEXl
+fWqHReWaOJMdfzTgsBOzFfPwbZe1SRjOb7a6xWqNxJ0yGri5Z+7I0or3AcRAQaRIo4XqDMYTI7p
BI2+pPVC6xN4qO/SqWUDOJATjkBJgdLpLdzBvtgFhQuk7FuX49Uh8+UI0RPuAENOrJ5J6r9i/g7A
kneOOjx452oDTUVBtZwKldh7KsQuAx3aS4y/Njn8WNlMucMBOWyPJCaxiYFCuQkxsyKX5z3pho15
c8a7bsTAH/imxOcry0QAEhRtGdZx8kCwfLrI4GYEGf9rELdji5ddUuadbsXmnzhJgr3WaAv5aLyC
SWkJ0nRKINowhu5RQuYRJP7MEJrs2BsyyinreCegDLGPoylMHOCYm5QjoUKJ4O4UkdOGhxOWEYq8
3EgCfAr1vpSoX1pHtXd7u59shVosLvlA3nNCEBG1+ypS+oGgBELuagovrsLVPm8sZ5F7ETufzEfx
/HIIMN/UwQXPx9flHtifeMTV+tFy9CDkr40Yd5UUNhIyxo/4HFIWQhZ77g5Sehw8ArEXeCufjGE9
W1ENzLVB1ND0sw1tcnmtPa7hWAmByjlTU63b4H4DaQ+fazniQrN7glpiXc570nRbYD5tTpgV89Kc
74cZ2eb4tLYUz2u9eWt7ljLGXoTTaizIEG17aZqmzxTZfgAJEjkMp1sFeCCqGYF40NyarCyZa1kS
SdcqNfVppj6eWbsJrfR1DRjNVGXgBA434thAcgYRL5OCnarwQcDkdOlYVp9OXwS6n4Ztz1yHgSD6
tybi3A8brzotjvJJSvR+tplm7FKC47KHZik0em+o7XPzNrBh/Q56MYgywFhjebHZTlrWXm5po/Yv
4iwxAe+zOY0SwMxQbBVQ+18FgxtaH+1qVYvBNZiSx0Nfws1yIB5HO1DaKeTDPVx01V5VZxQkkxMb
nH5NChqlyXqRT9WHpNIR+mkpuNroH38yus+PdmfzdFNDlRH0oRH9q88n/zBiFJWvqA7yQlfWRZ/5
PzJcDwQQSQXmJNJFmfmREB1q3EomKqbVUDc/dwI7XcWPmmmAuMtJH1Z2+g5qufjprX8noAy8xQiU
IYOPEA1bG6gzdc73QVjGGmnh4fzL3a9KpIpdmHSEv/KO4aFifp08jP9eYfGf97umSUBVd/mg6TIw
DFcq7Au52cVylSjPSc6jbqgj0TDULkUaj49mH/8ybicBNUfC1rvr32gQ6CtRDdjzkcRJq5dcqzW0
Sb4W/rDUrGXgyfBeF5UGdYdS6ONdG1PTq2U2V53kIwsogRsj4zHM8i8r1tNruhaAsXFg4o5x4osE
RHRZ0R2tCnipOzQL4MhBD07tEd4K3KzJGC1AYP1+i5FR4bKVlspSyCSQUFAULykgGvH3gB78h5gb
0i6TERORvacivHwe2CB/uJ1cWdFyZR+oxTMR6jBXOtXPIucVv/mrpOSi5Foa3bIkywaVzAH1K9qL
PqQ+yWk9B9l0ZRkqYaFcadKBBCRVW7SoZWkTNL4Y/SpB/bKPQ8sC7nwOoFSg0iILExK1DAVPbcyU
GRq2nxQKb61yFleOqr8krzq0snqjJhOi+R1P6J/J9HCYfd6waNcIwMFiprIxpebTzGos2WxeDL3B
EMFyaggM7HKy35CN/NNF0x6ZJhE2Np+BeDDeI68H4YH94IeEZm1WSebqf9sRtj7BM1mEhw/zaDDt
kfgW8BxJ1bZjDWnA8Wgg3wOys0luqmO2LnAcFcCas20v5Mxtoq3qxL3+oi/UDAhjg2hZRITsAlIV
0CHGcJn9oQBPisnojGFU3md634phdlLog+UvD0Bvt+yqtJRb+amCaMAJQ6Yv+rGlCqUUPru6pUhY
OPYuzxFdY8FsUgNz0xNarhckieAE2D/lhY2a3+DF2QJQtX28qs1wpqJ8du6G/lH2JHRtOksh2aMH
VbCgua/CwYPywM+NxzNjiX3BiPfHVXM2+7/uu21Ep6y1YvR5KQO3aNUsMoNBUjQi18h0k+b2iGfT
zzyiGwnEX/GxEw4h1iMMeSE3rDVgALR2eCytWlV//wv0AaeFCl5aEKR+7gG8JLqQn83FFjdBhsit
O/CXDNooFfFnMzrM6doYTksRdWguCm6c7NnaSXqD7QEAlCeMMB/+RwONchr6bgK3rSAa0RWU2Wp7
x3Ruk+xMCyWd8BVi7BTC0DzC1faPagmgiwpv4rCSadzSTfhinhxtt5lpIpr6MLZef6xn7Xfy4fL3
ByuN+DQM5zVgxhO1OgbWuKCr6ea5Lup2idVtooiG8mSaMQ7Q9Lxfz+cQ3eYn5hp+5FunVvgDhm96
vpNcP2MCYQ/+17Pe+mHnoZaVW56GxT484AnV84BXXmdvbbWPycfMKatadBo9OyZ1q2KuAYpM4uhX
HpYZIVB+8x12MKjQ7iXraUE1Gu9Qw/cpPP7w5a3U+XU/Wf+o0bX9FGjemwBQmFiLNHg/HSE/Bjql
vO3CYF6pU1zvXEOKPAAjYyFJBkALmkXtuhV+KqjXdZ+UtqWisoDq3UzL/DymO91G1Sq3w3icI2Sq
kPfBnj54lvLsY/BV7sT/6s1A0e7QM8DnaMYAsOvyeffe0soYjmT1WrLqKzQg24o/YV63+DYaCXia
2xO5oggZdyInQKYuLsyBbg3UFPsdj8u+wgJ9lCmQIXxACz0YfGBHqbxNh6s29bwo0bbGo9J0T6bi
dw0uukskH+FQldWGKDGYLZFzRcBD9aWLmUqR4aC4bv1oleQi5UxP+fb3nY3jzTcmeq3nGB5T1swh
959S11mTqsNoT1bkt7ZvPgfDr+JWp6WbjwUlyy7QZETFnyNP00UzGpeLAMljihcV3S/LymL4VE3q
ufHlv8Ay2GNmqTPvCtjZp9hZcljvrqmzw7A67PeFShdWCg1gN5vrZhLs+Jv45b76HwNVbBmKoGc2
la2QMzfAgZT4iyb2S+ZQ2xTIwyU1TiTmGtC4mj/9i/yUngRHxRYPNt349xyHN+obR3O5wrGoFhB6
AYAqKfc8yp7evk8W2qMtrWEJezWSfrD2Z76tvI7gAtDay/SgicKaxg+gBmaU6WyrblmmczvQwp+b
P3DpeDT7VOvePIO8DNcXcKDrYf7WUq6xSdzJc9+0MNTo3BN4l+bSMEhU13VgRDcx+XSiX6+DUfTR
8twAJhcSr8+zYJ1d4/wpChNK8emUJpBJ8OqiXfhQDgf/QYszVWA8ZD4RaMP6B1y9hn9LPjlyMJd2
BZ3BFto7JmZAoi4CUiBBOQ76FM9wrn5dR5+c8JjT+5+K2zIt/KZZfPbLZJKs0TPvHr+IU9OYwOA2
unIzosEFLebbifSUTVtzA7053AeHu0NhviSQqpcy2OhdcT+H0JzopmAN8EmwV1l6Bdd3c6z7biMB
tPzKxN27waOwHFYp1+ZJ52mFx8bQQeiGbqKLkBt/YXHNl3z4VZoL+rqOIvPB7LDXz+anYA16AQA1
/KW5Q+UbYGJgX8XBmyFvay2JppGm6PBj/GsHU6VeDWhPgp+/Np09NlMwbdgD6uJ+o2g9ZjdKEfyv
xLKPSChdScfUAWArGXXSCeFk0mkShE8snpCmtoHWHbgr4wbFrmm7RJG/ZzjSu1Nc0/SAAlGIvjy1
IlF5RwRVZ4QUWmyuXklB7sfFjV5zFLsOIB7jIGhdxSlVguPczDEESujpsxVpX/G94hUH5yy1vRR0
rWDdVx36uvXgn28KM1QLueVZg3Bp4E2JeT+iLNdCn6xDgZpiz5RwgEp5uG1sIq3+wwGDYNXZsYS7
t+gdVnuTHqh13j2W6oATwUdwwiMv4Gbvtcjixl68jDWcmUV6lcjZyBpdCE1gufaK3mYmO7C+Ycna
UX6BIg9mcn7a1ju47a+uI1coKeLGg2NU4QZASEKHsVi1igiBaDG6n6KdKRg/zUwC5mSCQziZMBKU
deDMlkK/lrV+xkCyxpStllRzAGkaUWT8wT9FJYzMMuT9diDVgYdAUwN36HChMVM7e3uNUrx+QEnR
aFF+0XFsD1zPJMYOsFGH4hqKaatsyW8PtfN/Z2P44FIRzo5RgdPQvG0hVkBfSHpx6Paboy/XIaVP
1cr3OO1egVAYfuoFOZfMus08rFLA0uuLzNFjLj8JFN2RU8T9/kXiGNr32Imnm1IylMiGJ7Zb3lOh
AtVrRuFmp3mS8I9wTJh5dq1Pu11zUVqrP3ZTbaJVtfmieXeiVnZXl998tIU4RX0TzNxTlmA4Z4mj
BFBzzq9UOLrpy63i0gsbuedOOcwZtKQJp790ulNaAJVNZyKWdZtXfU+c4hG2hymh+Kk7sv+S8v2k
W3NsyxYZPQQY+vu7Kfphh2MucFy0ycSbpPPZXYhxf4rK/K8R2EcasKdmU02x966Z/VBSkiygxyZZ
Nyont59XCscVUBQj1WOCzMsVDYe+jQdxfJT/d/3VZH5R2SWmtsaRC8FwAWqfesqFYhVxcyhdhoSL
o0qpdhfuYYjFn/wLSQdVpvcusDJPLUfGiVI0sGcbJtye1zYeT+hj+ihFSge95lobWQ0alcyvWVjs
tJ7GSKXAiuJdVXFZk+Qq9YaYwYM9A26QqUvKuWn/Q4jaNu5Td3hNXmyFsTLcbXEB6eO3tQmM+mOF
LkSb62mvzekWsUGZZxTJkzU2Hxkw34HLRbsMYE2bOjGdX1daErNdlfdqGYWAABCyqCciaWWwqJ23
38S+jdUO+5gsXzZaaheUr6ol1bO3mVAlBTRC/anAKEdbcD4143keMvunGC+oomBwf+/Or0JDIvxP
RTFWmDdeA0f061sg5Hog6NczOsFVM8HP1eR3IntctPuEntB9zbmR6kdhTRAbfAOKQzMsjsHPS+H1
XXgA0bUpIxVLlFjX8dB8HVghNYcn2t+ZAJbE0hegpZhVLCj1KlalmOqpCG7ZCozvABFzOEx4paJ5
k2cpVxZjtTu9WhLlDeiSXSufttz2KV14a+gDf8nH+21SDI2Q5zqO9rYmJDKqYYzQ+wI9EXOYdfJ+
ofUlz3iycKBB5cQn1RI4NUydrqyUq9sPyO8k2mNtZNoeOyUZEVM2iTDICtOLlB6AYzZqSJdmm30S
ROBVg5ZIo6KXoAHa5V8RcBlAv8eKRXuCODrO1UaxewNnayM7EbF/IjxCeru0JPkN4Kh116PVKtFV
iimutsvKizkL5HKQIcmM1z3n5/c0uScju2BVpVqhd/yVl6jXWLbrUT10S3lYFwzkW1y0ZkUPZbRt
q98sbSYSvStSMweZI7IY06086eIoF0Xjj7AZKF0RWHeAK85YaOGYBvSpF/gRZh3RyBBGaKyk5av7
oX1C//V0dqJeyrqLZmZSh6bm2RFl8cBqzgxe/zN8Kdwlc0LMcxT9h4r63l2zVFq4lh9auoWzbdne
MpsVncpT+HUV1yQYfuGzcxOZtzFnJq3oDtGuWFI+BN9oLRkaZ8ElurED2Ggw8kZPPDnJqgJYe2MP
TE9zO3NRNYHqMeDTTIFEHNiLAP981OMvgIX0Gx6wlgrGA/LQRaCHBnFcAVgpUj45xAlKcC8o2VKZ
eJ85uyD4g7xvL59Dtr++JXnYfGkggLOX7fxgJsWjT0Snja47Hxj4aqvMA1SNIplIhADMmIlQ2eqa
OO9f144towirFVyZufdS7yg1n2RmZ9BiGQxG7jV+1Mn/St35pEnG846AYdklnSRYfwyzY1xzbKPt
ViYnxsEf7zqp60r1JIeWKOxba1rRDpyWLqQXS4ZCGhtEbZ6gKHkNGxJkWTx3nv92QGPdXqsh1LwS
fjPTqSn6nL7TB3anz0INNHPThZo7xS6e1WjW6oacRPA0w9/hJwJS/tfiJm1o8iZ8/oRC1vMPTfTp
EHSC69Uv9rCBaIbeUs5RZXz1ZBwKvYaUe8LamWoIGfg6KvShTnvOBPQoA6sdWlJQZRkbe5TFA0Y5
Z8ZGIvo2nXzd6qixSEstHA/SvECucHEgfVgKU33UoBiTXThfYRVSiZ8AbGEAOWAmVDWhERTowXgR
PSpqWZIHmVhBcx3pefb4kTzL+VRYFxJtK0q3drMWCwucffhwPsftzWaRu6Pdmlx8gdzYwY1VscOn
RLMOyWTT6wStelU0CKxCQzGlJbgMiylQUrJYuvFTa25eaTFpQtGzdK4q3lns/9JEasydqjIoWaE+
CbiKnzr2cSqsRyzi4QX6WMF+CcrRiAIhSxw/e63MdbPz4+bln1pJqU/+Og4HQ9Ex5yMYLl7ObhOX
+gD9qSFf/zCLP2NB09ntBmgYLGFX3FL7VapwCMSaEhV2KeygU8X3l5WVxUoG0hULphAxZ3apyYC0
CmAMOGbBvRomLkBbttEfSt1t3oQ/eo1oKhUBWBPSmAcxzLUmzysf2i/+97vem6vrKSfBHz2M03JO
86obqiXeg77LtwXMAvsqPu9xsyS9II4fzU1h/8kGIVFitOW0BPa+YATNbsMRmSaPEgA0M/oQAfQF
RhPdxwkKfnDc4BG++L7qeHH245wMriMbCzwQXPjgqe1f181nxapTPTOcmq8g206svXAnq84gMn2Q
STvKVZd/NBDYe2Xo1O+gyIqgzr0wogiri56gmrcDCurAkQEfV3xkbQ5wkBX2RH/o9SjJPoT4O1Jk
+ghaOv8MoyXp00d/rclmsaLEKQXlhIrt+O07kndRrCr0kWACeyNJ5njfUu8/ZZq7XfwXaTsUp79H
YDu/7H0PISI3v6HoVmPF8QUcQ9P0X44t1bX62YwhrSRdZM0EoIahj90V5a7xmI4Yy8hmW569RTvf
5XRxUi1gCFf6vMKp7qNM/GBEcX6dLbAguEJYNGbTZnVuESuThm/o5VNMVEnYJRP0AC+mhNC+jCZX
ToxTJz8mBvh5RrhR0ZkVoF96X0P/+tpUL40bpe11pkSMWAODbGCOX16HVXeawPd319FTCBDEy6y7
p1NJv1O3k/NPRx46AvdiDgRgrw623oV1qCTAY5teS/IrpN/XSJez3YiTAWRpVDozulmPQf02Xn7s
ZWMsvmPB/iWAdsykPTht5ztBjKj5AoYV01paVvOLuyQMy+fYP2Z1ASrEuDsAhC28BFv7wtInd7gW
V3Do+al1saR/ku3vxkJLUODWYWagr0T5C/LuzzW8ihysygZMTKLPMmQ7olkNLqp5lHzY+0w7q67U
i44ROqLb6eSlBGApkqv7v60h+yAHTzeA9fvHIRvyce7VLZTAn/P7wgeAFukWJ5L2phTSM0SvKeJi
V8SPoFKM8q/EKOkSM3C5He6+v2btsRvVFpWaAmWJVV6fiNtbSjS0a4grk/wRXZ6xkIJRbitOgd+7
YQYrbDTHEhsqSKBgvNnUbvEr3bNp77bLQVVR7LfkOMAguahXAlLLM31oRl78aK2VIdr8dPAk8gE1
IGTXe6cWZQ21YsAMqEsLrgyblI0M9TqakGI8EotNjChEnUyG/tSFML5tvNrMrsTAHm5Hv7pm5ALi
/8+WpUobaVqkOZc/DeBj4ASSr57n/a/LHfTKrODoiZjBNhdACWkhD8BSNk0vMuVnVn5cK/R6Cspf
oOyKpIqGzedYrasU61w7+PjM14xmuH1LojH5FylXX64SEUhGx+F+iZL53Ts3Q5ogkGz28/oCH9Dp
uiPdJZXDp4OZCECkhKIuLADISfZdfQ/tIZe7i9h6NKVKZPhnka9sUlv3+htIoyLKPR6bqxnSmnxC
En8nt9JVSQacrOaMidzI9dvJmMuhFrzgva5BeHVsMHs0of6e0Rf9EX/qp6K+GS+uT3vRv223sBGs
IYaiB4W9fmzJ0gPlrQaXXONfWPKcQhLF78nPjkPvmZqYl8Q0ci6CxeOT5izqkRpTaw5CRpTq7SjN
EkWHR9229FReTN4Dl2dmMSkuWbjWjz1jLZoUwpvJKhSkmM2wasOHaHaMZ01JBN3p8jz48szu13Yi
jkUoBcvtqq5Vn9YrMcJ6gqHICo/rt8z4OFvNtxL8Pjn8UXMwrJrPMY3eclvJbH83RWgtlagL4SbL
stmJhyuBqe2AgNqinCotwKIM6ZdmuoPD20F2a5uYaw/EQMvfE8nSJFLOIN3jL4yc5P3RyyPsLrcf
RArqwDqax4wC102x4w/IAg56e7581GUBoagpN343swe7sY5+A+78vobeRxe2OiXunGgXrbJmiPmn
UbONuzPw3cZaPnCf6ecSSX4gtk8oHZAbv+sEa79vLxQQu6GGFrHV3Gif2noWYy9M4XkalxyXHlNy
GvDsWi+MR1tD+YmjNakyniHYRqyzIAbJnHhwwj9IjWZNO4LSikc7orgJg/r+ksSivrxTJZ24v1cO
gz6KXa+OX66VWKQU0dZX+9IG2oBpXGwC036I8APRV7ujWplpVOxCd9gxf9N0/CphZJrrQKg1TeZl
CennhkyFHiZqlnG6SrykwEZk/PeDLuH6LrnCrIyaMsU4V6rjNbMifOo4mGrCeneZWTDUjBGV4O9v
8VbHR4usNvRl17c3WuqxI+fZEDzD+RBtR8BkNoDdFx4tg/pofSnK14LSXDxyOic4k+y2NPR1q4HQ
7ewr6ewMNMS2tWfSFZevUf8I1CCUt6Ra2tmgATnB9wLLKDn5qsGNTb+DpAftLOtwvHRXDiinbYsA
l0w/4pVfxaA+9xcvH+4INAfulaN3yyvEutj6WlWyAN+DYc4SBoISPhW7QK24tbG1HetNoJVLrNRU
mabKayUiBehGCvFr/zk5AtIYMuYO01PtYRcPj44hiU2sSY++NxpgEDvdAT6/OcLjaTNes8YHz+M/
F8vRNeb8vNXK8eQ6zfMikrtGqwxM7+d/fNLsK572QrwvjsBwNY9b56POR1Mx5Xp8pg+mwhV+1+EH
hKh24JAk5xI7TMq+MyCQvOCALpAc9a7I6zmKJ2VCrRvl2GqTX5/+QR6lxoQBPvU8L4IpaEu1ws3O
2MVHzuly4SmJCuSz53jqIrdu1H66nqsFNAAQVgmKHGuXQKuDu1DdzXY2b58T6pRQmgnC9mCh7mso
+rHSKB6HRUy9taoeuI2ccStZ/a/bmV8AkF9VDXHQaGN8EWsrA+wjVktG7oZNc8cWxJcaqkVtziqM
nWGbhf82NrUicEUhncxRVzL51CZhFwzPiaG2kBiz72JHZFMpS7N5g4VX5jJ2QYqisPdoYeRAgwT8
1hPQJeq4HVOA1BFXr1dz/tJdBVBxpyltqbiu8omgW69hmoscwpQSOCtBBc03sn9m/wRkuNbYQIYq
PleGJQ2LtVCZtUIHdRV1qvBYe7PKE+7Nu9rEUxZNFyhxRhdkXP0h3ORLE/Mnz9cNhANsIZA9arRx
IHIn8USna2D3Je5FgcvHVxmWI50IIMo8FRqm2Y0mWzQwwwNG+3bhzWmt66oUDA/8JWmLaZCfSFvP
TO+HFM9hdPSBYpHMqtn1SUSQtGHDnBzkzRDVoxK2TmbFXDwbPBmXaFQF/K3GDYmUlWcnqUlmzdEv
AOlR6xiLKDUYqVzasuVMSTLbmHFqbTQ4orTSPpIHMw4X7hDPVFz17Qez/J3r/vHWHiNMSa9m5X1b
c6zSp/Rjy8Bfcy/sxVNC2zvig9s7JOD8N+1smFmUjX3qPGd+YRLSEZUMlNvq9TgMi2QkivHmawX+
4WjqxNE8sp58MFzFhdqQSB8RWvcZoDNtkVwlteDs23ZnkIGfDv4Us/57p4LWUFHgt0Y2JJX2p/U5
3JkejQ3qsMwnqD/R2qfb6bDxhTKoJiG0Wt5m8G+TH2kZJUdwwTXDpQhG3fnNabi5lmP31FgESCBz
BAyw6iLPREjqw+YsJlZJ3WRgtWlA44pqfC+GSZkhjFrH1xHyf3A23NAF219IIIFj/KEII9KAWwyp
mbmXNK6JG7n1lubUmID6P00ezZo63hgIwgcaC4In609x7QVRE7Hr3zPWiaN4fH2COBxbv2QarZ82
ILAaI4nTGuIXsY8Pi0wTF7KFfR4lcDnqDy6IrhAtggOLkiHwkmN0nDUr48R2jXsjTVjaCiMhzCzv
18snrKYZHF7Ma9pTWJz1fyMGM8cEgwzBltNk4+TV7NtYvfetLaOV45QtX88LGz6WtxgN+v3uHpRH
ySMA8rSZ26lKNns27HPPkN+fBfmSf0C0XbMG3aljqd3odKGFNTRAkqdip4vWElmZ2AgGii34jymu
NSL40WvqfOKz0aDlzKywP7Ki65LqE+GVF53Krz1PQf2gQDdX7XCpVyxnouFIWh5dncn1jlLfGC0g
HFF94Nc3ZgG41pdrV3tA2u1ko3IEbcsI3iMevfMxClktw5arGlqZIx8A8uJQYmMQntYflgC20dWo
hsCe/r6GTGEys62dJZIoaMzHzQQ4+WLbUuUTqf7j0p5WI/IE0/nbuTE48WnDKIMCSOGg/e0F8w2P
Fp8IEYtNicqWWb/kenRLesFFGneYDMyMAABW4HUbf7G+gQ6qIW+vmMnNCMeLbrjdNlsseC+f5/r7
PH6UjAOgu/4bk6naHJiE4X8XM4O3xD08aKQLdgPbeNDMwNfKEpCB2AUWf960ax3qoICEUkYEPIHx
xUXy2rZkG0hzQW7UeA74abiEizQwbtrBjc9WGoROHrQRJs4lF2FIuGrFpBvwM2POma+IpwO4DPA9
mlDNdxdCIRLJOVIGAuTcL5BGmQkvwMFtFnS4gGNu9r2yNelI1M0ff9Ev9QHndvxuIpAjIlclwtXh
3utuQ9CgoPqXVEqesW33wk8XzLLanIYoYgBsR+oVFY1vG9tSIKnW3O+wcF95e5JBSXc/DIFIlGha
wAABhVROYYMnzJi42WitCZeUMJ/XLbhGzTQEKW5kQCNkAZfSZi5Vf0opEBAWLPMif0gNtBoSUkbq
p94qH3S/uEqAYZEe97Im3BMnfyU/3ddkU0VKkTvsoXrzrzulfAsgU/jHJ/ZHxXUY8KvfXwvp5XdW
aibw4Xe8KW0BRdcdZwSFeuMlGq+lIoeMpLZ3iICvzfq24mwdfNH1hiBsjlgp0Xr6jCG4W162HoQX
tnK1zHarhb6UhZ00qzdqrDOcjrNjlbKbM/cbBGFYmYCN71me5C97W0vyXjBDgkDVZbhcfncNNYw6
VGoOiyC3LYIWY0gJbvjZ+VvgzMbXyaiy3pMrNZadHvQF9IrF+a7qtMHv3GrzsH71Ud5fTjW/QUh0
43Uaft9AePp/+pPlzZzb0QGS4sQBEz1qbpQuqVLic2BOjUG73soMY3UCTM0bBr7MRevV2ON+GoRP
yFxbcLaXxxmdJMjB1rRDY4ao4ypbPlGQM38HhQzDEhsK7HM1WKYYIsU6K86/2RF4dA7nGAw7TdD6
dJ2pqtxozgihsjbKEX5A9Tdt5Y8PhJX45GfO9GCXUvIP3Yap5GCvZhDbARfOqR1faKLr5HXbJ2u/
CuPII9toG8+Cs9DaBqMV3PLno3ALvHPAq3TutNXcvy4O5NDJni3IeWv8S9ZliAJJ2IO+OvpScs3E
qhOyz0He7M4bd6TdRg5NCpWfrBoHnaamQ7uEQ3kip8QoVFbMTMrLMLO3owQLQN4KtylkLEMqxnHw
JemV0PJ76KsZ/bYQTQTVqb4VE/odSvsZ5xreb/Jvw8LjvMC4XL5IkYmI5C53fMp4h1POnulB0Gyi
fm/R3BqA+K7hNztgqxyuw4B+INyC5IdzOZ4o4iBAQJh5YKU6iNcC5WK5JpQiRkcNtIxzSZOmRK2C
O6y90K0T5rKLnHTlcZbPAd3kmJ715s0+5bRQJlyCkZ5CED6dQeUAU2kK15cca5oi5t2JBTRJmosQ
GMH6OvXgW1gjaPXsyXf3WIDDRT+TCy1zceqtzg2rq6HzRHap+GLD2cC2Y2S7ZHckzWShu5seHu48
CNzuyibZd845wLQcGH7PVPLnKQqmhXQQImfXrE7GndDe7T9aUlFrANMg3YOeRspqTiJDRiBGQOpq
GI2grBHBiouUDaVEvnFpKm4QrVnOVDk61VOC+SbgRpvtmqfOVtalVrfW58Q5T3SnblR7HP7o+yMl
WN1nTF+17VGhgE9MtsceVjUALR24LbMNAnXoqLzC36fFoIS4QLeD/JuEHX/MkNgqFITBzTHBOxIr
MwXX+oLiNsafGH5D0TiZeJahODyEQMj1+oRXS+5BWBKwSXdsj4ax5l5RSEZGdhO4D5sz0/Ni46/O
jjrAXH1cfGwTHOmc7Rjc4RQjebYr7xC+YJasZG6YQqHZZaxlXl1WEs4Jt6L8Pfw9oGJPpo+wT4Ij
enrfRf9wY4S1iH0PX9gWtV+WuGsVwTwMMLnv3GGRdmlPH9plf9vHzhLxg0pwDIZMtLMUGeLjJ7dD
EXXdtf2QUzZ2mBBN1+kKKDBvc0VDL4UtxaBP+T0gHxb8sZJ4JlhG6EToQdmDMmHQjn4dfzO0+Efp
JykU8hI0ACEdpaqVZofH+Dr33IJa7jOo1eYDJHOzbKH9jZpr31we+tJcXFdO9UgLr6lJlnxqnu9f
6LtTDBwyGYZLkgSyG3RydP1j4CKkQU4CpJrkOomsfJZzKqUnzhJAx06j2V1EfZhErtusbELbVIQ7
OpDWH0hYd4dSENjIqV1CWHLuhFlcZSh3GJptY11G+WefRPJZABL6XsulaBL4BH1zVpx9v6hFrc81
2RJ7KcqMZSW8s0g7SFA00ZgRd5gj9h9KiTdXQwYoWKZbqIpg4vMiO9WuLb64mf33VmNStP0UugxR
PluQzABPVTCEPASElA/KjKKFgDM3kGTLTczvO5SSh/y5ErBi5vyQD37OxEAx8AOMWIHFG9lif1ST
drUnGIXt9RCutOmcmtFf7/8CwxmUX6A9HKq2G+IUvqp7SdS98SArP3krbFgtDgOAVzoPz4c8uswy
ALuybrm02c62zmpY7Aycc4+97ZyZ0x79HBMlJ1cAbQFPwkCJ55EirL/ynXhA0jcyddkvSOEwxROS
EmX4trleLDnDxXqLV+IelQEiX7PMUhbrFw+7W99vk8bQn4LG83Eg6KqTx9S7I1Kv7UrX1uF8WxGv
kYz8fNMZewsG+BA+IzLc4PdsK8BXTQps7tTisjbGBCiSpU6tc3P95FQ2eSOJpUlMUF9yp8Opc9wF
vE2sM01EEGFGArTc+V3yNhnw3BgUR32EPlZbrtbbUtuiS79CNgIxUH8n06JFRRQxegq2MLH2R28N
FQlWQMbxXVjsMaXGOoQupzmhBhexRlXB2ehqLtg60fGK0YQpSNwFl6N04GqGW6g95c3fTB8jV8Wu
eq9ZqiOlUXdWVhAUabHuNg9T+YumLNXzXb4MT+FpW15mtS3pHBwIZtFF/4Wlr5Fh2aWF5BF01ar4
1x/rDTDcKH4OeAkAEgdfZdlH0inENFUAYgz29uvh0j2aoaWQWeUOls+8XUyZZax+GbRgHn0eqdT7
nebO75Q89YKfTHcpqf8qPAhVAwieTN1m0UMcCcB8ZWQl4K4PxBbTe+GEis7fHUX9SKqTrI/AADfY
C66jxF1+pOEVu8YRsbjcC+CaF+ZwrSTPZ7uHg52EqOg7pGyJ9wfg2y7Q0bLR2LLfNd3uzccFovpA
3IY0QK0fmzlkm3oTmtwpv59kKY1YFlv0n5ZyAbTXXYjphH+Sdm8BRCfXQBEiJUisPCZIakhj/5eJ
/6vx7OBiQUGgWr9UKW0Kd2dibamuUtMWZaQA9F4p5cgFoDBzDn9s86xDls7qtYcw5q8GhahDJU2E
AH4adMFevQ3SXABrEt3xmxVQJaRYtn1YDFqfo8WUADl2QwD9vTUuG/rGxXejn1YGWSuq/b2nwFzS
d4Y80tzU4cLfsDc/aaYPfPhEdpH3ifQdxVvTXQKxI/AbIJ6YcnSi/1Ba9BxoWA5nbMUZUoNEu8+9
dk5kL4/jMWDmQDfHVdKTaR1Pq38/+Iwu36hKx3Zygj5m9CY/0ATeZGsRKgAAnbyyr8Q6RXoCO6N7
XST7KsjvwCN917uo58CL0k/IuCW8xQ3Q61Vh8+dgo4LbzhgsAER7pFMD51sg1K7hDAOHpZiRZzAp
xxrqw+JtAqYfErBPuMdUlOMPYjlbs3JpjsfhCMcNLNv45G27IaxAk0ZbFjEQrpCZebrB1RtUgoGv
hp5MFfIKZICZ2vQGoFr1Z7s4wEmmS8Gef9lDN4Muh4UGimcsWlIBjCsRj3uczl4f3DbS2rf3fFAA
FljP9z3vLR9/xjLY4prrCBmhUJ/q+sHBr7d6cb5DaRQ1sYmuDpOfH8LpnrqT2UWC8CgT2MSKNWNB
bUTQ5m4UaB+EKCsISFgB6yyV250J79zbWGnz6STPChm//J2xyoHJlIypqpXoLP2gVsI3eRq4d89+
uN9ZSypPSnDm1RwCc5g2ycx1K/ZUobtAI3c86PDBjhFSO3VFqMUFICQRY3Cb+YuPZQ3VXE7VOGFY
bm5+g/Gmcxr0xILAv5sRbuORUxfINCeXinsKVR0+UEdHjjIpj08SV3/NKZBlcySxX4OptsoysmqL
x1BN8x25nJEadlMh1Q/YoOITYWB2yW5OVTuIXX+WnsIbe/OzeFehCUhvVSxet7gnch/d32GVmG9z
bd5bIZ2zr//cXmpNca7tAGb4UiPWwRyPhiV2uxfVpxBa93GiSfU3nzWHl7XtFy9eoZMUP6cviAiv
Ud2muhKLpwB6cqiiDWJbUPWZ5TT0DLaSX6P7m+oloGRcsgNXgyQHYNgKL5jfn8kGdfDwRWoYdwWq
EtmN0dSuwTgUNEiptju12bgbuCfiK3C/5/yZoOTbi58cS5LmUeuUrFxgCMdr9yA+SPmmbc6AVP67
1KDuLp9j4PK1Th8QLT5AGS1F4r875GSzcypH1YPmakzx2CTrlDwpKpwmi+KmFIZhnGzOqZP3Jp7a
Yg2Utcp9FrTwY2eHQD4lOqj/oII7z1NpVScoS5b+aGMKyk8Dej7qIr513SxwuRfNhf09SbktQpmc
w/QSJpxKyR7QcAxq/0vLiDRi686HqOM2nlN2UWgizw1u6e/pZ4wUdfFcWwrxkcaltIMh3AQ5giaO
j2zL1D8qjLKkvpLyH9qNexOXpnJYNcEcIvVr0O8UOBwsMSP0vYytkinT3nVjz1NizJhXJDGQvTe9
baLz4BMVLL3EbkBD88JcIbxJqmNXfnK3iNX3M4MNPZoyOlRYJb8jU7rgT01W2I1UXSXp4+D3rH5J
826TgmCFWmQV6mBTvYkpdiCqiR2c6nToZ5PKL9yg2cL99dWHOHNbT/c4nCwZz6auM1Z4Ube7xBLj
TMHOjyGZnX0i6XDRUXHA5Yf1qTiwr+rudkwEAa3Fj35GYfHtB6uz3DVvAqwEbIp+kXqs43XCktFD
6dCAjjYFc5ruiFkEt9lNRWM4gn5qglAIhbWNnCs2BejPRu7iWMXjsr8fPXkkPzjIWR4T0UFNfLXX
fUNEgQIgUfEu9sNzsaS/YS+BDbzfY5YVt/pbI1dFw+DEaZjKQLBa7Gh+vJRYhPjEvkK9+v8goBSC
nJkHxdunh3GouzSfZS0tuV9C9VK+MFtMbW8zD2tk/DMaT6Tem698iZuyhbVBrYqME0gGzU53H1EF
zvWvjdaiGaNFww4bT7X7cqME2M6i5hPM8W+l+SE51w4UJmXeHxtGX/k8Y+U/o0RrF6Wzlgg5wVQ2
Cd3H8VeaQbRKha1fCALTykyPA+D56IL9YbKddg4Z4MDYyIxLW5eIaJjPay0e4UPn7hpjpy10hUWJ
dmol3j4+QdxbYNbhSFSXvagrSVmydraRhCCGp3KJ+rU04jzVolLYsi2hqGZ54/ctun897Y4vuWcT
XpW+S7dsY/weqsP4bFFHdulyf+58HvoFbRRZqUwc/Juo7sm5mgQLO+SfeXsqcgqiVDfkuIRhae0d
0vdJBKRP6Jfb16FWFMvUSs/xZUhcxOGXwdcDy1mQEyuls9fP/dly5k20l6XlcmfNguJWpjD2NE0h
trqvCy4lOzAm6JMWbUn1n8RpAGuAdEUYJfzkoChBWl17ymyqW5vEj8GaSJy2MFblc/bJxSxsX+WF
QTpk2asB6bcHTgds9yKy8Fu00vdebO3atbbupR3fx3Loag/o/tLnwiTpn1w/ZQkv2sd3vbCVvZoZ
JNogB30+YGVjlJL/IyzOk63Jm68nkXBbBWJ3dTiP4nJi4aeVUQcTP85czK8bRD+WqzFdXt+2SR+D
j5wv9L9V0JhVdsp5Sn3IHYAYVcNF8ndOMO35mEim3mJBmH6SUpBBAGSUr/DO1dVIhOb488LRZpbY
yT3pwHLGGeuulmVlE/7OttvCgWaA1Eis2+O5arKogyDBFcVPOo3IFVgSbJz2D66jHDMK6ndMOPPa
mTGxGMTgB9sQRUa/5OPIJ5Fd25tHbZ2ose3Ug6/wuToRlHVz1+JBfPppJHG0Osv6uM4BrwOf7T+6
bBO8+V/+7NlxNcqtUagnc4f2HLzgWvGlYH/+9LH/u2fETm/SnSUwYhAaCXXI0Q75w+fGQP+SlznC
j8bjbDrQ0ki0rl7qxoGRq50gv5tYBpKSWCZRahjrXGOkeH6d44lV5VqwREMdUT9p6gXCQt7Xpmik
3h3nvhyGjKe2R0me6hxZhxxWUsrqkVUUZUI3WRQ6xO/zokJ8R0aMohUOv+sS5+mBxquWKUzTRylX
KlgartpXtbAnJXFkWWXAF4BpSiffti3UEjXv7Lx2DDw2wE6hZMz4zWJDHGGuJoWIWy/QRuPv6lJ/
mAVNEBgo80g4t+C7sAh3mkOUze6+kWUEDA1jzKwD0XZJqBCdjGRBEobldmEW72im65Y3mpD2vHe4
rxOl/9nrXguXrb9pMZVwDKc9Wwhsw3omR1K4Gys1br3XCqPy4teeqiMXOZZqK0+1+8fjgGZIhlTs
9SNsuBjneD6dvOdVBwwt9biGe9xW5LCnHE+DlG+XsHJtqR0tHNhrHw5RBzmMRrdKmyNItnyjdwTb
hxLOeZTozzbzusXbSCUDWIjO7EPAimji3JnEsQaTZ2hzste2ObTVyVbG0h0tiJIJHPmeanL9oary
d+QOZRhyD3G38nV0N0JZZ9p/KkKKgUynufyEhvX4n5No1PYCkM9lsmpPH6uT85lIARGP+IrkKymP
PdEPaU+t80IUiGtI0+1k5Cf9p/arZIYnncCQmkAO8UR17IyKV1gGXtPYotiapcs7L5ln21a2ZUw/
OLUDxnI/4GI11kpnmeHG/5ou2oIrZqbUQQfEnFnwPE+R5t2AvqeysxNN29eZsFo7IoDBVMazaOqz
plwUy/uS1YSSIWVFXWInMMq8GzPLYXfODEHsGqWLCNnLBvre5FBQzDVwZkjFlIaq8c5Ak2DJJ/UZ
/txFTgBdvPredbj9Ti0rMVuCgnBjJhq3arVJMqp+PvLu3JRLct67Ujc70pFfMkxYlmlOTcXzmP8f
TC3mjD+dip6VJqCgyfzov+2DkYhejW4R2GfUaij0geKqRw078bGq2/pk/pCAPxAICgW+ZVD643Te
okGVXHNG0vw+uqBeJPwrEVvLRMigJC7FXdcwcfeyA7bS4QMSiiZbJxImK5SP4JqvJHPde04sT6or
jHKll5dgBJceQ5WSA7YJRIyvjjS0MbPbv8V7G0Oaxrdh6pF8Ly7qKTmqkt2JatbJ4oZRWLRtOqvb
O/NyuYKvZK6mnGvXq14wejJ5gfGotXn1zCQNJsvI26LpU1rwdTA8GdhIVKu7aY6foq8canqHWXWJ
5TbFjq3ryzGgx/qnDd3SYhoqcijBBI4OhUyDjSqDKWqvTQMqdmPZyqxxyh0WVOj9vfxlO49UXOqb
ZnogGi49svn2miKo+gBUi3WsiaDK8dRj79Wch23amax2F9LK7bHNxVGGDZUT1aKXBn49pcaFQBWV
/IJwzMgkI/9zUqDdfgePP2P1z+O0c50DrC8vZWhvVi9tKs7nIQNYwLr1s1g4s4coLsMcaR5vbd3e
mYwgZ18uPQdetJzFWFDB2dNw8BNrn/Ka3KqLVsCvrnTpMcHJK7yjkzQe5gMzOlSdNeDXKnKsADw2
QQ488hsGWoHGABdfO+aQq3WOudAitBDr958411nU8/xgCTKyWb8RXkNENcr+ZbgxBAnxPHyEKjme
S3y2FJULUMi0vxwSof+2mtHmCe8pBdZeFucQBcg3lmiN35WKkjslgz0y+0UPpAH3DgVQyuf3TkNK
aOVHRz7Arx39Gur9Zik6WZ3KDJtdMGjV5Zr8JNeFRQvXdLxzthoee4zFXO3gJ9SH2GMxSBBfVRP/
C0qp/iYbEY6sGIYx6BVUXZB5g/J20AqqPstR4/7vFaGwpc/voOxeXTESue9aYtTJ787GIhVeF/PQ
yt2UQEGoKjcZtqIhXSGOsyf7A4dibOI3PDWfEwQrgy2n+HNFe7Usnycwye0CI3ymg0JEG0w4iZBh
ul80pSiJTlQUBKqnGHeO2JEIuDAVnimc9xLH6QUSo3Tg/IPANCGnIUj875S0RVMPAkRC9rCL/f7K
ihxj8WI8GY2Hjy4juaFrGdCT+N3m6E1Rc5F0I+oGPdvs55d0VtJBsTK0VRxcz5iKvh48zrb3HlWR
/tvCMyZRM+RLm04xhMbSJAIqlRCTD8DD+zZqREe4m4r7xXMDYNj2racqc/ffMV8H7vdluHgf4PCZ
rttWqKG2pazTOqDuTvMKiw9QOjxzu9t/WZPAmkOChewNTSNyPCA1arcBJQo8dFAX9/gTPu4rwNpg
ZBi6xXpVegqJ4nsIlq4wzuDiRT9vgoSiXBGRxnknfcFk9J+mGzoumhP49Y9F+YF3uTz1UdfPGEIe
R/Q118A150hK+DrqEtutjQVKnOxvgFbNT9Xp52Zeof8d3yIp73JuqQUm/3mPb6UN+HiY9HdbT+Q/
mgQviks12Cw5PCQVqM0su/9n5rNt7ec8M+mRVcE7NmbFmkzy0D0dSkMQripip61WRpwNyFZVuhoE
SZ1n8HGt2t4/cVROZ+clTshm4Di8UMBG28crh/nrGEbSkPnNINH1NS2L/TeuCbk2VDIYw1Og+tYY
nWPD13odAcrccknXqaRzNTKC4TU5DWTOfWmbQkgj0efHR6qAhC5S+l6iakhZ4YWgv9CpHms3SNcU
rWRyrzoEnUSgCOvciehMYj9U5UGm0St0vbpjID5p+g5IIkB3tQAnoI6z7lvDmS+QqvP/uYB3iIw6
9xEcxp7rWpyzHzeRM/KX2Ep4rSZpSqDFkbn32j49u7eW0fFMf+2hOH7kxqRupFxMu06nFdw8UgC9
jdYW/Jx93DQumH13q8K9Z4pCX8B5r3Doq6AjXvRSceRcZ/dpgUhyiQqDuSAdQVLLGryFG/cFgrvJ
aTGvbgEQKIN86uecakerh+RvYD45iBtBYvnFyR6xHiBv9S7GJd3vjla46g+pf2hlswajwWWKoOvD
ud3c/3HGiV2fKP76/Aa37N3cBY3N6S9xwHO4OES9t3yHRNaqC9HnEZ85YSfPnbolL4JfX6udFOJ4
SOydYM1oq5ej1+tKChW0F9HfIsAJLF9wR0RZwBMnvxV0mjfGgL3T0Jb3lN0lzKCUse96dVaOIcse
lFseo5Uv65CCV7uorTBM9Jd6MrhOGqaUN7q7B5mu4tmpeIxqWDDF8ImW2+LUFy8sHTBgEtEjbz5o
mxV4Z8njrZdgymQmPz+32leDNu+VmWV5WnL1238nlG82qAsW2wVGSmsrVZFcCssSDdlKiZfzy3Rx
PWqtjXK8Axat6awMllemAMU5o0rk6gKz9DtXTj+f9TQGtcxQv9qgXGEkGNblTcvPysJDTjfMVZPB
qU/qw3isO/xjbP9jTDFDnkQJtJ/B1qaM60fYOweFc5z14YnjuRS9hwmv6sedVrBUnJxZKP6s9SEO
xkDDNBGdjgLB8XTEtFHebMciDKb2qGBaKWmGVikEgrVWFqL+02/nfUUJVqL8oJYuGE70dB1OXBNa
8YMIb7XrNKJaGHhewSV/90jC9yWoDHWKE97ZkuI1gwRskOddSRu5E1tD9je4bz4JuyfltCqDCJ2v
qRBhI4FPHV+WU1N7EktgxwtEnUkXwqNLE5fw1MzaTolRBwVTVsCCrDc30K9d8lbLCWrO3F8c+e61
wwxLAt0yiwhJko3F6DlBkONdQhrXNFZNOc2WeTkVMUggyLH+opTAQdQXceHoI2m2Rnsrn5z5soI/
8oUHjKnk58+Oxji4moYSIZQwHXA0m5D3MV7BiTIDmiD1XcyeHJ2D5ehv82yn8Ovomm/I7pu+7lST
F5XkgHzi5AiLx+wnc5gV6yXJDrDgSCPQ0vkMQRYNB5eMOYpKQgc4FYCaqI0jHpDaBkNR+Q6/P+Fw
hR2UuUBneQufJHnzwDwBpx+1l0pnFQHWqETpHhLtMnhr6cyc6bxGgYuuSn395v8qrCjTQbjgKmjf
NJMvpodNHrwJgeo/MdDJCNJoDSXaVaAi62ELTOUypur6p1PKUtVDvE5rYkDFbK1XrtgisP+eTqVT
EuiluQp11FMcFBKRJzlKN4luojURPRVFAX29lDuMj21LrlK77uGHF/d74ROxONn0OtT0Wx0vkudz
B5jRhwrZqqhkpHZomzua+jmHUM3vPKB05mtqDspOV1527MDANTR4wYpH7jMbCNrVT6uA9OJ8nu81
O7irCQE1C82rJ0J2XoEm8e+Q4fwexYeP0m6E+ISVH8I+lrOg5FTOkMWtK++Ime9P0Zp+r/orU3od
eMAGvJwPLr+tTlKwqjclbiaFWU79hybND7rp21jsLvemBohFrgJQTISCutNFYX6ToKMO3uVKXO+C
s4n/FXXesiz3KZVfWUBNTJVax3JfuDC9RobJvBvnMJtj05lU4KEnfSCjRSrxwfAqArTSEUDUWJwC
oIWcOoq5MbsiOCvdNxu2UO8PJ7+5kHcJvaDgSK3j3wEhqCkFsSPWf2vvyf3Ds6Rjaqef3sFByz8l
lf9o9XPSUIPuNAGg2cKAE2LaSLjXCLYCNnh9AWd2wDPC0mgUzhHTQX63iMRUJpm/TFEdyO4sF4v+
x2Gis8BsPJUCLJ8poANSnQWL3ph3yTuGwobpdDp3yGw/B9uUPZ98XjIEefvbHokVksydzcSo8CeX
f6BoXbpvFfSE68WkdSmQTdnYmXPOkIUUo3Nf39xV8EaaNGBYwygcFdC/CPnr0pXVvhMG9/qvc8/+
HnemBGufawPhTNnlvcNjknJwkRvvsJZKTIz3vcSh8VK+ULqAjEuuvWnEkJ7Zs9LR6Oz5VHBrgqvg
JlxNTDyPdVHQRcw3zlGS1eG5gEwCxenq3K/ICIjEj4tBxGGbz+GWgFU1u7ADRYL5LIHUxanxXN3q
jwwED2GJ2EFfpVn5+GXY8iIQxdun1NbGg3JEQoFYmireK5iZnWZiWUAcAsxYqoFHFSRGGMj/cZOh
JhH4Bccgnn0jYTzs833rs4TQ+lyrCmA6mJObyi2phnXphMf3R/tRVjuZIyjVSqh86UsYGlb888o7
Lh12/jrVSKEXQ49kpselpqwidNSTxJL+qjg8BrErGZM4WIZTwluZqzH0jzPJxWn4iyhWuzirrVhv
PqB0KQ+WXCGFkhESo27FpoA1E9B/ZrnN8RkVBrfA8alvm7yOxtwyP2Ni1u/lrq6AtNW2sSG5IWaz
eI+aBlb+MC9BggtRtILfT3gEK345TNtgEv01BINefKAtSAMZv++NSLnAi40sg+14yVvapC+WewcB
LrpBH6/tLu3chA5NNDC3j/ytXdrwtaL/spxJTX2+b78AxhwGwqmvML5R8bbTmUAgDpB+bBc91Tp2
G6RgMP4j6TiT2q5l5k462Z9oKCLRdBzUxd6mYXskHrbqe1KxTz/vDWYAV8sVW84KJMejrRlHlcTv
20Eqe4DCVGDATF86lrSaZu2pMH6uhonqqhWBjQLDssjnI7SoXRzC4j6W3XCis//9Mf23CXNphY4n
uyz2J7PKpxYCbwnRWV8yx0wGtYw3J5ZUDCYURptpNoZBK3uKErmEKh6iw5x9E+iFK0vmk7n5oXGb
465+EjH9QPWVyZCUr8XOUq5wSNMUNgXIxUAbred4i2auNJiE3dyiPpjG1qmuHjBTRD4VDkfu3BLn
r2g6JaE20Owp7ygT1x1rl3WlYPTVSjqN1BtWTyYTJib5H7s8ZALW01CGl6j1CjgO/o5/eID+Qlhy
klEyPR+1njhV/3eNqBdS/n7yCwizX10XrzNAk+0wyOMvpmXaUcOpCNPfj3HLdDk8goPtFEFyTWPy
i4mLYRWdrKKpW8jSCcBbXDSSZLCUN4quRJCGRAFSQjN3fzmKTguUnrDtE5USZ8AelF0o3nwyoC4X
W9yn4+dx6oagQLJZ+G8eXx+Wf1kauI2tvgf2ES/gWIwqLgQUVdtJxFgOFcKP6ZwkhzD6XJRjlV9u
MPmIvzsLOv6Yn9cbzIP/lT7oF+5XT/s8MN6kvvPjGQeaS815dIyN6anfApjR3zNd33fco/uQIxee
PAoG7Hqug7zCNrEOGchcxEm9Fg4HvDjGqXrK/sAM3g45X2GXLf83b/NLKy5F0XqdNkpkimEooZ+d
r43Z2ZLHJFLenlsmo9SH/FjEd4SsSODf+/KAjA+fv1WHDDGuJJS2b45H+Ofoqo0x4CH8kd9VFEYe
ZH0z434TfK4qejmjYetHTb8a3MfPVE+wI1GfZ44oEK1qHEyeqEY6wZr4Mp0/bdRCoT72BN2JWZOQ
8sQQAeGUh4uF10zqQldnK0B7EgjQ6elRkHcEcwuSsisgRclLQRG9v9vH4vbLWgDTM64ep3KhGy/3
L4kVXM7zN5PXEwYVVk3sHlnFswECWP78f6+jwjpjhsdp1IxfYdmKf+h1a/VG6ALTSNsXRjlZdjH2
/pYR+dq1b/KwiaOqPArZE85NK7oSZl1U0CFDuU/GDvCt7mXrUXODdXmTjG5nL0ZGq9m+Jm8fsA9/
pWAIrEnNIbWAjzWvlfaDeQAyFH60gBp3RwU7wJ4VapY3spkPvcreCoBH2nB6rx6dwi5VE4mdz7lt
JQcan9XZbZBwX+dFJHs2p0lDUeK+886Ybg58NVAFBIcSjXlzCg121FJ+s7F48NjX6ldgzT2MhBVJ
9lIqUJ1bMt8eOS4OkwTqbneNVtUsiPriNrqi2VhC027Q7DHr9OLB7YHLL/RvnJ9ewYUoVBFEYk8p
QvxUy7Hs16sgsEXN2jU7qhQBdVBPUk3dfN8ozgpzkL+97+bLerx2+Xf3ZUbGyvjDd6e9jspQE/LQ
7O0zM3rwqJWZNAG2jBNM9sxEEBoR9wept47n7fT4MueaybTi3K+fn6oSH7CHcRjAQ3zpROaug23W
PtzSDtGNWtYhYmgY4U2ZgRTgtiGMvB6/QqXipAYh574qjOdhqjY1Mivneppm6jxvtqRw3UNHIlAL
I2SRsbQ3HQtulWeBYYeVHnSWRUtAVf7qZGkYuIkDgWqwvIY35u72tzD8rkcLEL+i2j2uaH4aZ7sD
q7iiTcTlTuUfZ/mgEBMHlKOuqdwmnjdH591HbKkAadZt+Nw1Nvnq3aeKoVHy24QxecHSFnQqfdpv
9XAVD73DLIJtBByok2tUSLXL5CYx3SqsC/pY9Bj0D8fYgA8fmVZBJK9+p6aaDO1vh9x8DP47gbf/
LM+h98x/U8iEMdj4U2Tee2DhkbbUsjVM5OX8q876DfXpFNiWDBKFE+CmA57H4QY3P0LksHEpumhs
0EOL9fEJqVGm9D7FqkIStpW6L02mIkYOJN3aqTPKI7Z3wmV2NnLNPNDcWDhrid47yNLGPLZKCfbc
Xw2+sn6W8EUypg8LUo2eaSewQUWAZxlHn+hyvZRkj0Oqb4hDpnInlTuut1+CmCOgKcZlOCkxlOXn
nw4PQ6tecijprZU3Ojzu8kuEvszzlEFbnsnfz4qKQ1xBF5Ki+i8ikLyI2xyfoWWfR8FfL4Nw0XXB
L+G9jW2dyGMJ4EuTe5AzunTzXp4N4VMH5ut4bUx1jeaLLWQ2q617TaRPFgaYEB5JjognlxOvXXLc
kJv+G0CMXFHrnqEaIezwe1dD/WCT7FY/n3d7S9WjH5KGCRQpPPWDNgCHoUoSe5XxfDStwuJ8JWq7
JOrbviwoq+KEfBin9p6Ftgjc0+iuxIKdtcQ7xo7BCAH7M8way0ApE+DnZkdGA060ZAo2/nghN9CY
tzuwhGg12iYutGU87y1ATdUKAY3dXAY3DxVsRT8jy3s/zY1jnTNM1Z8c/5gUEW8mxNEJ5hZmK1YS
rXZ9wLD7RvnnAOb8oB3lJiIWmQQJ7IQY+Ea6meSTyAUpHaZT26Pz7Vbdpak2IzXPixIIfFUnY0fG
xvvjOkhK8dJPjyA5+mcOrM2ARzL5pHimFl3UJFl1jXWtZfgJsAZpTn4XgmNJWI9zYOY4C1VtWXc/
u1aVT0e8UelYPkexC8wpU9Bp/ZlnAShhqK5m+ttMegMk3IYbM20eBGpItYqbErQuzoz1VQCgw5JB
xzFfvLj9Ey6rB7gTZI/yLPV8fqGbsX6nRB9MfV0WDJgUFdMQqT/odPRk5jtKbTdDobx5St4c5TCx
AA1pxeaAkRsJ02rx2iyMRq2fKaKG5pmO7iIKWRkjh3s4b9pyLQ5vp1ChtYCT5/UNvt2MxjC7/eBQ
z1/hLINPkJZV6manE+qZjHUkcXbj0WWqm2cVS6r1I81ZUtlgQEY/oSF7m+ieTZim71G06fSTPHNo
Iu60QCqlisE8wg6PnFnpvQe6PWVOPhRfISmeXGWA2QrgkC8E9JJi1o5Rkx3P+bBpjP/+pizyTu65
F9F0RVrUtjLOGxEWik4pTsCPFFNp6wwq7jh7pBPLCqeD2EO3qwbX6ia9C3He/P2CjD1+8j8NsqVq
KKrycD6M+3HgZEXo8n8WPbWh62ZWam4Ra2PyhCtIOIUvzZCSbVUR90+KCsF9jsIlxe9hfGTAHPhr
ZhkSpMm6wjfVoE4Apa1ssLUhvw11060mJy7+pSNb+cvhDLNnG1TuWirn6MCevNuEq8OYTr3crXB2
mN0W7wizrqAcpW85/alaDA1bsyuy1KTg7D9oXn5w2bo84GBOMJ/A4lElQXIq9l+sqJE+EnsOLwqs
VqR9lxdrIOjOIx+1WyDABrP1u3WW+mcdsXkUqRRcFgZkeIwWTwfr7UJDf1TZP7k4j39V5gd8inea
VIr8iWtg6QnjApg7jM1l0we7swnOxj8r50lbq4xuXRrVj0ysf/8fHPu50XoBjvakVq1sES/nHiXB
EYVjk1zGXU8yDUa3gC2uVkEStVFiLdPca134zp8FbUb1vBbnNdZMfImPCR8omLr0UkMhxZm3Tw1+
RY/1PzC+Zr66ff/+JMVCLhq1yW7p9LaehapY05j2exyZTtve93NYmqCG1c9nuXX3aRKtdntYS1rU
XTE/s5/UmuK4G0yx+Z8o2ryYxFonTK/Wxnh/exijLlwmV6yf0wRegW6nSbAbmxDrkID1yzicj1dr
WS9yYcnCuKpusauyj265hisljQLEVCzF1JDUII+VJ+Oyf8O+/UE8fHeYzEgh0DXj5696Jt5DaZgs
cBbARDyVxHn3eenJdRg1DTKQFj4oPmWU1c1km5GBZJve5ZOPz5JxIc84nIK2D4uHiLNTV1C3k/E8
kmVDzHJ6xGaD4okrJI/E8wBVVXQyEzfGK7SS6w1r3HC3pu0LPtjUTHLZwUp6wuxkmTQds69rQBl4
W61g5+LTwO1AgPOeg7JIqrdCWANONbXvTj3ngitjupNHXIobK+KHonBUj7+qDtiW+pNANczTyyVp
K4AR7veK0nyVs506VB2AykPsREUBDihWegEYTNDwsyHIkTR7hduIRjtBqyrl+eCSnSXlEkcbvZfF
/FNC2ph4QL2IdmG29n4G9I3Xx192VirS/TNqZpKX6pG13EpNKlcf5lNCd3qGZ7V3f7pTAitWwy+O
HvN2of1s3Fg4cgyhsqAXoj+Pg0Rymy+uiZH8Cifd/eSwA7e9oS1j3TlyTukeDlfrhy9FAQli1EWE
jBN21I0VJtxTILNOIljBNleSzp6zv9CJz0R/qmG0LTP+W5m1dV/Lpnl25fhJnZrp8S/4fcswZmt4
3Xtj5kCchNfogXTJRquxBLxEg+tPyU8wCU6+ZRH0/Rxrc/B7LN3IJ1EeYZCMgibMQmQ+vbDCq3Gy
J9Noqdh1ZlSMAeDg19/gPExGjKg2PAkvtTIQetQBlGKerI5p8j7t1chnrqUGyDSGVNO6TXGTVTJh
plVX7T1noUqZv2/TVBzWedMOSY//x5OjMFZCNzIYuRlzpXswJafcejNz7XlLZXtCjtSVz6skLSI3
Ti7OE5WbcypNsFIrl4u2ZWBhqbcwCzOcZpo65NhJaB54bJmbXijmiTmbBuwU6QB/kPJ/Eithf3H4
nJQhCpDCZCkXhBwh8rM1XKfbRwIwiJVKcb/TZNLhjRt0qtuQclgELd+sG2pXvKHsZYOHlD+8fab1
FZ1UTwRTciv6JCt1xw7hCDD37Eg8iAjuiBDAg24qo4lZnIjONmJhCFFIf8eJUeW2dbhvGaenjbAl
8EYD0+vGJQsi/b22G9F4dflXjuXGCNULHsmszM++lYcju9Krx0mElESbJuly2N2Zy/JmOJM98ETY
aVFqNhQYV4ddgzdbD46F40KWpV7GVxkRk4ARsuJVaNQJfC2OJL3drNJTt/nQEy1LkhAuwmEDWBMn
Cfijlly93S6igwDSb7+4KT+dEqWU9KgruFrKnZM/XdjgiBNk3iRZBpb0376GGGD/eFILblQ6ifpp
bspZtkA9jLWTn3EKJ4wZIoLP5B2tsFFIpjIdFqUB3sPgy70BLoMwINHiVB0Yi5NMUpV9sUHADWev
MaHmJCvEDYr7ujtQhNwYDbB0QAbfA5pV4dIz4yDrVfTW4WTrMYmQ6ZmRu9VZwSk0A2hNn4tgzkVT
scfWVglocj/2wvF3f3gm23fnCxxk1nmNdGZlVE8lNs7FZOflPeHel1/IL8kYw0LtWcZbROFza66H
dCTaP13Jf6fm/Qx39uull4Gb3niOlL1oXlVtm08xqjU8WGIGhjiNKbFV9Fl36yC6rMOEK5sUkfJD
gPF8tbXPM0IpiJvsCdPrSTXps3EsR6YCOVgco5sZpmT9Wh63LYlrVf3xTVfN6OXMMdPH3FWepvAV
eIgBybDH7pt67sSvFdzXkmncysORZ031bSKs0dlplvgVdicVZPYEuh7AQXfQIwbyHRI1nlidT9zL
kbduMuvDnNg2HjcVGej0GcpHMLSESg605M1X7w96PXjxBcVnBLfqQAQAL5C5kNnN060k3bCALQUQ
x9gwCMlINc/ORbOfFSWAVHFzKP8aoeJsDKrzyspLI3k1+JwFCszE80CQJVUWXoNmkCmt1LdJKpeh
0teyY1I1mI9J0Ox1fz5JnYYgoFTQr+WpAt2lq/WqHphEgf8fNecd55QpxyVijAl3AG1Nre+6yXKf
mVJQrVMSkRXoTSHPb7YWhCafP3NQlV/v0aZOFQ1rjd8iEfONWQLgJLFx4X1J6a46cyknovoDpENs
gRv1qQJOqaKiw3FjvcW6p3Y5+niqZ0ngs5WXYZKqxqJq+BQUoW16MKSJfZrJMH6VetqZN/dwQKz6
4oUkkkRetXsftpGR45qQc2N09QuvCiqIcDObXskLZHFUdwNEV7Gwx8ismpH4NL/PAt42diyq3EfG
3r+RgLDBP2bCE0qiu2820NjmbjcDHqqDUs43ThjVi5M6/VbOWLpgfP065fHyiWcaOAb9AvWdRzU3
EhblGoGxu5Rm3atz2Q/cUoGT5boig0TvyEiEdH9FbOVdF9T8XrBvurg8YnePVmJR5ozpdeVrjNxP
kfaccmJcNSBMWefevJw68nG2NFOdHQ3Iiefj3VPqQBVFDiioS3SCsoO7XjO54cXninJhKyiXvRwG
6Zrp7EBpp26HO3e794BpMt4jIxhGduXR8PijwClSXvZUXJGeOR/BzAMseZVmVmHA+uS+70VMThje
MyydNwllhNN3Aedsop/E/EmEegapP24nW1pwij/H6dTWrfz/sXiB4TPJk81hA4wrKdQomsoI82uD
JLS5Yl+DHh4qxJsFWJARbofKBKAmZIjInBVJqMU9gfnUgQZYcEsYZ0cyVcuYImhiotbXBoTuavur
GTyRnnN47xMQmHgp/iGHjTPTnXsunJoVXhDAGNx5np/GAjzrKUeHzkD6gndMHaOjJLHWfJE2jQ+C
W8A9OEde5sfqbetNhzT3KTATQ3Q/+HYrmi1APQtFlg1E7wmAUWcO2man2KOdd2ZQRucFJMr8ElJf
RSeElCvFoM0v3OBbhiG3hrvQV8bHYM8qOkLKdeeVVFIY8ynSfN5WEdc/T46RU2oRixIBr1OSoUai
/yLjYoJeyjDRLjtK8w/lCtZMMoeINPjFCqxXZNRXsuJM8xcflMa8srzec/rFmSJzQpWTwgVRdje6
KrcHbkiFt1aZHL55V5UEnO3o/hKw1wu1kBK9Mm76jIDK3PrIAxZaWDbY0MkRypqKArHKuDXXlGKb
OucTvW6+LqBN0xJOOrpEflGtfR4IIHiuYh8aE/yMEvsBXkjJ9AMwAIU8+Uf3nR0mG262vO45dSJD
g3ucpgQcMj7zZ8CJ4XNQd4ICBquMobZb9oUKFAwfNn3L/YER2GPLOI01sXoIGH8tZ4wxy3zNSNu0
r630M3ZrYnh+9FN97rsGR2yjIlgc50HlSvlpX//P16xsS8ZAU8xVZJZod6iNFP8ZwTdeSSWB4CTh
n81XUb/sIayBGOSl0ELc2S6JKzHG5wXAaREJPgXQIzFZq9HFdA3g40XCVc6oI4T37nCusax03m7r
6XEaP5Avo1eDSwK9acyW6U+ig/ZkKfu4NIml2onp1CAL6IafI0ESSqLDEo+ygjnBzH5Y7A6Rqbcv
XT0d3Vvw5+9BvrNYRbdKBBB++As2wEjke0ZF5f7T6tfNYIhtf0PQ52aTTFOcJkBRvXesW8ZHC/0R
suHHLxag+WDFzbGz6MonPMbqaaPUxAbLfPOsfP6x8paNS2e+rzL5nxWKiRNeP5wGUVHCTXQCufVQ
bPXtq1gBjSJC9EcwVIFwl0VZP4g291UozTaWxhF87ZEu7vlFbXLV0qtIZU2H6fN9cVqENFNxWUZK
D29iAYhe5JrHp8tz29bybKM5MmuCswVlHyZVCPX9izLP3Ytn0Girg5tTBhwftxIeWztnJppY3wCh
Va+lY1UMNwOTeiGBQ65DlpxTUAJhe43LhevMCE/nTEgynyDfPUD7FdubxDGgS0n0XflnRAO4Garx
EJVuAEvj5Sjews++EV7N1MfkikZAAKMYGTE71lxax9zPfGZ8PYrRjtrRDewZzxd0ORhdFV1IA3kF
rkgqWHZN+WbNWe2EClDPaY2lovcsuqy6+bcch47zUtYqs0aaViLuApy+WCYb3IxdR7zjOsFoe38z
UUlJfmIsZ725osB2S+8CuZy/x4Y+QEk+uzhd8gpvjR7rVCgwFVEVR0ho0dGJbCux6rRwtqb3Vrgx
JRiCYkpSZ5L+81ak8whcifHJCr/ucqOxw6UsuhiNs7oAUJyOC27vgAZydgE4twsTOWW8/RtZ6XzU
RHrWhZpjyVBD2EupBVjn20zEsr04jlWKG7TEmO4czNknmTvvMYkrIBZJuecfPJU6YNWyKelXijI2
+x4ixW8ysVVnBuVvEpI3ObcuZCWFvAjalqijJqEqtag1YYfi2TSp4qDbnYe8J+qt4lZwsrPKh41i
m1kFGQOaxxSWffTcXkOLzhwAsmEo3iZ/fVlDBPiU8ZGRPvkT525cRcFUDte7xtdEW0rc88fakFKo
nk5uPOSzyymI7NSxSUo4FWzs/PtEPW1a2kGZhO9PKIPOPVRw9e3DIJXYE8Xy3LzdiVXtRbzDLB9q
TsJKKInJH1wHneHMDluo/8PzRDxi2fgKq8IJSYz8TJaWkC6Fjgo4PAkogRK3TKVnafywRiZACFlC
RRTlFl/HGLxF9JgOLSjbXdWwAoAO4PGiU64plVwD+gnduN+fF5ko9lbFMg8iwjXCMMFmxhcg5xXh
Zb/MKUD1jtrA6e21CFdZwWiHTnSEFEFKIsMiPDlZDPbK/Eu47QtZFcq7jX24d9rv/E1CptNb9Gnk
fFiMuCov/c1bahD9LEGdbn9leXi9d5gfB0CucV9rR1DzEmxGiWFN8hbq06LN9oO1k0oUO0kBsMAL
zUDIf1HtZqYIq1wrOikT8/sX3OUYNyMtE69a+wv3/koTqTdGnQ0jflSwwlasDlepbwIRFh1FdhPt
hXKipLkMPntrl/R2CpcCONNooLdjvGvu2BOAtK9nha8o15fqMaP8zLsdU12Uc5M/WLDU14330Qrq
Lxq74m0FX99GnUBkfhwSXmmC2LgTCq51Qt7Tf/YjyAKDAohu7dKLNR1cqa2+uU8hme0dzidSA6Ri
GdCE4RBnZjyMSdIzCZN1ETtTqy94mAmGlXdxOmpOHcWRaDXm34+HlQYOOQ45vecxcvj/LvpdvRNf
4XaEXaUrcMKX0BmmXM2wQKQr+yPUnjc1VYzaA2jBWho54ZZlGN5/MQL27VZu4oRJvxVkdXrw+PAe
jLmOmZJ2c8toDUrTN8xsjCk0qEzUakyU45X4PXC0RqNtsLB750eRdXmTrD8vE44GDfosXJjuYvY+
9lnoBzrqALdO7mmtTYgR3ZtM3z5mhyx3XiAeG6lnPVyi4qmflt8nS0jPXmgQ5Y29K4CByBIbbv2q
zngpn8/EBukUY/RfqNzRPeYQfzu/KZrwkzabyOmPS5UAqT8jhm5baZZY0lt3tXTmQCeQtnLM8x9M
wfOS37HlAa/kiw6m9naZApF8poQB/TRHiyKRCEKsBPdQ18/xwYnix0TC19nE6JU0jwZwnN+/Aoe3
2rOdhctMwScFVvw5r56hz1GPwm/TU3itm7OffzPkM9bym2W2XoX98wIMvAladhrUpGvAPUhfdy6I
A9mHrDdBGr/lvDTxi6CW0fdJw1c/8xDE1DHxvcm5gcNPNaEfDEvaeeCxFnNTOGKGi18o787UrSpo
tpg/ptyN3FMqFoB3osIcs1evYkZBIQdjUhSkXtiFOHe4vB4Q2eR79uU9XlBbqgmsaxkOg8jooO+C
sDbLykXL5Md3WHbokvFRXMgVxoH0my4F4cFjcEwVnFBB2SM98L2ov/7UdTQBqw/+NvwRHKYYvOVi
w3mqoF1fPwDGMF+qF7V+gvKmRvoNp7+kieegSZYO0aPaLQzsDNfmQ0Xx+lu+q1U7lnj/y6mazxn4
1V20qK3xHg6THXStUUvM6KN1hBJzBbuvbjgsx3qBgwwj8P0T5546LDu9Tu57AFW6+oHbjP9nPxdV
/6NR10U5GB1fbIX7ObvGt4K6TBqJyjdgZj38XCSoKodklNaDLxRHZTfQOcOylcMx8kekBDVOYD7w
HphEr2B0rBWj8zsgJdyG4h9fvAzxwQz2NwhY3L1wn2uPRvXBFbXBMp+m5djTKaqXkC2O1jIxR9XW
CC3lKbgk6gT7lwWGQQ+JtGB7/7bYIshmx0/sebxgnKoN8Y70cB5WG08l9j0ii25VevwOkT7zWvAw
2eJ+KoYX+X4AHXCa95Cg+prG5f9dz3YrOVOYpYr7CvFL8TctfKpzAwMk+gpUREs8PGi8VWKFW22A
n1AUECeIYZzAvKCU4YiUNXOLbZ3Smj/ycna0MDBQ8fAzgxHqLD6zPOu3BgaFLOPgQtIaVGCIFyDc
1BHsVxLx5iqtRPT5GpHAJemF7GypL9MOeWesYXB43rPKC8nEKQxY2NRknviIaQ1ZlHs1BXPf207X
+GSrN3e8dNb6DzKaI/vmeZRr38ovM2qMtHMKQgy401A3tM7xupyyadPSXrA4YYut0ACdF/9nKnbt
DIpUUYnodbnOyJTf/CT3bA+T7gK7xPKIv3W3ib1HXo9TchE40GeZjoGL+pePWautQcfXjahF9IMP
UjpRwAYUSkDCsy+w2cMixZ4iTqvtZjorkYRHAaaS8X7p36+iO9rByJ4tngpefBfmNzkl6dnQgbQN
R1Yr/jP9F6g9ACJgfkPricqHtD8iX/WwEl+zXjbJxZHDqXOXzISH3M9h3hD38qdeyD/C9Rqva4vs
+yjviGgA3ggbyROPryEXYSaGSSJsy4dUUcmzrvavbbhStulzAsy2uH8BtlyUWP5q5rzXdFXwst0w
xMFhGVbiME/mSdOc3JYSZtH/uKdR58WtdIP80TiH8woOMSiYuSMsth9QQ89gjFhUQsizJpnl0sKM
OvfnwYuRHCj62ALi6bcYIk/9rwbf6MEvVwMld/yqt+SqKsy0Rn5iYi5HQsuNqnojhMKmyZbKresZ
3zUFcolusUYkGojqGhto2RYuHSsLWnF/qO3QyC0qZn2kq6Bk+/BYhX00Af+Dk05FWBqtiXOoMGlb
WX3bzNOcUDka8cx7DlAQ+Xv/6Peg5gVKjUJ4J40ym8cPMBGm5VxB4oifReaoYX6SJC6sCKZTzI42
59RnC+7K8aaVsWAzRHrCqH41Qgzmz8mc657o1foV5xi8NbaJiiP2mWz4glIcpAqrDVc3pLiTG3/l
DczImQ9c9v8M/c+ErZraLv2vT/8VjqcdD9c43bxd2DsQPuFdRi1RCGjHZISWK/T2CqQNlj4TUq4a
KRVDvW/DI05h4Tnl1+n33X3bqsvYJuidEHLp1I02r1Nb7PorLpM1UgAUbqU2saNHMpdVHTPgk9MF
0HeHKqNyJi7mHTL7sjruMya5kQEBAwTWkOSc/IO2aF6A9nntc/6vSJJaNKTW+lsDT3ScZDG6Ou0z
gMhM6MEMdqnKe0WRFYqC2M0o1yMa3v/EUXQDX/Jgcbzc6zgNukCligCoyNJk69NArCXVe6fwGMTV
h/bdEfMzZbZ0bGKdC+TymSqwGvG9FR0hwv5tOM3EL5KMCKQxOHUu8JUFXfoRIIN9VuDcUnGiWW8d
2W0hO70S3kV4jM15G8ybbW3SP6GElzS0SNka+y60gR8tzLtNy6AtF3YqcaBqAThX9r7ONciKaGeH
XRamoHYZ5d7w946rC//mJwiXWaGrjFjBQrIGElL8tp1cxsGSExkRoUrfpN6kk7/+I2MRyi4RFsRg
mQy9mObSGURmErG5BsKU7R7urRpcNQ9xSoiUPcz70i08GPH5pYfoxosY7Jrs8kRa9+bugNHn3490
1FeZihfCVNHU1bczZMCTiGOFM4fawVI4KQohyvO0xqu5xz9lluMBj6QplcziuiAm2Ykery66SfOr
0mLKt7xzUVzrSvGZ+IcFWYIR/z2rDnXIKH+iEI3efekJSPNRAcg9PMdgs35Oeba8g7N/NVefzQel
Meuk0sBbzOyn0qc5TWKV0lPMn2rGr6hlAIb8bdkk356jaZRCh3HUDdo50mvzEA0pWNYflpTV+IBM
WrGq8ADXCedendk1+DwU7XigCfhysB4H8Bynzoq4C5kbSnGlUuStGes3PhtqaKJco3mZR/kIVzwF
ZEsYciOafgMQAuYRdSxjRKgh8eMU/gtkt6w4P3PYGXm46ka5DZwsHuTWeLbm5nRxC/JM5wz0Vdqa
rNINLaxR2yScSvEWMPO3VcqRsPy/HWmDJUuvTaxQ6dqVHpPz9rF1It+bRDT83TdUXt5Q3YD5o5FN
jl+bOcxhBrYK6EmF4XQJT2JYZ03eyK/+IMv6rx/O21Ixnb9kmtuk2hKciakK1A5VDymP9w/2XglT
+ggNii2b6RNm/pc2pSQdCB8Afi59gtrbW2BBTI2uAp78foh8IcWBustJNejeE7eewTWUzgOig83u
9/YUGkt41Lzq9lwYlTGS7H9eGl9uN+44T0i5hJQHVrsdotAaN55QUMAbN8ibyn7m5anCHcisYfDU
UQvN9ODnmw8wbBijuPu7DErCjlq49TO5CiQv67fBuTiERP/v9uFVZAgGTh3jhgwJOIP8GrdDI1mD
eIlxDrOJrSGjzaK1s2qfIqmH2ZzSBy48agkTkHla6aiqq2WpnpU0Ak1T+uQy0nKbdVeq/4gu65bN
OIgCJFBN1dPsvcgzCSjV+7op5bRQel/uEKAqRkpFLiiRBwJ7ivnHOEa+ncEqW/jODuZO/zvIjPsQ
c2Lx8V8MsJBbO5xXcvaVSeiEUXsfte8atPeZwE7DJ4rjczhDGzgGP9DSF0bxU383MhtIXlYJnZ3L
y2TC3VtTLyTcwNKoDUurjZ1oJ/6c9cja7sq+9dmeO5LfV1uvmOboAiJQJ1HCkQp02amKH5pg6NlF
R9dGtnt6v3CXY9Bes+tKCRbOSp/FbzI7iLIXvVO/1ebzH3FsTU1CCvhkin2hYnvgIENFD7A/y4ft
ianI2/ixY/BBxgn7Rnj/HUfaPJ1bQDXr/rEVjpTucQqwuyHmfIV7gmK+UqZIFPS472pPFiccGReB
D+9lCDbHqHVdDwUY7XwjsmRnOkEu9Bin6Rtf51QCB/HsZllIDNo9G6SA0eHqt482BttI3Ha7nzJM
+TlkOjsZCHzoUFDuSyOU0aja6wAYKJKmtSEqeTEJxkWOJG36oxXMkWsKPDT83owzM9J5h1urZnCX
qi3EkmRsxgljbJ0S3H07EcjRbeXbyMmiR3rGUeTzAHOiQoCHfg/NxoAOkv8ZKH1L6rWLLNBuzT2k
18hlt9uqVVqSCrpp6s5eq9N+ESNJTnYWXV8ULIdtCZXSwIbhcKfTA3LBmCgAlgc1kcCzlkNXccdk
NAhImBLPJ/3MXcmMkj2+CBGFAGDrttowqn6osXzQTUrndCwb/6cnRgQNb5g5z+36U/mddbOoFNFz
OeXng3wZ0mvzCxAYjkPP29WuHrLlwsAWLPNVcpTMXcgABzKeZMLXWS2yj6DIoI2JUahan8Iluhpf
bweRunTzpKuaqIBgT1/xXYFdpmEvb8DmkgTThEUb9GaBlFKF4eGINk7F0rPU1e0jMUR5c1RoMA+Z
sI2Qdgakr1VK1dTJ5/vYV2ZDLzRTLp0BXxx87nMfzqWkViVEgaw9wVPZHH9AwM5GfZVVousncy1r
KgvQO9XWENTZh0Y9l+bOdHjqP0/rmpgR8oujz1rMF4SlvM91oG7k1sOwHsj7BgF4URQ8D7j90Bg8
VX2zk6pym0cTijxUVIVdQFvo2E0Y21t0V8Jimi5Lj1FqXK/KkzZAorTK7wT2aqCzFRjHmnzVCMl3
wZQeCWLw2ocKm1Z83lFprYNhuzFwSfSS3ahPJMG+yPjw5y7vSV8+vVupTEIF72CUMS5yJyg/Ob2c
CFl4oGHdRmBaeOPnSXN+hxDKTRXvADNnNxF3q4y83H9C7IyqRdP1sG8BuMTVzCzeOH28Vwmu+ytS
T74jfFdu/lUbRUeNffWiW73JDyx8Bn0ZLQKlk9cZDuU2boM7sgfTb3F27H3ai8VG/39ZGHKn00WY
h7fVN0NNmpHwcCuCKa4e9RQBf19nHEwVCj1bvKQRUZ0t0XH65KeJwjzyYX5lhcQ1OpZ4viLj+wp5
KJEDVv3fHhqBff9/6fTFvSmbvMXKuD7OP5w/nrdfm2rZRhbHuI3aPjAE6gLGWEZvBvLdLTAAixoX
RFxJkXtzL6/ruK/zF6RPbNtW1ZbB5SU+ztVEE2WqeTu1UYb8n7FFsmhFH/YrV22wnMpQE7EkU2ai
kQi5H39vrVsWwzeelXwMF2ZKtoJVP+odsbtXZMhSjBUvQeQgX2nyjZzE3KYIdmr9HHN1GpeMg9pf
UeNaHgPZhptZ1eAyn7cDAWgxDN9Y8UEgAeN+v04NZk6CUutLUDZ+3HvnDiUtc+ZlMoPdepIsvVEU
cOOIJHvQRSTyXFTvKp54IYCARPC+95J6s22lrEEL65Wl6kp69ZGe//+/4QhinS8KHhDY5IykXktf
7slCJPfNwX8pMltEUuA3FEDh+txxnCJoaxL0gkbUn2mzMPSHRhLqZ6fxTF492DgrfA6oLkgKLGRN
YrzzvnXiqcZ1mApt1DdMowERWjXgYrvWICiftbN7XX/BpDOfa/TKAiki643fa1D5no3EnjGhUSp/
Vheajo1BVwRLbwkObN+iG2J/4IXn3iFPdMC3x9S/CmZmeJK8mBAE1RSCqXeKXFfyOcxkxew5iD/n
Wmi9ahWiqRSddkpuahIozzg3gvV8wlesWerRdLFr/Nj12t/BAQXO5s+bDSm5DZEXh49tCGO77mV/
0KmHiP8KaPNYnuGbCtJjR/j5E2gUXgYH3lM9Vdn3TxJnKbbi0CYxgE+VX8nUKyZDAKd0vfw5gh6v
rEl2k0ssheCryOtW+OJS8tkHSQYjwQMPBV6kxaCQFXLDo/DV++XN7bH6Io74raTpwXUyK06UhOUK
0dU6YxyHEtLEW9XKzGH2HXLXcsEqEGKBPf//spt6VCftI0GRcA/cWaHcbY8Zs/WcPPzEoqhKlQMd
luGmrih/u5OT3fGydba7wcYUUq0BcekVPfDO9P5kITC4NQbP7zVCF3TRufseT+2j5BIFppbTkJWf
gaVcyn2Jzehnt6Ipo2TAFgOSuTIeKUV5i6ArnqWm3v4R5CW6K6gGu+76RwWRYkxJPkp7+pnjvvui
J5m23jWLQVWLM3KfUFTl97BOYDmRzR5giSQFI6hhwWgb6S5ujmAKVDyJ5Rcr/5nObZ1ExvNOqCFm
uIeELxrjK2WTBczjXhZKEDDa8XA6aFiQrSgUvtFg9Hwiq4ML8AW/lsW0HFQ4SZ6lJ4WeNUEhK8MY
cRi+hKN+FbPDKsvX+Q7ezLJu3IstZIzEDtFsMfMkIml+bMw2nJjs8RX850cliF0oxsK1lctgNPAY
BLneuB1UddXAuJG0Q8jsGHmdMaq8I1uUiigyHCqvIafo3rWPu+Q6bHx+zc+Lvpwr8Zdv7p30yoe5
6rUNmsyW8cnxE+hhGzf3HKulLAXpKDrxtcTREDumsr8kN+oie3CixusnLmOw0zhmBIfv3JGyoKaC
Cgz0isjLnc6rEQL2eEcR1wYWmQ1NzqRKdGSHUy0X0IvVIiiuucOtnSuPYUJ82jUUrtF7QknmsF4J
1qI8RgcIRdlxzolwsvYMpfzAljrExnFB6i05LX/RrqIFw6uBtuLhGH+Tqs9jwQpxK7haTisWFH//
pfEcv5Fs5CgyvtQrhzyyltA4G5DkR2jpHss4BrSKVw3Q96S50bC+HCShHY1qGVRmkQX/I8AVaF7w
NbERrsPuVohw+KzjbZEG0M/cJMO0OasWdiLKtASp25Oagg3LLLv0JZcp6fwWq8dKDnphcgCrnKqp
lXlU6arWZQYWHGSN2UaCxf55GPEaXlskL/Cf5+cEBfiJU5N5xscCgaELLmx3hJpHZaOfawZdVbcm
asRhmgafkpxPhxLuKqak7gJrWW3K8ZiBLX3zLdVs/6Wj+WGLp6sOoPQkxSuV3IgBPoMkK87hvsuM
BjWewhR+wW1aoKc9EthPaiIL5RUbVV9+lRiaskNKSRY7PHnTmmrKfDlTkEq9wMF2RJI7tju4tvC0
IAN8mfpPbQnTaP8gR4RWfYABBdaF4z031SnvyXiJni5NPIQpG7VkuxRygxkfu/PIOStpb9eQ5ZHO
ofI77G5FJAs/02FTxiNcjWrtNd0J/uZNczqEEaZ47qnQHTB3nDf88g9ObOLQtjBB6nJWNUOV8AFr
piqiw6kJpA5CdrDqJRkfWWMH8GxJdAl0eVUQe2F/5Rq2v3n8bSEzdPmk4NGsSgjJypxwCfdgGIOv
aByV31B5JXAWAE1ZAPCNVjoTdpjOxfuQ1J+OzL5jInzScDOIsXpeeW3jZuuYuOSAHUvP2ye1aNNp
HQ7T3pDeGd/wprYd5mGj2e/N/d8Ffv1remGP2l7Bv1JLmvdLN/ebUGCdZ7OO6pk9+F7qvBKE6lLr
yDKhnP3WNGePuBWfkY+CPuJiv9FC53Sx4vwQRCx7KvQXuNvTyPeX9dX708pIS2A4DGAmJyYOvZSc
3tN8rxkLzfmlwdBNQPux10UZQDWL44E9/XZfEuxv/QangShqrBjnYOA4JUw1RtiVo2g+XW6AfnXt
668AGwG2bu/SUxLaS1J3qvA0MDyUQkBouriJmY5EMb1iqMkJCbAsW8p6a7QaVIo8LeNBMewH4jX0
1fzaoBPyTcdP3JHLIAhqS/9yAzibTa4Em1WhfI4lMS/A98R1obCeqAxrtPBohukRAt1mCE3UzxXQ
7PbmGXPMSlHoEONU6ADgNoqjzox28UCy/CH0QTCOQ1Fcs/0G0P/vRe6mzsUoQZ1pWSzKwERuZKYo
JABtpWFH1ea5i8AqK4/QgSaOrx5Lz3Gv1bO59Ey5xTpSwkTQDD5vnzARkvRAOxOs/VX/6lUyQe1H
W/EfmMv5edHcIqbOMDBPaQu9TcUYao8H8svxc3C484M/lAj6Xl6e6pKvkBv0E0VwqEzaXcbQHg83
aKNqdIlHoXBy3wRYRG29ZaZX8QiglyB6E9nTFlU6W4uUWOfGGHT7uaUDcBX/GClD+i6yJLR2i+28
LItNSKNwp14wvLzSDQWJkRMoEfQyzFmDE/pbd91m4q47LdJDBW5peOmeOBup/zwwznzGWFPFLjQw
XsJ5ZKiLVm9OoDlKtNLfLif0qIM7WASnugOxM8yaVykbXLutEeWPQukV8xz29qK6sBNvk5Z+Z4lJ
+zFxxKb5KSFx1+iIWVYV2VVGRff30T2gV1JoMwB55F4i+Cwj08uUqn1Ecg9MTVmzqBlERri3oeJQ
U59I1/DB6FqAZ/pDWNSD+/W8v/luo/IZ/5/9CWSTIw5U2AZYT1SmRQFgYFt+8iFYErvhbaYs+U4u
czjHFmHtczPGwP4WGmf8j7Xvj73wlgpWdmdsviM68klxBkwPqs2NjlfT971xd2JR4Trr6RDDzmdI
m5GrO7EivkMB9jl4sAobEWBeXHLiOQj5VzE1rXL2/Dd7leFHbzg9CKgDLhDBfRkgCabmwHFyv8NG
OF/bnQ4lxsNf1BiIORxiUXgeCPFlDbaSaEwcNB62W7j0JsDBduTYhtGOyRCiBINr6uzVfsH3oVTP
iK09gKGOZiPAKZtLlvgzmogkD4kKdQKeyDCFTOI7ua3ua4joBm3T60dkZqxIAIqgZTDcZafhJykO
WB6IkP0KYuaUKafjgMJzMzUhNDrs9Pq7ecmp/PkC64zoYKrwSe/iwnKU5kQHMkBevVq1a6b4tL4e
lyEvS+82L1sSz+RIcHH7O2qI58cC9xuz0y+aEvLOnqb8yNqB9Isik9j8UPst2fkwg5CbxF4zAt6v
nCB1AKvZvm9FmsXdpW2SwphDDVKLmZ3G6urN1duOa4mgepMW3/NluRp06jDRtLu1nj7TzEOxaf8m
RWV+TqswhdmdrrSfuVznTpNjTQptIre6xrbXWrtF7eB3cUCPJCJCr7PrcvaS476GbsJGUhqpl7BO
tty6/UiTbWqx6eCnbsxuCq8lS8omJcUcUEmVL3mDl5EgDEU78EGx2eV8XQpV+ryyvMiNu+NhRRUn
Pa6lvQJOlbi6ShI3d8l+tPxJ/aXQHYM4cVtUE5VL3RYR+K6xQoxM8XdHS3M6vkflc7zjufM6GsUk
3kEBdvxJsG/Pi2oiXkvSS41gEPrUkjtN/R76DgfvLE+oL9FyyKv+8XEb4BBjftpCC/TNZMNSrUp8
+2a6HpEAzVqvSq6voCuuEKCAs0l3zx14D0guevHIQf2T6DZghImxaCQgQgijtKSgEMUYFmrkAVWs
+688iJ2fovZN8wm14dvMZEi5ckFHpHJX7ZsBnu1POPTN4LXSgem1wQoIZ1dvht6KYRzVaetWjniT
yZiP4qQ2yp+zqCSmpuVsZvoEiDfaEWoNqTKMiLzz3ZS5xrv5TvPkD7/YdwxO5LKa03kny7rWxpk2
5NnwZbkV60vbbWswcPs60A1kEK5UDVj7UJScABKZs6g1zV/jF/Hpa+eOAHh32/xrRrCsYP23VS42
AAE4X6taww7zAyViyX3s8ZgI7xmcc7+XIUjs71mYQ5l8rk1CA6W1QIxz2lRdj1vWwXqwWSL6Kf/d
FYhZy7gVK826bSAlobNQC68t735CzQqbNV7kdadZg9hEF7M84BsEPUoSuoWyLjVsmYdAeDluuuxT
wMZ8XlhATMqQicuG7kBFiUSyUyiZCn7FG1MTM9iXpWRudnWdwj3aaj2u1GSFw03Xe3gfWtmh1EgJ
0M8Pn6g/TjjCVR/FvqJcAC9DE5ft1v3DbwHIueYGBfUyF4pxbGBwUc94Poh63ROE6MqSD2NtzGtE
e22rhScVxJGjdBNAmziVvM3chHv6+dyMYyoeHfw5VpSTWcMyx7YSMy0qhX00wFGZ31xcbci0YNhP
G/ui2Kyn09vTnxBqhrjt2gRobBHIJSCN6fuXMTqdgqeo5dNKS56ylvlvpIZNHXbqCoZk785PjuKe
e4UDZIe53U5/6s9OU7Q75FYaFja5Pvpks5EEp473UXDua/5lcCBVnYzQJACqFUkXRRYL91CUJtuJ
ws8aBm6ACLJHvGHhLdn+IVgfi4zbuFFYf6/nrnbVtPLlFD9+LUAsfKsw9KEBSDuy0jC3X7Wm7u55
4lop6M+WkKSB7iFotXXm5hNiOIWzB8BWxhNJ1SMTpaA+ZAn7Ku8zOY7T468FbhPxLR9sjX3194Nw
7g3s81bP8wZEAU+rIxedjaUP/rS3FMPHZwF9owIR7TmQmf5F2YoSe9T/D4WdVfBGKVpjxvsHEmfd
IP+NusT9FabR3CzDlrvuaFW7uXMk3SMYSKyUAyFqzduIhOsNItqs38bFVHX3H0rt/SfJMXOZBGQ9
dfsLQ3aEoq90jYiv87NuWHZHbPwVrjh86WDmQ45aJaTqrUm7xwniy48Q608Ctm4/kUhuZfklfOaX
fJB+1UdDbqPHX3WSadKAujXtwcasgGXVw4+XoOOVBdIMs0N0xR7gflap0oMLc+ko9+7HIjlS9N5x
1nxLCXI3yoYftvc7slBotgwDcp4jsBuSuwzAOZI4rMKI5dqMV6lEpLnY58AKGkmg0cmHynFT2g+R
oMq/7EaJD96toW8pcWhH8qKsuqQB7OWObsDxpwxU+WWb/Ue6JJ0t2G9QlAuRxZQRDdl4hddMmZqS
FZePbfHDVB1fByai4LzWsCXUBnFJnpDHA6mKP9/f5nJhS8jHKbyMo+JPcvPky+3jnGJkO1NxJAHu
wk+DQ8kdI2wNj8Ht8QNli7DUyHz+Se+nUD2Wi3NkAx7G4vbhZuO/7dOtMIYIPlcaAtuBRhSatYN8
V1uMwmDih4t1ZWWdoEHVKzCpUG8KvZC5NofGmNaPtl8kUhMxINgMhBGxkWJc9ZpreFqNBjAhPF84
QsPJbDK73PND6XAk8+r5qlk7B2Frf0cKERpBjuqttsii4A10AP/cVAp3hNMiv/imNPBiCu5kB4Y9
SKgjljSSiPUGq19CMO/cCXL2X5XiM/PteooiNKjkJbuYpHXRSH2REBwgQnDhQxBT+IKlUz9DomDc
MA4KNyTc1XAdwNpQ0MxxCd9olQGavPWWIqa0p2msiLlG8lAodm0K3VzPr707CeMqevd2/921KECR
woWa9ms4CG5yXQbtYaOd778aeFcBKAhD9vIs7BMEIzb9/63jfScHmEzr+IABefwy0D+njuRBMJz5
diCEz494KjoWoyuG+iIV25CZezq3tvqjFd6o7l8jkgsSKFyPhliVpdMjLYqHMEteGL193Y9RHfZY
4W+J4sug/LopNVZaHIvE6vit5Z7GzVHp2mhI6V4CAdaz0D2F+dRDR+63sravvG1EIIdvNRM4PV1O
SSHAiyG8FtnEQS5Mi0MC4jZd6gwJWACnDGDcvZrVXpbgDp5rkrysC2zJC6GU3Q7bU9fb3J0jYZ5X
sS0BZ6CTMS0eBOtQV0sEYpCaP8YlrS6Y7t5ep6y7chVvMBASoMgB3e1P1GQYzZU2ITdtxIzMEm6z
Y427468RgIK/8O2VllLsuLaiaFQZ0WjVwBQXhmwnH+uC+MQTECPnZrRb9BmGtvTLRC4aWf+zncCb
Ho67nMcwf8CsEmzOtqncj2eSieNgaagXgqq+iPdc56Y10e89/+UEi7WjxYpxUyvaLUekiXx3LpCr
wUTOnXjCJLG1PfRHmMVQcVKBKR/hP8LDfCc1Puf1ou+8si+8qsB/4ZZqGJYqLk61UCC4Sjsi1242
pQLGXuN8ofqKfncDYZIx1I6Gzl5XLYW4uF108y5zKbQfeiEz4tF+Wb6H5hBS64rhXskcq7ZVrFeE
KmOOCkgUNYeFZKU1+kxVZp1wNbKYZTqbFl05H0KkV5HJC7FuncKwx2PctA/VTCgkGWuYOnTFNXfH
/X/OUhE6pmc0edmI/YyAklRuGFz15IuN4kCx+KVit+bIVU8aDKjhRfEt2LzpZlwj5c46Qs7wUlc3
dTHdvSk0JDD5Mmv2RWhGykLF0ICL/OB7CJRgl0H64g6xfyHaXkZZnRA8Qo9mVvNKDie6CeBalHdb
L0jLQYfFncNj4QEaLdmoQOV2sUL1/jOa4pkNcQtvVTdQxtnuSAlNgUKUA2IFUZ+VdOymV/ataYC9
EkTj9WhkQLtp2/ZJeBEuJwzG9izcaq1Aojn+hmyp00CuZIiCkob8APn9RD1kdazvzXrPZ/ofoDvG
OL82gCVtEF8vNVnJuBEXciBeMLMZD4eSoKfjzTnGwjVHMs8jPqpHS7IZJL9rDgLzKDc3prNOhL/w
xklUEtMU0VICO4n0J8RXCi2ynX9D4LI7qxNIQzuT6S6AFTpZn7vGA5PPYx+eOViIHOwN/pRR+JRn
+VZYnaQd9Kvo9FDGp4UZgRv1R8dhnNBt4A1igPwzQiJR3/2ONFlJKGMxBWRhPdWqYzZ9GbRd2mZq
9XfOkMz3gzMTAIQ33Vll9gmjFey2L9XXKm2V+BZyo/8K4mehNSlVwnW3YxpqZgvYwHDUziFFNPSI
boUavkv+Ul8GWnd5RKH+Hlt38tM23U996z/M1g6+Y/+VxPxIPy+myh9VSNQypIQ1RCjxVNYNcBhg
C7vfztXyILUB6huNJcxfROD05ng4OF6TV2PS7Xp8UcCL9Y63nM8EPsoRX1L1c7o/ynAR8C17NcGm
Ug2J1oTENT/DQEqYKvVJsW7jcXmruN+mczIOmKMkz/faxPqvR5PXEdI50Z929WvcKPNzP/HRpO8m
lw2kf0HB8HVmPobPJ6ubd3VQzH8ZAit4ytcEae82VsCUxUaWzZ5MuKNnGQNvu18dMmUUpQxwy0Ng
SIWtj1cTTk4x8h6Vv2xVHmsyjD2Ohfy49IyOILDXbZie250Gg+m3DiKgGO5fzffoJ6eiyS2DLiY3
cGWFwzllmY52i2r53uv+U3RemPX6kT/fy6vCpyO7uJSt1M4CcGdIgQMzwkM/FW2jPEt7wfeonXDZ
32G+e/8+Lrk7w4fQtVhj+G6vNJTJ2Ir19gajdkqWh6wDUHmaDQPrPsvCAvqkQzqB+ymZxEwaqBya
RNs8GXsgcT0XVyp7VgNcPbaVo5B+3CTrSD0puZuI8bx9VsGrf9ccQzi6fwwElyJjBNeoQyO1+mj0
oOKK4ybvAHUhTlGjQQJ7Zvy6TZobiyaocrCqFf6ELfD2Fem5xSaHXt54FTT3R+I/6MVSnm8L66HW
0SxjDiAE+ErjVxkowq/W2SQg2o3Rv7OVpBYjnuL17a2M0dOFgU8Dj/4pa8i/wwSz4MNvWt9jf1VN
Br1RWoxT5fY660NRAgpYlqipgevBjOvm1Yspnmv50TpfX09OFcIE4cbMsCd+Dnkyb/2DrRxnr9Rw
4XI8Ni/L61NcmC2EwYx14yPHP9IgmOJRgsov4cRodk9aDVy/tLePM3ZGQLaFXLAF5BMIATK9YkNB
oq52K8OPSdlvFS/WRhablVkfVCFhtMJaRWofbVf6scIwaVQ0VKKX9ADZQb70Ra2hel0DnNHxOFKD
VFyVtHLyWe6zQQYsdqU/f/LznLCu0PjUWXNwwLuWz7LHSU5oLZIR+IRN1E2m6Hb9Nm+K1RZ0XZAm
YeDLrn69NS0NtfHmAgSgEzq5D2DyBLHurKgGQHeBongSOGhp17n9Cifi3+pvljM0eOiD4QT5UzTB
rs/pXPKbUmJb+QlvQLGArhGVMFXGi90GWPHM1J2ErQE2WZ8Bj//yHViRamFXjmqoNas2pD5dHoDx
ho2gUFhx5SQL/Nte+f2qc9Bb2PzYb/1S0xTqOqYXRQq96QRDpBYpCTdlHkrgT/4eu/rpCxOQisJB
GFxU9HgbyA4I1/PorncT5lUjlbJvuBkTaSHurtyV5dKb0U4TJDT7EjwCvE9+NvyG4MUmTzCqz6V2
sV4HqblAqZ/5x9MkGWanSvKxx8z0PKGaaG1IS+eYdlWTRGvPQ+rOQOOW9YUHyOVK3ytE7O1/lEZc
eZcmnLfw0oAWk5UNE1LhlrqMD5ceht1XjD1YlhqSGCdXMJ9dzrMxdBqVifnTw9iuZb6x0wuGFGiH
NjKodOoxQo2rfuCiU23f9L0E5HnMuTW5NGYjZB+UrBga32jm7Rs7yea2d+sOJiWV15+m7528DUBM
OrFpoIAx+zn0B8NACE8CrtMxBMjw/HcXgBx77KTRAojwyMwawJRn0mw2rYuXXeoanRfNWDJzeCVK
8rWas+sP9jvbJDknIZYh47ssyYNzk3QVfivYnClxP14YvTl/D9D9xsMhwu9p6n0mp7BZ1adyQbuM
SLt7YHBtpGQCjcDSN2DuTAYuD8eDgVPs/h5UAFoIXrwX8xWY/zwJtB/Ds18ANoWRgH8Cy/Uc/wty
Mqax/P5a0s8QzP/3R1iWDPrdu0Qh440J8tojgcUbymsiOsgE56F204Fw4fXQwANkutb2QqzoufVv
upFGJvHxgwfaR5r0gZh/6rZvu/zSX+iXjIyEA+Jzg2Mu/A1L/0VusR3Tlw4HJlDoQgh058tBraRI
vGjly7itbGevNvcliWmI0S+F5DsayxMkOAeLa1SC3zq49ftSX3asBcMxTXvb04+qeAGOwp5z6ZEF
VuekH30K/BM56Fp1v4KQHpPWRB7PNyASFyTXSpWuNM0nFPyLZLgqVT4KAkWzIdjcFaMtFWp4J6lW
tk9o8ChOhGgva1yemUHKbuN2dwHtWBFh5vW4mWw1Fx21/weA87GZPqj0FcxWwm6Hfa3eTwIwl9wP
fFYW9oPleYEA+DKHjhbLIbWtg3GTS+02fBMxXn2Kqb2IXyNS7zbQufZsmt/15i1CC/3W29xOpxOk
wTplKWOpNmzR4C+pu5xCEqhFw11hXkHloHDG9ncJvRs7j4wJ+9FZlDtGQ0C387R+hkAt/COgwvAn
zXARdM0P4BwlbWf4WLjsldLA18j0UQWcX7JJDrtw97O4lRfq+YzY/FnLA+ahKCVCv3ELv9dlblKH
XFHQB6ZI6/1IZFD2Fs6rsmem7bc01vmOYKNslHGJC2HWHIwfshvnApe1ImwguAHgMN7kTb9hdMAQ
m14bEbHT7v85CNkPuW9DfOK3NHeapFO5DcQlYJ9BMtq6V3tvgdROL930rS+og6Nmibkg/T0UqW0X
pVn+JZbG/tkkqZBRMF0H/16YL8rfANhDYpn4fIt8b4mHjgnQJfQt2hqRMHy40uU6NNLgz+gDgi/r
pqmWwL3JiFIQrGRi0rmy7wihbptK1lROgUoEiDG4+dPv2rfFG3SM5q3PKOnzOBE1Da/ug05fAxP8
ucLSNTcjwelqG2iP4g+7FUBEMZ5qP3xKH6O3zncF3N5fh6Q0wMA7YxQ6R1YRJKlYkIL2Ak1U3GzJ
0n/A/DuI1YrZGfNvb2lDoflrR8h2zivKSUfB0FfQ9aPoK7R5zXQx1vgxDys+zE6jpZdHkkERqch/
eDfEdf9raej7ZKfVZQSoEmrtT/t+aXo3gw/Ym8Rr5oyeICyyM7djBpYMMq+Q05n5rgoiMq8vdGjU
pbctMGsg16LliB3C3cgRibJlpOAasEqfGLbg4aJ2WvYN+PmWRPJD6NjNvrWTEbcXoRCAT78REy8/
dbJYmjgR01aGd+yvfBJD7cZD/BVQLgoLg6sL7L092/aCpSQ9UWN9Zcdc+noUWYEyz+2rO0jcUDKI
HyTZa9yBz76hdoP3RbfL/M81fAK71HKpbp5Sxfw2GjlRD4yrF1hUAwhYQ/N8YLefNRh+CmBb1fQF
L6m/kDrfTKgYg7pgrwbqBkxvKLs2ZCGju172DgXfKdjKE1vbwA4Dz/pnd+nohV3YtEmKtsZAs51D
prHFPqyxAerF4Tohmpkn32FnibCm/y90h0kErJMwiHm2GoZZQwN0h1gAvhwimoBBP8+DzJu1QNOH
s+aaAWXaPzHgBvgx/SNUZHIoa4JU80b64hmXIKZcdyz7e0bqyujIr8s9GnQXlCMBFqlVtOYshQ0B
cIwtiQyVH7sxehua68XdbrONkEXZn2EPzRaBXxHSAVzI0kuh1JUVSLwPJV0remE6Ga7feAfPmxeK
eKKE57VNZPW+DLmoeAGSRrxNmmh5+wPYtm5TRBRZ2GpboX5h/J9Cln12TuPNZ7NYhPxJnj4C5dtd
YHVlsy2uwAMZr7HfKLliFt1nWQFeXBvW08niaNdEXPYed+5e9s1oIyCe+K10wEx33MTkBt5tyfEq
74jpStVSlrLZWCC03V/B16K6sqTtUEDID0rvDtz5+QfUIU1nRo2WiRIkXxAp4QN3XicAacQD/jn8
AvG3e07Ijwq9AVZMWYS79lqO61BO/zScEwwhfyfZpT0ZKPeWdCdfAoDHC8JaHy126WwoLw1EvdHx
ogItkE5bxXc7kqUo24TVEp0n2Qd+XzIG3Yoabxs7THEo3Qj95roGN35nog29D3QBqgShhSPajOm4
MvDRdaXeyh3JnVLUfFtQ0lpHXpewezCCqjE2guj/s+1YL2l2mgZVENoMzo9VwQHsifHALuFCAgeR
jOs1z9SXZCdqQf6h+pynLhR1+ehbdlg1DXNfY7av/gJw+E2KN0upcvzlH5Yvt0pm1Gj8XniPIKQP
g6SnRnUzBLJFzj+GCS/CM/s7VOJ7bEO0Jq+BEkVtUcVUfTq8t/39KIGaZEGwgpoHX/B9ZR6Wx6OT
TbdIst8nYCH19XJLd+ZG0Jeld8UA35NQtC29KGXSiNOEtCpMT8OFfVKxQMexTXkj9koGDHVMMn65
4o0skabez4aRVpvSAshLyTsGllXt0WPjMB/9cLhlKRP1cubm+99iZ2ljPqkYZi2sCudnJAeBC6Xs
wAtYJQXiuIenwdnhSmUQT4R5JUVYYpUjSh1oNgnueWZ1bhJAc4mv5gZeIIlEveyYaBMJXRy3mn9J
1YD3nri0X4Lx8fQBtZg2uUFs7zmQpaA+xhpkdq+NMCpWNJqlUEey/THGxz4jfBu38Vn7GffcKvhk
EmzGS29NMT3Y459LSfV19c5UGpok/rr1v6SVJ22i6ho8QyhW47okx1FcScJ3OAM+2eslSE+mtrdr
nNGTHPCuKFnde39GUbQ4EIJRsX9pSC7V7ft3vQ4cL67Y9nYZPBpMjsI/IModomZery1iRJKkE+Uk
N86jKGbRUOSTevS8vF1mCD2YC8ortdBCe9fxY/7Ib4mK/YzVs6PPI7iEJH2/BIFN1vGJtywze666
z4T2hwMRsmxGraB7gzdUTYqnASsuIB7WtAK8YambPlLnj6bBO2fjaXtB394NMw1t9vMIBgiXzJFM
47Ogw2XJNljxodQq9IGnmAoHxpZk2CuDueGVEe6FolrRAJfO/hA4XukLQ44CatQKbgNDuW+FCzBg
t6wkYaY5AamEnUge5qOzIRie9xvK7SRbAlmlfFpU5ZK3Jz3cgEN5aNimmZ3fO+mOMqqRuZf7oem0
KFcKqK+4crAe0tL7iTGoEEhYVBeNag3u8RuPBZx/BDc1UWJHQSS0PxT9TTygi47tQvlXkOUTR1cc
kCOiUTxOuAPf85GwDHinSn4RXqevRG0UzhcjHLXqQ2KHkxvIjR1htIw6vc5VT4D68pPqTS1YCuJ5
wjGdxFCrwRNlqhhOIAnFxclq+YzARCjm+8jmO4IiGR9CIHWsuj+Ns55cf73B4UL/YxSrQUt0dSAa
xAKZz+d7eJIp6R0sb6LTwnLzv/aww/gHgdDhG7KKg8dqtTKxap79B6KQTDuixZik05NZe3uRqgPn
TZQ5hcU2Dl9UQ0VdQrjDhCsSndER2wjEqrjzyoGBBxoeCtvIIf5vLYS3fwkybkDxhVm0VygHAFBF
1cqfKWUqlPbGb/kjbec0RHVm4ifGcIauIYl7h+QkShc4ERSJcIFG7HGYw37h9EUZZnchWLICuXqM
VdTiR0Av4xyToyf2tW+aiDB/I8NHWQk5O82JgsnobnhkrEeutfufoBJTtxuFa6BaD1gA+0kcUG08
00YLJDWDlLW5w7bXXHx5tomL5hka9ZCEyiHkY2rvK0EkGBmI/5PaSvSRm6Oy3efVI5w9yL/Yd02G
/wIMnBxJasGoPcK3MCZbmbFi8AR8jGDETy3DuuiPoWhkfpbRV9igiPghSXg0RsgaYpdPFpNxwwj9
KBCLNEu0plLZV61LIgI2lOfMSLTip683kWbQORY+9MP27DWv3wr5r5fCIeLw4dpkLH2ftq7FdBb3
QbN9d/RkP1t6nsfF7ZrLcuySIHRPlGp5wX8FNqc4YBdDZrDst33bcVyCVEfFyLxRTt88etAW0CBC
iwFOCpEQRlv+AfePxClYl+Ni1aW/E1D7cYRJrZKjVpw3IOtwwk6hPNDqMZyNu0FX7XTsm+ksj2m6
a5O+GrSJmqKvKEZXj96hwntfGNqBDe4xOD6kdvfCy3s5UBn4xLML+IsdhJnWMfNPJVYV8oET9ne7
OyTcspwchw3s+gH0DifhnLdofQoe30jcGqZ00fDkf9D87iYzSPYQ4Eya+9N4eToY2c3aY02dULfk
+uoy5gn0Rc1NQqHy5SUpD2sTS/dpvCwNkGxyfrDU+Mk1v9LAJ1SV8HLQgDbIYTqGohGpmo4xO+gD
vuDH/8cHWZqz7Sw5JgZVxccIz/KqGNvvuXCYEBPwfVX/s2q1tAh4/PXrZTXELyeQZGD8f4bNQOKU
IF/ALpeTpSdBzrFBys47tBsCGwUPq4Brh11wNjd0u1UGkWhad8HAqHfpz/TtI8ebpCAVEb5bBBda
jvfe4fgl5dCYvU+mPDXEc2hVufDD7378x7nYH764dE3Rq43zGRTWyTEitXRst4XmBG+bk1JUoNoL
S8tsmZP10c9d+RCPDg4/UvllqYbx4AYtx2FMFbIv7lU5o1NPq6ex6Oqoe7Vg2QMqFyjfe1Vq14ab
ZIJOI/1l70iKPnynQZa6A08GPM1dH+eZQ+il4VTpjDczz0CxJJBKlZ6xN0FoPxZ5+PKPfJrqDa5C
cgx3dq0jvDH2B+JBmmR/Tu7w058w+1m4ZGiMEP2b45tc4TUGmzBbQvs5MhFoKe8Fmm26ZcsWo1UY
2uxSuZZ7TvhwkqV7R7+6psEpzCPSwfFrRAhJF4jQhtIk3WlG0vaVEO9BiECfREh9gjRMT0oY5v1N
XKY1eF7Ck56xKQbSf4e+3hre0V64TZ7RDlnLbBehOZqR1jKimUoe+r04yacqhoR8yZ24O0rQ5IH0
XqETHPI3Qqhi8gKokeCiMCWT7NnltSWeG60PyccycU5cI/iTEtYyzaAs86T3ddnqkl4vXdUJ5v5u
h8mAMEPciDOKyf9kI4ttnDOUqNP/SPCVsTA56GM6QIoCFSXOEuWHu2WSfZgiDTqqIObmhccnN5Hy
kDou7bNycs9f/s5y+pxKG6tSO3OxLDFUiPMUmoyInHq4tRaCH8/HcvNBZ0ywrdJ/ZgX9M8YbMtM1
4QPuA23sBAscyLrc7HWyhrxMeLDqceUHpmZ0dmT0ymShXODuO8eZJmeLFSRg0hCjiu+nCVDrPWuh
eJlNNEsxrDtr/Uzj3BUn0RmkVKjIVAKuY2cczFe8/Q9T0DwJvZcUSYikC3pyce/Mgj2O2rH09Mak
6tC1d1CErNuab01qcCjvjUb3PSXXR4IhlgeDk1bBfOAYIFjqg1TnCMKigiVf2QnyuOrO8pLXwlUn
5zJ2TX79TqQy7P4/ZBSckTk4xv6Y4LjCQjPqS788inhUA+QGKXxMVucPZpBIAAwwJCxRHZtZv9wf
SJ9GH4Qv6PGts5i8Z5+TtiROoH2C/9rdQ6Zh/gycweaJasDoC6FAT6GkF4UYBgj0s+oyYAq+fwfJ
V4gbs3uWoBoZMJ74t561mh/vZL9B6ud2T3HrdQhBL6lRsEj+BTkGSeLjR0t5G2DIrNwOg17QJh1C
LnrF5oVlSzlTc+IibCUpHw8Yxbgpe/WET1TLoV4x+jjwM63AxrmKULYJdVjFTbrEP/0jWK1g6guw
qkFPtqhvp6vkxBtET3feqFKDqPzQYZjoWC76wNmo5x9ZSiagju1CSZGCXqW+SjgA+KycQiK1TQvQ
oKp0i1lvBLnIK4wzjXSPNjDf1IXhZaXYk7VvrsVzGbm9sz8BAfrvVRAVASWA6D00S6GegZX6LvF2
jKHMUQivF1wAeMeZLpGBuezr5WLgqdLX3IG/a2Mem1/BoucdQrPdZlr+K1VNUBCY3B2BcrDjmIHi
N1zo7PjkjmYVZLBUBTW/BsD2lOMED6+1i084AWrzboZ4PYo+ngLtcrVBzTD3/Z15YFSCUxq6xCwL
N25VWQUc5cI+6LnUvl4MtNiOshptkmdyf7qxs9wuDZRKc1XEw8G7GLVDs3T0+6VqHKDfRwKYIXHv
03e8zYTwaHQJkrGIwlZET4qoKUBqGzrVjInAbx8oYlEMDHW8a/gG5xwdB/W3BOZTPif9waUrOfUa
GpGPJztGXx4ixaTz2Px7p6pCInqNzeHiRvLVdkTwsQC3A3c3A9wyl2LnQYziPj+KloUjGyNgpa9g
a90eBJKO/Km1780Sz1OlsP0ZGpNl/GDM8LHmaWn2qkZF0fFkYQGOvhaBRl+Ph/AUipYW6cny69V+
gsosB0rKNSn7pM3UYatfYHxXPWKi11YyUSGrp2d22XS3Hb4dyF1n1CYlb0+TWzxmS/CdCWJ27a6V
0WupKK6yKUzSF3mg+Gbcx9xkeRQeyM09NWq+DQHSg9iHLOdQkckHKZD9iauOpmXBlS9qoaUT4S8c
m+gywoUXPGHjuLAQH71o/lrQgQJ76SiO6oTmfUyAN2Zfjr2Sgrp+1ueC6Iw0yQrcoaBO1mZQYSBW
Uni2MTiBqS6JobpCZLsdLzFv2Dt493Wxke1xHbYCzR5zXRWM0C5Eibe/ugaCjdRMZiC3O8dNXqDN
efHwVUltdUF7fhjp2P4iA/7b+tw2AlsbEZYJrh+0bdqUzuS0jg6v7fs6PnTiurE4XT+p2nPWTKbx
vYbt0u/GPIi7w/PfR+OKL1nJG68nDV/1+yifm/U0xNQxilTuRBMr6dPInsITeuIsnxLGzQ6wjVvV
SEXpPfBnb2nMrMB5kl73ARFK/sAo/Bww/fgvEDvX/ksAghPWv5i2UY7HW7g6FNdxVBGxILeCzHco
ObwlXe45hJKpHpzkbaohGiT2LpDMDtVRS6ZcEHrOuAxnDtl9Msyji5VVxvLs+ke/mQii1bCTX7jC
XipLlcjyP/atXoOV+zIwq81FBANo1kTdc27xbFI+jlzKdCsywzepYC+vxiTqc3OzHgzLzvnN+cPg
bsByltSVAnkOzbjc8IHGKIo1CwNwUSQOMYpqliukfX0chl0vqse91UkOqXs1Jq5OeffLHj1y7LoO
H2pXaeDbhM0Acyw2wFvnz0CbmSqIbeZaysIHDO8b3CS1KTkQWWqBP99WvtY9mIX5zyRc6lX+vcRp
8snAOGaCz+e5YZ7U/V+RrcTs/0zQRVyhRgGASVpsaII2HcjFZlnfj4lCNd3ELTIuqidMNNqgVGqM
vwo4G2mNri80AxYHv5/euOHsX8xf2lDqDAISUl3en65fWi3qUZUTa29C2BmD9eHj/k8YWPDmcGo2
BvIXhgDwD8LePJRzZ3UKFs4WKLUiAnAufi0q3O9xuI4bOYtHsG3jE7tGMOT83Alsy8AO2w0QT6N2
CTLoSqf6HPdxXMa+eJ+sItI6t68+NwknXdMy5eWuHQx/vMPUcBG24rATzZgLExR6t1H3Rtguz7t6
Ouu4SoCon8FfY86G4OOVVHv1c+U7Roidc5pqYBgAYuiqESNg/47xGTp7u6bRnzssreFdN3qDYexL
Bx6i+bb9/v/c4m0sDmukTGv4VghjXgqW5QT++jOTkefsfM+4k7xukwtgXhfOd/ZZ/XulJr92UYIB
HtD2JZ5z6JcCGcDnmFmyl70uc5d99ofvQeWS3NInOJIHRUGkBcBn7+iiFNn6n5eMwbzbDc1DEsMl
Jnl7sGHRaEHD/s+QOM95Ixo3/GtEbjxs0U/jiS9LgI83IWKDleblupBgmbXDBL3oKfqOTEkS+fcU
MkRLDfnzX0Z6TFZoXa1APKbPVTPj9LF/uStDjlyBryrI8Ipkm1FRDwGrD4SGZHIF3ZWxE+/BFqpO
ox/cuqpjJZb06Te1vJicFtlw45tan8VpBccIDXkTiLHWubpC/LCP1+Rp/yB+XptLIeh1IYGBBSAE
oczzGnAGjIdoXzokUw2HvMQuu1wqWl4KZ+xzqH2LzRbq7rHKXwa5kgDZzRoWFHwxhqbOrxjt7WSq
zGhqH+lisStyNmu7cfbDukU+IeHLRuB4dcewUV6jKz4KcR9wnBaTjvJxT7kFpzxniy9UWH8Rz+kP
gAQjpjeWiH/1+tSYMNw9kdgrDH84Bphnz+d6m227kY6RmtUBr/h4Pu5KJsmYxJ/zciqEzClaa+Rq
fZXsrNU10R8sgn+zIR7MfBBe+CfgYwC22crnECBGnvC3QXdLy98FlsWCYUFGBuESGTmeo/jE4qWQ
4J5upx7i8v3oexwxYaQEZJMtklbYKuwme736Im8fD3vVzaQ9Vto28pSsj0TiTSmTeTLMEbJe6t4e
CsCByIUBB0QHEcK9kBkUj4lGFo79wlPurW/4eYWRC5zZT6Myp1VDuL+jNXhQYrhOIUM6V5JK0TQm
H6BoHhUneQ4K9v41YGzTpUCWLndtvd+b6rGKn2JZMPIbwRtc1vO6nJD0PX+Gi6UVOEPtnSrJJoqu
2rFrmyO9vO1wd1WTkk+MG9JVfUoD0oh9KYpgyqYR7VqmaKN2MF9snLW1YjNORjv+qRyfwPWqyuMd
WsYsOOEO8Jw7afiP0nlRpmAwcQn0uGCQwdXlPP6AyZjfc//eQrwDYD3LpkHFZWQQbZ3QMGOoLdO4
3Yuz9cwZuaUCB7e0zZDPFXjVFYlPQIBqRBmEPrMIu8jEg9rjdIGg4Z2Wh/tf9JtQtBZuFH8mxt2i
i1I3BIRb0XjIWQT1m2HxOsBRsNAIwGHNLO1A1iskeovMPw3lou4ePpTaFW1eYt0vZYmrSVJ57aR5
338FkFH9oTx74T0ZXFGXrX4nCpbfAwE6GwumiIQCJcHYmPhEivOcdV4a2JNaxp1qQH6vHeuhEKa5
9v3sBUreVjKKLeuwYHBF5Z2tlP62w0d1fJa7hK33XKFfTETOSYMNnjyF/f/tcO908AiHw7IDDqgA
CY1ocMpzjiqf4Rr335EeqHBSGVRs9c63+61ebp+qKnEAFNK6l0H7Vr7mgSck4RXmgAu94UKCpweY
nU2/jQ8Ol+N03NEAOxOXiRXej5d9R87piQnGF4P/Nk+Me6OdDQMCVnCue8qY1ntklu6BktVGL7ac
gRA3TD23DVoR+SXGNhnRNo74/HkaAe12roio+2CU59mYHmVZigs40JlmsaF4kYwLgaFr2R47gb7m
ek1FE4w3QWLmR14PFz2Ci/EQyRdCfighAi/cD2vtFI397DIiDYvGIOTGLTh7Dhn+AgOhBBeJCFTU
BY9RMnSCsJUFRigFMIVc3UoCQfImlOWaJk2Y8RLN+9DoWt2mjXJR7GnShQPSd+/1GNQ5uq/DNTxz
T8DboppJaJXTnOf6RCLcBiwCN1TlIOvXfTZa3DVs1IRnFP6uXoPP/Ohk4OfeCEbWIRmp4pLn0IMT
IWvp5KCfWuWmAXt5+KRGQFxVSctM6aR2Nk2nAYO7GVXr+THL30fRomsK5u46kKCTqua2tvZZHT6m
N9pCoYhCuB4z25lPKvvc09BdlsRApZ+RgBBi0j/DK9Qs5fR4XCEpEgL94Zbom5HNh6mToM0kwBqy
GuBlj5btRhp4b8e3UCOojk2hSLQpiGJwWmLf9eybJo4MPzbWk6Z1YkmCIz0QYCYpQyOVw21WoTRY
N6l4YCXejmuu4TMyoGInxQzDCbVQ05Z+h4aVBZkXnCuLuGRhRg68YljkmN4r6P02Y8Yxc3EvQxtG
wUhrisPWe4JvJB3M2oVthQimJMXpsCHPRK32O59HDNUdbVl+5A1bLjTlAHTBrty+Lk7ErQdUxlLQ
7kCVqTmKQXJgiQ+FCBt5QAX6SQJ6pyhSzRD5tGM20LpFfgSg4awwj271Xa0sxBAkT9mkE/ZKTaLV
K94AGtxc7GcWyAmSMgkWr9AY39o7iVO8yy/Q193ZNcWw66qABcIy+tzBGi0qYXy6sI075hCFsQv6
ezDzNVTrMDykZ2Q1v/EknwZXWu7Xs6+cKq9eIQrDzC0lB8rh7+IHCy86qtHiJdESDRT/btkYerHk
/aiytHLPdijoiklTK8nTgP2D6meMSaMZ2hhWUuquBB49J2W7iXT87MnEb7X8kbicTTQZps+e9pfj
Ez2ijUXSYmSEjFyPDFQLVWEoawuwdhN51xEJ0QnUg7j+WubVJk9dJt8myp0EABYyLpoudYtPi5wz
N4D/Ohy12skTrjOY9NjqgoKcbQG4mobYV1124fB+JbTrhSUmcSarMEEDEv8JCFwCsE0dj6dEHcqP
SrLJdt8miKYZ/1drzfglwNDXO23cR1hZBri9yLXrx/ONvwKzwOYUOYtRB4NW7zA8mvf4h6dEObjL
ZYeCBpfZDx78K8FfRV1fiCtV5jPMdetJIFB0z8K11lBOsdH5a4EBkQjyPl6Um2VH3pd72uxsOFnY
Gw9nls/Cv4sX5uLBJxG/1Q58jtwdtL7CouVFNyW/CoA5688JKbj+zRE6zc9uzLayevSUTzlCqgUf
DtE2oJfUCXq5tvr5bQeZ9/2VO7IL7kuNU6DSEFJtwkPq34DohquHqL6/ScGoUD9wAd1Ka7HxF5Dg
wQUwLE6ky+ZQSePROWbKEIbkhF0zt4ZO8HEHd80Big3Ec6xbEcmdIO+RPh+tdONhGuPWScideTBa
aD2M8aijlXBmG336Fd9cUXtawsDY9mMBwwWBIGicZtDQb7MTaN0MRyYheXVokOzuhZ8u/fVXfEsy
WPrdOLCokhZ9gkV6YstulBBEqDF5f+48wtqjlWA5x9L6Wgkif8lomI/Mc0Oq2JlgtsCEqlKuY4WS
SVPK3fVCTSUgNmaIAt21LjbdBxdSifbxqOxowesBE1GLxa4C40ITWOwjnIo2amRWppUE9dG46z7x
9+rko3xWrhARdJFvKKtj8NRLqRojm/OLn/LL8dLQ+NDP83+gJbkkpuokxdlFO8EgT8RquoLNRCpL
K+KlcH5tZ3Ypc5fEc1LTv4UcOL3pAMBN3zHrfzXBijs3fwKu68xoHtvRIkHhwyaerx3+SmtjOxyr
0idhnUGa2Qkmf6BGvyRHDKQo6fDnZI8UiDaHpYlWqNRL42xA8wDoI6ChOcrrBZ2JLgZBCej/93N7
m59XGLRzoi/YQWY8AiChPuF57AXBlfg7Fp5wDMpqufEYr7DpbnDZJXIjeD8GpJLl1bWMw6tXLStp
7vodKjsby0mQ3XqVEJdI0gRcLuJv+3UUE/7VuHwTsqyGyG+8G/gvqgtlanKSeGFP1uRqMWOdvaS+
XmvGHR15UCd/FKfw4+bU3f/JOE+nAZ0Ymr/ZVhbaxduYccSNUrCtdS1RQdgAsqmO3ZYvzOJJdMLP
7ucSCIbKcGIMt9Hn6KNrybI7do0XDsWv1RtUgDQuw4jtKC3qVy+cUReVXmB2ZPmXtSHWzHYBiYW0
/W0WT3qBVjohSnFr6JGN6bVDyMIIROSiUtnH/tcv1A5bIzTezgg2eR0Ov679r2fhvUDixHoBZtLO
dH0V66zvIUkHUSJeDrPcgcCruX0isHscvFzP9CJiteAaz4kjfxHOWKdO/vnZoWyBRfKLF+Ta8z7q
P+kvayU+m4otUFBjLyQfMJlTw2R2YlQCzlUoe+mHOsbZg/Jwp/oEkRsoxx2d69k2Wgj0nWdOVgI6
+oSpNPJL7h+SE0VVi/eQKk9Ll+Eup7Ken9lmH0w+Sw7mL6XTFcKwtl8KfOQffKF4KZpwZYe1JWii
F79ZclOdg++qwis4BWfkt6DWkDu5dR1Cs5ypjWW9+cWuoQWXtt//lWhXvPpdz+DVH1LGmK5BY7cV
YHQZvx8Xr4zY1ty2loBhjXAlD/al//nrHLZF5Hg4/4n5gPkOobCMtYMhkWgFzLP0yaiog2moI9Vo
w7joZAKu5OgsEF6Z4iIUkaSbZwfX8+iX8jTwyTUgM0106eGuxOEpJevkXE9UpbfPI4scia/ywMA9
49JkuZQzEKvIwZvrUA7rNx+HyxYjEG+hmElaVxLevCqDijYQHS3hwc1HuqVbQIx6Pwx+6IE/hqhS
IevX7Kr6QULdsk/dzMGsgLLCvVP5QdGYGBfk6iYVpXh3bPpX7y8z/aJ0p2/UjZbAKrxfd7ULnmOD
tGMTXFPJtMOIbdfGJCn5Ed0Ie6gIO+GnhRJCyZuMmt3GKaLCT249oQi46EhhwXqnaWXd3vYXi14l
NzgXcKnt9CGkPFX3MPdnIiqlkZOA220uONPBF/O/AgSvoSSTiXCnm9/DjoFUmZcI2GMemVFbyBRr
afm/U5DABnSBLoJ+zfcBGLbRfD3MdOhYDudT1t1FQtonOKmRXQ3MbqdOHbjNV1qCEOnvfystiOXN
SFZ9F+or12snSaqnNu7bMRnFax1NSj7HpJqaYNScMxIqQehBX65Fm6q82oPbLprCo2x+oA0kzOWJ
T8sBP3w3rmVTKs4lwRqTyeCDneTe9/dIHuqWIj9CaKjaF9l9F4DMUdPn4mM2EbDTctp8kFwKm6eC
ZcSvfyd9YoA9umOooFYlCSpr4P/w7n3Aln2QyA9VB3x0uG6a89+zncskkM9SBPcidb3EciSX/T9a
C8jxMSEtb8UGigSV2J0TmuQkF1PXEEnFAKYtzBu/erFm4Tr9lqbnmxYGYKng/tBN30ImHH9uVLX+
Uy4NzBal7/mTqwA5P6FA/pSJBQQmCx/w8T45QILMXvDpuZxI5kHMhgoRVZZ+3yK4hiojoZEfDIPV
5P9jXc+y3KGaQA1Q6y3f5o7pp9hOTPaw3niHpssPX8Wbt9Jf+E99Tcso0Aa2Htsf+peW+wBKT6dm
tmMaaJPzV6+qttJGMYeGYSYm8bfo+VTzhaZLC34R07dI4fBbSCzc1Lb2DNj1u7zQ7EfWPF/ntmm4
OIDbXynJdQeOMzOASjvV9qvXr7VrFykwbxXwbcxNkDjeyq6PsB1/vbuILxAF2jUEAMTAcSW++wdY
AutouEW+IYRMvSagVw7dRaNHHCxnRPCf9Aqwd5VU5mU81yKoTbX7sUz4JosLDJ0UQfqIKgNy/0yG
0HYxahecPBlpPtDm7wMhEVM4//oFeJ+4D9NGEusoH1fO7Sw+VgCY9eVwhzczXArEL7Yxa9JKDzNU
1I7sZvSYMSrUFTDO4kL6bx+s7xTG1bVT5uxp/k6Owxjh+nbfHyTGMuZO31uzIrG0YXtPgyvYNYR/
ipmiGZvVqMk/KqJwGN3bZeDaHPgd3r2rTfAygk1G8Y+3wejYLo+5w+OA75sdpkPgOcUOwN0vRqo/
WOpKVkQxsYP8UaC6LZnf9arY4hTUZ/O/y0DKRq/5uSjQNDhwBTZ0YblvjP5S6FSiKf+PKohypWUC
pyMKT9s1wNlwI4waUJndOvYOfFT/aW5Bo2VsyaL0qcv7pGSxV4uw8nJgG41fKPdhUOvICiZ+nCyA
OTfAZRZZcYr+j/oTJxzKeKlIpCmbPYPgEF6nMKKJ6uXWojC3/jaXIRv7v7PRcYtL/Av+3kR/mbUK
XDouT1+tKeO6Smpk78qurcEOSYFcxrb6A8Mo6QErbvPzHlZLQXiGzd1b8RWs/XqPNNgbXdUBbzgw
2CaBd2Yj5rV9pme8TR2NZQFIyAv/np7Knn5tF4b/nkWyw1/74csF1kA2d7m2algGZxWx+FWDTxnx
N/3fJN703T3a4mKTTb3nJoWmrZPMxUCXzPXT4poIYF3Qki6NKN9Q1Y0XxQAy5qnlZme3E5l3K7af
PaaOAbA3GSgKRcmYQwWPZCx0wVzVAQc5IPJq4W2d5BXk6jCK+4eQud1VBJelxg2xA67bamYIXEOF
id1THJMWTK/FQGGIDSAkyk2C+u23DmEJ+TsHqNQBf8PtYQIWWHIzXIqeoDleNlCx4q5L4BhtmmxC
Y+yLXLbNi+NkQNjB5Rabh8HaoTaFjdZE6GQDWs/HoxxBXyiiTm7m/WntcbZUF9yaPjMramBajS1/
Psk1YjLSJ9eBB6Hf7vEt0GKNklwZuFmRgIKR0dx7X2AhC9zMxXI6iN5YAa7Us8VRmUXwYCcuihvG
nxUHLmDze4z0wBj1oTs6PDPTK96ROHsN2Z9pXOQhRl7Wc75askXpWbwJ93YVbdOJqZ7ifs64gJe9
lN5zPBhS57QmZyZUdLsTJqYLHxxbZVMwP5OZ96/aghMiXUphLxhdQStPehnPKJQRMum1nk2vYmjj
Z6d9JHj2bKQg84GsWCwWxOaJio9OgW3S96+yJ33k14yU+84unNM4MsfHRjkVV63ataTHWcOSYYWQ
KjCXSJ5U/zyqHNxWuf37Z7wqRFtm38BqkGDYA6FqUTV0jooOQfKw+UouQy+dQuw7dffWL0rTQjYC
dsTHfK+XxJwD6gofu5QckpjVvVLS8r/f/iFp5kKpY2S1hrbjH+iPqVtS7v215dAB0VPcRVmfUr90
aKmy/Z5piaeigSUu65U5njjwOhbgOXspw2ikkG2euGHWA5qZOG6cQTGV/LKp37iAEnqqZs8tZ7M9
CmXQIwp3dCQowP5OYhD8hWV7nTWcM3jus1V60jyIcA1AIHg47qllFu54PTWZ8Rvs6oDVEcWsx6SN
BKZbJJYT5/vWAW6PrAGwWboix3krAJQtuvSOOg+WMHfbnTyczFgxACTpUg7p0JK4c7T0KLDACFLm
Ty3jHO08KFjw+ubHQevaVMMQcb2EqsL9TkdMIdM1ewvbJ36pifRtbk/x4iYtDy6UTZxkR+m0K2pv
uk6gBxKnZ5ElVthTVh1BwpPFDlII4I5pJ/jtYnqt+z9PgpjcQ5YY9pCwwjpEBW8VADgiFo0M9n7J
VqjMuiOFFv8tP1hFClgY7qKIuUXjd7wZsTNHCMGDkxnOJo+o7n3AMZDu7XYQAWtkmpv2nTihUNn7
Zho9iRbfkhJCRIRNEpkNcQZ7epl/xK0qAyAdkd4uAH/momhXj/oOudyos0dkuh+zg8Y3oagqB7Ou
CbX9kAcT26Y4vssMfhh/hyP2l6HX8xSkIWGKaFXa6ePItJovxFVunphi/uRZuK7QTOoKjEex2qfd
I1X//PRjF4Gr7JaNcQYi4MnMYk5zCObo9veqKkXHsMFyZ1Ib7eGQI8mPSoA0h+dcKgInjoEIOojv
lRISwp4HGhEkHdE1nnrj0cN+qOp1qH56KMdFrPKyU2PIwkhKVuk1Me90IJYZGsMDGUu/BAk2qIr/
oPh12pJ9YIVNy32U+sOsXk+yVtQkRuOgD+LSMIdA5Z03Am3EVK+VKl4ezdTvoe46Juq7gHy4uBLW
8zqwMYePkbtQWrSEs4DvOJ60XOevLPBmQFdlOQSjaS9C7T9ElG9OcQX4aT8PhaSlRKJ4W+FDCgmE
a5odBvpDbPn395+cyvun6OqEykevX8ohNGj8ZUatMXHAnaTxCMn2DgndNgffcTkhU6sdBIEl2pwh
zRvXvWiSAo/NSUNUkpnkbzgPbErnsU0ZtcYkvjWWSVaB0jen5SlA/07JyAPeihdxcESxOKtX+7+K
K7v8BmgU+HP+K9P0nHJg8XwPHNan+sAxGoJg4sSpqcpubvbL7R9owWPgrLHWlT1rOo5cTtLful9v
QtLPMj2urtyfxvFjET6btf6r+DwrwIXpr8n5RDK2AYqtPZWtCRHMxqWyCkCz8QijCeeo3NyKldnp
/PN+Ey36b1ErXC13Sa9dtI6qV8GIM1vq9XJl6AlKUcAl7TIUPZyEwv5rFUbH/p1mTa26OSujgEEL
UUQo22asFy4IrysDgxx26gI1muWAQ0+OBbe6pb7BTXeSynToct1Su0tnTur5VtnXByCf6GxhdwZ0
qxzfYNmB2QcGSLKCw923QP2kJfgdlEn442EUwvf8ifLIDi++QfjoRWLA4mOHVfn6BJeuZO2tUjlr
JSzK0LpUZZyczrmq6kUl8SsjxppkBvyU+eNfmZ2WOJK0YuWr3C8WjqrcveHltYWfy7L9fyVbAHVP
bxnAdJSEQDR67NGTDxpzAzT9NdGysov7DN0qPvTMfrjyTQxmETGwC8+DbQIFZeNWhmnO0pJiLWdg
tvSZeai/eMR38DP72X15uRk+dOKP90SvVLpXlZk7pkoDYg+ikrPdqaL2lfGaWIzU5d6bSotpSVsx
eBmSQcUNGVXoY8Pf5Ql5fMyFLxWvOgI9ARoGG3nSFl8jbLGJDaEzYwH1Fw1VXQ46IlsmGExxV2+X
a8WTZiJumN61Rx3o57UbIBh1TrM83h8M3OZBZ70Jausi5FZnXvAvEb6YIzf1CPQKqVEV5353qkwO
KoQrpqlXg0o/FnSFU1nSBZjfmeqaj+MRXiYNnJPoFvfPi63IJnlY3Wu8sCJwLmtEsmbdKFAhFDfx
uoYzEj28p05B/Oa3U1CootFtql8hyTpPIM9Aip0fl3s2mjaI964hvvjxUtLT4v2hr3KilbSI2UJk
J2BJRJITMyzDjIDzsjor3DbIB5cGHJ7bYBRQ4ywEl2elpzsj2r2syoH2nRpsowGpXSIZmld0rJcP
hNdNjQ1XZamkvbxGtciVZzHmXd8rxzFHGZacRtU6azn8hgYm8Ec6/Nlq5BnK7UpIpFmq+rBOpEsG
AisPiPN8faiioAkq3LPAn8IjuSKLvi64JVo05EkWT4mbrwB0klJ5iHimZYskAaCySas+HpIM0Ye8
SzsNJYi+gcpxpHBvSW1Cj5HtB2kJUlY9QtvPxyUGcJ1LfGTknwjs3agl4o/T7rt3v5+Wh+MhwjeL
xYyqbXLKZVyeSTW92Zifsd6P+vmaRxjEwFo4BaIoBH++Lv5VJIVmTHRi+eISGnQBp553wOnG55C0
WrA0QfqwBVtCy2KF8mlmez0iwAh1pmfwW0hiX3lW2lZDprym5p9/id7Yoe5RBFMHJTWEOyy8oJh5
yzjtcIz54bPaapdiHW0ETWns1Aky4W8ps8OBRAB/GoNtSajorvUuyqxrWJjmzjD7D125gpH1xfkK
jnqEv0vOOh3bkGAjSSDzBrNnscud8fI9WbOvBpzqz1tvoroaabhKQPm2jFbJR6S5y9uQ1NwiWLfm
8RilDaLiJLJsA6V4YdKkhtX5/NF/BPwH5AKsKDM+NA+gM7/kRxVhYfawf/pZLNnvdqvfiTrYPMyt
Sk1LJLIqVLUFXlHurJR5o+JlHFLbAoR/MUCJ8HPIjhCe6bnanc6lrFPcprU3S3dP5Os0vuT5wHsg
yfSp0X92jn4dVncIG/UM5ZH3ZkoFRc+w7UkRlTqInZFVZFV2JuwDsaGs2kZuEPgacuiLVNQ1o9xa
60pEK4MKrpO8iEe2KUi9fRyK2Te1tf4lOQ9PrOpU8vKPiIryvWfEFiB6WBFggxf4qpR0L4brjFRR
TDrKJMNQ9osbilm+W/x4AIXef1AXQhdJEZRxOSPVvlpyK0+fXRTIoiy5Vq8F2jcAiMcjFFfjbinD
Mv/wGvWFJpW5nhXgR8RAvfvINl+9VG28v0a4+OX3eVY9l69IXtr9+RVvOfKLrHy5Xs+1lux2DSGQ
/mPJ1h4asUmtvOc+z2mhAim7DpZ4Hmd71Ky0yhSlGiD868FcL+Cp//NUxckoG+8zoU5mTSrDJlXv
XRtBTVfXfi5kmHkM7Lhv8RWq/BIbV6mM0YjaVCMg33qOnqlYun+1ZhcN7336uWXk3F6JYwxvWav0
XzdJGjVDU9JGBr2oZklKFbcmADQuEurSQ9cS7sU7HDtmAwCLIc2lwtpgwo+wjdflvBsP6c1xwMiK
jHv2nQ18HToH0vDHKlmBm6TwiUOfm/UCT4tOqgyxzBbPpphjQ1bnMVqubODgtyAGEiYaOw5D/EeD
rCiYQi/cShRK+Iba7pY2R/EFXo3tFZrl4CzCuWjzzGxvIe9JRcVmhOHv8YDcjM/PoYp1KadNoK2w
pxTI+8ZfyfBrK9bTREv7O/VNh9tzV5bCp1IXbdTt2O5qX7sS6C8W0CGJcF/HUE01mwIv8+0VhJ14
dCG6OqWdd7NyO/4fwgGSd63H9N8dcoMlZEo7RZVs0oPLMjt5n1VRIWpVpsy6VK5mi0IfjLrWLH97
CUHX76fWEfq1pqc2S6APGHY0VX8K0eNq0OU/tc+jIGCTUCqzZP3hD//O7++Dd1Tuy2eVgheOyDXw
Kb6y+X5Po0gq8JHOulle+qSEnD6kA8qRGT3zpjtoqjYfbOWmx5+GFgeoDefG2q/yPilzpDxqkkdr
UGTQgDzJ2qwEnRxLAbOeunk3OKCG6Sl7RoOTIi2ff72XFlykjj8J011jevXAZddItwOSeNaVg8Br
9yGXhm4q8SXK9k/V7HCLjqlET80LHblg03p7kbH+ijz+87M6gMBn5E0VP/CLb1grLlJZNUpjv8YX
AenfM9AZPHNa2DhfuXyOvMbfNqVcJSp75mdKyrOSSp0pHIionNjPkdVB9I2/1rZsgPHvBk4T6Ngz
j7UFn9IcSmI/nUhqvIRMhugozOxS8rIc4ZXaCx7QNs5nUXb0JW5aGgsGgbN2DMeOOEvSFo30LfGM
30PWTFYsBUPIGzLvMTlyY25gdblY0KIK0DfoeBZAFYUjg59T4+4gICZEJop7umpNBQdPeRY58QG6
WT8UWZI9bcHdBl/hO1DtOJTZi6HSOuqMMP7q993sYYCsOLi3a2k7jidEJOZOWgeJx8IietKeCXEj
0jci+gguvDYgjS9t7qjnHJL/tcaUv2OAa1PvCnl5eNAXE4wXJo/N1+ySl96mhGXzOHqSS07baAwB
rL8bImkzgNd/nRc7sohmX2eutW0Z7UYtOjWKQKouXPCQkDjSo+vHEGqlwrXwpQgcmPUpzsYvIssn
nBDz1yu601jAuX0YddcojDKNIaOOEZ17PsWJ1T1kw/Yd2n1k3oBT0ymK8EFzx9nTtFYBCFqMZcYR
o77uyZekn4FZnZoit9YeVZ2osNiTlHcwjngko/tRjl/KE97a/oEGoT1o2suRkKb05q5sOu9TyYmn
oI9Hf//z/hBRXzcRLL+fCIx+3VlC4+Va1mB/+YZyn6WHeBng3a+aAPwJbWMgBgRtX0ErDCiP5MGz
qOSEJpEPEbRSQ2H6pcZTAV2tlwFKuOsVu4oGMx+YjWGrH3RxeZw7tOZ62BugvnMBul9yf0HSVRng
Kie7XYLIrlbjY4LMUmDqbN+zXu7+BZDyekcS3iUSfAWNAIN03aKFtSXMMogytB6cZx8+I06S0dC5
SdqBWzrN6RwxofytcwnmnpfR9ntrJSnb8i9vwGO39Cp5N+jWzCvVme63UMLvjYdYtJ9MmTn5+HJd
A7ScqSX2iAJ8DtfWHVfS4PPgOKQbfRbXQ/fwRrmC+brFpQSdxRSJm1SF9XVYESewuKO2m/WI5aZU
gZWOBBgJiwwkocOrtFgnWu9/Clim5jD3lz2o/+vU4qs62ymrl0zwSA2Rzgb8hCtduh/ekSagzR5L
khCR8k77s7A9UcHBxcBqvuhYp7JjmLVSI0C8xk7uMEL5lBKZBhxqGgdrgW2bALJOGFJhQdzALJbF
uzzZVnaLbB4Y639RY0H5/+BHYExC36MUPbH9RxtXlO3EBaOVFVzOCdOiUIFtk+GZQs5FL0UMi95u
+ZO+9M5UnUfmZhhH6+4qLa9ujnpeEkLOgKCfmb4eqNJfajx1mfiqk53YHWrGXWRvuzBQPS7/n6vk
She49+sM54a+I8vlCHrcpDltsM82y7XMRIC2YO5L61wcMsR1U2KYKqOD/SMb1QEj6kHbB6ma4JDw
AbEO2EWeSsoCYDqRdRvInG+38Yht9+oh/64BYwJ2+rByJg8rdS7XicWI3fZSlWLDAIdfBC5xz5zR
vJqwlb4GQrgzfihfoBc7X5Jylh+GdPuQJVngNHzNkphMLPHc2PJpKr/vV34crfZiqxnfThoUqhIF
o52Dvb/XQu0RcSyXWZPUbXf4GK8z25SoMrlAe2Iw+3+XhYeGbXS9yQvX2ldz9nG3az7T3YyaWElu
N/SEOlxuwDvLXLrlq8HNJBw7i7cEELbGSbZo/m9qzmDDVdkfKvKLNGsyiXMZos1NEanyjPfU9o3e
qHilBs/4HkYgmQKvXL+nc6BGbJyemN2I0v4JK47ZsZV604YewnYvLR7kC00XIHUJJfSXU7kWtpE6
vsf99Gpl7OBPy7F4WW3s6qKgfhEufVtnyTOG7iK/OLdvCleUBjR/sA4zXztf1jdXI4JI3ZOuNohh
uToTPmuX9DgZDDRWngdmqJ9YWWbMuCXkOCvMdFZx55cb7m2s9UfHodk4pz9bDTi3jynD5C6Hsbj9
pdSQw2aKJ5azQMce3EK+Xmmf0S16WV1ZqUQlgRsooiE+EeUgCAB6eWD+1oL+LJ002IykDtZqoBiX
ohMWDz65220g7T4EKrHzwqNIq2tColnVsJ50+qIztHMttabqLzOZ0cVodlVhUeegtcFQqOszMjF6
/vWwdvsu1rrCLSiZDLrB+Uu1PQJUCJGUSxXceRYE3Lz9GrXTpqfstYjyoTFegmrDybB6rVs2remr
HLt+rIinpExuMdidg7cnCNmyRdPCPPTO8hRb4ipQwLBZb6yuUHPH+Hb2L6KUKR8DPQyui5PEO2jH
iMVyqV/pIXf/VyGNEkp7ZWXbAudnlAFNWz/drbIBbR7vLi+d1UaqQmORhMfPR3JYdopt7rDkNRYQ
64gC4JHHHEkTDAu/yV4Hs/3RMSlnZA9d99nDxLNM7tE5yjyK8myJ18zNoDIs1iFarTi0sU7THnw0
gjC68P36fbcvFvZ6HQ09fjQNp4YJUZuubHp1Fm26cHkOxeskUCsaSVOmc7mdtX+eeEPrkEGlyOu/
qzH+CSCTfPjUAE2ELkikICT7BCVq7jSIsxv1L0XTZFDO29IkTMUok3PDxIF37+W3K8QgQh+IG3TH
ZUEfOmpex1W1d084cAoBsjZF18oZ9vNi8U/ZExcz7X2eHpJjQ+E0wFOUdRmbgfMw8FmYEo+V41ZR
5e/xQb9P+Va/q5tCwaArxOXrbj9klokyNr9L7MiFaeuUZ64qNt/9skJLnj+hWNuO7cfWkSaCcSSy
HM/gAid+l/SniccPXn81OuzpYTiRF4gbgRP3A3QVq1g3zGh6765Oh2+z4QZ7rE83wGpconVsA0RE
u8jXTHNmPdqX/9Sigoq2gjIwq+IUTTJxaTTLXK3v5nq7Gx6Q7IdgV/rU4MVfJInkP/0727BJN2Qq
zzUVAJc0Pxh7FiDETZzkHXy29Yv1eEO7GR7kwhayDPc6aCqRJTNwwJSHLGuqTvEa2A93I572V73M
G5a/gZOUUq/6Hfn6AKddR+IQP9KDcT0GXluoWcSr9d8zw62e3XqvWc6u3UFINNNG1fI5SagepQoK
McdjMpC1SL6unYplZ2HrAwLZrErBqM+6cwgEqJn5qrXr+yqZo4p4wa+vRaaNkSEhQbix9UxgTupG
ZP6FfckncWZs1fkziU66XIWBYABmQUNJ2AURRohWKgOJBSMw9q1ULWK3phd+JbzGb20wfp7EW6u/
+kygfaC+yTZOKYi/NqDsjXNspcsvCz7BCqOJIJcFNeOEeXKQdec3LMtUNXBtS3ied53FdSXFG2Az
dIjJfq6UMdtiWT0TcrSyXOz+hUW9TQJhviQl2h2AnyyZhY3qT3TLwv+jZ5q2osAHmb334F3vBn2S
sNU4FyYaM4arKUuZmBjCN4c+H1HFbG6tzYp7IxsbhFJqvZwDqS+bEAgH8jWW7pNbV5nwKRVHjmXm
IDriLvt4UDgT+Nbodn0aUCIZEK+kwZalQWvcrkldPzICzbNZJRxZWUMtzDyz4oswfd2Rfnop+uYc
xDLggYqC0G6RJVMgg2wpwko/AA1mmoY1Ot4CFLwyUvUupECBfjAwBeKUx0zpduH50CvJ5UhcofdA
MatsWO0EEh2OjQJDRxCILYVMY3OaU1AAi/olmj+eLs88Fwr7+2kw79tDOQB79PRcUOw7AwTA23uN
tYZfFruRykTClSKt8Lj/WOod240TNsHNcrZRBNrc1G7blhB+O3wfuZtoEW9mAWUZCHuP9l5B5bfl
eKmTpkgm56Ynwi/P6K3+HJ4GnI8O2CdKnjFJFp6SIc6N63c+VJXWv13CF0g8Tw+0qHeuHBdM+dr2
pX585p0Q4uH68rT7DNesAao0RVfAGI144sUn/W/X/yDtZlpH+x/mif9bQLQa740SmRqqMxuF+ub/
POMu89FEY0tRcmrpmIQVugsr9tcAGwaQpgFK+zwtzpMIDO9rqusCippfASw1n2/yX47YeWg/MjaB
ALRy9/ho4MJYKEgL5+3hxQsq34TdMijtD+FpF6DZYN7xvzOkWTjtS9/kjoAd3lk1+ZpfwZCzEEMq
P7M4QM0S31oEqDO/+vq1XwvxpaAPzKLpy96HH74C0w8c8xNRjRYmIu7SbmhJMv9Vjeif6bWGxizf
TOEeadmOljME0VDdHs75GBK0NfTyX0yI66BKlwhg4DEj9ENQ4xaNqmWsbIKHcA5cMLgKbs68t8Ff
KUQHSy02EBGa42Ou+yw/qrFUYZAC4oFb66HXdzug+i0MKRmptejI0PCjpnw+HPeEhso6iE0qbd9U
gUfX2T2005pTc7wdT+JledMiHZukU3MvvxqYwXYHxf/1D2BL/lfQ9+weyX/mCjWHvhTdSXa/OrJo
eYPVsM/g1NjCCqQZknB2tjAY7iJbsWy3CEwuFbafVvlPcj6WdIHVpMMdi8EDx0uvcwm/DSMheL3O
gIhWQUurKuRdqtNxHcTAtO8pe8iM/2ZWpWHPaHX3tzYjyB476awVz/Xldo5PZyzk0I0oSpY+U1p3
ylB/Q2fDVO3NG/lH3JvTuVg7SLC1q1IZUfmzmGEwVR4bHKG/jAtpWU1/Z8T/WCE1th7M2L6Ohqt6
+6rA9jsaNUIJpF+hPhVAFs5AnqTPfompP/fe9ZexXQ16oe8ITpcYhVhEc93kbj43mBwa6MLNHBZL
4fLZgoWqMw7DjZ0sSnU6f1czxVVyc2rk+NGyKiTRDVh1h5fpCHHDO4XcJDeIjIqaulwJfWItPsjY
OCYr/m6lD4cwwnwrASy6QOEkUDVaazhjGvYMwzptEiB0qHzn4sWvtT91CvZ1OyXwwynz/34vD7Ce
OYZR8pwOkcpPmWw5lknuF5NLbekYq2NAaYUyYyH/5CUNFNG+TOZWbQQb6TkspSt4m+zXova10H+u
YK1CmN0GRwkMbO7GtNxQfim3i0MhnE6AsXL7W39Gep02EwvjYe9ZU4UaQ/fi6b9gqcolLZ2psWM2
4VWUcxJzY0LopkHjBrQeTpgC0Ywnyl+QIlgZkbYcWkvsIMjGuidwYeDdTBYIW8NJXykiuyLLjAp1
JsGJuHAJ8BwiQkdb8U8QTN2z3/vlC8w2cnRUP1xaUaiz7Z+HIbrkU7acQ28uT0x1O5QzSnu2asYZ
Fh2pQUz0FrdEeBZA1DKgJ/Swm+0hCbrC68dtPpIcQ8F56TH7YNOeVRnQB0I3JK4KT+Lh84N9mhQ2
/9OgGkkeaKrlGVa/un6otdbJ4Zl0HbdAgqAKlCVxDKBkqhlZ5jTQjBan8cLHmFypRFF2VV1X8XAE
ckn2zxb/CWwtJ402eDXRwDJvD8HHl/GMwDw+2sY5QsBPs/pmNLIOwHoA2EENWlmWEVqIKToJcDlr
Ajo23mzEukkj2LLdpWK8AltufCeN1vIC/pGdlrRtCOy7UHn66hdXLfPV1CgozaLmUDDyAsfFVWCl
LHo9c+Nh5dYDvHbYbjfmQYttnDxnjMCOiwaerb/EZz6p7i5TMrq4iSnutjVkx8HgQ1i/NBdovjNZ
1qDWoq+OLPUYoHG+INCl0WlR0/CHuH8xQEgwA5Pa+D3qFvzsWDzL6mRvkIPbwKmHJ2MzeSHDWVh0
g2QLi2bEbdyDkiNMv+jTGkuz/IZV4Tf/Uq5Ga8bFjN9m4ROxS2FvoNCaXBbgqxmF+TdRr88X5sOG
OtpL8wOaIFRbKKjBbaKAPks5J2BFuiCC9m4KrCZ4p9ao9iCxOOqJpZSz7EvGDa0FCoAqSLaMC7t4
ZdPBK/VZGYSONHc1WDhEeYPyUc9AXcra1yvWeHPmD8n5DooQdcuqF1Ri3oqz+NK0ilHN964zsu8P
23Ar2bJrzW+VsBD41IU0VMfJwphEavQaHzF17E5EMfb9tJzU4NQVjRZ2TaWsYS7IwrSHtYJq8hZB
1nokK9zZi6KkRTF4t8XrN9lq+o+cvDXuiuT1Zks/3+ivs6T4Vaqs05BawdziDZOpUZ0MjKuuxeiy
KrZ0OX+9ULu/7Qa5oLH3HSTdoYys8ukvL2aD/Yf+vAj+q/q83/KOMDKRm/TWrNm+kxzB1SX7qgTG
XDh2I6t0aYMzNBS/sSAZGvQvW+DEuk3uhxgyFZYs4XZzsEs1X5yl+9rUw817bh9N62qUSBKBZ7CO
Y7pOpJ8q2ge9mCr8VPDwOqOOM9Elro6ZXDKZLwzbG7M0DY3/RBjVUD7hGxbPiaEUiwvtVorY4ztb
ZdZrt1J4NU2RadGqteg5xSkyXEUpvyzBInj8lS4qX80V+X4IZ1Pf8LUAhGL5j0geg7M3MUXpTpfE
Ee//FXHMa83xtxfXfUP9FJLrazZ3OBF4hXctVpdWEYBBfKTudpGTh3oxFSoY7CEjkkFuZQpqd6ho
bsedYF6+voW/GAusL1Mdx0ZcsyS/onXNhvm5LOG3If2NmL3peJ+jM4jrNWy8dG/LFWxTteh9yIi7
DsfGWFBaJdv1sQ+KSkEKxWli7abvfvHZf/0EVCX9C3t82yF6w/npT635GINMt8zmxlZtdZphajRF
s6vLlo13G2yyFkK6KxZ2JjRkWquBzWF/5qmwJv+5dsYyz8eC+ptuekxZ3KGUnyTjHSjdabZxHQDR
XuiKTdqA0Br4oAg5zil3BvwVDLaacwTIU+a711GZZQ9cRPoxk2gpVhtLEUAqknzAHeV9SaubHVpH
8IPhNQaZADGHsptvjWM7nSDOSM9CMmC+tSut0eDxfEhT2ndc/BnD7uynaTNvq5fOUMXmUOKuQWTy
we9mIkyVN0stp+EfkPbAca8LVLqDa16aUf8dDmRYAPp/88GlPhf8eU4F8nMkEL9kk4oCWrt0FAaD
0h72cqJ8HwltPqU6VXhdOxC9IbOwmMdtf/8iDjnVhwxgO2RT/Aqba/5U5RYIVIN5cDU05iX8L0Cf
8yI6f5Spffz+2gyHclG77Z9THIQhpNv71CDuXNxwTAK4KgUqFpNy6cHs1qiC9UviI83RFH4dqnEv
jHv5fTAd0M2iteaIjEa7L8xniW7XWdFrPGVo3G1eX7/K1Sn8v+Kv4oZ0kgljjw3iKBhWM3kiW3a5
PrcCcReOI0yy3yH135+v7jwnrqxVniptJAsKU98vMftenoCHTGaCqOuDRYJYivr8JLJXi+Unn6Ec
Lx1rl7O06xFD+0cLt7FcpjR7hexuOmF5AlktJ+rImXp1gb2AGVQk0KZAMpQ8lCaMX5dOko0+jnh9
PKrg0mTsPeCB8QHDzaAl/EAzUoW0mentcveMlWeaWSAcFTpM4tcog8+/ztnZK4C+b89c4ZXfIQIp
y7ic1u64/DM1VPi0K1ziBubtCGCDaOL+pHzTaFUScjSduCIyJr+caxiLQ0SA7K24dFdvsJLWMy9G
ddH4FbDI5ztJJvw/XjJ0dTUjloZUFkm3HfivyRnbbGHwQKT5RSsT2/8FR1ZkGs7QfvLuYGnkZV+b
7HoJcXsEDKgbYxmIRxA9S57uaMn32Fme4ejl6+0pIJ+emkeDpQCGTI0AWA2PC/LQVt5c/RURcJwR
XM4Enr/OvxQ02tkK6rVR0/IV1480t/rhe0gs9OkOUNaCVpQtehh9R+b0qBnQsXLnTO5bIXq20p4K
LQHm64VarqNNukBmDisHvgXmET2iY0n+MCDon5gh24UPNqOBn+DUnSIybA/rJWL+KwgZ/Y+jdwij
RzVKFNOcMkYTRaznC8chFVaAuvaaNDZkMTApGFv82+I2d6LkA+JcfH6QcSdtFx+mHAVM07+HU5R2
/wyQHCiHEXJifRkKxciE2yApdg75+NHP6uTbbSj6ofxhV1yNXrQfYH1oa7JjJS+c5e9DZ9MFdgCU
1DMh8UAVdzLr8OcL0645oGIfXpr2GwlI0KBlzlN+SL/nUqdh5MK/90SwYoIyaXOYDnODTuRV5fqE
R2wIeVgAKQEJ3WF21VW/ip6tuRGYsb+lslfm4eZjb09ezREnvAyJGawvN/1zAqPQVGfCjkeXxJUU
jxo9xr5tI0BZUntVSb7GQ/EW/Ym3SRfeOWFXv68K6GH3E9GojYvWmtBY2+edZdV7p/3h2wePSsNh
F31Z4asBYB4qVsGJD1+7K1yh0CYX9faLtW0Qcz6EJDoQNxp3l5zQ7oHRIjQLXdTljHFyLOy8iZfW
4tQP+0GZeCpYQXs/dNpQ9qV6wkln86JVRLR+b10yC3xcumR7kDqBBIR/quQXUYsglIaQR0buxb5E
mR1jAe9H3kv6wEGuJluoxM5iQVELCCweBC4uBYhqcd6xAAZgK++k/9WLcCPXyRAwY0BVjqRdHC7B
N5z1zQ2F2/Iq7d7I5gglHvUPPiCScTNnk4X13jH5my5RXHJBqTABfrsovnFJbht1NtsJ0igi7Sgx
uxHfRTTcT/6hFJiUo9OblN3puHQfyGr8V03hGtnrmMoDxctJpw/UV2XKDnvo/CMsPUUFZhzK2AQG
Znv7BdZgOxOn1oQ8FW2nB7qHAE0UfN4bi2rdkzRvqsFJRCGy7QPmiJMTLEcBnu4zXEX8LJMvjP+Q
fPZoDNQ0FUPoayhwXUaqM6HStqhhPin0rljoNY6ZzidlOs9Ltl70BkubGYjy+OLO2vb4K8oSVriZ
6oSkqUMYJLBb1nFUBcl3TORMNJkcL8WpB0c/tVjexM94o2Q+OHo6SHYlnTr7hbwIX3wdhGlMwWux
OevwvGtZnxN4RbT9uRJNMiDwYdB99YAlgv5rj+BIhmrz/+vW+5fFVlcDKSSHSnVAtiNOCQYVqNKs
q9Fgot1Ku1gejfXUbnl/J07bW1+CjwU50paGhtNawXImuROrFz75dV0XCVwC9u01UtzVcgmY7zxK
ECQVFYtO9kGAmhV+2K/TOTQawJQ/u/942pVLLIyFkFNFn7ZpVVszTwckX0EqThafRjZNsBoqVD2r
WVr/MWQnEw6VUEi6RU5LqUyme/QoZPli2Whim3vFllwIDtG1y7fxCrAHgZXyUKbTzgqhV6ezrJRD
Ul502dMR/VfXCk0v4M+7mZcoqaoooKWiRx1jIVK3GDXOCEGfpBPL8A/rG2O7lsByFOpL7H0qT1iJ
TwQ2gFd4sMFnxG6VEi0R5vKWuDpIcZDsYGAQt7mUEWnFo9zyPs0fPpjX5xaRt1hUUStJDxvESxma
QD7z0Ww+a9CcguZV4L16Omh+gEOwk/Nh7FgmKvpSwU2Ju2nDBhF3se+qms/HGu6g86ZNcv/XTSpW
m2E8sW3t2R+l508UFY/UbClls/zp+3+VQe7jVnsSYijYi4iRo6nsh2/rhJDoehSsksHx14oUx4he
p7mqVgqVq15VjgC16835tXmNl7fZ2FNhEXcZ9x0f36H0mimRqjBz+3qm/ukMpN4GbC0iQh5guSef
ldVNftmsz3TkJ9W18fltzzvcgJ/7NCYcY2O1fiux0ZfFKOp+LomWUHJ7V21H9GD+rN80BTpjWydY
bvR5bUL9/WQGo/QeSbAAEQff8Pe8ITf00rcj08YFCnybiboorVH8Kz2TK03Q1pujG4Xgx23/LRr/
5rkQmX3UNKlQ8Wiur1jJ+wMUvROxr2qfQIjGQNWMeZF6aIbBbH9282XVjtXIgCNIWZmZH5qnXD5y
9P4D0LxkMg0Uxj0Xtm7M/S9OEVKlsj1h2E9uWepj+eMSb9v+g/+4N6jJjmbCYstH6Xx/qSbjKOd6
czy6Tm0K6JHSpv3i83Y5tYQaVZsaTUOu2beVJMpEc+8ANoDty4qpzm90DbHDTKhz9NUu+KgnASSQ
oewvXoZDJ/8zqg2vEvDD3W3tF5jJQ1O5jZ8XGqO41ia7tysF5vfFvPz1XAVhNUKgvE8nUjLoYVrt
7ahOYTRMEOpZeLpr49wJwlvAGrkP1fJHSDgdLcaQe5xBuaPFG06+hszqLLjGo4g9Yi5JF3wRyVaD
+IjZqj/h0GDfhRMnV50HnPk9fFofdSS3JpnyxTD2ueTnrFl9a3M1C3blZ1GdOQNt0WN/+AiZ6CdB
BZglgjIXGTB+wyBQsOLCTLuFfYJ/ztL1sHQuXX+Vi2DyHFHw65ve/p3watzo8tnXnVLPSkrsokIQ
kCcno47cNPl4Kc8vTJztrkqkfaGwJS3yoI4yEAad5KYYlY1/OGSVmaoSRKZe+NqfY9vICuc1R7BP
eK28G4cYiwC3Z3qoAP8ty8CAAVQPapDk8TiequIEgy+TwuvLmPazDT3HUY63z/IYB6hTW1NXbYX/
jY0Jst04/1mXMI8B5wOmxNUFM3uoM5F53m/gnk7w2LN1tYnaTDEuFxB/sL5IAVmE3Zn1ZJzNn5br
yTBx0BfrHFqvFjdnyUbqEFMECr6zcgdhGqjqzxstVCN1x6xUczwmVwVCgmn9QLWioV1vRvgwSvlS
dxHg4huyMT2kbWshuY4rWdpSBSr4FJrY8elq8YJ0fv0F8ak2o/Lc2HRVB6HCQTg/YdF8s4k4WTqi
Q/UWuTl8lJb3M8ijJ1VN9GHJeu/XsdfmzFj+WliRRxSI0aD2B3qJjic3AO5NIZj9GA8Q173RYzeC
cbyQrrjdJWVBS4VPAQuWsw3c9N4WGbh9Zc9mmjKpIAdfdmd/9RlOS9yfRo9pXGnwLuXb07rH18gC
DxJmL0oUchAs7lKdVlvFtCmdONDD95iiGXK0Mu4xgiNl0wb37OM2qMe8fzeUBjcoh448PQPZC+Gw
GbyRHdciwgY0CIQZULcOHkxcXn1g+bnZVGElntfUZlcNSRpMjBaP+FAabY5Zod/xXfcv44ViHKvd
W3SH9AabSgSe0hz9RmtbZL8D256lN+aMIqkAL9jZl+SasPzXJpinGnan7ZK6x3TpU0UH7i0sEzc6
EO5yxsqZgj7UOBFsps+gcJq1tSEDzZjXg+6tl9wlIFlLOggzLNeTTEA3EBavZyy2VIO0XlrnIqzz
bdDEpDeEcWZSvDtLBu/BW+uv/+fcyDHnnoUDNvUCocGJLhrv23dl+XS98TvZHe9Fxh11UMsSjGq0
RPtE3wEVOY6aXlk//y4ekFD5xox8jQyj/WWfLTM8GkbCFw80d373mngoPIPvbo7MKTtKR0+s3yQ8
o2EMtNNH4Gs0w/cWBjehhmhUNImUZ6OjoZdtxtVp9ny1VP5eJ2QXQkIudowrtKNnJu2+bJjGbwHP
Rdjs5YP0ASGtIRwS3EXBKv1/UqQ3RHwWgNSCZ1hn6+2CyH2Uha6yiAEn+Ku4z0cWh/dV7gE50N1n
7Nr4C9FTeWrTp8SxvFnapad7E6sKosvb/i42EOBfAz2qsUwMBlHJ+QYxpmW6wmCUqYOMlCvP0AXD
UUHRM7pYhf/HGqiqQxBcVg0ZpUFH8gEoYzEhZT2fVx7JBnroHNIOr63TTcgJ2pJSsC5fwxiLV9kK
POAabX5dowW1CMxZoqrvjRoz8vPBmMgigWieBh6ox6jhZXsakUWL/Erk75W9IhyJ0abOaKZbvb7q
WFsKkW4mmnC4uo/Q7GCgZWiD2RY1bZmyaDUefJIF05rR8nmq9hZ4IszX3seTSVraIs9ot4Trne1C
St5uQUdsVVUlkrKd2A/J4zsTW6d3c1gpI+EKOpGJc7PtQrrysWrBJ83dGeaY3eYF/rKV5gjG0PW/
CHeIEVHpxxwHIoR+AuRxdh3qvjq/sVvuQB4Td+8DIgP7kNxbBKv5fPm+A1iUT94Uxp9jHqIoLUXS
l4PvDfwk9CdE9qVTNJzocw0wmhQ7Io5cnQV/B7dU/0Vm68a63p3MSGhxNX2n7dlAf3McBmXcW8+6
GzUtwc80mSc8+jKhXlGsVotO4kMSfqv6fBv4wwLqVwtHTOM0fKqWiQJf6aQ3Aw1J1XoLn3oFm6xW
OCIKwXuaLx2qANpCsL4eJWPc612KvVfoSMxqAEzBFlEbJso3xwOREpDJ/LD9QUNI56qjiu5ZYdES
pjG7AQLCPIfK83uwjlijSTIwkAwBloobiUfXsbInQVwWv/CgTNKcGxT//6VN3S2GwDDwiWVERwKx
YKRFDSewxDDTq8Du4oim5KAPnes7MY4oHIaLbB3KaXj8Fc3TlOr5PSKnCdPQIEYJFEHryTvUN2/F
d3VtlZMFrMLrWykw3I2eMj0Za/l4G4PXpn/zffTHOYFk6Iz9Z0D+18Z19NBxLG9xRG9au2NNDcho
A/oYd6nAniLsurrWc4crnxEPVWp1W4Gb5IdcCy7d/VeRaNzoYqgSCGt8xKg/g9U0+FjrZWSbSwbd
IM9eIcC0ZWjQMinkDwZELvjRDvxV3qJzm8filGV3pBuiGRCEzr/MEZgJ1GSTv/44+mVqKsDINxsE
5sPFQOMFZbOUwe/idEvVLYyiaOJxsyIzEQHregGGUD7YvQMCTAvnhrr7MeU1fU5AGgp3Kci7AQ0G
QYMzHK/2cpH36IOXrBHXWl6Wnj07enwGaWINKAmYBvm7PyxSBIv8DWYl0Jh+XM4SdpAZU/g5kL+L
eFaWAlC32bkVE3FUtxGJ+oZAaIQtibB6SBdKHy7CKKkudJ+P22R9LdkhbrwO/d/jyQkBthIVPtSD
S1zUm1CRcAyDDXmLpa7rR3IHDxGsW7FYfvmMDeSt856o08MjlCEnm70sRc9Z/FyBPbRIovHesM9P
brLd7Jm07BcxjPEp+u7SWECZqeyRrzo3hYGP6df0NhXBxzrvwKnaNaN7NBL6QyuM6pbttyoMLz8b
kRIk+k4r6+E8CFqVsz9U92nEXLlBR/KeSYJBYVqqSqmSztZ/GQXo0d4ok+w2gXb5gdDrZI2gfqwn
ZpXkhs2WVJYjD2D20iIDAisOYAo0y20zfQ4KEH+hKsVkblHniRjiwQnkEJnV/VHn9sqyL6ixN5k9
Go8Rg+t0HvgnccBeCFYJEU3WkOYhSrMzl1sQS5Jd7DQmBpNmpGu8YZMCkKqI0aYAp5HoxHCTSp9g
fYKhuKztFSD79JOHk30YQJiGiN/UDPVCWo0wqjmw/3WdBYYGMZJe45TD0dR1Dv/mjpuy/dwvrRDo
cr28NUIGSIgd3j8JJQ+2xTvaCR3I/Ifc3RGv9NX6l/HLQTo7VDLu2B6AJ+Rei9YanS3Q0+0tnmWi
/NSHn2Ap9WdQzXPDaBldSLIErvI3TYzIO0nkkyHy0t7NU0n54c4JGBN4TqeJYF+Wwuz7BBZQuP4R
SkiKVlFSHeDxLRVeC9vkIv1HtiIN8ib89tTkAGFn8Ti2WGOWROaNv+/DSDo3wkytr9+t6+RulIBG
AfKINAU7X3xmSskqrsm4lE5UnC39gZZv5ig8+T8szrPW3Bvz/5B+QSIFaFohfDFC2zvVz5gDE6r8
LuQjkRgg+CHrPiBmESFN12y5vWqgCKO2VMALGdEYoHsx4OjNHZF42fYoRgrabL7RGW39k1I+a2Cb
S5M6vROKCGxhK4VKmSjlrKz79oVCi8iZ4VDWeGUYER0yDuq9WKqiMWDOwVXnKBLSoVPfnqUu5CnQ
eZgAl0aX731w/1WRwdx7hEjgqdjwVZGJDRanW43Ub3QeFJoZg3YE4mmXtZ3rtRf2eF7xDMnt8tAi
e+0Obhc5Lp0g0R2UqAMc6c7o+vpRB+Q4rfPzDLWDO/HTt29G4ukj6FCbJmmG5juVUPnmW7VTF7BN
HwY9BUAkcrCZrCuCbZup3WZbuyW/8cwttY0+d2Nq3rIyQ7BC3Oiw3UAIzF0HHdpolqpN1oFJDwT2
trWgToKMjC1j3nVDCD1hl/O5oPkLZn85n3O1I70gAT7mC2YPTgqaBUMNkVuHoz6nkN3PdXddFW2g
ctVNKB3zyrPj5mAHfTrTLDgeErpe4pBnaOTSyA++3CjoueHZzuVN8PB3Zi6Nv4PpSOohBLvq2xzP
z4JeS8JOL3rzzm/tlYdZfUmWuEIZUPOTxoagwuHAgYXPYuGWksiDzpUW7/JXtuEsLaotmWTKiFCM
F047NBT2f/4agEwitWJWkYYUlEZE/HIp51Tgyd8oI6cHBI2ECVGuubrG0o+Zoqp8g5dy3a3oHZ55
Mp+3FwVPcAnBd5AnoeCgrDa6hkOeFsM+7O8lyusgEN49rzY+yGbPZAD0LTmpZakbj9NamlOqWujv
RRew3pqKoF9KpiuOMkoivT7MNUZzUeJSa0XEAe9uQrElhCub0X+QVPYuwX0GqdnHNS0AWzazqiji
MMuzDwEDeKZenzaOWbVW0hG/Tza8ShieCm/r+l+vKDSIYH1p9zYPql4411rNyT9ZfKhGMwXeeugm
mFQx07sw7JxlDU9GxazhLF+8ZAhYAqrjFzIT8j3CnMiM/Q/i+KVbCfbJaxJs16QkkJNJEEbcJ6j3
ivpJZ1z68IWZWEFbaQYIMPOU2VI7i2spOZ7tFYbFUp55Ah0Ast9JKPxHCn7/fwNyZSXabsn/DESX
Rc5ZpJd6opLukPE6Gf+32y64MhWsDwJ6OMT3Fok1xvJK/oWLzwO+IzP6FhKpsO0c9YULeEV6ibff
mPhR3+8aMIyQtLh4FVbqzGO3LhqtV2GT3S+rcX6oKO8XCdcKrjUyz3fqzFFTb7om9QSBS3bsIbyG
5OH8EelpjIPiRsyATWGGGaZOF2bPgbr0r5sknb/AGszgORMtsKzZXrZG4FKolHpaFTSKXQC425L6
Acw8co8G2Le1QoriHprVJtpVuXAPEtP9hCnTUAHnYAIyYyqA1+gjoi2YxcadXzCZqRY/e26knpzY
ZMy2aYSFo/QAl8I90/3TAkMQ81slG7UGA8NZ9FoN0b+y299miY5UXh1sTT/l2zbVLgigNb4hjehI
TAluLIDL5+Mcdudo8WauKrofUVeypd5+C0oxbHCRgRU9Z5tKOz++bXVDD8TmERB0Hp7/DrPgqTKL
m2sujaMrKSymUl/aPeiOrLou7j6UDl1gqArH+lLUK5O8ch/vivVIsX0sqlq1RdQR04la4/8JSiKd
gtZK55zcxuBdOYYmbpozSCOPhYIn0E0Bhmy4EvzbVJ6ovhBwXougBcV31lJpWz1XIMvIOIld1J+q
ZVlMytWCoxPU2V//mwXSNEs5NXChnZXMVtx7KUjQNN0Z6kA0ceyLViqKUwOZ3yx5NvsOxuhoKezH
8XICpUI2PVThCXD1syb3jtjxoHiN6zPQP1ceYyZp4fJDUUtwDmHXUcd6YVC+yGpOtsELIY+txEea
NBqsj+nbct05v5tMDd6TTWDeLQrEAQq2tKe5Sk4FpkAfLjKr07OoOchTwwmtk2uuLSRSRbsZ4SkK
Nj+Pvm2/KcmSLc71eGJoCRPyj+a+J49fQncXi61Yn/l6LlUzJ8TD61Mij/DVr1VWSATIXlKyMFxo
eAGYJ4VcsTKZekPlnvsb3Qt6uMYiKmjTsvJXZwUxuRedbCa2TNZABnXyW4xewJo9FnMpx+mk/T90
Fhm9MjhKTnkBbYWBPBbkAkRaxCdfSAs/qLRpLfQY6/oI0WWIwQgI03nhOaC1OGtucNf5KgR1Kd5T
lP1A46ZAxNAnVjk5YHmOvtoJ4TFTfn5hpZGqYlC7ZZYTyC/UwZn3HDvzvA0qwY+7RcgPQOWWTHhW
Bf/e16/k+4ZdDhbkeM5EsOzGFDlOWJBGBaHYdlOUGyxm88d+XylORZ9pp8YcwthboYfEUSpvdNq9
CtR5xo/KAl8/vW6c7+P8nK2MMFMSlBMWtSEyF8039YmQ2qGMPPMc1T2tueiVy1dej3Ezj/DXlHLy
ws1grbfVg5xIm4Xw2QLU4fmbBQjOenA8Jn6ToKriiR6pLXpJKt2Uprp3DQY5JSnmJgX1B41Qos4x
U60z1VlwpLp6DYRDhWhonYPtCG+H5SLLXYCmzBIetH3SOw6LJUnXvuVvBG80suDwf5+sj+c1tRwP
0AS56zcpM/lk60XGcBzvHzCP8uc2/i0fA79z+LxQSWDsaWV9/P1zoESwGs4dumhC04yEyWezjd9Z
boM5KTWUpQl4npso3j1EaWkMwERbn8nGW4u6FV5RjjLcbcPu73X9ve0P8QPzrMCAe6weq4vvmBVr
7wQR6fIfM3qeQ9+3gmVCgwQhj2Xn2wNGJJ6QwHZp7zZoFBu6GP4GoGvJMtBWxGE8mRzKK4UNCV6Z
g3J0t++YgsgNamdCA4b4R6XELHxgy9JwVItne72PiyaqvCSGnEc4+32PkdQNAu0KTyAoXhdJALWr
LeP8t68KebyhA9GAH7+H3A/18nZJb9JLAczpKJ9DdnTnsO52iP5r6FlbVWAQWTLQuNMk0BO3VRWe
x3BsgSGiUXGWCyb9JvS18GX/MqQbo7r5Bu8xk4iE8NoH81PXjwhBrmvj5D41B43xKrdMmmO3+R/X
PnfSo76NLZSM+nwI201TtLLhT6TP9uhVo7pFHIm/FmUII93FzepStw4jf6FrldBIxhlhP1grgAvO
aBcpouzQ+L82uxa96AqAIY+uxGl+HK2fv/lv2J3ew8u1i4DG3cl0xTLNOysxOTUZEjaNlsbjSWqH
ycpcZy1Iy5lCqtCXBFNGnBcSdFdUOcq2KRlRq5WeJWfQRy6pe29PV92ROjC2k906qDArs1dEgh6t
huLCVqoJIgnDbCFWpCJ/i7aD+mApCrGr0pyVoLabBG+Ot8Zt+IZh2U1BhImtKCH/5kLmFGyknRk/
IG9CJm6Kx4kwx2Uf17RFDyiXAva9hcOn4XfuAh4GNg+eDyErzghxtTikVUWAD7lLGO8giNVc6kQ3
ipMxdZUgZWkq1imbO2zJwg9oKg2jcQxQwtx2clCZAyN0gjZ6WwcVDaoxEkxZh/DxxZbbJiTRyiZi
92/bUbQcilq8Pbou/rcMSYigFCBHpl17Q1GIuHCIs9OtAHXwLScby7nKxZzilCefxGsNZFyrogKJ
jPm9OA8Jb4iBlq01Da50aYvuj9AnhawVQLakvrcFwWIgUpI9LopTUAL7R3w5nQVPDJBJlDZZCMTA
hd8s//MXNDDKWB3mbypMSdUuQAarnXMPx93fbTh1qofP0WQzqM0ZRcJuvUjz0OQCSjZvbzpZ8Rqa
9UhOp+CZqHFhiQKR6T2UTExF2Iqgv7a2hnRsvK3W0/5FsdDYFOERBfvKTf7BVNmehKiF2LsthjRx
UF/vAINdFx8BL3EjzM3dkxbb61nimqXxJ1lB9U8j3n6kBF5gPyDbOfXyy/jIs63ZCFSHdnFnNUfs
wk1jPEPhPotwFFwDVhZQ68EbTDeuHIImctWopyx0IjSaNNPOcmJjntDFL2eH71ktSFDXfnO5NJKq
YeatG5T14c0mXxKJInlfWR+zYclCvLSutPKjvd03/3loVJBVqAdQ7WQSt6U1WnMqNysSOSrHp5CB
Srzh5W6u1MoJ6H3wLCn/tI9sGq3nODrFxaXhXmMhNLpUKsf4nTW3Ylu9dOeMoGE8YK8MgSoqiiP6
GudtM3g2TO4WvZ2roP+6SefUp5w7GeoQBcH8nN/7+48+uHuC1tvICryULbfA9A5HPak2quOQtOGS
aaHqRkGG7k06AVk9ElTWbXBZV/WFWedVolckUGtaVufjw+9fN/4ClbnSTdDMVj+yBEj3YApv2RBf
crtdDYpmpOxRQQ4VeY6kKSOge/QNf5doW2iDBHKn0H9o1kFL2/S/vcxRm/NCizvcjwPTsNHUPtxW
vql1kOR29G5TMzBlHfNUjgfh4EtjdIEbFkL9qxTYTc5H4GpSSNuaFP7dOoC7K6zqWDHosKhE0311
m5ZcA2CWqKZ+oyUWQ5TXeP0DBE9ClonkxbCez9DZ36k7Ti60upIxnFZHlk/EMFfTf9NxtUoy/eEp
spGorUXWsZx4gUIIDN1uB7/tQUo/IwAYmwfI+K3vHrCYA4ZxfaILRNcMJPx+mC2OPIZb6w5A3RH8
bAI+aSizisfiWLk8qyOpjEfmFBfPbl3DbkTWqogOQF8sMp4KCqeprcqTXmjI6iURaHMsftBqQgsl
wjuUvY3rOtk2BhkhPcNJyRnaDCqocO0jv57aX7JhlhzCetHDvl+KbgAdYEkxWx3uPE8IcygoUZyB
vxdwNz3Vf7CWHU7ctkD5MVYAEiUVgzb6aY3i8xw5xiU1Xpm+/ZLAqRQ8upYz4uuLJT91By++UGYy
Z6GaHDgWc83d3hZQZONCa+KjIpxzIluqX4u9OR3Kva9yDFF/gr0wk552uHNOApsjsrD4xje5HgWb
5MQ4nJBiOc+fKtqWvgMy2UTe7+6uKFe749spJoXr2jOdEFwlnqsJCI2ZP8OW3pkoXHEevJRORz8e
F+wMQ7KVPcbMAs/KUliYYuMRjVgTv4A/ofQSyX7jFhgcA1bTKuqHkQiiQv6JQhd6YZnwKMWW3YL2
EkRdDcHfEK+N+N7wKtbHufJ73KR1maGQ9lbLuLwa9bFJHzimKcNjCxXF5aWBWFWEEAS3EaZqy6J7
U7OrCN1GyxdN9c7j5pI3CzOnYTwHdZlwi0llmitiH1nWbY3R+GRuJfZqcRpi6BRBomvtbIDEpBG2
iOnMQznD/b7F9PEu/lzFmdtAq/4Ot6ksZv/fmVyyAoSWLmxrwBZeR+3RZkshKRBWskA7p9BN3Bzu
WfMpv7FiXwyZZtWL+WKt4+Yn47rIP8uLfaip5NoiVXu3zht1OCamf40xYob8dyG5MD809d+PUvai
pTZk/F3jEHxBEWwB5kOyp3SI4AUIBloXzxXNLXpyllKV0g0BSqbNxK+HlToWpWVEIRgVjgxS7eGR
4AsAbyonchDtR9QmwF3HEIUpUdX5bx8qfijOIn8ElG4YTui0Mclh6GwyfR8g1D0Y5dAfcNO4IcwH
1Es20bpGIRVBR6KKij6Zj9V09qxeM6C9onpHWuLer+rC+7XCi/Sa+HmwJAI3vkkyENSNdC9XpbS1
TI9Ze82k8movnBisdydU0fj6JDsRoJA8fgGFmwRCfEpD8na85CtrUgyzVMIFf2iAXcP+UbGwMpI5
Yo66KmrISlGkQCRM4givPAJVvLukPPqmIRRAcrVymOBpZ93sf3wPTuDDLEqEzU3XH+ux1zJk6xEF
i9FT9Tz/djyz4RZWhhqiOuWvUJ58tWocsp7xcjvboT5+HVVrbMyeQBmChpRlE0+B3/2YqaaG+ph2
JV1g7cqQLj1zx9tB0SXoZiXSqySGZ/bXQwgVoIfSj2wsmofO4RNcLqoF+qVGBRkwjVvF8CX0DRGn
dHK7XDXRlIqWm/38TqSC6k6rVp2yz527itqt03y4+Jw85FCtaawkobqbuEe2n1IYP1okjfzgCeuc
eNLEIqjpMnvlWY/l3t0b7zLrE78TexEF9ghDKvuDi71vFvkeLVuJe3one5UJGJxSUHm86JKB8PTL
MQBEXwnyh5CwVMFrIFMUmDLkmbhxXUxxhZNNSOyQ+zvZBA8t4nk2kL70tXpPgdxOH4On8XuqRMsw
aepNtHcvYB6bHAOUJQrRIpOhXGKIsVIPIR2S01O+ycz5ax448DYtJvw+i6OwcC+6+DYmHtfMqDW4
bSATsKXUtJ6g+PqjqShMOlznS7CSDsw9T8t58sLbSoJj1eE7i72uk7ZoMS6MpfZz4P9bIfVSvDvx
/tFF/NUs4ClM0XBqPdbJA5LwYxoKj5tVaegPVc3pvZSYzprAt8lOQS9jS3xSWVM1T+4bv31qkq46
pD4BWBCp3IDGcPdmRAEbtpEmNsAyhEBey1ATy6RA+i4JOdMeRKcPHJMgLtUrdJaq5Y4rWorBri9f
4dw6437JAXKfytV2va6C30Qttvaqqn67wtOA+1+Zb0KISQG2kpHXXsLHU3sVSbPbENT7RMYLcUrI
/wYYOw+f4lEFcKlwYjeGoUJ7qmCueJSIj2WhZpPV6bkRpB6Kha63cNGZQI5qCCAbTHXty9q7b3LZ
MHk0IsYqXBwUDYXLKJjWSlrW2JDqzMEUQMYGkuyx4Nw+qzbx1AItZtw3Imt9HjKA4yWmIidvBB4D
5AITa4FSFNE07Mu4tG2Uc8CBKRhouopP4ferZjiNYuGxkMvxfF7es37BNK0p4NJkMbwOCLwKzHdq
EtmHZZx7pl0rS51VHHxqKEEUjRowDms1kc1aEZqOuCZepKpQwOL5Czu/9JtQlr1AMA/inYW+Rvfp
TfeYbhtK+dIDLR99V26iaZ2t0dxxgyWaNn4GwkzKr5B6wLG53pe9LkupH3eS2Vq+jZlc/lBT2CGN
9aimOSrTjBH3ih5o4L5IhOSMEyvM6AKqQjZQymJH0vF9I9klFwbE2Rtpz6QWoHTBO9Ra1vdWwvvi
xiBDMFABSLDQUvbIfedxKV1sMwEWA7iYDQgBojx4hohSJwba+ycMBJKeUJEZyMMl4dEMLaLi53t7
K5LO55tnN9lOMO8BeM8sRfOkRH3IbDDkiMq55UyIGWgUvUGBu4rVb5iKnlp8OFeSGhqBORtLzf6i
c3YVA5wsFI8wtRN8ICs1E6K4lQ4ECdMPumujyyLA3Ffx6bYgy+MroOZ/136rBtJYCstxUYol5TSK
Fsvhy6ZgpORnQX3e5tqeMHZIwqHvZ8UkMmd6poSKnGO4nRlasXY2iUrRDOdFr5aerLgFKo5//uU4
oZ7RTurysgaWxbhNY1kwVJtfUFQiAmsoYKU3vejantJ/BpvZ1kAh//BDNGsCeJKFY06ViOmNGR4x
G/CVW5yL8FX/5DSSJ8vk4WbbSdFuHdWe9Q8KM3zkuOjYbEBWZ0mQuZhV52WHW0pG6UV19GEEKwcc
iZztNGcr3m/LBq4Ki+uEZDgGLilgnSPPaCmjNjRt14l34lCm1cNRssQzhankgw0EIbvNdlNljJn2
D8mU3GX+LHiqqjOKhqYzh4E2WkyB5bItstwHPNgxTAjtySVugUCQAsAkO/g3k1mRpfyOyVjlTej8
Romv6tPSkoYDLxHhSLwxeMidOp3DXqwkzoP0+W22TsecDbXx1ynEv07G7cklfgqtOcVK5XuG66wj
kp8AR6veOE0x8oFkRpnLP1F9aiPclNGqBNlNKp8Tm1bVH4G1RA7sZyGlP+X/raEka4cnPj7DGhyH
qovPRjtTJrRSQmhyc++72BdPS/t079iejU1mUogezMWqbwFwG5MR+vhYs20LE5ECufPM1J3FDiav
9V62M5LrJ5YFqhvZUnBk6IXmSz71uN9nBl0Q+yiZTSOfi6/Y3h8uSCxEh5xMimAGFV65Z3w+qv+c
5p8ahf9oBbfHENBIPB9W5muwoAbsxaoUe3nLmXejW5D6IclipTHV5Q/56zNLbBrkRNZ57ySK3bZY
cKQA7U3D53lZGuFmkVRhK3OUqh9lZywVXLTTh3rsKm89RGHetiPOxzSpwHiyRov8Ngl2mJjMm9XF
TyMAhOeGejJ3wgcrvCpcUWCQO/7qxEelsW7FEkNx8Pl2Gl+drj4FAuDCQR68AbLWtfNdneu0d6YS
KIM1wkzOXVJl23iEaI2L4pCGlUOt/aooBJrwu85a7JcYPzNLwDeeCg0nvdDzrMcxsWIuxIdulwVC
99HAPGhrziKRpndQSIuKkQzrO0oWLdApi2fA1N5SHX46leCtvAE+jfqOVOYABRB49cSwxnWsRBa8
rmb6P1rB5M7foPhXnWgPvkpOMws2Ff9wXDbye+/86ql0I9NaxYX2cqqNhhIgobTvdWnaHOM2IJ4Z
YI3TwXMAICpKfhFacyffXUzFovM+Rje4ZcTjrbqsgCLXy7YwlhdFwIwmypKkNuBl90VmgSqWlqGL
U/VZEg8LEMc6vYbRXcl0cisKweawcX66t7cbYA+iB5xKJEepiRB2srT2ikEWbTWunHS+w4veVuV9
VmOy5mhot9qD+kKvA6lJz3L6ELGZyOeZrHGDbPFmYqmjZ/q7C/ZTuIdljX4OMVll9hy3EzIAOHx0
wFhgqQkJEzKCHrPQ8j6KNuJiT3Hs9hSqS5byofgEW33Ymj5Hw4/1ktVV5QRqtFlYfgfynQ9leuCJ
t/9IRALA0C2xL5DY0pIxYkqYD4Ue5cEpjKicvgX7+Ae2Nl6rMzWyYtmuBqmVln0zTQzwm6OV5ntg
Ui+IKgxp/aloPNhQj6gWIIkwCHIt81zo9SKGRvWgUW3zkFUjNwyr9yi4BoxsGKdZ0kICXcXOZilG
pxjN6LWgkfRd1Ac7O0x4ERR7Vm0BIo8EXAPCJynfb+pGbB9sRibFccJ3SLFan1NQT2rcD2QOq0V9
uoT23dOmfhWvw7vt3L0GjXd0YdcQyvp54/4lJn7sIZ+UIkh/5sjkC9QREVB+hBlS/AojtTpF93lZ
R9t6Zd693rwN1j5wEsrHtIQuWUcGvMRAerMJ840hPhDtGNuS67owCoZWvAPc5xuCGtNiiH+pTQ6U
c4i5ibhABZ0vxg+5aCcN7AtDS2biIj+A76cKUnkbRaX87XaKY9il+Yc/xy+uxaKepV3Ku5yyJ7Cr
cKkmK9i56alMm6fRyUgsk5xwSKzuHhv00bxGqVeIjrOj96wvKLntN7ZcAECKrjj/Wb8V0YRSIC/Z
+5V0s9s1q5z6zS90xPXa3M0fdDjJaaoElm5u8MnJjE+s3Iv6sEgSVstn82DSPY8QeYoisadpDomk
9I+rFys6DXfDXrTbhLD3n+1Dn0BeHNp8HS4G8lXZFLn4/KN3YGuVFKr6r+Vr2uStbXBBrJEi2Ck+
DAPROzB9ty/q6H2AIqQlePM6IiIU3KizAaXoVwKj5JSNaKLonCU296wNPyObqWqUbwGn46SnUSa+
jwh5JFS9I0N6iij0U3LclPcXPjy6ViXgxYZBedPaCagltC7LoKX78tUP0gSs1mogxEzFJ+4rytlJ
X41o2g7deG1Uwzvd48IBKLfw3AVbdd5HjEWqLvQmg55lrkRSXXkShEKCf9aI4se9nWTgLzCtaLCb
nKvkgltmN4bXwuZZVtLDGam/V5FSdT0SUtGOoLXlMWeqFTOmt1xCb8OaW1bENc+hVlC4qFG24k1g
0ItnOIyqH1NJeVuS1xbdjHAFcU5UoME75Q4jWin45EedpcKqEhuHn2qeVCCuCm2sNx6GFkApkz9z
t08Yrs1pW+LGuLLmnJj/Ot/mULQHHjfWy9M9o0PWyJWiJxnvWQdTw1LN8cogyVAHHxlgGtBB2Fh8
kFpFjx37I8jxMIMxEl7K7AJ05B7N3OKXxmcS05lM3DmhfcmBkPXPHhZjLoS0cLAbh81z7wC9jWLr
HxfYKMI1tUxNlThj6MQIwZC03j8VOn5wlHkw4UphZtfTgEJbT7fhIMhZUp/I3Uh4pPpv+3vmKjRq
0KBS2hY8c8iAcwxkANDx6Jqma8AjMEHCqF6tVwz8GOaf7fNAM3+q3qbDQOuk9cLy5EwLFcHmCy0s
CY/0dIZY2oMsWg9VbgZRK+Rd6tCepKXxZ4+bo9w2+r9qiKISH9fgMASfkoPySWx7QAhFoIj8Offk
+bw7UkBf+okrRtBUp6l3PcHmReRtOOMjoq+5KvX1XyqGfHJbKyjn74cIfRhg44xHPvXWSF0YmDh/
jn20Gtw2X+Omy4INL+gKwE7yUbOhmUcI1SxzgT2LvkY4jYvs9jP6vtNeHpMligIjNiNJ+DgkOtxN
OYrt+eKKUDOyjBTtFRxV/I8wYZU+hHTHH8o53aLEv2OECLCLlC3ABPcyRU5yCQTqdwg0EI0sI/Y5
CDYKsH16P0niRLK1+NsCJZDrvitdtgXmfvD2Uitv4HLxh+s5WVg55g5+Raa7wzwMHXNtIvzMdk5s
8faZXiTnoN7ROyliHQ3suncFOavwnrLRrcpdNwkz6y0jAh8aclsXfgmpqdAF/7SY5YhLBG1Yfotu
XhahFqpEwBnupNKrS+7XmPhtLARAy7A1wz+dMDL3hucAiqjVF+8tcvAveaZLlhkxAODkjkEaYaL6
OG8tcrgx5BlvvjfaubtFxbOgm3SFZSwRJuLuG12i3et7A7Op8rHEUiPAW3Z1FdysshXmN0Q/6l9E
8l7zPToaL41wBavND7jJZOG4FUr1SihAWBSeS5LE6n0AGmoRrgZlebWx0JY3JKX9zbyfRG0bEZtw
4DAj3o6Exydt+0itcgI0wXQEreKXrcbeKkPy9VtZbPl7lnvnDP2tfl/Qvx/I0IbQ1hSSJl9vlMOJ
xUb/EwAKE4ULn4zm14KJwh2bKkO+lfj8TBiMZeAcn2qwcBlKSbDmuhADaGGGtxwJqxkK8/556YDb
nSciTPNSSN+vx9xBOIfHW4Zz0nOJpZfzonzz7YLFmTZ3oWmQ7XcVbjl8PGx24dOI9VWc0FcIKOYp
onDyrmoKtM6BDK9I5rnuBeT6jY2oIyTKR6Od0iXGx+Dj2oEIs44yUZuOxJovWAnPxHzDWGghMdRR
g8Xg5PjGQMNEZLWGngoVRwk6mbthM9r+pm/XUPG5qyzNoiPPbUxjECbOeIF7paNnAiCr84DFGNcZ
O9SiBJr9Kl55JNQR1o1ls4Q80vEWuxgZH2n2eZyuYCGJVQ4sICg3zVG2ngx3p6Cb8u/bH/buZsS6
f+N+z/kfQ7wFW/pdAyQB05e9M9jS8QqGSia5+pH6xErLErsIM6H00hyIfSid8rl49HzKC2maIUvy
OSeVucQaWuirOJRma0uIwE7+8a8QIRFUIJsb51ow2e9udY6z4yqaKxqowu6P3xU14r7U7eKdGToq
VvGoqN+ftOlCzg41Zt1i+WVx/0DI8jeCOPuBfpXy6aMpAmljqSGLHlCye1vH1IVFGfFTBx0opcV6
x38gkP7pEaWZbO4JZRvBpwag+3T/O3patLiMHqNRSbjRpHaTzwqb/vsc4SqxLuBZnU3SxpBNbh1B
6/pT3b+j+pDour2PzyxI1vbwwjG7KVY3zbkZXnUzEYoOP0eiED6IIyrmpRk3Fg3OVZj+BOJ0pCfL
VHOEiOI1Mf0k4I9om89ExVu9Wsaok/2gDNeCrEnUEzk9zTtB36ADTy4A3/jB5tPd0QE3Qavqn8vN
1xkGPDzanoxlhdWRy7nIZz6P+ZbyBWXst371dTnsr2FFfbsZ4MARD7YeDoyrqsFsvM8bX93uKHj4
W72uo5r5jjT3b5wRZJw5UP2zvtoemDVXNa+TnWrxDzShTJzQsAN0MtcGvHMcsSaRvomzKpdg5XB+
YpoUDKqLHLnWhmU6B1R/BtBwi4eH5FrgKbJiPtOAfyni5UIc/g8Q05LFUP27POpARBEWEhP9UtYu
oieGq1d7NLpnQMGi3Sg+xx1CHhOTZvbJ5vCo8coS8/glQAajxl6TuKycOzS7Zc73+QUov2YqY9Hi
uBcLtROFpzrKS/27o6XkMHpGnLRbqk3hucVqq4IqpWx+izFn7aVJ44cFzkynaXQVJNT7DJCgJrA4
aVUaRajovRltG4r+oU2LVtel4jUKmwO91tKTzfN8Md/tQomaNOK34fxkoVukZAALzavg1Y53Isow
BOCc3IEhd7o7bKv7/wycRZp3BkPnriO6ojQ0dx+ImcMGKHRg4H2voYB7EXlUlcYmvezD9ALBe/bL
orIoxzOAaakoL5exORXz60URcy+lp8XAsBFKw5LMevJSHbkxoY3+1vmWy0EsICRIs0CMojUYasws
gJyPClYpBVSKHMnVL0ix7OX1w3o19K9h3Xm9CYGl0xkRa4yeQ/2AnlmKPm/+WIdlw/402n6Lm4ra
/Beeuix/Uv7cRDOTEul9xk9yg7xQreHbYfqQdhhMlx6hXO1hE7Ba0+BTYEG0CD/b2ycpbwadD6nB
+JHclPXzA8Ydr2TVCQp+T+8xoy07bKjCUt460Y3sBK3esYfVxJjke9kJauE/VslmMj/aGF0m8Qat
Khs4opjd1Zi2QDoBuL8+vBXDZ6xFokrehOPOZmPcz52wf/79SVIXtGR48cAOFUgjTKxXqf13CjXA
F84v4e3WG5iDjzKBAeiI190w5nOdyMUd//j2GMxoOMM0ea943MSEibTQ/aR8Z7335+jnxQ9KziCY
0dGkfmcTOLtS+YPdTGDF7JefMKdXav4ibfIz0g0Tsk/SJfNvTtjm2RJbXTsi94jodlCrnHwhsHva
BWSAg9InUaWz9sSclbIppn10KDUrHuiA6ThUVYo8hI03mzoMTKD7jmh1TDq50uSmEHw/iOfINNWw
kjG/odVUNGG/mMcjusaDqewgxv2alfrnnm3EbyvARSUtsAIi62a9X/9YR4dexlf81nIl/TyoVXNs
bUdsYjirbJYRJIkT6/F6qejOLPLNBJDjaGB/Ph6ggnEr+R+sAAnLIA7nueMuj6WFs2RwVd8T7LZS
9yQcScvhIOCqdf9sAX5jmJVetDpGljWJKc4e1c/auN7XsO3cYExfcZVEByfdiR0yFZjDCFVt0kL4
G2Hk9n81x89BhfmiQEdGE9NT9IVQnrF3T8CvmGfCA2wnUat9YqnbN/Gd6KldxV2pmiDCS+4PNMWM
QNeGvX86KLjgDbWtW0YuDVC6iFbVJ64IIe3sPzGSZDuE5ClfB9ZMGz+Ck55Kl8TSlk7tADc/Ijn0
J4TkQsyOW2OhtY6HMSsmJgq0bmA4jQ++EraxF4QKKZvl9+7T3Umm47dRYkR6I/V7xzlSCI/Myb2j
kiq9Nf46Y49gmj9k/WfIhS2Vuk9reLsHB9GsPuWs30r/e71o1zoSE5pz2bjzTkRp0dimGYA54tn1
wClf2r7sVFs67dI1ShtqMYp0rLm1jl6s9N2MqJdxqyqQIOvDE9DaDJzt1ejMboKgZxYhTf91OYO6
00Syq9+cDF625MUvrumtZ8R/45WZgk21kvG56vWY1dYG6+fBrWG5JTVbw5dXyyOlF+aUHmOkFCtF
bR1Q3Kyzoeav4bN9RZfxRH1W/6XMcNlOjHupm1bfmlPuTqKujnEiQ3jiwlx+yNYyIsWZKOHpKI4R
cPytof+EMap5632L1uX8t+KJ8xHih9fkxRNYLs4ZxuyuXDsgMpAMSbW3MUhfFlDKk7qiLmD59WMo
2RfmrOxwck0DwXqm9g9Bzqedn8nFYp7vt9qoZzaAnjrDJ/SuQ9/nDGHD/Wq7tABq4n2f86T0MLGw
u+T20iGFNj1NgMQxqDoRaMd1D6d92gAVg95F4Pv8czY2z5QeWz1XUThe1sDvZr4XbvKzcN5vbWTl
HAfencsfUY8NdmQuACkp0sLwmgPSBvtWrtIR7p2ZA+ux1WhQvDIcaPzHITIez+qyNLyAKq6ont3H
Ns1ykDf/o1b0LAK3fqbqFprLeLe+s2T5ctt5kY8RY6Q/xrwpEnc2q7jMTNFkn6DkHeLPMhpRlkB3
39KP0IGSUD5p1pKSNqvAEOTKrjXVUuJnuF9qBSZIxJdRdLIxEDTffq9UwfHKh/XkP9NQIhfaLiBR
eYdOTe/7pL8yOa5GXzgNuZrT5blYdHTfel0aoCBH+tLMAdeiyV0MEbiSWQOjRwbRCBl5iECd6paQ
1M74Q5n1eia3SctFxM2XYimHb7cQhsVsxlH5+xMvjj6BOiHn00JIuAdLx5vHK4kg/VLcF5IjmvW0
QfaQGE5JVKSAOaxhwarw1v0hOCASzFq1H7S6Ihm/wWJSYn6FJ2jyP7J3790BowSUrog9hZpgiHTq
0jIo8y2Z3nruWbbtjkpgIasN7zrFlpIWiO4UDxXkRFHO1mwYxskmx8e13seBD4+ebx6ZBQvH5FXL
aPMRX+r4KfaX4PF1aV8GYDUZKCBjLzFlaPCTpTFnh1VKk/mKO872ChuznBigdnFwAgQ/cbHn3m1i
i9xP927W7qt9XcRvh0PF4sbtKPcapP33fAicaAUSnH9anxpownDuYfzBsETExPqFIszay8+7de3F
AownKUFC8qEcZpO3SeY6St3kfLppBNpH3U/9ZREQskJfMbmwRn0GV9/ARWNOe4A1daSoMj0qSHnJ
Qm/ZmkAhxKSkEnXp8EbmTgfF+Idzq3RGp8xzwZH5x9BLJtNG7EQvcd8vWk1qEM2uvBObjl5HiioJ
BbsoTeUwxVWSLtZVI0dnC0OeQ39RaRYXR6vqfUXjhjD7iNOR46EmWj8/Gr6EYK+Kb0iOO4IOH2pe
glVFJhy5uveBE90QOAW8la1ho7mPhcA6E6XDimuR/JeJBe9x5TFwkZRpNcB82zzrbRETVaTS7npH
QZGcD227awOxHndjj9S7SBn/nfmSxEsjtQlBrGsojZ2Z3ZgB29niYAGXwA1/Y2MUTIV7IDCZFJTG
FH9SUXyzm9KKeJAeaj4mMgGZC0JL20332ThAUgQtECiWU9r1MMdmQwv2tWbylTnmXfbTXW3j5PWF
7G0GfUzQNM+YVht2ZPSM5nl0yCIVtL+rGgxiMRn3rr4ZYMqo5rP/pyYffYFQIrF6L8CTvaSfUt8X
aRAXaHsFThUFvJ81EHaHOn3NVNPRiXWjNXuHuCDuwlPY6wGUmbKBrpBM4jk0HgT/IuU9Drslz8zZ
46z1nS74NX5wyXJ0plbl/jLLUO78P3hXDLrtto3WfjRASFeXrQEN39YHZ4PtztlCJ/Si3jRgfWoy
54ntr9bsvLxc3p0XyFMXKZdkbCG3s3nemSy52nG+Pq6sR82txAjkyK1bfxATBkT3N0F89FRDJLWD
sBW4U3xZZJk4Sgp91zs+urUUcn0o8b+L8cTmaEg/tOxqL1dndcGn2Is8s3C11002+c9Bso/0JWaA
/urglaReFGrInrvQWEMwCYKSBmMdJO79v0l+NwIGqbn20nQKd2mRMGmPHkulgFXD7I/eeJR1ue6T
YeSSDnjxbyKeB5WoYIMuazRIR84GJySjC8RVHa8gw6vO7tghbePfgTGmbN9sWjUGuqeK6c98it7q
Jnj9pTGHHGSBr16Y+sc/yrO04Lh0moc8IJfb1wgYCMUJH971RwaaHVArzhEW0QlGRODu8ySO3T8G
uGbOy4m22ijQ1WZHeHa0L+wxGiBTTNFl/qwee/GXAIXrfA6LZJIrSi/11i/husgpKR73ZNBHZV1k
jbx0qTLN0SV1B+f2fZXby6qC39kSjwLZpYmWrndj9nvYnmnHrzqU2+649a/W4zX+5/kS2uVPd/Ub
B4DCugcKVrKG4q5anAFZl0QjbdwC249O5N7oGaNGvU1uGsj13sFk6CrGGxeBJlBkU5/eNsOk2AE1
3cn24Xk7681ST9UbS5R0CIv+j1r1uu9UufiSTM1WU5STLQu9z66v/0n7lfI7ySYxrfZ1IzchTViI
OMdVR+gcgOWMxnf+BwANYJZwR5OtoETyEBFWvgTm5uzfk8vF5Q0bJPF/P2BaI9HSNWiUBzTnGI6f
Wp8TFgZpzx/VZ/+fa+dPWTesVBBdOde/sQKBL8ebko+8Rdm382GvKwiGPNT7fhB8pD11AETsczhD
zEr0js2Qyz4UoFSsXmofLIDheZ3eP0xOAo32O9lFeNt4zlpd05xvRpQFE0hTwI8tongm7MSN9X5N
X0skFVIeMLVrDF9nfrx3RZbyfGkoKyfbipB//e7J+VmRo8g5y9rTx7Xbx8+ha5ojrG/VUosrImWz
oieaPTZYrIbQWP9BilENAUqPeeoWFhbhqyq2JepAwiQipP0ssUYPHzKFVvtpMnCcKD4jZF5OMBtv
cfT/5OThcyEsTBCwkYbuCILBi/C5dpN6joOknjyezMat3hIgp9T2xbdIKsIGEzvYbZTvlwHHxIuo
39w480TrmtTHZJTOpuxtexUkRsqMI0NNBO9O5OldfyZXj7RPMHx2vPNlU6QFMrX65CE/y4aVUc3G
FCl/Zq2Z8BqNKuz5WMhyM4PGSIK/pgFdncC8o7sSu/YWAZHJZC9D1kc4MteIIcli55bXCelgB9xd
WvtXSqMfaWWb6kJygKcpteIWjKIP6UaX26PSZz3D/ad96yr7ZpTmaR613KJcjeXO0tQlZKZFMiM5
vy6/nWQywUs7aQHEl/Uv0s/1+cMvcSOV7gJ6TOZZVOexAwPoTmTyVJV/jSpunakbZBBXuSl+3t8w
uPE6JTCjscEO5Z1s2/7Ywbf+ZthKDDwWluPLyM4mt/lun2h5upKcFlLhwVQZpvzxUoXZTKDF5sQk
OYIkpzl+Ai3J3XL119MSIuxCtU8D9AgwZ1BkZYlOY8dBD1Kjdnb4LapLgINQSNCE+oOaaMhhhaGa
uVDqNbD3OBw0i99cVw7zV2qx0wcwsfOg9UzaiEWaF7CDbrunxvzabdramPuQgeo6jQ+MJXHoM+vQ
9qzAuVYFltAptmBQr5qD7JZs070wPT2zLk/rrk8V6JcWJuuuPkondVx6uIYOywVJFccj43ueyURO
RbfFJ+Td2b6scjdvVCUEjzm3brUijPgCcnbYRe7wj0+ZvPXfZQbUafPrRM6y/vA+pxYtMBnsRkia
Qe/H9bAvmcJkezr4ewPZpYXqJ+L5BAynxbxKfE3CZWX5dN/An04re8/ioWqJRP68biE8S6OcSrzs
SX/PMvO5yLpY/MnGPq0sr2Ip8ug9yZVfZQ2TiWNfz2d5ranmOb4sqLWjYCqS8TuihwjXBuTcFrXO
gH1bvY4+SwP5yvtYcd5uiM/gu9Uwx/sWtP81AupNAiveyvRp2LnqX4DO3bD69UCbfRBnXy7pkyuo
ne6scikahI3E9+NyN2WcOTqh3jWg8+9Cuo0BzYK7du7KguaZjImeH8UpX+nbCcoxeSfcmWLrMbx7
4fMPkFebK+KqW1T7gBkLZcwZEPqmOV8PgyJ7A981PUBcMm+6dgk5pW7zuhdYLVPHbnyI9uKYOUwE
Ll83GezHku/c14nr5xhkZLyCjfBMs3JYW8TLVfaX/q+zoCIdbjxLjt1Mh+zCDJdt8osEJ5EVfEvL
KlJBnX28CWAtMNILQ9lMvDAqoMbrQDMVnbByfnQNQwml7x2A4lrv3V0TaV45JqP342SZA1pBsEff
97jyWKGDTdXnQKOSym8PmiGWziraitHBZDcn5ygZZvr60pP7+3pRMSXENsdMJM/M115EwXtS59gn
lwrfouGE9jY9u27A1wbrk1eDjQRGih+AN/lYwtr3B2hE3hij+BuT21I1R2P9HPvbRj917mmRExdr
FL4gmuimforISsBCZMvraHaTielJKS37tfEZEkTR1ii40xFWKHy9KxrPcjtkXc/wYq1ojGiiF0Yw
mzA+0ZKPysnl7Aqq9ba7EtujKkK1Oyg0dah/JLpC5qpsLp2tLqy29SkoRwSDuLd3XW/tCCLO3wc+
9GJ12FBrm7normL6VjU53P++sFbjsjfKsKPtZdersffYGwjWVy3nPleDb4tPvKorPwLyeqfLraOA
1/FV9Qc4zUe1vQiq4pPJgRzlsCzlG/BNvu3BFIHxJPTSEd+XqHSHBNcWFGwY9wpwrKrAiZWt8hVz
7Ucu1EDPQSCDvbM1VKnRnPvuox8LjPpAr3AOYncxPABeofs0DDxcqA/rQKq9mEumGdGyiQmNLUn1
VxRy2BBK0z8jFxkvSaV7GQ4CA3Oqg6CiSVzhNTn3BGiYwB1K3IRptWBzTTcXsq/ONsOSM9SxpaWX
qJvwTBaR9Zv5bdSqhLDcFXiTU2X+hY/o7lWVTNIr5zsqn64Ug7DEUcZVrZOfK/PfSwQaBT47yfzA
csJ0lMiT9M31+UBysjmKSXcKcNPmIuT9kICAxZak5Pcg6I9/PmAHJPuE8983+aZraVhQXg/zY3W8
/YmHHs+mZM4cLDm1+efadv8Y77286upQ5l5i7tKOq3/B4QC2JHU1m4eXjUbfltfJejaDgp/U+5Sm
TYjpNDYIswhkxPeCV/KWGcoChpCyyoN+bJ1SGKHNV2Od9xDAdjQrtyeiRZg/wta4jPaH9fsRSmBC
eLz0GWIBXCXEFySrHcQ4qD2XB9XyzdKuxSHBnQVzmEn28r8CkINZ+Iot98Tff7+/Yq/A9XBc1zW2
WwnBIX7YBx5Gt7IOUhTSKRfP8KO5lWrZ6jo4msyiwc1vYqTLX5yCJ0GGs+1k7BCBBTBC/MKleP8L
84a8AQvrApyEWSFvQ7iYwaYL9iv++ig8Jnhtgws3D01/xrt/vuTqtV107x0BYlQpCNK25sz3NQ5I
YARSsW7oSeOeSRCvMoU1HPSUvv/AhSIqr4BScZQ5m3NYmoAVt8hlsFXd8bcXGfG2xcDP2Gy+5cEV
sbiLeJZ53t6dlA4NB168C4RpudU4A2J5GXne28bo08xOuGApRE5z8qedxTTEPDt3u43KfCZSqRfQ
BcYty5wb6MyeS//OsyzNobgogVef7Odqm0evKsP3y1a8BpXddLpncMW/2fdiaKHxt+ldz4f0rsVi
vs0dTb9jU3glLV8esHnqkYKl5eX7S8D1C5EgjYMIgHVUDdpO3HDrsuj4ohKQqGgux9YeW6DREF2j
nHz9ZpUBQXbDU9t/CpFDCRiucujxLsudfv3rPhDJP4PKs2+e8MjcQujcJabhhOeuUFJVOG7loNjZ
dVdI29WyzKzCoUr7ieEbHnH0PXD3ARcl2s0/lWtNJweoSr6Kmx0GyanroO+Nm7NkC8wT7WJX/201
Pkct6vWj1l54W62kFwUFmLOEHVpc1Gym3ERS8KhpeS3AUhxT5noyHsRkmL/rtX0wfH0/ghtnhcl0
SRLPrX23CzCi+JGFniyQFjBzd3mwngYyE9EwERepK6afoUl2mZbh6qgAzS8Z9JLgh7kYDPpNC+Xo
fj7FTq2qvwDoai7G3ZIwylOL6zobxNtzHMc+UU6K4lhokImffXN044wtHkQ2JCv23+RW4zK+UaJX
YBDXuWj6BZccvdat56fBRTVlx0lSB3sCYQZH3zHgheHEwO5XyzFnR9HbMqGnW5JJ2UFDAtrQK2Md
CKI5VROanLW4RnMOUq8juqM/TXhVva9hWy0pKowTxyFA77PFB2WhUoupbKNWBTGj6Hcvx/vfhu3L
E3YsNQ01cqCUIyEll6us+lIoDEfLeCBalTX0BJVpFEt3S06ynSAnEwAf2yzf/G0wppYHKFxlzXpT
UjD6rFELgodtH9FIHxFhF2ICj4M/lKg6cJQupshtdAJ3VwHiz0/wqg1FAAcemdm/N8Bl8W5bM+tL
+jCtBVttpWAcvRYsLxUlSwo2V6cfRqf28wgmwhd4dCv66zdG4T46s5g7MIcvm0Rv9AX2E+dzjv7H
OMs9uHq6ZTkQZ0Q225aZbOIqIIjck5EZK3WTjn5k9uGpvb126q5DvGhE3gelSzEccfy68TpDRAgG
EFiXUz5ZLH/n0GOcj+UVucnF0v6zMnFhlgPf1MPJibuS4617dfC0KgaavOe7qtIxDnRkNqAlqSRv
xk2IbZXvqEhyCWrLONPrUW0I6qWphOuK1ZMNi+21FULVmjcphnS6S2lhBJlfztNadaa/E6/5b6OO
KcxbhZYx13dBRjOQDPq27XuQo9eaYl0wL1NOqSSUU6CdumiyAgNhzZgQd5i+T5UPerr/PNOaL037
V2Ylnllnp0SE3ZtFdTZOjs77kOb6HkNvOKPccYrIr0F/Zd7b+lfWNicJuIZYMhL/o3StGFKY6zic
srQ0vAEeN+CPmI3v7xg7HNT0DyEWo8zfpj90eMmls2mr/221YGg5QubWJ+/3Sy3WDqp+7Z90QgXR
aq8OWLahsdUzSd0zquaYxkY3LNVEbCfZWOa4Enof9OgqUPS7tHowYZ5UCh2a45ra06tqluQIACsa
0SNkR4wZcR/cQLmF8/ta1GYEQUK/YGfM+CZcGiqPgphqKGIyYEb9g0dBkVbQU/rXbkyLOC2xVRNC
M2VEuYIG7lgGgvuOjo1CS/7tCGkYLv7LAhQBSlLv55zo+uXowbYJFIADeEJFCULRXA6L3IPcd3tu
lM62gQkKtd4NJ6/Le+WwmcFSnctQVamAGoyVy07Oe2II43S14Nu57+DClw281QkIMd/kfz8EkaQ7
GYk4gyZPKdy++JlQEiRUW1A2c92XuwvI70cYDaFPPNrP7krVLp4kEXeV++Kr/c6bv5jU6N3nbNWC
MVtwpDMQRAXYgPgY6BYgY3fi4ZP/bQjgNqC6jUnZFCP9PNEN8i577+U6K+U8diFYBHFw8Mm/YEuC
PpeR2B//5szIzs+E+WoAL9P/IF43Y1AqYARe+73iQg93aw408iN5qk1zW9OuCFoVs05q3xD+d7OT
eYZyvOCHD0Uh9cjIcdcu3+1MQcj1VtH6yUWzEmUfZWUMOfgW5PfIUDsuRCMwNpNKohTRW9fD7Yqa
7ZuHPO2NtJrjfL2AYmYZ6Fxk2HSK1Yz+D81iiTkuUwogV8CYsR70lCwNALTTOomyLvRN7CsgHOs7
e3LVjPfQfNM6WktRsifD1JzglmSyz5CU4OzPBCPm1u7/Xsod1536X9OrB/9dSlYkJ5wycs8l/ac3
dteku0YQmQLr3LWfsYAvG54kkj+272alMTqYas7QCrapLwRWlokBV0LcgRyd2j7foAN8z+COs08L
xWqm2ygjLE6ab6P3Xn99ML9QMhyRfMv/lbffHfDGXouIb3UpdgTkHX2Z2YG+nT7bZ98+WL7bc0yN
gQfD0KbS5++nJpGUTsFDu82YIdyf1941OW8X5gPRNyqmjT0eHMT6n+nRkQU+msB7oNeor6Z8X+5v
1xL9X2BB2vAykPq3nqR3mRy+3FHjI3kSZNLrrt70Iollainv6imH/l5bUf3/7Qs2CJOK6SHcdEMN
ptrI0oh8qm02X7ZMkwHhPuW2BmRIyTSWT/EY2VM2LvHk0GTMrwUblzzAuAj8etgvUCa0kJh+1ndI
C6wdFW4t1gkVUhfIFhkKY2qZeHAnvllLS06+La4HQdsX9CdnL8hUi6QEpgph9xWoPzPvry343Di9
fk1VY0hC6jiun9Iz7/UtU2SR7CaDs3MprdO344LyMBvBc2R1khGjEF59pLJiiTRgai4/1sTRCTC4
bPuu/NcEpNtY5OGmYEKK7LQesqZCrDCxSZZu49Vw9NjWynYCCR9ySfxjNIDgANFfpWy4kdtSHg8F
K8BPCOfjrIApZ34SNijWP/rh6QKLbr+7EfTAcntZCwodqwAYg9+Eaq1fsHtK0EFGA1dMsSGsM6gP
FwJdMxORR8iI+aKm0Jzx29aWdL9l6xxAarHN1rum5PXpwpdoF6Fr1EdqmKSPD3RIiXR7/Fu5wtfh
y6fgQOzh1odqRxegYx85wUX9NVu8qyGFGiSmZdPnuxmp2bHa5eecouSmXf0sqbRcBstu/OEeP0Lz
PPijep0DfCB/gJksrj0PZOobQpOqBdZzAzl5s7vurfxThp328bikKoMgbI24tvvXSsiTLoxaF/YH
JDbLsXZso6s14VgflmMJc1cY5CymB1ePdREQKUiIQHGcNh8Gzp/x1lG4rxqciRS447L0lnq88oaC
7RBxtO7FNp4bH2Fpo4aI2Qc7GhLosgMuk8QCaQiqeSe8Lzpqzlj2kYKFQDFnCJRVj/Ve4Lrfc1ZL
3Nx7l0qyDmBuTsNGKAw8uCMIZ1uoU9zgbxeH9qJyFkOOQV7hZS0IkZElt6HK3yXIdtFF9FBUGiwU
iqBL0ihPY/N4WrHklbafTQV9rKjQnNXy7o5TiQ/E3+cs7bJih5LJFyNN5o/BN5W8a/rnTzDvpq4b
DTMXGrb8VgtTz7dHtk4pHYIyZeECpDOXUZL3kfJifHFFBKBBzO7Dc/6dAYQv7rMDXsZQ9tAGIKJ/
2Kg7LrlA19Th4COeQoz7p2uD0rD/IMHlzLSCfNzi7gOIKvPDFq51763HM7w7wwE1AqokMKzprnRI
DpVfEC5WaFF+L/p+UvrQliFNGP5oGVPpNjQ6U4z5pWzTIewXxTiWrJ9SXk5HV13f7NJ6/wfDDUvI
/sOQQCv1aXs/+YVRpG2LhAe75tSsit3U3xenedI9Ak5gUY2mij0/TarPWSRc/Mfd15V/Om1xtacT
cXKasVafCCkBmzlMdIeawxkEPiBzV9ELMdLMkHRIdl+fdXarRRJeYiTBbMxLRH9lDFoD3UuL99Ix
rlfCoqEJuXAGANrAhq6X/uYJdW7VdMezldgLPdsHToehtgcVpmEidupSVSZePI4XhtOq9MmIJFiB
QDQXLrtRcEGJpUiwhEOSLlIfPJt8oceR2ohx3ZEuLGZMQPfInP6n2RhUUpaCLRq0AUySnvm0CR7a
s63u4cs/yWbqrXER8rx4JwWJYL6CQ0+8Bf+buWDybs2Gb/53ZUpGFEtZ2Te9a2mcXaQWGz/ZWhT6
uICwU9sDDhZwmTwuJgtzYu3t8UnFN2LN5LoMjw2YaxnHZULLwoqkk6ZloHCByhvyT10jycy1PNnm
YCGG6BbENxdbFBRLuUxeTyNf9gwn9mADu2e6tPjG/fe1FOClLBFVdCqmnTv8UHB5PBTa531dSMsO
A+QKppQXiphXj46FHWRBSSHDuw2Km2igz2dIhmQgrbPkKCyaTXjepNr7L58su5tIFCjI9O6zwTqs
oSb1CSYRB4rDIsHVk50PDHtL9ubWmIcchWxxthpK51mce62GEnN+ZPXf3JdyijtrPy3V4MvqCXoU
SXKULbpLp6iudLgm/fKEt71ADjP+DZzM+rnmpCzeOKqjdKyALRK6pKYpWThvQXeLcwUMqhVI9ebi
Wv/EKORvOJNzuroXBs1Zih5eV+vprJxht0VbORI20SjoYusPYmNgE+hutaG5BzFen4RUZcJrLuN7
Zr/wbUHXO8xIhfOiAQplCcZ7yXMQegbiov8VoAuWEMxN6loN8GclkOCny49fwLhUWYjM3zDtHKEF
1W/5Y5kboTurLKZJa2Gd1YfB7/1ueREoJW860nGknr3iC87ElOPaUqhH5SXLjdwdNazllgQ6KRzQ
HTiYz2PxJaJPU+IGxuxpdFoCBG4E2cCjHzUFkb+zDcnIvEwe4iE9Sa6KH725n+8209hkg0aK5Kti
Cwsws4oTD4ja3GpZaULLrAImp3vP8os3E09coEHLtFw4/42t9M0osD5cbeS9EmIcBUyoSA9khpfE
GianiWBLt3RQuaJJyy8NYqBZJaQObjSYemznrKKUev9FuHb/LGO+LxAo5Xwh1ZOH1S2/DYJJDtJ7
oSqWZEVV0D67UnlLMIDo/FMCiN+AxQuNFaA1nY1UTMtEin/8I0500+lde9TUxj6A2IdgiT26eZxc
0Q7xzWcjjUlCnnPXy3fJo30QrKNObmcAY0IJtAof6hJjLT1eQZqhHkC78mbxgw8UG9T4Kf5t1L/q
+uUy/esxB8vhxunUviLK/vhFpHE4/uSpLplqYeLO3fO3WjF6/t7BS3PZDRS7lcIZsHTDpkrvpBEr
2WH0UuAk1JRc0bOk6JGAIcmu8MI2il3O8aFX7psjNf008NO9XCl85t2gheFvRK6bhRTEN9QXqhwp
E43Jg3yyQbCHCAEh/hBBSC6wZz1PMVxjdmNGyzIDaCxDaGu9xS7b3lehYaOFWmmjryoOQo8Nd1T3
ueJbUcTVi3A4GjgtRwr+9uY+MwX9MtmLlVnPR2rXvXOCMifEx/j6zYjYDH3J64gGF2B6L1ntbJ1m
UT9qRVmWqndMpc9+k0rmEXzb+PCcnNjyjxMPUAU5cs2hcxCm8xcHqDJ6AQc+Ssz29/5rz2IBDaaD
lFbgWCGCjB8iznX5++EIk7AuaEB6148Z7ThDNCDgLe1sVqmrx2F0w7NjyWYIPz0zCEX/st8k1CvQ
4vn862qdXckgDYFAmKMimRtfo6QGyRaseEeBL2v6SsGqKoQqRCblE1pM4m1kUJ0of97vgDE9+/j/
IEMNja5IXxAhJaG9W68OST23o51emP4hbv4a+enQ+BY9F5KLXkWObytXslwbKxxQ45KLQ7tJo/A9
qQGXGSlNbtdLvvb2xSKZi7lEzo3rDGaPwAj0EemQGTLlUeb2jVDYI21bwt6uEmpAqnAbB4b6cU8e
LYAKFaa/9vPwq1MVKaJg72jrQ3c/XJ34Iigk2yq/MBq7nEi0IH9N4TaiaRWD15rgVrunwktgGNnK
MGOd8/DJ3XqW0OIgkuK5prcax5ov+EUa86kWH1dFYO3fBLeKkPFjICLycS92wJossCVqSyZl9WB8
z+1gfBwy8gfUPjBo5U0zmCE75edw7jaBTRq9j6UyrCLqyNgJO+ctQdeHtcB8/Uu0A6XzvVuI6nE7
v4sQMnmcyh5mnoCIUEUOne9IRPILMRo09214XKch3F3GKMglWNkA/lODXarCwjD04Fj6luV4AhI/
V1DXO+prJp4y2RDy6zQH/6v1R+BTj5ImxXVbjvXZE2suaxQuxG/cMm90gNEjVV1wrmzfFTSpLuUY
j+ZkC3juD2GOU21a6ftIjtvpRuN0Hh+Nr1dgkVaU5WWYd7MJfelvWSuNpQtGTxI00mNJpmaMJLwL
dc2I1YTsbC1Ue6OJRMJPc8rJPuaoLFZPZOH/xKQ8NlZxoq6CZCNEk7Onc0uAEb2Optk7VIhbG1VC
UgSdfyeW5d2zWx1AZDjNd/3OAdF3QcHPPdL/KyvwsIGvu9oBd+VD9urHd6r/my5GN6+LnBZqraDI
nVP6ElU7etZUkQsoc97XqWReNj2EzQKjm1S/fW194vbuXmYMBfj1RC9qVFni0EzZSk5VQ88o1vvo
H+EUihnJuQtGFeE79k+Crq8Wl5TwSQ8TZxHOS5TGIP65l+UZRkDByySSUmm18qmmLv2ir50KIujR
betvLc3YT9/W/kb52XHYC3oQHJUvM7O5FtPN7EkT0r+JmxM2YdeOQCdwodHrxeWqm4FP0KVQjwos
p5zk37NMaKssA8l7NC7dp1T0K5pbwkLDxH8ofJ8PyNMuxNTVRQQ10fJdLbUFBOm+Ank7gGtvTF43
yJf8XlKjudm8hORSx0xsX5v3Cz/Rd5DjQe7lvsbz5+vvH3s8fD3MD33Bns+jdr0LE5UgnLavoXo/
E2gEtryed06N40H3eQAxT9fgAKUdMfJ1SsmSUfWVhrurP+IDnNwIt+Wm+OOBF7V6Zm6+dM0yfsYR
KzsWEMrWPQuLv4tB2+k2UdUxxEl95bx9qpU4ar7LKkCMt36pdzaEGdAbJg4IM++xXY3HfRNHWVDL
q21t2ptq3U4TN2Cnoj1QpbPhzYu35OnRjciRyMrlEy7wjxkknOa3Lz5uMrSva5ODyi4mU+Y6Vy/+
0t21s5MvmximanC5hINa7OLxMG3PfZtadCIuEf/ymHyKN0bJ3V8onB6OAPZkd1ic4ldw/lB0PcLF
eXTZ4gx3YyXKTuVTKN+yNSckjMHj+rqOX5BK56LZ8r63mV6Dt+QA+jAkqp7xlPY1n42+jh0l6BYQ
LiIHu9kvg9ZFw/m2Sfqa6PdfmA0KCieRAQnUZGkh0RDz5ckFCleelhQeSHDhxUkZlUv/lbYR1KCI
y4YHyhdzkido3sci+5yaoHebiVOPPDT3DVRSr4IsopbpR3T7qd7bPfCBo1btJO7qokXgx6UVJ3KX
1umbspa6psI5oMWXbW6RCsyrP5Q8/uhmd1EOR8Eshv0N0yg+lANqhOwt0KW2S8drjx+q5N3WjWdQ
Ymu/vkzqCmVemkE8uFeV1G2q/sZZoa2yj6F7xIai46FEVxv55hJW0txT1fXc488M5ppaK68Ve6jI
94x/jPb+dRcvbHU6lvlkPlClxtm/u0+zxNCNCxRVjrw0BggWuQe5Q8wVbGY5KTF5b0pZ7v1KUE+e
s4meWT+RCQbX2Oob+Wemnxm9XN6tC2BM5YZhMCTkntYxyn4BTpgjDooCRf3t85P0zml7HEJCMSgC
pRIq6RkiFq5BicqGljkA/epRJxdhyvTEpqN+be3oRqm0Wo4LzryyU3fSOHiLHFD0Wor5FifVJP+1
rkAOV+qZ1q6PBzJRs6OuDnN9UQ+0HvpmLbtQY2jGxoCjUkVbA5eviecY8It+xEx2u+DN/M4mtm6o
6i0svt1wb589BKBG9PkMxbKgOssQa2/ppWpdCnohTRC8tql9Vrht6v3cKbzd8jnBCliMZ1qEqPEY
YUqVtvHU3s4KVjEqUJf7KsUbdxXQIjhERjH4qiUEdAFyfgSuqvqOaM3LOW2omjUT+M6OYf1lbFcN
LvmCUPHkdxunDm/zyhpqlF/uDEhTXe6oWT/U99tjBI4NOr43ugt6Mxd8YBSGALRuI+zEWJKuk3dO
gM6dI16EnVNrsVsLyTqYt7NXOPffUIQ80n930XxUgCdOKzxlqrZaoZxqO1DqQsbN6x9oVMKRd1mX
Uj6+HjyJwlttiTWxzzibBEg73wCUEu4joFO98Ib+a7AQSv1+M904dxGCEOL+othp82wtwG07Y/v1
mNbgvHdpWFkHPWuxemph6BC44vx0xavChfv5LkfLxCbGqeUPonUrcKJCNDdwrXN2687j0T18F/P1
DtTQ1JCoWpckBc6kQoHP03HbYQrVdHf+AgAoAAT4Fsb8mIBeMRxGWfK38OaqfFDXwRhFMg+BNNel
8d6FLhDg6uePRWE+BwwdjriU3sN3aEKHQrWtvMD1x6qt9HvJ5Nbp5D8zpBWW8eLG8YIc/VtFfNxg
0VPe+k0/VaT80/tl13hr+4a3bt7S7okMzKJVKZdMBtXqBbtbloAnZKzcfLerv5uHZtJ7hQVeRwbi
shWSFA3iwopxnuyrh1QMoL/t5jq6knRPC5z/Dd16TXiSz49j8ITEMbMpUEyG05RpSU2S6a9Nglc7
Wfk/77pFWkiWOImYS6h8VhurxmbQCms7KLoNG8f8Th6RzGPA75oL6WBPILVG54x+U7Oo76LJLZVD
7QUZkohk5RxRU+NAZH5hkzYjsJCe8VbR47ia4ChT0+soqBHQbPm0odExidIwVtHHby5Pc/AWPr/w
gImDfbXZf/yOOmiAyhUkgQqPEOtvHhBtq1VZ/uvY6TCBnGGLMC83NwdbQ4RWnX1rIwZsB434RN8C
NDJTUFNwkE/ZT/jdDtvj1RlS1G41Y4sNKaZXLrLg50mRaicj7Mf+1ZyIosirctKFFfj6m44cvwaO
HRqzjzkt06PTAkqzJlfG+ayJ96hnwtFyUvNBkXqXFusIzQwbZTL+U3WZ0U/fMQ52Jbx0591cttwl
2uYituscyjHvtefLd07Iv1EXfm+Xszo8zfb2XcXm7EmgcTNpWFsh/AKgB4TaZptjOISd5FP2gcXB
+iSxahln/2AUThpYXZ/WyV08Mb1Ku8v9yqtD34vMis1i9vC3OrP0oe6cre+qcskFG1K6w5hiptbO
rNvaUCps6fFStrF01lVAA5v00Z5XVox2rRevobJPCT0a4DEU1JtpKemqiRXg25LYF8mub9wabedf
P07/52icyPIG1dONp7bbeTClIBUpUfmIKzrIodCwS7Xck48bbmA6wQ39ifTu165SC20ZJ17vswsY
Pjtim2U6OCleGksMmPRGROIe3wVhAAP5TZ6tSI/oHoOTuisTQDr3cQ3nprBtO1nhOWU70TuAJd6B
FWyPxq+4U+eC4AIhSK3SA1so2Q4iP11Bj0+BQ3MUPR+0G20Vstw9JSuBPGNVYlm2UlWU4YBqQTF0
rpYilYkshk+YjOs/GwKdFaweRgJeLFwC2XRdAE/21k0mOgUzOUXlqVLXUOGTqX8maR414bR8uJI6
wBgzfcjApgaitZu01lXmi11tzL+TonS4nYwSYD+JP0l15iSVTb7npUnXMFY1XS/+L0BFxo5ft2j2
fePVyIi0s8RyR/52XHJ2ZPALJZKJAn4tPQSp3koO1gPP4t3tfwb2QFYop3kIoOj/XADS1qo+cIeq
P0SBWIdMHbtirjStH6FZK6pdNScPO7ShrdFjl13pMVtw1/lvGJW3ASidXl4tJQUQoMxogMiCRG0B
s7e5unVKoLs05e6CcqV0Ufdq/te9gz4Mw+fB8PngeG7e6jjQHC0vLanco/aIfAyo4VbWMhizCLLE
cNGASUVFMmZ8RmLmuL9WFhTd13EdGDLFWVHOs0OM6jKxB/Xo7zwHPISi1iWMX8SHXS3uAFy8M2G/
Eevsrr3lsrj84t6lQ+jEHqeasBeBIO6DVbbDvZyopzu8B9u7bHqPrQkHFa14PY27WjoUmY3L3Fq1
rJa1QiAIqdAle4wwCTaHCTgiasW9rUYPSwK09O3VNiJX/U9DuMsDqC1kPi4gSbZrGP42mQOkz4UI
Ae79Cap0g3UEhkl2C7dFOlXhOL8mt3GJb+VhFyYOMJhRrgcJXi/5iVUf2/xrr2EiCpX8GRmv47eU
f8QhXuvSHFPp7KvQ6FZ30fPp/xS0rCTGPxAGOy0C2HbAlyRcdbvbhGWsvYPM0e2DzhpjtQLFR65R
lWBwb8PIhmPgQnPoFJMJB58F1bd24Ojv47s/KmspF27m2324izUMYn679N9LuS0KXajc1tdw3f8P
KKqraZuR2rM9IkGSfnyr2rl9+LqAz0w8MAYh/OGTA4VeBprbTFimxMY7VMx6uUdgAr7BDMwGqUtW
y09am93Kezk9wBgDBoq4Tx9q6QXW9FU3XhRrkfoti1h37dZbVM1WeADzogjixt3EMUQXeu6KHJ1f
NqRadxiSc2/85fzwoNsCXlQP/ORy+w9U03a5puPWI78Etja/jV2q7IIsB2XH8eSEySfMT6UJeO+G
WgH9k5A3xDJ1HO2fAudGJIl9FWczOCQoQ6hwffR2+rBzbhuEIzDGOqFThcKErNx5APmn83vlJOb6
bktwMKbPfeMJKC7J0XK82L//sVbN9x187Uo+njaYcO5PjO+toIqkIrgyIyjlRuMzbhVmkSm8y6OX
JC+JYF3dyDsCZUtQNQk+qoAQgD40c1rIokq0lHDz5EUOPyh32qe+fPnBJv32cyn4gliC7cXGWGWM
GcM0y0wwZ/6Pb4y2L8w6LA97DAB3ahnbTvsQq9a8qFs1++brwljAhQDIp58qwHu1/JAZIarz2bTx
ukk5HYF1vBSXjTLGpZsrpIIG6bcrHwr8F0vfuS7/DtEbIwjz1L9UmwpQK9z9joXu7ig06XIizcqT
7Hyv40BfIxnmK6086YRdGEAILEqcvOTVWG7QMhUPXo1K7Z4lrTgfnQ342FOIx4kieT3Wbh8Y3Iyl
aHdEdDwUyVyeAkcZ9Z0d+2ajmE2xOWqdZookN4KyY57rupyxsOmxXS8UH8aMdBIQuj9Am7Not7Gk
GO7RBBHeA2aHdLQcYd3NoacucXb+MRP7aFxsHz4OaiG8jEhDSpXDC18YgrlGxXPLbVMqIfBRJ8R/
fcfq6q0JoA84zJu+G4Q9KG3rWXVK0ApfSgmQnXpQVXFIU9H8BHhoe5ODWmxsAY0iEK5r3dyCuJb4
jAo0+cMB2ZyEA6D5gpNzbcSNDA7qkgIhLMFiburw37pRxKhbMeaMn1Ge6c5hnTrDT+Bsw3xvb+fN
1GrYfGDvT5wrW80gXoGdXnK+ujrFi39oacebCoPNA9Q1+NGZSQF8KoULoFXYpm/KgLvcVNTnHvaV
vizHXAude5zwz6etfc0OIkRAXq8BN7JmlaCj753VfA5bh78jnjlDhZjfO6ltS1KuqYx+KQrORTRW
NnfgQi2ic1iTm7EpgpqW4IYfdQEFJnR/yocg6pMQ4X0IIKnsV4imCV/v9F7Wx/tm0bYlAXlni9GC
Y/GGh7g6U1Sqdjj9Yr68QMCLwLfPWNXY7seCDkB4DRQda5GfnLrKehmt8FgQ42o+d/ucwW5k6uVV
plhxTraOdw7hvV8gk24OOJu8L3D0rKlyy1Uv0SqZ1lbpqgeXzMq68vZNDqh//LAeJac3DA52/rau
9pjErspUwTzf1H5INnMSOp36PxNuvnHy0BDbwdWdW17DVzivPbNyDwPvCoLNN8TokrsapHxcQH2D
UbUcRiAUnBogkKqcOjWVCO1ohV3Ki6CnGno82z1EPF6FSSt1+bfCUYyvHQdqErjVjTiPySDAqSIT
37u93zW2/xN9je5vf9FrTssRLvSvcOa5py/xADE0KbtQGpacM0rqybDbcfBOqSzyUmFNb7H6kHQk
sZMbRU2QGt21dJIdkd+r8KJC3CyQrGNzYxMhn1u+KJk4fluxkXu0Wvso3ldeJZ+e1HVHvml2d2t1
0S8sewXtxaNQx1JpPvvRxmlSm0dPTuR3zKxKDsx2FhBo1NU072jpt79sA39lo5iSE3H5U83DLJYF
biDp+TN3SiBhiVu4m9CemaksjqJCDq06/GNYSzQoeNpvU9dEn2UrxDE7j9N+1fsxPPXq752wW7dx
8HUozCc3V74fM79BUFuTey9ZTT0ZaNSEeHIufiZlJ0GPNAIrCZZgCGLZz3/fr3Nh0DgDDO3ulp6M
nsoP0qdMnIw1W3FgvwbKtYXA09zActNfGHKK1KTTdlP7VOcruR3VEvSZ2Auu0EpjgqwFTKkT1mx9
DqGmhca4GwcJqduV0iEUrm72lfLwfc1E9OPIZQzVO+Hv32jj+piq2y4K+PQbprXEcng5s3fGbPND
WTVk+jYQX8rTJwWrdDnT6A/OnauR+NUx8oqLdqPBZFFrNbYPDBMBWaxHiS1E6uWAW964z2aUgPwk
7/BQ0ymiuEQJsZFuKGQivYTGEfEwSpFQFKByfEXZmCp+gPRODpIhYv1rzz9As6B0xJMHotgkd3Aq
mPYdFDsf5aZC4Gzqu+QAsEoXk5ilzMtv22vBS1HCzDiZug6xsUtCivYFESFJC9VxJA0BctlnurUO
lMeJ+F/5eS8YqZGQ8E3q5bK/oRkTyvBBhPf/AbcuKCzfs7m0jEWOXknHfm9GjgHmva+GspZ7P6XX
qhb5HkLdPXUW+O40PYvwadbuvwfSyORPBsQ2TwkfvYYG7ORSJVi8kLl+IJI2RsTKBIVCBjpsVVGA
kZIC0w95je9Na4IMTMaSiQqhxrmXuZmPOmDrwaptVMoGnTgZfZIgO226C4fyLlY5eQhaQZU4bEKM
uYbsXIYysy0wkbVpCZ9pH0i83nnlonj51luyphKfujXyRdR1r45xkDIP26urHhIO3YbYT+Ojs0+T
vzE6OOAPvLTAx+idAGS4zJrl1wYaRnHVzsVfE5frWmQ+NLtr3VCTl/7IQV01Lxt7WcOJUuOchezr
Wm1GI+i/aE4Y1Vc7wcYiJMynTd/mi9XhZr63+W7I/WON7lBoQRLhwntu9jA6pz4K+gv7JAHIOKDJ
2neS7TJT3MsTWKJKx2cECsvutMpcrcMyav0he7t2hgFXooaLlTRnzqTve4LEzaEfnnC1mFAMGDDy
QXggOVHP8aiecTc/2v5zfn+ddNcN5xv9CTkVDWEVhHfw1uADw45OVdclTOUfMTL6KbACKi0idS0J
iLGQBfhENwKfp9Rlm+uRZodDtes6CoCJwCzE0uv38DxTfZyHjCDGRsaGaX+jljqQE35jcbgWqBlz
ewALorCIPrLZaisL8NZ6rSHem3K7FcOVXoTcYz9SaF0eHXLkkPQ3MUaiwbJhsRC2kFFpl/RChwUs
W4Atd4/goGt8J0SPl+gxIUDhFzd0OoYA6CfRgJBsQEW11xBUsf3GtVA/EHV/wg/ASn9VT+vK2jdF
K/Y8A2f0UOSNHYiSxtmjDL2sblO4DVCRmOYdgQX/+VUMQmZ44gANL9Ng7SzXc7wEQrPMkBFFKihY
ojveCnucBAS+HZRk4iSw8fUALjPuWo94kRSm1XT14rnj4zLXY2U7cguuM53MphcJz2rHeRh+7Wph
KBuxBu3ctatFnYl4iyHDD2AdkJduMa4iUo159/PG6CNLV0dFFd0F1yp6ms3RuU/JhkYnOkwkgfjw
oeReodR68tdPv+0zu9yNO47PedFcjnW1fKcw+fp7XPEh3HioAwewI5ISFU5j7rLp8gBka/aze31U
jtt0Ir2YJiwLSqX2BT7zS1ZlSUHdWYI8dj5pKuFnxLUuIZN58KiJhWuPHwBMNrLepcx203Z+AH13
fOnNFbaYaAZCEzMtzy10NSCxyudIVdxDyl1d1IFG99wUjV6zUN88trpofC2ZqNvI56ErhRfN5E+D
R/aZj7EN46QzJRjo+dazmU6fScSpZ7FiP9VHKYc/V2hoZu96IRO1Oe1pUrFWqLktz2tMLTJ0TFbG
7MeELMP+kUl+rYfbhHLNyZlzFBY755TE5Jnt/Pad4HrHW9oQ0RQ034/FuFje2Vnpj5Agtak6Zq08
uXJh5g36eTYwwd+B6RRTJJMTLvCMVlhiJYa1MJ1/qD2jRMH9h87NvefBM6GAV2X6Umri4Zla9WXn
/3BX8QCTDuuORFjOwG4LnNzlJ0MwBvUttcN8UP7KCK9jAL0EIcNltJ+beP1gUyP4Qdo/2BsuCDow
oH307mV6bIshRwASloV/Z4964Ka9fxEg9lt+AFLYEj52i7aeWXoER+YJBfkEe/aJpIUfZTsjrTod
6RxooWsYfO9wdUCh9+s7OugjkKnbw7Fvf0kuH1JFr0D9eJTZLU7OaX8BcTbmxWo7/agNSJyIUhO6
F1VUa/wm6HkscMCWd7h2WWs7Q0xu48oFXoyZhcnmn3EqI9EpD0woAWnRHU288vRLtTHJU9GNi+kt
3UALcasNITbhRWrphTHoH7bn7ilQD/n2A6I0sKf7kNiZgYOTKpmL2l6QxCAH8TVBj+QiI887Gt/o
tHe7eAO4YeC6MnS/RZGSk/+n/x3AAq1tTsY0co56H7NDN+nM3lxjT8V1Av6eSeFvM87Zm/HG1MNv
76kllN1r3YxWaM+BX7QpzSzM8dCN7O8c0tk5LH5vZk6c58VPQCG1OfJknM81yiGwMKAWjTdYZb2l
aSFy4GbLYOElUM++BMgnZtcTz2NeKpEU83p49EqYc/cARtEDEqiD6k74PCUIN1UJjbhXGAQskoSc
m5AL3rvu6oDtxpwegp4OTga0PIEzsT+/zAPxfHe3aumIOVT5KMo9aR/TPrh+ATztv747QhqZKIvv
pNfn5kzdwp/jydhf0BxkNYE2HXrP73Uq3cpgubUXNgqQ/NHSHvS7XHQ8uiHbWI3J3TlSEJAj+jJ5
9pFutD0AB8vZEvkyeAhBOW/TBgZnURhDsWSxsXnTX9QX8TKw28u2ayKp5yEPScAqOX3rPoauDZ0a
Z4g5MO50V0BNq3OGFv04DDC8cf8yxN4aZ5j4aVUT1BYsmUAHoXN2WGkZ3fwHICi1IoG67fBl76YZ
XPhmGilxSyAEfsJCn1AZu4ArhxAXj9v+72PuGCGs0OY5SFjPJvH2sjJEyg9EMI50EbXG2KfMxmF5
O7ny8Y5KnmMrWBj+ymBOdw2UluTOJTMcD1egQ5yItUE3NRsuwWCeJvHlonSMMcF2fvod8LxzRMVa
V18F6nVkqmgKLFqZwRzw2nBxlMssydrpxJ+K7ajjp7xnK0rLR3+gwvpdduzga1a9bIlKK66LpxYn
m4etHXnTsjgKs44HMHf7neBSdv/g07r9b8cZhzb9VYvZyjIsjN3A4WA1X3og403p92bX7ONVf5PJ
FBylVbnDSgCklNHi4uE/7R4mrFhr3ZJ2bz9cI+OwGwzJvp3lxjJzTV8lHZqpi+0wjb+jbSHxTMFi
0J6zoQ/VjFOg8ET3RHmRwoXBSygRlr//1ZOkZBMvPsXjcD1pWOB7QQalAehaLiyrA3DtQXcPVglc
689jys6PwiPmCwAcdv02Op690xdQfiBWB8TYooMVriwuPxp//eoPMhziPuWE3M5mH2t3k0pobPv1
FWJZvYZehRmvjJ3ogCmZWhOpORnTkBJz0EpXBuHN0JUNwlWkzL4B6NP46yBkmJWfFkzf1HbJ/fEm
45kuvh0EHE1Yjw6GUKkZ1aRWHd1fyPt80wWklI5iHjQ1w+HLtvudQsl6/r/3lEp4UzW/cFcVUCmP
+uW8bnX65ALUzXBXYSf0dh3oiG52t1k0JBaR5qveetFIz63d7O3aTcJMiySFDwfBR0wvnYFEE+1V
rAMInvxILsCT6ALvAEPjl1pk8ruDv1l1LfobexXC1PCss4mPPcGYDMpQ1DYoc77UINHCxcbEhQoI
p93CSpFAuamMIKtI6tMETEH8U754aLId01srOil31J9zBofkqMqeRMgmQmPbWEL1jUICdEI5uFzq
bV2axEldTE6HsnW6dr+wIT9fpSPwlaz19PN/XcVRxUYWktiIBG728yoUt83G9f5StgCzGTuoHcUc
Hzij8CaDrcK1Jq1Zr/yRYSX4Dy9zu1QHuAOnRMge02MJg5ew/oYvsyQqCeq4m2bpY1Jj6KZBb3a1
NP7b9dCQY5qS5n0xgynQ71JXTCz6jfkEuZtWDtvhiUAv9yZzqqDVTGZxnxGcAm1KvqeoAUvxmQfo
dYlLwjooRsmnMN9N6zbAwCF67a5sp9ICghD1PShXGmleGMwt7y5+nTqUn00nRkXyCtJxYM4V57+J
8YY96agITchk6aSjateyBf8vx92pk5SbktojX7BCX97xnxcA5VVlBnJipac6RVhG3Il6VK3znU0y
GXfwbzr/alwWBq5GQhqw5S6uafsW4etOrVV0Wd2/OKChqlX4H7Iy6dT28megMn2fS3C3PDxcUD4M
Rkxju1RzCKUARdg2jelRJjlAiQPN1Q946JAsC3knd78auiVSgwLR7q4EAkI7KSyiswY+5hhbMnn0
oj1J+C+tnoJoIbDje1BCLtV9yeTN2uTHUKJR8ucH7SlsxljI4dFBDtmvy8jzab2gFrQdz4TdTNjZ
5wqmW12iQJlvaC7Rp1MqsRQ/yf4jeO9elbbbDQCRJYJg569FW5DOSs2EJS+ktJToGH6ZhLvSPXWE
W3z6nW2TXuZxZdQcDhY7Oiuj9LpG0MfiQsckmV+4dJlkMLkNh6MF7AzPaWr0IIBsoY9rfVJyovVB
1zB6DH6vpj6TpzbOVayM5SogYYdLzQMYxh6n6Xg5wM17T6ZD4UWBEl14x1s7YBb0o0Sw5koZXu3k
TiOYlXEiqAbjSqyRfj3+WhnF87QqtU0D8JAwlHxylMkbIzuvKDxlA61xUiTDHGRsAk3K3yXWmF3d
jr2+3yMubzRZ3D52MuVD8V2VA9c8jVayrtMTA5lFpQuU1FrhL1PzmIUMlbTtzacQscpW3r/yD8iU
qjZTTbpP/Nj43zdPO+28SOjzkyCJ1x5A9zonfFscTbGGW/bBI4IpO2VjPJnteogpzjFTFMiG+BLl
oDC1PKuQpaR0qh9JZkHIKhfSV34B31tUct1bFk/ptJStNgKq5F0uPXAPkI62p9cvp7mT05Zx4tkJ
Jz1I20PPS99w+M2K99dT+YgKqW8dIEt6dBeLr8dYlCE+Oxr8KqaKvW69k0nSM+/crCiDhzncEG/A
/SmnNr1wFS6/1LGveydoCOkNLDmLWakOgetGgg5TXUIMdECCYVrfn4jabQqsUC8fiEO3ohKEpVIW
7OM3ThTlQkE7qP76skbAxRjIfLR6Bk/jVVVLXYIMwYz4DPFl+ErVkANvM4KxdPx15kQGGMV7iFrc
rdnEZsjHoyCVTrRWWGk4q0PyrQR7/CYXhpvrC1OqfslV/qKkvbaKs1SXFogviHr/vLFX/EzGHUEw
J//sBpjq1Ad2DvUzY+EPCi8DB4eQSbJMvPy/1RdCv+YHVFbjrDfIJZEiPgKG5fNkq0G2g4KTsB4N
j/HTpfSLjcPOgnJJYTkfM7tGbE7D5fVb1RAp9wl59auNE1qHpBwQJJtnfkTiXbKTQTW7OuNP0H05
JOR3w8nYFh0A20/oyGTnBbWNQAcpHWRw8GGgHMUJFU2QhzBbmHwzDcW9ePB9eN9B7EPrD9C/2Zol
bPT8fgGYliS4vdIS77dsn+3BePIXQpsBIIMh47lQO9hTcnuWlr78Q7AzO+TtatMXuiqUzGWKH0hz
X0upmvoJeQXYW8b1I/kpgIbrKf7sycqpba1iVeydw/0EgAHI4iatkQr950WyaKo+qaQkRzz/LNmg
R97r8zQUlBnm+LDEBMifO2gASO46KA5TtpyounGr0nvkWORYuhPKyzzFO8J/1st6xnQENS9ifuZ6
ndH2ifV6Gpwwt/ykpTH/VbiIPQVtwU8+FOo6JQQLiRekLieMbMXYuzgpYNr2dqByK8nF8sgoIQJQ
yxdWAzWo6QVqBQCYDkbtAoZjI0/ww+DU162VL19v1+bkaHLyZVynDqHqAJW6IyekeF5wC3NsZ8l+
ejnqgvyDN0X/m1D8986PMMU68gLBRBooZgpibzyBgMSlxtWukhhVmQ40wD/X1SSMIZkvBRY2VtM/
6SePsTFWyPjahHxxUoeZwblD9Ql2KvFmZOeZ67MRLkbsZw5OEHLspVK+EBc8OhHuDJLx17p+DGPQ
Myhdme3bbW2VHVeh+oKlCEY05C0OI3t8SGPp7c/+uMBSMvGwPZDUo4UkOsY0R8W06iMzDXOVMPIq
PFBpIt6sGr4qxJo7qBEv4C++IlJzM7QtP3/6eyPv5GiUGjHffM7YTJ1aFvinHejUaga2bhW85j/w
S2NvWWJCxObIGifdnLJJd4Y5BB3230I4s6bfv58UiSASvPUGtIA1WN6rgp2oc2YaeemMz89r5EWl
D3aHxU5Ub03uB2ls/pl9rqpRWeZZdxbobO5yA54itE5Yr7rqickkqKNWXrezFhIB/pg7/Lrw08vq
xWBGp88KoTWbwSIQ8i8r56W3aCqJOjr/LChzmak+7x/hg+rVKleplVUABJXNspMMiXTc1SHPIsjn
91s6O4H5VPfuZbK8N949GMA5gjiyr1wLW1HZPSGB5otDjBggeZlzNJWy+FKqvhttwSIsCh6ob/f7
KTvwxKmbqgM0Wom93tgEd+XDlOrv/HyRZXZm8breeElI3xHA4waueZc8XlkZETWUM0gtSvdGie2T
C6Kae8vRcK3w8QrGq8LLCaiaDILLSMQoV1VxvYc6DA9fJoVDAAbmVqSji3yI9HWYt0EchEunX8SG
mAxr6dCPB3XVbQlbhnsW1Zc9+FZXnyDR5NobEh+8BVwn0pePmUgaKn8uiAObtOEAvVG/v7oVPCeU
sfWczn5qNKCBFLJmw3LmpMzIkKfLcqrPkxh71BUVRLFvE/UJ8LyXOIZcQeG4LJuJwuTnwcXDOGDq
VBdjoF7sCnX8Wym5EuUq0msieCnuTRc13ZL2cxhoGx9jjfcr/KJgBWlUzsilq/S7LYtOldhUv0N8
aZX/xvy+eTGapM2gEpgCvtl36JHLTPHzQqv8H1hrJSPfQHxQho7h/EUXJu4iKqve2KcJnl5VcIEv
4WGUsmrNp0PYUrwx5XWfRjCGrHDl9nas53AC6I/oewgmU+zowctY9cKfbXq4KN8+OZxyNP92tsi1
lxxZPmdhEagsQYI9Q1rIdzxXPjpnXBSFrADy1vtw7MP95ED0VuOqzlIFYKU6IJwPiFL8NFJ+ILAB
4U8e68F76JgaHWIGKv+iz+XPi5s7EgOwLEVJ1TyA43u53XW90lkMhKF9r2i9ynrxBryW/IHBleG9
Cmw0bdrBfdRVgpM+igSGbu+Xmcfd4GfOZVc/+XZJ/RD28Qgt4d9Lw0iUVUv6dN5wP5uruPEaIQhi
oD3U5q9nD2C3g84tD6ukxjejnmzdNrm0ReStDVa2GYf0yLbT7QTkh/zYshIw7GOJ4yHfJ9dBpJxG
1qiXTAgxQc/tyKNCWHOQLObmw+IdK5jBs+b6OPCnJQ4PU2RMkcb/h1oHD3+qRikAlLfnLq2F4dj7
32mU6BAUvUV+ghEJshSY6nbYO0BwCPamRjO6CxeQMWA9oV1Db3JU2ZspbUg55LBuMq2Lhpfnfcg/
QgJOwRvkN9brFUeWEp5OZgIL/gRIXnTGtD9FHMdROL5qFa0EQAdt89xQy0fKjYDx/z15y3xgXhkl
4yvhkmK7ltsgmNqXyaBvch7dgFOpDm0gwPST5jg1OG082yoR13F3oLwrUinqYc5SxjE0BoX9FNJw
Q5zAtPWTtYxPd22082jMIPuhjRwiJm4n0VQnzAbeUZxd0iAczbDRTYhHjCMdcmLDrHTTIzAb754W
ndhuKHhDl0ju4I/A1CH6qILHB2NLueeUj7TYdpavZGwjNDZole3IfUdAGLiDc0d0so6RPJlMsdPR
G+SoTR906GSfJd9sU4qcqm2PMduorXKQVbQ7tij11uQ+5ShDANbXdVUZVpsJxrj/BItyrSKHA3r8
8HbNKiE6rhuXfN5/zQT426J6GTZY6PHtO62TweN5gHkHt19j2zfMc3cRZaX0mC6bw/baIy4kFbaG
8/buPlKxma8XX3x8AobE7mFVuAbpuJyrkouM78qk/Ah+OVNYEPyWX4wSCmCWZCaJhfPnu8bj/ROG
kXJrjiNS9OEVg0u8XhlBn6DQAX5sGNBkDfFqPo96sRFnb42wwyjteAA+j4cT7xhSG4CqyvRbUR2b
J9QpAO/UeIo8RIMCo6CwbqjdfZGsk4mpMQJTu8gSNQFgOiP1XhIh1dexx8sCCaGva5BczE4gcPH2
SHq7uX3IxUfE1oUvTyOBiSnQLhY+MJc8J3vSitZWgtxFWVgMlzSNoDpF5diPjKX860mkLAsqAAyA
JoMnMLPCA64Ls3O5mCwPx2IjCLJkKrseZ75svPM8C5zCrTU3ZJm7AzN3PocdZldituoFK2JFHKpG
+boS1WEAWP3n7ixoPFvex2caggSoVoxr4Los7UbM2LHK1VxzxbK6QGKOqtd6KiKukkfRha39e8dJ
eeWQ6LPViHTQUHtCPm7+TIf3yqhQPgAB+VfqYo/1Lvdn8v+jy6+eirmFNmrrimh0igzu+Div2UuI
8NiwdmCDQ2avav/icAcxqWB8oFJBAT1NUaIcjMDsVgt6a0T0cR/HX5GuYpfl5ub6yRWzyQpaH6Wz
A7KMcYuiswKMj5lPue3NySGqF+FTONwtvjWixhdRbNeRxgKmxe+LupoCNywrZXrrJVARF6SmfPIJ
Qlu+FmJSGM4MZno/XhV35ALIyvzcErYkbaMf1VvvjS9gDW6yQyVtRbjPpWtiqxCVTOhve8QZz9yJ
R6lFxF+DFSWo41hWa1OUlwQQWBvFPaU44fOjfzdpQROpV53redPQ3Fvp7fXKkqNwWq9NcJP2n4BW
nh2ZKXq9aBArknWS88dQNdTkC15QGHlgoaPkQCL6a0ElacUY+2T+/IqQzVdkUWjTdD0+fhsx4+3s
DdLYJs9guJGoCE34g37UTGk6cvNewBJbykwzEYN+Bsp1+cMG4kAS1kgKocGGHQQKrHeO0x2I13O7
RORm6SZSlUBRwuKVyHzN+IfNKlhwlZVZKzSk30pv+Sg2SC7pEu7J4auFVqxjaV8CJCpn4cDQ1X1V
FjbSQ/IqifmHQM32zp5b7TTqp7xg95efvtNXOedn2IDnZmCXIqCl16pRFvaHGZLOkHJ98lQEN9FZ
sLtVNw5uaZKBCI4HA+ISUmgx+FmJRjmRKMLuUwtdpR6eWpI9q7vv1RrlGtF+o1jI9QU6b8DGuFrc
NhiYsJ13z9bpfIZuMsEd4JGaYh0kfeIDgbFzgYhZo+/35VratReJ/q07LsSgHXvRmMSXOj9CvWED
9DR2ANpsmUh1zTXHgUQ7+TfMrkwC5mqTfCWBM9lBVeT9xBbD2sJZPbkwfKom+ATelSjdNSDTV3rU
+vliypR5qgQP5o7IwEM9Ai56Rbc9/hQr2k82Y7qtqwfEyjb7fkgB3OrowChVpQwbd1Oa1lwdmzuB
AdkApE6mzuZ0FJeL2EoRi+mJuBipVPw3WA+97ukFA85DcXZdvnvNy8mZ98z5UQN+3GfoDz5yhNHk
wHy+OXrMW2hlIMU+tXDLg5FWxfwvaCIwXuCD1/8Ql5r4wJQ7jh3oeOPbKYUJcwriC+pv1gTs7bk7
uFZjA2vSCbPgAkmyWj84doDuyQvnPOZb8mjy0AQhqLAYzAPSwGzt3v+CUlIF3yR8uamIV09qIABM
5jRUjRs+50qDbdksFtv/ukAYwJtSe9L3P7Dbaoz3UNEEDKZnTFBAbahdf2Uev6nsFIbjnD12M4Wg
F/vchhkjrn7f1B/oRMFkPyiF1483MeQxXKfseGQgGGsEd+mngqPDxGwKPEn6X90E/EmgLcBl/xSx
cgAXR9LMVLx80WCpR2aUZkgF+quZbzS1B0aEjn0D8ew1DZSvKgAPtg1HUf6l2GsArGeMT1Mrg+L3
u9h0ryGCuOkma4fLnb6jPU0ph0+KCelHJqR/meQ/02q4Rm+UapbbMU4qjP0z/njqzqE6MFMWdY2B
zd0mnzsKti4zOxn23OskBt/tnMvfdpsHhbbca1UNyRe71Sfn1qMVCi1duPb11GYGFCobp3pgXqNM
FZcFcKP0H3JJJH5psZuwg11+9XyRWWj6jU8w9hjXEvXAegp2K/08zqOZhq4e1wrIdErt6Fj59v+P
EqsTCtHKkVc06JJUOLcqswFhrA3c19JPLLhjkHpgCkzs95GowDd+IRvTTjllA4N9UZfz7Qf3qc0f
KaPyw3jvEyMPZqVsebpZI7sqD3wYZnWGYq1sMUJ7QT+nKkpgbM4vwnyfVRM9+FgYbNWb+LzZzk7p
RDX6imrWdYUNymBwr1n76jxd14PpSZtb3xZKdfp3mPhnd+PNX2L+QFCuTyuBFVdt7Te2mkchuOlP
oArKvaEaMmN0qKEED0UeMAyYcvqnKJFRVQmx2t7x3F4lvjCoV5UjPP6NWHP3zZMM2N4Dev9zO4Zk
keD8Y6XIH8Wb06Ifburrh0sniATfrXhfcEGUk+gcHqO7FCcWPwdv7mwwvKJLqmiBFPf/ODKVvZPZ
844yh1Z/iTf3vdGipq8yH9Oi41wybVsVLYtjQreVM0I131raVAVgnl9MhhT1OsbOJU4RDwYCi/7h
mw3047+g7zYNiL1upvj1s5HoIlJk9vXYr/D6bssPKEivMWyZ6+KcGpYZ4i1pJz5t6LZDemQF2p4n
lqxHtbfvQ3laUnM4AR/hc9MAeZFIOkhdIq+hqPe7qC15hi7hkNwKTCPB7o8gMNbMsyvNtycqmpvv
gp9fR1xvJbXap/wACsmBKtnEzF24pnZGFDarYR01tsXDoSnEX4Utyjkuvon49Z5oaxYR1w+0C5yz
8/92TM+NcgyNM/YR+g+UpPcvD/dD3xs5IDvAmpDNo0aC5sMZYcsaT5FSxCq6qsAoXafQkEbfZ1VT
gR4NOcTJUNO9hI9VlS+GAFoLVwy5dV7RX22ok9yW8ks747R9NUFbqFW6vNOz0rUO3gEfP0GLVSC3
tPNMkKh1cdBLF9p8D7JKMv1dm10geH7JQoXXrXkevRUAMNqQM+aV6+nxeRujq+cDfh5RR6WUGpk7
rmsg3Xo0qizQRM0IddFz7mTQa7rwhyHY7XFxO7sm1hpTY7vLeQlnd7jl4mQp2SJ79LoPxqWbplvJ
Q3a5rmZ37icub8LL/D5ITBGNQn5SMEHkwO9TuNTArGfdG5eNMgQGzt+zdSXRqqAmASGE3hBeTTFj
AQfTkk0xD0GDrsbBG01Lolw2GbARUBx2Iihci70aOvGBuS6hopSTV4zK0kQ0aeK8al9uj3DDXY7Y
5mqUbYSI+FBu5wKeiqpR+SiXFQXzACV0iMQJgPuLl7Hg/j6gQ1bMlCh8/ftPz+oVV3PRramwxaLv
IUwtbWFmQhYLfvph4yfZFlfJLr31/BWOPnunci+yuFewBESSi/ENo+iZYetQ1bxCR38c8BktAOKl
fcfxSzyLmlsrNC6yiOnY+fPNESrfjPEjK/2MGdwnBsejvswmkxGJ5WNyIzRF0sMnrxqg45lzJDX0
da0mBUI5SvbatRVZP2ygv5d5Am2QuUXFgzFxI29IGgWSrIh2C5C1S2bwwtWCVw+ScGFd1aOxdG/p
RQ6Rn31T9gn+b0DIu3F54Kg4/16AaevEr5Blk8e7ix6pn1ytNQsQiOEtisINShsHFPH+DzuMERcO
YSNDHlpfyCF4fsS/XmHUFJZsfD4cPmJ8J+SLDtpFpUS7X6blLfoUXkuKRtA2F4DhssRBzx5fLw37
VcM+hhGW014fm4LWTl6caw/dUk/zoFywAB8eAqSDH0ayEaLH9b4ln3KvbrBia52lDmfa2K5v9Y/F
314B6tPiAerQmUOH6ltF3MUb9flRllewWVa6snALQNHMqSBaK3Ln/AxAjBfmkp0pnAm5EoHPaXXQ
bedOFCgAJbL+wAjxPoDV3MCRTOZqe5SBoz6FvrbLYauNzup7OfUQjyCG5/r8vvbJYDY1rfdLl1BD
4V5c4wKNdQ3s2ZnG/xn1KHT9tb6ekDo7ejV7xqVx/72PdLBd7Kz4HZXBueeO13EbALUzlIY9zABr
8xwOUF+rcl9Rev7/zCrgZlV/k2ffmnFbqEi6dlIi8WyiJ2F2pzjAgtgzU28Ugj72Gs8NnENnlowu
qkn5q14MAwFGh6Xnqwrsgv4OcbMRGMFXaqyvHX9v/oGB0oZ4xYpIveZJ3DbeV/2LEjWqWFMGNiVL
gT82Kw04lk7laqatpyvgt1idXLU30tm+TAgmrYqChDz3ICu6Yt/X0nAbh9u4OT4VD4e/Lqbuud4Q
pyw7ZkBFf2W+Yya052gvE1/HmqCUCdflgDpvNVxSk/2Vd1Cdemyt9ia+uncH5KWnzyse5xZMIl2I
oGYT9bz+UX/pATxvihFjTaUyKej04K1U5ShRDwEwJlKAc4Lztu7pG7A1opTmD9w7YeZGni/B21no
+aNlZ9gb+721XC9iXdbcgom51mngCehvwPgSXL4cupPneF8DO84uXc++7NhRIOmGnsi7fOahKgeQ
Q8Oq2M3m9SNBwOrPIOV789ZMx/FqgoSpD6rMfsFAbayAzPw+BkfA3GJFVUDnT7/YOKCueoE5sqJ8
TyrBEJ/xXKy4MRB5+//hwX33SVFzcMAcs5pwYVmenNcNz7tw/Swb0m3SowWzOrnZtWpRlVopMxxI
yzzQiMTDnA0AdT2rpkhr3ZmTMx1QL5en5M2ZtUGxEcQaazD5wjY5Qq4z+CJT36nZcLRyup56o2Ya
YQ61m2oqdQGM3NNknrQ0XcR5J2QLU9tL5zPMjB13lgbvQc+7B4ZrsiyJqBaIiL9763XH7vm3/0Za
98mIG6WMDOYtWrsrwH+MmCwKpe70o2LEiEaBNral2yLdSkYIRHUF6PTHMX7egDGUNHzajAc36XD1
CT66RU3P5QjK09UDLNFJNuAg3bmwszgwvOiCkgcgjG28IU2X1a5M4p4kEFonx5W7GRfDjJi2oZ9/
gNbmX6UU+LFYMavz27/DPlpzR57tQTMBjdgMYIOCoPXKdoanLYmwSvQlnMCSCDuU8e+1Vvsu1kDj
vpBmxSx00Ijh9FY2hkWP0GW2eymOqt4foKXdjnu5Mwlsb1Za5u+JTI3HsfG3EAYtOzlvIV9OrRN4
xG7SNaiikg3Za5KXH8QbvJeLyFfHWNTAC2BkFqPA/KMOTm5Y2H9efS56GZTO9Q3KxVXwg821/T3r
ZNhYtzzLc2H7XPCmKziK1gxfpd15iOfjfTXAS7N/ucfQAQObTHp9PTduvRdKfYtTGcl2ZH45Wd6m
RcGjqZQ4YJdwoSMnZ/rgznp4Q7qE0IrPK0MmvsFGKJ5Sr0DhQn1Ip1bz4JVpiUbNfCuGkLLmZSDV
NqiKPwwoCXbHlVu4ZcM/4Zh/2eyO/b1s4UrTmwzMgwxtid4A/LTCEO1JW8lNr6Ml4CV0+k4ZFrMT
Ew1E7y89FC1EgpCHTIUZRGZkFKkxkgTsNyaS+s/DzL9PWqWK/brXYtuQx2kVa4FP9QKAKHTh59mO
0vJEX0l8vKrVCP9p0wqnXKD26GS6Iec80TjnJQaZZHTPZpI8CknRBV5BYyBZjmdWCb6hIa0NPDxO
thYBaoXA8ZTZcYamY244rHk489MlgpVr26UIQLcp7W4T9OjagZdp8vjZ6n2S9ptRVHLikm+NexU0
UqfiLLf5TRQYLxh7mdN6hOCHRTO7VoFpYPeMmh9dU3TQKJzRjmSSSeR9lYIqsoQwX0ODsoAghZTv
cJwNCodA6i5kSLLNSix7aIUraQ7OAdSBrMqxVRGD841O7n7vPE9yw34xZjib99pFQdXAG1PD6bk7
IYWDcKNuXnI57P+gijCWqDiWDC6yvT0yv5W8NxoRHLHXNxCf1Dc1slpuW4BxMB6Ny/B7RxPZWkSV
vw5fJwg2Tey1SIPVQSIyZx3ZWkr8cpk3/MFO2OwiJv0e5bpOJm9OoSjslIbky+JVjgSGFqIMMIgY
TtV4Tp+YtCJ9fmHs7HYAV7l0G2UIwobJ7jZufsWS3Lp5MyCO86v3Cu4fW4iFUJnMGr/EppVWn6jS
2ZE0OXsHYhypgb41ftLhByXsKLprZ9Zk4Ea55R1xah9FVCpXFfP5kbtF6jkNhmoE16Pc7jBlT/fF
LqZ9Y6vAaxZdZt9XXcdpkIoWi9mqgkrKCE+kdTPOy1vOxYLIDPWUKhLCZrEYv6oTSfS13XEaEBG2
pFRPR9SqH9j4uNIn3ip9bmKsmzsw9I2H6TUdmizZphgaT/FINisUoFpF5Cl6CD5u8q11Ce0Xa4oJ
uc7EfW2L/mk2iCu4Ai0Jcz0LztYgReRdMYqcRWNUHSk/m3c2VueBwKxFnd9TT59PweNjX2s1eJPN
MLPzeAgEXDkGNhkWMzY0IAcbjm6EZzGWB55D01tiq2+X439DJA4Nz/erUH3NwAQXKjmobpT0x4Sd
xhw+6QaNCoXqkLqZi+6N5VOexJn1sfM+8g6t1BOySurKz36/D4qtJ9NscLuLZPZdR7yGZnV+vjIx
ORbYcEnwBBRDZ4PxTWOZvEVrw7ekHNgIFQ+ODTtH8Q4KTaS3why2oXJwukjNQv3QiAijQKjdR/1c
eYUxZPXfW57eEjWO2RlKqwQ4PLmJkcy8AMLEs++rBP9JrWW2J/+mC2W6vNi8R+L8k8Sd4hpn+2dC
0TBJygLcz3aq+pSmOlSyPUACN2ygVcne0MytKNIPf+4vjZhOL86jyGgqTqY57DFpODqrwRpcp9KQ
lEv0qnqW3afKlofsumih379tBQ2Fd/7MDuGTIOYU8ObTHPFPR5moevP2UhZpeUc7FEkr2fSPLgMl
tI6rN0Jfvn/aPGvft0P2U8ytlXVDyHRTfXKOD84KC3f7uyOez25CgPiAFcx+SOk+tEQr1oz/REVQ
1kI/8ehDDJlX1WMZ7jFomElhH3/zgjEbRMuAmbeQHlDuGERfZQowEU3JSzxv/3SM9NzgF2tgrd9X
7F4A+bITovhGT/112MeYLwIlFWWckqCNyb/1V9i2fegrb0/uaUzraZragZ+Hsw4HnejRIwpDkB/X
Pp8mUaWdX38BlZIK2CxQUaZjbd1GoYV9fAP74px6rysO/WGBeyNyDtzog14SvKy1qA5bwCJirpaO
CEB2NRakx1f/3BbF4qKdAOD0vRwPovRPzuACzJ1d59SwDbFXPOnbIa0grsHwRuYFMiRK3iM8udPl
JBlk1bA7pGE0T/hXTmiDaecDTzE5jMhWS8cxhSoggu8C4Q1Uv4njXpbZSamj9pc6/YP4AX8zuNzV
iBconPIuf8Aoa5NGpKl7F0wpBsSZ18c+6wZSdu5PJ/K7yy1iZyG2MRUR3GFxwkhDCSfK9RmEKE2E
toHcIGQMBVj64FWp+W8DiwnxuEykpvkF2jPJpkA8LR7p34OVBSkn+d928oGFaXcz7h0yROCYFKL3
4YT2J9pmEWzsHD+BK//DpmjOTJ6FZzXyW3KrPQeJKSul4Dzfe29K03N7YWPv0UAlQ1reCV2vKcs+
hypwkpYb3F/bsym+4oVypk/ojAOgId0axa8tel1v0YFn06B10+lew/mOijSW8cn4exVttebwTeYT
7FOQupSMMTdRj0GzsDTWkC2GFBOZbPS7xHSigMCjweHC8u+MCtAnqE5s7owOx2dPxJR5cabf+a6U
BZ6L14e58kdva5cgcI49JMykME3gKByGZcrY6LKuHHCo7QWH87Ri7GYOsJ8kpo/sJc8bn5LjsbL/
pSbzCImAMPkli9bTDBp3JGOP5nXLvMaNgoazE//RXgabkcBz8/X9JpLHoTve54bSy2GOmmmilREU
nRkMcdpqGvGIM7jv+7NXY/pj+fdd5uyf7oDaylPFWBGilH2DHgeSCFX8FCfxh6nmmSolmhJbydRc
hUO2hQrRRwypxlWmoT9If3uODYdtKXKvOvLX/I5S6xu3VAWPg1Zav4zfJ8GRzZ5Q10vq3gnSd4vI
4eoW0FLtURRkyheHIiORgHy2bau0bNQl1UPxu1y/kJiTZ/IBw9VnWYdCFYaTftKLDTVp23EVpZJU
a3hL0TNTaH711y7ek9CDAsgXUTvEXCja05LXY+IWddrly/4aZLjdyXYL2JVm+vkn/2+rr3y2jx0S
YlPh2MJChbiQjMacN32jiRInYgL+0DAUAe4TQDlOE10pLPRFZ3sypeyTD9Nu79vp+AcFtw7dkFVe
MuKibl21LmNjVaqdtTiCJ/M7rmCTP7F7nXuEZs5jGfwOYDng9gQfwXHRGKg9HWuIUl6zSkAA4PEs
U8AvH5+OBZ9nacij5ny1+wuYF6WZPJcCsr83Zu+f3pK9jO5lCENNk5Cmh0UbU4s7IKLFU/kn+GKp
wj+amM5i/vojk3q0EHT+O829ZMTyRBu9btNXKlFp2tkMtpNwPLREAzj1gVSmOC+SdqReaYA+DGQY
CMysyMIgXBWbrngSD9p0xUkHKn1qiDrWQGmpfR+Cm70u9ulnzPMAktjhPxXYWnySXYUqExXZDmWN
J3L+toyEaCnPUHuEl86vBYvMPrKAsIrG9kopu2cxX3Cvv+bVoeUT62YYcaVNK7jOYFsYLOB+GfVJ
K1hnHAd+0+JFMmtlWapCyiS+VrqODM+J2mROp6TaxfHjI2vw1R+OPAMPkj0ncjwYAHBlC+upZYH4
bGB8HNE/6E0+feilPCC0KtTk2nIcbJ0nSjcseT4DIPw/UsW2IhC/+JYEEIs6w5uZldM7FbT60C2L
yFgfUR+0+Q6vkGYxAseTmWgI0dcOZPQdxeXAFEzbXDu3heT3sShYu5T3w05n/y2NfEQDvXlSSt+v
qasRZSebTJIDilAlCrKSeNKxrzxncyFWnZ3Bvdv54k0Bb7l4+3SRJYGxqodJ5KZ7InUS0lGXxL7l
d2g/RqhzZxsjdlbI79z0+asoTynG1N2FCM0hjo8GGMZijR3Cyq7rPBgMLRraD4mKReOIqpMw8Z83
SUjjDRi/WFUQ2AG9BfTQEL7nurM7aic6tMq7Au05HUCCXRhd7YroWp/o2djt66cxPRO/2gtlBlF3
Oz5uhyL0nuMM23rwbApZ6xgvdyGtHOsgyJRm7XcJ1+B1xlYTGwHI1Bvidsj7VMbAV6AuSdExJ+43
himmJ/LsoAPJx+vaif9bM6LYtyABF4n0jWUrqxmzrXGTBrEZjEL76sc9hgrOH5GVhXlRHlOjR99O
hTf2uOEprBqnvSh9DpXtevv4NRrcSz5VnQm8ZjdzVBOTghClLidnuvLy2o1tTi5Z0Lb19VR8Pzxw
lJg5Rits2nXhMkjCcUwKJZ72Fp/7dS+vW1oOG0VUMRTvUf3QcFOE8R+mzArlE3/vM472FXg5HtDA
ntpAmWvZh1Uebgi9XIBL4XFwnBOHUVxJ8wkmmjKi8TJ3jHsL3vSaT33Wqyuzqq7OchfJkYAESHOu
GjiDVT3M4bBl5qUofPS+QO3N4wzOK6I9V7vRyXw4EXldDGD+Y76BiLBwa6xUJ5MGUdMY90q8iH9r
GMW6FqOsZTrdVVIrguc9EqStZ3MGjTrJiqFL84XsOZeusUF0rCtpz5Cx6/htIIYR1GCN3WGWghXT
hRJHxxysCWx3flYf5MbAwsB7PgtvCN/KhtLeg7hamJ280PkAv70AmETrtJzh+CbQDTQaA4950mfS
h27zOvlBX4czajW/0mMqY0W9W3FMa2OCQy3OquGEq2aBr+USbAfxGea9+x8jRjt4f/kmICJpo48Y
uG8JKfr+uU5sZBgqxz0w2rKOuEfj7bZmdjTR8DjcIMmjvaYn3i07tT4jcVzhn3zlOgkzXXvbRhsD
o+XWvTVpOJO/soqtLeN3XqywVtoXERpBNnE9ZjUXILK6LPmzwL/T/jgr4A9OtgM44dBo2oINzdef
IW5oFXT4+FisZbTHnUcWEbZk0IDQOCBG64eBmpAqIqu7bADmlbt3q5RadvWtdAY0aYuo02wQiBcA
IRTqQzRJIcoIVrZqbr0+QTlftTecPc6PNADwcfOl4hMNo3si5xSFVsCEheUXruap2HTo5Cvx2uQj
KmwR6bZhv3qZL4x/OoCU8B7Jg27xCfdLN2zaZOSimxAkgRsoelZO7mPJD7MNFyGanblvHXqUohX7
60EZxCH1DqTPA+Y2ad91bDMb3cSU0/WGCge8evm1xLvBE1FyKhaqpRYbUuxrjDGMbVL7HhcyMqb7
Ig0IS12lrPCrOMt/7tNyCUSSvX/eNz0AojUL+e5ZmM6l0hc68NMvYkX6mk+7QilU8vw89VRxF4uD
PBKIOJ4yQEVkU6Vn1589dQovVN6Hqv3qoikHdLETa5+27x34AS3r4W1jieNqWUajW/z37S+8eCwr
itaVmshqh3E4g6cUl7mI3/tBCvE3yVuWODvvr9CaxVEXD8VimXoGh0I8+EYUKRpX4MpDmjqviGqj
LdZpzcsViZGrmL+mRXosZFZf/0VBhq3hVciJsW37whK0xWrn+lTnwn8Wy+1DDGP26NlSe4shulsd
kCpSVV/3uNm5K1NfxJ4JAd+b/ZsdJf0IWD0NeoRBOmwaydDVkdarWMPoU0xRb571cZoeIXaiUiOj
luaiJrtDqFdGHUyQDDGztBAzo+YjCJGu9bWNGuaIyfTMI/w7a+LKiiwveI2k9JoV170MVi8Ziype
Ar4S/Nki+TAEXPk6RUIFKTJzuJWYplhA6MJAtcEsIcAszPgHS6axQaRVrHYjrqdm1W9QJwGgg7JX
wO6T8WINBycK9f6a+/GtPRTxC4ypcnb2HmX6Te1rpo7aFh3nBDPc8JE7eDMxz6fXlFxV18xVAqTa
7pt1uE7HDtJkGR4U8PreXoKrkf0XaPDiyznpQfP4O5fbj5s209fJcstr+88MsAaG+LeZrJT4SeqK
y7teUQQSV5fo88Olvzf6tJ4cZOkFI6Wdf9+z/UiE5bew1YCu39daD40G5DKnEh9auD6PAXatWYfr
Hown3DHQVkQNEL4kx592aWhH2gzkiDlZsGZaA6i7ZFTCNJwUSLcQLBlsSrLXsFVQbv0DcFKagzg9
8ps4lRNpcKmEFF9tGsYVKMoVwpfulJfGAKLDI/DX4hGRNqR7J3ywc5qSyVlKZGElQHD7Yco0i5cw
29bSSrc4suw0PHWEwN+bfYYxc+1K1nmDaFVsYhKTnF2QHgxXXkoc11oevuvkb2snarTp0Jzh1hs+
YJ5HBSJ8pJriBnaeW6Ea1JF8Dov/qaW3Bu2wq7tjM01sum6Cd9GVSO5WpYaYc99p5BGlMhzia/5s
+UkqwVPcM+CE5d5F5JyU9TEosonSbMT2vlczHAE/QZ1EYwF7Txwx8d2Y8QGwnYp3oOpmf9IkA/WP
+3pPztreR21BI6iOzWL0lmWYFLR/YyfyZvtLvFWEl0UL1DIW1vBeBrnsaNnzjajMZeRX5LmV9lpc
PHG9rEnFxSQEROiwwyn7ZzgTLuI5ueFXO1TjUEE4qxnUURqGlRxUorIsa21cFp0bOKGjD2Wf666I
nFNgZBoqmyFC3tLmpDjNumuPl6t4JwFo+nBkccIe3tJGWR++0zGdw2SaHNKi+dtx0t4PSpibQ3bl
EYOw3KKRcmY/tdb57G4pqwsQc50rq/mIuIGNP/u24x6fJa2w+GSrxyLJwy0ZLPosZiK35l9zJwpH
X9nSiX3xJUrcqZFibUFsn62GXbySTozDzxTDwc6OeJUuzraYQXh5WNM2KHN4kcaS+5/rckq3d0OA
l5nJWlrYPWdyw9LX3VAAJeVjBE4y+3EL7E5sr/xiz1/ZSvz1UZfaryryuWb28D9FK7l5CGwuaCqh
aLwiap4AuTqXUpW13IKqklzOBN3o9nvLRJWfCmA6c8kLZxJEQLVtlCGeVqiDMHs6JEgLfErO5EmD
mlf9gtep4qr0D1LxkwSSvj9c0V1Dq8yoJJ96/RSjTC5g8cuk76AJ7DB+4sK5s1f8mUNUZTcPLPsJ
bfRxJ9hBHPfd7LMixdxaGdAPe+lg6xzlgNRW80fFA9euAL0WfH51kI20kj8/UB98wSYWY4ZFW7Mm
7vUlJyGVhmfKPD9ct1QXkZ2u0JjDrLV/Gdfw7AOJv7lmGVqyN8lIs7sWBrrt68B8sIRmukHMhIPr
xRl799zuD/TRKcXGfiErY5TyNVoPrFaaZ+5yEj8EAxtZuWmP9MlotWPjGIUXdfQqMWrXv40qRDFy
GMOUCONR4jG17hZ3iYgTpMfiJgKDI6OZY/IpSrO5Xjbd2J+DTKYuYJLFBv5j2NHoNK2SLqg1K8kt
82kImWLnXeXriXLGcqeuNKDIHXDD3CMS6PTM4rlR1fvIbe4HH2vXF6Hg6Z7kbzeUyhQws5EX1z+f
N83Ua4pOATgJrFTwZY3MQSTU6lAOvS9y7IlUOOScK6m8x7fhBUj2PY9+/xCOvE3t9vuTy5OSYwK4
XIN1n5EGyYoFIiTXXUvrTv0cQ+mo3UfL9DGTmj66y3KgNUjFf+6xWd68faIg8shhzwyaECM+WMKA
HjhDDW7s4/8qNF/bwsmBDD+BoD1nDiVsPL4ecwW2MGYNHwDJg2grIC/j5swBDP+GoLp3N8W4SHxy
D886XAww/KtrwNzKt6offWfQzNOwLlCp7cYOSHrfmzPRx40lhdnvZtGE0AVDcY/X74JNRR5VcklA
hqM+uuUx0Crs0Xz3fgJbyeO4z1NdX8wLjq5bXYTJzUihfvf6LTMln4jdgfytgV1AyTrF3JzRfToG
0Tnm0ZFwedNE6ug7OTUjBLLZQr3aGlaqZOWpfcqZ9NkLgn58/LmPi4Uri2tpS24qQluUmuV79Lmf
8rKq6TwIsfUpNWW89Nm79bctd6X9CV6i3euAXGfagjf4XxbitqUHEDlmrZ1ztvIWdurqPOWqjRPG
/U6s0WEA63mQujRPlbK4Ogweu1itFzehtbYHyBfhs3sNW/BB58Tg5miE9FBCAHvZans7ZZZZ4EEe
jcglrc5+LrksmmJyMq5YrIH21DZAVwb5CekxYCllNLPPYBvnijbrOtApokrjPC3Jh22m9uXt7JvG
XpGUI7H4jnsKKangX0SLgzX4cBCsheaccWlJxyy6NfRGusRh69tc+qRD95bqnto8cmioOuiD/iwn
KB/2U3VTpEIQe/oo26j98Dj5B+9e+I5GfCkgMKXhUui/biwqzOR7GaC5s5aHtrTOdh3HKZE3DJ+9
8eMz6Gq4ZIwhe7o5SaB8lw4WlkmSTsK/+ggjKGYa0ayVMIDWf9EMaPH7deyu4i+ChjCueOEWpVNW
l6Sz4jK5SUDweiHtLIlPGh9d/yhHJXJf7T+YjtWOndkRjYvx66Y9lX2IJn51GBR8RhTK8MXkoiov
OrCaq6Cad639OFTkCiMbWdyFcOBeN9kRLaccsKF0dfl0W8q4/lwUGXqQ1xYEc99y5fr4aZE2fRr7
HyZSRnB1KTgNkpFICO7bRpGj2uWupL3QdfBYlz/Dk5zclZmpxKX6VS39EQXIQUglYdqwexBbx0Uh
VYJuEfxhv6olpjdz/uxs+Q+ZUg4aySNJQMhLyeg03upUphU6tefcz1023uOJYh7cba2/jMitA0c8
LQzYMRfs7sWTBpaNrjjCGRN39gfM7iORnab1a8/hKmB1Q1PtzFtwCOP0ieg+K+R5wt9gIyUqhssU
Q9B7Bs3Gegh1hhPrLBHy8GVDork6eHj8XnUYqNiEqVljkNARYMeVWs45nzL9cBqDvtBUZa8xHKL+
oEg8UJ1Z068hpcKg59fBh3CV9KybCIdFGegWZSOOrO41b9p62NcQRVEwM6vFE9XjEOyaHET05M4Z
0lGckXAEjlfZPnG6ACGBjEH5ey+vjvPgaQUgG3E+OZKCthdGcl3nybHPGAPxTqrDPSBwV2MiJhDQ
t4ddBn8KsoProTrkJe0Jukfr5OV1VYcsWjrwEdjb3/Gsg3+sPEHaOl6kbRTpBuR4t1GZuqQNlVxX
FxsRrBHVM5pzT9PW6FWRcGWiB00meQYpS/vB54qqE3AU+3aOr6V+5g3BJCVYJ8/8KTCjCAX8bKWZ
mxpaHhEgPY4b+o9ObYcuQ69tLQClYGwNMCTKkwdMoUktQwP/dH9fupxM0XHDQjA/6ma3mrYO7aMM
sKOba8GUFJdd5n1Noff2BmBt8KSORktsJG3ButMb4LQ63119rKPjaRGzjzXqxNgYRXLKyriSsv6L
8G8QfpbJzweFsxf+2KODXgegQ/rY2bcVn0P4qoTlKFZinDE19OhrH3E2lhZjgr58reAWFJodynlG
/BcXYiN8ke0BBNqKzdVdXLaumNl2QzQXjJFRzXv9JdwmFqyq6oQDNcLLIhcx71MBhK7w3awOtp9N
+bNVaDhChY+UfI6KUIx27lwfqqD4mJ0ArerpKVfcG8IPZszlzjI5JOckGxA7H2icoFbJX4M/xeOh
2AMTImoZhPlH4R6S9Hld6514et+LF1Ljy5kccwCQu+izSFIdFsSRfkLui4ilWCuqBgkccqa7HQYc
f78goq0D0ETJhzbTA7QtxqrveGWnXMB7IBK2qglJ9t1+3V4FOMU9bFNr1ixPs5Z1Yshov5Xsn0ps
HkvZKNxSWdGaFZF+K0KCUrGztMDJMQvkwBHN8FS1Ir0y7zffscCTT/Z7OJRoXnJUX+UtH4Gw8PJH
hfHiEvOy1ZSv0tI0mt2yHOGrtLc6sFY9kJcsCfcxD6wGbML6vsjrSyYNBI+ZGJAWXuDiBfn8GPTs
2gq/WNb5wokLlabv92ybvEJbt79YnxaOlPP0FgggrUP/OnrQvS6TVSB2tuI20As2Xv0E+/CaxZ7b
WHqUi0v+6bdGabiD1Ilpg+QUiztd/8hbdjRXpkpkOc4I4gIuiS+ogThF1k1qJqdv8wOwIKVSgk5p
okCMR9JWuRQ/modvMw6UerY+bD1q4qZcBD654gjFOVooym3rbONIGNG8KNIyr3utYSx/1LCOJY7X
Hx8c9/RWwU1FQJ8Qlq9pIflD33Zwdq4EluhyjC/WVvFxLDziFdmqHtDM/i0isccZs/1B40izSJM+
6/tIa6t119HwsJjHtxY01JR9zrAwNGQRVPM2j0W/3MrDKRwU9dEJOXDAT8FrL9UoifPJA6WUwRoK
tINhFtG+0ArSPeDihZAHjJYZTcAZSRFi0gckP31FtU5KWCRWa7ZZz41MJaq0Kkcvyj/Uiwa6umZI
NO6Ucuv/Y07H0mxMgwtkGVj1ytb+H+/cJ+M/dHIhKn6U9h+wCaSBNtpANFZKmWz3bxepPa/CbFiL
xfyid2HHceBBk5fxnI/zv1vjL5SpmPCyOfNXu4N2tTS1Y67aYbXq0Jvl4/5tCHsQQQ9StxlFKVss
HYNAwVwHEzkHZyoRIyHGEzELAN+jidU9HHhSG/y90mT1skq5B+i2EsG0JutoUyHNx1B1KpDFsQyh
C3ExRKt1hFV1RwTD6v9uDaVDKGAHjnn7GEiArigFpIVnVIvX+1qmOB3aItMohnftEvcU+Zvjdcna
nu0U/XY6CK+YV7GkOKD4MZqCZQFnwBywiZPs3GeR1bHWkgq0Htezl/VrYrk9QNl8f826GTzmLLTw
zcboCRB9Gq2LSo7uNSe6wui5JCrkT+/ndLGrJiUjnqGWzlGRbb/dCYpyelka7sCrrzWOciJ3geuo
iwYMqSnQQCAQ4Mcp+iQylU3R+zZKkLWXopOQTzien7uWL9Y9JB0mCIu+qSQnIol4DHYIn7xk5yrv
M+EfX8UHRoZlzDKHuokSR8UDW+ndQASe8Gz7mSITH22cAFZ/3w7oG9xMVj55z/TGx99iKro02gqr
NVcR5lFur+Pg+t2eiLj+Vzdq8CESbaV40xtmnMSIZwcrQaP7RowJPfcDX2xCW+cYuEmljxHf7Uab
4BQjicxA7un6cw3miAmfYVD1OyF5LpsLSV1ulIXHLnv45Mh/UX2RvmREKFknyYxHCEPw3UrGfGdJ
IUIY1734dINwt15EAg4KIH2oafi2l2P2Jr8UvB9tWIwygCjPdKbugc8KH9dFxfkcml//fE23p1T2
I9b1wD7D853WozHa0y/m/1EXaSqWahbpeSKARKgu97/fACZ/lKtdW1gqil6EY+fAEfXctCEL/skb
3A0tMqks9gAAIqH/IHJgSOpYeWLvr2i1vZ2Nt+LaYmGt2XrbLDTt5qa1qZ5Q0ydojwqw48ncYgPO
BnCYFHs5AFBfn2IBWFEMGDSBD2Q4763HNBTkUM5Ft8+4yAAamnskLD6fremOtftAzZGUrvdwZPnt
gDCO2VWCG3eUNQQNaZAVwkzzzmFcAxRK7GB2vjmuMs36z9JZNUKNQ0vMenTMyyvccWZ+AFYTMqZ0
feAp7BzEs6wP7+nCq9jylQH9DL8Qx23p+RkfSLK9cNmbqFzxpS/vEjbcKUVimh6N/7hJxV601jnR
xSBVkOD38Eg+/A+1nOvu4uaylbGKtcstBT+1Z3xO20SKzg/uMHuNdFY/GseGtTpGUTnkj6Cj5rOB
iDuDk/JqZMZMMfXOrDfg57CjNzZ6KNJzf1q1IRv/G/rlwTsaP+J12TSl4g1zzkdcKrLK51exkn0X
AqZHgStQfVHQGtNAkm4ObrJDchMPxVC26JTG4tFMimzjJ3ZAUDBX3hTf9xeXkmYFV1Q9fh0orS75
RThLSa0eMRhVyrB7LwqlNbKGLZjFK4he1xSLSuy2jZZTXEtNu9Oe6RX8oCR2+kow4PWUQ/mTn0DG
zYDBHHSzccIBBScxf2fB8jgrnginM5SrLElF81aV2X3PPZvydM/PeFp31KzJTK9XKtCVk/LGSqmI
xl6oKVUKL67clHP9dey2NJY3NaV5VLybtK3hHA+DIA1mGp5d2yMwEoVoXsFFaWXKRGtgMqneG4h1
UP6C786LTtH2p+h1cXgian1KFQLkU7ahaLt7NpaqOAyWWuHPzpIkTWLyQNrPWYPBWBYsMClkg6Th
A/24YGX+DkJZJ4cgiU0K4aHUiunhV8L49mtl3YOsbWgv9hi1V4PlVflXcJDyZLuXgBxFAoF661rm
MOHZp60HeWwfLCw8E/ihRiWu+OC7U+y/nCnOP0UjL8rgp8Zp9raNlg6ihaB4ZXI0+5dkWsScbLCx
CkC5Oi61+6CK2PCfjlpgrgnWCafjc00ILkfWxCMDDVsbdpPaiIM9BixYIQq8ihnptYHRs81t3fDi
aednOXjojqI+EXFZtPWKtTJWs2mXiUVqAH3vCQYFgfVrhYlU+ssoJL3zjg8oQgHUTRyUnPhbhQaK
2nsergXtx+pXSghAyFiX6F/lzZOVZ56T229C6x1ygEkvzdiEzir5x1F8F1oMzjXeZc8rxJQIUENk
2X999o6GocOjFl4yladWWBFoL674m5gnbuy2x4JmqsIuicYrnjMEEdUx5cscuDeOr7VkGpJxfujw
9tZ04pg2ncME/QZacS2tpuiVklXNN7ljuN1YmDmT9p9GsO+icgbF6IjrovvPNp0Coa4rFsQxAn7O
qmJJAP6H4RQFLXDiXOv4uaQwjrh5Ou06Jr5Z3mIilEowJeCFCxr+XYbTmk1ra8VDeiCE788cgqCg
3wWfSlOkLg9mlDpa44ju2cjEVNx6fFkK9x+LAahoVInIu635QXqdZCZrAbwKlFN/w6N+9tZ+WOon
CyCRQvbPleMRy7OtUYZkqjqw7spCijQILE+KVyXm4MHb5OVuJuVsystO83ZGSZz2z9eUxgNHpcNk
v3ve3yumJ1Cde+eyT2+34qL4zlzaM3Tq8xIECuxfy+MsXsqbL6MIH7ySabj+pApWTe4enBwhHuml
1c/wdpHfBd+HAprZrhtNA1BIt9w5Xzj4YMjepuA8qpiCkJm+sxGV9lH/DBIxRuLPo3j0aYo4MUX9
gm+mRA/fD5b5CiUcHGQ13t7PWwruakJc8rUfvVPLACOpclvvjoJ962KMbQZzeYXvgkJK9zEDEI4g
fyKb01x6jhscy36ATDGTcSzt1TYBJ2b+Mjz+zUkYIFlmfjMarf4vIEe3pbUwFRxgXN1iLMBrI/E+
jjhMAzNpXvqds6trR5UVxeAwk8El7o+glY3DRaOFgPS6u4oFs8qMtQwdyeKDe5u0R7negGpCgq7A
AjWUSk+61NTa91hrScVUtPdQEj5Zx/esgk0DMVkGzgIxXLkP/KuwcqGkHtnyAwYJARWAQwNWMoXZ
83UnuSjAdYyF/Ij3yiCcY5NbEEtMHrv/3ePIk/4WmOXO/qAb/J55TJGxer5YnTMTzc+qkEbiyQJr
EM17VdEeqjSJ897XFM6EXfIEHMS2oipHZkJmzMLCv7E2Om+71eBns+T6UZAbgMCeHtT/xM+rA/+z
X60WxIHYw7OQKRVDPwNlxEApb7Knc6L5lDlKjL6PfW92IrKWjm+2i3wfmh7wU5P57wWMGZH6SmCN
4rUw0mm0va6JpGWje90WZ6tVjEsBeIi5LevEXsGUNYzIxKsfOYRtTkwaiD8ttfu8CbeuGY5iUWdo
Ubu7MT70Mr+G3/Xv0xBc9KGLLdVVijSWB0ZieQyDcSo67MbCSyPJs/rMJ9CSg5e5ZKn9iOhgNTsz
q0ZbrBtJnNxscpGTalxjKAzGoXAP5553GfHA3sU45roMs4qxrmCV0rPY1qRYBlTnlJAmEGtM504B
hkFvIeMpGJtpiqpsrjfGn9/zJGnVlh2J99zK5WqwTLbABvKuQWkVCT2j30R4oP0Ubs+uDhx16wCP
109ZctiSq8xWiLWwAUahg7gHA5witbd4CMsoST3E3yn781c81LzDU+fpbpPxjHBJo5I5f3gB4Smm
F8X4GOh15xovKeAoejmMRaCPdsRlhB9mrtKuWdPiHJQYcd8fDThO79vOo7hC3KUN3ruU2PuIf8SW
WA0I7oLl/gPHvgRJErrdtzhoSWlIDZ/pm4UUa1MvPjdCumSmhbOlCfNP75eFRfuruc0yEpXGfp3c
49tQ8NkGKN5hYRgNWOInfDTTHUCIq7oI/RxRgNzHfx7Pa7oHGz9y5HIbYNoRqwsiLVSNU+h50TTk
R+nvLA4Wo8Uy9SwlaZP7SZrHQH2AnSNRe5fiJKQsZaU9prIJUTwG4mBHAyII/vZjtBUFq1AcxeyH
2uhH31gkRGBiZqjO51QgOP5cGqCV9J4Cqbe1KW8iyb6cKCUfFdVjKm3NEiHvt+Y9LK6gHXg7IDtg
NmADaj8gMFucwBlWx1vJm9WhGgaIdXNSB+gVQ9tshkT2EK6XqSyOEzfc63geQl2Nc3/xF88M/+YP
j1KY1ycNUACa/rVxWYG2V0dU+WZ+Z06Jz1Ka0gXn54Nd/PkxqDxQj1k0rZ3mf3ZGdNc71hiuh58a
tvEhDnzmT9QX4d/rtuUV8kkAqjy+tTH1pi8RqsYgAasdtwAYohH/Tn6pSmA6kiAKLL3glu6WZn47
nq2uY3VnFn8uDvpKbZhEF0fchxvjWfgOTX9CsbkhoNqJdlWGvu0UVg+0r+MVcAh53F1GFVcBBQq7
+hWCD2lx0jVKmWKHE2rAqbA7909MoYc7WuTiPWAy35jrDqOAJLwDuY5DXQdse3/JWqOHwwcXIyID
U7ZvZ7RPgvJR+GTZWcqj5auDWdWz8ckJwqNLbKTNcMbQ1jJmLZEvkUWIBkJeZx/MF3x2nzD36ObU
XYsG2njdXO+04E38PB4z9uWJGPF7W0mxATT6o9IaT9RdJUfPsPOXuB0icjaKYiqy1CdA7JtvnIWK
jLLGSDknK/1mOi8YuicNbBhE6BMntMsQ9hwj4lNJjrhxCY28830s1+0WzkCRHZDZkxzPco5RBk/e
PAscT1pbYVrXvjwmKTqImERbVB3VOaxY4Tqq0NTt2g7kuodcCcFGfEawtR/lJNbq40Vc3qfGRMuI
1T/hCUDtUpdCVpJcKCQBumyErNqDckUJTjd9TZtf3Dtg9EBEArnCSTk62MvtWfUwwS3ArQFw541W
lRUpddWjR8wn9hJGo/B70hj4SLNO0CAtzD31nVUNIZyzsBrnncvOOXv9xvFnsSbd185BdWBtczU+
RiuAQuRiMY/D3hlFvoPbwgRfP8pGKaMxIvPe7ncCrCBMIMgvgIC3H1iyhh+Rnr4yrtM7C/t1ieUC
BsQ6nKYtBzUOVdsyNkpe6vx0y263EhT0l7Ae3cMuoNQOCc/OyIU/q7knE88eB81r/ZaLZOaRKEcE
vx6aUqGsnbgT6Mv8P8ADPK/pQpArDa84EiJuN5J5tHbeoMx4F3ddtxD6hCORSWhSElBS2PhjvmIU
FYmThCdDxH+fwQ6w2IZC+rSCgREyG2e4dNOz5NaFMTOuoph1UDmUDWBKg7MBHeWv/1vaH28WhHys
BquzIHgLMRIvUPFvBNVI2Tvt/4nReXuQg4849nVIn7D/w5MUXc8EIUeKkXavs3vjNstFfVi6L74p
CNB8dbv/3ehbMEnZ2Fc+I+9BXpHgHoLAdOAFlRwIX1QyWlykJrVViaQU6VkunMg7aKyEMYYe/0Nh
ZaGYuvW6tRJIypvTTvb+RDm+cHNmuxazBf3zQbBsuLWVAAMbM63PRdKEtpuDc0ZOrOgTu4hgroJV
11qKfL2X7DYJy1BMyN9ffKduh1GBT2uzQXNdDtmybr/VzuL6qOH1tU3LQZGmVUM7iKHhndWmGHkp
HDod8qzrRVjXLx5fCVF2Sr6Z988XZs5mQIhOXM2AryMDSALGBvdSdGchBYmY1oAmFlpJ+0ox3Pgb
W45FH0iYCIGy2S3X3wDbe5BfS0jwcpr4PgYQnAljYra9PxZpRtcwOflapkt/Dqhvpeuo+1eS1YtG
MzMhyVNKYIwWOJd4mNrWsJX6y1h8qX0/veBX0fBPfwGSu1CjSiLHomolPqaoPtHnvoBNPt6Bl3D0
pfI+Jot2v1tKUneiBp+f5eVXQjFsb7Zgx7+t/5RLZ7m1bS5Tn4X4oePGg5MALSt1kq4S6tIQqqXD
vEFsFJUNZI282BH/LRMkcy+TEBfk8AMCyNYAnjDE6zjFuoA4HxR7TBC0mNXKP/QnlTut/GVKCJpo
trAbtpBXaCMdvnMCqQfXarIJATdpSwNX4qpBegl4xc//QScJ+LWzojzaNpQin4uuJtbthgL7umIC
1BBVu2GNAiRGHZ7DwiYikhViFJqdUG8NZ2pp59hU1z6pVWlw02mHiljVsKj2H6U8VumDeTpRzheq
ibCyCpFs0qgEiTZA8NF4tYD58eMuBIB7sVulvB6ax8VCwShGMSp1xkOEx7vrAkv4M8czDZlopgNA
P5eASsg23F0XHWSr6S2VR26p2wF4E17S7dZffrwhzTd2QAphUgSJ0g/GVaHeuMStSee7QYV9dgLZ
lsmB2s6XlEVFZ2o28D9BkBTgd7MXhxr3jC0vbLJufZFEKt9QLorELfQLzhkXQ50dsg6XN04C472h
yHaQznwXj6urTcnn6cRQUEPWaVUnHCWtB50ZTpeh5LquD4M6DwBhC+lf5l5UisPyRAGblZmXsjL6
lsFFGLU0oFKWOd4hVA8Tv7uRveNHLm61fZKVNj+6+FCKszotAyCc6wG4EQWgVBwCxm5bdQJF63bo
SNQMYtDwF7/4mYK6QxH3xd4hp0AEwuQ432x4Qg0hTZdXcjApugbtQ6QpH5nFG2m297pRc2bOv8Tb
xIWNonNJ6pPdFXdbTOGR06EhX+KO0gPMuvs4ntuGEGg1IXKE+NtIhJdFavvU8Si07+at5rEf9Po3
V3A8dPtnN1+clKqkJBUt6lPaVG2yGySNqRKcbkb1H+1N9XNA0RHJJ4CEfXDNoVh3bQwILWjGhh/7
ZAnkv0y+w8F+xHjZOge/x2nI9Yg2+gDTuQJ6HGyxbKi3Hk+Kiz5oLkizeOcyOt1xdx5mkwyPJcGJ
eoL+sZwIEbu2yhyjwC9Pq0d/ogMT+CxUVf5KSswKiljSZhuK7FDHkCD+Bj/epWaTziI3yujagOE7
w6FCGeGXSjrFsAMsFiUNynhSYdcHPVCUjbuAnNi8vv+NIs1BomsJi4rFf+DLe+seTEeOk7Z06Fqi
LjyEG0K4rbu7rUX7g0srbwdOY7baONVkVScetOdjci2Kl6ouomN3NGG8WmNLhyW4JM87FRkz1Uw5
vH1k+P9GAN53DrHPw2ZaSrU6bsi8IpChYDh2+7LmOsP3mdiSgtqzYqul+VZpEMSyB9EMa4LGAegb
c6HoN+e4VswLrFTG8J7aB2G73hGPHvlMwsFiMaZGl8ht8iBictwOs4U9vPQeGTl+r+9Jmh4MunSF
pm56vAFpdKw7ooSouBhP4OlacyIkvLBteM+3h9tMkp6qCoik66m52cfAEC3kFnbgxCX3sYtnpGoI
OG0VrKQ42yRlssQVdevw24baraM94tZbsD0ve30L4iSqt6RzmMscGcXFPPJFTZPXlV2M+XHItt9s
10ZMc+pUaBNFMJLVfLKsLWlidlT/n72l12hUy83bTYdPTtrS78czuapTUtSDuIawpckMWsvuTeBK
uDtA/PO6vO5O8i6Qp/NjfiECfy4p4ppHv6EPhBFfvT4Cp/RlcJUP62zGvwpesPE+CEFRPjMBVvpT
NTAsjaaYT6kDpr6VwREHzI4ucqm3nWUF/dvumhfgVjEASRKiet5QzdbWIKMO0hVC51Gs1889jQm8
ZK0T16rkm2RvDloSZ8y66X9etc01ioj1qBWMXTjBsyFJL5LApHL6QigPvsoBu1iiqve3FrfgDE94
Y/tKIq+j40Dt0f/h3NWmBATGbt6mAJ7KsK8FT+t//fLZffI2u2aykxsOVxUVv9DNStOx+LktvoNW
jIZdY+HA9LIuJ4lLwiN/LLS/WiKC2RcdE5sRM6HGQ3OJXdb1MiZIlFEQV7AodeMh/yzjVJ9X4vnj
4vAQB/ZEWD36Ck96Fhw+oGkN2puaVDUleGGG9D6bAv9sj3jsMKIxJMfYKkgMOMuhizHsIT/rzCPM
G9GrgFct9tOaUVxfKVS0PuCCvPUCFULkn70NOhkGKw4dQmFHUIV8XuUMmYIfxNAFu+fOm6S/WK9j
jm8tfLAJbBxQ0+pNpuGWPTojwbn4oTgRmw3P8jRXohc/vRT02A6s3FNsyRljTH6Bsb6LXjKu6zdV
yvkOP40SPI7NxNSoBkvcIANXpTtC/P+yGSaQsDC6J7XFLmwnblikic2US2wesvUvJG5NWAO7wqx5
fBUFcLg8WWkGToHaN64cetvMeaOIwBEEbzTlFCAGy4srrJ7TyrPj2bfhCP/IbNXSyf4GZImEjfWj
VqAyMP0cvPkW6GTKzKJkN8xMCuSlsBFVkFweI1DqOkTG0JBnHbP4VDQ2QbRTvlbZVi0BY/Dcq7by
Ci+oLv/Mvwyoz9Quy+6J/2/XNkvSYeEg3MGqxEyJoM0VLHB7KD/FxdqUiduIHcGwO1mYpLOptC/T
S8ioOeCiT7EVce6qP2oEXXJ5Rt+MmYw3XbsTBd4vZwh7b92Jwh6ZT19BlLf8YVQqGwEQ2CjCbFZ8
YgOhkFCeLefpHm1eI3RzVyfKLEegJIiBivSYmgtDFgHz72UTbJS4ZNQUG0Ju7K5d8NkjoZ1N9wPG
ezf+XWLBOx8ZV5qs37TQXH/duPCisRRRMAMbdIwRS7YSev2nWnzbRhhN7U9no/bDTQasZIGM7COL
sbDZBBjJFZXeb2BixzcmcmuJAPpvPvUK52SGM5U4F9CCuOQjKHZxCtCPg5CGctDqr9WbSYO8XhDb
F6tT5TuG44gyFC8S76v4Qv+Y/9wsCEPoU/ZJoFdHYm1NkT29ORiJzfLgu5+7s0Yu/g7eQBkBad1X
jYXuuMdE5L6A2Jwcn8VLDhsgKvddcTAnbtqm5ROq4N6q352QW2n4zhvEAEsf3fBSit7iDroPIEfj
s4Gp9WVGFdUj/WHY0UqCfi2OaTp6gtpO729CwfwTGB95BS/90NvqThQaQbsi5hRwRA9jr29bM8x3
kDCR72PhGTtCrp7ue9E+H5aPbvzGv3Mphav7qu7xY7jz8ezuSyKE9lIjiWbnAhsur+W7PpErIGL2
buWc7yOPeuD6jnmRmqf21uaxUGwzqJOHlgDpz/VtPgOZbCL99TLFlKITeYqjLwyVMA6MHEqF5/5r
ItZ1csYQsZRQjEi5KvbYz5fkDvU8Q2aBIBaBy80CWRPsXb9g4nF+BgCqfcJjGL5GTMzpcJiLSLRB
dCyODlGd8eL3449ojMtuGv6yNdDjU7Rm+cdwS/yV1SfHS9l00x66lBhGcDwps4Z73GWKqpql3pIh
z1OKA51wHHXC01JDtIOyMfPA5aXSEUOuVMRwn4dTgTkHa3GvTKNBPVUHMBXWlaqlxhaCA6vESN32
xutObHQsziJ4f1J70cpAuq6hdJMa7AHR7VUlAJIDftz53Coa5ODN8LOEwV/3o74a5J7xU9pbfAK/
Cvf+tEepgXRl+iSoRnWu/UoHjCm1nBonEaOwcHDuojQTF5D6gtU34ZEW1As2vx4RHOVgJJJhmgTx
q8RcN00Q0WSQi1S75PaFiRCs++r75OHmZNO932WT9r4zWwEX5S2fBh0FBZ0xNODM/yGrEvOHuaJf
ljjLoAcb1rcTLoXHh+2uomu1oOuE30ydX34LwXm29R3xLhUduo4cAECPpmrKWarM1ixuInuPr9/b
T8b1O4Oop6rpJ/4fL+ti3ShTdqjJ3UCB2LDWdtdplh48ERegopbHr5Rce2g3hy1PdQkwcgmINYVr
OqvKPUhZ+dmMJbO00XnB5Gz+UI6W3WUEgw/Dgv6/n4fajGrUNWuJ8xc79rQfV5tFYFfswIVN+Hfe
8PmUdzceeGJKZmFTKrvPUxLpHLWDpM+MH1zQvOVDvdX/j6btU6k3lt0bdKBvFWIbceesFj7vDcb1
76ZspDCdHujXe6Tku4ZGqLb6j94TgSe1dOAy0pU53J1ZTg/k9Nw8DKsLJKR9EmnrzSIcOrFiu/ht
mzTdqqjvdd+PQOamskmExju2n0laMYfTLW8FFGHMb907zw5ceOsFnvznFii5gGQs8uUKU1ANYqyZ
oLOnhY3IKnHnZRPwJSMFEacKOX+Lk0atBE3jcG1X8B6Msl9iXFmaPYZCMsLi5AVqwHuRAwlFO6G8
60U3X3YS0mvrwDWfy+te824Fk4uxYxcQhaiI9FQjXNfuJjWw48e2WatFzTlCLLUrwuIut1AjeviW
MRymNtN30x5RLQZD59e1lEWwPqe/jS3bVp7t7VoEEm5U72N1UJ3oK1R6eetgNVj2jO7MGbXNx+Ch
oM48CyOoYT3zhTGlmDpRml+EOmbgLKZ7y6u3jfRZd9ge0fpGXFPv4VCU03UbeFumGC9Czb8LgdGY
/xo/ngTxPBMIl5XUxs4JIusD88PMiC6rth6jjmiHyhkzZwop+iNHa+Noaf3f3aq3ewb7PfZKJzmV
n/xvq4hxBmAd1SM5hGlM4/mveUbsMWTAgoswVa4tFU80Pznkzi++bNNLFNzxeNklSbIvAORLxlg6
K3el2FF2KEiYvB6AejoCleXtMFWJ6aFL5erBUPFS9OOYysO+idT0bZyLMhGIif6+qSZUGmiH7iq9
ErrfHqT3Yl7aSkoKisDUbb4+2dBZoQjNZGZMxRHk/DLOu5/WsrSGIaIuMt5l22oSiO1IGIV8jtje
8nL2vgyoB1n+E0vYDPrPzSzK+EXlXraZVNVXtTowpmsyQzWqozmIRXC8yXtBlDW8u8oDueByd+uQ
ezObS4vQH7mT/A3KLsVsuSjKb4382Pfw/yF2IL4lXl0FwFoj1QLP1eWiYUKuuddLAaJOVJTnV8Y9
fUuKRuf0Q0qfdBGZZanZkI7gGkI6DiSBS5Hq7l8CFAFVNB9DFdXIiAgLHp/k8b5Y6EAiFDabWt9x
yw7l7ChIkTrfZlYDHW4WdYxN8yPH3GoesAQpM/vRKj9p/l9FGJltPY9Wdk8FVEPUGz/T5HvOPbz3
7cYYgK03JDuIN5//QivOEmAtUW/u2pbBn6d70DRHrpCaoR/gMDPgahqHd4keHYbL0tAW5bVeTVp6
6EMiL0lyR9sVzMq7YQIkSgVpU/+K2k9EP3rhseMdJ0NPLo1tsRf6E0dmnxEaH3HPdfr9gwDr/VnF
eliqT6xbgp58oYq8hIsBe0bArbopVtcX5aWvsBMoMZlfdCr2+LMkWpdh43BQ2FRiphbgNBx4EsUE
rXjM+Ng/pZRmi7awFmGf685j+wF+UWTnurGH1bBE88azBEsq5fdXR9FAEUrBasVAIAk8KKO257uA
WT4mbSMGHmc3BJOwp3EEBTrsBIPx1K1hypTaJj9iCGeqBaozkfCbaopnpFS6+Zx8/uGMBOCjdYbb
czKvx/1IdpHIlrg+CIfkCD+bMZaT7r389NzeAOhHjakZEM8MhpZQHBguPfmqlBLSv8heLAAwMreI
c0pRB5vi7DWYYDZIHJvPpR/0oENZOjI9OL8kpHYbuB1wXcJOTOxwI06fTEIANfIlPMQ7feo/n0by
hDZPCRrv1jD+EwxgbqsnaIaEzoP8jXc7bkUStPqEatJaRNiUr86whrnKfZQlswnu1dKvamBeob6o
V2i4WRMyMCsLVT5EOfv2/UKXVWxsRSZLBYJxRWjvuT7j4hr5uQbIZvmTJSJnKM4Kd9WPsfCJ8eND
TVT9rL/69Etws0xGBiayRozgO37hhCpZr2PtCDaxT49BbIE3qjzP1xZuaPeNOhfQoT7OMq6riwGk
nuk7pZGJUCiDellyhPwf36aWBwG8S4Z8z4PjKKmddaIZl+p1k7A9zLoJGoWGgFKSu+aJrFE5zFt2
kYlHlFU9n6jnwURex6YVMsFeYTpb7tTEVbA0FbuwV9sZaXzAwVi7gkqXxoc0dMVqiH8UZD2IvOHI
krT1NlBcyNnOqUpOESCaTxOVGRH9NqKxBU8/vfKanCkKMoKGmmZEh3Jt0veFwUioPIdGljqoEMlC
80sKoJZMW+zGN5UiCCVKWNxzBdAhe6rIrTpivpoZExeYXcNGHykFkv3UeuSE8sI5kXV6NpG150DN
RostMRXaCuueKbKHsHUnbOt3FyGiddptjAl3nwTNnLgamrknMJzbdxOL3efHrxyWWN0Yr7M5/AXA
ArECUqd4OcpQg2rp2qT6kjwvnmTS/H2NDUSjPO7EZZs1zm5BQcNg5uBRn5pk5BGZDDUZhybn4feF
8SXXpVHgrgZebCWC7gyWi5mr2iiohWNS0oF27jTKssGJvte760a53znlv/gsTlQn6vUBCPet001y
Q+Ubg4YfoXjdw+AeC2Uk1pkMdbLs6loPsq8iMolzA2Xz9c4grWHAvDrK+aCU1FeyiXVvDaHufbfY
MeQf2cMyFavLlFqzt5RqqHiAyCpMv80YsT5+xabd4ph0waXlM8PeGIU+iqB44j632M2Cu01/C3cb
VP03C7BTuuup0J8WZCZtLCsj18xIdROipAT5Fv9XeWF7Xx9uGWmrDTGPopdYGTJ2vSKzj2Xc8lBr
fLCHUlNn76Ucf7izJmN77ftzrmtgAXpcsfd9iT16290ZG/QJDZU0jhCER0pOJUW316MN6dkXg603
xZiyoyTj54YAe+kVpus3BavmvjdmJSqiJbV80/VldISvcYeVu6fOXHf8e+acH/CpjOynR19p5xvj
3e1pNT4sQ4Vjyj6xSw8Rga4B6sjpuOzX9d32b5w1Xp47DvTt1V6CEFNgbBAUzrYRjQrcDi38HQDn
5suKbR3zXyd5I9evduevy1UVnvbzZkY+32F7JCrVCGbCMbzG3wdsFw7lCKefXDRWv43D38oF4yU8
mD/7sDmj1BOzjWR08yR0iW6nVIJ+GllnQS0Vr/T74dJ7u9ypppyIlL7UvDD5vDUsbgW8WCXANuhr
A9nmh0ajH8N6eKMHPzPP+zcY2sjefOXvH+FV0hTJ/e7+wvQTiMAOYQ6TF1za1mSx55Mcc/zeOQ0a
VjouPhhyT8BKxs8+TQakUfNbEnRFS9YnBJ7lH+pfT+jMrQCTRzFDAiX/voU8W7DGyflvHaHoHMCd
+8SsGrWC+CiutdqcxIklsI2eukFbyH4h7BQPQE9JW5vjDNcNhYoKa6LGjaPpyVzTqaUk785569nH
uCVoVe/taL/2xLlazRKPdaBJvi2jGXIPR+1b6RXi2WAffHCWe1IriGyX3ZeebRszdVJOJHEwqIYC
zS9LgiwIH3T3HiW1D7ivYHkKGRjqwJXWWLnd5yBprt6yCY4AZbnRVJOPvZfCNMARZrkrDhDqwy+h
78M6ROXOzkG2a+SX2juJ9AompztgFzwy7B0aKpjAr8LlPqcbASviVOIRgum86iSZ9I6xmNOIgpPU
n4BtQSFnyv9dZT9pVSoTKPGbXNvLqHdO3dAEs0qO7ENF7PZrbB23Gwxl9rrcc9ceiQNogzpXzpJL
LDjrKet+vvw6WFPQc5qujv0oNF4EE2EM2PnfQCPp8O4FzO5fe4y+ne5/OFxK3+BA9FAZbAg1Vs6E
AwQ8s/5mv7bzsNqyW9kHsYcWD6C41ReLE+aGdyHegJt46423+5QaigTntd3uQ5gnAL7GXrPk498K
aVc51oaBQO6UYObO30q+VMR5mr900rBZ9VciUeO3CPVMW+VbRWuKtE2kM3kNVj0v2cme2cbo0rj7
WLQGkCGpxJAx7UpBxnNyQUpKgY8MXr3f4w+D9kNkQZRoAo2RB8occjcZNGzsUbBO3qVHITUpIsFg
GgQIlEhKLH+Ds5z5mvSzb+iqYjQegacCPnum4e6i2G3IflT4ofMsyST4g/78A+9Vow1+h92YGj9p
ppUqM+QU32zgLvKnWElbPgAt/KpNf/R+SeKj78LDAgueHqn5oYuoEun2PqLG56lpZA4IqXeRl1e9
+L3NwuCVqcR1qq8u2MRs65TLcnkTN9K/MOo1W7WA3DKLiG18v0lmSXo6fLKtgDH639IYWJUWIswy
hGXt/eR1c/ajdgvrphXSguCV0YT9UhEjq+eqopkhgyuDiB/hfJAoblJrOvdRprP/P6qj/IN+S8lI
2Es95wOmImu6QaKPOGjvHQ3IZy12/sGM10CtNLqlgTvh4ZnrccUuQILOAxUNiSrAsks9j8UaY6sZ
mxxX70uRuK4HLPRVbGL4ks4n402cLgA3/x8BexqFtniWs0+RLHHESgGxwu8chq2ASjYHCcVGfsqV
pqceK1W8h7GFLMDqrb8rZmGS+lhEGKzGHoTfNOE3zpGTzZjzLXNnOavAmU7EtzjZAj+DS/lMQA5B
5K/hwnMNB80M/XcQK/T1DWwiHS5Eh0IPz1Fm8RQVOrEVuYGj/EvbknFvFR9AjTJiT64tVch2xUA4
DfO1inRNtm2JhcNDIY3+++Z9JQvvpGyVthjYqZ3QiG+j3SGdULUuhDcuHQWCcQmmf0aFWB1ouxet
Jaxcc6e66rJB7MSKPLm37ZjmqlUuAWyGjTxHChtDxvriQYvcfcbav+jb8t85gnNojZiaVwSqTWuO
mXdj9GdyrtcWAUE/bEbf/5SpR/ssRBurzM5ITe2tvmJo4On2r/KViLJT8YYoDKdhZqpP9xDavgMh
XjGiVQ3mmnSV5tmgraQ6Jhu9X37ECj5MfDofcN+442aj9LvwWZZVgQWWKir15Zrpz2paSdbPkeSX
WVmca8buc/Vt0yyTXBMwotFLv1WslmMI1dUlyzQ+NLPE8jQI5C5tSBeTXYDd/y9iqYhuVL8k41RD
76htUoidFLtBCtCDISEK49w0A6nXOoT0yICYWwolUQO6Tj/S654NztOyEc8P+x9hEBQUQEu1wBXW
B55aIOhgFqZEOSJbueo5St7Rv4uZMEvlgnbMmyk8Amd/qrc+QcKvW/1vR45CnrdlWQNtzxgwZL1C
Jdx1CAtDIIi0ba+gmueW+lwuwOQw2+8+V9HWAHz8M5YNzMN65IkeK6+CkJwYHbI58KmIp5Df80iT
vfpAnfu40vhaYkyd5QTA7594QnySnBybfDNMTeBSg/kQ7Rqco/f4iMV1NadgBA9ITUCmr7NPpS+x
Padb0pmO+4qDZEihpWvBjiAJYAu1kO3x7fLxAiVJVYhUdlOpesCWtctqBLq+Qssd2xAT3XrRgCS4
AbuXkje6lf6kQaQAvgjDM5EyImWksBFqTewFq1O/icOGUwU3eochP1HQlVbrYvRyKq8nkEKr3SXA
zQBpuPc7zbtg6V7nWYtKd+StYucBrsO2pL+Gqw+ZSYcPzEcte8gVp2rOKBvAQxW0hlsAfX05XsgV
GHMJsazagXA0lnSBWD60r0M3epGpGF7MBDnSatmyRA510TzQA5EB4eBSvGUJmjBeZWkwa9lDJvqd
4U4h1lMtfMKpoK1cKYj6vA/tnkuv8ZLv7qLzEps93uOxllRMs8ZH3/Fgh4qUCp8vsfmWIQPYOgK6
ZLjSj3lgZOp/VE56cCuv3fA2FZbbnP6mGFuc0a/OQDfUraTcuazYYR1UG6GG+shgOPbv2pZ83yCr
SE6bCvtcrXCF8oMZB4ss4IceVNDGT2SG6d4h7NiO3ExFwtmDgW25udzFbF8oqFn0ACuwCqsH1IWl
uEVQ4K0ICASpdulHh0KdOIvaGF2+kLyaAufXHzzEx/9xPfPZ6E3Da/xHcx+h2EE55Km/ZZieh4WX
jGUgAihmEXUsoqcECcoNBrfJPo618yA24MZbsXxOEd6IV3XxDCY6fFija/R15+ChwDJH+QAtQ1+e
hqAVw9Cj+nk9+Iyz1M3xnJ/uM2UGqIFlKl0h3LHVuywA3BSZ6Rk77fsDzCTqKOBoBLvBWhhHa0oP
R+AuaNQiRVrhnS7XxSji934eEvJt5GEULeW0wPjJ6TJid+ZbnZqfEilph0Sdyo3E2dYE9wFy2Wt1
xT+W0a9/jiDg7vZot2dNlfGiW+UV5gPX80iM7NceNXN/MGvA76pouMwfAu8OMBmORdhzWi0fcIHo
AnszchHLTlMZ+NhfkOK6/wc6yfhG9Shv//HtvXICgsU1B2hVvx8SWqkPiADtveYlPbDCCUP2KZyU
Xs4hdTyqtua0YbcJFjzO8mqOHWsBEozCRrmCVXn5iAqxFG2s7Ic/MhIVz4NCZXkfjHb1YBysfkYF
us7klVP9CdLjdMqx8ZMCKbQbpzgr2A72yxwnENA1IWuxySWmpnrSvb/EzEV8uj2l4eFcDk6yCVWD
BHc0tntcF4QacaCcOhl+X5tX/xcf+XZKmdciTOUnl6LjlZ/1Sm/e1/WAqeWgkypcZcC2vY/0zPgh
Ihhy4WlDOAyIt2wryzMEFdxldaAgFXbhtEHV/PmsKMAbL+tOzYIqZQk48zrthJDD99xJv+tUakv1
0xkQfDxrEF7flXMipmBKe8mVMct8QKqLCIFDl4WxoZpRBusL5z3IH7dMYq1Q9M/BzOKI7SoKo6Xl
SP8ontzA5OydIpnzE4SB1vQBbVsLN3DHquptzHBSk1HxEwDR3nYf89zVev15S8cXJKsdaTIymYxp
CBisucZ+XWYbHuTe+tsAnSvJWcPRd4K8L3VVjuqfvTzqR29UZH+vVqIRBUT4hUSN5ap3nNjOneOX
pjerrFB9ew/TDs+wd51xy/zVHw/FC9okKOzSmq8M6HAon7Q6cbi5i7JOlmN2g1OOcf9bLMpd2qgx
ja5Ra7hjBNkioJJADYR8YGyxu/dRc9iJPsyD5mdk9pPM7qgdy10mRLkRbI+f+KoN3yVNz076rKyP
MDeJ1jfVcJrsZgwvxsdDniksg2iPP/gdyJxRPusKeJERb4FfprLanCsmPLbyZT8X05IkTO/yUCj+
0dg07ICgGuf9YFR4On7k2Eqh3e6WDC8U8M7vIej12ecWGmLV5z22fXMMXwa+kgzbmgfT1429iPz8
osCbUETZ0BwN0iw5a8zj/tVTlXwmt0XYj5QYbx6k0hiHdPeyKqepNno9dPEYG+ien7mitwtEZsaR
oiPQM1lp37u1WEu5wYWhsg1qijbV+7Yq8y2AKLCDF8n0HYIoIQPtqAcSaQWy6mi65VvzBReRNa1E
zmk8OTrqQ0iPy+6SY3nE0yAqdi1bT+IEQFHsRFEMmDxnEcG3EYRtrG6oCBLLh11XRAyaaOl1Qbz8
y8dqPH9UyS9tkSCtjYBW42q0ETEWWcJI+kNwiDfOSU9uCw1f4Ws6NQ7InhiBjVdgR98qU5qq29tD
VDgLZqpSuX/ybKmA+z7PlX58rzxu84JNLYGhsHpxZbIixqIyJVOUGWeQKXWNE0K1kAJ3ngvRsdFH
pl9s4OSg4g1QxVtwIZDE7FZkvUf31T4uIO8VaKt0AFFe9qnjGyP4RmvmlFy1tEyIePmeD3/n+65L
HE4ga48cIvqUQozTictlsnNI++N1Xspy92wWtv3Lg8edKbzbTFeccgAbwH5HL/SMj6JSdmiwHNEu
lPHTIj1OrsOTrKxOHuN9Lu18Tnp3/0DtHtO08/emVLntTrjojyMO1SUruqli55QNV4z7MDffPM/R
iRcFLBU4DsFI4s7ovu433yuA/avuwH7MnC8llfWiGvt+/sZZfDAwYvcW9HMBT/rBC+1Du7mPJ1nq
xuh8knzHy2Ad5zdTRZ84S3fR/MsmFj7hWl2GjA8ZomtJT03Jr3ua6h3rbUv4qfaRvQujDUyn/QmA
V2Uo52U0KuLccQIHy6pmPkG+pRQPsLpQWZxJ7U/W4Q4+psVSIfgrKl67tsjGfr3O3we+gw61WZNO
sQb5sIq0ZawEPluRu9vSam4cdDObNoGgy4vWZbZfLMjA2Hdb7nfqze/rRJTHezEYVPKPbfe90CNq
McFMRIQfrj/q9qTnEPMujEjazdPdlXsvfnODgULiiMsMcl9+DApHTHTda1ucmfOyHGHxGokr3PtU
dE8zSYMy9ZfUfQEEx2Uh30P0n9VyDdCtRhn8/JX5CYSm4zHrjClPKV0JbyEfwGunripCJc2jE1Ie
wECSXlYv5KtnuFG9a5wPiJtN3VmFyeItVpu+s6JDXNKQaosfSA1Y/QTm0lQiao4b+JVsvqWZZb7N
UX/pxmshMl4Iu6olMIHrn6Gv6cdt490epOziK5dnom1WVC+o8x5QPGBoqq9ND62TZoEeFeOg8dkG
QSxXQ6ZYoFludziqVRQhDdu9Cyq4idfABAzZZTfwcgse11QXndT5OYYOGQHMvoR0Yq5uuJiKz3rf
w8smqa4puBxLmxPst6MclznjhkjIvfAJp8ktbYXArPTlmO9oPdJoBUxUhcGx/pgMsyNIxk0j+dBr
kbBpTbESx73v92qXL86eWFA/slpMeqzwjJ9G7Ww0vluajPcydI0eqjpm84G2z2zGX60xDYdOWC2l
WUOAOdLfZA6ZdaqS+zoErwnNb1TiWKLnMIfXs2oe5+p5BfOukZWOpwUm1pY52RlphHSVoqyl5jip
ikuYw75mS7jAb6DvsbzfSdS2nzM7YS/29UAGqt4h5gKZuDaZbTyXvCeT8nrxNLvkvPh/yWm45kGC
JpTR8Z2z0QjMcSi/Alpw2OcVE0lsOAmrRYi8jTdB9j4miYZVyO6hltYR87Vq4PGwbxMG/QT2/Yxf
zeXCvQnkwvjHQOXU5+B7hxluW3sDQDkRXky+newbc/yzfFdk9KzBl2A6dY95opDfrR55rz9rjAS8
P/hzcowh6PknYTM4oxMN9nof/11CUnn9sb3L1ju1eiTTN1jXo6Fe/1oHkHb4GMScErCOM4XkEx8d
yZtt5q6VkaeAGUllGJk73MXEiEYx6x2AZ8b6QkhyhLa9D//JImFXElyCLLWLX/T6TeJLiG/YIeq7
0CLgR50FuxDnymcIJE3z9nWIx9flEAoZ3DkPj31riwoV8TCuMV4Rh89pQydp13pUtups7HGHSbA1
7C8NMM656TKxYYbmvpmnNf261Hz8eI7sxnS7EKSEKcXvQfIAhhL3Zsd3Bp/b4fWSxcRqyKBCZWDR
zrecTfLUAwZR/akQqoTriNbPpqP3pWzrQK+l8Va9ZCa2kLHs6Kp5wZzDVF9xeWzPtFh9pdO6ieR5
7buDqjBizsfeE6fXUCmnz7Ja5F3CbNHefuV+DmfOPgOvLZTu3TtVGxs6cTKxY7YLa94wVmLM1s0F
dCTAXrulGbA6aJZhUz4D5K6mkN0CYOrWf/xjZyQ3GGk9RJBxs3Ui12rVeQinu5sQQX4+Hx2ZqSVA
6lVD7P5UAhKNjMEwgp5zXu741EgwEqyIQC2+SKfNFL0kMjNH6HDWop0qdIj2ayviZVYQ8NtORLnK
O+iyLgw28C5Dl7rfELE2Q/Enol7+v+XS8EQvx0rJdi0dBBCJ9U+PZHrDMrCNu/RU7T7EmG2rb+Fr
Q6GpEujUk12PUgjzXb1Ko8N/o8e1Fb9C9vN8gaoN6OEU2Trq0i5NmLtGuGpeT8IrVke+7RyFIR7d
NG2wB2Nz+vGmGY6NVqmMAjxLKwIuFPwfpFFg2mhj7LJvWETyDttov5y2Z96znAYdBrPP9BkiQQzR
jy4dEC9bzlOfldA07+NZYRA7K/rWTQOIgUfX36XjjGALN2ahoapifIkKUoxFHNYKynPI5kYUa/F/
ZFdjn1KtmRloVOuDZ0AY5AM6iWVbQyZL7xRQZ4mLtNc7fsmTRMUlJkt+TRtw1Pqgl3QsM0DLv0rc
J9jncazfXUQn+ykR8rDLnllp1yyGX4hi/Pt9+O/BPsrEofdiQu/0ad200GHMocG1YaWcI4aPCtg3
etqys6KUdQOKhWPWkVJh25UcK/IU00wOhcsb5v8RonPqcH7vMIe1cW1Fy2LoTg8ZWq8ZTC4LzNJR
3x8+MSbrBluytduxGyKro/lHcTx2t3pnOxN4S7TzvkZI7eR2HhlmOQcsLlkp21bibp7X9HflTgnr
9az1217g4wpNmcJD5c0cnGtPo6EzuYe+hQaLa/t7oX/mG0nuOvagSatkx5J71jxf5CTAP3jQtlm+
XtH0H1p6/P2/HsGwBovzeEihvCgQT3EdCcQkbEn4yWl4xP5qr2Ciyw+uxt0mAmzjQWNGe6WsfX9w
VPEf8TZnwp+pP7T6sm1A81YQtvYy3ZrQi58UnTMcY/3as2eseIukUGNnjjDfQPaHBzY9iaTnzWTG
3Am2lry8p1sV/7OU99O6FcWej/AuZDkjQYjQbKt+lCUhXjkU5KZKH8Yon3nyCWUPQkl4yI6HQDZ9
uqWWhAfOimwHrUhw9tktPN7EGP05AtDgGAfkVjh5P+RkOWPmTAImeGSrP7S853IudSsS+f6EK8xE
eT+RPf+BurTpFuY2W94jk4eyceNBF17uu+hmBSU2eUh+QbyXEkGjqqB21cmK18bC/qN/fUtVWd+8
7GktVz2uf7tQg5mM1cupCw6e/tdfUYDIgNO86QFWmIZOJPCw97fgOVlO9z2eqwObjEkZLqLvXCHr
j7pXpurOS2S2htQmZeL04RsCj0Twx8NdjXXaT6OVvtSQwUEVpclXDwoexCEygngAZWQizQGqMIAE
Tgsvxb0yEhQV05jPQqBmLmxzL2eEl81DdYwaWkfMOiwqfxNQoeANTdJpy54Q83X29RI/RCDlEdCF
QRiWZ4IMn/Ak8HjlmIC4Yv0jgko2bhBWvN08ORId5I9ztDVPJK8dJ6gGD6P/w0p+L282opYrKB2K
4f7souMl1LArNwEywp/CWEMnA789sz1CNmZAvuQ7ag8rvW0mq73xaRrMG24hyft+NiGenNC63b3Z
hk1mHRh9p9Ip6jxl37O4xNyoLZR+6Qxr98vj2vLrTI/j3CD3MN4LPUMeekwXaDKkfjoDUhVcGeVw
eEBRtb4GX2gGj6HS2GYaIw1vn6pNDZCcyvNN666x/38RZgnqnhqz+dyADt7dExwiAY0meoVUMdCB
9b05z7xfNrYCmF+KAqjJenHX7hfhJPHRRm81so3qTLrvFoyMh5kQt47dnHWb5IRQ40VayqCsSqVh
WOKHpBnuahHtulEDkIRngTeMkjnv7sniJDjBIwyz21+1l10wnShiIreRof5FhaHe6TA0viKNLtXE
ZWu3ZJQQsU10I4fhHKOC0W4eNonk54ecU6o+1mnr3RIb99xWZk8AmUg0UWe1k1bQk0G1/P4lExU2
d9GMyheF9WqedT9LbsHxLK2WUcz6qoQFR9+QHiGKTbCQ5ojW6Harto2O3SOM3gKq9JJLx6K4nLMr
UgJI8pRuzHXpUJDkI9iCqwM2JMQ3MXL2GYiqGe/uIXRHUpu/3uf8hVpqGK++We55DFGifUdOypy6
bQBNzfg3UQZb7S/QP1NeGAqi8aPW9OrZHxc0HQvpQE651gvNUmvdmdykGwwBdk7IwX76KOw92U+e
9VFeARobsW4Ay41XK0PE8PIgs/zY2JE2HV/2cRvpgUzvZI4PUHVW/KOxrcY5+nK83LWdwui+uKJj
1/c1TqsLoiSr/TPF+xAzsYig9z2/pcS0YutaIAzcM7hB3QuILUu00+udvUyUqYPPstcjC4XwctPs
pRvaVhMF70tLsHU5JUEXiAx9uwZ6fuQ3wJxVUM9Gm+3elM3mIbnYxxpnINpSdJt+f1rqANZvpqmQ
BsxEUVntsB4toqoF4clEAfbVFjO4xg9A2+PJzg62UMvR6JUKCEHvcZ5H5oYeqdpeFeLHCQ/kR9j7
8biYT78Vx/VN1aH5I/QC8okTLBRWQq5Ddp0J1WXGMLBlT7CjEW+eYtX/wQ+EpOgt7Lvx01KWZVa/
Ayd0LsER9zv/vEBCBQm7+/lRqLrQsuaNtYZj6KhwkwE2v8Gj7I8BWwsVEKWlGX8wx0bAiJdo+I+G
9xUCkQLK+DFQCcmdOq+TV/qe9R7UMdpE611sJb3ZQ2EM+LyTH/fA2nHKMcnzS+yNcYH4zk83a3zP
JUP5kf++nfAbPcNzWq3yqgwBKL8huNjqxMmtgnPHe8r2DQxA34ultx22LqDjRzsPo3GCVTsRqSot
CMv5mbx5P1xkwycmnL4m7OZB/CR3lxldh8Hvt4a5m0BvkzlcktsHNd1zr2naKx9gKCuJxEYdhIlR
Hkr7qdygzkVSjDI+3l7FRogK24biupnbdsQU9Q1pbkG3yemBpOxuKI64+xVfzRVr0elWOY1/3RkM
otx2yI5mf3YuaGwKihwWh2qhp4AUZM2W8cd7MVerF2tdWI/wu0pyg5OLuoFS70R3X4dYvIgJdiJw
pDTUUtce46Iy/BDr3OwHXo41bOptPutipldLWyLesZRu1/r7a1csxHN4RSyBh8a9Dwn1BU0uUgHk
Rif2WOFPm+60O47PyEC4O46yZvsBCVa6cTpRFdD/zUUFrEu7n7Y3rX9+OL74sjL+tlf78Kabnf7Z
FFkaCXLJ3Rkzk3KsuneUdACDTm8wM6z7v5w8EAjfIqEGhTfiRhWn+Lq9aDFUpv5qJZm4pZaRFDeF
fmxryXG44j5wONjqo5X5u8bmN+XO9AaD5lhpXStp/wSkMafgdsa6pitUeMUf4kVRBzOE9D7bgUar
HE/qk2utxPQdxksqURV2HXKTb1RCNG+aO2upt3S5SuQyR5wUKG9dpih7gIkQNZ/Y/U/wsDhJNnYz
G3khInRK+F5zlQREeG4csVWjGfZEzdiOF995dbzJCrLVX4ADmg5EZ/XvxexXfMd2mI1+ciHfqTvE
OhhURf8ZOKvs835PtNR2VPjI5tf6BFafNaX648qvjtJP8XJ8ucD4xvf9ALmtu1lq7t2R2KFPYyTU
+g5qAcyP830Mot+bjEyv4iFXUDSeIcjexy0c+rwWBAG37XW7FJ/yDxjAH18Fs47fJwgPytVWT9Rc
Q0J1tqxCzcB24GbOl3xGath+o1VcylJ7+LqycSZrE6IkoWe69fVmqaIGQFGw12u8MfxkDEQM+JQD
UFP1biila8RHPA6eWIcYGKZkVXxgZ+ai0gmnaHK8edwimeGMXmD1M6LzjVx6TPcHW3pdclClRE3A
eiC4jX1N9/Ot5obsshf/QGYmRLSQJZlZLhUVZ2Fa2buDcizmO9eZguAGNEQ4ubIDbtjI3DMZLZ+P
2AopuLKUoZRMtjGACeR4BgrFTA8vRFP1vM9Z9/Cqw6eDee6u1N7h2jV1Gbc+2URiF2UO/MbWpAzu
SQLyJlVcbFPCzc8hY2B2f89KF3xy7SCXSjjbZ3pfAwbEX9lozi/72js6IBb+VLykhBElX/XxTasU
BLriv5Vh5vgK/FjUI8LjOt47EvTllqe9CaLpBtCrgF6M78AumvU9tN4q2E+/x/URpgojdO7lsIit
pzumzuPlMWfFYgjbQnLgfvxb+oVxFobUXy+HQDNLlRag8sQJv4r2P8yio/YZFobRRFRy7VF1n9NX
+nt4OPScu4dIcHT/kEkzry4x6SqWC+cXatJgSKQAo/EoJOGyzi9dCHIhpPFtN2wUVXweqBI6nXvI
+HE/pMvu0sa5sU+t3Rajce0uTpF5sf3oosz4mWdwk+E0bJ2hER/sHVxGrgX1tz73zwdQZU3ftRep
7AiQmm9tX2m+wSc1k4PaGZT1U8qhAiKPK3xjlVxgHNe3KzmRadIIQLxpyJSb2CuYY9qw6ld6Rpv+
tpF9slgU/I1IGYPUyDRxIUleUtOmzv7R93sSb8sHZz4OH6RQRSIj8iqYt2Zz1XAgVGIHw3CuTRbr
Uw09eIBd56qzp46D6t9bXSR4J+EsgnhT6qQZd6Bcbn33zH3VNfKU/hugKTfquQyZ/4c62nAqNHkD
IqciacbvQS1FbONn6kXPzcuEfMDma6gBeDTk9CMJEBTFTYLXx/8mGtYUtf+1yDmdRa23pawe+HSq
PvIKNcGLFo/H2pK3yayBS6XqigLK63j073PN7UmAkp37K7667pLw6r4NkrUTprgnAY5w+045TLcD
P1gWIwWPpKOGowcYzsmjk6G5tNXroGA7VrHi9SIT9jMc0/duF7PVv8lfRMyQWH8Lf3c1y0KxlKCt
C1qUIa2OVf4M0BDsT62l3FQ6YyZi7uNVMG1V/TvPSCmeXTvqkJFSm2XYeCdeorTHIEnJnC+zZ0cL
97tlkQbsVE59a8QRgXg/2F+plckDF6famncXzM6krLjMyNE4rOIb6O+Rshb0Q4+ZEDcAImNm+t4i
XE4NRPLLHUztlFNDuBzT7zegLcaHxNUTuwlD+5iIW4pjXFPOxka1klZgvaKMmMs4qqtnxfd2TohW
m/+53HodyCQyERke8hHOG+v9TZDGyuclZFgBJCOK/o0riSQhlN0OJmme2E+tWUTZUNdfTWfZWpMK
QaLGdl5S+xiTWcTAOObszm+/eQHOOeog8saZUA6rQgtSaAplgKwAjAisqhvBEvgbAl4VtjFUaZu8
9zDXW9Sr8tSgAxe9TGFtG/09xxPE3Z8Aga70fI6h0lgOcYVy1aIKdXyl7izZ9VQj+GT1a3SnIEXG
a0mbNHy4UOwDNAb6AX6q0t/IXiFxHkfwTijWFO0Z80RPzBpG/cNUKK2O6qHkkb2P9DDkHkOauEIk
fEqZbwHtXM+HMd3AFCtncbkTN94AQ8fGuD1nPTERzhqULSlZ5f/7VPT4nbX/WIlEEC4mw6xSUzSW
e1LrmHbq8Y+OqjP3Nc6AiKu+5TkllyuqkrXzOl7Q4jLx0nedUIRmlh4hF5aEi0jfPlLJUEqzCGmd
RuEGTewVcFlQXo8ev8jcq2OdjD3G0NCeAQw9keBAyb5hDX38upDKPKwLyeL04RoQWQLMLyJr/HH1
ZBpl/IK2x4OuF1IIjTs19BjSh35Bv/ELBxYvbhQCRHxzKtoiQtPOzah8UZmESffxDXVZWXWGPnjj
hKKuqV3jGX6XLdTx+yfA75JlII97+1VCjn4DhRLzxia6QlGhHlPbyhrolzXVo6oLQFSOQekBajct
MNcKX69RCS1memIsK9qyiU2BH3b4UQWRTDsiacx9kkd2nw3UeKDdeoHbJoPPLa4pni6q91LEYhJq
MYu43ig3uxOkHamYiJlGUZtBpsa9+lYllWu2FxSno8zYJ7TORG253y7PGEzRe5rAUI4fTo3kVa+k
ea4xfoxpnh2CHN+HwIzXaaI8Wp/auEDEEkt0iiLWjHEaA17wFf8jbRFIq8U2GFJ9F00aQerjhIm1
7A33Uly4NWY4tcp7MlDkqaPFt8Vf8A13ZrjlhMYJQ/J2eSbAPvgREFqGinVT5Z/cJVATb7Mmt3pl
DiMwvK4218dyR0rTop+8pg7C4Y7LDLHySDSBIcgErpXcw5aLk/UdCO69g82PWC2vQNDw7ynwMYJ7
lSsGeSQy1kmJgqDJ5TkJnaLFbsh2YBx7j8t6Rpjyh89y8buE3dcuKv4O/ZGob9IeGGqqxP2c8Av4
cEzcar6AKGxkbb3bjaj7RfXPtTnsgdhhveCMovHU3IEbJmYxGw73Y8WPsLCyV1M22qylltlfg7WI
JOZPuA8fvZLw6ZoUTDejPb0jsU+L19LdQ+sx93E5giiyo0b6DVQkiFufEEhYQvHnWHM+1ktMksOU
5dS+o9GXz6UtSFK1gbtf+4wsetao/fQDCHgqApARX1pH1b8QEFUxdDHWijQsVlZDzTRnDXO/UUra
icO7jYwBNgUKm7dY61sXGb/IKzZ6gsM/3HuOIltbndiuvgf3EfuXrciKwFMf5bVbgEuLvi/6kpB5
hweT/P4xuAaBtvILVEdrnNPEf6nS25dK4FlIrY+bbL3ACih/soGXFciaBbjkBWJ8za7XbmT2Zl1J
W8+mv1RdO+jLOc1o4NoDEz0WqONyidxROxzjU15PdUrE5ThGh1rBQjPHN0aEejbRuFdzMr4zjAuS
/RrFN9eKhzgVJ30R6aql6ADTPDNs4rqd34IJUhZglFAUR53Snba5VljUHWSQ7rb147hy7+vrxRRp
OC+9J4AhsBcHuNxaxOWRDOYkLdewE3Fj9icXOaExnjcOShIAByDsz9gj0k2wHytCfL+1ppNbpgDt
0p3YI36RGjCHJ8LBu8MXjXARCW2RnWS4IHDAWBzkD8/uHJ7dekU4QNowPXv7O/uM29abLcOcz8Bw
uXF2mE94db8E/R6WQoywkz9FMNphF2JvUvE+UWZXvGzkJAjUbb2R8uEAPt3eZC6+kTkocFzuxa3I
E2vZ1Gafx4yvXxFFXOEH3pjZf88dfT9sx1lKscO9ekg3N27YNf/IyhqU03tHRDoEdGSseQ7ui2Cf
V5NRCe5px9kf2LUwv5JUh1Dx6G4mNRmiYa5b59x0Ch+9R/oyWTi/CF/uMLqORA0JHFwm08Ujpmjq
ZjTX/V+Swz1DgaDhe7tC7pMt66XuHphlvCCMfOLGGD78cfIGUnJT+ptG4wa0hfkQH6DBI+nXS5MR
ijViu82A4eHJA5v7gOZ4KpWpsvSlyqY3JTsowjCIAbIlblMlb8nAYiVPWGxlp3k88InLadLIcYuX
NRzAd74qzd2NlNbR/5Jx/kMJuuB1ObWYy3iShGEX0vsoHspcPI25o5NE1jpKf/8L8G+clhfrbTGA
fupcK2iJErBnVrH0pg9xPzpiEafvNf2sKrwxk8wN2rNhfVLO7ju5IokmzOLWWuGkggDblnRYSkwy
DUYMkFnMWECZUcB7rhfLjvT6CZbphDFuuvTwa244q3FrV8c/TAj88hVe2LpUd8iFD+Qin5V8VKvY
b2mmmTcQyOMDZ0F0jvaWFOpHmRO2BD/ajETqgDsZNA3deohyW6xqctpv3F9RKq6PK9YuTKcpPDHX
tSHLYxLTYtB67QrfSmqptz78NznevntbSeXm21wV3EgG0p1liQHBPa/Lm4eFToOLbOnhXdvVh+uX
HEBoALraK4GILnSxPv+cdVsvtwE0yKLCxH9SX5ZwwNqSd85+px5cuuE17Eygm+Xkluyil61gV6AT
UDi+steFwpfn74sKnDfWHRK3dA5XQ7aGtd2vtwzgeH6iotZMgIU2LuCLjcxjzXVBwvqh1P1LdhBI
hwn1RwnV4kSSop3S6Q4vRLcyVVXBx5ry4XQnEzlGTT60naiUGEFEjE7SZx0CvBrGgoKnjwIft57Q
XTgoEtSIDpK0P6dO+oCrUGnT+tsoM1Jl4VHRdBknpG3BDg+RTuwyK4Wwz6TcLHSeiPZ1CXA9T67X
5Fmx3YN8Wa9CaNhxX/r+zg2lTo7W2x0tO9LoYqfPieFz9GfQUDAS3wZ2rrcXv2zIJF+2WvscIIqt
m3J2SBWfH1z6dV0BOAf+cvr3fDCpAAsls/RKqZjD+GyaM4gkJNa1e2JJFfnFNbFZt1+rgMA9jK17
5xfUGVtsS5slhxy0SOFenz3lKce6iMEvARP+OsdLuH6Kjuf8F+josmPAFX9kSXVjiA2FgszxZo7M
2QA0sj5DsBdYeDxuuoowEeoQYdlcUz/MQGL1oRA8j6Sthk+hzw+k/XqOTyS5motR0IgD2xjM26Y/
Ki8h3MH3jf9cjB6nec5z0iVjnpOf4ZAURa96DPmfXHROGMLKcQ8L3Qs5ZwJ1dd20GwZs8V3LVqm4
K8oXzhd2B49bLAAA9nzbw+Nf8LInQ44Fj5ccdA5jgzKt6ZZoiVHDVlraJMUzK8XzrhgEsv/Hab3p
kLOR7Aw6pikhyT+j5En5CVBzxDC+5HdkZVHsgMz+0ga+km0muZI2iqUBkLF2eAtQUSyTjhqlv6xM
lu86WnnS1N+C3OBkUu0PClSKiUKSDOTa8GpvZaKDHGIf12FIiqECLH7HqAkHfibz2HaViBuZCAqn
oT+or53VtwoX74/pNJYzXPX9jwsFFNNFLgNFxaE6DATTwkOnEqImf7Efg78OCp/zziBa2hxhE8aH
Z8tUnIlT5/54y0j/mI1B+bAV9jMd6XKAiEk93hZbHm6LID+oD2xZgDS7F1GjqVCsMjYOVMPYIUDh
3tXDbpOcq7bhwFUaob5ELek4rgNuAQyO0aLNcsl/JjnuCsIIT/0+/15NPvcrFcqdK7F7EN0Wa8E3
QOt9Q67vSxzsPvP3svQ65tFFsO+Tu7QNs8YBOj1D/0tL+rroEfQLxmpMcX/K1kmxt1OYWnbpKG3N
DHT2RjdE0xybIHh3oK+mC/328RRs2yTZxQ7Gggpzh/V2Ks/y4IIktQpW7N6mU+18+R+s+jFLI0rt
srqJiFUC5BqC29pzdSP04tORw+M5QiwAhidRt/IED72cPiW4dFl9AfddghDYOKVwBXHoBK1VXlrq
ywVaRpN5zyKlWUelaBtmBl0gFDRmQedOuf6fajOaQ594l07xkXmZi+4OjkoKPs+QmzvozsWzrikI
gFygkySKrY2Xa4u0Bue+L6gWwMSwZgyyIjF7NKuWKlyeEBAwFFCj9MlhOehrFh6zuQIocdl2XROt
ja8KKPdULP7w1FsEIeRVqREmJ3VDDabFi68XSxSnWTGo3zV23wJ2wkWLU0VXqHhKfnseF1uaFKQP
7aj5cU7+i/BkF3vDT9oKfz8+v3TQlVoHrM4dFhJqy/9w8tcNTg7ho0rlPvhgtMEnkKrzEC1dtnYt
67xS4lD3c71HhyOn+HuohnEw+mZR79Is+OuhgNJY6SGcZv1xvA3p6MpazjKvLbbK4PEUzyvZ1gd4
BuB2+8iyzXQloPUreezffTJy80jYSZ4eZ08ybhgtW25+ZYFilMilSusuDHw4PHH5rFbWg8dvHdid
m5/PuYcIo71RWu6YAKQK7nm8wSQAqEDWAX3bkEhu+hqLFlAQ9C+/QW/RM+Aft6X0uxnvPzEDB691
s7hV207gGsOIZjGKlALoxotCiJ1TD0DJK2OiG66nDFJ1JlhbwPaYoe/UW1tiJ/Bx3BCljAAlTrus
Jrqm1f9lNIjIwSa4oqwNh++B+ZAYV/kiizOlVbYTtod59D0cPsZj7YnOvUEAKoaJpLw4iCSmc8BQ
fakra2zQJyC5gK8ZLv3EFIE+Q2c7U3K30hpoPRIYW0ioTjgZgzm5/b/7ce149kwCO16ChnUT50XF
g8lr4+pGgwdaQyY22piBJuYs2Y+uVAsi4LG57v5PaBcHkxXyclZJ97zarb9GWyMzg3sGNgpy9dtq
1hpDcjGlxpXd6GREZYCX9YaKxrlm2xq3cmL6C9aMmEeckJvR3qx4aFAcBtmVgmH8lC55lOO9jQ1W
5arRn+Aibqpg6yVzTX3F0DsyKVlNZIzs6m4UUmtp/oqXl8dWMHFqxjQHVKVWj8fv+N4TvH1xvuuA
F3xwLoXkSj0fvARD+P8wMD746L7javDi5pauFrX2GvFUQ/oLrnhJ2wI57QAbMJM6wVaMYGwjNswE
PBT987SAn3PIqe1IWoQmCKCeLFcq80STauHSUwSgaUWG+7KU/qIrkqlEAopcWlIEoixx24CApKec
vaV/Ad/PQttlVjhjoZ0bfjaZ9n0QY3W8K+VDfvyuDCsD76MxwmWJKH2bpv+qz4EzIZk3ouRApkUG
2cPKFG9DsJ08p88NAYOhsl01HAui88F47r3MIrKKvfEZ2V6gQOhOCnGF79f+hIPMfXxcqUot3JJo
wy1Jv9HZP8vxCas0LHghKE3nKNmrGN8fzoIkGhOgEwCRDV+0MWP4knkOp5iqpXdESxxjoPuDgvH7
QrmEgTcR+j7JqIXRxcymzlF3iJTzq5AvdVsXix6XXbwGPtJABY+4FS7RypSWQkFX2xY9SE2lO9uh
WdwEEU5PIpABn4bqhS+xu1L4rrzUBH0sZRGZ7+BjLAhTDREC4bB9lP/VUL1uU/p8WzDtDQNk5oAa
QMUwhh+HaB/3/EPIIM3ShIHqX/Z2kvy1pE4UBnHFi339Xum93yS/f2qKifggooFzZk/Ls0CkCvVC
TRMKkCVUcGMu240uIsSCaUR9Fl3xb2C95Yx70FXxIfXUZy9D4PfTESotgffGQso76Ezg6PEFRwxM
dnrOskUTzrLxts+sgcSKNOsxOlnB3EWRv7CNqnqwHDi0OAnUbXD7BFm5S8od1+tHvbgVRjtiwJkE
wWXhbBMdHMof2ZUhj0Bsstw5/ySVhAePYsFoPYRyMN+AdOcRzdOjShBOTzetA+vbQPbVaWyqR7pZ
vJti5h4A2yw582qJ0HgFdR7tVSH897yT1WIbh32S2k2bhQrmlofXZdnRxqtYl74WcYAWfP3E4ZWK
bZx1WZ1MNC40ydkpTxsl8P8AVIafA+wqukb6cOF7+5POciEnvcLZ0M/gNf4PQE9S1rFEI7QvHQMj
ImaXZJ20Fhph5sDAOCb9NoA6UqUxG8cxuJD0TY60h8YWN6ktwbbC8FXjAFX92a/L7+TRNFcWSQAS
n6qXFacwxZp4vvaGgCvz5zYpHeIL5C1GZzl/Jj/RFefVPVAejIXtS2TXtqrkVo+pahDhvMCeJMnJ
XUs9Hg+6sc7IZdDmw9aUwmueg8W7rbatdMtc6xqlIWI80N258/PKbdxgKIZBjEg5GpXJ7IzChZIw
pUnpIJeIriAPa/UsIv8cz9trfdePvUR0E2qJxYaGo2XiSZ3m3TYKvQVSpE4iH6OQt9PsEl5lcYrF
3s5mnw+ql8JdwcQtq4RuYJmev3FYm6GwiEZJ613aUr0awFW+xMCs+may0dslCaZkC2kQcrytzpd0
V2xccMzSZZiCq4cO24wwMM6omoGnUhstRk5OXyzB6m9rHSiXUdK9HV5eBxobXM8h3u1ezRxVYryo
aIJfj59ztXVAT8uRKdg4MwnCFDy+RRQDk5Ud6zALTs5dbC8otEFgxG+cITLYAjytdQGJxnmxJ9rv
CJFKoDfm3SSfybNrdVDWHsP7MdYz7/HavjaF6kwvLJeu03r1k0gaITG9kN2AdgO024NLeUgiNhjw
2BqkGMeoPXrEJEe63N01X6w5dO95E55S6yisv3Ca2Pa2C2mFq+x9iyclzVlHxbwWmK6btvkHLOUY
grc2UUO/X6uYRQo8NRe8iavsggm7yZX/O73XBqn7lLkHsyWG7A+um2BlsmrSehk/DJ9e2Keo1gmf
qNb6D5rBK1gwj+K1KOa1deDW+S/Lp1LtsWmF39HJ1V970jZ4O+fieAJJhGZR0Kw5rLZonmgBhFAW
IYPUTDjvRr4Fg8Jcm33iykV3IRuLt+Zu8rTzgOcRaZ12Wp0W5z0PfXP/AfeXCJF7CxkLf/Y4SN/9
67Wlfwj9Vb+xUULLOYtWB5Sy6RZ4u4wBwBDB0Q6BVuO9USHqQ6DVTWaeuC7uugWpZ5acBSSdSiq0
ffscDjD8qrZFiILUPAAUq3WcJH/dLhh07X5TqweSgDMdtEqIuqKmYsmFmlDNBv3LUtjBhopPJN/s
Mb83us24W8KAxXLHX/y2XF8x9CcZSkSUt0LK4RkwGV9ItgQfg4LJjznIVNOLDKGlBNvrU3fXDT8q
jp4q0UCQRAE8p2w0XMqz/Z6Y0Alc0OJTfErW1Z8k7svM/zFtz3tl3tpcm359RUCsFl3MFO7DXLeN
ihQQncpFeiZHBWJ2OJgoXQpDapm89BsHI6c2vv/ED4w+MKtswJqsV1F5TIKCsmanJ+t3g1w78n/V
09hIkH6+jFZpF6Cr/l7BnqhpaxEsOV9pXEG7fx0sQm3I28w0u/KDasorVu8nUW+MnCQ2q0BkjkRq
fQcxtrzZb6qXzwMRTSjWWPskCi/5+cvFaiK4mPCakv3cKSd1RxTs1BZVvUZL9czvwcrKGT7cP3kc
bqGZ5zNT4Qjq1qZqSpLsSL1sYzfhjPI0HJl9029XgCTeY3+5LixRjTKtVy6giI23xyC5lB3KJYUB
GpcOR/Jy0u0lP6Bs357FLw2BGJc8A9Qr9ZCb/OLQpjpY1ZLStPfQdztC74NkqLnN1iDOM8SA182O
nt0r+YNtiEaEM9O2LxgwmGGP33Y9dJdIuk1PPNu4fSFi7mawBSaOZcZi5P0ZLZfJxFuZRitL5cS5
VRdnsyo4UpvaK0n7YpYe8xysr+aMVy5Y7jIkFsR1Yqskeq62QPntOriHNl/q/pXsWvE65SgD2uWA
THUppCf9uCzuE8NlD526YcyJp8ZZPK8o7IgLK1MET5kaJVvmtd0DRwyGpqAZn3uYRUxxv1uWv15o
VALz2ApAHm7eS4bzX4khMn0V1NtZL4BhC+dNqE3iXTXEkFBA7O9Ef1XHWN69u0aDfUbR1UXdItNW
S3xbPGJjBw3ItZoB/NXsQDP2qQ9f3wKzshsuUhippE9R/wNS4Fq6wpZ++dN5P/79HvzRpgJu/VEO
M7gkTgDr3t/44GcNgmJIE/4FKGvwsb0QyOj0wLw3TPE91LPEwFlJigpbxkcd0hDY/3V4HfvpSGDM
hk9lNEeO7UzWhoYJ/M1ktZl3R0172sETI2TDKI8dG5JlISxn5y3OtSS4NgHetHh6TT/VzKA2ht3H
Pputw89kMBSzn+otYId0wKo6aBpY1H/MTr+2NaPMxZMX0eyVQTG8ONDRJy5H0SES8uzp/AosNWb/
sxw9IPYBqed9dzUny3i8WiOVkP3/onDGficx/zULNGGb0wb68A3n+thEDTq1dFP1Es7Q0SsZ4WEa
BMLq8YQlDoKsDYkVMd9UK3IjKHHcos1zvtMM+2tIqmVeVzOd+d8w2LRhb4v59gGrzv/6ILbiqLni
M+gWS6RDE0y5uCVgEwJIEMr0pJT80x6rZ/xL1EXVZDgu5BOnt8k2zh2KkEdGtnapd1QlRssONBOS
8Xg/0aq66nIXtoasKRzZLK3EAvK8pY03kqUwxWNDVoVykuD0PASGeH39lcLP0nSVP8jOMqTWpWaB
Xl4GQtcPzFnPuozk1njhCTKni3piA1ea4oo3ESiLs7C/ULvuHoOBCmzVftPQdPT0FE591blffn0Q
HxuSCcOQFV7uK43dXu0/zX4smOWbSa5IXczkpgSUr5pY2BftUubTHxtGqEiNfG7Iq4WoKoodHxIl
BmJVO2WALJa9aP1DQfE0MwxY+kuBhTLBeJ/qOYczmk7MNcr9D9qRUlt0VPQa963TIlPW3x97rbCX
WFZCvqQhsbZUsBYHxZ8COXayeE5PlJeqpKZTW04eTzRgy0O5j8qhj9Dv9H4OxgeDgC5EHytwrlpq
fxKKTek6lu7NUI0oBYVmZcYYGrqWMo14CTvCAmHhCUJOp6z4N8SbWX/w6WKO8UWaM1DTwP5sWsAX
AY+K05qKemJ+60m24tQ+eo8k8NQYE6Qj5T6jRTa2nC7GLZvtwbata1CdREqy6A7usU6weS9UpSUu
pZuYkFEAufmcR3yWSqb9khDpj5FonGopkJ3hSbkKcI7Tluou1URBBuUaKfIyWUaE+ZRWX1JIvXBW
XW4Lm9Zl+7ZKF7P1kXOge37jGY4SOyuS0rqAifFyY+peJVQ0paUqSrQV8CnzQ1DcqdmmfHEuDz33
Bs+iNDTXAfC0eyUioDprd7c6k+ojib2diO0AlEvDK+LdlU/9xcwYv1m+eaBsG5XEFmb9WRLU0ktL
KJwYO6SMpl5a4gNJaJWy1xH2Dqk2uW2Y/j+HQPeR4OnbuOxhQT//siXWOK4RkPFC+zUDgkvZ0LnD
kxVVTg0i4SP4RlA1eHNMmgkHYrUWdnma8qugiZfkk+EzqwmgaCEB/aq4lLDTDnIjq0JGb7vNtMd+
5z5tqfwM6mD4LAIk3tfn+SxDJtzkXWHuzmXgEkxQBFDsyUjxmqieBGIVJBNkLzEZUR/bb/5mBbBr
eBzq+OFUwY3k9o3bKDNvNxhn681XLPgR8c6gWRkzbWyboGX4/Iql/qxbuQ2Of4mG+9hGc22rV2zw
ys++zunpQ+7K7niwsLWb6v3iDE9phZTFQbuku282qrytezH9KC1Of+LJBswM/lZd8BySWQhfNO1u
1OEJsi99xzsCO1MtYie7wHV6NMqMuUtte70WNM13ywv07n6SIfzcNShwm9Yte6sh5uly7bAnk+sM
uRXJoWGnaDnElZaQ1XdY1iLSGkBPMIV0gX4WzfTjZll6xz8hY0UECjh3Cic7YojtslXDyfVcVxR4
TsXAsdoigJ9hj7d2LU8Gkrvd94qXulTUiR5j9e6Nq3VRZqNsaxKtwlCyRTIDXskM4RHcOv+1zXMD
+kM4OayWbWTnjmtYVYif3b3poi+Kxpv2MrZw2G8/uhzpxNkiTlkrb/Cpmz2kSzwMObdzzgtYBvOY
660pQweKQylM7y7+pkJ0g9amf2x2MhGFa2bIAw8dyeQr3l07+zjBgaOqW91KO5AmMBV95otkNcrw
oxbn1oO8W+aTl6U5eSd8QYBDvtxgmDPCxQOaUQoaRwUslt7XSpZBBr/xwzgnu7YMo6E96qxiZITK
dkuohx1s26QETEfp57QNM7pgOpjM7JbQZD1ktQhZvYidmm5MKQXClF80fCSu5p90WZGXL1ngoLdn
zqFnDHl7PityN7duxhn2VR/cgHFJesOmAC4XpC70sPyNOGr9y5dRDmY7o2YzVMdN606SzERU9ipx
jkJI75zdbTsmqcmBoQeqZzt3SlQZ5NsFkNfjep+cTmQ1/GjKwYxoWNPFRlnoUHr89YzxFc68Y9n+
x8IrssYmBDwr1+EAwVKx15DGaMW4nQ0A6T8aCBakOTPNsAkHfIaRGB9+3lYzIkdVSeFx1L+DFK2h
GFMkklcgkWmwXzbtr97BoRI7jI/+zgRWDar6jUUKCdY9h0SLfPxtkoFKOcZZ9dEE3E8KAMFC/vXt
BrTB5J8AvUMock2dPWv5S0VNCy+bqG2qxZ7MK0gPmxOO49qHgb6VUWSAlOsEkawU/WO42lwxJ/q7
zXqw/52tVFxnfH2Ms2gXJBw2WrXAL19rINwrasrCwBmz2t8ID7Xbl51WdW6It4Lr24flqoYH+9o/
kX2QH9waZgv/uD12z+ixpEEbustvIu09ZDpR2Y1YKdg+y96IFNxXlBRYgotIUKx3OL09Pbeey8TR
Njk2lXrIg0nBVwWQAnVoXELrdzjk0JNPaD+89BKVdQVZflSsNpEt5vx1x0t1LqDRvfYZfQoZDCD5
MQM52l864wF99ASX0OxaedY3/nGebP7pAquXGHimIWWET/F/w1vHhryUZmdr8jv7+SXa6Hso8Mlh
ckw/bc8QXBDRZkLjiG19jVuxarv1loAUqgDPcL0uG0Rz9xEZ34g8RgFnY3LVUifTPcYT0ERDBKSK
MerDQHgT0mIThvnm+G3kIjbw/REQZS6qk6o3KQQRDVXFAqs4CU/DMjmk4bRM7mEiYE95oB1vNRCg
aZsBA6vR3q3RtdeMuJiZMdkoh7WleAhrOx1uMofgNgr9DmTSiv8js5Qz7N/v/L0hEubm+46UygEy
Tbu2aC9dzqey6u0Qqm/wETpjZioXf0bdVYnYB4px+8xAyGp9qAzB17w0hKEXGdjjQkQJgHrQNkCC
tTldc0yNAEc5hBiBdBFYfAR7httP+l3Ym+I2PfPkuZJfeq/Hu0dB0j5TIxy60SsT/p7iqNYdIge4
AAu1TQJVqPcWjimLcqcjoITAA/RcMkqt7lR9zmyVMxevITRUty8/+xr6RiGjplTylQ/CwR7HK+RK
daDNM5sPQKSdVmyl2nPAh1IYoDNv6lVe7wM1y7Wv4fcHdVxrzcQi2WMyQdCJn3VREibIJVkqdHLa
XAbrUtybmRsYErE1oemKWLoucNupR7T48TC89L8BtZV4phmbQAHQDW2zi+udqxwc5weNOUuwDb+4
ROXLxDSBwWDPbjifUpFdiEIvMcJ6hIsHb1SzOYMlPBb4zRxNbwid4dUSeISvzOIUefPVa77oJWsx
BZhYSxYqFFK8sdeazqNr6cn85sYQWEP9kU+YaIQaJIDTfhEcH1GU43SEIWuKc7hY3dWAl9A0eTNm
GdXgUVglk5ugPq2IwwPCMe6gtbrT/rWRYDgRO6/8QP+snMGb0suHTWbvXe8xA1/adOxDVXd7bIdh
XNTyKDq6jduvpmHh+hCBqnfE/Un1StZaV2golyFOWOgQ3+fN/8eZqOkS1WJfrtJVvjyAA/e181jw
xx8Xcxxt4ErUhz7IicAl+Ms+L9mshD9++L4s/G9xhVucNCNEp9bmtDsWl9TJ7DXjkBRYhCt6aEmu
XjXPxG9zG3DIhIBJCpte4NYAoWb61Zv2sriwDXARfZ+S26CMx5dDMdnCtyByTn1w2+yTVto1oIl3
hZDNt/nDzkf1+3WLmGyTKwWr42ldFjUanuoG9nSeiq5uO4JohhOLTvhzitxhFRyAYwkmqD8xDFag
/sj59Owm4upIf3cXRkRhFrKwo2F0kINn8LVt3AdCU84liSM8kqyIv7ld/QF6Lt+lpYw7iouDHcU4
z/kPLyw1vUNk57e900uAOFRgNqetjQHQg1ttrnSMeVIbT5FrR9RK9WVtjdjB0sHxg1fJMyhJy7Jl
FttUmvb0a5f1wrYoClSFxPcs+UU/XSTd1X8n4E6kWum2P71VXoQUc7r/8PsR+psureaJgYDpMPYt
EUkvSOVGsIvx/yKJszPUe8WB7GtICeqVPAyIsH3zesVvm5a9lTPZpmf/OKF/WheK0F62tuJnlD64
D4eT4UvHH1Osov0Gru18sDejBJOGj6TT8kt8R+fR/d4oulPWx/vBlF1/kYCd05wiHugFfnr55U7g
9+jpTEhsyDrS/ZqaWx27rZwZsPmCsQeiWKRgbj2LOKtX0ZUlm5pZAbSZgWWdqB/1xVRmtGBi3+yt
cY6QvHxJSkIu3MakynaqG6Kj1tXt8YNuI55r07XQwwPn8/OwQCA1U9AIhmvh1i+puZapeQXbuohD
8XayL1qQkCDkyGkpMqQvaJPzBuGQnWCoRePKlEsCVRL/PNA/MKvUoChtjEtgmbtRj8KSYjKKcS0f
ltdSVcMN4zaXgLDWQd0Ni2+FRj3YEKhpv4fp0AsaDlbM9sMYPRIjqHXU0NlyiddBg74yO+5Wdw/f
bo+05r/1NCaJjBqUkqwJfvcW/4LJLoCaiOI/cxQBxUPLXl8PBw/ctqhkLZ10zdLlfbUhWkOwnWYz
FX9Yzq6TvrnkKW7xJTwTGsSPxlyB1iZpwgHZn5A0vMoDud2QAfhEOLe8hyV/hVnjFqn0/Da30Fjh
2bI1f7jry9ZpR+ChTd/gDaxwGhXjuxdfK+pTF87sFjhtCYh701sdBK3dZ0lzDxCgdfM28OsKmGhC
SRgEwgukokRKxd6u0I3qx38iLUEB3m6Xz/0=
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
