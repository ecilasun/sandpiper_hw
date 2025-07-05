// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Fri Jun 20 16:44:46 2025
// Host        : fastturtle running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top blockone_axi_interconnect_0_upgraded_ipi_imp_xbar_0 -prefix
//               blockone_axi_interconnect_0_upgraded_ipi_imp_xbar_0_
//               blockone_axi_interconnect_0_upgraded_ipi_imp_xbar_0_sim_netlist.v
// Design      : blockone_axi_interconnect_0_upgraded_ipi_imp_xbar_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module blockone_axi_interconnect_0_upgraded_ipi_imp_xbar_0_axi_crossbar_v2_1_37_addr_arbiter_sasd
   (m_valid_i,
    SR,
    aa_grant_rnw,
    m_axi_rready,
    m_axi_arvalid,
    s_axi_rvalid,
    \m_ready_d_reg[0] ,
    \gen_no_arbiter.m_valid_i_reg_0 ,
    m_ready_d0,
    s_axi_bvalid,
    s_axi_wready,
    m_axi_bready,
    m_axi_wvalid,
    m_axi_awvalid,
    \FSM_onehot_gen_axi.write_cs_reg[2] ,
    \gen_no_arbiter.m_valid_i_reg_1 ,
    \gen_no_arbiter.grant_rnw_reg_0 ,
    s_axi_awready,
    s_axi_arready,
    D,
    any_error,
    \gen_no_arbiter.m_amesg_i_reg[58]_0 ,
    aresetn_d_reg,
    \gen_axi.read_cs_reg[0] ,
    aclk,
    \gen_no_arbiter.m_grant_hot_i_reg[0]_inv_0 ,
    \gen_no_arbiter.m_grant_hot_i_reg[0]_inv_1 ,
    s_axi_awvalid,
    s_axi_arvalid,
    aresetn_d,
    Q,
    m_ready_d,
    s_axi_rready,
    f_mux_return__2,
    f_mux_return,
    m_ready_d_0,
    f_mux_return__3,
    s_axi_bready,
    f_mux_return__1,
    s_axi_wvalid,
    s_axi_wlast,
    \gen_no_arbiter.m_valid_i_reg_2 ,
    \gen_no_arbiter.m_valid_i_reg_3 ,
    \gen_axi.s_axi_bvalid_i_reg ,
    s_axi_arqos,
    s_axi_awqos,
    s_axi_arcache,
    s_axi_awcache,
    s_axi_arburst,
    s_axi_awburst,
    s_axi_arprot,
    s_axi_awprot,
    s_axi_arlock,
    s_axi_awlock,
    s_axi_arsize,
    s_axi_awsize,
    s_axi_arlen,
    s_axi_awlen,
    s_axi_araddr,
    s_axi_awaddr,
    mi_rvalid);
  output m_valid_i;
  output [0:0]SR;
  output aa_grant_rnw;
  output [1:0]m_axi_rready;
  output [1:0]m_axi_arvalid;
  output [0:0]s_axi_rvalid;
  output \m_ready_d_reg[0] ;
  output \gen_no_arbiter.m_valid_i_reg_0 ;
  output [2:0]m_ready_d0;
  output [0:0]s_axi_bvalid;
  output [0:0]s_axi_wready;
  output [1:0]m_axi_bready;
  output [1:0]m_axi_wvalid;
  output [1:0]m_axi_awvalid;
  output \FSM_onehot_gen_axi.write_cs_reg[2] ;
  output \gen_no_arbiter.m_valid_i_reg_1 ;
  output \gen_no_arbiter.grant_rnw_reg_0 ;
  output [0:0]s_axi_awready;
  output [0:0]s_axi_arready;
  output [2:0]D;
  output any_error;
  output [52:0]\gen_no_arbiter.m_amesg_i_reg[58]_0 ;
  output aresetn_d_reg;
  output \gen_axi.read_cs_reg[0] ;
  input aclk;
  input \gen_no_arbiter.m_grant_hot_i_reg[0]_inv_0 ;
  input \gen_no_arbiter.m_grant_hot_i_reg[0]_inv_1 ;
  input [0:0]s_axi_awvalid;
  input [0:0]s_axi_arvalid;
  input aresetn_d;
  input [2:0]Q;
  input [1:0]m_ready_d;
  input [0:0]s_axi_rready;
  input f_mux_return__2;
  input f_mux_return;
  input [2:0]m_ready_d_0;
  input f_mux_return__3;
  input [0:0]s_axi_bready;
  input f_mux_return__1;
  input [0:0]s_axi_wvalid;
  input [0:0]s_axi_wlast;
  input \gen_no_arbiter.m_valid_i_reg_2 ;
  input \gen_no_arbiter.m_valid_i_reg_3 ;
  input \gen_axi.s_axi_bvalid_i_reg ;
  input [3:0]s_axi_arqos;
  input [3:0]s_axi_awqos;
  input [3:0]s_axi_arcache;
  input [3:0]s_axi_awcache;
  input [1:0]s_axi_arburst;
  input [1:0]s_axi_awburst;
  input [2:0]s_axi_arprot;
  input [2:0]s_axi_awprot;
  input [0:0]s_axi_arlock;
  input [0:0]s_axi_awlock;
  input [2:0]s_axi_arsize;
  input [2:0]s_axi_awsize;
  input [3:0]s_axi_arlen;
  input [3:0]s_axi_awlen;
  input [31:0]s_axi_araddr;
  input [31:0]s_axi_awaddr;
  input [0:0]mi_rvalid;

  wire [2:0]D;
  wire \FSM_onehot_gen_axi.write_cs_reg[2] ;
  wire [2:0]Q;
  wire [0:0]SR;
  wire aa_grant_rnw;
  wire aclk;
  wire any_error;
  wire aresetn_d;
  wire aresetn_d_reg;
  wire f_mux_return;
  wire f_mux_return__1;
  wire f_mux_return__2;
  wire f_mux_return__3;
  wire \gen_addr_decoder.addr_decoder_inst/ADDRESS_HIT_0 ;
  wire \gen_addr_decoder.addr_decoder_inst/gen_target[1].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4 ;
  wire \gen_axi.read_cs_reg[0] ;
  wire \gen_axi.s_axi_bvalid_i_reg ;
  wire \gen_no_arbiter.grant_rnw_i_1_n_0 ;
  wire \gen_no_arbiter.grant_rnw_reg_0 ;
  wire [52:0]\gen_no_arbiter.m_amesg_i_reg[58]_0 ;
  wire \gen_no_arbiter.m_grant_hot_i[0]_inv_i_1_n_0 ;
  wire \gen_no_arbiter.m_grant_hot_i[0]_inv_i_2_n_0 ;
  wire \gen_no_arbiter.m_grant_hot_i[0]_inv_i_3_n_0 ;
  wire \gen_no_arbiter.m_grant_hot_i[0]_inv_i_4_n_0 ;
  wire \gen_no_arbiter.m_grant_hot_i[0]_inv_i_6_n_0 ;
  wire \gen_no_arbiter.m_grant_hot_i_reg[0]_inv_0 ;
  wire \gen_no_arbiter.m_grant_hot_i_reg[0]_inv_1 ;
  wire \gen_no_arbiter.m_valid_i_i_1_n_0 ;
  wire \gen_no_arbiter.m_valid_i_reg_0 ;
  wire \gen_no_arbiter.m_valid_i_reg_1 ;
  wire \gen_no_arbiter.m_valid_i_reg_2 ;
  wire \gen_no_arbiter.m_valid_i_reg_3 ;
  wire \gen_no_arbiter.s_ready_i[0]_i_1_n_0 ;
  wire \m_atarget_hot[2]_i_4_n_0 ;
  wire \m_atarget_hot[2]_i_5_n_0 ;
  wire \m_atarget_hot[2]_i_6_n_0 ;
  wire [1:0]m_axi_arvalid;
  wire [1:0]m_axi_awvalid;
  wire [1:0]m_axi_bready;
  wire [1:0]m_axi_rready;
  wire [1:0]m_axi_wvalid;
  wire [1:0]m_ready_d;
  wire [2:0]m_ready_d0;
  wire [2:0]m_ready_d_0;
  wire \m_ready_d_reg[0] ;
  wire m_valid_i;
  wire [0:0]mi_rvalid;
  wire p_0_in1_in;
  wire [58:1]s_amesg;
  wire \s_arvalid_reg[0]_i_1_n_0 ;
  wire \s_arvalid_reg_reg_n_0_[0] ;
  wire s_awvalid_reg;
  wire \s_awvalid_reg[0]_i_1_n_0 ;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire [3:0]s_axi_arlen;
  wire [0:0]s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire [0:0]s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire [0:0]s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [3:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire [0:0]s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire [0:0]s_axi_awvalid;
  wire [0:0]s_axi_bready;
  wire [0:0]s_axi_bvalid;
  wire [0:0]s_axi_rready;
  wire [0:0]s_axi_rvalid;
  wire [0:0]s_axi_wlast;
  wire [0:0]s_axi_wready;
  wire [0:0]s_axi_wvalid;
  wire s_ready_i;
  wire target_mi_enc;

  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \FSM_onehot_gen_axi.write_cs[2]_i_3 
       (.I0(\gen_axi.s_axi_bvalid_i_reg ),
        .I1(s_axi_bready),
        .I2(m_ready_d_0[0]),
        .I3(Q[2]),
        .I4(aa_grant_rnw),
        .I5(m_valid_i),
        .O(\FSM_onehot_gen_axi.write_cs_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \gen_axi.read_cnt[7]_i_4 
       (.I0(m_ready_d[0]),
        .I1(s_axi_rready),
        .I2(Q[2]),
        .I3(m_valid_i),
        .I4(aa_grant_rnw),
        .O(\m_ready_d_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \gen_axi.s_axi_awready_i_i_2 
       (.I0(m_valid_i),
        .I1(aa_grant_rnw),
        .I2(Q[2]),
        .O(\gen_no_arbiter.m_valid_i_reg_1 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \gen_axi.s_axi_rlast_i_i_2 
       (.I0(mi_rvalid),
        .I1(\gen_no_arbiter.m_amesg_i_reg[58]_0 [32]),
        .I2(\gen_no_arbiter.m_amesg_i_reg[58]_0 [33]),
        .I3(\gen_no_arbiter.m_amesg_i_reg[58]_0 [35]),
        .I4(\gen_no_arbiter.m_amesg_i_reg[58]_0 [34]),
        .O(\gen_axi.read_cs_reg[0] ));
  LUT6 #(
    .INIT(64'hDFCFDFFF10001000)) 
    \gen_no_arbiter.grant_rnw_i_1 
       (.I0(s_awvalid_reg),
        .I1(m_valid_i),
        .I2(p_0_in1_in),
        .I3(s_axi_arvalid),
        .I4(s_axi_awvalid),
        .I5(aa_grant_rnw),
        .O(\gen_no_arbiter.grant_rnw_i_1_n_0 ));
  FDRE \gen_no_arbiter.grant_rnw_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_no_arbiter.grant_rnw_i_1_n_0 ),
        .Q(aa_grant_rnw),
        .R(SR));
  LUT4 #(
    .INIT(16'hFB08)) 
    \gen_no_arbiter.m_amesg_i[10]_i_1 
       (.I0(s_axi_araddr[9]),
        .I1(s_axi_arvalid),
        .I2(s_awvalid_reg),
        .I3(s_axi_awaddr[9]),
        .O(s_amesg[10]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \gen_no_arbiter.m_amesg_i[11]_i_1 
       (.I0(s_axi_araddr[10]),
        .I1(s_axi_arvalid),
        .I2(s_awvalid_reg),
        .I3(s_axi_awaddr[10]),
        .O(s_amesg[11]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \gen_no_arbiter.m_amesg_i[12]_i_1 
       (.I0(s_axi_araddr[11]),
        .I1(s_axi_arvalid),
        .I2(s_awvalid_reg),
        .I3(s_axi_awaddr[11]),
        .O(s_amesg[12]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \gen_no_arbiter.m_amesg_i[13]_i_1 
       (.I0(s_axi_araddr[12]),
        .I1(s_axi_arvalid),
        .I2(s_awvalid_reg),
        .I3(s_axi_awaddr[12]),
        .O(s_amesg[13]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \gen_no_arbiter.m_amesg_i[14]_i_1 
       (.I0(s_axi_araddr[13]),
        .I1(s_axi_arvalid),
        .I2(s_awvalid_reg),
        .I3(s_axi_awaddr[13]),
        .O(s_amesg[14]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \gen_no_arbiter.m_amesg_i[15]_i_1 
       (.I0(s_axi_araddr[14]),
        .I1(s_axi_arvalid),
        .I2(s_awvalid_reg),
        .I3(s_axi_awaddr[14]),
        .O(s_amesg[15]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \gen_no_arbiter.m_amesg_i[16]_i_1 
       (.I0(s_axi_araddr[15]),
        .I1(s_axi_arvalid),
        .I2(s_awvalid_reg),
        .I3(s_axi_awaddr[15]),
        .O(s_amesg[16]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \gen_no_arbiter.m_amesg_i[17]_i_1 
       (.I0(s_axi_araddr[16]),
        .I1(s_axi_arvalid),
        .I2(s_awvalid_reg),
        .I3(s_axi_awaddr[16]),
        .O(s_amesg[17]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \gen_no_arbiter.m_amesg_i[18]_i_1 
       (.I0(s_axi_araddr[17]),
        .I1(s_axi_arvalid),
        .I2(s_awvalid_reg),
        .I3(s_axi_awaddr[17]),
        .O(s_amesg[18]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \gen_no_arbiter.m_amesg_i[19]_i_1 
       (.I0(s_axi_araddr[18]),
        .I1(s_axi_arvalid),
        .I2(s_awvalid_reg),
        .I3(s_axi_awaddr[18]),
        .O(s_amesg[19]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \gen_no_arbiter.m_amesg_i[1]_i_1 
       (.I0(s_axi_araddr[0]),
        .I1(s_axi_arvalid),
        .I2(s_awvalid_reg),
        .I3(s_axi_awaddr[0]),
        .O(s_amesg[1]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \gen_no_arbiter.m_amesg_i[20]_i_1 
       (.I0(s_axi_araddr[19]),
        .I1(s_axi_arvalid),
        .I2(s_awvalid_reg),
        .I3(s_axi_awaddr[19]),
        .O(s_amesg[20]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \gen_no_arbiter.m_amesg_i[21]_i_1 
       (.I0(s_axi_araddr[20]),
        .I1(s_axi_arvalid),
        .I2(s_awvalid_reg),
        .I3(s_axi_awaddr[20]),
        .O(s_amesg[21]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \gen_no_arbiter.m_amesg_i[22]_i_1 
       (.I0(s_axi_araddr[21]),
        .I1(s_axi_arvalid),
        .I2(s_awvalid_reg),
        .I3(s_axi_awaddr[21]),
        .O(s_amesg[22]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \gen_no_arbiter.m_amesg_i[23]_i_1 
       (.I0(s_axi_araddr[22]),
        .I1(s_axi_arvalid),
        .I2(s_awvalid_reg),
        .I3(s_axi_awaddr[22]),
        .O(s_amesg[23]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \gen_no_arbiter.m_amesg_i[24]_i_1 
       (.I0(s_axi_araddr[23]),
        .I1(s_axi_arvalid),
        .I2(s_awvalid_reg),
        .I3(s_axi_awaddr[23]),
        .O(s_amesg[24]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \gen_no_arbiter.m_amesg_i[25]_i_1 
       (.I0(s_axi_araddr[24]),
        .I1(s_axi_arvalid),
        .I2(s_awvalid_reg),
        .I3(s_axi_awaddr[24]),
        .O(s_amesg[25]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \gen_no_arbiter.m_amesg_i[26]_i_1 
       (.I0(s_axi_araddr[25]),
        .I1(s_axi_arvalid),
        .I2(s_awvalid_reg),
        .I3(s_axi_awaddr[25]),
        .O(s_amesg[26]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \gen_no_arbiter.m_amesg_i[27]_i_1 
       (.I0(s_axi_araddr[26]),
        .I1(s_axi_arvalid),
        .I2(s_awvalid_reg),
        .I3(s_axi_awaddr[26]),
        .O(s_amesg[27]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \gen_no_arbiter.m_amesg_i[28]_i_1 
       (.I0(s_axi_araddr[27]),
        .I1(s_axi_arvalid),
        .I2(s_awvalid_reg),
        .I3(s_axi_awaddr[27]),
        .O(s_amesg[28]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \gen_no_arbiter.m_amesg_i[29]_i_1 
       (.I0(s_axi_araddr[28]),
        .I1(s_axi_arvalid),
        .I2(s_awvalid_reg),
        .I3(s_axi_awaddr[28]),
        .O(s_amesg[29]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \gen_no_arbiter.m_amesg_i[2]_i_1 
       (.I0(s_axi_araddr[1]),
        .I1(s_axi_arvalid),
        .I2(s_awvalid_reg),
        .I3(s_axi_awaddr[1]),
        .O(s_amesg[2]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \gen_no_arbiter.m_amesg_i[30]_i_1 
       (.I0(s_axi_araddr[29]),
        .I1(s_axi_arvalid),
        .I2(s_awvalid_reg),
        .I3(s_axi_awaddr[29]),
        .O(s_amesg[30]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \gen_no_arbiter.m_amesg_i[31]_i_1 
       (.I0(s_axi_araddr[30]),
        .I1(s_axi_arvalid),
        .I2(s_awvalid_reg),
        .I3(s_axi_awaddr[30]),
        .O(s_amesg[31]));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_no_arbiter.m_amesg_i[32]_i_1 
       (.I0(aresetn_d),
        .O(SR));
  LUT4 #(
    .INIT(16'hFB08)) 
    \gen_no_arbiter.m_amesg_i[32]_i_2 
       (.I0(s_axi_araddr[31]),
        .I1(s_axi_arvalid),
        .I2(s_awvalid_reg),
        .I3(s_axi_awaddr[31]),
        .O(s_amesg[32]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \gen_no_arbiter.m_amesg_i[33]_i_1 
       (.I0(s_axi_arlen[0]),
        .I1(s_axi_arvalid),
        .I2(s_awvalid_reg),
        .I3(s_axi_awlen[0]),
        .O(s_amesg[33]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \gen_no_arbiter.m_amesg_i[34]_i_1 
       (.I0(s_axi_arlen[1]),
        .I1(s_axi_arvalid),
        .I2(s_awvalid_reg),
        .I3(s_axi_awlen[1]),
        .O(s_amesg[34]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \gen_no_arbiter.m_amesg_i[35]_i_1 
       (.I0(s_axi_arlen[2]),
        .I1(s_axi_arvalid),
        .I2(s_awvalid_reg),
        .I3(s_axi_awlen[2]),
        .O(s_amesg[35]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \gen_no_arbiter.m_amesg_i[36]_i_1 
       (.I0(s_axi_arlen[3]),
        .I1(s_axi_arvalid),
        .I2(s_awvalid_reg),
        .I3(s_axi_awlen[3]),
        .O(s_amesg[36]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \gen_no_arbiter.m_amesg_i[3]_i_1 
       (.I0(s_axi_araddr[2]),
        .I1(s_axi_arvalid),
        .I2(s_awvalid_reg),
        .I3(s_axi_awaddr[2]),
        .O(s_amesg[3]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \gen_no_arbiter.m_amesg_i[41]_i_1 
       (.I0(s_axi_arsize[0]),
        .I1(s_axi_arvalid),
        .I2(s_awvalid_reg),
        .I3(s_axi_awsize[0]),
        .O(s_amesg[41]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \gen_no_arbiter.m_amesg_i[42]_i_1 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arvalid),
        .I2(s_awvalid_reg),
        .I3(s_axi_awsize[1]),
        .O(s_amesg[42]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \gen_no_arbiter.m_amesg_i[43]_i_1 
       (.I0(s_axi_arsize[2]),
        .I1(s_axi_arvalid),
        .I2(s_awvalid_reg),
        .I3(s_axi_awsize[2]),
        .O(s_amesg[43]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \gen_no_arbiter.m_amesg_i[44]_i_1 
       (.I0(s_axi_arlock),
        .I1(s_axi_arvalid),
        .I2(s_awvalid_reg),
        .I3(s_axi_awlock),
        .O(s_amesg[44]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \gen_no_arbiter.m_amesg_i[46]_i_1 
       (.I0(s_axi_arprot[0]),
        .I1(s_axi_arvalid),
        .I2(s_awvalid_reg),
        .I3(s_axi_awprot[0]),
        .O(s_amesg[46]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \gen_no_arbiter.m_amesg_i[47]_i_1 
       (.I0(s_axi_arprot[1]),
        .I1(s_axi_arvalid),
        .I2(s_awvalid_reg),
        .I3(s_axi_awprot[1]),
        .O(s_amesg[47]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \gen_no_arbiter.m_amesg_i[48]_i_1 
       (.I0(s_axi_arprot[2]),
        .I1(s_axi_arvalid),
        .I2(s_awvalid_reg),
        .I3(s_axi_awprot[2]),
        .O(s_amesg[48]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \gen_no_arbiter.m_amesg_i[49]_i_1 
       (.I0(s_axi_arburst[0]),
        .I1(s_axi_arvalid),
        .I2(s_awvalid_reg),
        .I3(s_axi_awburst[0]),
        .O(s_amesg[49]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \gen_no_arbiter.m_amesg_i[4]_i_1 
       (.I0(s_axi_araddr[3]),
        .I1(s_axi_arvalid),
        .I2(s_awvalid_reg),
        .I3(s_axi_awaddr[3]),
        .O(s_amesg[4]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \gen_no_arbiter.m_amesg_i[50]_i_1 
       (.I0(s_axi_arburst[1]),
        .I1(s_axi_arvalid),
        .I2(s_awvalid_reg),
        .I3(s_axi_awburst[1]),
        .O(s_amesg[50]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \gen_no_arbiter.m_amesg_i[51]_i_1 
       (.I0(s_axi_arcache[0]),
        .I1(s_axi_arvalid),
        .I2(s_awvalid_reg),
        .I3(s_axi_awcache[0]),
        .O(s_amesg[51]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \gen_no_arbiter.m_amesg_i[52]_i_1 
       (.I0(s_axi_arcache[1]),
        .I1(s_axi_arvalid),
        .I2(s_awvalid_reg),
        .I3(s_axi_awcache[1]),
        .O(s_amesg[52]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \gen_no_arbiter.m_amesg_i[53]_i_1 
       (.I0(s_axi_arcache[2]),
        .I1(s_axi_arvalid),
        .I2(s_awvalid_reg),
        .I3(s_axi_awcache[2]),
        .O(s_amesg[53]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \gen_no_arbiter.m_amesg_i[54]_i_1 
       (.I0(s_axi_arcache[3]),
        .I1(s_axi_arvalid),
        .I2(s_awvalid_reg),
        .I3(s_axi_awcache[3]),
        .O(s_amesg[54]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \gen_no_arbiter.m_amesg_i[55]_i_1 
       (.I0(s_axi_arqos[0]),
        .I1(s_axi_arvalid),
        .I2(s_awvalid_reg),
        .I3(s_axi_awqos[0]),
        .O(s_amesg[55]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \gen_no_arbiter.m_amesg_i[56]_i_1 
       (.I0(s_axi_arqos[1]),
        .I1(s_axi_arvalid),
        .I2(s_awvalid_reg),
        .I3(s_axi_awqos[1]),
        .O(s_amesg[56]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \gen_no_arbiter.m_amesg_i[57]_i_1 
       (.I0(s_axi_arqos[2]),
        .I1(s_axi_arvalid),
        .I2(s_awvalid_reg),
        .I3(s_axi_awqos[2]),
        .O(s_amesg[57]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \gen_no_arbiter.m_amesg_i[58]_i_1 
       (.I0(s_axi_arqos[3]),
        .I1(s_axi_arvalid),
        .I2(s_awvalid_reg),
        .I3(s_axi_awqos[3]),
        .O(s_amesg[58]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \gen_no_arbiter.m_amesg_i[5]_i_1 
       (.I0(s_axi_araddr[4]),
        .I1(s_axi_arvalid),
        .I2(s_awvalid_reg),
        .I3(s_axi_awaddr[4]),
        .O(s_amesg[5]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \gen_no_arbiter.m_amesg_i[6]_i_1 
       (.I0(s_axi_araddr[5]),
        .I1(s_axi_arvalid),
        .I2(s_awvalid_reg),
        .I3(s_axi_awaddr[5]),
        .O(s_amesg[6]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \gen_no_arbiter.m_amesg_i[7]_i_1 
       (.I0(s_axi_araddr[6]),
        .I1(s_axi_arvalid),
        .I2(s_awvalid_reg),
        .I3(s_axi_awaddr[6]),
        .O(s_amesg[7]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \gen_no_arbiter.m_amesg_i[8]_i_1 
       (.I0(s_axi_araddr[7]),
        .I1(s_axi_arvalid),
        .I2(s_awvalid_reg),
        .I3(s_axi_awaddr[7]),
        .O(s_amesg[8]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \gen_no_arbiter.m_amesg_i[9]_i_1 
       (.I0(s_axi_araddr[8]),
        .I1(s_axi_arvalid),
        .I2(s_awvalid_reg),
        .I3(s_axi_awaddr[8]),
        .O(s_amesg[9]));
  FDRE \gen_no_arbiter.m_amesg_i_reg[10] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[10]),
        .Q(\gen_no_arbiter.m_amesg_i_reg[58]_0 [9]),
        .R(SR));
  FDRE \gen_no_arbiter.m_amesg_i_reg[11] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[11]),
        .Q(\gen_no_arbiter.m_amesg_i_reg[58]_0 [10]),
        .R(SR));
  FDRE \gen_no_arbiter.m_amesg_i_reg[12] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[12]),
        .Q(\gen_no_arbiter.m_amesg_i_reg[58]_0 [11]),
        .R(SR));
  FDRE \gen_no_arbiter.m_amesg_i_reg[13] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[13]),
        .Q(\gen_no_arbiter.m_amesg_i_reg[58]_0 [12]),
        .R(SR));
  FDRE \gen_no_arbiter.m_amesg_i_reg[14] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[14]),
        .Q(\gen_no_arbiter.m_amesg_i_reg[58]_0 [13]),
        .R(SR));
  FDRE \gen_no_arbiter.m_amesg_i_reg[15] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[15]),
        .Q(\gen_no_arbiter.m_amesg_i_reg[58]_0 [14]),
        .R(SR));
  FDRE \gen_no_arbiter.m_amesg_i_reg[16] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[16]),
        .Q(\gen_no_arbiter.m_amesg_i_reg[58]_0 [15]),
        .R(SR));
  FDRE \gen_no_arbiter.m_amesg_i_reg[17] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[17]),
        .Q(\gen_no_arbiter.m_amesg_i_reg[58]_0 [16]),
        .R(SR));
  FDRE \gen_no_arbiter.m_amesg_i_reg[18] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[18]),
        .Q(\gen_no_arbiter.m_amesg_i_reg[58]_0 [17]),
        .R(SR));
  FDRE \gen_no_arbiter.m_amesg_i_reg[19] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[19]),
        .Q(\gen_no_arbiter.m_amesg_i_reg[58]_0 [18]),
        .R(SR));
  FDRE \gen_no_arbiter.m_amesg_i_reg[1] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[1]),
        .Q(\gen_no_arbiter.m_amesg_i_reg[58]_0 [0]),
        .R(SR));
  FDRE \gen_no_arbiter.m_amesg_i_reg[20] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[20]),
        .Q(\gen_no_arbiter.m_amesg_i_reg[58]_0 [19]),
        .R(SR));
  FDRE \gen_no_arbiter.m_amesg_i_reg[21] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[21]),
        .Q(\gen_no_arbiter.m_amesg_i_reg[58]_0 [20]),
        .R(SR));
  FDRE \gen_no_arbiter.m_amesg_i_reg[22] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[22]),
        .Q(\gen_no_arbiter.m_amesg_i_reg[58]_0 [21]),
        .R(SR));
  FDRE \gen_no_arbiter.m_amesg_i_reg[23] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[23]),
        .Q(\gen_no_arbiter.m_amesg_i_reg[58]_0 [22]),
        .R(SR));
  FDRE \gen_no_arbiter.m_amesg_i_reg[24] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[24]),
        .Q(\gen_no_arbiter.m_amesg_i_reg[58]_0 [23]),
        .R(SR));
  FDRE \gen_no_arbiter.m_amesg_i_reg[25] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[25]),
        .Q(\gen_no_arbiter.m_amesg_i_reg[58]_0 [24]),
        .R(SR));
  FDRE \gen_no_arbiter.m_amesg_i_reg[26] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[26]),
        .Q(\gen_no_arbiter.m_amesg_i_reg[58]_0 [25]),
        .R(SR));
  FDRE \gen_no_arbiter.m_amesg_i_reg[27] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[27]),
        .Q(\gen_no_arbiter.m_amesg_i_reg[58]_0 [26]),
        .R(SR));
  FDRE \gen_no_arbiter.m_amesg_i_reg[28] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[28]),
        .Q(\gen_no_arbiter.m_amesg_i_reg[58]_0 [27]),
        .R(SR));
  FDRE \gen_no_arbiter.m_amesg_i_reg[29] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[29]),
        .Q(\gen_no_arbiter.m_amesg_i_reg[58]_0 [28]),
        .R(SR));
  FDRE \gen_no_arbiter.m_amesg_i_reg[2] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[2]),
        .Q(\gen_no_arbiter.m_amesg_i_reg[58]_0 [1]),
        .R(SR));
  FDRE \gen_no_arbiter.m_amesg_i_reg[30] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[30]),
        .Q(\gen_no_arbiter.m_amesg_i_reg[58]_0 [29]),
        .R(SR));
  FDRE \gen_no_arbiter.m_amesg_i_reg[31] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[31]),
        .Q(\gen_no_arbiter.m_amesg_i_reg[58]_0 [30]),
        .R(SR));
  FDRE \gen_no_arbiter.m_amesg_i_reg[32] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[32]),
        .Q(\gen_no_arbiter.m_amesg_i_reg[58]_0 [31]),
        .R(SR));
  FDRE \gen_no_arbiter.m_amesg_i_reg[33] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[33]),
        .Q(\gen_no_arbiter.m_amesg_i_reg[58]_0 [32]),
        .R(SR));
  FDRE \gen_no_arbiter.m_amesg_i_reg[34] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[34]),
        .Q(\gen_no_arbiter.m_amesg_i_reg[58]_0 [33]),
        .R(SR));
  FDRE \gen_no_arbiter.m_amesg_i_reg[35] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[35]),
        .Q(\gen_no_arbiter.m_amesg_i_reg[58]_0 [34]),
        .R(SR));
  FDRE \gen_no_arbiter.m_amesg_i_reg[36] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[36]),
        .Q(\gen_no_arbiter.m_amesg_i_reg[58]_0 [35]),
        .R(SR));
  FDRE \gen_no_arbiter.m_amesg_i_reg[3] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[3]),
        .Q(\gen_no_arbiter.m_amesg_i_reg[58]_0 [2]),
        .R(SR));
  FDRE \gen_no_arbiter.m_amesg_i_reg[41] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[41]),
        .Q(\gen_no_arbiter.m_amesg_i_reg[58]_0 [36]),
        .R(SR));
  FDRE \gen_no_arbiter.m_amesg_i_reg[42] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[42]),
        .Q(\gen_no_arbiter.m_amesg_i_reg[58]_0 [37]),
        .R(SR));
  FDRE \gen_no_arbiter.m_amesg_i_reg[43] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[43]),
        .Q(\gen_no_arbiter.m_amesg_i_reg[58]_0 [38]),
        .R(SR));
  FDRE \gen_no_arbiter.m_amesg_i_reg[44] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[44]),
        .Q(\gen_no_arbiter.m_amesg_i_reg[58]_0 [39]),
        .R(SR));
  FDRE \gen_no_arbiter.m_amesg_i_reg[46] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[46]),
        .Q(\gen_no_arbiter.m_amesg_i_reg[58]_0 [40]),
        .R(SR));
  FDRE \gen_no_arbiter.m_amesg_i_reg[47] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[47]),
        .Q(\gen_no_arbiter.m_amesg_i_reg[58]_0 [41]),
        .R(SR));
  FDRE \gen_no_arbiter.m_amesg_i_reg[48] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[48]),
        .Q(\gen_no_arbiter.m_amesg_i_reg[58]_0 [42]),
        .R(SR));
  FDRE \gen_no_arbiter.m_amesg_i_reg[49] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[49]),
        .Q(\gen_no_arbiter.m_amesg_i_reg[58]_0 [43]),
        .R(SR));
  FDRE \gen_no_arbiter.m_amesg_i_reg[4] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[4]),
        .Q(\gen_no_arbiter.m_amesg_i_reg[58]_0 [3]),
        .R(SR));
  FDRE \gen_no_arbiter.m_amesg_i_reg[50] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[50]),
        .Q(\gen_no_arbiter.m_amesg_i_reg[58]_0 [44]),
        .R(SR));
  FDRE \gen_no_arbiter.m_amesg_i_reg[51] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[51]),
        .Q(\gen_no_arbiter.m_amesg_i_reg[58]_0 [45]),
        .R(SR));
  FDRE \gen_no_arbiter.m_amesg_i_reg[52] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[52]),
        .Q(\gen_no_arbiter.m_amesg_i_reg[58]_0 [46]),
        .R(SR));
  FDRE \gen_no_arbiter.m_amesg_i_reg[53] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[53]),
        .Q(\gen_no_arbiter.m_amesg_i_reg[58]_0 [47]),
        .R(SR));
  FDRE \gen_no_arbiter.m_amesg_i_reg[54] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[54]),
        .Q(\gen_no_arbiter.m_amesg_i_reg[58]_0 [48]),
        .R(SR));
  FDRE \gen_no_arbiter.m_amesg_i_reg[55] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[55]),
        .Q(\gen_no_arbiter.m_amesg_i_reg[58]_0 [49]),
        .R(SR));
  FDRE \gen_no_arbiter.m_amesg_i_reg[56] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[56]),
        .Q(\gen_no_arbiter.m_amesg_i_reg[58]_0 [50]),
        .R(SR));
  FDRE \gen_no_arbiter.m_amesg_i_reg[57] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[57]),
        .Q(\gen_no_arbiter.m_amesg_i_reg[58]_0 [51]),
        .R(SR));
  FDRE \gen_no_arbiter.m_amesg_i_reg[58] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[58]),
        .Q(\gen_no_arbiter.m_amesg_i_reg[58]_0 [52]),
        .R(SR));
  FDRE \gen_no_arbiter.m_amesg_i_reg[5] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[5]),
        .Q(\gen_no_arbiter.m_amesg_i_reg[58]_0 [4]),
        .R(SR));
  FDRE \gen_no_arbiter.m_amesg_i_reg[6] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[6]),
        .Q(\gen_no_arbiter.m_amesg_i_reg[58]_0 [5]),
        .R(SR));
  FDRE \gen_no_arbiter.m_amesg_i_reg[7] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[7]),
        .Q(\gen_no_arbiter.m_amesg_i_reg[58]_0 [6]),
        .R(SR));
  FDRE \gen_no_arbiter.m_amesg_i_reg[8] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[8]),
        .Q(\gen_no_arbiter.m_amesg_i_reg[58]_0 [7]),
        .R(SR));
  FDRE \gen_no_arbiter.m_amesg_i_reg[9] 
       (.C(aclk),
        .CE(p_0_in1_in),
        .D(s_amesg[9]),
        .Q(\gen_no_arbiter.m_amesg_i_reg[58]_0 [8]),
        .R(SR));
  LUT6 #(
    .INIT(64'hDDDDDDDDDDDDD555)) 
    \gen_no_arbiter.m_grant_hot_i[0]_inv_i_1 
       (.I0(\gen_no_arbiter.m_grant_hot_i[0]_inv_i_2_n_0 ),
        .I1(m_valid_i),
        .I2(\gen_no_arbiter.m_grant_hot_i[0]_inv_i_3_n_0 ),
        .I3(\gen_no_arbiter.m_grant_hot_i_reg[0]_inv_0 ),
        .I4(\gen_no_arbiter.m_grant_hot_i[0]_inv_i_4_n_0 ),
        .I5(\gen_no_arbiter.m_grant_hot_i_reg[0]_inv_1 ),
        .O(\gen_no_arbiter.m_grant_hot_i[0]_inv_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h0FEF0000)) 
    \gen_no_arbiter.m_grant_hot_i[0]_inv_i_2 
       (.I0(s_axi_awvalid),
        .I1(s_axi_arvalid),
        .I2(p_0_in1_in),
        .I3(m_valid_i),
        .I4(aresetn_d),
        .O(\gen_no_arbiter.m_grant_hot_i[0]_inv_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EAAA0000)) 
    \gen_no_arbiter.m_grant_hot_i[0]_inv_i_3 
       (.I0(m_ready_d_0[1]),
        .I1(s_axi_wvalid),
        .I2(s_axi_wlast),
        .I3(f_mux_return__1),
        .I4(m_valid_i),
        .I5(aa_grant_rnw),
        .O(\gen_no_arbiter.m_grant_hot_i[0]_inv_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFC00000)) 
    \gen_no_arbiter.m_grant_hot_i[0]_inv_i_4 
       (.I0(\gen_no_arbiter.m_valid_i_reg_2 ),
        .I1(f_mux_return__1),
        .I2(\gen_no_arbiter.m_grant_hot_i[0]_inv_i_6_n_0 ),
        .I3(m_ready_d_0[1]),
        .I4(\gen_no_arbiter.m_valid_i_reg_3 ),
        .I5(aa_grant_rnw),
        .O(\gen_no_arbiter.m_grant_hot_i[0]_inv_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \gen_no_arbiter.m_grant_hot_i[0]_inv_i_6 
       (.I0(s_axi_wlast),
        .I1(s_axi_wvalid),
        .I2(m_valid_i),
        .I3(aa_grant_rnw),
        .O(\gen_no_arbiter.m_grant_hot_i[0]_inv_i_6_n_0 ));
  (* inverted = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \gen_no_arbiter.m_grant_hot_i_reg[0]_inv 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_no_arbiter.m_grant_hot_i[0]_inv_i_1_n_0 ),
        .Q(p_0_in1_in),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h1111111111111DDD)) 
    \gen_no_arbiter.m_valid_i_i_1 
       (.I0(p_0_in1_in),
        .I1(m_valid_i),
        .I2(\gen_no_arbiter.m_grant_hot_i[0]_inv_i_3_n_0 ),
        .I3(\gen_no_arbiter.m_grant_hot_i_reg[0]_inv_0 ),
        .I4(\gen_no_arbiter.m_grant_hot_i[0]_inv_i_4_n_0 ),
        .I5(\gen_no_arbiter.m_grant_hot_i_reg[0]_inv_1 ),
        .O(\gen_no_arbiter.m_valid_i_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_no_arbiter.m_valid_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_no_arbiter.m_valid_i_i_1_n_0 ),
        .Q(m_valid_i),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \gen_no_arbiter.s_ready_i[0]_i_1 
       (.I0(m_valid_i),
        .I1(p_0_in1_in),
        .I2(aresetn_d),
        .O(\gen_no_arbiter.s_ready_i[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_no_arbiter.s_ready_i_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_no_arbiter.s_ready_i[0]_i_1_n_0 ),
        .Q(s_ready_i),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_atarget_enc[0]_i_1 
       (.I0(aresetn_d),
        .I1(target_mi_enc),
        .O(aresetn_d_reg));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \m_atarget_enc[1]_i_1 
       (.I0(\gen_addr_decoder.addr_decoder_inst/ADDRESS_HIT_0 ),
        .I1(target_mi_enc),
        .O(any_error));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \m_atarget_hot[0]_i_1 
       (.I0(p_0_in1_in),
        .I1(\gen_addr_decoder.addr_decoder_inst/ADDRESS_HIT_0 ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \m_atarget_hot[1]_i_1 
       (.I0(p_0_in1_in),
        .I1(target_mi_enc),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \m_atarget_hot[2]_i_1 
       (.I0(target_mi_enc),
        .I1(p_0_in1_in),
        .I2(\gen_addr_decoder.addr_decoder_inst/ADDRESS_HIT_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \m_atarget_hot[2]_i_2 
       (.I0(\m_atarget_hot[2]_i_4_n_0 ),
        .I1(\m_atarget_hot[2]_i_5_n_0 ),
        .I2(\gen_no_arbiter.m_amesg_i_reg[58]_0 [12]),
        .I3(\gen_no_arbiter.m_amesg_i_reg[58]_0 [13]),
        .I4(\m_atarget_hot[2]_i_6_n_0 ),
        .I5(\gen_addr_decoder.addr_decoder_inst/gen_target[1].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4 ),
        .O(target_mi_enc));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \m_atarget_hot[2]_i_3 
       (.I0(\m_atarget_hot[2]_i_4_n_0 ),
        .I1(\m_atarget_hot[2]_i_5_n_0 ),
        .I2(\gen_no_arbiter.m_amesg_i_reg[58]_0 [12]),
        .I3(\gen_no_arbiter.m_amesg_i_reg[58]_0 [13]),
        .I4(\m_atarget_hot[2]_i_6_n_0 ),
        .I5(\gen_addr_decoder.addr_decoder_inst/gen_target[1].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4 ),
        .O(\gen_addr_decoder.addr_decoder_inst/ADDRESS_HIT_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \m_atarget_hot[2]_i_4 
       (.I0(\gen_no_arbiter.m_amesg_i_reg[58]_0 [20]),
        .I1(\gen_no_arbiter.m_amesg_i_reg[58]_0 [21]),
        .I2(\gen_no_arbiter.m_amesg_i_reg[58]_0 [22]),
        .I3(\gen_no_arbiter.m_amesg_i_reg[58]_0 [23]),
        .I4(\gen_no_arbiter.m_amesg_i_reg[58]_0 [25]),
        .I5(\gen_no_arbiter.m_amesg_i_reg[58]_0 [24]),
        .O(\m_atarget_hot[2]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \m_atarget_hot[2]_i_5 
       (.I0(\gen_no_arbiter.m_amesg_i_reg[58]_0 [14]),
        .I1(\gen_no_arbiter.m_amesg_i_reg[58]_0 [15]),
        .O(\m_atarget_hot[2]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \m_atarget_hot[2]_i_6 
       (.I0(\gen_no_arbiter.m_amesg_i_reg[58]_0 [19]),
        .I1(\gen_no_arbiter.m_amesg_i_reg[58]_0 [18]),
        .I2(\gen_no_arbiter.m_amesg_i_reg[58]_0 [17]),
        .I3(\gen_no_arbiter.m_amesg_i_reg[58]_0 [16]),
        .O(\m_atarget_hot[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \m_atarget_hot[2]_i_7 
       (.I0(\gen_no_arbiter.m_amesg_i_reg[58]_0 [28]),
        .I1(\gen_no_arbiter.m_amesg_i_reg[58]_0 [29]),
        .I2(\gen_no_arbiter.m_amesg_i_reg[58]_0 [26]),
        .I3(\gen_no_arbiter.m_amesg_i_reg[58]_0 [27]),
        .I4(\gen_no_arbiter.m_amesg_i_reg[58]_0 [31]),
        .I5(\gen_no_arbiter.m_amesg_i_reg[58]_0 [30]),
        .O(\gen_addr_decoder.addr_decoder_inst/gen_target[1].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \m_axi_arvalid[0]_INST_0 
       (.I0(m_ready_d[1]),
        .I1(Q[0]),
        .I2(aa_grant_rnw),
        .I3(m_valid_i),
        .O(m_axi_arvalid[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \m_axi_arvalid[1]_INST_0 
       (.I0(m_ready_d[1]),
        .I1(Q[1]),
        .I2(aa_grant_rnw),
        .I3(m_valid_i),
        .O(m_axi_arvalid[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \m_axi_awvalid[0]_INST_0 
       (.I0(m_ready_d_0[2]),
        .I1(Q[0]),
        .I2(m_valid_i),
        .I3(aa_grant_rnw),
        .O(m_axi_awvalid[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \m_axi_awvalid[1]_INST_0 
       (.I0(m_ready_d_0[2]),
        .I1(Q[1]),
        .I2(m_valid_i),
        .I3(aa_grant_rnw),
        .O(m_axi_awvalid[1]));
  LUT5 #(
    .INIT(32'h00400000)) 
    \m_axi_bready[0]_INST_0 
       (.I0(aa_grant_rnw),
        .I1(m_valid_i),
        .I2(Q[0]),
        .I3(m_ready_d_0[0]),
        .I4(s_axi_bready),
        .O(m_axi_bready[0]));
  LUT5 #(
    .INIT(32'h00400000)) 
    \m_axi_bready[1]_INST_0 
       (.I0(aa_grant_rnw),
        .I1(m_valid_i),
        .I2(Q[1]),
        .I3(m_ready_d_0[0]),
        .I4(s_axi_bready),
        .O(m_axi_bready[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    \m_axi_rready[0]_INST_0 
       (.I0(m_valid_i),
        .I1(aa_grant_rnw),
        .I2(Q[0]),
        .I3(m_ready_d[0]),
        .I4(s_axi_rready),
        .O(m_axi_rready[0]));
  LUT5 #(
    .INIT(32'h00800000)) 
    \m_axi_rready[1]_INST_0 
       (.I0(m_valid_i),
        .I1(aa_grant_rnw),
        .I2(Q[1]),
        .I3(m_ready_d[0]),
        .I4(s_axi_rready),
        .O(m_axi_rready[1]));
  LUT5 #(
    .INIT(32'h00400000)) 
    \m_axi_wvalid[0]_INST_0 
       (.I0(aa_grant_rnw),
        .I1(m_valid_i),
        .I2(Q[0]),
        .I3(m_ready_d_0[1]),
        .I4(s_axi_wvalid),
        .O(m_axi_wvalid[0]));
  LUT5 #(
    .INIT(32'h00400000)) 
    \m_axi_wvalid[1]_INST_0 
       (.I0(aa_grant_rnw),
        .I1(m_valid_i),
        .I2(Q[1]),
        .I3(m_ready_d_0[1]),
        .I4(s_axi_wvalid),
        .O(m_axi_wvalid[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFF0080)) 
    \m_ready_d[0]_i_2__0 
       (.I0(f_mux_return__3),
        .I1(s_axi_bready),
        .I2(m_valid_i),
        .I3(aa_grant_rnw),
        .I4(m_ready_d_0[0]),
        .O(m_ready_d0[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \m_ready_d[1]_i_3 
       (.I0(m_valid_i),
        .I1(aa_grant_rnw),
        .O(\gen_no_arbiter.m_valid_i_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFF40)) 
    \m_ready_d[2]_i_2 
       (.I0(aa_grant_rnw),
        .I1(m_valid_i),
        .I2(f_mux_return),
        .I3(m_ready_d_0[2]),
        .O(m_ready_d0[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \m_ready_d[2]_i_3 
       (.I0(aa_grant_rnw),
        .I1(m_valid_i),
        .O(\gen_no_arbiter.grant_rnw_reg_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00008000)) 
    \m_ready_d[2]_i_4 
       (.I0(f_mux_return__1),
        .I1(s_axi_wlast),
        .I2(s_axi_wvalid),
        .I3(m_valid_i),
        .I4(aa_grant_rnw),
        .I5(m_ready_d_0[1]),
        .O(m_ready_d0[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \s_arvalid_reg[0]_i_1 
       (.I0(s_awvalid_reg),
        .I1(s_axi_arvalid),
        .I2(aresetn_d),
        .I3(s_ready_i),
        .O(\s_arvalid_reg[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_arvalid_reg_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\s_arvalid_reg[0]_i_1_n_0 ),
        .Q(\s_arvalid_reg_reg_n_0_[0] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000D00000)) 
    \s_awvalid_reg[0]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_awvalid_reg),
        .I2(s_axi_awvalid),
        .I3(\s_arvalid_reg_reg_n_0_[0] ),
        .I4(aresetn_d),
        .I5(s_ready_i),
        .O(\s_awvalid_reg[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_awvalid_reg_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\s_awvalid_reg[0]_i_1_n_0 ),
        .Q(s_awvalid_reg),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_arready[0]_INST_0 
       (.I0(s_ready_i),
        .I1(aa_grant_rnw),
        .O(s_axi_arready));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_awready[0]_INST_0 
       (.I0(s_ready_i),
        .I1(aa_grant_rnw),
        .O(s_axi_awready));
  LUT5 #(
    .INIT(32'h00040000)) 
    \s_axi_bvalid[0]_INST_0 
       (.I0(aa_grant_rnw),
        .I1(m_valid_i),
        .I2(p_0_in1_in),
        .I3(m_ready_d_0[0]),
        .I4(f_mux_return__3),
        .O(s_axi_bvalid));
  LUT5 #(
    .INIT(32'h00080000)) 
    \s_axi_rvalid[0]_INST_0 
       (.I0(m_valid_i),
        .I1(aa_grant_rnw),
        .I2(p_0_in1_in),
        .I3(m_ready_d[0]),
        .I4(f_mux_return__2),
        .O(s_axi_rvalid));
  LUT5 #(
    .INIT(32'h00040000)) 
    \s_axi_wready[0]_INST_0 
       (.I0(aa_grant_rnw),
        .I1(m_valid_i),
        .I2(p_0_in1_in),
        .I3(m_ready_d_0[1]),
        .I4(f_mux_return__1),
        .O(s_axi_wready));
endmodule

(* C_AXI_ADDR_WIDTH = "32" *) (* C_AXI_ARUSER_WIDTH = "1" *) (* C_AXI_AWUSER_WIDTH = "1" *) 
(* C_AXI_BUSER_WIDTH = "1" *) (* C_AXI_DATA_WIDTH = "64" *) (* C_AXI_ID_WIDTH = "1" *) 
(* C_AXI_PROTOCOL = "1" *) (* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_SUPPORTS_USER_SIGNALS = "0" *) 
(* C_AXI_WUSER_WIDTH = "1" *) (* C_CONNECTIVITY_MODE = "0" *) (* C_DEBUG = "1" *) 
(* C_FAMILY = "zynq" *) (* C_M_AXI_ADDR_WIDTH = "64'b0000000000000000000000000000110000000000000000000000000000001100" *) (* C_M_AXI_BASE_ADDR = "128'b00000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000001000000000000000001000000000000" *) 
(* C_M_AXI_READ_CONNECTIVITY = "64'b1111111111111111111111111111111111111111111111111111111111111111" *) (* C_M_AXI_READ_ISSUING = "64'b0000000000000000000000000000000100000000000000000000000000000001" *) (* C_M_AXI_SECURE = "64'b0000000000000000000000000000000000000000000000000000000000000000" *) 
(* C_M_AXI_WRITE_CONNECTIVITY = "64'b1111111111111111111111111111111111111111111111111111111111111111" *) (* C_M_AXI_WRITE_ISSUING = "64'b0000000000000000000000000000000100000000000000000000000000000001" *) (* C_NUM_ADDR_RANGES = "1" *) 
(* C_NUM_MASTER_SLOTS = "2" *) (* C_NUM_SLAVE_SLOTS = "1" *) (* C_R_REGISTER = "0" *) 
(* C_S_AXI_ARB_PRIORITY = "0" *) (* C_S_AXI_BASE_ID = "0" *) (* C_S_AXI_READ_ACCEPTANCE = "1" *) 
(* C_S_AXI_SINGLE_THREAD = "0" *) (* C_S_AXI_THREAD_ID_WIDTH = "0" *) (* C_S_AXI_WRITE_ACCEPTANCE = "1" *) 
(* DowngradeIPIdentifiedWarnings = "yes" *) (* P_ADDR_DECODE = "1" *) (* P_AXI3 = "1" *) 
(* P_AXI4 = "0" *) (* P_AXILITE = "2" *) (* P_AXILITE_SIZE = "3'b010" *) 
(* P_FAMILY = "zynq" *) (* P_INCR = "2'b01" *) (* P_LEN = "4" *) 
(* P_LOCK = "2" *) (* P_M_AXI_ERR_MODE = "64'b0000000000000000000000000000000000000000000000000000000000000000" *) (* P_M_AXI_SUPPORTS_READ = "2'b11" *) 
(* P_M_AXI_SUPPORTS_WRITE = "2'b11" *) (* P_ONES = "65'b11111111111111111111111111111111111111111111111111111111111111111" *) (* P_RANGE_CHECK = "1" *) 
(* P_S_AXI_BASE_ID = "64'b0000000000000000000000000000000000000000000000000000000000000000" *) (* P_S_AXI_HIGH_ID = "64'b0000000000000000000000000000000000000000000000000000000000000000" *) (* P_S_AXI_SUPPORTS_READ = "1'b1" *) 
(* P_S_AXI_SUPPORTS_WRITE = "1'b1" *) 
module blockone_axi_interconnect_0_upgraded_ipi_imp_xbar_0_axi_crossbar_v2_1_37_axi_crossbar
   (aclk,
    aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awuser,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wuser,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_buser,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_aruser,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_ruser,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wuser,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_buser,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [0:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [3:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [1:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input [0:0]s_axi_awuser;
  input [0:0]s_axi_awvalid;
  output [0:0]s_axi_awready;
  input [0:0]s_axi_wid;
  input [63:0]s_axi_wdata;
  input [7:0]s_axi_wstrb;
  input [0:0]s_axi_wlast;
  input [0:0]s_axi_wuser;
  input [0:0]s_axi_wvalid;
  output [0:0]s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_buser;
  output [0:0]s_axi_bvalid;
  input [0:0]s_axi_bready;
  input [0:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [3:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [1:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input [0:0]s_axi_aruser;
  input [0:0]s_axi_arvalid;
  output [0:0]s_axi_arready;
  output [0:0]s_axi_rid;
  output [63:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output [0:0]s_axi_rlast;
  output [0:0]s_axi_ruser;
  output [0:0]s_axi_rvalid;
  input [0:0]s_axi_rready;
  output [1:0]m_axi_awid;
  output [63:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [5:0]m_axi_awsize;
  output [3:0]m_axi_awburst;
  output [3:0]m_axi_awlock;
  output [7:0]m_axi_awcache;
  output [5:0]m_axi_awprot;
  output [7:0]m_axi_awregion;
  output [7:0]m_axi_awqos;
  output [1:0]m_axi_awuser;
  output [1:0]m_axi_awvalid;
  input [1:0]m_axi_awready;
  output [1:0]m_axi_wid;
  output [127:0]m_axi_wdata;
  output [15:0]m_axi_wstrb;
  output [1:0]m_axi_wlast;
  output [1:0]m_axi_wuser;
  output [1:0]m_axi_wvalid;
  input [1:0]m_axi_wready;
  input [1:0]m_axi_bid;
  input [3:0]m_axi_bresp;
  input [1:0]m_axi_buser;
  input [1:0]m_axi_bvalid;
  output [1:0]m_axi_bready;
  output [1:0]m_axi_arid;
  output [63:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [5:0]m_axi_arsize;
  output [3:0]m_axi_arburst;
  output [3:0]m_axi_arlock;
  output [7:0]m_axi_arcache;
  output [5:0]m_axi_arprot;
  output [7:0]m_axi_arregion;
  output [7:0]m_axi_arqos;
  output [1:0]m_axi_aruser;
  output [1:0]m_axi_arvalid;
  input [1:0]m_axi_arready;
  input [1:0]m_axi_rid;
  input [127:0]m_axi_rdata;
  input [3:0]m_axi_rresp;
  input [1:0]m_axi_rlast;
  input [1:0]m_axi_ruser;
  input [1:0]m_axi_rvalid;
  output [1:0]m_axi_rready;

  wire \<const0> ;
  wire aclk;
  wire aresetn;
  wire [11:0]\^m_axi_araddr ;
  wire [1:0]\^m_axi_arburst ;
  wire [3:0]\^m_axi_arcache ;
  wire [0:0]\^m_axi_arlock ;
  wire [2:0]\^m_axi_arprot ;
  wire [3:0]\^m_axi_arqos ;
  wire [1:0]m_axi_arready;
  wire [2:0]\^m_axi_arsize ;
  wire [1:0]m_axi_arvalid;
  wire [63:44]\^m_axi_awaddr ;
  wire [7:4]\^m_axi_awlen ;
  wire [1:0]m_axi_awready;
  wire [1:0]m_axi_awvalid;
  wire [1:0]m_axi_bready;
  wire [3:0]m_axi_bresp;
  wire [1:0]m_axi_bvalid;
  wire [127:0]m_axi_rdata;
  wire [1:0]m_axi_rlast;
  wire [1:0]m_axi_rready;
  wire [3:0]m_axi_rresp;
  wire [1:0]m_axi_rvalid;
  wire [1:0]m_axi_wready;
  wire [1:0]m_axi_wvalid;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire [3:0]s_axi_arlen;
  wire [1:0]s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire [0:0]s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire [0:0]s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [3:0]s_axi_awlen;
  wire [1:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire [0:0]s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire [0:0]s_axi_awvalid;
  wire [0:0]s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire [0:0]s_axi_bvalid;
  wire [63:0]s_axi_rdata;
  wire [0:0]s_axi_rlast;
  wire [0:0]s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire [0:0]s_axi_rvalid;
  wire [63:0]s_axi_wdata;
  wire [0:0]s_axi_wlast;
  wire [0:0]s_axi_wready;
  wire [7:0]s_axi_wstrb;
  wire [0:0]s_axi_wvalid;

  assign m_axi_araddr[63:44] = \^m_axi_awaddr [63:44];
  assign m_axi_araddr[43:32] = \^m_axi_araddr [11:0];
  assign m_axi_araddr[31:12] = \^m_axi_awaddr [63:44];
  assign m_axi_araddr[11:0] = \^m_axi_araddr [11:0];
  assign m_axi_arburst[3:2] = \^m_axi_arburst [1:0];
  assign m_axi_arburst[1:0] = \^m_axi_arburst [1:0];
  assign m_axi_arcache[7:4] = \^m_axi_arcache [3:0];
  assign m_axi_arcache[3:0] = \^m_axi_arcache [3:0];
  assign m_axi_arid[1] = \<const0> ;
  assign m_axi_arid[0] = \<const0> ;
  assign m_axi_arlen[7:4] = \^m_axi_awlen [7:4];
  assign m_axi_arlen[3:0] = \^m_axi_awlen [7:4];
  assign m_axi_arlock[3] = \<const0> ;
  assign m_axi_arlock[2] = \^m_axi_arlock [0];
  assign m_axi_arlock[1] = \<const0> ;
  assign m_axi_arlock[0] = \^m_axi_arlock [0];
  assign m_axi_arprot[5:3] = \^m_axi_arprot [2:0];
  assign m_axi_arprot[2:0] = \^m_axi_arprot [2:0];
  assign m_axi_arqos[7:4] = \^m_axi_arqos [3:0];
  assign m_axi_arqos[3:0] = \^m_axi_arqos [3:0];
  assign m_axi_arregion[7] = \<const0> ;
  assign m_axi_arregion[6] = \<const0> ;
  assign m_axi_arregion[5] = \<const0> ;
  assign m_axi_arregion[4] = \<const0> ;
  assign m_axi_arregion[3] = \<const0> ;
  assign m_axi_arregion[2] = \<const0> ;
  assign m_axi_arregion[1] = \<const0> ;
  assign m_axi_arregion[0] = \<const0> ;
  assign m_axi_arsize[5:3] = \^m_axi_arsize [2:0];
  assign m_axi_arsize[2:0] = \^m_axi_arsize [2:0];
  assign m_axi_aruser[1] = \<const0> ;
  assign m_axi_aruser[0] = \<const0> ;
  assign m_axi_awaddr[63:44] = \^m_axi_awaddr [63:44];
  assign m_axi_awaddr[43:32] = \^m_axi_araddr [11:0];
  assign m_axi_awaddr[31:12] = \^m_axi_awaddr [63:44];
  assign m_axi_awaddr[11:0] = \^m_axi_araddr [11:0];
  assign m_axi_awburst[3:2] = \^m_axi_arburst [1:0];
  assign m_axi_awburst[1:0] = \^m_axi_arburst [1:0];
  assign m_axi_awcache[7:4] = \^m_axi_arcache [3:0];
  assign m_axi_awcache[3:0] = \^m_axi_arcache [3:0];
  assign m_axi_awid[1] = \<const0> ;
  assign m_axi_awid[0] = \<const0> ;
  assign m_axi_awlen[7:4] = \^m_axi_awlen [7:4];
  assign m_axi_awlen[3:0] = \^m_axi_awlen [7:4];
  assign m_axi_awlock[3] = \<const0> ;
  assign m_axi_awlock[2] = \^m_axi_arlock [0];
  assign m_axi_awlock[1] = \<const0> ;
  assign m_axi_awlock[0] = \^m_axi_arlock [0];
  assign m_axi_awprot[5:3] = \^m_axi_arprot [2:0];
  assign m_axi_awprot[2:0] = \^m_axi_arprot [2:0];
  assign m_axi_awqos[7:4] = \^m_axi_arqos [3:0];
  assign m_axi_awqos[3:0] = \^m_axi_arqos [3:0];
  assign m_axi_awregion[7] = \<const0> ;
  assign m_axi_awregion[6] = \<const0> ;
  assign m_axi_awregion[5] = \<const0> ;
  assign m_axi_awregion[4] = \<const0> ;
  assign m_axi_awregion[3] = \<const0> ;
  assign m_axi_awregion[2] = \<const0> ;
  assign m_axi_awregion[1] = \<const0> ;
  assign m_axi_awregion[0] = \<const0> ;
  assign m_axi_awsize[5:3] = \^m_axi_arsize [2:0];
  assign m_axi_awsize[2:0] = \^m_axi_arsize [2:0];
  assign m_axi_awuser[1] = \<const0> ;
  assign m_axi_awuser[0] = \<const0> ;
  assign m_axi_wdata[127:64] = s_axi_wdata;
  assign m_axi_wdata[63:0] = s_axi_wdata;
  assign m_axi_wid[1] = \<const0> ;
  assign m_axi_wid[0] = \<const0> ;
  assign m_axi_wlast[1] = s_axi_wlast;
  assign m_axi_wlast[0] = s_axi_wlast;
  assign m_axi_wstrb[15:8] = s_axi_wstrb;
  assign m_axi_wstrb[7:0] = s_axi_wstrb;
  assign m_axi_wuser[1] = \<const0> ;
  assign m_axi_wuser[0] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_buser[0] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_ruser[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  blockone_axi_interconnect_0_upgraded_ipi_imp_xbar_0_axi_crossbar_v2_1_37_crossbar_sasd \gen_sasd.crossbar_sasd_0 
       (.Q({\^m_axi_arqos ,\^m_axi_arcache ,\^m_axi_arburst ,\^m_axi_arprot ,\^m_axi_arlock ,\^m_axi_arsize ,\^m_axi_awlen ,\^m_axi_awaddr ,\^m_axi_araddr }),
        .aclk(aclk),
        .aresetn(aresetn),
        .m_axi_arready(m_axi_arready),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_wready(m_axi_wready),
        .m_axi_wvalid(m_axi_wvalid),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arcache(s_axi_arcache),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arlock(s_axi_arlock[0]),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arqos(s_axi_arqos),
        .s_axi_arready(s_axi_arready),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awlock(s_axi_awlock[0]),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos(s_axi_awqos),
        .s_axi_awready(s_axi_awready),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

module blockone_axi_interconnect_0_upgraded_ipi_imp_xbar_0_axi_crossbar_v2_1_37_crossbar_sasd
   (Q,
    m_axi_rready,
    m_axi_arvalid,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_bvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_rresp,
    s_axi_rdata,
    m_axi_bready,
    m_axi_wvalid,
    m_axi_awvalid,
    s_axi_awready,
    s_axi_arready,
    aclk,
    aresetn,
    s_axi_awvalid,
    s_axi_arvalid,
    s_axi_rready,
    m_axi_arready,
    m_axi_rvalid,
    s_axi_bready,
    m_axi_awready,
    m_axi_bvalid,
    s_axi_wvalid,
    s_axi_wlast,
    m_axi_wready,
    m_axi_bresp,
    m_axi_rresp,
    m_axi_rdata,
    m_axi_rlast,
    s_axi_arqos,
    s_axi_awqos,
    s_axi_arcache,
    s_axi_awcache,
    s_axi_arburst,
    s_axi_awburst,
    s_axi_arprot,
    s_axi_awprot,
    s_axi_arlock,
    s_axi_awlock,
    s_axi_arsize,
    s_axi_awsize,
    s_axi_arlen,
    s_axi_awlen,
    s_axi_araddr,
    s_axi_awaddr);
  output [52:0]Q;
  output [1:0]m_axi_rready;
  output [1:0]m_axi_arvalid;
  output [0:0]s_axi_rlast;
  output [0:0]s_axi_rvalid;
  output [0:0]s_axi_bvalid;
  output [0:0]s_axi_wready;
  output [1:0]s_axi_bresp;
  output [1:0]s_axi_rresp;
  output [63:0]s_axi_rdata;
  output [1:0]m_axi_bready;
  output [1:0]m_axi_wvalid;
  output [1:0]m_axi_awvalid;
  output [0:0]s_axi_awready;
  output [0:0]s_axi_arready;
  input aclk;
  input aresetn;
  input [0:0]s_axi_awvalid;
  input [0:0]s_axi_arvalid;
  input [0:0]s_axi_rready;
  input [1:0]m_axi_arready;
  input [1:0]m_axi_rvalid;
  input [0:0]s_axi_bready;
  input [1:0]m_axi_awready;
  input [1:0]m_axi_bvalid;
  input [0:0]s_axi_wvalid;
  input [0:0]s_axi_wlast;
  input [1:0]m_axi_wready;
  input [3:0]m_axi_bresp;
  input [3:0]m_axi_rresp;
  input [127:0]m_axi_rdata;
  input [1:0]m_axi_rlast;
  input [3:0]s_axi_arqos;
  input [3:0]s_axi_awqos;
  input [3:0]s_axi_arcache;
  input [3:0]s_axi_awcache;
  input [1:0]s_axi_arburst;
  input [1:0]s_axi_awburst;
  input [2:0]s_axi_arprot;
  input [2:0]s_axi_awprot;
  input [0:0]s_axi_arlock;
  input [0:0]s_axi_awlock;
  input [2:0]s_axi_arsize;
  input [2:0]s_axi_awsize;
  input [3:0]s_axi_arlen;
  input [3:0]s_axi_awlen;
  input [31:0]s_axi_araddr;
  input [31:0]s_axi_awaddr;

  wire [52:0]Q;
  wire aa_grant_rnw;
  wire aclk;
  wire addr_arbiter_inst_n_21;
  wire addr_arbiter_inst_n_22;
  wire addr_arbiter_inst_n_23;
  wire addr_arbiter_inst_n_8;
  wire addr_arbiter_inst_n_83;
  wire addr_arbiter_inst_n_84;
  wire addr_arbiter_inst_n_9;
  wire any_error;
  wire aresetn;
  wire aresetn_d;
  wire f_mux_return;
  wire f_mux_return__0;
  wire f_mux_return__1;
  wire f_mux_return__2;
  wire f_mux_return__3;
  wire \gen_decerr.decerr_slave_inst_n_11 ;
  wire \gen_decerr.decerr_slave_inst_n_12 ;
  wire \gen_decerr.decerr_slave_inst_n_5 ;
  wire \gen_decerr.decerr_slave_inst_n_7 ;
  wire [1:0]m_atarget_enc;
  wire [2:0]m_atarget_hot;
  wire [2:0]m_atarget_hot0;
  wire [1:0]m_axi_arready;
  wire [1:0]m_axi_arvalid;
  wire [1:0]m_axi_awready;
  wire [1:0]m_axi_awvalid;
  wire [1:0]m_axi_bready;
  wire [3:0]m_axi_bresp;
  wire [1:0]m_axi_bvalid;
  wire [127:0]m_axi_rdata;
  wire [1:0]m_axi_rlast;
  wire [1:0]m_axi_rready;
  wire [3:0]m_axi_rresp;
  wire [1:0]m_axi_rvalid;
  wire [1:0]m_axi_wready;
  wire [1:0]m_axi_wvalid;
  wire [1:0]m_ready_d;
  wire [2:0]m_ready_d0;
  wire [0:0]m_ready_d0_0;
  wire [2:0]m_ready_d_1;
  wire m_valid_i;
  wire [2:2]mi_bvalid;
  wire [2:2]mi_rvalid;
  wire reset;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire [3:0]s_axi_arlen;
  wire [0:0]s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire [0:0]s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire [0:0]s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [3:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire [0:0]s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire [0:0]s_axi_awvalid;
  wire [0:0]s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire [0:0]s_axi_bvalid;
  wire [63:0]s_axi_rdata;
  wire [0:0]s_axi_rlast;
  wire [0:0]s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire [0:0]s_axi_rvalid;
  wire [0:0]s_axi_wlast;
  wire [0:0]s_axi_wready;
  wire [0:0]s_axi_wvalid;
  wire splitter_ar_n_0;
  wire splitter_aw_n_3;
  wire splitter_aw_n_4;
  wire splitter_aw_n_5;

  blockone_axi_interconnect_0_upgraded_ipi_imp_xbar_0_axi_crossbar_v2_1_37_addr_arbiter_sasd addr_arbiter_inst
       (.D(m_atarget_hot0),
        .\FSM_onehot_gen_axi.write_cs_reg[2] (addr_arbiter_inst_n_21),
        .Q(m_atarget_hot),
        .SR(reset),
        .aa_grant_rnw(aa_grant_rnw),
        .aclk(aclk),
        .any_error(any_error),
        .aresetn_d(aresetn_d),
        .aresetn_d_reg(addr_arbiter_inst_n_83),
        .f_mux_return(f_mux_return),
        .f_mux_return__1(f_mux_return__1),
        .f_mux_return__2(f_mux_return__2),
        .f_mux_return__3(f_mux_return__3),
        .\gen_axi.read_cs_reg[0] (addr_arbiter_inst_n_84),
        .\gen_axi.s_axi_bvalid_i_reg (\gen_decerr.decerr_slave_inst_n_12 ),
        .\gen_no_arbiter.grant_rnw_reg_0 (addr_arbiter_inst_n_23),
        .\gen_no_arbiter.m_amesg_i_reg[58]_0 (Q),
        .\gen_no_arbiter.m_grant_hot_i_reg[0]_inv_0 (\gen_decerr.decerr_slave_inst_n_7 ),
        .\gen_no_arbiter.m_grant_hot_i_reg[0]_inv_1 (\gen_decerr.decerr_slave_inst_n_5 ),
        .\gen_no_arbiter.m_valid_i_reg_0 (addr_arbiter_inst_n_9),
        .\gen_no_arbiter.m_valid_i_reg_1 (addr_arbiter_inst_n_22),
        .\gen_no_arbiter.m_valid_i_reg_2 (splitter_ar_n_0),
        .\gen_no_arbiter.m_valid_i_reg_3 (splitter_aw_n_3),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bready(m_axi_bready),
        .m_axi_rready(m_axi_rready),
        .m_axi_wvalid(m_axi_wvalid),
        .m_ready_d(m_ready_d),
        .m_ready_d0(m_ready_d0),
        .m_ready_d_0(m_ready_d_1),
        .\m_ready_d_reg[0] (addr_arbiter_inst_n_8),
        .m_valid_i(m_valid_i),
        .mi_rvalid(mi_rvalid),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arcache(s_axi_arcache),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arlock(s_axi_arlock),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arqos(s_axi_arqos),
        .s_axi_arready(s_axi_arready),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos(s_axi_awqos),
        .s_axi_awready(s_axi_awready),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid));
  FDRE #(
    .INIT(1'b0)) 
    aresetn_d_reg
       (.C(aclk),
        .CE(1'b1),
        .D(aresetn),
        .Q(aresetn_d),
        .R(1'b0));
  blockone_axi_interconnect_0_upgraded_ipi_imp_xbar_0_axi_crossbar_v2_1_37_decerr_slave \gen_decerr.decerr_slave_inst 
       (.\FSM_onehot_gen_axi.write_cs_reg[0]_0 (addr_arbiter_inst_n_23),
        .\FSM_onehot_gen_axi.write_cs_reg[1]_0 (\gen_decerr.decerr_slave_inst_n_11 ),
        .\FSM_onehot_gen_axi.write_cs_reg[2]_0 (\gen_decerr.decerr_slave_inst_n_12 ),
        .\FSM_onehot_gen_axi.write_cs_reg[2]_1 (addr_arbiter_inst_n_21),
        .Q(m_atarget_hot[2]),
        .SR(reset),
        .aa_grant_rnw(aa_grant_rnw),
        .aclk(aclk),
        .aresetn_d(aresetn_d),
        .f_mux_return(f_mux_return),
        .f_mux_return__0(f_mux_return__0),
        .f_mux_return__1(f_mux_return__1),
        .f_mux_return__2(f_mux_return__2),
        .f_mux_return__3(f_mux_return__3),
        .\gen_axi.read_cnt_reg[3]_0 (Q[35:32]),
        .\gen_axi.s_axi_arready_i_reg_0 (addr_arbiter_inst_n_8),
        .\gen_axi.s_axi_awready_i_reg_0 (addr_arbiter_inst_n_22),
        .\gen_axi.s_axi_bvalid_i_reg_0 (splitter_aw_n_5),
        .\gen_axi.s_axi_rlast_i_reg_0 (addr_arbiter_inst_n_84),
        .\gen_axi.s_axi_wready_i_reg_0 (splitter_aw_n_4),
        .m_atarget_enc(m_atarget_enc),
        .m_axi_arready(m_axi_arready),
        .m_axi_awready(m_axi_awready),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_wready(m_axi_wready),
        .m_ready_d(m_ready_d),
        .m_ready_d0(m_ready_d0_0),
        .m_ready_d_0({m_ready_d_1[2],m_ready_d_1[0]}),
        .\m_ready_d_reg[1] (addr_arbiter_inst_n_9),
        .\m_ready_d_reg[2] (\gen_decerr.decerr_slave_inst_n_7 ),
        .m_valid_i(m_valid_i),
        .mi_bvalid(mi_bvalid),
        .mi_rvalid(mi_rvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rready_0_sp_1(\gen_decerr.decerr_slave_inst_n_5 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_atarget_enc_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(addr_arbiter_inst_n_83),
        .Q(m_atarget_enc[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_atarget_enc_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(any_error),
        .Q(m_atarget_enc[1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \m_atarget_hot_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(m_atarget_hot0[0]),
        .Q(m_atarget_hot[0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \m_atarget_hot_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(m_atarget_hot0[1]),
        .Q(m_atarget_hot[1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \m_atarget_hot_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(m_atarget_hot0[2]),
        .Q(m_atarget_hot[2]),
        .R(reset));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_bresp[0]_INST_0 
       (.I0(m_axi_bresp[0]),
        .I1(m_axi_bresp[2]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(s_axi_bresp[0]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_bresp[1]_INST_0 
       (.I0(m_axi_bresp[1]),
        .I1(m_axi_bresp[3]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(s_axi_bresp[1]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \s_axi_rdata[0]_INST_0 
       (.I0(m_axi_rdata[64]),
        .I1(m_axi_rdata[0]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(s_axi_rdata[0]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[10]_INST_0 
       (.I0(m_axi_rdata[10]),
        .I1(m_axi_rdata[74]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(s_axi_rdata[10]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[11]_INST_0 
       (.I0(m_axi_rdata[11]),
        .I1(m_axi_rdata[75]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(s_axi_rdata[11]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[12]_INST_0 
       (.I0(m_axi_rdata[12]),
        .I1(m_axi_rdata[76]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(s_axi_rdata[12]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \s_axi_rdata[13]_INST_0 
       (.I0(m_axi_rdata[77]),
        .I1(m_axi_rdata[13]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(s_axi_rdata[13]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[14]_INST_0 
       (.I0(m_axi_rdata[14]),
        .I1(m_axi_rdata[78]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(s_axi_rdata[14]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[15]_INST_0 
       (.I0(m_axi_rdata[15]),
        .I1(m_axi_rdata[79]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(s_axi_rdata[15]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \s_axi_rdata[16]_INST_0 
       (.I0(m_axi_rdata[80]),
        .I1(m_axi_rdata[16]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(s_axi_rdata[16]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \s_axi_rdata[17]_INST_0 
       (.I0(m_axi_rdata[81]),
        .I1(m_axi_rdata[17]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(s_axi_rdata[17]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \s_axi_rdata[18]_INST_0 
       (.I0(m_axi_rdata[82]),
        .I1(m_axi_rdata[18]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(s_axi_rdata[18]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \s_axi_rdata[19]_INST_0 
       (.I0(m_axi_rdata[83]),
        .I1(m_axi_rdata[19]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(s_axi_rdata[19]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \s_axi_rdata[1]_INST_0 
       (.I0(m_axi_rdata[65]),
        .I1(m_axi_rdata[1]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(s_axi_rdata[1]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \s_axi_rdata[20]_INST_0 
       (.I0(m_axi_rdata[84]),
        .I1(m_axi_rdata[20]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(s_axi_rdata[20]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \s_axi_rdata[21]_INST_0 
       (.I0(m_axi_rdata[85]),
        .I1(m_axi_rdata[21]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(s_axi_rdata[21]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[22]_INST_0 
       (.I0(m_axi_rdata[22]),
        .I1(m_axi_rdata[86]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(s_axi_rdata[22]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[23]_INST_0 
       (.I0(m_axi_rdata[23]),
        .I1(m_axi_rdata[87]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(s_axi_rdata[23]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \s_axi_rdata[24]_INST_0 
       (.I0(m_axi_rdata[88]),
        .I1(m_axi_rdata[24]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(s_axi_rdata[24]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[25]_INST_0 
       (.I0(m_axi_rdata[25]),
        .I1(m_axi_rdata[89]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(s_axi_rdata[25]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[26]_INST_0 
       (.I0(m_axi_rdata[26]),
        .I1(m_axi_rdata[90]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(s_axi_rdata[26]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[27]_INST_0 
       (.I0(m_axi_rdata[27]),
        .I1(m_axi_rdata[91]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(s_axi_rdata[27]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[28]_INST_0 
       (.I0(m_axi_rdata[28]),
        .I1(m_axi_rdata[92]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(s_axi_rdata[28]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \s_axi_rdata[29]_INST_0 
       (.I0(m_axi_rdata[93]),
        .I1(m_axi_rdata[29]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(s_axi_rdata[29]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[2]_INST_0 
       (.I0(m_axi_rdata[2]),
        .I1(m_axi_rdata[66]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(s_axi_rdata[2]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[30]_INST_0 
       (.I0(m_axi_rdata[30]),
        .I1(m_axi_rdata[94]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(s_axi_rdata[30]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[31]_INST_0 
       (.I0(m_axi_rdata[31]),
        .I1(m_axi_rdata[95]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(s_axi_rdata[31]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \s_axi_rdata[32]_INST_0 
       (.I0(m_axi_rdata[96]),
        .I1(m_axi_rdata[32]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(s_axi_rdata[32]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \s_axi_rdata[33]_INST_0 
       (.I0(m_axi_rdata[97]),
        .I1(m_axi_rdata[33]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(s_axi_rdata[33]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[34]_INST_0 
       (.I0(m_axi_rdata[34]),
        .I1(m_axi_rdata[98]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(s_axi_rdata[34]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[35]_INST_0 
       (.I0(m_axi_rdata[35]),
        .I1(m_axi_rdata[99]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(s_axi_rdata[35]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[36]_INST_0 
       (.I0(m_axi_rdata[36]),
        .I1(m_axi_rdata[100]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(s_axi_rdata[36]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \s_axi_rdata[37]_INST_0 
       (.I0(m_axi_rdata[101]),
        .I1(m_axi_rdata[37]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(s_axi_rdata[37]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \s_axi_rdata[38]_INST_0 
       (.I0(m_axi_rdata[102]),
        .I1(m_axi_rdata[38]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(s_axi_rdata[38]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \s_axi_rdata[39]_INST_0 
       (.I0(m_axi_rdata[103]),
        .I1(m_axi_rdata[39]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(s_axi_rdata[39]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[3]_INST_0 
       (.I0(m_axi_rdata[3]),
        .I1(m_axi_rdata[67]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(s_axi_rdata[3]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \s_axi_rdata[40]_INST_0 
       (.I0(m_axi_rdata[104]),
        .I1(m_axi_rdata[40]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(s_axi_rdata[40]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[41]_INST_0 
       (.I0(m_axi_rdata[41]),
        .I1(m_axi_rdata[105]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(s_axi_rdata[41]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[42]_INST_0 
       (.I0(m_axi_rdata[42]),
        .I1(m_axi_rdata[106]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(s_axi_rdata[42]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[43]_INST_0 
       (.I0(m_axi_rdata[43]),
        .I1(m_axi_rdata[107]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(s_axi_rdata[43]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[44]_INST_0 
       (.I0(m_axi_rdata[44]),
        .I1(m_axi_rdata[108]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(s_axi_rdata[44]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \s_axi_rdata[45]_INST_0 
       (.I0(m_axi_rdata[109]),
        .I1(m_axi_rdata[45]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(s_axi_rdata[45]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[46]_INST_0 
       (.I0(m_axi_rdata[46]),
        .I1(m_axi_rdata[110]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(s_axi_rdata[46]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[47]_INST_0 
       (.I0(m_axi_rdata[47]),
        .I1(m_axi_rdata[111]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(s_axi_rdata[47]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \s_axi_rdata[48]_INST_0 
       (.I0(m_axi_rdata[112]),
        .I1(m_axi_rdata[48]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(s_axi_rdata[48]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \s_axi_rdata[49]_INST_0 
       (.I0(m_axi_rdata[113]),
        .I1(m_axi_rdata[49]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(s_axi_rdata[49]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[4]_INST_0 
       (.I0(m_axi_rdata[4]),
        .I1(m_axi_rdata[68]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(s_axi_rdata[4]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \s_axi_rdata[50]_INST_0 
       (.I0(m_axi_rdata[114]),
        .I1(m_axi_rdata[50]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(s_axi_rdata[50]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \s_axi_rdata[51]_INST_0 
       (.I0(m_axi_rdata[115]),
        .I1(m_axi_rdata[51]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(s_axi_rdata[51]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \s_axi_rdata[52]_INST_0 
       (.I0(m_axi_rdata[116]),
        .I1(m_axi_rdata[52]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(s_axi_rdata[52]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \s_axi_rdata[53]_INST_0 
       (.I0(m_axi_rdata[117]),
        .I1(m_axi_rdata[53]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(s_axi_rdata[53]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[54]_INST_0 
       (.I0(m_axi_rdata[54]),
        .I1(m_axi_rdata[118]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(s_axi_rdata[54]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[55]_INST_0 
       (.I0(m_axi_rdata[55]),
        .I1(m_axi_rdata[119]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(s_axi_rdata[55]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \s_axi_rdata[56]_INST_0 
       (.I0(m_axi_rdata[120]),
        .I1(m_axi_rdata[56]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(s_axi_rdata[56]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[57]_INST_0 
       (.I0(m_axi_rdata[57]),
        .I1(m_axi_rdata[121]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(s_axi_rdata[57]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[58]_INST_0 
       (.I0(m_axi_rdata[58]),
        .I1(m_axi_rdata[122]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(s_axi_rdata[58]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[59]_INST_0 
       (.I0(m_axi_rdata[59]),
        .I1(m_axi_rdata[123]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(s_axi_rdata[59]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \s_axi_rdata[5]_INST_0 
       (.I0(m_axi_rdata[69]),
        .I1(m_axi_rdata[5]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(s_axi_rdata[5]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[60]_INST_0 
       (.I0(m_axi_rdata[60]),
        .I1(m_axi_rdata[124]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(s_axi_rdata[60]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \s_axi_rdata[61]_INST_0 
       (.I0(m_axi_rdata[125]),
        .I1(m_axi_rdata[61]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(s_axi_rdata[61]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[62]_INST_0 
       (.I0(m_axi_rdata[62]),
        .I1(m_axi_rdata[126]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(s_axi_rdata[62]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[63]_INST_0 
       (.I0(m_axi_rdata[63]),
        .I1(m_axi_rdata[127]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(s_axi_rdata[63]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \s_axi_rdata[6]_INST_0 
       (.I0(m_axi_rdata[70]),
        .I1(m_axi_rdata[6]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(s_axi_rdata[6]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \s_axi_rdata[7]_INST_0 
       (.I0(m_axi_rdata[71]),
        .I1(m_axi_rdata[7]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(s_axi_rdata[7]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \s_axi_rdata[8]_INST_0 
       (.I0(m_axi_rdata[72]),
        .I1(m_axi_rdata[8]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(s_axi_rdata[8]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rdata[9]_INST_0 
       (.I0(m_axi_rdata[9]),
        .I1(m_axi_rdata[73]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(s_axi_rdata[9]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rresp[0]_INST_0 
       (.I0(m_axi_rresp[0]),
        .I1(m_axi_rresp[2]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(s_axi_rresp[0]));
  LUT4 #(
    .INIT(16'h0FCA)) 
    \s_axi_rresp[1]_INST_0 
       (.I0(m_axi_rresp[1]),
        .I1(m_axi_rresp[3]),
        .I2(m_atarget_enc[0]),
        .I3(m_atarget_enc[1]),
        .O(s_axi_rresp[1]));
  blockone_axi_interconnect_0_upgraded_ipi_imp_xbar_0_axi_crossbar_v2_1_37_splitter__parameterized0 splitter_ar
       (.aclk(aclk),
        .aresetn_d(aresetn_d),
        .f_mux_return__0(f_mux_return__0),
        .m_ready_d(m_ready_d),
        .m_ready_d0(m_ready_d0_0),
        .\m_ready_d_reg[0]_0 (splitter_ar_n_0),
        .\m_ready_d_reg[1]_0 (addr_arbiter_inst_n_9),
        .\m_ready_d_reg[1]_1 (\gen_decerr.decerr_slave_inst_n_5 ));
  blockone_axi_interconnect_0_upgraded_ipi_imp_xbar_0_axi_crossbar_v2_1_37_splitter splitter_aw
       (.Q(m_atarget_hot[2]),
        .aclk(aclk),
        .aresetn_d(aresetn_d),
        .\gen_axi.s_axi_bvalid_i_reg (splitter_aw_n_5),
        .\gen_axi.s_axi_bvalid_i_reg_0 (\gen_decerr.decerr_slave_inst_n_11 ),
        .\gen_axi.s_axi_bvalid_i_reg_1 (addr_arbiter_inst_n_21),
        .m_ready_d(m_ready_d_1),
        .m_ready_d0(m_ready_d0),
        .\m_ready_d_reg[0]_0 (splitter_aw_n_3),
        .\m_ready_d_reg[1]_0 (splitter_aw_n_4),
        .\m_ready_d_reg[2]_0 (addr_arbiter_inst_n_23),
        .\m_ready_d_reg[2]_1 (\gen_decerr.decerr_slave_inst_n_7 ),
        .mi_bvalid(mi_bvalid),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

module blockone_axi_interconnect_0_upgraded_ipi_imp_xbar_0_axi_crossbar_v2_1_37_decerr_slave
   (mi_bvalid,
    mi_rvalid,
    m_ready_d0,
    s_axi_rlast,
    f_mux_return__2,
    s_axi_rready_0_sp_1,
    f_mux_return__0,
    \m_ready_d_reg[2] ,
    f_mux_return__3,
    f_mux_return,
    f_mux_return__1,
    \FSM_onehot_gen_axi.write_cs_reg[1]_0 ,
    \FSM_onehot_gen_axi.write_cs_reg[2]_0 ,
    SR,
    aclk,
    \gen_axi.s_axi_bvalid_i_reg_0 ,
    aresetn_d,
    \gen_axi.s_axi_arready_i_reg_0 ,
    m_valid_i,
    aa_grant_rnw,
    s_axi_rready,
    m_ready_d,
    \m_ready_d_reg[1] ,
    Q,
    \gen_axi.read_cnt_reg[3]_0 ,
    m_atarget_enc,
    m_axi_arready,
    m_axi_rvalid,
    m_ready_d_0,
    s_axi_bready,
    m_axi_awready,
    m_axi_bvalid,
    m_axi_wready,
    m_axi_rlast,
    \gen_axi.s_axi_wready_i_reg_0 ,
    \FSM_onehot_gen_axi.write_cs_reg[0]_0 ,
    \gen_axi.s_axi_awready_i_reg_0 ,
    \FSM_onehot_gen_axi.write_cs_reg[2]_1 ,
    \gen_axi.s_axi_rlast_i_reg_0 );
  output [0:0]mi_bvalid;
  output [0:0]mi_rvalid;
  output [0:0]m_ready_d0;
  output [0:0]s_axi_rlast;
  output f_mux_return__2;
  output s_axi_rready_0_sp_1;
  output f_mux_return__0;
  output \m_ready_d_reg[2] ;
  output f_mux_return__3;
  output f_mux_return;
  output f_mux_return__1;
  output \FSM_onehot_gen_axi.write_cs_reg[1]_0 ;
  output \FSM_onehot_gen_axi.write_cs_reg[2]_0 ;
  input [0:0]SR;
  input aclk;
  input \gen_axi.s_axi_bvalid_i_reg_0 ;
  input aresetn_d;
  input \gen_axi.s_axi_arready_i_reg_0 ;
  input m_valid_i;
  input aa_grant_rnw;
  input [0:0]s_axi_rready;
  input [1:0]m_ready_d;
  input \m_ready_d_reg[1] ;
  input [0:0]Q;
  input [3:0]\gen_axi.read_cnt_reg[3]_0 ;
  input [1:0]m_atarget_enc;
  input [1:0]m_axi_arready;
  input [1:0]m_axi_rvalid;
  input [1:0]m_ready_d_0;
  input [0:0]s_axi_bready;
  input [1:0]m_axi_awready;
  input [1:0]m_axi_bvalid;
  input [1:0]m_axi_wready;
  input [1:0]m_axi_rlast;
  input \gen_axi.s_axi_wready_i_reg_0 ;
  input \FSM_onehot_gen_axi.write_cs_reg[0]_0 ;
  input \gen_axi.s_axi_awready_i_reg_0 ;
  input \FSM_onehot_gen_axi.write_cs_reg[2]_1 ;
  input \gen_axi.s_axi_rlast_i_reg_0 ;

  wire \FSM_onehot_gen_axi.write_cs[0]_i_1_n_0 ;
  wire \FSM_onehot_gen_axi.write_cs[1]_i_1_n_0 ;
  wire \FSM_onehot_gen_axi.write_cs[2]_i_1_n_0 ;
  wire \FSM_onehot_gen_axi.write_cs_reg[0]_0 ;
  wire \FSM_onehot_gen_axi.write_cs_reg[1]_0 ;
  wire \FSM_onehot_gen_axi.write_cs_reg[2]_0 ;
  wire \FSM_onehot_gen_axi.write_cs_reg[2]_1 ;
  wire \FSM_onehot_gen_axi.write_cs_reg_n_0_[0] ;
  wire [0:0]Q;
  wire [0:0]SR;
  wire aa_grant_rnw;
  wire aclk;
  wire aresetn_d;
  wire f_mux_return;
  wire f_mux_return__0;
  wire f_mux_return__1;
  wire f_mux_return__2;
  wire f_mux_return__3;
  wire \gen_axi.read_cnt[7]_i_1_n_0 ;
  wire \gen_axi.read_cnt[7]_i_5_n_0 ;
  wire \gen_axi.read_cnt[7]_i_6_n_0 ;
  wire [0:0]\gen_axi.read_cnt_reg ;
  wire [3:0]\gen_axi.read_cnt_reg[3]_0 ;
  wire [7:1]\gen_axi.read_cnt_reg__0 ;
  wire \gen_axi.read_cs[0]_i_1_n_0 ;
  wire \gen_axi.s_axi_arready_i_i_1_n_0 ;
  wire \gen_axi.s_axi_arready_i_reg_0 ;
  wire \gen_axi.s_axi_awready_i_i_1_n_0 ;
  wire \gen_axi.s_axi_awready_i_reg_0 ;
  wire \gen_axi.s_axi_bvalid_i_reg_0 ;
  wire \gen_axi.s_axi_rlast_i__6 ;
  wire \gen_axi.s_axi_rlast_i_i_1_n_0 ;
  wire \gen_axi.s_axi_rlast_i_i_3_n_0 ;
  wire \gen_axi.s_axi_rlast_i_i_4_n_0 ;
  wire \gen_axi.s_axi_rlast_i_reg_0 ;
  wire \gen_axi.s_axi_wready_i_i_1_n_0 ;
  wire \gen_axi.s_axi_wready_i_reg_0 ;
  wire [1:0]m_atarget_enc;
  wire [1:0]m_axi_arready;
  wire [1:0]m_axi_awready;
  wire [1:0]m_axi_bvalid;
  wire [1:0]m_axi_rlast;
  wire [1:0]m_axi_rvalid;
  wire [1:0]m_axi_wready;
  wire [1:0]m_ready_d;
  wire [0:0]m_ready_d0;
  wire \m_ready_d[1]_i_5_n_0 ;
  wire \m_ready_d[1]_i_6_n_0 ;
  wire [1:0]m_ready_d_0;
  wire \m_ready_d_reg[1] ;
  wire \m_ready_d_reg[2] ;
  wire m_valid_i;
  wire [2:2]mi_arready;
  wire [2:2]mi_awready;
  wire [0:0]mi_bvalid;
  wire [136:136]mi_rmesg;
  wire [0:0]mi_rvalid;
  wire [2:2]mi_wready;
  wire [7:0]p_0_in;
  wire [0:0]s_axi_bready;
  wire [0:0]s_axi_rlast;
  wire [0:0]s_axi_rready;
  wire s_axi_rready_0_sn_1;
  wire s_axi_wready_i;

  assign s_axi_rready_0_sp_1 = s_axi_rready_0_sn_1;
  LUT4 #(
    .INIT(16'hABA8)) 
    \FSM_onehot_gen_axi.write_cs[0]_i_1 
       (.I0(\FSM_onehot_gen_axi.write_cs_reg[2]_0 ),
        .I1(s_axi_wready_i),
        .I2(\FSM_onehot_gen_axi.write_cs_reg[2]_1 ),
        .I3(\FSM_onehot_gen_axi.write_cs_reg_n_0_[0] ),
        .O(\FSM_onehot_gen_axi.write_cs[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hABA8)) 
    \FSM_onehot_gen_axi.write_cs[1]_i_1 
       (.I0(\FSM_onehot_gen_axi.write_cs_reg_n_0_[0] ),
        .I1(s_axi_wready_i),
        .I2(\FSM_onehot_gen_axi.write_cs_reg[2]_1 ),
        .I3(\FSM_onehot_gen_axi.write_cs_reg[1]_0 ),
        .O(\FSM_onehot_gen_axi.write_cs[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hABA8)) 
    \FSM_onehot_gen_axi.write_cs[2]_i_1 
       (.I0(\FSM_onehot_gen_axi.write_cs_reg[1]_0 ),
        .I1(s_axi_wready_i),
        .I2(\FSM_onehot_gen_axi.write_cs_reg[2]_1 ),
        .I3(\FSM_onehot_gen_axi.write_cs_reg[2]_0 ),
        .O(\FSM_onehot_gen_axi.write_cs[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF080000)) 
    \FSM_onehot_gen_axi.write_cs[2]_i_2 
       (.I0(mi_awready),
        .I1(\FSM_onehot_gen_axi.write_cs_reg_n_0_[0] ),
        .I2(m_ready_d_0[1]),
        .I3(\gen_axi.s_axi_wready_i_reg_0 ),
        .I4(Q),
        .I5(\FSM_onehot_gen_axi.write_cs_reg[0]_0 ),
        .O(s_axi_wready_i));
  (* FSM_ENCODED_STATES = "P_WRITE_IDLE:001,P_WRITE_DATA:010,P_WRITE_RESP:100," *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_gen_axi.write_cs_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_axi.write_cs[0]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_axi.write_cs_reg_n_0_[0] ),
        .S(SR));
  (* FSM_ENCODED_STATES = "P_WRITE_IDLE:001,P_WRITE_DATA:010,P_WRITE_RESP:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_axi.write_cs_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_axi.write_cs[1]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_axi.write_cs_reg[1]_0 ),
        .R(SR));
  (* FSM_ENCODED_STATES = "P_WRITE_IDLE:001,P_WRITE_DATA:010,P_WRITE_RESP:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_axi.write_cs_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_axi.write_cs[2]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_axi.write_cs_reg[2]_0 ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \gen_axi.read_cnt[0]_i_1 
       (.I0(\gen_axi.read_cnt_reg ),
        .I1(mi_rvalid),
        .I2(\gen_axi.read_cnt_reg[3]_0 [0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hE22E)) 
    \gen_axi.read_cnt[1]_i_1 
       (.I0(\gen_axi.read_cnt_reg[3]_0 [1]),
        .I1(mi_rvalid),
        .I2(\gen_axi.read_cnt_reg ),
        .I3(\gen_axi.read_cnt_reg__0 [1]),
        .O(p_0_in[1]));
  LUT5 #(
    .INIT(32'hFC03AAAA)) 
    \gen_axi.read_cnt[2]_i_1 
       (.I0(\gen_axi.read_cnt_reg[3]_0 [2]),
        .I1(\gen_axi.read_cnt_reg ),
        .I2(\gen_axi.read_cnt_reg__0 [1]),
        .I3(\gen_axi.read_cnt_reg__0 [2]),
        .I4(mi_rvalid),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'hFFFC0003AAAAAAAA)) 
    \gen_axi.read_cnt[3]_i_1 
       (.I0(\gen_axi.read_cnt_reg[3]_0 [3]),
        .I1(\gen_axi.read_cnt_reg__0 [2]),
        .I2(\gen_axi.read_cnt_reg__0 [1]),
        .I3(\gen_axi.read_cnt_reg ),
        .I4(\gen_axi.read_cnt_reg__0 [3]),
        .I5(mi_rvalid),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'hFFFE000100000000)) 
    \gen_axi.read_cnt[4]_i_1 
       (.I0(\gen_axi.read_cnt_reg__0 [3]),
        .I1(\gen_axi.read_cnt_reg ),
        .I2(\gen_axi.read_cnt_reg__0 [1]),
        .I3(\gen_axi.read_cnt_reg__0 [2]),
        .I4(\gen_axi.read_cnt_reg__0 [4]),
        .I5(mi_rvalid),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h90)) 
    \gen_axi.read_cnt[5]_i_1 
       (.I0(\gen_axi.read_cnt[7]_i_6_n_0 ),
        .I1(\gen_axi.read_cnt_reg__0 [5]),
        .I2(mi_rvalid),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hE100)) 
    \gen_axi.read_cnt[6]_i_1 
       (.I0(\gen_axi.read_cnt_reg__0 [5]),
        .I1(\gen_axi.read_cnt[7]_i_6_n_0 ),
        .I2(\gen_axi.read_cnt_reg__0 [6]),
        .I3(mi_rvalid),
        .O(p_0_in[6]));
  LUT4 #(
    .INIT(16'h80FF)) 
    \gen_axi.read_cnt[7]_i_1 
       (.I0(\gen_axi.s_axi_rlast_i__6 ),
        .I1(\gen_axi.s_axi_arready_i_reg_0 ),
        .I2(mi_rvalid),
        .I3(\gen_axi.read_cnt[7]_i_5_n_0 ),
        .O(\gen_axi.read_cnt[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hFE000100)) 
    \gen_axi.read_cnt[7]_i_2 
       (.I0(\gen_axi.read_cnt_reg__0 [5]),
        .I1(\gen_axi.read_cnt[7]_i_6_n_0 ),
        .I2(\gen_axi.read_cnt_reg__0 [6]),
        .I3(mi_rvalid),
        .I4(\gen_axi.read_cnt_reg__0 [7]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gen_axi.read_cnt[7]_i_3 
       (.I0(\gen_axi.read_cnt[7]_i_6_n_0 ),
        .I1(\gen_axi.read_cnt_reg__0 [5]),
        .I2(\gen_axi.read_cnt_reg__0 [7]),
        .I3(\gen_axi.read_cnt_reg__0 [6]),
        .O(\gen_axi.s_axi_rlast_i__6 ));
  LUT6 #(
    .INIT(64'hEFFFFFFFFFFFFFFF)) 
    \gen_axi.read_cnt[7]_i_5 
       (.I0(mi_rvalid),
        .I1(m_ready_d[1]),
        .I2(mi_arready),
        .I3(Q),
        .I4(m_valid_i),
        .I5(aa_grant_rnw),
        .O(\gen_axi.read_cnt[7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \gen_axi.read_cnt[7]_i_6 
       (.I0(\gen_axi.read_cnt_reg__0 [3]),
        .I1(\gen_axi.read_cnt_reg ),
        .I2(\gen_axi.read_cnt_reg__0 [1]),
        .I3(\gen_axi.read_cnt_reg__0 [2]),
        .I4(\gen_axi.read_cnt_reg__0 [4]),
        .O(\gen_axi.read_cnt[7]_i_6_n_0 ));
  FDRE \gen_axi.read_cnt_reg[0] 
       (.C(aclk),
        .CE(\gen_axi.read_cnt[7]_i_1_n_0 ),
        .D(p_0_in[0]),
        .Q(\gen_axi.read_cnt_reg ),
        .R(SR));
  FDRE \gen_axi.read_cnt_reg[1] 
       (.C(aclk),
        .CE(\gen_axi.read_cnt[7]_i_1_n_0 ),
        .D(p_0_in[1]),
        .Q(\gen_axi.read_cnt_reg__0 [1]),
        .R(SR));
  FDRE \gen_axi.read_cnt_reg[2] 
       (.C(aclk),
        .CE(\gen_axi.read_cnt[7]_i_1_n_0 ),
        .D(p_0_in[2]),
        .Q(\gen_axi.read_cnt_reg__0 [2]),
        .R(SR));
  FDRE \gen_axi.read_cnt_reg[3] 
       (.C(aclk),
        .CE(\gen_axi.read_cnt[7]_i_1_n_0 ),
        .D(p_0_in[3]),
        .Q(\gen_axi.read_cnt_reg__0 [3]),
        .R(SR));
  FDRE \gen_axi.read_cnt_reg[4] 
       (.C(aclk),
        .CE(\gen_axi.read_cnt[7]_i_1_n_0 ),
        .D(p_0_in[4]),
        .Q(\gen_axi.read_cnt_reg__0 [4]),
        .R(SR));
  FDRE \gen_axi.read_cnt_reg[5] 
       (.C(aclk),
        .CE(\gen_axi.read_cnt[7]_i_1_n_0 ),
        .D(p_0_in[5]),
        .Q(\gen_axi.read_cnt_reg__0 [5]),
        .R(SR));
  FDRE \gen_axi.read_cnt_reg[6] 
       (.C(aclk),
        .CE(\gen_axi.read_cnt[7]_i_1_n_0 ),
        .D(p_0_in[6]),
        .Q(\gen_axi.read_cnt_reg__0 [6]),
        .R(SR));
  FDRE \gen_axi.read_cnt_reg[7] 
       (.C(aclk),
        .CE(\gen_axi.read_cnt[7]_i_1_n_0 ),
        .D(p_0_in[7]),
        .Q(\gen_axi.read_cnt_reg__0 [7]),
        .R(SR));
  LUT4 #(
    .INIT(16'hB0FF)) 
    \gen_axi.read_cs[0]_i_1 
       (.I0(\gen_axi.s_axi_rlast_i__6 ),
        .I1(\gen_axi.s_axi_arready_i_reg_0 ),
        .I2(mi_rvalid),
        .I3(\gen_axi.read_cnt[7]_i_5_n_0 ),
        .O(\gen_axi.read_cs[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_axi.read_cs_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.read_cs[0]_i_1_n_0 ),
        .Q(mi_rvalid),
        .R(SR));
  LUT6 #(
    .INIT(64'hAAAA08AA00000000)) 
    \gen_axi.s_axi_arready_i_i_1 
       (.I0(aresetn_d),
        .I1(\gen_axi.s_axi_arready_i_reg_0 ),
        .I2(\gen_axi.s_axi_rlast_i__6 ),
        .I3(mi_rvalid),
        .I4(mi_arready),
        .I5(\gen_axi.read_cnt[7]_i_5_n_0 ),
        .O(\gen_axi.s_axi_arready_i_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_axi.s_axi_arready_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.s_axi_arready_i_i_1_n_0 ),
        .Q(mi_arready),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFFFF00)) 
    \gen_axi.s_axi_awready_i_i_1 
       (.I0(\FSM_onehot_gen_axi.write_cs_reg[1]_0 ),
        .I1(m_ready_d_0[1]),
        .I2(\gen_axi.s_axi_awready_i_reg_0 ),
        .I3(\FSM_onehot_gen_axi.write_cs_reg[2]_1 ),
        .I4(\FSM_onehot_gen_axi.write_cs_reg_n_0_[0] ),
        .I5(mi_awready),
        .O(\gen_axi.s_axi_awready_i_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_axi.s_axi_awready_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.s_axi_awready_i_i_1_n_0 ),
        .Q(mi_awready),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_axi.s_axi_bvalid_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.s_axi_bvalid_i_reg_0 ),
        .Q(mi_bvalid),
        .R(SR));
  LUT6 #(
    .INIT(64'hF8FFF8F8F800F8F8)) 
    \gen_axi.s_axi_rlast_i_i_1 
       (.I0(mi_rvalid),
        .I1(\gen_axi.s_axi_rlast_i__6 ),
        .I2(\gen_axi.s_axi_rlast_i_reg_0 ),
        .I3(\gen_axi.s_axi_rlast_i_i_3_n_0 ),
        .I4(\gen_axi.read_cnt[7]_i_5_n_0 ),
        .I5(mi_rmesg),
        .O(\gen_axi.s_axi_rlast_i_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \gen_axi.s_axi_rlast_i_i_3 
       (.I0(\gen_axi.s_axi_rlast_i_i_4_n_0 ),
        .I1(\gen_axi.read_cnt_reg__0 [7]),
        .I2(mi_rvalid),
        .I3(\gen_axi.read_cnt_reg__0 [6]),
        .I4(\gen_axi.read_cnt_reg__0 [5]),
        .I5(\gen_axi.s_axi_arready_i_reg_0 ),
        .O(\gen_axi.s_axi_rlast_i_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \gen_axi.s_axi_rlast_i_i_4 
       (.I0(\gen_axi.read_cnt_reg__0 [2]),
        .I1(\gen_axi.read_cnt_reg__0 [1]),
        .I2(\gen_axi.read_cnt_reg__0 [4]),
        .I3(\gen_axi.read_cnt_reg__0 [3]),
        .O(\gen_axi.s_axi_rlast_i_i_4_n_0 ));
  FDRE \gen_axi.s_axi_rlast_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.s_axi_rlast_i_i_1_n_0 ),
        .Q(mi_rmesg),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFF08FF00000808)) 
    \gen_axi.s_axi_wready_i_i_1 
       (.I0(mi_awready),
        .I1(\FSM_onehot_gen_axi.write_cs_reg_n_0_[0] ),
        .I2(m_ready_d_0[1]),
        .I3(\gen_axi.s_axi_wready_i_reg_0 ),
        .I4(\gen_axi.s_axi_awready_i_reg_0 ),
        .I5(mi_wready),
        .O(\gen_axi.s_axi_wready_i_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_axi.s_axi_wready_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.s_axi_wready_i_i_1_n_0 ),
        .Q(mi_wready),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFFFFFF80000000)) 
    \m_ready_d[0]_i_2 
       (.I0(s_axi_rlast),
        .I1(m_valid_i),
        .I2(aa_grant_rnw),
        .I3(s_axi_rready),
        .I4(f_mux_return__2),
        .I5(m_ready_d[0]),
        .O(m_ready_d0));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_ready_d[1]_i_2 
       (.I0(m_axi_arready[0]),
        .I1(mi_arready),
        .I2(m_axi_arready[1]),
        .I3(m_atarget_enc[0]),
        .I4(m_atarget_enc[1]),
        .O(f_mux_return__0));
  LUT6 #(
    .INIT(64'h00000000EAAAAAAA)) 
    \m_ready_d[1]_i_4 
       (.I0(\m_ready_d[1]_i_5_n_0 ),
        .I1(f_mux_return__2),
        .I2(\m_ready_d[1]_i_6_n_0 ),
        .I3(s_axi_rready),
        .I4(s_axi_rlast),
        .I5(\m_ready_d_reg[1] ),
        .O(s_axi_rready_0_sn_1));
  LUT6 #(
    .INIT(64'h7351624000000000)) 
    \m_ready_d[1]_i_5 
       (.I0(m_atarget_enc[1]),
        .I1(m_atarget_enc[0]),
        .I2(m_axi_arready[1]),
        .I3(mi_arready),
        .I4(m_axi_arready[0]),
        .I5(m_ready_d[0]),
        .O(\m_ready_d[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF73516240)) 
    \m_ready_d[1]_i_6 
       (.I0(m_atarget_enc[1]),
        .I1(m_atarget_enc[0]),
        .I2(m_axi_arready[1]),
        .I3(mi_arready),
        .I4(m_axi_arready[0]),
        .I5(m_ready_d[1]),
        .O(\m_ready_d[1]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFA08080)) 
    \m_ready_d[2]_i_5 
       (.I0(f_mux_return__3),
        .I1(m_ready_d_0[1]),
        .I2(s_axi_bready),
        .I3(m_ready_d_0[0]),
        .I4(f_mux_return),
        .O(\m_ready_d_reg[2] ));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \m_ready_d[2]_i_7 
       (.I0(m_axi_awready[0]),
        .I1(mi_awready),
        .I2(m_axi_awready[1]),
        .I3(m_atarget_enc[0]),
        .I4(m_atarget_enc[1]),
        .O(f_mux_return));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \s_axi_bvalid[0]_INST_0_i_1 
       (.I0(m_axi_bvalid[0]),
        .I1(mi_bvalid),
        .I2(m_axi_bvalid[1]),
        .I3(m_atarget_enc[0]),
        .I4(m_atarget_enc[1]),
        .O(f_mux_return__3));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \s_axi_rlast[0]_INST_0 
       (.I0(m_axi_rlast[0]),
        .I1(mi_rmesg),
        .I2(m_axi_rlast[1]),
        .I3(m_atarget_enc[0]),
        .I4(m_atarget_enc[1]),
        .O(s_axi_rlast));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \s_axi_rvalid[0]_INST_0_i_1 
       (.I0(m_axi_rvalid[0]),
        .I1(mi_rvalid),
        .I2(m_axi_rvalid[1]),
        .I3(m_atarget_enc[0]),
        .I4(m_atarget_enc[1]),
        .O(f_mux_return__2));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \s_axi_wready[0]_INST_0_i_1 
       (.I0(m_axi_wready[0]),
        .I1(mi_wready),
        .I2(m_axi_wready[1]),
        .I3(m_atarget_enc[0]),
        .I4(m_atarget_enc[1]),
        .O(f_mux_return__1));
endmodule

module blockone_axi_interconnect_0_upgraded_ipi_imp_xbar_0_axi_crossbar_v2_1_37_splitter
   (m_ready_d,
    \m_ready_d_reg[0]_0 ,
    \m_ready_d_reg[1]_0 ,
    \gen_axi.s_axi_bvalid_i_reg ,
    s_axi_wvalid,
    \gen_axi.s_axi_bvalid_i_reg_0 ,
    s_axi_wlast,
    Q,
    \m_ready_d_reg[2]_0 ,
    \gen_axi.s_axi_bvalid_i_reg_1 ,
    mi_bvalid,
    m_ready_d0,
    \m_ready_d_reg[2]_1 ,
    aresetn_d,
    aclk);
  output [2:0]m_ready_d;
  output \m_ready_d_reg[0]_0 ;
  output \m_ready_d_reg[1]_0 ;
  output \gen_axi.s_axi_bvalid_i_reg ;
  input [0:0]s_axi_wvalid;
  input \gen_axi.s_axi_bvalid_i_reg_0 ;
  input [0:0]s_axi_wlast;
  input [0:0]Q;
  input \m_ready_d_reg[2]_0 ;
  input \gen_axi.s_axi_bvalid_i_reg_1 ;
  input [0:0]mi_bvalid;
  input [2:0]m_ready_d0;
  input \m_ready_d_reg[2]_1 ;
  input aresetn_d;
  input aclk;

  wire [0:0]Q;
  wire aclk;
  wire aresetn_d;
  wire \gen_axi.s_axi_bvalid_i_i_2_n_0 ;
  wire \gen_axi.s_axi_bvalid_i_reg ;
  wire \gen_axi.s_axi_bvalid_i_reg_0 ;
  wire \gen_axi.s_axi_bvalid_i_reg_1 ;
  wire [2:0]m_ready_d;
  wire [2:0]m_ready_d0;
  wire \m_ready_d[0]_i_1_n_0 ;
  wire \m_ready_d[1]_i_1_n_0 ;
  wire \m_ready_d[2]_i_1_n_0 ;
  wire \m_ready_d_reg[0]_0 ;
  wire \m_ready_d_reg[1]_0 ;
  wire \m_ready_d_reg[2]_0 ;
  wire \m_ready_d_reg[2]_1 ;
  wire [0:0]mi_bvalid;
  wire [0:0]s_axi_wlast;
  wire [0:0]s_axi_wvalid;

  LUT3 #(
    .INIT(8'hBA)) 
    \gen_axi.s_axi_bvalid_i_i_1 
       (.I0(\gen_axi.s_axi_bvalid_i_i_2_n_0 ),
        .I1(\gen_axi.s_axi_bvalid_i_reg_1 ),
        .I2(mi_bvalid),
        .O(\gen_axi.s_axi_bvalid_i_reg ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \gen_axi.s_axi_bvalid_i_i_2 
       (.I0(s_axi_wvalid),
        .I1(m_ready_d[1]),
        .I2(\gen_axi.s_axi_bvalid_i_reg_0 ),
        .I3(s_axi_wlast),
        .I4(Q),
        .I5(\m_ready_d_reg[2]_0 ),
        .O(\gen_axi.s_axi_bvalid_i_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \gen_axi.s_axi_wready_i_i_2 
       (.I0(m_ready_d[1]),
        .I1(\gen_axi.s_axi_bvalid_i_reg_0 ),
        .I2(s_axi_wlast),
        .I3(s_axi_wvalid),
        .O(\m_ready_d_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h0A0A8AAA00000000)) 
    \m_ready_d[0]_i_1 
       (.I0(m_ready_d0[0]),
        .I1(\m_ready_d_reg[2]_0 ),
        .I2(m_ready_d0[1]),
        .I3(\m_ready_d_reg[2]_1 ),
        .I4(\m_ready_d_reg[0]_0 ),
        .I5(aresetn_d),
        .O(\m_ready_d[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h008C8C8C00000000)) 
    \m_ready_d[1]_i_1 
       (.I0(\m_ready_d_reg[2]_0 ),
        .I1(m_ready_d0[1]),
        .I2(\m_ready_d_reg[2]_1 ),
        .I3(m_ready_d[0]),
        .I4(m_ready_d[2]),
        .I5(aresetn_d),
        .O(\m_ready_d[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0A0A8AAA00000000)) 
    \m_ready_d[2]_i_1 
       (.I0(m_ready_d0[2]),
        .I1(\m_ready_d_reg[2]_0 ),
        .I2(m_ready_d0[1]),
        .I3(\m_ready_d_reg[2]_1 ),
        .I4(\m_ready_d_reg[0]_0 ),
        .I5(aresetn_d),
        .O(\m_ready_d[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \m_ready_d[2]_i_6 
       (.I0(m_ready_d[0]),
        .I1(m_ready_d[2]),
        .O(\m_ready_d_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_ready_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_ready_d[0]_i_1_n_0 ),
        .Q(m_ready_d[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_ready_d_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_ready_d[1]_i_1_n_0 ),
        .Q(m_ready_d[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_ready_d_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_ready_d[2]_i_1_n_0 ),
        .Q(m_ready_d[2]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_crossbar_v2_1_37_splitter" *) 
module blockone_axi_interconnect_0_upgraded_ipi_imp_xbar_0_axi_crossbar_v2_1_37_splitter__parameterized0
   (\m_ready_d_reg[0]_0 ,
    m_ready_d,
    f_mux_return__0,
    \m_ready_d_reg[1]_0 ,
    \m_ready_d_reg[1]_1 ,
    aresetn_d,
    m_ready_d0,
    aclk);
  output \m_ready_d_reg[0]_0 ;
  output [1:0]m_ready_d;
  input f_mux_return__0;
  input \m_ready_d_reg[1]_0 ;
  input \m_ready_d_reg[1]_1 ;
  input aresetn_d;
  input [0:0]m_ready_d0;
  input aclk;

  wire aclk;
  wire aresetn_d;
  wire f_mux_return__0;
  wire [1:0]m_ready_d;
  wire [0:0]m_ready_d0;
  wire \m_ready_d[0]_i_1_n_0 ;
  wire \m_ready_d[1]_i_1_n_0 ;
  wire \m_ready_d_reg[0]_0 ;
  wire \m_ready_d_reg[1]_0 ;
  wire \m_ready_d_reg[1]_1 ;

  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gen_no_arbiter.m_grant_hot_i[0]_inv_i_5 
       (.I0(m_ready_d[0]),
        .I1(m_ready_d[1]),
        .O(\m_ready_d_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h02220000)) 
    \m_ready_d[0]_i_1 
       (.I0(m_ready_d0),
        .I1(\m_ready_d_reg[1]_1 ),
        .I2(m_ready_d[1]),
        .I3(m_ready_d[0]),
        .I4(aresetn_d),
        .O(\m_ready_d[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00020F0200000000)) 
    \m_ready_d[1]_i_1 
       (.I0(f_mux_return__0),
        .I1(\m_ready_d_reg[1]_0 ),
        .I2(\m_ready_d_reg[1]_1 ),
        .I3(m_ready_d[1]),
        .I4(m_ready_d[0]),
        .I5(aresetn_d),
        .O(\m_ready_d[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_ready_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_ready_d[0]_i_1_n_0 ),
        .Q(m_ready_d[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_ready_d_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_ready_d[1]_i_1_n_0 ),
        .Q(m_ready_d[1]),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "blockone_axi_interconnect_0_upgraded_ipi_imp_xbar_0,axi_crossbar_v2_1_37_axi_crossbar,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_crossbar_v2_1_37_axi_crossbar,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module blockone_axi_interconnect_0_upgraded_ipi_imp_xbar_0
   (aclk,
    aresetn,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLKIF CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLKIF, ASSOCIATED_BUSIF M00_AXI:M01_AXI:M02_AXI:M03_AXI:M04_AXI:M05_AXI:M06_AXI:M07_AXI:M08_AXI:M09_AXI:M10_AXI:M11_AXI:M12_AXI:M13_AXI:M14_AXI:M15_AXI:S00_AXI:S01_AXI:S02_AXI:S03_AXI:S04_AXI:S05_AXI:S06_AXI:S07_AXI:S08_AXI:S09_AXI:S10_AXI:S11_AXI:S12_AXI:S13_AXI:S14_AXI:S15_AXI, ASSOCIATED_RESET aresetn, FREQ_HZ 166666672, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN blockone_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RSTIF RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RSTIF, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, DATA_WIDTH 64, PROTOCOL AXI3, FREQ_HZ 166666672, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 16, PHASE 0.0, CLK_DOMAIN blockone_processing_system7_0_1_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [31:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWLEN" *) input [3:0]s_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWSIZE" *) input [2:0]s_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWBURST" *) input [1:0]s_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWLOCK" *) input [1:0]s_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWCACHE" *) input [3:0]s_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWQOS" *) input [3:0]s_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input [0:0]s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output [0:0]s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [63:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [7:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WLAST" *) input [0:0]s_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input [0:0]s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output [0:0]s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output [0:0]s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input [0:0]s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [31:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARLEN" *) input [3:0]s_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARSIZE" *) input [2:0]s_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARBURST" *) input [1:0]s_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARLOCK" *) input [1:0]s_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARCACHE" *) input [3:0]s_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARQOS" *) input [3:0]s_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input [0:0]s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output [0:0]s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [63:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RLAST" *) output [0:0]s_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output [0:0]s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) input [0:0]s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR [31:0] [31:0], xilinx.com:interface:aximm:1.0 M01_AXI AWADDR [31:0] [63:32]" *) (* X_INTERFACE_MODE = "master M01_AXI" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M01_AXI, DATA_WIDTH 64, PROTOCOL AXI3, FREQ_HZ 166666672, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 8, PHASE 0.0, CLK_DOMAIN blockone_processing_system7_0_1_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output [63:0]m_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWLEN [3:0] [3:0], xilinx.com:interface:aximm:1.0 M01_AXI AWLEN [3:0] [7:4]" *) output [7:0]m_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWSIZE [2:0] [2:0], xilinx.com:interface:aximm:1.0 M01_AXI AWSIZE [2:0] [5:3]" *) output [5:0]m_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWBURST [1:0] [1:0], xilinx.com:interface:aximm:1.0 M01_AXI AWBURST [1:0] [3:2]" *) output [3:0]m_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWLOCK [1:0] [1:0], xilinx.com:interface:aximm:1.0 M01_AXI AWLOCK [1:0] [3:2]" *) output [3:0]m_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWCACHE [3:0] [3:0], xilinx.com:interface:aximm:1.0 M01_AXI AWCACHE [3:0] [7:4]" *) output [7:0]m_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWPROT [2:0] [2:0], xilinx.com:interface:aximm:1.0 M01_AXI AWPROT [2:0] [5:3]" *) output [5:0]m_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWQOS [3:0] [3:0], xilinx.com:interface:aximm:1.0 M01_AXI AWQOS [3:0] [7:4]" *) output [7:0]m_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI AWVALID [0:0] [1:1]" *) output [1:0]m_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI AWREADY [0:0] [1:1]" *) input [1:0]m_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WDATA [63:0] [63:0], xilinx.com:interface:aximm:1.0 M01_AXI WDATA [63:0] [127:64]" *) output [127:0]m_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WSTRB [7:0] [7:0], xilinx.com:interface:aximm:1.0 M01_AXI WSTRB [7:0] [15:8]" *) output [15:0]m_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WLAST [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI WLAST [0:0] [1:1]" *) output [1:0]m_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI WVALID [0:0] [1:1]" *) output [1:0]m_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI WREADY [0:0] [1:1]" *) input [1:0]m_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BRESP [1:0] [1:0], xilinx.com:interface:aximm:1.0 M01_AXI BRESP [1:0] [3:2]" *) input [3:0]m_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI BVALID [0:0] [1:1]" *) input [1:0]m_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI BREADY [0:0] [1:1]" *) output [1:0]m_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR [31:0] [31:0], xilinx.com:interface:aximm:1.0 M01_AXI ARADDR [31:0] [63:32]" *) output [63:0]m_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARLEN [3:0] [3:0], xilinx.com:interface:aximm:1.0 M01_AXI ARLEN [3:0] [7:4]" *) output [7:0]m_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARSIZE [2:0] [2:0], xilinx.com:interface:aximm:1.0 M01_AXI ARSIZE [2:0] [5:3]" *) output [5:0]m_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARBURST [1:0] [1:0], xilinx.com:interface:aximm:1.0 M01_AXI ARBURST [1:0] [3:2]" *) output [3:0]m_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARLOCK [1:0] [1:0], xilinx.com:interface:aximm:1.0 M01_AXI ARLOCK [1:0] [3:2]" *) output [3:0]m_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARCACHE [3:0] [3:0], xilinx.com:interface:aximm:1.0 M01_AXI ARCACHE [3:0] [7:4]" *) output [7:0]m_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARPROT [2:0] [2:0], xilinx.com:interface:aximm:1.0 M01_AXI ARPROT [2:0] [5:3]" *) output [5:0]m_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARQOS [3:0] [3:0], xilinx.com:interface:aximm:1.0 M01_AXI ARQOS [3:0] [7:4]" *) output [7:0]m_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI ARVALID [0:0] [1:1]" *) output [1:0]m_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI ARREADY [0:0] [1:1]" *) input [1:0]m_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RDATA [63:0] [63:0], xilinx.com:interface:aximm:1.0 M01_AXI RDATA [63:0] [127:64]" *) input [127:0]m_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RRESP [1:0] [1:0], xilinx.com:interface:aximm:1.0 M01_AXI RRESP [1:0] [3:2]" *) input [3:0]m_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RLAST [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI RLAST [0:0] [1:1]" *) input [1:0]m_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI RVALID [0:0] [1:1]" *) input [1:0]m_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI RREADY [0:0] [1:1]" *) output [1:0]m_axi_rready;

  wire \<const0> ;
  wire aclk;
  wire aresetn;
  wire [63:0]m_axi_araddr;
  wire [3:0]m_axi_arburst;
  wire [7:0]m_axi_arcache;
  wire [7:0]m_axi_arlen;
  wire [2:0]\^m_axi_arlock ;
  wire [5:0]m_axi_arprot;
  wire [7:0]m_axi_arqos;
  wire [1:0]m_axi_arready;
  wire [5:0]m_axi_arsize;
  wire [1:0]m_axi_arvalid;
  wire [63:0]m_axi_awaddr;
  wire [3:0]m_axi_awburst;
  wire [7:0]m_axi_awcache;
  wire [7:0]m_axi_awlen;
  wire [2:0]\^m_axi_awlock ;
  wire [5:0]m_axi_awprot;
  wire [7:0]m_axi_awqos;
  wire [1:0]m_axi_awready;
  wire [5:0]m_axi_awsize;
  wire [1:0]m_axi_awvalid;
  wire [1:0]m_axi_bready;
  wire [3:0]m_axi_bresp;
  wire [1:0]m_axi_bvalid;
  wire [127:0]m_axi_rdata;
  wire [1:0]m_axi_rlast;
  wire [1:0]m_axi_rready;
  wire [3:0]m_axi_rresp;
  wire [1:0]m_axi_rvalid;
  wire [127:0]m_axi_wdata;
  wire [1:0]m_axi_wlast;
  wire [1:0]m_axi_wready;
  wire [15:0]m_axi_wstrb;
  wire [1:0]m_axi_wvalid;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire [3:0]s_axi_arlen;
  wire [1:0]s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire [0:0]s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire [0:0]s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [3:0]s_axi_awlen;
  wire [1:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire [0:0]s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire [0:0]s_axi_awvalid;
  wire [0:0]s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire [0:0]s_axi_bvalid;
  wire [63:0]s_axi_rdata;
  wire [0:0]s_axi_rlast;
  wire [0:0]s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire [0:0]s_axi_rvalid;
  wire [63:0]s_axi_wdata;
  wire [0:0]s_axi_wlast;
  wire [0:0]s_axi_wready;
  wire [7:0]s_axi_wstrb;
  wire [0:0]s_axi_wvalid;
  wire [1:0]NLW_inst_m_axi_arid_UNCONNECTED;
  wire [3:1]NLW_inst_m_axi_arlock_UNCONNECTED;
  wire [7:0]NLW_inst_m_axi_arregion_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_aruser_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_awid_UNCONNECTED;
  wire [3:1]NLW_inst_m_axi_awlock_UNCONNECTED;
  wire [7:0]NLW_inst_m_axi_awregion_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_awuser_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_wid_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_wuser_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_bid_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_buser_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_rid_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_ruser_UNCONNECTED;

  assign m_axi_arlock[3] = \<const0> ;
  assign m_axi_arlock[2] = \^m_axi_arlock [2];
  assign m_axi_arlock[1] = \<const0> ;
  assign m_axi_arlock[0] = \^m_axi_arlock [0];
  assign m_axi_awlock[3] = \<const0> ;
  assign m_axi_awlock[2] = \^m_axi_awlock [2];
  assign m_axi_awlock[1] = \<const0> ;
  assign m_axi_awlock[0] = \^m_axi_awlock [0];
  GND GND
       (.G(\<const0> ));
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_PROTOCOL = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_SUPPORTS_USER_SIGNALS = "0" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_CONNECTIVITY_MODE = "0" *) 
  (* C_DEBUG = "1" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_M_AXI_ADDR_WIDTH = "64'b0000000000000000000000000000110000000000000000000000000000001100" *) 
  (* C_M_AXI_BASE_ADDR = "128'b00000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000001000000000000000001000000000000" *) 
  (* C_M_AXI_READ_CONNECTIVITY = "64'b1111111111111111111111111111111111111111111111111111111111111111" *) 
  (* C_M_AXI_READ_ISSUING = "64'b0000000000000000000000000000000100000000000000000000000000000001" *) 
  (* C_M_AXI_SECURE = "64'b0000000000000000000000000000000000000000000000000000000000000000" *) 
  (* C_M_AXI_WRITE_CONNECTIVITY = "64'b1111111111111111111111111111111111111111111111111111111111111111" *) 
  (* C_M_AXI_WRITE_ISSUING = "64'b0000000000000000000000000000000100000000000000000000000000000001" *) 
  (* C_NUM_ADDR_RANGES = "1" *) 
  (* C_NUM_MASTER_SLOTS = "2" *) 
  (* C_NUM_SLAVE_SLOTS = "1" *) 
  (* C_R_REGISTER = "0" *) 
  (* C_S_AXI_ARB_PRIORITY = "0" *) 
  (* C_S_AXI_BASE_ID = "0" *) 
  (* C_S_AXI_READ_ACCEPTANCE = "1" *) 
  (* C_S_AXI_SINGLE_THREAD = "0" *) 
  (* C_S_AXI_THREAD_ID_WIDTH = "0" *) 
  (* C_S_AXI_WRITE_ACCEPTANCE = "1" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* P_ADDR_DECODE = "1" *) 
  (* P_AXI3 = "1" *) 
  (* P_AXI4 = "0" *) 
  (* P_AXILITE = "2" *) 
  (* P_AXILITE_SIZE = "3'b010" *) 
  (* P_FAMILY = "zynq" *) 
  (* P_INCR = "2'b01" *) 
  (* P_LEN = "4" *) 
  (* P_LOCK = "2" *) 
  (* P_M_AXI_ERR_MODE = "64'b0000000000000000000000000000000000000000000000000000000000000000" *) 
  (* P_M_AXI_SUPPORTS_READ = "2'b11" *) 
  (* P_M_AXI_SUPPORTS_WRITE = "2'b11" *) 
  (* P_ONES = "65'b11111111111111111111111111111111111111111111111111111111111111111" *) 
  (* P_RANGE_CHECK = "1" *) 
  (* P_S_AXI_BASE_ID = "64'b0000000000000000000000000000000000000000000000000000000000000000" *) 
  (* P_S_AXI_HIGH_ID = "64'b0000000000000000000000000000000000000000000000000000000000000000" *) 
  (* P_S_AXI_SUPPORTS_READ = "1'b1" *) 
  (* P_S_AXI_SUPPORTS_WRITE = "1'b1" *) 
  blockone_axi_interconnect_0_upgraded_ipi_imp_xbar_0_axi_crossbar_v2_1_37_axi_crossbar inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arburst(m_axi_arburst),
        .m_axi_arcache(m_axi_arcache),
        .m_axi_arid(NLW_inst_m_axi_arid_UNCONNECTED[1:0]),
        .m_axi_arlen(m_axi_arlen),
        .m_axi_arlock({NLW_inst_m_axi_arlock_UNCONNECTED[3],\^m_axi_arlock }),
        .m_axi_arprot(m_axi_arprot),
        .m_axi_arqos(m_axi_arqos),
        .m_axi_arready(m_axi_arready),
        .m_axi_arregion(NLW_inst_m_axi_arregion_UNCONNECTED[7:0]),
        .m_axi_arsize(m_axi_arsize),
        .m_axi_aruser(NLW_inst_m_axi_aruser_UNCONNECTED[1:0]),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awid(NLW_inst_m_axi_awid_UNCONNECTED[1:0]),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awlock({NLW_inst_m_axi_awlock_UNCONNECTED[3],\^m_axi_awlock }),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(m_axi_awqos),
        .m_axi_awready(m_axi_awready),
        .m_axi_awregion(NLW_inst_m_axi_awregion_UNCONNECTED[7:0]),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_awuser(NLW_inst_m_axi_awuser_UNCONNECTED[1:0]),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bid({1'b0,1'b0}),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_buser({1'b0,1'b0}),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rid({1'b0,1'b0}),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_ruser({1'b0,1'b0}),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wid(NLW_inst_m_axi_wid_UNCONNECTED[1:0]),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wuser(NLW_inst_m_axi_wuser_UNCONNECTED[1:0]),
        .m_axi_wvalid(m_axi_wvalid),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arcache(s_axi_arcache),
        .s_axi_arid(1'b0),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arlock({1'b0,s_axi_arlock[0]}),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arqos(s_axi_arqos),
        .s_axi_arready(s_axi_arready),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awid(1'b0),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awlock({1'b0,s_axi_awlock[0]}),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos(s_axi_awqos),
        .s_axi_awready(s_axi_awready),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(NLW_inst_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_buser(NLW_inst_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(NLW_inst_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_ruser(NLW_inst_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wid(1'b0),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(s_axi_wvalid));
endmodule
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
