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
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
dzkwh23gfGCnWnRBSAdHILvQYX7X//Uy6dA=
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
