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
qjnpUfKo6237uNX5JKBVyuqSIO5UNMm4ul8=
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
