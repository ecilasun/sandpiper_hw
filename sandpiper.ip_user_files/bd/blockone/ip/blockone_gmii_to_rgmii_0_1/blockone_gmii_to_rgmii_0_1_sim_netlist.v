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
1fVR7KT09MqO1OkBtKEMMP/ulmq+swVsvxA=
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
