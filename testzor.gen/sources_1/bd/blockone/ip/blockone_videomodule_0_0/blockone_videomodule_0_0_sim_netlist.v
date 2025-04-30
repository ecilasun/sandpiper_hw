// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2.2 (win64) Build 6060944 Thu Mar 06 19:10:01 MST 2025
// Date        : Sun Apr 27 19:59:32 2025
// Host        : fastturtle running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/repos/testzor/testzor.gen/sources_1/bd/blockone/ip/blockone_videomodule_0_0/blockone_videomodule_0_0_sim_netlist.v
// Design      : blockone_videomodule_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blockone_videomodule_0_0,videomodule,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "videomodule,Vivado 2024.2.2" *) 
(* NotValidForBitStream *)
module blockone_videomodule_0_0
   (aclk,
    pixelClock,
    pixelClockx5,
    audiosampleclk,
    aresetn,
    HDMI_CLK_p,
    HDMI_CLK_n,
    HDMI_TMDS_p,
    HDMI_TMDS_n,
    s_axi_arready,
    s_axi_awready,
    s_axi_bvalid,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_rresp,
    s_axi_bid,
    s_axi_rid,
    s_axi_rdata,
    s_axi_arvalid,
    s_axi_awvalid,
    s_axi_bready,
    s_axi_rready,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awsize,
    s_axi_arprot,
    s_axi_awprot,
    s_axi_araddr,
    s_axi_awaddr,
    s_axi_arcache,
    s_axi_arlen,
    s_axi_arqos,
    s_axi_awcache,
    s_axi_awlen,
    s_axi_awqos,
    s_axi_arid,
    s_axi_awid,
    s_axi_wid,
    s_axi_wdata,
    s_axi_wstrb,
    m_axi_arready,
    m_axi_awready,
    m_axi_bvalid,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_rresp,
    m_axi_bid,
    m_axi_rid,
    m_axi_rdata,
    m_axi_arvalid,
    m_axi_awvalid,
    m_axi_bready,
    m_axi_rready,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awsize,
    m_axi_arprot,
    m_axi_awprot,
    m_axi_araddr,
    m_axi_awaddr,
    m_axi_arcache,
    m_axi_arlen,
    m_axi_arqos,
    m_axi_awcache,
    m_axi_awlen,
    m_axi_awqos,
    m_axi_arid,
    m_axi_awid,
    m_axi_wid,
    m_axi_wdata,
    m_axi_wstrb,
    audioSampleInputLR);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axi:s_axi, FREQ_HZ 166666672, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN blockone_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input aclk;
  input pixelClock;
  input pixelClockx5;
  input audiosampleclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 HDMI_CLK CLK" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME HDMI_CLK, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN blockone_videomodule_0_0_HDMI_CLK_p, INSERT_VIP 0" *) output HDMI_CLK_p;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 HDMI_CLK_n CLK" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME HDMI_CLK_n, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN blockone_videomodule_0_0_HDMI_CLK_n, INSERT_VIP 0" *) output HDMI_CLK_n;
  output [2:0]HDMI_TMDS_p;
  output [2:0]HDMI_TMDS_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARREADY" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi, DATA_WIDTH 64, PROTOCOL AXI3, FREQ_HZ 166666672, ID_WIDTH 6, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 16, PHASE 0.0, CLK_DOMAIN blockone_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RLAST" *) output s_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BID" *) output [5:0]s_axi_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RID" *) output [5:0]s_axi_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) output [63:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RREADY" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WLAST" *) input s_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARBURST" *) input [1:0]s_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARLOCK" *) input [1:0]s_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARSIZE" *) input [2:0]s_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWBURST" *) input [1:0]s_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWLOCK" *) input [1:0]s_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWSIZE" *) input [2:0]s_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARPROT" *) input [2:0]s_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWPROT" *) input [2:0]s_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARADDR" *) input [31:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWADDR" *) input [31:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARCACHE" *) input [3:0]s_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARLEN" *) input [3:0]s_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARQOS" *) input [3:0]s_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWCACHE" *) input [3:0]s_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWLEN" *) input [3:0]s_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWQOS" *) input [3:0]s_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARID" *) input [5:0]s_axi_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWID" *) input [5:0]s_axi_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WID" *) input [5:0]s_axi_wid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WDATA" *) input [63:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WSTRB" *) input [7:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARREADY" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi, DATA_WIDTH 64, PROTOCOL AXI3, FREQ_HZ 166666672, ID_WIDTH 6, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 16, PHASE 0.0, CLK_DOMAIN blockone_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input m_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWREADY" *) input m_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi BVALID" *) input m_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RLAST" *) input m_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RVALID" *) input m_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WREADY" *) input m_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi BRESP" *) input [1:0]m_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RRESP" *) input [1:0]m_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi BID" *) input [5:0]m_axi_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RID" *) input [5:0]m_axi_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RDATA" *) input [63:0]m_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARVALID" *) output m_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWVALID" *) output m_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi BREADY" *) output m_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RREADY" *) output m_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WLAST" *) output m_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WVALID" *) output m_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARBURST" *) output [1:0]m_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARLOCK" *) output [1:0]m_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARSIZE" *) output [2:0]m_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWBURST" *) output [1:0]m_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWLOCK" *) output [1:0]m_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWSIZE" *) output [2:0]m_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARPROT" *) output [2:0]m_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWPROT" *) output [2:0]m_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARADDR" *) output [31:0]m_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWADDR" *) output [31:0]m_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARCACHE" *) output [3:0]m_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARLEN" *) output [3:0]m_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARQOS" *) output [3:0]m_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWCACHE" *) output [3:0]m_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWLEN" *) output [3:0]m_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWQOS" *) output [3:0]m_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARID" *) output [5:0]m_axi_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWID" *) output [5:0]m_axi_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WID" *) output [5:0]m_axi_wid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WDATA" *) output [63:0]m_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WSTRB" *) output [7:0]m_axi_wstrb;
  input [31:0]audioSampleInputLR;

  wire \<const0> ;
  wire \<const1> ;
  (* IOSTANDARD = "TMDS_33" *) (* SLEW = "SLOW" *) wire HDMI_CLK_n;
  (* IOSTANDARD = "TMDS_33" *) (* SLEW = "SLOW" *) wire HDMI_CLK_p;
  (* IOSTANDARD = "TMDS_33" *) (* SLEW = "SLOW" *) wire [2:0]HDMI_TMDS_n;
  (* IOSTANDARD = "TMDS_33" *) (* SLEW = "SLOW" *) wire [2:0]HDMI_TMDS_p;
  wire aclk;
  wire aresetn;
  wire [31:0]audioSampleInputLR;
  wire audiosampleclk;
  wire [31:0]m_axi_araddr;
  wire [3:0]m_axi_arlen;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire [63:0]m_axi_rdata;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire m_axi_rvalid;
  wire pixelClock;
  wire pixelClockx5;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [42:0]\^s_axi_rdata ;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [63:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire NLW_inst_m_axi_awvalid_UNCONNECTED;
  wire NLW_inst_m_axi_bready_UNCONNECTED;
  wire NLW_inst_m_axi_wlast_UNCONNECTED;
  wire NLW_inst_m_axi_wvalid_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_arcache_UNCONNECTED;
  wire [5:0]NLW_inst_m_axi_arid_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_inst_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_arqos_UNCONNECTED;
  wire [2:0]NLW_inst_m_axi_arsize_UNCONNECTED;
  wire [31:0]NLW_inst_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_awcache_UNCONNECTED;
  wire [5:0]NLW_inst_m_axi_awid_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_awlen_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_inst_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_awqos_UNCONNECTED;
  wire [2:0]NLW_inst_m_axi_awsize_UNCONNECTED;
  wire [63:0]NLW_inst_m_axi_wdata_UNCONNECTED;
  wire [5:0]NLW_inst_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_inst_m_axi_wstrb_UNCONNECTED;
  wire [5:0]NLW_inst_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_bresp_UNCONNECTED;
  wire [63:11]NLW_inst_s_axi_rdata_UNCONNECTED;
  wire [5:0]NLW_inst_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_rresp_UNCONNECTED;

  assign m_axi_arburst[1] = \<const0> ;
  assign m_axi_arburst[0] = \<const1> ;
  assign m_axi_arcache[3] = \<const0> ;
  assign m_axi_arcache[2] = \<const0> ;
  assign m_axi_arcache[1] = \<const1> ;
  assign m_axi_arcache[0] = \<const0> ;
  assign m_axi_arid[5] = \<const0> ;
  assign m_axi_arid[4] = \<const0> ;
  assign m_axi_arid[3] = \<const0> ;
  assign m_axi_arid[2] = \<const0> ;
  assign m_axi_arid[1] = \<const0> ;
  assign m_axi_arid[0] = \<const0> ;
  assign m_axi_arlock[1] = \<const0> ;
  assign m_axi_arlock[0] = \<const0> ;
  assign m_axi_arprot[2] = \<const0> ;
  assign m_axi_arprot[1] = \<const0> ;
  assign m_axi_arprot[0] = \<const0> ;
  assign m_axi_arqos[3] = \<const0> ;
  assign m_axi_arqos[2] = \<const0> ;
  assign m_axi_arqos[1] = \<const0> ;
  assign m_axi_arqos[0] = \<const0> ;
  assign m_axi_arsize[2] = \<const0> ;
  assign m_axi_arsize[1] = \<const1> ;
  assign m_axi_arsize[0] = \<const1> ;
  assign m_axi_awaddr[31] = \<const0> ;
  assign m_axi_awaddr[30] = \<const0> ;
  assign m_axi_awaddr[29] = \<const0> ;
  assign m_axi_awaddr[28] = \<const0> ;
  assign m_axi_awaddr[27] = \<const0> ;
  assign m_axi_awaddr[26] = \<const0> ;
  assign m_axi_awaddr[25] = \<const0> ;
  assign m_axi_awaddr[24] = \<const0> ;
  assign m_axi_awaddr[23] = \<const0> ;
  assign m_axi_awaddr[22] = \<const0> ;
  assign m_axi_awaddr[21] = \<const0> ;
  assign m_axi_awaddr[20] = \<const0> ;
  assign m_axi_awaddr[19] = \<const0> ;
  assign m_axi_awaddr[18] = \<const0> ;
  assign m_axi_awaddr[17] = \<const0> ;
  assign m_axi_awaddr[16] = \<const0> ;
  assign m_axi_awaddr[15] = \<const0> ;
  assign m_axi_awaddr[14] = \<const0> ;
  assign m_axi_awaddr[13] = \<const0> ;
  assign m_axi_awaddr[12] = \<const0> ;
  assign m_axi_awaddr[11] = \<const0> ;
  assign m_axi_awaddr[10] = \<const0> ;
  assign m_axi_awaddr[9] = \<const0> ;
  assign m_axi_awaddr[8] = \<const0> ;
  assign m_axi_awaddr[7] = \<const0> ;
  assign m_axi_awaddr[6] = \<const0> ;
  assign m_axi_awaddr[5] = \<const0> ;
  assign m_axi_awaddr[4] = \<const0> ;
  assign m_axi_awaddr[3] = \<const0> ;
  assign m_axi_awaddr[2] = \<const0> ;
  assign m_axi_awaddr[1] = \<const0> ;
  assign m_axi_awaddr[0] = \<const0> ;
  assign m_axi_awburst[1] = \<const0> ;
  assign m_axi_awburst[0] = \<const0> ;
  assign m_axi_awcache[3] = \<const0> ;
  assign m_axi_awcache[2] = \<const0> ;
  assign m_axi_awcache[1] = \<const1> ;
  assign m_axi_awcache[0] = \<const0> ;
  assign m_axi_awid[5] = \<const0> ;
  assign m_axi_awid[4] = \<const0> ;
  assign m_axi_awid[3] = \<const0> ;
  assign m_axi_awid[2] = \<const0> ;
  assign m_axi_awid[1] = \<const0> ;
  assign m_axi_awid[0] = \<const0> ;
  assign m_axi_awlen[3] = \<const0> ;
  assign m_axi_awlen[2] = \<const0> ;
  assign m_axi_awlen[1] = \<const0> ;
  assign m_axi_awlen[0] = \<const0> ;
  assign m_axi_awlock[1] = \<const0> ;
  assign m_axi_awlock[0] = \<const0> ;
  assign m_axi_awprot[2] = \<const0> ;
  assign m_axi_awprot[1] = \<const0> ;
  assign m_axi_awprot[0] = \<const0> ;
  assign m_axi_awqos[3] = \<const0> ;
  assign m_axi_awqos[2] = \<const0> ;
  assign m_axi_awqos[1] = \<const0> ;
  assign m_axi_awqos[0] = \<const0> ;
  assign m_axi_awsize[2] = \<const0> ;
  assign m_axi_awsize[1] = \<const0> ;
  assign m_axi_awsize[0] = \<const0> ;
  assign m_axi_awvalid = \<const0> ;
  assign m_axi_bready = \<const0> ;
  assign m_axi_wdata[63] = \<const0> ;
  assign m_axi_wdata[62] = \<const0> ;
  assign m_axi_wdata[61] = \<const0> ;
  assign m_axi_wdata[60] = \<const0> ;
  assign m_axi_wdata[59] = \<const0> ;
  assign m_axi_wdata[58] = \<const0> ;
  assign m_axi_wdata[57] = \<const0> ;
  assign m_axi_wdata[56] = \<const0> ;
  assign m_axi_wdata[55] = \<const0> ;
  assign m_axi_wdata[54] = \<const0> ;
  assign m_axi_wdata[53] = \<const0> ;
  assign m_axi_wdata[52] = \<const0> ;
  assign m_axi_wdata[51] = \<const0> ;
  assign m_axi_wdata[50] = \<const0> ;
  assign m_axi_wdata[49] = \<const0> ;
  assign m_axi_wdata[48] = \<const0> ;
  assign m_axi_wdata[47] = \<const0> ;
  assign m_axi_wdata[46] = \<const0> ;
  assign m_axi_wdata[45] = \<const0> ;
  assign m_axi_wdata[44] = \<const0> ;
  assign m_axi_wdata[43] = \<const0> ;
  assign m_axi_wdata[42] = \<const0> ;
  assign m_axi_wdata[41] = \<const0> ;
  assign m_axi_wdata[40] = \<const0> ;
  assign m_axi_wdata[39] = \<const0> ;
  assign m_axi_wdata[38] = \<const0> ;
  assign m_axi_wdata[37] = \<const0> ;
  assign m_axi_wdata[36] = \<const0> ;
  assign m_axi_wdata[35] = \<const0> ;
  assign m_axi_wdata[34] = \<const0> ;
  assign m_axi_wdata[33] = \<const0> ;
  assign m_axi_wdata[32] = \<const0> ;
  assign m_axi_wdata[31] = \<const0> ;
  assign m_axi_wdata[30] = \<const0> ;
  assign m_axi_wdata[29] = \<const0> ;
  assign m_axi_wdata[28] = \<const0> ;
  assign m_axi_wdata[27] = \<const0> ;
  assign m_axi_wdata[26] = \<const0> ;
  assign m_axi_wdata[25] = \<const0> ;
  assign m_axi_wdata[24] = \<const0> ;
  assign m_axi_wdata[23] = \<const0> ;
  assign m_axi_wdata[22] = \<const0> ;
  assign m_axi_wdata[21] = \<const0> ;
  assign m_axi_wdata[20] = \<const0> ;
  assign m_axi_wdata[19] = \<const0> ;
  assign m_axi_wdata[18] = \<const0> ;
  assign m_axi_wdata[17] = \<const0> ;
  assign m_axi_wdata[16] = \<const0> ;
  assign m_axi_wdata[15] = \<const0> ;
  assign m_axi_wdata[14] = \<const0> ;
  assign m_axi_wdata[13] = \<const0> ;
  assign m_axi_wdata[12] = \<const0> ;
  assign m_axi_wdata[11] = \<const0> ;
  assign m_axi_wdata[10] = \<const0> ;
  assign m_axi_wdata[9] = \<const0> ;
  assign m_axi_wdata[8] = \<const0> ;
  assign m_axi_wdata[7] = \<const0> ;
  assign m_axi_wdata[6] = \<const0> ;
  assign m_axi_wdata[5] = \<const0> ;
  assign m_axi_wdata[4] = \<const0> ;
  assign m_axi_wdata[3] = \<const0> ;
  assign m_axi_wdata[2] = \<const0> ;
  assign m_axi_wdata[1] = \<const0> ;
  assign m_axi_wdata[0] = \<const0> ;
  assign m_axi_wid[5] = \<const0> ;
  assign m_axi_wid[4] = \<const0> ;
  assign m_axi_wid[3] = \<const0> ;
  assign m_axi_wid[2] = \<const0> ;
  assign m_axi_wid[1] = \<const0> ;
  assign m_axi_wid[0] = \<const0> ;
  assign m_axi_wlast = \<const0> ;
  assign m_axi_wstrb[7] = \<const0> ;
  assign m_axi_wstrb[6] = \<const0> ;
  assign m_axi_wstrb[5] = \<const0> ;
  assign m_axi_wstrb[4] = \<const0> ;
  assign m_axi_wstrb[3] = \<const0> ;
  assign m_axi_wstrb[2] = \<const0> ;
  assign m_axi_wstrb[1] = \<const0> ;
  assign m_axi_wstrb[0] = \<const0> ;
  assign m_axi_wvalid = \<const0> ;
  assign s_axi_bid[5] = \<const0> ;
  assign s_axi_bid[4] = \<const0> ;
  assign s_axi_bid[3] = \<const0> ;
  assign s_axi_bid[2] = \<const0> ;
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rdata[63] = \<const0> ;
  assign s_axi_rdata[62] = \<const0> ;
  assign s_axi_rdata[61] = \<const0> ;
  assign s_axi_rdata[60] = \<const0> ;
  assign s_axi_rdata[59] = \<const0> ;
  assign s_axi_rdata[58] = \<const0> ;
  assign s_axi_rdata[57] = \<const0> ;
  assign s_axi_rdata[56] = \<const0> ;
  assign s_axi_rdata[55] = \<const0> ;
  assign s_axi_rdata[54] = \<const0> ;
  assign s_axi_rdata[53] = \<const0> ;
  assign s_axi_rdata[52] = \<const0> ;
  assign s_axi_rdata[51] = \<const0> ;
  assign s_axi_rdata[50] = \<const0> ;
  assign s_axi_rdata[49] = \<const0> ;
  assign s_axi_rdata[48] = \<const0> ;
  assign s_axi_rdata[47] = \<const0> ;
  assign s_axi_rdata[46] = \<const0> ;
  assign s_axi_rdata[45] = \<const0> ;
  assign s_axi_rdata[44] = \<const0> ;
  assign s_axi_rdata[43] = \<const0> ;
  assign s_axi_rdata[42:32] = \^s_axi_rdata [42:32];
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10:0] = \^s_axi_rdata [10:0];
  assign s_axi_rid[5] = \<const0> ;
  assign s_axi_rid[4] = \<const0> ;
  assign s_axi_rid[3] = \<const0> ;
  assign s_axi_rid[2] = \<const0> ;
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  blockone_videomodule_0_0_videomodule inst
       (.HDMI_CLK_n(HDMI_CLK_n),
        .HDMI_CLK_p(HDMI_CLK_p),
        .HDMI_TMDS_n(HDMI_TMDS_n),
        .HDMI_TMDS_p(HDMI_TMDS_p),
        .aclk(aclk),
        .aresetn(aresetn),
        .audioSampleInputLR(audioSampleInputLR),
        .audiosampleclk(audiosampleclk),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arburst(NLW_inst_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_inst_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_inst_m_axi_arid_UNCONNECTED[5:0]),
        .m_axi_arlen(m_axi_arlen),
        .m_axi_arlock(NLW_inst_m_axi_arlock_UNCONNECTED[1:0]),
        .m_axi_arprot(NLW_inst_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_inst_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(m_axi_arready),
        .m_axi_arsize(NLW_inst_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awaddr(NLW_inst_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_inst_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_inst_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_inst_m_axi_awid_UNCONNECTED[5:0]),
        .m_axi_awlen(NLW_inst_m_axi_awlen_UNCONNECTED[3:0]),
        .m_axi_awlock(NLW_inst_m_axi_awlock_UNCONNECTED[1:0]),
        .m_axi_awprot(NLW_inst_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_inst_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awsize(NLW_inst_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awvalid(NLW_inst_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_bready(NLW_inst_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_wdata(NLW_inst_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_inst_m_axi_wid_UNCONNECTED[5:0]),
        .m_axi_wlast(NLW_inst_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_inst_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wvalid(NLW_inst_m_axi_wvalid_UNCONNECTED),
        .pixelClock(pixelClock),
        .pixelClockx5(pixelClockx5),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock({1'b0,1'b0}),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(s_axi_arready),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock({1'b0,1'b0}),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(s_axi_awready),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(NLW_inst_s_axi_bid_UNCONNECTED[5:0]),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(NLW_inst_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata({NLW_inst_s_axi_rdata_UNCONNECTED[63:43],\^s_axi_rdata }),
        .s_axi_rid(NLW_inst_s_axi_rid_UNCONNECTED[5:0]),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(NLW_inst_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_wdata[31:0]}),
        .s_axi_wid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "audio_clock_regeneration_packet" *) 
module blockone_videomodule_0_0_audio_clock_regeneration_packet
   (\parity_reg[1][0] ,
    \counter_reg[3] ,
    \counter_reg[4] ,
    E,
    \cycle_time_stamp_reg[7]_0 ,
    \cycle_time_stamp_reg[3]_0 ,
    last_clk_audio_counter_wrap_reg,
    source_product_description_info_frame_sent_reg,
    sample_buffer_ready_reg,
    audio_info_frame_sent_reg,
    D,
    \counter_reg[3]_0 ,
    \counter_reg[4]_0 ,
    \counter_reg[3]_1 ,
    \parity_reg[2][0] ,
    \counter_reg[4]_1 ,
    \counter_reg[4]_2 ,
    \counter_reg[3]_2 ,
    \counter_reg[3]_3 ,
    \audio_sample_word_packet_reg[2][0][23] ,
    \counter_reg[0] ,
    \counter_reg[4]_3 ,
    \counter_reg[3]_4 ,
    \counter_reg[1] ,
    \packet_type_reg[7] ,
    \packet_type_reg[2] ,
    \packet_type_reg[1] ,
    \packet_type_reg[0] ,
    pixelClock,
    audiosampleclk,
    \parity_reg[1][7] ,
    \parity_reg[1][7]_0 ,
    \parity_reg[1][7]_1 ,
    \true_hdmi_output.data_island_data[8]_i_10_0 ,
    \true_hdmi_output.data_island_data[8]_i_10_1 ,
    \packet_type_reg[7]_0 ,
    Q,
    \parity[2][7]_i_9 ,
    \parity[1][7]_i_12_0 ,
    \parity_reg[0][7]_i_35_0 ,
    sample_buffer_ready,
    \true_hdmi_output.packet_enable ,
    \packet_type_reg[1]_0 ,
    \packet_type_reg[2]_0 ,
    \parity_reg[1][6] ,
    \parity[0][7]_i_13_0 ,
    \parity[0][7]_i_13_1 ,
    source_product_description_info_frame_sent,
    auxiliary_video_information_info_frame_sent,
    audio_info_frame_sent,
    \true_hdmi_output.data_island_data_reg[5] ,
    \true_hdmi_output.data_island_data_reg[5]_0 ,
    \parity_reg[1][6]_0 ,
    \parity_reg[1][1] ,
    \parity_reg[1][1]_0 ,
    \true_hdmi_output.data_island_data_reg[7] ,
    \parity_reg[3][6] ,
    \parity_reg[2][6] ,
    \parity_reg[2][6]_0 ,
    \parity_reg[2][6]_1 ,
    \true_hdmi_output.data_island_data_reg[6] ,
    \parity[2][7]_i_2_0 ,
    \true_hdmi_output.data_island_data_reg[4] ,
    \parity[0][7]_i_4 ,
    \parity[0][7]_i_4_0 ,
    \parity_reg[1][6]_1 ,
    \true_hdmi_output.data_island_data_reg[8] ,
    \true_hdmi_output.data_island_data_reg[8]_0 ,
    \parity[0][7]_i_3 ,
    \parity[0][7]_i_3_0 ,
    \true_hdmi_output.data_island_data[8]_i_5_0 ,
    \parity[3][7]_i_2 ,
    \packet_type_reg[2]_1 ,
    \packet_type_reg[1]_1 ,
    packet_type,
    \packet_type_reg[0]_0 );
  output [1:0]\parity_reg[1][0] ;
  output \counter_reg[3] ;
  output \counter_reg[4] ;
  output [0:0]E;
  output \cycle_time_stamp_reg[7]_0 ;
  output \cycle_time_stamp_reg[3]_0 ;
  output last_clk_audio_counter_wrap_reg;
  output source_product_description_info_frame_sent_reg;
  output sample_buffer_ready_reg;
  output audio_info_frame_sent_reg;
  output [0:0]D;
  output \counter_reg[3]_0 ;
  output \counter_reg[4]_0 ;
  output \counter_reg[3]_1 ;
  output [0:0]\parity_reg[2][0] ;
  output \counter_reg[4]_1 ;
  output \counter_reg[4]_2 ;
  output \counter_reg[3]_2 ;
  output \counter_reg[3]_3 ;
  output \audio_sample_word_packet_reg[2][0][23] ;
  output \counter_reg[0] ;
  output \counter_reg[4]_3 ;
  output \counter_reg[3]_4 ;
  output \counter_reg[1] ;
  output \packet_type_reg[7] ;
  output \packet_type_reg[2] ;
  output \packet_type_reg[1] ;
  output \packet_type_reg[0] ;
  input pixelClock;
  input audiosampleclk;
  input \parity_reg[1][7] ;
  input [1:0]\parity_reg[1][7]_0 ;
  input \parity_reg[1][7]_1 ;
  input \true_hdmi_output.data_island_data[8]_i_10_0 ;
  input \true_hdmi_output.data_island_data[8]_i_10_1 ;
  input \packet_type_reg[7]_0 ;
  input [6:0]Q;
  input [7:0]\parity[2][7]_i_9 ;
  input [7:0]\parity[1][7]_i_12_0 ;
  input [6:0]\parity_reg[0][7]_i_35_0 ;
  input sample_buffer_ready;
  input \true_hdmi_output.packet_enable ;
  input \packet_type_reg[1]_0 ;
  input \packet_type_reg[2]_0 ;
  input [4:0]\parity_reg[1][6] ;
  input \parity[0][7]_i_13_0 ;
  input \parity[0][7]_i_13_1 ;
  input source_product_description_info_frame_sent;
  input auxiliary_video_information_info_frame_sent;
  input audio_info_frame_sent;
  input \true_hdmi_output.data_island_data_reg[5] ;
  input \true_hdmi_output.data_island_data_reg[5]_0 ;
  input \parity_reg[1][6]_0 ;
  input \parity_reg[1][1] ;
  input \parity_reg[1][1]_0 ;
  input \true_hdmi_output.data_island_data_reg[7] ;
  input \parity_reg[3][6] ;
  input [0:0]\parity_reg[2][6] ;
  input \parity_reg[2][6]_0 ;
  input \parity_reg[2][6]_1 ;
  input \true_hdmi_output.data_island_data_reg[6] ;
  input \parity[2][7]_i_2_0 ;
  input \true_hdmi_output.data_island_data_reg[4] ;
  input \parity[0][7]_i_4 ;
  input \parity[0][7]_i_4_0 ;
  input \parity_reg[1][6]_1 ;
  input \true_hdmi_output.data_island_data_reg[8] ;
  input \true_hdmi_output.data_island_data_reg[8]_0 ;
  input \parity[0][7]_i_3 ;
  input \parity[0][7]_i_3_0 ;
  input \true_hdmi_output.data_island_data[8]_i_5_0 ;
  input \parity[3][7]_i_2 ;
  input \packet_type_reg[2]_1 ;
  input \packet_type_reg[1]_1 ;
  input [1:0]packet_type;
  input \packet_type_reg[0]_0 ;

  wire [0:0]D;
  wire [0:0]E;
  wire [6:0]Q;
  wire audio_info_frame_sent;
  wire audio_info_frame_sent_reg;
  wire \audio_sample_word_packet_reg[2][0][23] ;
  wire audiosampleclk;
  wire auxiliary_video_information_info_frame_sent;
  wire [5:0]clk_audio_counter;
  wire \clk_audio_counter[5]_i_1_n_0 ;
  wire clk_audio_counter_wrap;
  wire clk_audio_counter_wrap_i_1_n_0;
  wire clk_audio_counter_wrap_i_2_n_0;
  wire \clk_audio_counter_wrap_synchronizer_chain_reg_n_0_[0] ;
  wire \counter_reg[0] ;
  wire \counter_reg[1] ;
  wire \counter_reg[3] ;
  wire \counter_reg[3]_0 ;
  wire \counter_reg[3]_1 ;
  wire \counter_reg[3]_2 ;
  wire \counter_reg[3]_3 ;
  wire \counter_reg[3]_4 ;
  wire \counter_reg[4] ;
  wire \counter_reg[4]_0 ;
  wire \counter_reg[4]_1 ;
  wire \counter_reg[4]_2 ;
  wire \counter_reg[4]_3 ;
  wire \cycle_time_stamp[0]_i_1_n_0 ;
  wire \cycle_time_stamp_counter[0]_i_2_n_0 ;
  wire [14:0]cycle_time_stamp_counter_reg;
  wire \cycle_time_stamp_counter_reg[0]_i_1_n_0 ;
  wire \cycle_time_stamp_counter_reg[0]_i_1_n_1 ;
  wire \cycle_time_stamp_counter_reg[0]_i_1_n_2 ;
  wire \cycle_time_stamp_counter_reg[0]_i_1_n_3 ;
  wire \cycle_time_stamp_counter_reg[0]_i_1_n_4 ;
  wire \cycle_time_stamp_counter_reg[0]_i_1_n_5 ;
  wire \cycle_time_stamp_counter_reg[0]_i_1_n_6 ;
  wire \cycle_time_stamp_counter_reg[0]_i_1_n_7 ;
  wire \cycle_time_stamp_counter_reg[12]_i_1_n_2 ;
  wire \cycle_time_stamp_counter_reg[12]_i_1_n_3 ;
  wire \cycle_time_stamp_counter_reg[12]_i_1_n_5 ;
  wire \cycle_time_stamp_counter_reg[12]_i_1_n_6 ;
  wire \cycle_time_stamp_counter_reg[12]_i_1_n_7 ;
  wire \cycle_time_stamp_counter_reg[4]_i_1_n_0 ;
  wire \cycle_time_stamp_counter_reg[4]_i_1_n_1 ;
  wire \cycle_time_stamp_counter_reg[4]_i_1_n_2 ;
  wire \cycle_time_stamp_counter_reg[4]_i_1_n_3 ;
  wire \cycle_time_stamp_counter_reg[4]_i_1_n_4 ;
  wire \cycle_time_stamp_counter_reg[4]_i_1_n_5 ;
  wire \cycle_time_stamp_counter_reg[4]_i_1_n_6 ;
  wire \cycle_time_stamp_counter_reg[4]_i_1_n_7 ;
  wire \cycle_time_stamp_counter_reg[8]_i_1_n_0 ;
  wire \cycle_time_stamp_counter_reg[8]_i_1_n_1 ;
  wire \cycle_time_stamp_counter_reg[8]_i_1_n_2 ;
  wire \cycle_time_stamp_counter_reg[8]_i_1_n_3 ;
  wire \cycle_time_stamp_counter_reg[8]_i_1_n_4 ;
  wire \cycle_time_stamp_counter_reg[8]_i_1_n_5 ;
  wire \cycle_time_stamp_counter_reg[8]_i_1_n_6 ;
  wire \cycle_time_stamp_counter_reg[8]_i_1_n_7 ;
  wire \cycle_time_stamp_reg[12]_i_1_n_0 ;
  wire \cycle_time_stamp_reg[12]_i_1_n_1 ;
  wire \cycle_time_stamp_reg[12]_i_1_n_2 ;
  wire \cycle_time_stamp_reg[12]_i_1_n_3 ;
  wire \cycle_time_stamp_reg[12]_i_1_n_4 ;
  wire \cycle_time_stamp_reg[12]_i_1_n_5 ;
  wire \cycle_time_stamp_reg[12]_i_1_n_6 ;
  wire \cycle_time_stamp_reg[12]_i_1_n_7 ;
  wire \cycle_time_stamp_reg[14]_i_1_n_3 ;
  wire \cycle_time_stamp_reg[14]_i_1_n_6 ;
  wire \cycle_time_stamp_reg[14]_i_1_n_7 ;
  wire \cycle_time_stamp_reg[3]_0 ;
  wire \cycle_time_stamp_reg[4]_i_1_n_0 ;
  wire \cycle_time_stamp_reg[4]_i_1_n_1 ;
  wire \cycle_time_stamp_reg[4]_i_1_n_2 ;
  wire \cycle_time_stamp_reg[4]_i_1_n_3 ;
  wire \cycle_time_stamp_reg[4]_i_1_n_4 ;
  wire \cycle_time_stamp_reg[4]_i_1_n_5 ;
  wire \cycle_time_stamp_reg[4]_i_1_n_6 ;
  wire \cycle_time_stamp_reg[4]_i_1_n_7 ;
  wire \cycle_time_stamp_reg[7]_0 ;
  wire \cycle_time_stamp_reg[8]_i_1_n_0 ;
  wire \cycle_time_stamp_reg[8]_i_1_n_1 ;
  wire \cycle_time_stamp_reg[8]_i_1_n_2 ;
  wire \cycle_time_stamp_reg[8]_i_1_n_3 ;
  wire \cycle_time_stamp_reg[8]_i_1_n_4 ;
  wire \cycle_time_stamp_reg[8]_i_1_n_5 ;
  wire \cycle_time_stamp_reg[8]_i_1_n_6 ;
  wire \cycle_time_stamp_reg[8]_i_1_n_7 ;
  wire internal_clk_audio_counter_wrap;
  wire internal_clk_audio_counter_wrap_i_1_n_0;
  wire last_clk_audio_counter_wrap_reg;
  wire p_1_in;
  wire [5:0]p_1_in__0;
  wire [1:0]packet_type;
  wire \packet_type[7]_i_3_n_0 ;
  wire \packet_type_reg[0] ;
  wire \packet_type_reg[0]_0 ;
  wire \packet_type_reg[1] ;
  wire \packet_type_reg[1]_0 ;
  wire \packet_type_reg[1]_1 ;
  wire \packet_type_reg[2] ;
  wire \packet_type_reg[2]_0 ;
  wire \packet_type_reg[2]_1 ;
  wire \packet_type_reg[7] ;
  wire \packet_type_reg[7]_0 ;
  wire \parity[0][7]_i_13_0 ;
  wire \parity[0][7]_i_13_1 ;
  wire \parity[0][7]_i_13_n_0 ;
  wire \parity[0][7]_i_17_n_0 ;
  wire \parity[0][7]_i_3 ;
  wire \parity[0][7]_i_31_n_0 ;
  wire \parity[0][7]_i_33_n_0 ;
  wire \parity[0][7]_i_3_0 ;
  wire \parity[0][7]_i_4 ;
  wire \parity[0][7]_i_43_n_0 ;
  wire \parity[0][7]_i_45_n_0 ;
  wire \parity[0][7]_i_4_0 ;
  wire [7:0]\parity[1][7]_i_12_0 ;
  wire \parity[1][7]_i_12_n_0 ;
  wire \parity[1][7]_i_21_n_0 ;
  wire \parity[1][7]_i_30_n_0 ;
  wire \parity[1][7]_i_37_n_0 ;
  wire \parity[1][7]_i_39_n_0 ;
  wire \parity[1][7]_i_47_n_0 ;
  wire \parity[1][7]_i_49_n_0 ;
  wire \parity[1][7]_i_8_n_0 ;
  wire \parity[2][7]_i_2_0 ;
  wire \parity[2][7]_i_34_n_0 ;
  wire \parity[2][7]_i_35_n_0 ;
  wire \parity[2][7]_i_36_n_0 ;
  wire \parity[2][7]_i_45_n_0 ;
  wire \parity[2][7]_i_46_n_0 ;
  wire \parity[2][7]_i_47_n_0 ;
  wire \parity[2][7]_i_48_n_0 ;
  wire \parity[2][7]_i_5_n_0 ;
  wire [7:0]\parity[2][7]_i_9 ;
  wire \parity[3][6]_i_16_n_0 ;
  wire \parity[3][6]_i_17_n_0 ;
  wire \parity[3][6]_i_18_n_0 ;
  wire \parity[3][6]_i_19_n_0 ;
  wire \parity[3][6]_i_4_n_0 ;
  wire \parity[3][6]_i_9_n_0 ;
  wire \parity[3][7]_i_15_n_0 ;
  wire \parity[3][7]_i_16_n_0 ;
  wire \parity[3][7]_i_17_n_0 ;
  wire \parity[3][7]_i_2 ;
  wire \parity_reg[0][7]_i_14_n_0 ;
  wire \parity_reg[0][7]_i_18_n_0 ;
  wire \parity_reg[0][7]_i_34_n_0 ;
  wire [6:0]\parity_reg[0][7]_i_35_0 ;
  wire \parity_reg[0][7]_i_35_n_0 ;
  wire [1:0]\parity_reg[1][0] ;
  wire \parity_reg[1][1] ;
  wire \parity_reg[1][1]_0 ;
  wire [4:0]\parity_reg[1][6] ;
  wire \parity_reg[1][6]_0 ;
  wire \parity_reg[1][6]_1 ;
  wire \parity_reg[1][7] ;
  wire [1:0]\parity_reg[1][7]_0 ;
  wire \parity_reg[1][7]_1 ;
  wire \parity_reg[1][7]_i_17_n_0 ;
  wire \parity_reg[1][7]_i_18_n_0 ;
  wire \parity_reg[1][7]_i_31_n_0 ;
  wire \parity_reg[1][7]_i_7_n_0 ;
  wire [0:0]\parity_reg[2][0] ;
  wire [0:0]\parity_reg[2][6] ;
  wire \parity_reg[2][6]_0 ;
  wire \parity_reg[2][6]_1 ;
  wire \parity_reg[2][7]_i_13_n_0 ;
  wire \parity_reg[2][7]_i_26_n_0 ;
  wire \parity_reg[2][7]_i_27_n_0 ;
  wire \parity_reg[3][6] ;
  wire \parity_reg[3][6]_i_10_n_0 ;
  wire \parity_reg[3][6]_i_11_n_0 ;
  wire \parity_reg[3][6]_i_5_n_0 ;
  wire pixelClock;
  wire sample_buffer_ready;
  wire sample_buffer_ready_reg;
  wire sample_buffer_used1;
  wire source_product_description_info_frame_sent;
  wire source_product_description_info_frame_sent_i_2_n_0;
  wire source_product_description_info_frame_sent_reg;
  wire [31:16]\subs[1][3]_5 ;
  wire \true_hdmi_output.data_island_data[8]_i_10_0 ;
  wire \true_hdmi_output.data_island_data[8]_i_10_1 ;
  wire \true_hdmi_output.data_island_data[8]_i_10_n_0 ;
  wire \true_hdmi_output.data_island_data[8]_i_18_n_0 ;
  wire \true_hdmi_output.data_island_data[8]_i_19_n_0 ;
  wire \true_hdmi_output.data_island_data[8]_i_5_0 ;
  wire \true_hdmi_output.data_island_data[8]_i_5_n_0 ;
  wire \true_hdmi_output.data_island_data_reg[4] ;
  wire \true_hdmi_output.data_island_data_reg[5] ;
  wire \true_hdmi_output.data_island_data_reg[5]_0 ;
  wire \true_hdmi_output.data_island_data_reg[6] ;
  wire \true_hdmi_output.data_island_data_reg[7] ;
  wire \true_hdmi_output.data_island_data_reg[8] ;
  wire \true_hdmi_output.data_island_data_reg[8]_0 ;
  wire \true_hdmi_output.data_island_data_reg[8]_i_11_n_0 ;
  wire \true_hdmi_output.data_island_data_reg[8]_i_12_n_0 ;
  wire \true_hdmi_output.packet_enable ;
  wire [31:17]\true_hdmi_output.sub[0]_23 ;
  wire [30:17]\true_hdmi_output.sub[1]_0 ;
  wire [3:2]\NLW_cycle_time_stamp_counter_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_cycle_time_stamp_counter_reg[12]_i_1_O_UNCONNECTED ;
  wire [3:1]\NLW_cycle_time_stamp_reg[14]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_cycle_time_stamp_reg[14]_i_1_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h00000000BAAAAABA)) 
    audio_info_frame_sent_i_1
       (.I0(audio_info_frame_sent),
        .I1(sample_buffer_ready),
        .I2(\true_hdmi_output.packet_enable ),
        .I3(\packet_type_reg[1]_0 ),
        .I4(clk_audio_counter_wrap),
        .I5(\packet_type_reg[2]_0 ),
        .O(audio_info_frame_sent_reg));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h20000020)) 
    \audio_sample_word_packet[3][1][23]_i_1 
       (.I0(\true_hdmi_output.packet_enable ),
        .I1(\packet_type_reg[2]_0 ),
        .I2(sample_buffer_ready),
        .I3(clk_audio_counter_wrap),
        .I4(\packet_type_reg[1]_0 ),
        .O(E));
  LUT6 #(
    .INIT(64'h00000000FF04FF00)) 
    auxiliary_video_information_info_frame_sent_i_1
       (.I0(sample_buffer_used1),
        .I1(\true_hdmi_output.packet_enable ),
        .I2(sample_buffer_ready),
        .I3(auxiliary_video_information_info_frame_sent),
        .I4(audio_info_frame_sent),
        .I5(\packet_type_reg[2]_0 ),
        .O(sample_buffer_ready_reg));
  LUT1 #(
    .INIT(2'h1)) 
    \clk_audio_counter[0]_i_1 
       (.I0(clk_audio_counter[0]),
        .O(p_1_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \clk_audio_counter[1]_i_1 
       (.I0(clk_audio_counter[0]),
        .I1(clk_audio_counter[1]),
        .O(p_1_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \clk_audio_counter[2]_i_1 
       (.I0(clk_audio_counter[0]),
        .I1(clk_audio_counter[1]),
        .I2(clk_audio_counter[2]),
        .O(p_1_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \clk_audio_counter[3]_i_1 
       (.I0(clk_audio_counter[1]),
        .I1(clk_audio_counter[0]),
        .I2(clk_audio_counter[2]),
        .I3(clk_audio_counter[3]),
        .O(p_1_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \clk_audio_counter[4]_i_1 
       (.I0(clk_audio_counter[2]),
        .I1(clk_audio_counter[0]),
        .I2(clk_audio_counter[1]),
        .I3(clk_audio_counter[3]),
        .I4(clk_audio_counter[4]),
        .O(p_1_in__0[4]));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \clk_audio_counter[5]_i_1 
       (.I0(clk_audio_counter[3]),
        .I1(clk_audio_counter[1]),
        .I2(clk_audio_counter[2]),
        .I3(clk_audio_counter[0]),
        .I4(clk_audio_counter[5]),
        .I5(clk_audio_counter[4]),
        .O(\clk_audio_counter[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \clk_audio_counter[5]_i_2 
       (.I0(clk_audio_counter[3]),
        .I1(clk_audio_counter[1]),
        .I2(clk_audio_counter[0]),
        .I3(clk_audio_counter[2]),
        .I4(clk_audio_counter[4]),
        .I5(clk_audio_counter[5]),
        .O(p_1_in__0[5]));
  FDRE #(
    .INIT(1'b0)) 
    \clk_audio_counter_reg[0] 
       (.C(audiosampleclk),
        .CE(1'b1),
        .D(p_1_in__0[0]),
        .Q(clk_audio_counter[0]),
        .R(\clk_audio_counter[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_audio_counter_reg[1] 
       (.C(audiosampleclk),
        .CE(1'b1),
        .D(p_1_in__0[1]),
        .Q(clk_audio_counter[1]),
        .R(\clk_audio_counter[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_audio_counter_reg[2] 
       (.C(audiosampleclk),
        .CE(1'b1),
        .D(p_1_in__0[2]),
        .Q(clk_audio_counter[2]),
        .R(\clk_audio_counter[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_audio_counter_reg[3] 
       (.C(audiosampleclk),
        .CE(1'b1),
        .D(p_1_in__0[3]),
        .Q(clk_audio_counter[3]),
        .R(\clk_audio_counter[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_audio_counter_reg[4] 
       (.C(audiosampleclk),
        .CE(1'b1),
        .D(p_1_in__0[4]),
        .Q(clk_audio_counter[4]),
        .R(\clk_audio_counter[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_audio_counter_reg[5] 
       (.C(audiosampleclk),
        .CE(1'b1),
        .D(p_1_in__0[5]),
        .Q(clk_audio_counter[5]),
        .R(\clk_audio_counter[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    clk_audio_counter_wrap_i_1
       (.I0(\clk_audio_counter_wrap_synchronizer_chain_reg_n_0_[0] ),
        .I1(p_1_in),
        .O(clk_audio_counter_wrap_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT1 #(
    .INIT(2'h1)) 
    clk_audio_counter_wrap_i_2
       (.I0(clk_audio_counter_wrap),
        .O(clk_audio_counter_wrap_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clk_audio_counter_wrap_reg
       (.C(pixelClock),
        .CE(clk_audio_counter_wrap_i_1_n_0),
        .D(clk_audio_counter_wrap_i_2_n_0),
        .Q(clk_audio_counter_wrap),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_audio_counter_wrap_synchronizer_chain_reg[0] 
       (.C(pixelClock),
        .CE(1'b1),
        .D(p_1_in),
        .Q(\clk_audio_counter_wrap_synchronizer_chain_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_audio_counter_wrap_synchronizer_chain_reg[1] 
       (.C(pixelClock),
        .CE(1'b1),
        .D(internal_clk_audio_counter_wrap),
        .Q(p_1_in),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \cycle_time_stamp[0]_i_1 
       (.I0(cycle_time_stamp_counter_reg[0]),
        .O(\cycle_time_stamp[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cycle_time_stamp_counter[0]_i_2 
       (.I0(cycle_time_stamp_counter_reg[0]),
        .O(\cycle_time_stamp_counter[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cycle_time_stamp_counter_reg[0] 
       (.C(pixelClock),
        .CE(1'b1),
        .D(\cycle_time_stamp_counter_reg[0]_i_1_n_7 ),
        .Q(cycle_time_stamp_counter_reg[0]),
        .R(clk_audio_counter_wrap_i_1_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cycle_time_stamp_counter_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\cycle_time_stamp_counter_reg[0]_i_1_n_0 ,\cycle_time_stamp_counter_reg[0]_i_1_n_1 ,\cycle_time_stamp_counter_reg[0]_i_1_n_2 ,\cycle_time_stamp_counter_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\cycle_time_stamp_counter_reg[0]_i_1_n_4 ,\cycle_time_stamp_counter_reg[0]_i_1_n_5 ,\cycle_time_stamp_counter_reg[0]_i_1_n_6 ,\cycle_time_stamp_counter_reg[0]_i_1_n_7 }),
        .S({cycle_time_stamp_counter_reg[3:1],\cycle_time_stamp_counter[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cycle_time_stamp_counter_reg[10] 
       (.C(pixelClock),
        .CE(1'b1),
        .D(\cycle_time_stamp_counter_reg[8]_i_1_n_5 ),
        .Q(cycle_time_stamp_counter_reg[10]),
        .R(clk_audio_counter_wrap_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cycle_time_stamp_counter_reg[11] 
       (.C(pixelClock),
        .CE(1'b1),
        .D(\cycle_time_stamp_counter_reg[8]_i_1_n_4 ),
        .Q(cycle_time_stamp_counter_reg[11]),
        .R(clk_audio_counter_wrap_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cycle_time_stamp_counter_reg[12] 
       (.C(pixelClock),
        .CE(1'b1),
        .D(\cycle_time_stamp_counter_reg[12]_i_1_n_7 ),
        .Q(cycle_time_stamp_counter_reg[12]),
        .R(clk_audio_counter_wrap_i_1_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cycle_time_stamp_counter_reg[12]_i_1 
       (.CI(\cycle_time_stamp_counter_reg[8]_i_1_n_0 ),
        .CO({\NLW_cycle_time_stamp_counter_reg[12]_i_1_CO_UNCONNECTED [3:2],\cycle_time_stamp_counter_reg[12]_i_1_n_2 ,\cycle_time_stamp_counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_cycle_time_stamp_counter_reg[12]_i_1_O_UNCONNECTED [3],\cycle_time_stamp_counter_reg[12]_i_1_n_5 ,\cycle_time_stamp_counter_reg[12]_i_1_n_6 ,\cycle_time_stamp_counter_reg[12]_i_1_n_7 }),
        .S({1'b0,cycle_time_stamp_counter_reg[14:12]}));
  FDRE #(
    .INIT(1'b0)) 
    \cycle_time_stamp_counter_reg[13] 
       (.C(pixelClock),
        .CE(1'b1),
        .D(\cycle_time_stamp_counter_reg[12]_i_1_n_6 ),
        .Q(cycle_time_stamp_counter_reg[13]),
        .R(clk_audio_counter_wrap_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cycle_time_stamp_counter_reg[14] 
       (.C(pixelClock),
        .CE(1'b1),
        .D(\cycle_time_stamp_counter_reg[12]_i_1_n_5 ),
        .Q(cycle_time_stamp_counter_reg[14]),
        .R(clk_audio_counter_wrap_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cycle_time_stamp_counter_reg[1] 
       (.C(pixelClock),
        .CE(1'b1),
        .D(\cycle_time_stamp_counter_reg[0]_i_1_n_6 ),
        .Q(cycle_time_stamp_counter_reg[1]),
        .R(clk_audio_counter_wrap_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cycle_time_stamp_counter_reg[2] 
       (.C(pixelClock),
        .CE(1'b1),
        .D(\cycle_time_stamp_counter_reg[0]_i_1_n_5 ),
        .Q(cycle_time_stamp_counter_reg[2]),
        .R(clk_audio_counter_wrap_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cycle_time_stamp_counter_reg[3] 
       (.C(pixelClock),
        .CE(1'b1),
        .D(\cycle_time_stamp_counter_reg[0]_i_1_n_4 ),
        .Q(cycle_time_stamp_counter_reg[3]),
        .R(clk_audio_counter_wrap_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cycle_time_stamp_counter_reg[4] 
       (.C(pixelClock),
        .CE(1'b1),
        .D(\cycle_time_stamp_counter_reg[4]_i_1_n_7 ),
        .Q(cycle_time_stamp_counter_reg[4]),
        .R(clk_audio_counter_wrap_i_1_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cycle_time_stamp_counter_reg[4]_i_1 
       (.CI(\cycle_time_stamp_counter_reg[0]_i_1_n_0 ),
        .CO({\cycle_time_stamp_counter_reg[4]_i_1_n_0 ,\cycle_time_stamp_counter_reg[4]_i_1_n_1 ,\cycle_time_stamp_counter_reg[4]_i_1_n_2 ,\cycle_time_stamp_counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cycle_time_stamp_counter_reg[4]_i_1_n_4 ,\cycle_time_stamp_counter_reg[4]_i_1_n_5 ,\cycle_time_stamp_counter_reg[4]_i_1_n_6 ,\cycle_time_stamp_counter_reg[4]_i_1_n_7 }),
        .S(cycle_time_stamp_counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \cycle_time_stamp_counter_reg[5] 
       (.C(pixelClock),
        .CE(1'b1),
        .D(\cycle_time_stamp_counter_reg[4]_i_1_n_6 ),
        .Q(cycle_time_stamp_counter_reg[5]),
        .R(clk_audio_counter_wrap_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cycle_time_stamp_counter_reg[6] 
       (.C(pixelClock),
        .CE(1'b1),
        .D(\cycle_time_stamp_counter_reg[4]_i_1_n_5 ),
        .Q(cycle_time_stamp_counter_reg[6]),
        .R(clk_audio_counter_wrap_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cycle_time_stamp_counter_reg[7] 
       (.C(pixelClock),
        .CE(1'b1),
        .D(\cycle_time_stamp_counter_reg[4]_i_1_n_4 ),
        .Q(cycle_time_stamp_counter_reg[7]),
        .R(clk_audio_counter_wrap_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cycle_time_stamp_counter_reg[8] 
       (.C(pixelClock),
        .CE(1'b1),
        .D(\cycle_time_stamp_counter_reg[8]_i_1_n_7 ),
        .Q(cycle_time_stamp_counter_reg[8]),
        .R(clk_audio_counter_wrap_i_1_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cycle_time_stamp_counter_reg[8]_i_1 
       (.CI(\cycle_time_stamp_counter_reg[4]_i_1_n_0 ),
        .CO({\cycle_time_stamp_counter_reg[8]_i_1_n_0 ,\cycle_time_stamp_counter_reg[8]_i_1_n_1 ,\cycle_time_stamp_counter_reg[8]_i_1_n_2 ,\cycle_time_stamp_counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cycle_time_stamp_counter_reg[8]_i_1_n_4 ,\cycle_time_stamp_counter_reg[8]_i_1_n_5 ,\cycle_time_stamp_counter_reg[8]_i_1_n_6 ,\cycle_time_stamp_counter_reg[8]_i_1_n_7 }),
        .S(cycle_time_stamp_counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \cycle_time_stamp_counter_reg[9] 
       (.C(pixelClock),
        .CE(1'b1),
        .D(\cycle_time_stamp_counter_reg[8]_i_1_n_6 ),
        .Q(cycle_time_stamp_counter_reg[9]),
        .R(clk_audio_counter_wrap_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cycle_time_stamp_reg[0] 
       (.C(pixelClock),
        .CE(clk_audio_counter_wrap_i_1_n_0),
        .D(\cycle_time_stamp[0]_i_1_n_0 ),
        .Q(\subs[1][3]_5 [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cycle_time_stamp_reg[10] 
       (.C(pixelClock),
        .CE(clk_audio_counter_wrap_i_1_n_0),
        .D(\cycle_time_stamp_reg[12]_i_1_n_6 ),
        .Q(\subs[1][3]_5 [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cycle_time_stamp_reg[11] 
       (.C(pixelClock),
        .CE(clk_audio_counter_wrap_i_1_n_0),
        .D(\cycle_time_stamp_reg[12]_i_1_n_5 ),
        .Q(\subs[1][3]_5 [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cycle_time_stamp_reg[12] 
       (.C(pixelClock),
        .CE(clk_audio_counter_wrap_i_1_n_0),
        .D(\cycle_time_stamp_reg[12]_i_1_n_4 ),
        .Q(\subs[1][3]_5 [20]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cycle_time_stamp_reg[12]_i_1 
       (.CI(\cycle_time_stamp_reg[8]_i_1_n_0 ),
        .CO({\cycle_time_stamp_reg[12]_i_1_n_0 ,\cycle_time_stamp_reg[12]_i_1_n_1 ,\cycle_time_stamp_reg[12]_i_1_n_2 ,\cycle_time_stamp_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cycle_time_stamp_reg[12]_i_1_n_4 ,\cycle_time_stamp_reg[12]_i_1_n_5 ,\cycle_time_stamp_reg[12]_i_1_n_6 ,\cycle_time_stamp_reg[12]_i_1_n_7 }),
        .S(cycle_time_stamp_counter_reg[12:9]));
  FDRE #(
    .INIT(1'b0)) 
    \cycle_time_stamp_reg[13] 
       (.C(pixelClock),
        .CE(clk_audio_counter_wrap_i_1_n_0),
        .D(\cycle_time_stamp_reg[14]_i_1_n_7 ),
        .Q(\subs[1][3]_5 [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cycle_time_stamp_reg[14] 
       (.C(pixelClock),
        .CE(clk_audio_counter_wrap_i_1_n_0),
        .D(\cycle_time_stamp_reg[14]_i_1_n_6 ),
        .Q(\subs[1][3]_5 [22]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cycle_time_stamp_reg[14]_i_1 
       (.CI(\cycle_time_stamp_reg[12]_i_1_n_0 ),
        .CO({\NLW_cycle_time_stamp_reg[14]_i_1_CO_UNCONNECTED [3:1],\cycle_time_stamp_reg[14]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_cycle_time_stamp_reg[14]_i_1_O_UNCONNECTED [3:2],\cycle_time_stamp_reg[14]_i_1_n_6 ,\cycle_time_stamp_reg[14]_i_1_n_7 }),
        .S({1'b0,1'b0,cycle_time_stamp_counter_reg[14:13]}));
  FDRE #(
    .INIT(1'b0)) 
    \cycle_time_stamp_reg[1] 
       (.C(pixelClock),
        .CE(clk_audio_counter_wrap_i_1_n_0),
        .D(\cycle_time_stamp_reg[4]_i_1_n_7 ),
        .Q(\subs[1][3]_5 [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cycle_time_stamp_reg[2] 
       (.C(pixelClock),
        .CE(clk_audio_counter_wrap_i_1_n_0),
        .D(\cycle_time_stamp_reg[4]_i_1_n_6 ),
        .Q(\subs[1][3]_5 [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cycle_time_stamp_reg[3] 
       (.C(pixelClock),
        .CE(clk_audio_counter_wrap_i_1_n_0),
        .D(\cycle_time_stamp_reg[4]_i_1_n_5 ),
        .Q(\subs[1][3]_5 [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cycle_time_stamp_reg[4] 
       (.C(pixelClock),
        .CE(clk_audio_counter_wrap_i_1_n_0),
        .D(\cycle_time_stamp_reg[4]_i_1_n_4 ),
        .Q(\subs[1][3]_5 [28]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cycle_time_stamp_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\cycle_time_stamp_reg[4]_i_1_n_0 ,\cycle_time_stamp_reg[4]_i_1_n_1 ,\cycle_time_stamp_reg[4]_i_1_n_2 ,\cycle_time_stamp_reg[4]_i_1_n_3 }),
        .CYINIT(cycle_time_stamp_counter_reg[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cycle_time_stamp_reg[4]_i_1_n_4 ,\cycle_time_stamp_reg[4]_i_1_n_5 ,\cycle_time_stamp_reg[4]_i_1_n_6 ,\cycle_time_stamp_reg[4]_i_1_n_7 }),
        .S(cycle_time_stamp_counter_reg[4:1]));
  FDRE #(
    .INIT(1'b0)) 
    \cycle_time_stamp_reg[5] 
       (.C(pixelClock),
        .CE(clk_audio_counter_wrap_i_1_n_0),
        .D(\cycle_time_stamp_reg[8]_i_1_n_7 ),
        .Q(\subs[1][3]_5 [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cycle_time_stamp_reg[6] 
       (.C(pixelClock),
        .CE(clk_audio_counter_wrap_i_1_n_0),
        .D(\cycle_time_stamp_reg[8]_i_1_n_6 ),
        .Q(\subs[1][3]_5 [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cycle_time_stamp_reg[7] 
       (.C(pixelClock),
        .CE(clk_audio_counter_wrap_i_1_n_0),
        .D(\cycle_time_stamp_reg[8]_i_1_n_5 ),
        .Q(\subs[1][3]_5 [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cycle_time_stamp_reg[8] 
       (.C(pixelClock),
        .CE(clk_audio_counter_wrap_i_1_n_0),
        .D(\cycle_time_stamp_reg[8]_i_1_n_4 ),
        .Q(\subs[1][3]_5 [16]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cycle_time_stamp_reg[8]_i_1 
       (.CI(\cycle_time_stamp_reg[4]_i_1_n_0 ),
        .CO({\cycle_time_stamp_reg[8]_i_1_n_0 ,\cycle_time_stamp_reg[8]_i_1_n_1 ,\cycle_time_stamp_reg[8]_i_1_n_2 ,\cycle_time_stamp_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cycle_time_stamp_reg[8]_i_1_n_4 ,\cycle_time_stamp_reg[8]_i_1_n_5 ,\cycle_time_stamp_reg[8]_i_1_n_6 ,\cycle_time_stamp_reg[8]_i_1_n_7 }),
        .S(cycle_time_stamp_counter_reg[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \cycle_time_stamp_reg[9] 
       (.C(pixelClock),
        .CE(clk_audio_counter_wrap_i_1_n_0),
        .D(\cycle_time_stamp_reg[12]_i_1_n_7 ),
        .Q(\subs[1][3]_5 [17]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    internal_clk_audio_counter_wrap_i_1
       (.I0(\clk_audio_counter[5]_i_1_n_0 ),
        .I1(internal_clk_audio_counter_wrap),
        .O(internal_clk_audio_counter_wrap_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    internal_clk_audio_counter_wrap_reg
       (.C(audiosampleclk),
        .CE(1'b1),
        .D(internal_clk_audio_counter_wrap_i_1_n_0),
        .Q(internal_clk_audio_counter_wrap),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hAACA)) 
    last_clk_audio_counter_wrap_i_1
       (.I0(\packet_type_reg[1]_0 ),
        .I1(clk_audio_counter_wrap),
        .I2(\true_hdmi_output.packet_enable ),
        .I3(\packet_type_reg[2]_0 ),
        .O(last_clk_audio_counter_wrap_reg));
  LUT6 #(
    .INIT(64'hCACACACACAFAFACA)) 
    \packet_type[0]_i_1 
       (.I0(\packet_type_reg[0]_0 ),
        .I1(packet_type[0]),
        .I2(\true_hdmi_output.packet_enable ),
        .I3(\packet_type_reg[1]_0 ),
        .I4(clk_audio_counter_wrap),
        .I5(\packet_type_reg[2]_0 ),
        .O(\packet_type_reg[0] ));
  LUT6 #(
    .INIT(64'hCACACACACA0A0ACA)) 
    \packet_type[1]_i_1 
       (.I0(\packet_type_reg[1]_1 ),
        .I1(packet_type[1]),
        .I2(\true_hdmi_output.packet_enable ),
        .I3(\packet_type_reg[1]_0 ),
        .I4(clk_audio_counter_wrap),
        .I5(\packet_type_reg[2]_0 ),
        .O(\packet_type_reg[1] ));
  LUT6 #(
    .INIT(64'h3A3A3A3A0A0A0A3A)) 
    \packet_type[2]_i_1 
       (.I0(\packet_type_reg[2]_1 ),
        .I1(audio_info_frame_sent),
        .I2(\true_hdmi_output.packet_enable ),
        .I3(sample_buffer_used1),
        .I4(sample_buffer_ready),
        .I5(\packet_type_reg[2]_0 ),
        .O(\packet_type_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \packet_type[2]_i_2 
       (.I0(clk_audio_counter_wrap),
        .I1(\packet_type_reg[1]_0 ),
        .O(sample_buffer_used1));
  LUT6 #(
    .INIT(64'h000000002EEEEEEE)) 
    \packet_type[7]_i_1 
       (.I0(\packet_type_reg[7]_0 ),
        .I1(\true_hdmi_output.packet_enable ),
        .I2(auxiliary_video_information_info_frame_sent),
        .I3(source_product_description_info_frame_sent),
        .I4(audio_info_frame_sent),
        .I5(\packet_type[7]_i_3_n_0 ),
        .O(\packet_type_reg[7] ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h45540000)) 
    \packet_type[7]_i_3 
       (.I0(\packet_type_reg[2]_0 ),
        .I1(sample_buffer_ready),
        .I2(\packet_type_reg[1]_0 ),
        .I3(clk_audio_counter_wrap),
        .I4(\true_hdmi_output.packet_enable ),
        .O(\packet_type[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \parity[0][7]_i_13 
       (.I0(\true_hdmi_output.sub[0]_23 [31]),
        .I1(\parity_reg[1][6] [0]),
        .I2(\true_hdmi_output.sub[0]_23 [29]),
        .I3(\parity_reg[1][6] [1]),
        .I4(\cycle_time_stamp_reg[3]_0 ),
        .O(\parity[0][7]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \parity[0][7]_i_17 
       (.I0(\true_hdmi_output.sub[1]_0 [30]),
        .I1(\parity[0][7]_i_31_n_0 ),
        .I2(\parity_reg[1][6] [1]),
        .I3(\true_hdmi_output.sub[0]_23 [26]),
        .I4(\parity_reg[1][6] [0]),
        .I5(\parity[0][7]_i_33_n_0 ),
        .O(\parity[0][7]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h88B88888)) 
    \parity[0][7]_i_27 
       (.I0(\parity[0][7]_i_13_1 ),
        .I1(\packet_type_reg[7]_0 ),
        .I2(\true_hdmi_output.data_island_data[8]_i_10_1 ),
        .I3(\true_hdmi_output.data_island_data[8]_i_10_0 ),
        .I4(\subs[1][3]_5 [31]),
        .O(\true_hdmi_output.sub[0]_23 [31]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h88B88888)) 
    \parity[0][7]_i_28 
       (.I0(\parity[0][7]_i_13_0 ),
        .I1(\packet_type_reg[7]_0 ),
        .I2(\true_hdmi_output.data_island_data[8]_i_10_1 ),
        .I3(\true_hdmi_output.data_island_data[8]_i_10_0 ),
        .I4(\subs[1][3]_5 [29]),
        .O(\true_hdmi_output.sub[0]_23 [29]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \parity[0][7]_i_31 
       (.I0(\subs[1][3]_5 [28]),
        .I1(\true_hdmi_output.data_island_data[8]_i_10_0 ),
        .I2(\true_hdmi_output.data_island_data[8]_i_10_1 ),
        .I3(\packet_type_reg[7]_0 ),
        .O(\parity[0][7]_i_31_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \parity[0][7]_i_32 
       (.I0(\parity[0][7]_i_13_0 ),
        .I1(\packet_type_reg[7]_0 ),
        .I2(\true_hdmi_output.data_island_data[8]_i_10_1 ),
        .I3(\true_hdmi_output.data_island_data[8]_i_10_0 ),
        .I4(\subs[1][3]_5 [26]),
        .O(\true_hdmi_output.sub[0]_23 [26]));
  LUT4 #(
    .INIT(16'h0020)) 
    \parity[0][7]_i_33 
       (.I0(\subs[1][3]_5 [24]),
        .I1(\true_hdmi_output.data_island_data[8]_i_10_0 ),
        .I2(\true_hdmi_output.data_island_data[8]_i_10_1 ),
        .I3(\packet_type_reg[7]_0 ),
        .O(\parity[0][7]_i_33_n_0 ));
  LUT5 #(
    .INIT(32'h00005404)) 
    \parity[0][7]_i_43 
       (.I0(\true_hdmi_output.data_island_data[8]_i_10_0 ),
        .I1(\parity_reg[0][7]_i_35_0 [0]),
        .I2(\true_hdmi_output.data_island_data[8]_i_10_1 ),
        .I3(\subs[1][3]_5 [16]),
        .I4(\packet_type_reg[7]_0 ),
        .O(\parity[0][7]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h88888888B8BBB888)) 
    \parity[0][7]_i_44 
       (.I0(\parity[0][7]_i_13_0 ),
        .I1(\packet_type_reg[7]_0 ),
        .I2(\subs[1][3]_5 [18]),
        .I3(\true_hdmi_output.data_island_data[8]_i_10_1 ),
        .I4(\parity_reg[0][7]_i_35_0 [2]),
        .I5(\true_hdmi_output.data_island_data[8]_i_10_0 ),
        .O(\true_hdmi_output.sub[0]_23 [18]));
  LUT5 #(
    .INIT(32'h00005404)) 
    \parity[0][7]_i_45 
       (.I0(\true_hdmi_output.data_island_data[8]_i_10_0 ),
        .I1(\parity_reg[0][7]_i_35_0 [4]),
        .I2(\true_hdmi_output.data_island_data[8]_i_10_1 ),
        .I3(\subs[1][3]_5 [20]),
        .I4(\packet_type_reg[7]_0 ),
        .O(\parity[0][7]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'h88888888B8BBB888)) 
    \parity[0][7]_i_46 
       (.I0(\parity[0][7]_i_13_0 ),
        .I1(\packet_type_reg[7]_0 ),
        .I2(\subs[1][3]_5 [22]),
        .I3(\true_hdmi_output.data_island_data[8]_i_10_1 ),
        .I4(\parity_reg[0][7]_i_35_0 [6]),
        .I5(\true_hdmi_output.data_island_data[8]_i_10_0 ),
        .O(\true_hdmi_output.sub[0]_23 [22]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \parity[0][7]_i_6 
       (.I0(\parity[0][7]_i_13_n_0 ),
        .I1(\parity_reg[0][7]_i_14_n_0 ),
        .I2(\parity_reg[1][6] [3]),
        .I3(\parity[0][7]_i_3 ),
        .I4(\parity_reg[1][6] [2]),
        .I5(\parity[0][7]_i_3_0 ),
        .O(\counter_reg[3]_4 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \parity[0][7]_i_7 
       (.I0(\parity[0][7]_i_17_n_0 ),
        .I1(\parity_reg[0][7]_i_18_n_0 ),
        .I2(\parity_reg[1][6] [3]),
        .I3(\parity[0][7]_i_4 ),
        .I4(\parity_reg[1][6] [2]),
        .I5(\parity[0][7]_i_4_0 ),
        .O(\counter_reg[3]_3 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF33E200E2)) 
    \parity[1][1]_i_2 
       (.I0(\parity_reg[1][1] ),
        .I1(\parity_reg[1][6] [3]),
        .I2(\parity[1][7]_i_12_n_0 ),
        .I3(\parity_reg[1][6] [4]),
        .I4(\parity_reg[1][1]_0 ),
        .I5(\parity_reg[1][7]_1 ),
        .O(\counter_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h11110111EEEEFEEE)) 
    \parity[1][6]_i_1 
       (.I0(\counter_reg[3] ),
        .I1(\true_hdmi_output.data_island_data_reg[5]_0 ),
        .I2(\parity_reg[1][6] [3]),
        .I3(\parity_reg[1][6] [4]),
        .I4(\parity_reg[1][6]_0 ),
        .I5(\parity_reg[1][7]_0 [0]),
        .O(\parity_reg[1][0] [0]));
  LUT6 #(
    .INIT(64'h1E1E1EE1E1E1E11E)) 
    \parity[1][7]_i_1 
       (.I0(\counter_reg[3] ),
        .I1(\parity_reg[1][7] ),
        .I2(\parity_reg[1][7]_0 [0]),
        .I3(\counter_reg[4] ),
        .I4(\parity_reg[1][7]_1 ),
        .I5(\parity_reg[1][7]_0 [1]),
        .O(\parity_reg[1][0] [1]));
  LUT6 #(
    .INIT(64'hB8FFB833B8CCB800)) 
    \parity[1][7]_i_12 
       (.I0(\cycle_time_stamp_reg[7]_0 ),
        .I1(\parity_reg[1][6] [1]),
        .I2(\cycle_time_stamp_reg[3]_0 ),
        .I3(\parity_reg[1][6] [2]),
        .I4(\parity[1][7]_i_30_n_0 ),
        .I5(\parity_reg[1][7]_i_31_n_0 ),
        .O(\parity[1][7]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h88B88888)) 
    \parity[1][7]_i_19 
       (.I0(\parity[0][7]_i_13_0 ),
        .I1(\packet_type_reg[7]_0 ),
        .I2(\true_hdmi_output.data_island_data[8]_i_10_1 ),
        .I3(\true_hdmi_output.data_island_data[8]_i_10_0 ),
        .I4(\subs[1][3]_5 [30]),
        .O(\true_hdmi_output.sub[1]_0 [30]));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \parity[1][7]_i_2 
       (.I0(\parity_reg[1][6]_1 ),
        .I1(\parity_reg[1][6] [3]),
        .I2(\parity_reg[1][7]_i_7_n_0 ),
        .I3(\parity_reg[1][6] [2]),
        .I4(\parity[1][7]_i_8_n_0 ),
        .I5(\parity_reg[1][6] [4]),
        .O(\counter_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h88B88888)) 
    \parity[1][7]_i_20 
       (.I0(\parity[0][7]_i_13_0 ),
        .I1(\packet_type_reg[7]_0 ),
        .I2(\true_hdmi_output.data_island_data[8]_i_10_1 ),
        .I3(\true_hdmi_output.data_island_data[8]_i_10_0 ),
        .I4(\subs[1][3]_5 [28]),
        .O(\true_hdmi_output.sub[1]_0 [28]));
  LUT6 #(
    .INIT(64'h0000000000B80000)) 
    \parity[1][7]_i_21 
       (.I0(\subs[1][3]_5 [26]),
        .I1(\parity_reg[1][6] [0]),
        .I2(\subs[1][3]_5 [24]),
        .I3(\true_hdmi_output.data_island_data[8]_i_10_0 ),
        .I4(\true_hdmi_output.data_island_data[8]_i_10_1 ),
        .I5(\packet_type_reg[7]_0 ),
        .O(\parity[1][7]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000B80000)) 
    \parity[1][7]_i_28 
       (.I0(\subs[1][3]_5 [31]),
        .I1(\parity_reg[1][6] [0]),
        .I2(\subs[1][3]_5 [29]),
        .I3(\true_hdmi_output.data_island_data[8]_i_10_0 ),
        .I4(\true_hdmi_output.data_island_data[8]_i_10_1 ),
        .I5(\packet_type_reg[7]_0 ),
        .O(\cycle_time_stamp_reg[7]_0 ));
  LUT6 #(
    .INIT(64'h0000000000B80000)) 
    \parity[1][7]_i_29 
       (.I0(\subs[1][3]_5 [27]),
        .I1(\parity_reg[1][6] [0]),
        .I2(\subs[1][3]_5 [25]),
        .I3(\true_hdmi_output.data_island_data[8]_i_10_0 ),
        .I4(\true_hdmi_output.data_island_data[8]_i_10_1 ),
        .I5(\packet_type_reg[7]_0 ),
        .O(\cycle_time_stamp_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \parity[1][7]_i_30 
       (.I0(\true_hdmi_output.data_island_data[8]_i_10_1 ),
        .I1(\parity[1][7]_i_12_0 [7]),
        .I2(\true_hdmi_output.data_island_data[8]_i_10_0 ),
        .I3(\packet_type_reg[7]_0 ),
        .I4(\parity_reg[1][6] [0]),
        .I5(\parity[1][7]_i_47_n_0 ),
        .O(\parity[1][7]_i_30_n_0 ));
  LUT5 #(
    .INIT(32'h00005404)) 
    \parity[1][7]_i_37 
       (.I0(\true_hdmi_output.data_island_data[8]_i_10_0 ),
        .I1(\parity[1][7]_i_12_0 [0]),
        .I2(\true_hdmi_output.data_island_data[8]_i_10_1 ),
        .I3(\subs[1][3]_5 [16]),
        .I4(\packet_type_reg[7]_0 ),
        .O(\parity[1][7]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h88888888B8BBB888)) 
    \parity[1][7]_i_38 
       (.I0(\parity[0][7]_i_13_0 ),
        .I1(\packet_type_reg[7]_0 ),
        .I2(\subs[1][3]_5 [18]),
        .I3(\true_hdmi_output.data_island_data[8]_i_10_1 ),
        .I4(\parity[1][7]_i_12_0 [2]),
        .I5(\true_hdmi_output.data_island_data[8]_i_10_0 ),
        .O(\true_hdmi_output.sub[1]_0 [18]));
  LUT5 #(
    .INIT(32'h00005404)) 
    \parity[1][7]_i_39 
       (.I0(\true_hdmi_output.data_island_data[8]_i_10_0 ),
        .I1(\parity[1][7]_i_12_0 [4]),
        .I2(\true_hdmi_output.data_island_data[8]_i_10_1 ),
        .I3(\subs[1][3]_5 [20]),
        .I4(\packet_type_reg[7]_0 ),
        .O(\parity[1][7]_i_39_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \parity[1][7]_i_4 
       (.I0(\parity_reg[1][1]_0 ),
        .I1(\parity_reg[1][6] [4]),
        .I2(\parity[1][7]_i_12_n_0 ),
        .I3(\parity_reg[1][6] [3]),
        .I4(\parity_reg[1][1] ),
        .O(\counter_reg[4] ));
  LUT6 #(
    .INIT(64'h88888888B8BBB888)) 
    \parity[1][7]_i_40 
       (.I0(\parity[0][7]_i_13_0 ),
        .I1(\packet_type_reg[7]_0 ),
        .I2(\subs[1][3]_5 [22]),
        .I3(\true_hdmi_output.data_island_data[8]_i_10_1 ),
        .I4(\parity[1][7]_i_12_0 [6]),
        .I5(\true_hdmi_output.data_island_data[8]_i_10_0 ),
        .O(\true_hdmi_output.sub[1]_0 [22]));
  LUT5 #(
    .INIT(32'h00005404)) 
    \parity[1][7]_i_47 
       (.I0(\true_hdmi_output.data_island_data[8]_i_10_0 ),
        .I1(\parity[1][7]_i_12_0 [5]),
        .I2(\true_hdmi_output.data_island_data[8]_i_10_1 ),
        .I3(\subs[1][3]_5 [21]),
        .I4(\packet_type_reg[7]_0 ),
        .O(\parity[1][7]_i_47_n_0 ));
  LUT6 #(
    .INIT(64'h88888888B8BBB888)) 
    \parity[1][7]_i_48 
       (.I0(\parity[0][7]_i_13_0 ),
        .I1(\packet_type_reg[7]_0 ),
        .I2(\subs[1][3]_5 [17]),
        .I3(\true_hdmi_output.data_island_data[8]_i_10_1 ),
        .I4(\parity[1][7]_i_12_0 [1]),
        .I5(\true_hdmi_output.data_island_data[8]_i_10_0 ),
        .O(\true_hdmi_output.sub[1]_0 [17]));
  LUT5 #(
    .INIT(32'h00005404)) 
    \parity[1][7]_i_49 
       (.I0(\true_hdmi_output.data_island_data[8]_i_10_0 ),
        .I1(\parity[1][7]_i_12_0 [3]),
        .I2(\true_hdmi_output.data_island_data[8]_i_10_1 ),
        .I3(\subs[1][3]_5 [19]),
        .I4(\packet_type_reg[7]_0 ),
        .O(\parity[1][7]_i_49_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \parity[1][7]_i_8 
       (.I0(\true_hdmi_output.sub[1]_0 [30]),
        .I1(\parity_reg[1][6] [0]),
        .I2(\true_hdmi_output.sub[1]_0 [28]),
        .I3(\parity_reg[1][6] [1]),
        .I4(\parity[1][7]_i_21_n_0 ),
        .O(\parity[1][7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \parity[2][6]_i_1 
       (.I0(\counter_reg[4]_1 ),
        .I1(\parity_reg[2][6] ),
        .O(\parity_reg[2][0] ));
  LUT5 #(
    .INIT(32'hA303A3F3)) 
    \parity[2][7]_i_2 
       (.I0(\parity_reg[2][6]_0 ),
        .I1(\parity[2][7]_i_5_n_0 ),
        .I2(\parity_reg[1][6] [4]),
        .I3(\parity_reg[1][6] [3]),
        .I4(\parity_reg[2][6]_1 ),
        .O(\counter_reg[4]_1 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \parity[2][7]_i_20 
       (.I0(\true_hdmi_output.data_island_data[8]_i_10_1 ),
        .I1(\parity[2][7]_i_9 [7]),
        .I2(\true_hdmi_output.data_island_data[8]_i_10_0 ),
        .I3(\packet_type_reg[7]_0 ),
        .I4(\parity_reg[1][6] [0]),
        .I5(\parity[2][7]_i_34_n_0 ),
        .O(\audio_sample_word_packet_reg[2][0][23] ));
  LUT5 #(
    .INIT(32'h00005404)) 
    \parity[2][7]_i_34 
       (.I0(\true_hdmi_output.data_island_data[8]_i_10_0 ),
        .I1(\parity[2][7]_i_9 [5]),
        .I2(\true_hdmi_output.data_island_data[8]_i_10_1 ),
        .I3(\subs[1][3]_5 [21]),
        .I4(\packet_type_reg[7]_0 ),
        .O(\parity[2][7]_i_34_n_0 ));
  LUT5 #(
    .INIT(32'h00005404)) 
    \parity[2][7]_i_35 
       (.I0(\true_hdmi_output.data_island_data[8]_i_10_0 ),
        .I1(\parity[2][7]_i_9 [1]),
        .I2(\true_hdmi_output.data_island_data[8]_i_10_1 ),
        .I3(\subs[1][3]_5 [17]),
        .I4(\packet_type_reg[7]_0 ),
        .O(\parity[2][7]_i_35_n_0 ));
  LUT5 #(
    .INIT(32'h00005404)) 
    \parity[2][7]_i_36 
       (.I0(\true_hdmi_output.data_island_data[8]_i_10_0 ),
        .I1(\parity[2][7]_i_9 [3]),
        .I2(\true_hdmi_output.data_island_data[8]_i_10_1 ),
        .I3(\subs[1][3]_5 [19]),
        .I4(\packet_type_reg[7]_0 ),
        .O(\parity[2][7]_i_36_n_0 ));
  LUT5 #(
    .INIT(32'h00005404)) 
    \parity[2][7]_i_45 
       (.I0(\true_hdmi_output.data_island_data[8]_i_10_0 ),
        .I1(\parity[2][7]_i_9 [0]),
        .I2(\true_hdmi_output.data_island_data[8]_i_10_1 ),
        .I3(\subs[1][3]_5 [16]),
        .I4(\packet_type_reg[7]_0 ),
        .O(\parity[2][7]_i_45_n_0 ));
  LUT5 #(
    .INIT(32'h00005404)) 
    \parity[2][7]_i_46 
       (.I0(\true_hdmi_output.data_island_data[8]_i_10_0 ),
        .I1(\parity[2][7]_i_9 [2]),
        .I2(\true_hdmi_output.data_island_data[8]_i_10_1 ),
        .I3(\subs[1][3]_5 [18]),
        .I4(\packet_type_reg[7]_0 ),
        .O(\parity[2][7]_i_46_n_0 ));
  LUT5 #(
    .INIT(32'h00005404)) 
    \parity[2][7]_i_47 
       (.I0(\true_hdmi_output.data_island_data[8]_i_10_0 ),
        .I1(\parity[2][7]_i_9 [4]),
        .I2(\true_hdmi_output.data_island_data[8]_i_10_1 ),
        .I3(\subs[1][3]_5 [20]),
        .I4(\packet_type_reg[7]_0 ),
        .O(\parity[2][7]_i_47_n_0 ));
  LUT5 #(
    .INIT(32'h00005404)) 
    \parity[2][7]_i_48 
       (.I0(\true_hdmi_output.data_island_data[8]_i_10_0 ),
        .I1(\parity[2][7]_i_9 [6]),
        .I2(\true_hdmi_output.data_island_data[8]_i_10_1 ),
        .I3(\subs[1][3]_5 [22]),
        .I4(\packet_type_reg[7]_0 ),
        .O(\parity[2][7]_i_48_n_0 ));
  LUT5 #(
    .INIT(32'hFAC00AC0)) 
    \parity[2][7]_i_5 
       (.I0(\parity[2][7]_i_2_0 ),
        .I1(\parity_reg[2][7]_i_13_n_0 ),
        .I2(\parity_reg[1][6] [3]),
        .I3(\parity_reg[1][6] [2]),
        .I4(\parity[3][6]_i_4_n_0 ),
        .O(\parity[2][7]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00005404)) 
    \parity[3][6]_i_16 
       (.I0(\true_hdmi_output.data_island_data[8]_i_10_0 ),
        .I1(Q[0]),
        .I2(\true_hdmi_output.data_island_data[8]_i_10_1 ),
        .I3(\subs[1][3]_5 [16]),
        .I4(\packet_type_reg[7]_0 ),
        .O(\parity[3][6]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h00005404)) 
    \parity[3][6]_i_17 
       (.I0(\true_hdmi_output.data_island_data[8]_i_10_0 ),
        .I1(Q[2]),
        .I2(\true_hdmi_output.data_island_data[8]_i_10_1 ),
        .I3(\subs[1][3]_5 [18]),
        .I4(\packet_type_reg[7]_0 ),
        .O(\parity[3][6]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h00005404)) 
    \parity[3][6]_i_18 
       (.I0(\true_hdmi_output.data_island_data[8]_i_10_0 ),
        .I1(Q[4]),
        .I2(\true_hdmi_output.data_island_data[8]_i_10_1 ),
        .I3(\subs[1][3]_5 [20]),
        .I4(\packet_type_reg[7]_0 ),
        .O(\parity[3][6]_i_18_n_0 ));
  LUT5 #(
    .INIT(32'h00005404)) 
    \parity[3][6]_i_19 
       (.I0(\true_hdmi_output.data_island_data[8]_i_10_0 ),
        .I1(Q[6]),
        .I2(\true_hdmi_output.data_island_data[8]_i_10_1 ),
        .I3(\subs[1][3]_5 [22]),
        .I4(\packet_type_reg[7]_0 ),
        .O(\parity[3][6]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \parity[3][6]_i_2 
       (.I0(\parity[3][6]_i_4_n_0 ),
        .I1(\parity_reg[3][6]_i_5_n_0 ),
        .I2(\parity_reg[1][6] [3]),
        .I3(\parity_reg[3][6] ),
        .I4(\parity_reg[1][6] [2]),
        .O(\counter_reg[3]_1 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \parity[3][6]_i_4 
       (.I0(\parity[3][6]_i_9_n_0 ),
        .I1(\parity_reg[1][6] [1]),
        .I2(\parity[1][7]_i_21_n_0 ),
        .O(\parity[3][6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000B80000)) 
    \parity[3][6]_i_9 
       (.I0(\subs[1][3]_5 [30]),
        .I1(\parity_reg[1][6] [0]),
        .I2(\subs[1][3]_5 [28]),
        .I3(\true_hdmi_output.data_island_data[8]_i_10_0 ),
        .I4(\true_hdmi_output.data_island_data[8]_i_10_1 ),
        .I5(\packet_type_reg[7]_0 ),
        .O(\parity[3][6]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h00005404)) 
    \parity[3][7]_i_15 
       (.I0(\true_hdmi_output.data_island_data[8]_i_10_0 ),
        .I1(Q[5]),
        .I2(\true_hdmi_output.data_island_data[8]_i_10_1 ),
        .I3(\subs[1][3]_5 [21]),
        .I4(\packet_type_reg[7]_0 ),
        .O(\parity[3][7]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h00005404)) 
    \parity[3][7]_i_16 
       (.I0(\true_hdmi_output.data_island_data[8]_i_10_0 ),
        .I1(Q[3]),
        .I2(\true_hdmi_output.data_island_data[8]_i_10_1 ),
        .I3(\subs[1][3]_5 [19]),
        .I4(\packet_type_reg[7]_0 ),
        .O(\parity[3][7]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h00005404)) 
    \parity[3][7]_i_17 
       (.I0(\true_hdmi_output.data_island_data[8]_i_10_0 ),
        .I1(Q[1]),
        .I2(\true_hdmi_output.data_island_data[8]_i_10_1 ),
        .I3(\subs[1][3]_5 [17]),
        .I4(\packet_type_reg[7]_0 ),
        .O(\parity[3][7]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \parity[3][7]_i_7 
       (.I0(\parity[3][7]_i_2 ),
        .I1(\parity[3][7]_i_15_n_0 ),
        .I2(\parity_reg[1][6] [1]),
        .I3(\parity[3][7]_i_16_n_0 ),
        .I4(\parity_reg[1][6] [0]),
        .I5(\parity[3][7]_i_17_n_0 ),
        .O(\counter_reg[1] ));
  MUXF8 \parity_reg[0][7]_i_14 
       (.I0(\true_hdmi_output.data_island_data_reg[8]_i_12_n_0 ),
        .I1(\true_hdmi_output.data_island_data_reg[8]_i_11_n_0 ),
        .O(\parity_reg[0][7]_i_14_n_0 ),
        .S(\parity_reg[1][6] [1]));
  MUXF8 \parity_reg[0][7]_i_18 
       (.I0(\parity_reg[0][7]_i_34_n_0 ),
        .I1(\parity_reg[0][7]_i_35_n_0 ),
        .O(\parity_reg[0][7]_i_18_n_0 ),
        .S(\parity_reg[1][6] [1]));
  MUXF7 \parity_reg[0][7]_i_34 
       (.I0(\parity[0][7]_i_43_n_0 ),
        .I1(\true_hdmi_output.sub[0]_23 [18]),
        .O(\parity_reg[0][7]_i_34_n_0 ),
        .S(\parity_reg[1][6] [0]));
  MUXF7 \parity_reg[0][7]_i_35 
       (.I0(\parity[0][7]_i_45_n_0 ),
        .I1(\true_hdmi_output.sub[0]_23 [22]),
        .O(\parity_reg[0][7]_i_35_n_0 ),
        .S(\parity_reg[1][6] [0]));
  MUXF7 \parity_reg[1][7]_i_17 
       (.I0(\parity[1][7]_i_37_n_0 ),
        .I1(\true_hdmi_output.sub[1]_0 [18]),
        .O(\parity_reg[1][7]_i_17_n_0 ),
        .S(\parity_reg[1][6] [0]));
  MUXF7 \parity_reg[1][7]_i_18 
       (.I0(\parity[1][7]_i_39_n_0 ),
        .I1(\true_hdmi_output.sub[1]_0 [22]),
        .O(\parity_reg[1][7]_i_18_n_0 ),
        .S(\parity_reg[1][6] [0]));
  MUXF7 \parity_reg[1][7]_i_31 
       (.I0(\true_hdmi_output.sub[1]_0 [17]),
        .I1(\parity[1][7]_i_49_n_0 ),
        .O(\parity_reg[1][7]_i_31_n_0 ),
        .S(\parity_reg[1][6] [0]));
  MUXF8 \parity_reg[1][7]_i_7 
       (.I0(\parity_reg[1][7]_i_17_n_0 ),
        .I1(\parity_reg[1][7]_i_18_n_0 ),
        .O(\parity_reg[1][7]_i_7_n_0 ),
        .S(\parity_reg[1][6] [1]));
  MUXF8 \parity_reg[2][7]_i_13 
       (.I0(\parity_reg[2][7]_i_26_n_0 ),
        .I1(\parity_reg[2][7]_i_27_n_0 ),
        .O(\parity_reg[2][7]_i_13_n_0 ),
        .S(\parity_reg[1][6] [1]));
  MUXF7 \parity_reg[2][7]_i_21 
       (.I0(\parity[2][7]_i_35_n_0 ),
        .I1(\parity[2][7]_i_36_n_0 ),
        .O(\counter_reg[0] ),
        .S(\parity_reg[1][6] [0]));
  MUXF7 \parity_reg[2][7]_i_26 
       (.I0(\parity[2][7]_i_45_n_0 ),
        .I1(\parity[2][7]_i_46_n_0 ),
        .O(\parity_reg[2][7]_i_26_n_0 ),
        .S(\parity_reg[1][6] [0]));
  MUXF7 \parity_reg[2][7]_i_27 
       (.I0(\parity[2][7]_i_47_n_0 ),
        .I1(\parity[2][7]_i_48_n_0 ),
        .O(\parity_reg[2][7]_i_27_n_0 ),
        .S(\parity_reg[1][6] [0]));
  MUXF7 \parity_reg[3][6]_i_10 
       (.I0(\parity[3][6]_i_16_n_0 ),
        .I1(\parity[3][6]_i_17_n_0 ),
        .O(\parity_reg[3][6]_i_10_n_0 ),
        .S(\parity_reg[1][6] [0]));
  MUXF7 \parity_reg[3][6]_i_11 
       (.I0(\parity[3][6]_i_18_n_0 ),
        .I1(\parity[3][6]_i_19_n_0 ),
        .O(\parity_reg[3][6]_i_11_n_0 ),
        .S(\parity_reg[1][6] [0]));
  MUXF8 \parity_reg[3][6]_i_5 
       (.I0(\parity_reg[3][6]_i_10_n_0 ),
        .I1(\parity_reg[3][6]_i_11_n_0 ),
        .O(\parity_reg[3][6]_i_5_n_0 ),
        .S(\parity_reg[1][6] [1]));
  MUXF7 \parity_reg[3][7]_i_5 
       (.I0(\counter_reg[3]_1 ),
        .I1(\true_hdmi_output.data_island_data_reg[7] ),
        .O(\counter_reg[4]_0 ),
        .S(\parity_reg[1][6] [4]));
  LUT6 #(
    .INIT(64'h00000000EAAAAAAA)) 
    source_product_description_info_frame_sent_i_1
       (.I0(source_product_description_info_frame_sent),
        .I1(auxiliary_video_information_info_frame_sent),
        .I2(audio_info_frame_sent),
        .I3(source_product_description_info_frame_sent_i_2_n_0),
        .I4(\true_hdmi_output.packet_enable ),
        .I5(\packet_type_reg[2]_0 ),
        .O(source_product_description_info_frame_sent_reg));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h4004)) 
    source_product_description_info_frame_sent_i_2
       (.I0(sample_buffer_ready),
        .I1(\true_hdmi_output.packet_enable ),
        .I2(\packet_type_reg[1]_0 ),
        .I3(clk_audio_counter_wrap),
        .O(source_product_description_info_frame_sent_i_2_n_0));
  LUT4 #(
    .INIT(16'hCF55)) 
    \true_hdmi_output.data_island_data[4]_i_2 
       (.I0(\counter_reg[3]_3 ),
        .I1(\parity_reg[1][6] [3]),
        .I2(\true_hdmi_output.data_island_data_reg[4] ),
        .I3(\parity_reg[1][6] [4]),
        .O(\counter_reg[3]_2 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \true_hdmi_output.data_island_data[5]_i_1 
       (.I0(\counter_reg[3] ),
        .I1(\true_hdmi_output.data_island_data_reg[5] ),
        .I2(\true_hdmi_output.data_island_data_reg[5]_0 ),
        .O(D));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \true_hdmi_output.data_island_data[8]_i_10 
       (.I0(\parity[0][7]_i_13_1 ),
        .I1(\true_hdmi_output.data_island_data[8]_i_18_n_0 ),
        .I2(\parity_reg[1][6] [0]),
        .I3(\parity[0][7]_i_13_0 ),
        .I4(\packet_type_reg[7]_0 ),
        .I5(\true_hdmi_output.data_island_data[8]_i_19_n_0 ),
        .O(\true_hdmi_output.data_island_data[8]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \true_hdmi_output.data_island_data[8]_i_18 
       (.I0(\true_hdmi_output.data_island_data[8]_i_10_1 ),
        .I1(\true_hdmi_output.data_island_data[8]_i_10_0 ),
        .I2(\subs[1][3]_5 [31]),
        .O(\true_hdmi_output.data_island_data[8]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \true_hdmi_output.data_island_data[8]_i_19 
       (.I0(\true_hdmi_output.data_island_data[8]_i_10_1 ),
        .I1(\true_hdmi_output.data_island_data[8]_i_10_0 ),
        .I2(\subs[1][3]_5 [29]),
        .O(\true_hdmi_output.data_island_data[8]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \true_hdmi_output.data_island_data[8]_i_2 
       (.I0(\true_hdmi_output.data_island_data_reg[8] ),
        .I1(\parity_reg[1][6] [4]),
        .I2(\true_hdmi_output.data_island_data[8]_i_5_n_0 ),
        .I3(\parity_reg[1][6] [3]),
        .I4(\true_hdmi_output.data_island_data_reg[8]_0 ),
        .O(\counter_reg[4]_3 ));
  LUT6 #(
    .INIT(64'h88888888B8BBB888)) 
    \true_hdmi_output.data_island_data[8]_i_20 
       (.I0(\parity[0][7]_i_13_0 ),
        .I1(\packet_type_reg[7]_0 ),
        .I2(\subs[1][3]_5 [21]),
        .I3(\true_hdmi_output.data_island_data[8]_i_10_1 ),
        .I4(\parity_reg[0][7]_i_35_0 [5]),
        .I5(\true_hdmi_output.data_island_data[8]_i_10_0 ),
        .O(\true_hdmi_output.sub[0]_23 [21]));
  LUT6 #(
    .INIT(64'h88888888B8BBB888)) 
    \true_hdmi_output.data_island_data[8]_i_22 
       (.I0(\parity[0][7]_i_13_0 ),
        .I1(\packet_type_reg[7]_0 ),
        .I2(\subs[1][3]_5 [17]),
        .I3(\true_hdmi_output.data_island_data[8]_i_10_1 ),
        .I4(\parity_reg[0][7]_i_35_0 [1]),
        .I5(\true_hdmi_output.data_island_data[8]_i_10_0 ),
        .O(\true_hdmi_output.sub[0]_23 [17]));
  LUT5 #(
    .INIT(32'h0A0A4F4A)) 
    \true_hdmi_output.data_island_data[8]_i_23 
       (.I0(\packet_type_reg[7]_0 ),
        .I1(\subs[1][3]_5 [19]),
        .I2(\true_hdmi_output.data_island_data[8]_i_10_1 ),
        .I3(\parity_reg[0][7]_i_35_0 [3]),
        .I4(\true_hdmi_output.data_island_data[8]_i_10_0 ),
        .O(\true_hdmi_output.sub[0]_23 [19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \true_hdmi_output.data_island_data[8]_i_5 
       (.I0(\true_hdmi_output.data_island_data[8]_i_10_n_0 ),
        .I1(\cycle_time_stamp_reg[3]_0 ),
        .I2(\parity_reg[1][6] [2]),
        .I3(\true_hdmi_output.data_island_data_reg[8]_i_11_n_0 ),
        .I4(\parity_reg[1][6] [1]),
        .I5(\true_hdmi_output.data_island_data_reg[8]_i_12_n_0 ),
        .O(\true_hdmi_output.data_island_data[8]_i_5_n_0 ));
  MUXF7 \true_hdmi_output.data_island_data_reg[6]_i_3 
       (.I0(\parity[2][7]_i_5_n_0 ),
        .I1(\true_hdmi_output.data_island_data_reg[6] ),
        .O(\counter_reg[4]_2 ),
        .S(\parity_reg[1][6] [4]));
  MUXF7 \true_hdmi_output.data_island_data_reg[8]_i_11 
       (.I0(\true_hdmi_output.sub[0]_23 [21]),
        .I1(\true_hdmi_output.data_island_data[8]_i_5_0 ),
        .O(\true_hdmi_output.data_island_data_reg[8]_i_11_n_0 ),
        .S(\parity_reg[1][6] [0]));
  MUXF7 \true_hdmi_output.data_island_data_reg[8]_i_12 
       (.I0(\true_hdmi_output.sub[0]_23 [17]),
        .I1(\true_hdmi_output.sub[0]_23 [19]),
        .O(\true_hdmi_output.data_island_data_reg[8]_i_12_n_0 ),
        .S(\parity_reg[1][6] [0]));
endmodule

(* CHECK_LICENSE_TYPE = "cmdfifo,fifo_generator_v13_2_12,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "cmdfifo" *) 
(* X_CORE_INFO = "fifo_generator_v13_2_12,Vivado 2024.2.2" *) 
module blockone_videomodule_0_0_cmdfifo
   (clk,
    rst,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty,
    valid);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 core_clk CLK" *) (* X_INTERFACE_MODE = "slave core_clk" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME core_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input clk;
  input rst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) (* X_INTERFACE_MODE = "slave FIFO_WRITE" *) input [31:0]din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) (* X_INTERFACE_MODE = "slave FIFO_READ" *) input rd_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [31:0]dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output valid;


endmodule

(* ORIG_REF_NAME = "commandqueue" *) 
module blockone_videomodule_0_0_commandqueue
   (D,
    SR,
    s_axi_arready,
    s_axi_bvalid,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_wready,
    s_axi_awready,
    \vpucmd_reg[1] ,
    \cmdmode_reg[2] ,
    \cmdmode_reg[2]_0 ,
    E,
    \cmdmode_reg[0] ,
    \cmdmode_reg[0]_0 ,
    \cmdmode_reg[0]_1 ,
    \cmdmode_reg[0]_2 ,
    s_axi_rdata,
    \bbstub_dout[2] ,
    lastscanline0,
    aclk,
    rd_en,
    out,
    s_axi_rready,
    \cmdmode_reg[2]_1 ,
    Q,
    cmdmode,
    \cmdmode_reg[1] ,
    \cmdmode_reg[0]_3 ,
    s_axi_arvalid,
    s_axi_awvalid,
    s_axi_wvalid,
    s_axi_bready,
    \m_axi_rdata_reg[42]_0 ,
    s_axi_wdata);
  output [31:0]D;
  output [0:0]SR;
  output s_axi_arready;
  output s_axi_bvalid;
  output s_axi_rlast;
  output s_axi_rvalid;
  output s_axi_wready;
  output s_axi_awready;
  output \vpucmd_reg[1] ;
  output \cmdmode_reg[2] ;
  output \cmdmode_reg[2]_0 ;
  output [0:0]E;
  output \cmdmode_reg[0] ;
  output [0:0]\cmdmode_reg[0]_0 ;
  output \cmdmode_reg[0]_1 ;
  output [0:0]\cmdmode_reg[0]_2 ;
  output [10:0]s_axi_rdata;
  output [1:0]\bbstub_dout[2] ;
  output [0:0]lastscanline0;
  input aclk;
  input rd_en;
  input out;
  input s_axi_rready;
  input \cmdmode_reg[2]_1 ;
  input [0:0]Q;
  input [2:0]cmdmode;
  input \cmdmode_reg[1] ;
  input \cmdmode_reg[0]_3 ;
  input s_axi_arvalid;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input s_axi_bready;
  input [10:0]\m_axi_rdata_reg[42]_0 ;
  input [31:0]s_axi_wdata;

  wire [31:0]D;
  wire [0:0]E;
  wire \FSM_onehot_raddrstate[1]_i_1_n_0 ;
  wire \FSM_onehot_raddrstate[2]_i_1_n_0 ;
  wire \FSM_onehot_raddrstate_reg_n_0_[0] ;
  wire \FSM_onehot_raddrstate_reg_n_0_[1] ;
  wire \FSM_onehot_raddrstate_reg_n_0_[2] ;
  wire \FSM_sequential_waddrstate[0]_i_1_n_0 ;
  wire \FSM_sequential_waddrstate[1]_i_1_n_0 ;
  wire \FSM_sequential_writestate[0]_i_1_n_0 ;
  wire \FSM_sequential_writestate[1]_i_1_n_0 ;
  wire [0:0]Q;
  wire [0:0]SR;
  wire \__9/i__n_0 ;
  wire aclk;
  wire [1:0]\bbstub_dout[2] ;
  wire cmdfifoinst_n_33;
  wire cmdfifoinst_n_34;
  wire [2:0]cmdmode;
  wire \cmdmode_reg[0] ;
  wire [0:0]\cmdmode_reg[0]_0 ;
  wire \cmdmode_reg[0]_1 ;
  wire [0:0]\cmdmode_reg[0]_2 ;
  wire \cmdmode_reg[0]_3 ;
  wire \cmdmode_reg[1] ;
  wire \cmdmode_reg[2] ;
  wire \cmdmode_reg[2]_0 ;
  wire \cmdmode_reg[2]_1 ;
  wire \fifodin_reg_n_0_[0] ;
  wire \fifodin_reg_n_0_[10] ;
  wire \fifodin_reg_n_0_[11] ;
  wire \fifodin_reg_n_0_[12] ;
  wire \fifodin_reg_n_0_[13] ;
  wire \fifodin_reg_n_0_[14] ;
  wire \fifodin_reg_n_0_[15] ;
  wire \fifodin_reg_n_0_[16] ;
  wire \fifodin_reg_n_0_[17] ;
  wire \fifodin_reg_n_0_[18] ;
  wire \fifodin_reg_n_0_[19] ;
  wire \fifodin_reg_n_0_[1] ;
  wire \fifodin_reg_n_0_[20] ;
  wire \fifodin_reg_n_0_[21] ;
  wire \fifodin_reg_n_0_[22] ;
  wire \fifodin_reg_n_0_[23] ;
  wire \fifodin_reg_n_0_[24] ;
  wire \fifodin_reg_n_0_[25] ;
  wire \fifodin_reg_n_0_[26] ;
  wire \fifodin_reg_n_0_[27] ;
  wire \fifodin_reg_n_0_[28] ;
  wire \fifodin_reg_n_0_[29] ;
  wire \fifodin_reg_n_0_[2] ;
  wire \fifodin_reg_n_0_[30] ;
  wire \fifodin_reg_n_0_[31] ;
  wire \fifodin_reg_n_0_[3] ;
  wire \fifodin_reg_n_0_[4] ;
  wire \fifodin_reg_n_0_[5] ;
  wire \fifodin_reg_n_0_[6] ;
  wire \fifodin_reg_n_0_[7] ;
  wire \fifodin_reg_n_0_[8] ;
  wire \fifodin_reg_n_0_[9] ;
  wire fifofull;
  wire fifowe;
  wire [0:0]lastscanline0;
  wire m_axi_arready_i_1_n_0;
  wire m_axi_awready_i_1_n_0;
  wire \m_axi_rdata[42]_i_1_n_0 ;
  wire [10:0]\m_axi_rdata_reg[42]_0 ;
  wire m_axi_rvalid_i_1_n_0;
  wire m_axi_wready_i_1_n_0;
  wire out;
  wire rd_en;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [10:0]s_axi_rdata;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire vpucmd0;
  wire \vpucmd_reg[1] ;
  wire [1:0]waddrstate;
  wire [1:0]writestate;

  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT5 #(
    .INIT(32'hFFFFFA22)) 
    \FSM_onehot_raddrstate[1]_i_1 
       (.I0(\FSM_onehot_raddrstate_reg_n_0_[1] ),
        .I1(s_axi_arvalid),
        .I2(s_axi_rready),
        .I3(\FSM_onehot_raddrstate_reg_n_0_[2] ),
        .I4(\FSM_onehot_raddrstate_reg_n_0_[0] ),
        .O(\FSM_onehot_raddrstate[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT5 #(
    .INIT(32'hAAAAAF88)) 
    \FSM_onehot_raddrstate[2]_i_1 
       (.I0(\FSM_onehot_raddrstate_reg_n_0_[1] ),
        .I1(s_axi_arvalid),
        .I2(s_axi_rready),
        .I3(\FSM_onehot_raddrstate_reg_n_0_[2] ),
        .I4(\FSM_onehot_raddrstate_reg_n_0_[0] ),
        .O(\FSM_onehot_raddrstate[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:001,iSTATE0:010,iSTATE1:100," *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_raddrstate_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\FSM_onehot_raddrstate_reg_n_0_[0] ),
        .S(SR));
  (* FSM_ENCODED_STATES = "iSTATE:001,iSTATE0:010,iSTATE1:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_raddrstate_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\FSM_onehot_raddrstate[1]_i_1_n_0 ),
        .Q(\FSM_onehot_raddrstate_reg_n_0_[1] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "iSTATE:001,iSTATE0:010,iSTATE1:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_raddrstate_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\FSM_onehot_raddrstate[2]_i_1_n_0 ),
        .Q(\FSM_onehot_raddrstate_reg_n_0_[2] ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \FSM_sequential_waddrstate[0]_i_1 
       (.I0(waddrstate[1]),
        .I1(s_axi_awvalid),
        .I2(waddrstate[0]),
        .O(\FSM_sequential_waddrstate[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \FSM_sequential_waddrstate[1]_i_1 
       (.I0(s_axi_awvalid),
        .I1(waddrstate[1]),
        .I2(waddrstate[0]),
        .O(\FSM_sequential_waddrstate[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:00,iSTATE0:01,iSTATE1:10," *) 
  FDRE \FSM_sequential_waddrstate_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\FSM_sequential_waddrstate[0]_i_1_n_0 ),
        .Q(waddrstate[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "iSTATE:00,iSTATE0:01,iSTATE1:10," *) 
  FDRE \FSM_sequential_waddrstate_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\FSM_sequential_waddrstate[1]_i_1_n_0 ),
        .Q(waddrstate[1]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT5 #(
    .INIT(32'hFCFFBBBB)) 
    \FSM_sequential_writestate[0]_i_1 
       (.I0(s_axi_bready),
        .I1(writestate[1]),
        .I2(fifofull),
        .I3(s_axi_wvalid),
        .I4(writestate[0]),
        .O(\FSM_sequential_writestate[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT5 #(
    .INIT(32'hF2F200F0)) 
    \FSM_sequential_writestate[1]_i_1 
       (.I0(s_axi_wvalid),
        .I1(fifofull),
        .I2(writestate[1]),
        .I3(s_axi_bready),
        .I4(writestate[0]),
        .O(\FSM_sequential_writestate[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:00,iSTATE0:01,iSTATE1:10," *) 
  FDRE \FSM_sequential_writestate_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\FSM_sequential_writestate[0]_i_1_n_0 ),
        .Q(writestate[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "iSTATE:00,iSTATE0:01,iSTATE1:10," *) 
  FDRE \FSM_sequential_writestate_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\FSM_sequential_writestate[1]_i_1_n_0 ),
        .Q(writestate[1]),
        .R(SR));
  LUT3 #(
    .INIT(8'h40)) 
    \__9/i_ 
       (.I0(writestate[0]),
        .I1(s_axi_bready),
        .I2(writestate[1]),
        .O(\__9/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \burstmask[3]_i_1 
       (.I0(D[1]),
        .I1(D[2]),
        .O(\bbstub_dout[2] [0]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \burstmask[5]_i_1 
       (.I0(D[1]),
        .I1(D[2]),
        .O(\bbstub_dout[2] [1]));
  (* CHECK_LICENSE_TYPE = "cmdfifo,fifo_generator_v13_2_12,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fifo_generator_v13_2_12,Vivado 2024.2.2" *) 
  blockone_videomodule_0_0_cmdfifo cmdfifoinst
       (.clk(aclk),
        .din({\fifodin_reg_n_0_[31] ,\fifodin_reg_n_0_[30] ,\fifodin_reg_n_0_[29] ,\fifodin_reg_n_0_[28] ,\fifodin_reg_n_0_[27] ,\fifodin_reg_n_0_[26] ,\fifodin_reg_n_0_[25] ,\fifodin_reg_n_0_[24] ,\fifodin_reg_n_0_[23] ,\fifodin_reg_n_0_[22] ,\fifodin_reg_n_0_[21] ,\fifodin_reg_n_0_[20] ,\fifodin_reg_n_0_[19] ,\fifodin_reg_n_0_[18] ,\fifodin_reg_n_0_[17] ,\fifodin_reg_n_0_[16] ,\fifodin_reg_n_0_[15] ,\fifodin_reg_n_0_[14] ,\fifodin_reg_n_0_[13] ,\fifodin_reg_n_0_[12] ,\fifodin_reg_n_0_[11] ,\fifodin_reg_n_0_[10] ,\fifodin_reg_n_0_[9] ,\fifodin_reg_n_0_[8] ,\fifodin_reg_n_0_[7] ,\fifodin_reg_n_0_[6] ,\fifodin_reg_n_0_[5] ,\fifodin_reg_n_0_[4] ,\fifodin_reg_n_0_[3] ,\fifodin_reg_n_0_[2] ,\fifodin_reg_n_0_[1] ,\fifodin_reg_n_0_[0] }),
        .dout(D),
        .empty(cmdfifoinst_n_33),
        .full(fifofull),
        .rd_en(rd_en),
        .rst(SR),
        .valid(cmdfifoinst_n_34),
        .wr_en(fifowe));
  LUT6 #(
    .INIT(64'hFFFBAAAAAA080808)) 
    \cmdmode[0]_i_1 
       (.I0(\cmdmode_reg[0]_3 ),
        .I1(cmdfifoinst_n_34),
        .I2(cmdfifoinst_n_33),
        .I3(cmdmode[2]),
        .I4(cmdmode[1]),
        .I5(cmdmode[0]),
        .O(\cmdmode_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hFFFBAAAAAAFB0808)) 
    \cmdmode[1]_i_1 
       (.I0(\cmdmode_reg[1] ),
        .I1(cmdfifoinst_n_34),
        .I2(cmdfifoinst_n_33),
        .I3(cmdmode[2]),
        .I4(cmdmode[1]),
        .I5(cmdmode[0]),
        .O(\cmdmode_reg[2] ));
  LUT6 #(
    .INIT(64'hFFF0FFEE00F0FF00)) 
    \cmdmode[2]_i_1 
       (.I0(\cmdmode_reg[2]_1 ),
        .I1(Q),
        .I2(vpucmd0),
        .I3(cmdmode[2]),
        .I4(cmdmode[1]),
        .I5(cmdmode[0]),
        .O(\vpucmd_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cmdmode[2]_i_3 
       (.I0(cmdfifoinst_n_34),
        .I1(cmdfifoinst_n_33),
        .O(vpucmd0));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT5 #(
    .INIT(32'h00044404)) 
    cmdre_i_1
       (.I0(cmdfifoinst_n_33),
        .I1(cmdfifoinst_n_34),
        .I2(cmdmode[0]),
        .I3(cmdmode[1]),
        .I4(cmdmode[2]),
        .O(\cmdmode_reg[0] ));
  FDRE \fifodin_reg[0] 
       (.C(aclk),
        .CE(m_axi_wready_i_1_n_0),
        .D(s_axi_wdata[0]),
        .Q(\fifodin_reg_n_0_[0] ),
        .R(SR));
  FDRE \fifodin_reg[10] 
       (.C(aclk),
        .CE(m_axi_wready_i_1_n_0),
        .D(s_axi_wdata[10]),
        .Q(\fifodin_reg_n_0_[10] ),
        .R(SR));
  FDRE \fifodin_reg[11] 
       (.C(aclk),
        .CE(m_axi_wready_i_1_n_0),
        .D(s_axi_wdata[11]),
        .Q(\fifodin_reg_n_0_[11] ),
        .R(SR));
  FDRE \fifodin_reg[12] 
       (.C(aclk),
        .CE(m_axi_wready_i_1_n_0),
        .D(s_axi_wdata[12]),
        .Q(\fifodin_reg_n_0_[12] ),
        .R(SR));
  FDRE \fifodin_reg[13] 
       (.C(aclk),
        .CE(m_axi_wready_i_1_n_0),
        .D(s_axi_wdata[13]),
        .Q(\fifodin_reg_n_0_[13] ),
        .R(SR));
  FDRE \fifodin_reg[14] 
       (.C(aclk),
        .CE(m_axi_wready_i_1_n_0),
        .D(s_axi_wdata[14]),
        .Q(\fifodin_reg_n_0_[14] ),
        .R(SR));
  FDRE \fifodin_reg[15] 
       (.C(aclk),
        .CE(m_axi_wready_i_1_n_0),
        .D(s_axi_wdata[15]),
        .Q(\fifodin_reg_n_0_[15] ),
        .R(SR));
  FDRE \fifodin_reg[16] 
       (.C(aclk),
        .CE(m_axi_wready_i_1_n_0),
        .D(s_axi_wdata[16]),
        .Q(\fifodin_reg_n_0_[16] ),
        .R(SR));
  FDRE \fifodin_reg[17] 
       (.C(aclk),
        .CE(m_axi_wready_i_1_n_0),
        .D(s_axi_wdata[17]),
        .Q(\fifodin_reg_n_0_[17] ),
        .R(SR));
  FDRE \fifodin_reg[18] 
       (.C(aclk),
        .CE(m_axi_wready_i_1_n_0),
        .D(s_axi_wdata[18]),
        .Q(\fifodin_reg_n_0_[18] ),
        .R(SR));
  FDRE \fifodin_reg[19] 
       (.C(aclk),
        .CE(m_axi_wready_i_1_n_0),
        .D(s_axi_wdata[19]),
        .Q(\fifodin_reg_n_0_[19] ),
        .R(SR));
  FDRE \fifodin_reg[1] 
       (.C(aclk),
        .CE(m_axi_wready_i_1_n_0),
        .D(s_axi_wdata[1]),
        .Q(\fifodin_reg_n_0_[1] ),
        .R(SR));
  FDRE \fifodin_reg[20] 
       (.C(aclk),
        .CE(m_axi_wready_i_1_n_0),
        .D(s_axi_wdata[20]),
        .Q(\fifodin_reg_n_0_[20] ),
        .R(SR));
  FDRE \fifodin_reg[21] 
       (.C(aclk),
        .CE(m_axi_wready_i_1_n_0),
        .D(s_axi_wdata[21]),
        .Q(\fifodin_reg_n_0_[21] ),
        .R(SR));
  FDRE \fifodin_reg[22] 
       (.C(aclk),
        .CE(m_axi_wready_i_1_n_0),
        .D(s_axi_wdata[22]),
        .Q(\fifodin_reg_n_0_[22] ),
        .R(SR));
  FDRE \fifodin_reg[23] 
       (.C(aclk),
        .CE(m_axi_wready_i_1_n_0),
        .D(s_axi_wdata[23]),
        .Q(\fifodin_reg_n_0_[23] ),
        .R(SR));
  FDRE \fifodin_reg[24] 
       (.C(aclk),
        .CE(m_axi_wready_i_1_n_0),
        .D(s_axi_wdata[24]),
        .Q(\fifodin_reg_n_0_[24] ),
        .R(SR));
  FDRE \fifodin_reg[25] 
       (.C(aclk),
        .CE(m_axi_wready_i_1_n_0),
        .D(s_axi_wdata[25]),
        .Q(\fifodin_reg_n_0_[25] ),
        .R(SR));
  FDRE \fifodin_reg[26] 
       (.C(aclk),
        .CE(m_axi_wready_i_1_n_0),
        .D(s_axi_wdata[26]),
        .Q(\fifodin_reg_n_0_[26] ),
        .R(SR));
  FDRE \fifodin_reg[27] 
       (.C(aclk),
        .CE(m_axi_wready_i_1_n_0),
        .D(s_axi_wdata[27]),
        .Q(\fifodin_reg_n_0_[27] ),
        .R(SR));
  FDRE \fifodin_reg[28] 
       (.C(aclk),
        .CE(m_axi_wready_i_1_n_0),
        .D(s_axi_wdata[28]),
        .Q(\fifodin_reg_n_0_[28] ),
        .R(SR));
  FDRE \fifodin_reg[29] 
       (.C(aclk),
        .CE(m_axi_wready_i_1_n_0),
        .D(s_axi_wdata[29]),
        .Q(\fifodin_reg_n_0_[29] ),
        .R(SR));
  FDRE \fifodin_reg[2] 
       (.C(aclk),
        .CE(m_axi_wready_i_1_n_0),
        .D(s_axi_wdata[2]),
        .Q(\fifodin_reg_n_0_[2] ),
        .R(SR));
  FDRE \fifodin_reg[30] 
       (.C(aclk),
        .CE(m_axi_wready_i_1_n_0),
        .D(s_axi_wdata[30]),
        .Q(\fifodin_reg_n_0_[30] ),
        .R(SR));
  FDRE \fifodin_reg[31] 
       (.C(aclk),
        .CE(m_axi_wready_i_1_n_0),
        .D(s_axi_wdata[31]),
        .Q(\fifodin_reg_n_0_[31] ),
        .R(SR));
  FDRE \fifodin_reg[3] 
       (.C(aclk),
        .CE(m_axi_wready_i_1_n_0),
        .D(s_axi_wdata[3]),
        .Q(\fifodin_reg_n_0_[3] ),
        .R(SR));
  FDRE \fifodin_reg[4] 
       (.C(aclk),
        .CE(m_axi_wready_i_1_n_0),
        .D(s_axi_wdata[4]),
        .Q(\fifodin_reg_n_0_[4] ),
        .R(SR));
  FDRE \fifodin_reg[5] 
       (.C(aclk),
        .CE(m_axi_wready_i_1_n_0),
        .D(s_axi_wdata[5]),
        .Q(\fifodin_reg_n_0_[5] ),
        .R(SR));
  FDRE \fifodin_reg[6] 
       (.C(aclk),
        .CE(m_axi_wready_i_1_n_0),
        .D(s_axi_wdata[6]),
        .Q(\fifodin_reg_n_0_[6] ),
        .R(SR));
  FDRE \fifodin_reg[7] 
       (.C(aclk),
        .CE(m_axi_wready_i_1_n_0),
        .D(s_axi_wdata[7]),
        .Q(\fifodin_reg_n_0_[7] ),
        .R(SR));
  FDRE \fifodin_reg[8] 
       (.C(aclk),
        .CE(m_axi_wready_i_1_n_0),
        .D(s_axi_wdata[8]),
        .Q(\fifodin_reg_n_0_[8] ),
        .R(SR));
  FDRE \fifodin_reg[9] 
       (.C(aclk),
        .CE(m_axi_wready_i_1_n_0),
        .D(s_axi_wdata[9]),
        .Q(\fifodin_reg_n_0_[9] ),
        .R(SR));
  FDRE fifowe_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_axi_wready_i_1_n_0),
        .Q(fifowe),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \lastscanline[1]_i_1 
       (.I0(cmdmode[0]),
        .I1(cmdmode[1]),
        .I2(cmdfifoinst_n_34),
        .I3(cmdfifoinst_n_33),
        .I4(cmdmode[2]),
        .O(\cmdmode_reg[0]_1 ));
  LUT1 #(
    .INIT(2'h1)) 
    \lastscanline[1]_i_2 
       (.I0(D[1]),
        .O(lastscanline0));
  LUT2 #(
    .INIT(4'h8)) 
    m_axi_arready_i_1
       (.I0(s_axi_arvalid),
        .I1(\FSM_onehot_raddrstate_reg_n_0_[1] ),
        .O(m_axi_arready_i_1_n_0));
  FDRE m_axi_arready_reg
       (.C(aclk),
        .CE(out),
        .D(m_axi_arready_i_1_n_0),
        .Q(s_axi_arready),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFF550800)) 
    m_axi_awready_i_1
       (.I0(out),
        .I1(s_axi_awvalid),
        .I2(waddrstate[1]),
        .I3(waddrstate[0]),
        .I4(s_axi_awready),
        .O(m_axi_awready_i_1_n_0));
  FDRE m_axi_awready_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_axi_awready_i_1_n_0),
        .Q(s_axi_awready),
        .R(1'b0));
  FDRE m_axi_bvalid_reg
       (.C(aclk),
        .CE(out),
        .D(\__9/i__n_0 ),
        .Q(s_axi_bvalid),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h80)) 
    \m_axi_rdata[42]_i_1 
       (.I0(\FSM_onehot_raddrstate_reg_n_0_[2] ),
        .I1(s_axi_rready),
        .I2(out),
        .O(\m_axi_rdata[42]_i_1_n_0 ));
  FDRE \m_axi_rdata_reg[32] 
       (.C(aclk),
        .CE(\m_axi_rdata[42]_i_1_n_0 ),
        .D(\m_axi_rdata_reg[42]_0 [0]),
        .Q(s_axi_rdata[0]),
        .R(1'b0));
  FDRE \m_axi_rdata_reg[33] 
       (.C(aclk),
        .CE(\m_axi_rdata[42]_i_1_n_0 ),
        .D(\m_axi_rdata_reg[42]_0 [1]),
        .Q(s_axi_rdata[1]),
        .R(1'b0));
  FDRE \m_axi_rdata_reg[34] 
       (.C(aclk),
        .CE(\m_axi_rdata[42]_i_1_n_0 ),
        .D(\m_axi_rdata_reg[42]_0 [2]),
        .Q(s_axi_rdata[2]),
        .R(1'b0));
  FDRE \m_axi_rdata_reg[35] 
       (.C(aclk),
        .CE(\m_axi_rdata[42]_i_1_n_0 ),
        .D(\m_axi_rdata_reg[42]_0 [3]),
        .Q(s_axi_rdata[3]),
        .R(1'b0));
  FDRE \m_axi_rdata_reg[36] 
       (.C(aclk),
        .CE(\m_axi_rdata[42]_i_1_n_0 ),
        .D(\m_axi_rdata_reg[42]_0 [4]),
        .Q(s_axi_rdata[4]),
        .R(1'b0));
  FDRE \m_axi_rdata_reg[37] 
       (.C(aclk),
        .CE(\m_axi_rdata[42]_i_1_n_0 ),
        .D(\m_axi_rdata_reg[42]_0 [5]),
        .Q(s_axi_rdata[5]),
        .R(1'b0));
  FDRE \m_axi_rdata_reg[38] 
       (.C(aclk),
        .CE(\m_axi_rdata[42]_i_1_n_0 ),
        .D(\m_axi_rdata_reg[42]_0 [6]),
        .Q(s_axi_rdata[6]),
        .R(1'b0));
  FDRE \m_axi_rdata_reg[39] 
       (.C(aclk),
        .CE(\m_axi_rdata[42]_i_1_n_0 ),
        .D(\m_axi_rdata_reg[42]_0 [7]),
        .Q(s_axi_rdata[7]),
        .R(1'b0));
  FDRE \m_axi_rdata_reg[40] 
       (.C(aclk),
        .CE(\m_axi_rdata[42]_i_1_n_0 ),
        .D(\m_axi_rdata_reg[42]_0 [8]),
        .Q(s_axi_rdata[8]),
        .R(1'b0));
  FDRE \m_axi_rdata_reg[41] 
       (.C(aclk),
        .CE(\m_axi_rdata[42]_i_1_n_0 ),
        .D(\m_axi_rdata_reg[42]_0 [9]),
        .Q(s_axi_rdata[9]),
        .R(1'b0));
  FDRE \m_axi_rdata_reg[42] 
       (.C(aclk),
        .CE(\m_axi_rdata[42]_i_1_n_0 ),
        .D(\m_axi_rdata_reg[42]_0 [10]),
        .Q(s_axi_rdata[10]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    m_axi_rlast_i_1
       (.I0(out),
        .O(SR));
  FDRE m_axi_rlast_reg
       (.C(aclk),
        .CE(1'b1),
        .D(\FSM_onehot_raddrstate_reg_n_0_[0] ),
        .Q(s_axi_rlast),
        .R(SR));
  LUT2 #(
    .INIT(4'h8)) 
    m_axi_rvalid_i_1
       (.I0(s_axi_rready),
        .I1(\FSM_onehot_raddrstate_reg_n_0_[2] ),
        .O(m_axi_rvalid_i_1_n_0));
  FDRE m_axi_rvalid_reg
       (.C(aclk),
        .CE(out),
        .D(m_axi_rvalid_i_1_n_0),
        .Q(s_axi_rvalid),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0040)) 
    m_axi_wready_i_1
       (.I0(writestate[1]),
        .I1(writestate[0]),
        .I2(s_axi_wvalid),
        .I3(fifofull),
        .O(m_axi_wready_i_1_n_0));
  FDRE m_axi_wready_reg
       (.C(aclk),
        .CE(out),
        .D(m_axi_wready_i_1_n_0),
        .Q(s_axi_wready),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT5 #(
    .INIT(32'h02000000)) 
    \palettedin[11]_i_1 
       (.I0(cmdfifoinst_n_34),
        .I1(cmdfifoinst_n_33),
        .I2(cmdmode[2]),
        .I3(cmdmode[0]),
        .I4(cmdmode[1]),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \scanaddr[31]_i_1 
       (.I0(cmdmode[0]),
        .I1(cmdmode[2]),
        .I2(cmdmode[1]),
        .I3(cmdfifoinst_n_34),
        .I4(cmdfifoinst_n_33),
        .O(\cmdmode_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \vpucmd[7]_i_1 
       (.I0(cmdmode[0]),
        .I1(cmdmode[2]),
        .I2(cmdfifoinst_n_34),
        .I3(cmdfifoinst_n_33),
        .I4(cmdmode[1]),
        .O(\cmdmode_reg[0]_2 ));
endmodule

(* ORIG_REF_NAME = "hdmi" *) 
module blockone_videomodule_0_0_hdmi
   (cx,
    cy,
    aclk,
    \cx_reg[7]_0 ,
    paletteout0,
    ADDRA,
    \cx_reg[9]_0 ,
    \cx_reg[0]_0 ,
    \cx_reg[1]_0 ,
    \cx_reg[1]_1 ,
    SR,
    tmds,
    tmds_clock,
    out,
    scanwidth,
    p_0_out,
    \paletteout[0]_i_3 ,
    \paletteout[0]_i_3_0 ,
    \paletteout[0]_i_3_1 ,
    \paletteout[0]_i_3_2 ,
    \paletteout[1]_i_3 ,
    \paletteout[1]_i_3_0 ,
    \paletteout[1]_i_3_1 ,
    \paletteout[1]_i_3_2 ,
    \paletteout[2]_i_3 ,
    \paletteout[2]_i_3_0 ,
    \paletteout[2]_i_3_1 ,
    \paletteout[2]_i_3_2 ,
    \paletteout[3]_i_3 ,
    \paletteout[3]_i_3_0 ,
    \paletteout[3]_i_3_1 ,
    \paletteout[3]_i_3_2 ,
    \paletteout[4]_i_3 ,
    \paletteout[4]_i_3_0 ,
    \paletteout[4]_i_3_1 ,
    \paletteout[4]_i_3_2 ,
    \paletteout[5]_i_3 ,
    \paletteout[5]_i_3_0 ,
    \paletteout[5]_i_3_1 ,
    \paletteout[5]_i_3_2 ,
    \paletteout[6]_i_3 ,
    \paletteout[6]_i_3_0 ,
    \paletteout[6]_i_3_1 ,
    \paletteout[6]_i_3_2 ,
    \paletteout[7]_i_3 ,
    \paletteout[7]_i_3_0 ,
    \paletteout[7]_i_3_1 ,
    \paletteout[7]_i_3_2 ,
    \paletteout[8]_i_3 ,
    \paletteout[8]_i_3_0 ,
    \paletteout[8]_i_3_1 ,
    \paletteout[8]_i_3_2 ,
    \paletteout[9]_i_3 ,
    \paletteout[9]_i_3_0 ,
    \paletteout[9]_i_3_1 ,
    \paletteout[9]_i_3_2 ,
    \paletteout[10]_i_3 ,
    \paletteout[10]_i_3_0 ,
    \paletteout[10]_i_3_1 ,
    \paletteout[10]_i_3_2 ,
    \paletteout[11]_i_3 ,
    \paletteout[11]_i_3_0 ,
    \paletteout[11]_i_3_1 ,
    \paletteout[11]_i_3_2 ,
    paletteentries_reg_0_63_0_2_i_11_0,
    paletteentries_reg_0_63_0_2_i_11_1,
    paletteentries_reg_0_63_0_2_i_11_2,
    paletteentries_reg_0_63_0_2_i_11_3,
    paletteentries_reg_0_63_0_2_i_9_0,
    paletteentries_reg_0_63_0_2_i_9_1,
    paletteentries_reg_0_63_0_2_i_9_2,
    paletteentries_reg_0_63_0_2_i_9_3,
    \paletteout[11]_i_16_0 ,
    \paletteout[11]_i_16_1 ,
    \paletteout[11]_i_16_2 ,
    \paletteout[11]_i_16_3 ,
    \paletteout[11]_i_14_0 ,
    \paletteout[11]_i_14_1 ,
    \paletteout[11]_i_14_2 ,
    \paletteout[11]_i_14_3 ,
    \paletteout[0]_i_3_3 ,
    \paletteout[0]_i_3_4 ,
    \paletteout[0]_i_3_5 ,
    \paletteout[0]_i_3_6 ,
    \paletteout[1]_i_3_3 ,
    \paletteout[1]_i_3_4 ,
    \paletteout[1]_i_3_5 ,
    \paletteout[1]_i_3_6 ,
    \paletteout[2]_i_3_3 ,
    \paletteout[2]_i_3_4 ,
    \paletteout[2]_i_3_5 ,
    \paletteout[2]_i_3_6 ,
    \paletteout[3]_i_3_3 ,
    \paletteout[3]_i_3_4 ,
    \paletteout[3]_i_3_5 ,
    \paletteout[3]_i_3_6 ,
    \paletteout[4]_i_3_3 ,
    \paletteout[4]_i_3_4 ,
    \paletteout[4]_i_3_5 ,
    \paletteout[4]_i_3_6 ,
    \paletteout[5]_i_3_3 ,
    \paletteout[5]_i_3_4 ,
    \paletteout[5]_i_3_5 ,
    \paletteout[5]_i_3_6 ,
    \paletteout[6]_i_3_3 ,
    \paletteout[6]_i_3_4 ,
    \paletteout[6]_i_3_5 ,
    \paletteout[6]_i_3_6 ,
    \paletteout[7]_i_3_3 ,
    \paletteout[7]_i_3_4 ,
    \paletteout[7]_i_3_5 ,
    \paletteout[7]_i_3_6 ,
    \paletteout[8]_i_3_3 ,
    \paletteout[8]_i_3_4 ,
    \paletteout[8]_i_3_5 ,
    \paletteout[8]_i_3_6 ,
    \paletteout[9]_i_3_3 ,
    \paletteout[9]_i_3_4 ,
    \paletteout[9]_i_3_5 ,
    \paletteout[9]_i_3_6 ,
    \paletteout[10]_i_3_3 ,
    \paletteout[10]_i_3_4 ,
    \paletteout[10]_i_3_5 ,
    \paletteout[10]_i_3_6 ,
    \paletteout[11]_i_3_3 ,
    \paletteout[11]_i_3_4 ,
    \paletteout[11]_i_3_5 ,
    \paletteout[11]_i_3_6 ,
    paletteentries_reg_0_63_0_2_i_11_4,
    paletteentries_reg_0_63_0_2_i_11_5,
    paletteentries_reg_0_63_0_2_i_11_6,
    paletteentries_reg_0_63_0_2_i_11_7,
    paletteentries_reg_0_63_0_2_i_9_4,
    paletteentries_reg_0_63_0_2_i_9_5,
    paletteentries_reg_0_63_0_2_i_9_6,
    paletteentries_reg_0_63_0_2_i_9_7,
    \paletteout[11]_i_16_4 ,
    \paletteout[11]_i_16_5 ,
    \paletteout[11]_i_16_6 ,
    \paletteout[11]_i_16_7 ,
    \paletteout[11]_i_14_4 ,
    \paletteout[11]_i_14_5 ,
    \paletteout[11]_i_14_6 ,
    \paletteout[11]_i_14_7 ,
    \paletteout[0]_i_3_7 ,
    \paletteout[0]_i_3_8 ,
    \paletteout[0]_i_3_9 ,
    \paletteout[0]_i_3_10 ,
    \paletteout[1]_i_3_7 ,
    \paletteout[1]_i_3_8 ,
    \paletteout[1]_i_3_9 ,
    \paletteout[1]_i_3_10 ,
    \paletteout[2]_i_3_7 ,
    \paletteout[2]_i_3_8 ,
    \paletteout[2]_i_3_9 ,
    \paletteout[2]_i_3_10 ,
    \paletteout[3]_i_3_7 ,
    \paletteout[3]_i_3_8 ,
    \paletteout[3]_i_3_9 ,
    \paletteout[3]_i_3_10 ,
    \paletteout[4]_i_3_7 ,
    \paletteout[4]_i_3_8 ,
    \paletteout[4]_i_3_9 ,
    \paletteout[4]_i_3_10 ,
    \paletteout[5]_i_3_7 ,
    \paletteout[5]_i_3_8 ,
    \paletteout[5]_i_3_9 ,
    \paletteout[5]_i_3_10 ,
    \paletteout[6]_i_3_7 ,
    \paletteout[6]_i_3_8 ,
    \paletteout[6]_i_3_9 ,
    \paletteout[6]_i_3_10 ,
    \paletteout[7]_i_3_7 ,
    \paletteout[7]_i_3_8 ,
    \paletteout[7]_i_3_9 ,
    \paletteout[7]_i_3_10 ,
    \paletteout[8]_i_3_7 ,
    \paletteout[8]_i_3_8 ,
    \paletteout[8]_i_3_9 ,
    \paletteout[8]_i_3_10 ,
    \paletteout[9]_i_3_7 ,
    \paletteout[9]_i_3_8 ,
    \paletteout[9]_i_3_9 ,
    \paletteout[9]_i_3_10 ,
    \paletteout[10]_i_3_7 ,
    \paletteout[10]_i_3_8 ,
    \paletteout[10]_i_3_9 ,
    \paletteout[10]_i_3_10 ,
    \paletteout[11]_i_3_7 ,
    \paletteout[11]_i_3_8 ,
    \paletteout[11]_i_3_9 ,
    \paletteout[11]_i_3_10 ,
    paletteentries_reg_0_63_0_2_i_12_0,
    paletteentries_reg_0_63_0_2_i_12_1,
    paletteentries_reg_0_63_0_2_i_12_2,
    paletteentries_reg_0_63_0_2_i_12_3,
    paletteentries_reg_0_63_0_2_i_10_0,
    paletteentries_reg_0_63_0_2_i_10_1,
    paletteentries_reg_0_63_0_2_i_10_2,
    paletteentries_reg_0_63_0_2_i_10_3,
    \paletteout[11]_i_17_0 ,
    \paletteout[11]_i_17_1 ,
    \paletteout[11]_i_17_2 ,
    \paletteout[11]_i_17_3 ,
    \paletteout[11]_i_15_0 ,
    \paletteout[11]_i_15_1 ,
    \paletteout[11]_i_15_2 ,
    \paletteout[11]_i_15_3 ,
    \paletteout[0]_i_3_11 ,
    \paletteout[0]_i_3_12 ,
    \paletteout[0]_i_3_13 ,
    \paletteout[0]_i_3_14 ,
    \paletteout[1]_i_3_11 ,
    \paletteout[1]_i_3_12 ,
    \paletteout[1]_i_3_13 ,
    \paletteout[1]_i_3_14 ,
    \paletteout[2]_i_3_11 ,
    \paletteout[2]_i_3_12 ,
    \paletteout[2]_i_3_13 ,
    \paletteout[2]_i_3_14 ,
    \paletteout[3]_i_3_11 ,
    \paletteout[3]_i_3_12 ,
    \paletteout[3]_i_3_13 ,
    \paletteout[3]_i_3_14 ,
    \paletteout[4]_i_3_11 ,
    \paletteout[4]_i_3_12 ,
    \paletteout[4]_i_3_13 ,
    \paletteout[4]_i_3_14 ,
    \paletteout[5]_i_3_11 ,
    \paletteout[5]_i_3_12 ,
    \paletteout[5]_i_3_13 ,
    \paletteout[5]_i_3_14 ,
    \paletteout[6]_i_3_11 ,
    \paletteout[6]_i_3_12 ,
    \paletteout[6]_i_3_13 ,
    \paletteout[6]_i_3_14 ,
    \paletteout[7]_i_3_11 ,
    \paletteout[7]_i_3_12 ,
    \paletteout[7]_i_3_13 ,
    \paletteout[7]_i_3_14 ,
    \paletteout[8]_i_3_11 ,
    \paletteout[8]_i_3_12 ,
    \paletteout[8]_i_3_13 ,
    \paletteout[8]_i_3_14 ,
    \paletteout[9]_i_3_11 ,
    \paletteout[9]_i_3_12 ,
    \paletteout[9]_i_3_13 ,
    \paletteout[9]_i_3_14 ,
    \paletteout[10]_i_3_11 ,
    \paletteout[10]_i_3_12 ,
    \paletteout[10]_i_3_13 ,
    \paletteout[10]_i_3_14 ,
    \paletteout[11]_i_3_11 ,
    \paletteout[11]_i_3_12 ,
    \paletteout[11]_i_3_13 ,
    \paletteout[11]_i_3_14 ,
    paletteentries_reg_0_63_0_2_i_12_4,
    paletteentries_reg_0_63_0_2_i_12_5,
    paletteentries_reg_0_63_0_2_i_12_6,
    paletteentries_reg_0_63_0_2_i_12_7,
    paletteentries_reg_0_63_0_2_i_10_4,
    paletteentries_reg_0_63_0_2_i_10_5,
    paletteentries_reg_0_63_0_2_i_10_6,
    paletteentries_reg_0_63_0_2_i_10_7,
    \paletteout[11]_i_17_4 ,
    \paletteout[11]_i_17_5 ,
    \paletteout[11]_i_17_6 ,
    \paletteout[11]_i_17_7 ,
    \paletteout[11]_i_15_4 ,
    \paletteout[11]_i_15_5 ,
    \paletteout[11]_i_15_6 ,
    \paletteout[11]_i_15_7 ,
    \paletteout_reg[11] ,
    \paletteout_reg[11]_0 ,
    \paletteout_reg[11]_1 ,
    \paletteout_reg[11]_2 ,
    \paletteout_reg[10] ,
    \paletteout_reg[10]_0 ,
    \paletteout_reg[10]_1 ,
    \paletteout_reg[10]_2 ,
    \paletteout_reg[9] ,
    \paletteout_reg[9]_0 ,
    \paletteout_reg[9]_1 ,
    \paletteout_reg[9]_2 ,
    \paletteout_reg[8] ,
    \paletteout_reg[8]_0 ,
    \paletteout_reg[8]_1 ,
    \paletteout_reg[8]_2 ,
    \paletteout_reg[7] ,
    \paletteout_reg[7]_0 ,
    \paletteout_reg[7]_1 ,
    \paletteout_reg[7]_2 ,
    \paletteout_reg[6] ,
    \paletteout_reg[6]_0 ,
    \paletteout_reg[6]_1 ,
    \paletteout_reg[6]_2 ,
    \paletteout_reg[5] ,
    \paletteout_reg[5]_0 ,
    \paletteout_reg[5]_1 ,
    \paletteout_reg[5]_2 ,
    \paletteout_reg[4] ,
    \paletteout_reg[4]_0 ,
    \paletteout_reg[4]_1 ,
    \paletteout_reg[4]_2 ,
    \paletteout_reg[3] ,
    \paletteout_reg[3]_0 ,
    \paletteout_reg[3]_1 ,
    \paletteout_reg[3]_2 ,
    \paletteout_reg[2] ,
    \paletteout_reg[2]_0 ,
    \paletteout_reg[2]_1 ,
    \paletteout_reg[2]_2 ,
    \paletteout_reg[1] ,
    \paletteout_reg[1]_0 ,
    \paletteout_reg[1]_1 ,
    \paletteout_reg[1]_2 ,
    \paletteout_reg[0] ,
    \paletteout_reg[0]_0 ,
    \paletteout_reg[0]_1 ,
    \paletteout_reg[0]_2 ,
    blankt,
    audiosampleclk,
    pixelClock,
    audioSampleInputLR,
    pixelClockx5,
    Q);
  output [9:0]cx;
  output [9:0]cy;
  output [47:0]aclk;
  output [5:0]\cx_reg[7]_0 ;
  output [11:0]paletteout0;
  output [5:0]ADDRA;
  output \cx_reg[9]_0 ;
  output \cx_reg[0]_0 ;
  output \cx_reg[1]_0 ;
  output \cx_reg[1]_1 ;
  output [0:0]SR;
  output [2:0]tmds;
  output tmds_clock;
  input out;
  input scanwidth;
  input [1:0]p_0_out;
  input \paletteout[0]_i_3 ;
  input \paletteout[0]_i_3_0 ;
  input \paletteout[0]_i_3_1 ;
  input \paletteout[0]_i_3_2 ;
  input \paletteout[1]_i_3 ;
  input \paletteout[1]_i_3_0 ;
  input \paletteout[1]_i_3_1 ;
  input \paletteout[1]_i_3_2 ;
  input \paletteout[2]_i_3 ;
  input \paletteout[2]_i_3_0 ;
  input \paletteout[2]_i_3_1 ;
  input \paletteout[2]_i_3_2 ;
  input \paletteout[3]_i_3 ;
  input \paletteout[3]_i_3_0 ;
  input \paletteout[3]_i_3_1 ;
  input \paletteout[3]_i_3_2 ;
  input \paletteout[4]_i_3 ;
  input \paletteout[4]_i_3_0 ;
  input \paletteout[4]_i_3_1 ;
  input \paletteout[4]_i_3_2 ;
  input \paletteout[5]_i_3 ;
  input \paletteout[5]_i_3_0 ;
  input \paletteout[5]_i_3_1 ;
  input \paletteout[5]_i_3_2 ;
  input \paletteout[6]_i_3 ;
  input \paletteout[6]_i_3_0 ;
  input \paletteout[6]_i_3_1 ;
  input \paletteout[6]_i_3_2 ;
  input \paletteout[7]_i_3 ;
  input \paletteout[7]_i_3_0 ;
  input \paletteout[7]_i_3_1 ;
  input \paletteout[7]_i_3_2 ;
  input \paletteout[8]_i_3 ;
  input \paletteout[8]_i_3_0 ;
  input \paletteout[8]_i_3_1 ;
  input \paletteout[8]_i_3_2 ;
  input \paletteout[9]_i_3 ;
  input \paletteout[9]_i_3_0 ;
  input \paletteout[9]_i_3_1 ;
  input \paletteout[9]_i_3_2 ;
  input \paletteout[10]_i_3 ;
  input \paletteout[10]_i_3_0 ;
  input \paletteout[10]_i_3_1 ;
  input \paletteout[10]_i_3_2 ;
  input \paletteout[11]_i_3 ;
  input \paletteout[11]_i_3_0 ;
  input \paletteout[11]_i_3_1 ;
  input \paletteout[11]_i_3_2 ;
  input paletteentries_reg_0_63_0_2_i_11_0;
  input paletteentries_reg_0_63_0_2_i_11_1;
  input paletteentries_reg_0_63_0_2_i_11_2;
  input paletteentries_reg_0_63_0_2_i_11_3;
  input paletteentries_reg_0_63_0_2_i_9_0;
  input paletteentries_reg_0_63_0_2_i_9_1;
  input paletteentries_reg_0_63_0_2_i_9_2;
  input paletteentries_reg_0_63_0_2_i_9_3;
  input \paletteout[11]_i_16_0 ;
  input \paletteout[11]_i_16_1 ;
  input \paletteout[11]_i_16_2 ;
  input \paletteout[11]_i_16_3 ;
  input \paletteout[11]_i_14_0 ;
  input \paletteout[11]_i_14_1 ;
  input \paletteout[11]_i_14_2 ;
  input \paletteout[11]_i_14_3 ;
  input \paletteout[0]_i_3_3 ;
  input \paletteout[0]_i_3_4 ;
  input \paletteout[0]_i_3_5 ;
  input \paletteout[0]_i_3_6 ;
  input \paletteout[1]_i_3_3 ;
  input \paletteout[1]_i_3_4 ;
  input \paletteout[1]_i_3_5 ;
  input \paletteout[1]_i_3_6 ;
  input \paletteout[2]_i_3_3 ;
  input \paletteout[2]_i_3_4 ;
  input \paletteout[2]_i_3_5 ;
  input \paletteout[2]_i_3_6 ;
  input \paletteout[3]_i_3_3 ;
  input \paletteout[3]_i_3_4 ;
  input \paletteout[3]_i_3_5 ;
  input \paletteout[3]_i_3_6 ;
  input \paletteout[4]_i_3_3 ;
  input \paletteout[4]_i_3_4 ;
  input \paletteout[4]_i_3_5 ;
  input \paletteout[4]_i_3_6 ;
  input \paletteout[5]_i_3_3 ;
  input \paletteout[5]_i_3_4 ;
  input \paletteout[5]_i_3_5 ;
  input \paletteout[5]_i_3_6 ;
  input \paletteout[6]_i_3_3 ;
  input \paletteout[6]_i_3_4 ;
  input \paletteout[6]_i_3_5 ;
  input \paletteout[6]_i_3_6 ;
  input \paletteout[7]_i_3_3 ;
  input \paletteout[7]_i_3_4 ;
  input \paletteout[7]_i_3_5 ;
  input \paletteout[7]_i_3_6 ;
  input \paletteout[8]_i_3_3 ;
  input \paletteout[8]_i_3_4 ;
  input \paletteout[8]_i_3_5 ;
  input \paletteout[8]_i_3_6 ;
  input \paletteout[9]_i_3_3 ;
  input \paletteout[9]_i_3_4 ;
  input \paletteout[9]_i_3_5 ;
  input \paletteout[9]_i_3_6 ;
  input \paletteout[10]_i_3_3 ;
  input \paletteout[10]_i_3_4 ;
  input \paletteout[10]_i_3_5 ;
  input \paletteout[10]_i_3_6 ;
  input \paletteout[11]_i_3_3 ;
  input \paletteout[11]_i_3_4 ;
  input \paletteout[11]_i_3_5 ;
  input \paletteout[11]_i_3_6 ;
  input paletteentries_reg_0_63_0_2_i_11_4;
  input paletteentries_reg_0_63_0_2_i_11_5;
  input paletteentries_reg_0_63_0_2_i_11_6;
  input paletteentries_reg_0_63_0_2_i_11_7;
  input paletteentries_reg_0_63_0_2_i_9_4;
  input paletteentries_reg_0_63_0_2_i_9_5;
  input paletteentries_reg_0_63_0_2_i_9_6;
  input paletteentries_reg_0_63_0_2_i_9_7;
  input \paletteout[11]_i_16_4 ;
  input \paletteout[11]_i_16_5 ;
  input \paletteout[11]_i_16_6 ;
  input \paletteout[11]_i_16_7 ;
  input \paletteout[11]_i_14_4 ;
  input \paletteout[11]_i_14_5 ;
  input \paletteout[11]_i_14_6 ;
  input \paletteout[11]_i_14_7 ;
  input \paletteout[0]_i_3_7 ;
  input \paletteout[0]_i_3_8 ;
  input \paletteout[0]_i_3_9 ;
  input \paletteout[0]_i_3_10 ;
  input \paletteout[1]_i_3_7 ;
  input \paletteout[1]_i_3_8 ;
  input \paletteout[1]_i_3_9 ;
  input \paletteout[1]_i_3_10 ;
  input \paletteout[2]_i_3_7 ;
  input \paletteout[2]_i_3_8 ;
  input \paletteout[2]_i_3_9 ;
  input \paletteout[2]_i_3_10 ;
  input \paletteout[3]_i_3_7 ;
  input \paletteout[3]_i_3_8 ;
  input \paletteout[3]_i_3_9 ;
  input \paletteout[3]_i_3_10 ;
  input \paletteout[4]_i_3_7 ;
  input \paletteout[4]_i_3_8 ;
  input \paletteout[4]_i_3_9 ;
  input \paletteout[4]_i_3_10 ;
  input \paletteout[5]_i_3_7 ;
  input \paletteout[5]_i_3_8 ;
  input \paletteout[5]_i_3_9 ;
  input \paletteout[5]_i_3_10 ;
  input \paletteout[6]_i_3_7 ;
  input \paletteout[6]_i_3_8 ;
  input \paletteout[6]_i_3_9 ;
  input \paletteout[6]_i_3_10 ;
  input \paletteout[7]_i_3_7 ;
  input \paletteout[7]_i_3_8 ;
  input \paletteout[7]_i_3_9 ;
  input \paletteout[7]_i_3_10 ;
  input \paletteout[8]_i_3_7 ;
  input \paletteout[8]_i_3_8 ;
  input \paletteout[8]_i_3_9 ;
  input \paletteout[8]_i_3_10 ;
  input \paletteout[9]_i_3_7 ;
  input \paletteout[9]_i_3_8 ;
  input \paletteout[9]_i_3_9 ;
  input \paletteout[9]_i_3_10 ;
  input \paletteout[10]_i_3_7 ;
  input \paletteout[10]_i_3_8 ;
  input \paletteout[10]_i_3_9 ;
  input \paletteout[10]_i_3_10 ;
  input \paletteout[11]_i_3_7 ;
  input \paletteout[11]_i_3_8 ;
  input \paletteout[11]_i_3_9 ;
  input \paletteout[11]_i_3_10 ;
  input paletteentries_reg_0_63_0_2_i_12_0;
  input paletteentries_reg_0_63_0_2_i_12_1;
  input paletteentries_reg_0_63_0_2_i_12_2;
  input paletteentries_reg_0_63_0_2_i_12_3;
  input paletteentries_reg_0_63_0_2_i_10_0;
  input paletteentries_reg_0_63_0_2_i_10_1;
  input paletteentries_reg_0_63_0_2_i_10_2;
  input paletteentries_reg_0_63_0_2_i_10_3;
  input \paletteout[11]_i_17_0 ;
  input \paletteout[11]_i_17_1 ;
  input \paletteout[11]_i_17_2 ;
  input \paletteout[11]_i_17_3 ;
  input \paletteout[11]_i_15_0 ;
  input \paletteout[11]_i_15_1 ;
  input \paletteout[11]_i_15_2 ;
  input \paletteout[11]_i_15_3 ;
  input \paletteout[0]_i_3_11 ;
  input \paletteout[0]_i_3_12 ;
  input \paletteout[0]_i_3_13 ;
  input \paletteout[0]_i_3_14 ;
  input \paletteout[1]_i_3_11 ;
  input \paletteout[1]_i_3_12 ;
  input \paletteout[1]_i_3_13 ;
  input \paletteout[1]_i_3_14 ;
  input \paletteout[2]_i_3_11 ;
  input \paletteout[2]_i_3_12 ;
  input \paletteout[2]_i_3_13 ;
  input \paletteout[2]_i_3_14 ;
  input \paletteout[3]_i_3_11 ;
  input \paletteout[3]_i_3_12 ;
  input \paletteout[3]_i_3_13 ;
  input \paletteout[3]_i_3_14 ;
  input \paletteout[4]_i_3_11 ;
  input \paletteout[4]_i_3_12 ;
  input \paletteout[4]_i_3_13 ;
  input \paletteout[4]_i_3_14 ;
  input \paletteout[5]_i_3_11 ;
  input \paletteout[5]_i_3_12 ;
  input \paletteout[5]_i_3_13 ;
  input \paletteout[5]_i_3_14 ;
  input \paletteout[6]_i_3_11 ;
  input \paletteout[6]_i_3_12 ;
  input \paletteout[6]_i_3_13 ;
  input \paletteout[6]_i_3_14 ;
  input \paletteout[7]_i_3_11 ;
  input \paletteout[7]_i_3_12 ;
  input \paletteout[7]_i_3_13 ;
  input \paletteout[7]_i_3_14 ;
  input \paletteout[8]_i_3_11 ;
  input \paletteout[8]_i_3_12 ;
  input \paletteout[8]_i_3_13 ;
  input \paletteout[8]_i_3_14 ;
  input \paletteout[9]_i_3_11 ;
  input \paletteout[9]_i_3_12 ;
  input \paletteout[9]_i_3_13 ;
  input \paletteout[9]_i_3_14 ;
  input \paletteout[10]_i_3_11 ;
  input \paletteout[10]_i_3_12 ;
  input \paletteout[10]_i_3_13 ;
  input \paletteout[10]_i_3_14 ;
  input \paletteout[11]_i_3_11 ;
  input \paletteout[11]_i_3_12 ;
  input \paletteout[11]_i_3_13 ;
  input \paletteout[11]_i_3_14 ;
  input paletteentries_reg_0_63_0_2_i_12_4;
  input paletteentries_reg_0_63_0_2_i_12_5;
  input paletteentries_reg_0_63_0_2_i_12_6;
  input paletteentries_reg_0_63_0_2_i_12_7;
  input paletteentries_reg_0_63_0_2_i_10_4;
  input paletteentries_reg_0_63_0_2_i_10_5;
  input paletteentries_reg_0_63_0_2_i_10_6;
  input paletteentries_reg_0_63_0_2_i_10_7;
  input \paletteout[11]_i_17_4 ;
  input \paletteout[11]_i_17_5 ;
  input \paletteout[11]_i_17_6 ;
  input \paletteout[11]_i_17_7 ;
  input \paletteout[11]_i_15_4 ;
  input \paletteout[11]_i_15_5 ;
  input \paletteout[11]_i_15_6 ;
  input \paletteout[11]_i_15_7 ;
  input \paletteout_reg[11] ;
  input \paletteout_reg[11]_0 ;
  input \paletteout_reg[11]_1 ;
  input \paletteout_reg[11]_2 ;
  input \paletteout_reg[10] ;
  input \paletteout_reg[10]_0 ;
  input \paletteout_reg[10]_1 ;
  input \paletteout_reg[10]_2 ;
  input \paletteout_reg[9] ;
  input \paletteout_reg[9]_0 ;
  input \paletteout_reg[9]_1 ;
  input \paletteout_reg[9]_2 ;
  input \paletteout_reg[8] ;
  input \paletteout_reg[8]_0 ;
  input \paletteout_reg[8]_1 ;
  input \paletteout_reg[8]_2 ;
  input \paletteout_reg[7] ;
  input \paletteout_reg[7]_0 ;
  input \paletteout_reg[7]_1 ;
  input \paletteout_reg[7]_2 ;
  input \paletteout_reg[6] ;
  input \paletteout_reg[6]_0 ;
  input \paletteout_reg[6]_1 ;
  input \paletteout_reg[6]_2 ;
  input \paletteout_reg[5] ;
  input \paletteout_reg[5]_0 ;
  input \paletteout_reg[5]_1 ;
  input \paletteout_reg[5]_2 ;
  input \paletteout_reg[4] ;
  input \paletteout_reg[4]_0 ;
  input \paletteout_reg[4]_1 ;
  input \paletteout_reg[4]_2 ;
  input \paletteout_reg[3] ;
  input \paletteout_reg[3]_0 ;
  input \paletteout_reg[3]_1 ;
  input \paletteout_reg[3]_2 ;
  input \paletteout_reg[2] ;
  input \paletteout_reg[2]_0 ;
  input \paletteout_reg[2]_1 ;
  input \paletteout_reg[2]_2 ;
  input \paletteout_reg[1] ;
  input \paletteout_reg[1]_0 ;
  input \paletteout_reg[1]_1 ;
  input \paletteout_reg[1]_2 ;
  input \paletteout_reg[0] ;
  input \paletteout_reg[0]_0 ;
  input \paletteout_reg[0]_1 ;
  input \paletteout_reg[0]_2 ;
  input blankt;
  input audiosampleclk;
  input pixelClock;
  input [31:0]audioSampleInputLR;
  input pixelClockx5;
  input [11:0]Q;

  wire [5:0]ADDRA;
  wire [11:0]Q;
  wire [0:0]SR;
  wire [47:0]aclk;
  wire [31:0]audioSampleInputLR;
  wire audiosampleclk;
  wire [57:56]\bch[1]_26 ;
  wire [56:56]\bch[2]_27 ;
  wire blankt;
  wire blankt_i_2_n_0;
  wire blankt_i_3_n_0;
  wire blankt_i_4_n_0;
  wire blankt_i_5_n_0;
  wire [4:0]control_data;
  wire [9:0]cx;
  wire \cx[0]_i_1_n_0 ;
  wire \cx[1]_i_1_n_0 ;
  wire \cx[2]_i_1_n_0 ;
  wire \cx[3]_i_1_n_0 ;
  wire \cx[4]_i_1_n_0 ;
  wire \cx[5]_i_1_n_0 ;
  wire \cx[6]_i_1_n_0 ;
  wire \cx[7]_i_1_n_0 ;
  wire \cx[8]_i_1_n_0 ;
  wire \cx[9]_i_1_n_0 ;
  wire \cx[9]_i_2_n_0 ;
  wire \cx[9]_i_3_n_0 ;
  wire \cx_reg[0]_0 ;
  wire \cx_reg[1]_0 ;
  wire \cx_reg[1]_1 ;
  wire [5:0]\cx_reg[7]_0 ;
  wire \cx_reg[9]_0 ;
  wire [9:0]cy;
  wire cy0;
  wire \cy[0]_i_1_n_0 ;
  wire \cy[1]_i_1_n_0 ;
  wire \cy[2]_i_1_n_0 ;
  wire \cy[3]_i_1_n_0 ;
  wire \cy[3]_i_2_n_0 ;
  wire \cy[3]_i_3_n_0 ;
  wire \cy[4]_i_1_n_0 ;
  wire \cy[5]_i_1_n_0 ;
  wire \cy[6]_i_1_n_0 ;
  wire \cy[7]_i_1_n_0 ;
  wire \cy[8]_i_1_n_0 ;
  wire \cy[9]_i_2_n_0 ;
  wire \cy[9]_i_3_n_0 ;
  wire \cy[9]_i_5_n_0 ;
  wire \cy[9]_i_6_n_0 ;
  wire \cy[9]_i_7_n_0 ;
  wire [11:0]data_island_data;
  wire data_island_data0;
  wire frame_counter10_in;
  wire hsync;
  wire [2:0]mode;
  wire out;
  wire [1:0]p_0_out;
  wire [2:2]p_0_out_0;
  wire [0:0]p_18_out;
  wire [0:0]p_27_out;
  wire paletteentries_reg_0_63_0_2_i_10_0;
  wire paletteentries_reg_0_63_0_2_i_10_1;
  wire paletteentries_reg_0_63_0_2_i_10_2;
  wire paletteentries_reg_0_63_0_2_i_10_3;
  wire paletteentries_reg_0_63_0_2_i_10_4;
  wire paletteentries_reg_0_63_0_2_i_10_5;
  wire paletteentries_reg_0_63_0_2_i_10_6;
  wire paletteentries_reg_0_63_0_2_i_10_7;
  wire paletteentries_reg_0_63_0_2_i_10_n_0;
  wire paletteentries_reg_0_63_0_2_i_11_0;
  wire paletteentries_reg_0_63_0_2_i_11_1;
  wire paletteentries_reg_0_63_0_2_i_11_2;
  wire paletteentries_reg_0_63_0_2_i_11_3;
  wire paletteentries_reg_0_63_0_2_i_11_4;
  wire paletteentries_reg_0_63_0_2_i_11_5;
  wire paletteentries_reg_0_63_0_2_i_11_6;
  wire paletteentries_reg_0_63_0_2_i_11_7;
  wire paletteentries_reg_0_63_0_2_i_11_n_0;
  wire paletteentries_reg_0_63_0_2_i_12_0;
  wire paletteentries_reg_0_63_0_2_i_12_1;
  wire paletteentries_reg_0_63_0_2_i_12_2;
  wire paletteentries_reg_0_63_0_2_i_12_3;
  wire paletteentries_reg_0_63_0_2_i_12_4;
  wire paletteentries_reg_0_63_0_2_i_12_5;
  wire paletteentries_reg_0_63_0_2_i_12_6;
  wire paletteentries_reg_0_63_0_2_i_12_7;
  wire paletteentries_reg_0_63_0_2_i_12_n_0;
  wire paletteentries_reg_0_63_0_2_i_13_n_0;
  wire paletteentries_reg_0_63_0_2_i_14_n_0;
  wire paletteentries_reg_0_63_0_2_i_15_n_0;
  wire paletteentries_reg_0_63_0_2_i_16_n_0;
  wire paletteentries_reg_0_63_0_2_i_17_n_0;
  wire paletteentries_reg_0_63_0_2_i_18_n_0;
  wire paletteentries_reg_0_63_0_2_i_19_n_0;
  wire paletteentries_reg_0_63_0_2_i_20_n_0;
  wire paletteentries_reg_0_63_0_2_i_8_n_0;
  wire paletteentries_reg_0_63_0_2_i_9_0;
  wire paletteentries_reg_0_63_0_2_i_9_1;
  wire paletteentries_reg_0_63_0_2_i_9_2;
  wire paletteentries_reg_0_63_0_2_i_9_3;
  wire paletteentries_reg_0_63_0_2_i_9_4;
  wire paletteentries_reg_0_63_0_2_i_9_5;
  wire paletteentries_reg_0_63_0_2_i_9_6;
  wire paletteentries_reg_0_63_0_2_i_9_7;
  wire paletteentries_reg_0_63_0_2_i_9_n_0;
  wire [7:6]paletteindex;
  wire [11:0]paletteout0;
  wire \paletteout[0]_i_3 ;
  wire \paletteout[0]_i_3_0 ;
  wire \paletteout[0]_i_3_1 ;
  wire \paletteout[0]_i_3_10 ;
  wire \paletteout[0]_i_3_11 ;
  wire \paletteout[0]_i_3_12 ;
  wire \paletteout[0]_i_3_13 ;
  wire \paletteout[0]_i_3_14 ;
  wire \paletteout[0]_i_3_2 ;
  wire \paletteout[0]_i_3_3 ;
  wire \paletteout[0]_i_3_4 ;
  wire \paletteout[0]_i_3_5 ;
  wire \paletteout[0]_i_3_6 ;
  wire \paletteout[0]_i_3_7 ;
  wire \paletteout[0]_i_3_8 ;
  wire \paletteout[0]_i_3_9 ;
  wire \paletteout[10]_i_3 ;
  wire \paletteout[10]_i_3_0 ;
  wire \paletteout[10]_i_3_1 ;
  wire \paletteout[10]_i_3_10 ;
  wire \paletteout[10]_i_3_11 ;
  wire \paletteout[10]_i_3_12 ;
  wire \paletteout[10]_i_3_13 ;
  wire \paletteout[10]_i_3_14 ;
  wire \paletteout[10]_i_3_2 ;
  wire \paletteout[10]_i_3_3 ;
  wire \paletteout[10]_i_3_4 ;
  wire \paletteout[10]_i_3_5 ;
  wire \paletteout[10]_i_3_6 ;
  wire \paletteout[10]_i_3_7 ;
  wire \paletteout[10]_i_3_8 ;
  wire \paletteout[10]_i_3_9 ;
  wire \paletteout[11]_i_13_n_0 ;
  wire \paletteout[11]_i_14_0 ;
  wire \paletteout[11]_i_14_1 ;
  wire \paletteout[11]_i_14_2 ;
  wire \paletteout[11]_i_14_3 ;
  wire \paletteout[11]_i_14_4 ;
  wire \paletteout[11]_i_14_5 ;
  wire \paletteout[11]_i_14_6 ;
  wire \paletteout[11]_i_14_7 ;
  wire \paletteout[11]_i_14_n_0 ;
  wire \paletteout[11]_i_15_0 ;
  wire \paletteout[11]_i_15_1 ;
  wire \paletteout[11]_i_15_2 ;
  wire \paletteout[11]_i_15_3 ;
  wire \paletteout[11]_i_15_4 ;
  wire \paletteout[11]_i_15_5 ;
  wire \paletteout[11]_i_15_6 ;
  wire \paletteout[11]_i_15_7 ;
  wire \paletteout[11]_i_15_n_0 ;
  wire \paletteout[11]_i_16_0 ;
  wire \paletteout[11]_i_16_1 ;
  wire \paletteout[11]_i_16_2 ;
  wire \paletteout[11]_i_16_3 ;
  wire \paletteout[11]_i_16_4 ;
  wire \paletteout[11]_i_16_5 ;
  wire \paletteout[11]_i_16_6 ;
  wire \paletteout[11]_i_16_7 ;
  wire \paletteout[11]_i_16_n_0 ;
  wire \paletteout[11]_i_17_0 ;
  wire \paletteout[11]_i_17_1 ;
  wire \paletteout[11]_i_17_2 ;
  wire \paletteout[11]_i_17_3 ;
  wire \paletteout[11]_i_17_4 ;
  wire \paletteout[11]_i_17_5 ;
  wire \paletteout[11]_i_17_6 ;
  wire \paletteout[11]_i_17_7 ;
  wire \paletteout[11]_i_17_n_0 ;
  wire \paletteout[11]_i_18_n_0 ;
  wire \paletteout[11]_i_3 ;
  wire \paletteout[11]_i_3_0 ;
  wire \paletteout[11]_i_3_1 ;
  wire \paletteout[11]_i_3_10 ;
  wire \paletteout[11]_i_3_11 ;
  wire \paletteout[11]_i_3_12 ;
  wire \paletteout[11]_i_3_13 ;
  wire \paletteout[11]_i_3_14 ;
  wire \paletteout[11]_i_3_2 ;
  wire \paletteout[11]_i_3_3 ;
  wire \paletteout[11]_i_3_4 ;
  wire \paletteout[11]_i_3_5 ;
  wire \paletteout[11]_i_3_6 ;
  wire \paletteout[11]_i_3_7 ;
  wire \paletteout[11]_i_3_8 ;
  wire \paletteout[11]_i_3_9 ;
  wire \paletteout[1]_i_3 ;
  wire \paletteout[1]_i_3_0 ;
  wire \paletteout[1]_i_3_1 ;
  wire \paletteout[1]_i_3_10 ;
  wire \paletteout[1]_i_3_11 ;
  wire \paletteout[1]_i_3_12 ;
  wire \paletteout[1]_i_3_13 ;
  wire \paletteout[1]_i_3_14 ;
  wire \paletteout[1]_i_3_2 ;
  wire \paletteout[1]_i_3_3 ;
  wire \paletteout[1]_i_3_4 ;
  wire \paletteout[1]_i_3_5 ;
  wire \paletteout[1]_i_3_6 ;
  wire \paletteout[1]_i_3_7 ;
  wire \paletteout[1]_i_3_8 ;
  wire \paletteout[1]_i_3_9 ;
  wire \paletteout[2]_i_3 ;
  wire \paletteout[2]_i_3_0 ;
  wire \paletteout[2]_i_3_1 ;
  wire \paletteout[2]_i_3_10 ;
  wire \paletteout[2]_i_3_11 ;
  wire \paletteout[2]_i_3_12 ;
  wire \paletteout[2]_i_3_13 ;
  wire \paletteout[2]_i_3_14 ;
  wire \paletteout[2]_i_3_2 ;
  wire \paletteout[2]_i_3_3 ;
  wire \paletteout[2]_i_3_4 ;
  wire \paletteout[2]_i_3_5 ;
  wire \paletteout[2]_i_3_6 ;
  wire \paletteout[2]_i_3_7 ;
  wire \paletteout[2]_i_3_8 ;
  wire \paletteout[2]_i_3_9 ;
  wire \paletteout[3]_i_3 ;
  wire \paletteout[3]_i_3_0 ;
  wire \paletteout[3]_i_3_1 ;
  wire \paletteout[3]_i_3_10 ;
  wire \paletteout[3]_i_3_11 ;
  wire \paletteout[3]_i_3_12 ;
  wire \paletteout[3]_i_3_13 ;
  wire \paletteout[3]_i_3_14 ;
  wire \paletteout[3]_i_3_2 ;
  wire \paletteout[3]_i_3_3 ;
  wire \paletteout[3]_i_3_4 ;
  wire \paletteout[3]_i_3_5 ;
  wire \paletteout[3]_i_3_6 ;
  wire \paletteout[3]_i_3_7 ;
  wire \paletteout[3]_i_3_8 ;
  wire \paletteout[3]_i_3_9 ;
  wire \paletteout[4]_i_3 ;
  wire \paletteout[4]_i_3_0 ;
  wire \paletteout[4]_i_3_1 ;
  wire \paletteout[4]_i_3_10 ;
  wire \paletteout[4]_i_3_11 ;
  wire \paletteout[4]_i_3_12 ;
  wire \paletteout[4]_i_3_13 ;
  wire \paletteout[4]_i_3_14 ;
  wire \paletteout[4]_i_3_2 ;
  wire \paletteout[4]_i_3_3 ;
  wire \paletteout[4]_i_3_4 ;
  wire \paletteout[4]_i_3_5 ;
  wire \paletteout[4]_i_3_6 ;
  wire \paletteout[4]_i_3_7 ;
  wire \paletteout[4]_i_3_8 ;
  wire \paletteout[4]_i_3_9 ;
  wire \paletteout[5]_i_3 ;
  wire \paletteout[5]_i_3_0 ;
  wire \paletteout[5]_i_3_1 ;
  wire \paletteout[5]_i_3_10 ;
  wire \paletteout[5]_i_3_11 ;
  wire \paletteout[5]_i_3_12 ;
  wire \paletteout[5]_i_3_13 ;
  wire \paletteout[5]_i_3_14 ;
  wire \paletteout[5]_i_3_2 ;
  wire \paletteout[5]_i_3_3 ;
  wire \paletteout[5]_i_3_4 ;
  wire \paletteout[5]_i_3_5 ;
  wire \paletteout[5]_i_3_6 ;
  wire \paletteout[5]_i_3_7 ;
  wire \paletteout[5]_i_3_8 ;
  wire \paletteout[5]_i_3_9 ;
  wire \paletteout[6]_i_3 ;
  wire \paletteout[6]_i_3_0 ;
  wire \paletteout[6]_i_3_1 ;
  wire \paletteout[6]_i_3_10 ;
  wire \paletteout[6]_i_3_11 ;
  wire \paletteout[6]_i_3_12 ;
  wire \paletteout[6]_i_3_13 ;
  wire \paletteout[6]_i_3_14 ;
  wire \paletteout[6]_i_3_2 ;
  wire \paletteout[6]_i_3_3 ;
  wire \paletteout[6]_i_3_4 ;
  wire \paletteout[6]_i_3_5 ;
  wire \paletteout[6]_i_3_6 ;
  wire \paletteout[6]_i_3_7 ;
  wire \paletteout[6]_i_3_8 ;
  wire \paletteout[6]_i_3_9 ;
  wire \paletteout[7]_i_3 ;
  wire \paletteout[7]_i_3_0 ;
  wire \paletteout[7]_i_3_1 ;
  wire \paletteout[7]_i_3_10 ;
  wire \paletteout[7]_i_3_11 ;
  wire \paletteout[7]_i_3_12 ;
  wire \paletteout[7]_i_3_13 ;
  wire \paletteout[7]_i_3_14 ;
  wire \paletteout[7]_i_3_2 ;
  wire \paletteout[7]_i_3_3 ;
  wire \paletteout[7]_i_3_4 ;
  wire \paletteout[7]_i_3_5 ;
  wire \paletteout[7]_i_3_6 ;
  wire \paletteout[7]_i_3_7 ;
  wire \paletteout[7]_i_3_8 ;
  wire \paletteout[7]_i_3_9 ;
  wire \paletteout[8]_i_3 ;
  wire \paletteout[8]_i_3_0 ;
  wire \paletteout[8]_i_3_1 ;
  wire \paletteout[8]_i_3_10 ;
  wire \paletteout[8]_i_3_11 ;
  wire \paletteout[8]_i_3_12 ;
  wire \paletteout[8]_i_3_13 ;
  wire \paletteout[8]_i_3_14 ;
  wire \paletteout[8]_i_3_2 ;
  wire \paletteout[8]_i_3_3 ;
  wire \paletteout[8]_i_3_4 ;
  wire \paletteout[8]_i_3_5 ;
  wire \paletteout[8]_i_3_6 ;
  wire \paletteout[8]_i_3_7 ;
  wire \paletteout[8]_i_3_8 ;
  wire \paletteout[8]_i_3_9 ;
  wire \paletteout[9]_i_3 ;
  wire \paletteout[9]_i_3_0 ;
  wire \paletteout[9]_i_3_1 ;
  wire \paletteout[9]_i_3_10 ;
  wire \paletteout[9]_i_3_11 ;
  wire \paletteout[9]_i_3_12 ;
  wire \paletteout[9]_i_3_13 ;
  wire \paletteout[9]_i_3_14 ;
  wire \paletteout[9]_i_3_2 ;
  wire \paletteout[9]_i_3_3 ;
  wire \paletteout[9]_i_3_4 ;
  wire \paletteout[9]_i_3_5 ;
  wire \paletteout[9]_i_3_6 ;
  wire \paletteout[9]_i_3_7 ;
  wire \paletteout[9]_i_3_8 ;
  wire \paletteout[9]_i_3_9 ;
  wire \paletteout_reg[0] ;
  wire \paletteout_reg[0]_0 ;
  wire \paletteout_reg[0]_1 ;
  wire \paletteout_reg[0]_2 ;
  wire \paletteout_reg[10] ;
  wire \paletteout_reg[10]_0 ;
  wire \paletteout_reg[10]_1 ;
  wire \paletteout_reg[10]_2 ;
  wire \paletteout_reg[11] ;
  wire \paletteout_reg[11]_0 ;
  wire \paletteout_reg[11]_1 ;
  wire \paletteout_reg[11]_2 ;
  wire \paletteout_reg[1] ;
  wire \paletteout_reg[1]_0 ;
  wire \paletteout_reg[1]_1 ;
  wire \paletteout_reg[1]_2 ;
  wire \paletteout_reg[2] ;
  wire \paletteout_reg[2]_0 ;
  wire \paletteout_reg[2]_1 ;
  wire \paletteout_reg[2]_2 ;
  wire \paletteout_reg[3] ;
  wire \paletteout_reg[3]_0 ;
  wire \paletteout_reg[3]_1 ;
  wire \paletteout_reg[3]_2 ;
  wire \paletteout_reg[4] ;
  wire \paletteout_reg[4]_0 ;
  wire \paletteout_reg[4]_1 ;
  wire \paletteout_reg[4]_2 ;
  wire \paletteout_reg[5] ;
  wire \paletteout_reg[5]_0 ;
  wire \paletteout_reg[5]_1 ;
  wire \paletteout_reg[5]_2 ;
  wire \paletteout_reg[6] ;
  wire \paletteout_reg[6]_0 ;
  wire \paletteout_reg[6]_1 ;
  wire \paletteout_reg[6]_2 ;
  wire \paletteout_reg[7] ;
  wire \paletteout_reg[7]_0 ;
  wire \paletteout_reg[7]_1 ;
  wire \paletteout_reg[7]_2 ;
  wire \paletteout_reg[8] ;
  wire \paletteout_reg[8]_0 ;
  wire \paletteout_reg[8]_1 ;
  wire \paletteout_reg[8]_2 ;
  wire \paletteout_reg[9] ;
  wire \paletteout_reg[9]_0 ;
  wire \paletteout_reg[9]_1 ;
  wire \paletteout_reg[9]_2 ;
  wire pixelClock;
  wire pixelClockx5;
  wire [63:12]scanlinedout;
  wire [6:6]scanlinera;
  wire scanwidth;
  wire [2:0]tmds;
  wire tmds_clock;
  wire \tmds_gen[1].tmds_channel_n_0 ;
  wire \tmds_gen[1].tmds_channel_n_1 ;
  wire \tmds_gen[2].tmds_channel_n_0 ;
  wire [9:0]\tmds_internal[0]_29 ;
  wire [9:0]\tmds_internal[1]_30 ;
  wire [9:0]\tmds_internal[2]_31 ;
  wire \true_hdmi_output.data_island_data[1]_i_1_n_0 ;
  wire \true_hdmi_output.data_island_data[1]_i_3_n_0 ;
  wire \true_hdmi_output.data_island_data[1]_i_4_n_0 ;
  wire \true_hdmi_output.data_island_data[3]_i_2_n_0 ;
  wire \true_hdmi_output.data_island_data[3]_i_3_n_0 ;
  wire \true_hdmi_output.data_island_guard ;
  wire \true_hdmi_output.data_island_guard0 ;
  wire \true_hdmi_output.data_island_guard_i_2_n_0 ;
  wire \true_hdmi_output.data_island_guard_i_3_n_0 ;
  wire \true_hdmi_output.data_island_period ;
  wire \true_hdmi_output.data_island_period_instantaneous ;
  wire \true_hdmi_output.data_island_preamble ;
  wire \true_hdmi_output.data_island_preamble0 ;
  wire \true_hdmi_output.data_island_preamble_i_2_n_0 ;
  wire [20:20]\true_hdmi_output.header ;
  wire \true_hdmi_output.mode[0]_i_1_n_0 ;
  wire \true_hdmi_output.mode[1]_i_1_n_0 ;
  wire \true_hdmi_output.packet_assembler_n_18 ;
  wire \true_hdmi_output.packet_assembler_n_19 ;
  wire \true_hdmi_output.packet_assembler_n_7 ;
  wire [8:0]\true_hdmi_output.packet_data ;
  wire \true_hdmi_output.packet_picker_n_0 ;
  wire \true_hdmi_output.packet_picker_n_12 ;
  wire \true_hdmi_output.packet_picker_n_13 ;
  wire \true_hdmi_output.packet_picker_n_14 ;
  wire \true_hdmi_output.packet_picker_n_15 ;
  wire \true_hdmi_output.packet_picker_n_16 ;
  wire \true_hdmi_output.packet_picker_n_18 ;
  wire \true_hdmi_output.packet_picker_n_19 ;
  wire \true_hdmi_output.packet_picker_n_2 ;
  wire \true_hdmi_output.packet_picker_n_20 ;
  wire \true_hdmi_output.packet_picker_n_21 ;
  wire \true_hdmi_output.packet_picker_n_22 ;
  wire \true_hdmi_output.packet_picker_n_23 ;
  wire \true_hdmi_output.packet_picker_n_24 ;
  wire \true_hdmi_output.packet_picker_n_25 ;
  wire \true_hdmi_output.packet_picker_n_26 ;
  wire \true_hdmi_output.packet_picker_n_27 ;
  wire \true_hdmi_output.packet_picker_n_28 ;
  wire \true_hdmi_output.packet_picker_n_29 ;
  wire \true_hdmi_output.packet_picker_n_3 ;
  wire \true_hdmi_output.packet_picker_n_30 ;
  wire \true_hdmi_output.packet_picker_n_31 ;
  wire \true_hdmi_output.packet_picker_n_32 ;
  wire \true_hdmi_output.packet_picker_n_33 ;
  wire \true_hdmi_output.packet_picker_n_34 ;
  wire \true_hdmi_output.packet_picker_n_35 ;
  wire \true_hdmi_output.packet_picker_n_36 ;
  wire \true_hdmi_output.packet_picker_n_37 ;
  wire \true_hdmi_output.packet_picker_n_38 ;
  wire \true_hdmi_output.packet_picker_n_39 ;
  wire \true_hdmi_output.packet_picker_n_4 ;
  wire \true_hdmi_output.packet_picker_n_40 ;
  wire \true_hdmi_output.packet_picker_n_41 ;
  wire \true_hdmi_output.packet_picker_n_42 ;
  wire \true_hdmi_output.packet_picker_n_43 ;
  wire \true_hdmi_output.packet_picker_n_44 ;
  wire \true_hdmi_output.packet_picker_n_46 ;
  wire \true_hdmi_output.packet_picker_n_47 ;
  wire \true_hdmi_output.packet_picker_n_48 ;
  wire \true_hdmi_output.packet_picker_n_5 ;
  wire \true_hdmi_output.packet_picker_n_6 ;
  wire \true_hdmi_output.packet_picker_n_7 ;
  wire \true_hdmi_output.packet_picker_n_8 ;
  wire [4:0]\true_hdmi_output.packet_pixel_counter ;
  wire \true_hdmi_output.video_guard ;
  wire \true_hdmi_output.video_guard0 ;
  wire \true_hdmi_output.video_preamble ;
  wire \true_hdmi_output.video_preamble0 ;
  wire \true_hdmi_output.video_preamble_i_2_n_0 ;
  wire [23:4]video_data;
  wire video_data_period;
  wire video_data_period0;

  LUT6 #(
    .INIT(64'hFFFFFFFB00000004)) 
    blankt_i_1
       (.I0(blankt_i_2_n_0),
        .I1(blankt_i_3_n_0),
        .I2(cx[1]),
        .I3(cy[4]),
        .I4(blankt_i_4_n_0),
        .I5(blankt),
        .O(\cx_reg[1]_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    blankt_i_2
       (.I0(\paletteout[11]_i_13_n_0 ),
        .I1(blankt_i_5_n_0),
        .I2(cx[5]),
        .I3(cx[2]),
        .I4(cx[3]),
        .I5(cx[9]),
        .O(blankt_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    blankt_i_3
       (.I0(cy[0]),
        .I1(cx[4]),
        .I2(cy[2]),
        .I3(cx[6]),
        .O(blankt_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT2 #(
    .INIT(4'hE)) 
    blankt_i_4
       (.I0(cx[7]),
        .I1(cx[8]),
        .O(blankt_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    blankt_i_5
       (.I0(cx[0]),
        .I1(cy[9]),
        .I2(cy[1]),
        .I3(cy[3]),
        .O(blankt_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \cx[0]_i_1 
       (.I0(cx[0]),
        .O(\cx[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cx[1]_i_1 
       (.I0(cx[1]),
        .I1(cx[0]),
        .O(\cx[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \cx[2]_i_1 
       (.I0(cx[2]),
        .I1(cx[0]),
        .I2(cx[1]),
        .O(\cx[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \cx[3]_i_1 
       (.I0(cx[2]),
        .I1(cx[1]),
        .I2(cx[0]),
        .I3(cx[3]),
        .O(\cx[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \cx[4]_i_1 
       (.I0(cx[4]),
        .I1(cx[1]),
        .I2(cx[0]),
        .I3(cx[3]),
        .I4(cx[2]),
        .O(\cx[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \cx[5]_i_1 
       (.I0(cx[5]),
        .I1(cx[4]),
        .I2(cx[2]),
        .I3(cx[3]),
        .I4(cx[0]),
        .I5(cx[1]),
        .O(\cx[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \cx[6]_i_1 
       (.I0(cx[6]),
        .I1(cx[5]),
        .I2(cx[4]),
        .I3(\true_hdmi_output.packet_picker_n_6 ),
        .O(\cx[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \cx[7]_i_1 
       (.I0(cx[7]),
        .I1(\true_hdmi_output.packet_picker_n_6 ),
        .I2(cx[4]),
        .I3(cx[5]),
        .I4(cx[6]),
        .O(\cx[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \cx[8]_i_1 
       (.I0(cx[8]),
        .I1(cx[4]),
        .I2(cx[5]),
        .I3(cx[6]),
        .I4(cx[7]),
        .I5(\true_hdmi_output.packet_picker_n_6 ),
        .O(\cx[8]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \cx[9]_i_1 
       (.I0(cy0),
        .I1(out),
        .O(\cx[9]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \cx[9]_i_2 
       (.I0(cx[9]),
        .I1(\cx[9]_i_3_n_0 ),
        .I2(cx[8]),
        .O(\cx[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \cx[9]_i_3 
       (.I0(\true_hdmi_output.packet_picker_n_6 ),
        .I1(cx[7]),
        .I2(cx[6]),
        .I3(cx[5]),
        .I4(cx[4]),
        .O(\cx[9]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cx_reg[0] 
       (.C(pixelClock),
        .CE(1'b1),
        .D(\cx[0]_i_1_n_0 ),
        .Q(cx[0]),
        .R(\cx[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cx_reg[1] 
       (.C(pixelClock),
        .CE(1'b1),
        .D(\cx[1]_i_1_n_0 ),
        .Q(cx[1]),
        .R(\cx[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cx_reg[2] 
       (.C(pixelClock),
        .CE(1'b1),
        .D(\cx[2]_i_1_n_0 ),
        .Q(cx[2]),
        .R(\cx[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cx_reg[3] 
       (.C(pixelClock),
        .CE(1'b1),
        .D(\cx[3]_i_1_n_0 ),
        .Q(cx[3]),
        .R(\cx[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cx_reg[4] 
       (.C(pixelClock),
        .CE(1'b1),
        .D(\cx[4]_i_1_n_0 ),
        .Q(cx[4]),
        .R(\cx[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cx_reg[5] 
       (.C(pixelClock),
        .CE(1'b1),
        .D(\cx[5]_i_1_n_0 ),
        .Q(cx[5]),
        .R(\cx[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cx_reg[6] 
       (.C(pixelClock),
        .CE(1'b1),
        .D(\cx[6]_i_1_n_0 ),
        .Q(cx[6]),
        .R(\cx[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cx_reg[7] 
       (.C(pixelClock),
        .CE(1'b1),
        .D(\cx[7]_i_1_n_0 ),
        .Q(cx[7]),
        .R(\cx[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cx_reg[8] 
       (.C(pixelClock),
        .CE(1'b1),
        .D(\cx[8]_i_1_n_0 ),
        .Q(cx[8]),
        .R(\cx[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cx_reg[9] 
       (.C(pixelClock),
        .CE(1'b1),
        .D(\cx[9]_i_2_n_0 ),
        .Q(cx[9]),
        .R(\cx[9]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4555)) 
    \cy[0]_i_1 
       (.I0(cy[0]),
        .I1(cy[1]),
        .I2(cy[2]),
        .I3(\cy[3]_i_2_n_0 ),
        .O(\cy[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cy[1]_i_1 
       (.I0(cy[0]),
        .I1(cy[1]),
        .O(\cy[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT4 #(
    .INIT(16'h6878)) 
    \cy[2]_i_1 
       (.I0(cy[0]),
        .I1(cy[1]),
        .I2(cy[2]),
        .I3(\cy[3]_i_2_n_0 ),
        .O(\cy[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT5 #(
    .INIT(32'h6F807F80)) 
    \cy[3]_i_1 
       (.I0(cy[0]),
        .I1(cy[1]),
        .I2(cy[2]),
        .I3(cy[3]),
        .I4(\cy[3]_i_2_n_0 ),
        .O(\cy[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \cy[3]_i_2 
       (.I0(\cy[3]_i_3_n_0 ),
        .I1(cy[3]),
        .I2(cy[9]),
        .I3(cy[7]),
        .I4(cy[8]),
        .O(\cy[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \cy[3]_i_3 
       (.I0(cy[6]),
        .I1(cy[5]),
        .I2(cy[4]),
        .O(\cy[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \cy[4]_i_1 
       (.I0(cy[4]),
        .I1(cy[3]),
        .I2(cy[2]),
        .I3(cy[0]),
        .I4(cy[1]),
        .O(\cy[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \cy[5]_i_1 
       (.I0(cy[5]),
        .I1(cy[1]),
        .I2(cy[0]),
        .I3(cy[2]),
        .I4(cy[3]),
        .I5(cy[4]),
        .O(\cy[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \cy[6]_i_1 
       (.I0(cy[6]),
        .I1(cy[5]),
        .I2(\true_hdmi_output.packet_picker_n_47 ),
        .O(\cy[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \cy[7]_i_1 
       (.I0(cy[7]),
        .I1(cy[6]),
        .I2(\true_hdmi_output.packet_picker_n_47 ),
        .I3(cy[5]),
        .O(\cy[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \cy[8]_i_1 
       (.I0(cy[8]),
        .I1(cy[5]),
        .I2(\true_hdmi_output.packet_picker_n_47 ),
        .I3(cy[6]),
        .I4(cy[7]),
        .O(\cy[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \cy[9]_i_1 
       (.I0(cx[4]),
        .I1(cx[2]),
        .I2(cx[3]),
        .I3(cx[0]),
        .I4(cx[1]),
        .I5(\cy[9]_i_3_n_0 ),
        .O(cy0));
  LUT4 #(
    .INIT(16'hF704)) 
    \cy[9]_i_2 
       (.I0(cy[9]),
        .I1(\true_hdmi_output.packet_picker_n_47 ),
        .I2(\cy[9]_i_5_n_0 ),
        .I3(\cy[9]_i_6_n_0 ),
        .O(\cy[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT5 #(
    .INIT(32'hFEFFFFFF)) 
    \cy[9]_i_3 
       (.I0(cx[6]),
        .I1(cx[5]),
        .I2(cx[7]),
        .I3(cx[9]),
        .I4(cx[8]),
        .O(\cy[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \cy[9]_i_5 
       (.I0(cy[6]),
        .I1(cy[7]),
        .I2(cy[8]),
        .I3(cy[5]),
        .O(\cy[9]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \cy[9]_i_6 
       (.I0(cy[9]),
        .I1(\cy[9]_i_7_n_0 ),
        .I2(cy[6]),
        .I3(cy[5]),
        .I4(cy[4]),
        .O(\cy[9]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFFFFFF)) 
    \cy[9]_i_7 
       (.I0(cy[1]),
        .I1(cy[0]),
        .I2(cy[7]),
        .I3(cy[8]),
        .I4(cy[3]),
        .I5(cy[2]),
        .O(\cy[9]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cy_reg[0] 
       (.C(pixelClock),
        .CE(cy0),
        .D(\cy[0]_i_1_n_0 ),
        .Q(cy[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cy_reg[1] 
       (.C(pixelClock),
        .CE(cy0),
        .D(\cy[1]_i_1_n_0 ),
        .Q(cy[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cy_reg[2] 
       (.C(pixelClock),
        .CE(cy0),
        .D(\cy[2]_i_1_n_0 ),
        .Q(cy[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cy_reg[3] 
       (.C(pixelClock),
        .CE(cy0),
        .D(\cy[3]_i_1_n_0 ),
        .Q(cy[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cy_reg[4] 
       (.C(pixelClock),
        .CE(cy0),
        .D(\cy[4]_i_1_n_0 ),
        .Q(cy[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cy_reg[5] 
       (.C(pixelClock),
        .CE(cy0),
        .D(\cy[5]_i_1_n_0 ),
        .Q(cy[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cy_reg[6] 
       (.C(pixelClock),
        .CE(cy0),
        .D(\cy[6]_i_1_n_0 ),
        .Q(cy[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cy_reg[7] 
       (.C(pixelClock),
        .CE(cy0),
        .D(\cy[7]_i_1_n_0 ),
        .Q(cy[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cy_reg[8] 
       (.C(pixelClock),
        .CE(cy0),
        .D(\cy[8]_i_1_n_0 ),
        .Q(cy[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cy_reg[9] 
       (.C(pixelClock),
        .CE(cy0),
        .D(\cy[9]_i_2_n_0 ),
        .Q(cy[9]),
        .R(SR));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    paletteentries_reg_0_63_0_2_i_10
       (.I0(scanlinedout[45]),
        .I1(scanlinedout[61]),
        .I2(aclk[29]),
        .I3(\cx_reg[0]_0 ),
        .I4(\cx_reg[1]_0 ),
        .I5(aclk[41]),
        .O(paletteentries_reg_0_63_0_2_i_10_n_0));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    paletteentries_reg_0_63_0_2_i_11
       (.I0(scanlinedout[12]),
        .I1(scanlinedout[28]),
        .I2(aclk[4]),
        .I3(\cx_reg[0]_0 ),
        .I4(\cx_reg[1]_0 ),
        .I5(aclk[16]),
        .O(paletteentries_reg_0_63_0_2_i_11_n_0));
  LUT6 #(
    .INIT(64'hAAFFCCF0AA00CCF0)) 
    paletteentries_reg_0_63_0_2_i_12
       (.I0(scanlinedout[60]),
        .I1(scanlinedout[44]),
        .I2(aclk[28]),
        .I3(\cx_reg[0]_0 ),
        .I4(\cx_reg[1]_0 ),
        .I5(aclk[40]),
        .O(paletteentries_reg_0_63_0_2_i_12_n_0));
  LUT6 #(
    .INIT(64'hAAFFCCF0AA00CCF0)) 
    paletteentries_reg_0_63_0_2_i_13
       (.I0(aclk[23]),
        .I1(aclk[11]),
        .I2(aclk[3]),
        .I3(\cx_reg[0]_0 ),
        .I4(\cx_reg[1]_0 ),
        .I5(aclk[15]),
        .O(paletteentries_reg_0_63_0_2_i_13_n_0));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    paletteentries_reg_0_63_0_2_i_14
       (.I0(aclk[35]),
        .I1(aclk[47]),
        .I2(aclk[27]),
        .I3(\cx_reg[0]_0 ),
        .I4(\cx_reg[1]_0 ),
        .I5(aclk[39]),
        .O(paletteentries_reg_0_63_0_2_i_14_n_0));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    paletteentries_reg_0_63_0_2_i_15
       (.I0(aclk[10]),
        .I1(aclk[22]),
        .I2(aclk[2]),
        .I3(\cx_reg[0]_0 ),
        .I4(\cx_reg[1]_0 ),
        .I5(aclk[14]),
        .O(paletteentries_reg_0_63_0_2_i_15_n_0));
  LUT6 #(
    .INIT(64'hAAFFCCF0AA00CCF0)) 
    paletteentries_reg_0_63_0_2_i_16
       (.I0(aclk[46]),
        .I1(aclk[34]),
        .I2(aclk[26]),
        .I3(\cx_reg[0]_0 ),
        .I4(\cx_reg[1]_0 ),
        .I5(aclk[38]),
        .O(paletteentries_reg_0_63_0_2_i_16_n_0));
  LUT6 #(
    .INIT(64'hCCAAF0FFCCAAF000)) 
    paletteentries_reg_0_63_0_2_i_17
       (.I0(aclk[9]),
        .I1(aclk[21]),
        .I2(aclk[13]),
        .I3(\cx_reg[1]_0 ),
        .I4(\cx_reg[0]_0 ),
        .I5(aclk[1]),
        .O(paletteentries_reg_0_63_0_2_i_17_n_0));
  LUT6 #(
    .INIT(64'hAACCF0FFAACCF000)) 
    paletteentries_reg_0_63_0_2_i_18
       (.I0(aclk[45]),
        .I1(aclk[33]),
        .I2(aclk[37]),
        .I3(\cx_reg[1]_0 ),
        .I4(\cx_reg[0]_0 ),
        .I5(aclk[25]),
        .O(paletteentries_reg_0_63_0_2_i_18_n_0));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    paletteentries_reg_0_63_0_2_i_19
       (.I0(aclk[8]),
        .I1(aclk[20]),
        .I2(aclk[0]),
        .I3(\cx_reg[0]_0 ),
        .I4(\cx_reg[1]_0 ),
        .I5(aclk[12]),
        .O(paletteentries_reg_0_63_0_2_i_19_n_0));
  MUXF7 paletteentries_reg_0_63_0_2_i_2
       (.I0(paletteentries_reg_0_63_0_2_i_9_n_0),
        .I1(paletteentries_reg_0_63_0_2_i_10_n_0),
        .O(ADDRA[5]),
        .S(paletteentries_reg_0_63_0_2_i_8_n_0));
  LUT6 #(
    .INIT(64'hAACCF0FFAACCF000)) 
    paletteentries_reg_0_63_0_2_i_20
       (.I0(aclk[44]),
        .I1(aclk[32]),
        .I2(aclk[36]),
        .I3(\cx_reg[1]_0 ),
        .I4(\cx_reg[0]_0 ),
        .I5(aclk[24]),
        .O(paletteentries_reg_0_63_0_2_i_20_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    paletteentries_reg_0_63_0_2_i_21
       (.I0(paletteentries_reg_0_63_0_2_i_9_0),
        .I1(paletteentries_reg_0_63_0_2_i_9_1),
        .I2(\paletteout[11]_i_18_n_0 ),
        .I3(paletteentries_reg_0_63_0_2_i_9_2),
        .I4(scanlinera),
        .I5(paletteentries_reg_0_63_0_2_i_9_3),
        .O(scanlinedout[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    paletteentries_reg_0_63_0_2_i_22
       (.I0(paletteentries_reg_0_63_0_2_i_9_4),
        .I1(paletteentries_reg_0_63_0_2_i_9_5),
        .I2(\paletteout[11]_i_18_n_0 ),
        .I3(paletteentries_reg_0_63_0_2_i_9_6),
        .I4(scanlinera),
        .I5(paletteentries_reg_0_63_0_2_i_9_7),
        .O(scanlinedout[29]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    paletteentries_reg_0_63_0_2_i_23
       (.I0(paletteentries_reg_0_63_0_2_i_10_0),
        .I1(paletteentries_reg_0_63_0_2_i_10_1),
        .I2(\paletteout[11]_i_18_n_0 ),
        .I3(paletteentries_reg_0_63_0_2_i_10_2),
        .I4(scanlinera),
        .I5(paletteentries_reg_0_63_0_2_i_10_3),
        .O(scanlinedout[45]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    paletteentries_reg_0_63_0_2_i_24
       (.I0(paletteentries_reg_0_63_0_2_i_10_4),
        .I1(paletteentries_reg_0_63_0_2_i_10_5),
        .I2(\paletteout[11]_i_18_n_0 ),
        .I3(paletteentries_reg_0_63_0_2_i_10_6),
        .I4(scanlinera),
        .I5(paletteentries_reg_0_63_0_2_i_10_7),
        .O(scanlinedout[61]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    paletteentries_reg_0_63_0_2_i_25
       (.I0(paletteentries_reg_0_63_0_2_i_11_0),
        .I1(paletteentries_reg_0_63_0_2_i_11_1),
        .I2(\paletteout[11]_i_18_n_0 ),
        .I3(paletteentries_reg_0_63_0_2_i_11_2),
        .I4(scanlinera),
        .I5(paletteentries_reg_0_63_0_2_i_11_3),
        .O(scanlinedout[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    paletteentries_reg_0_63_0_2_i_26
       (.I0(paletteentries_reg_0_63_0_2_i_11_4),
        .I1(paletteentries_reg_0_63_0_2_i_11_5),
        .I2(\paletteout[11]_i_18_n_0 ),
        .I3(paletteentries_reg_0_63_0_2_i_11_6),
        .I4(scanlinera),
        .I5(paletteentries_reg_0_63_0_2_i_11_7),
        .O(scanlinedout[28]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    paletteentries_reg_0_63_0_2_i_27
       (.I0(paletteentries_reg_0_63_0_2_i_12_4),
        .I1(paletteentries_reg_0_63_0_2_i_12_5),
        .I2(\paletteout[11]_i_18_n_0 ),
        .I3(paletteentries_reg_0_63_0_2_i_12_6),
        .I4(scanlinera),
        .I5(paletteentries_reg_0_63_0_2_i_12_7),
        .O(scanlinedout[60]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    paletteentries_reg_0_63_0_2_i_28
       (.I0(paletteentries_reg_0_63_0_2_i_12_0),
        .I1(paletteentries_reg_0_63_0_2_i_12_1),
        .I2(\paletteout[11]_i_18_n_0 ),
        .I3(paletteentries_reg_0_63_0_2_i_12_2),
        .I4(scanlinera),
        .I5(paletteentries_reg_0_63_0_2_i_12_3),
        .O(scanlinedout[44]));
  MUXF7 paletteentries_reg_0_63_0_2_i_3
       (.I0(paletteentries_reg_0_63_0_2_i_11_n_0),
        .I1(paletteentries_reg_0_63_0_2_i_12_n_0),
        .O(ADDRA[4]),
        .S(paletteentries_reg_0_63_0_2_i_8_n_0));
  MUXF7 paletteentries_reg_0_63_0_2_i_4
       (.I0(paletteentries_reg_0_63_0_2_i_13_n_0),
        .I1(paletteentries_reg_0_63_0_2_i_14_n_0),
        .O(ADDRA[3]),
        .S(paletteentries_reg_0_63_0_2_i_8_n_0));
  MUXF7 paletteentries_reg_0_63_0_2_i_5
       (.I0(paletteentries_reg_0_63_0_2_i_15_n_0),
        .I1(paletteentries_reg_0_63_0_2_i_16_n_0),
        .O(ADDRA[2]),
        .S(paletteentries_reg_0_63_0_2_i_8_n_0));
  MUXF7 paletteentries_reg_0_63_0_2_i_6
       (.I0(paletteentries_reg_0_63_0_2_i_17_n_0),
        .I1(paletteentries_reg_0_63_0_2_i_18_n_0),
        .O(ADDRA[1]),
        .S(paletteentries_reg_0_63_0_2_i_8_n_0));
  MUXF7 paletteentries_reg_0_63_0_2_i_7
       (.I0(paletteentries_reg_0_63_0_2_i_19_n_0),
        .I1(paletteentries_reg_0_63_0_2_i_20_n_0),
        .O(ADDRA[0]),
        .S(paletteentries_reg_0_63_0_2_i_8_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    paletteentries_reg_0_63_0_2_i_8
       (.I0(cx[2]),
        .I1(scanwidth),
        .I2(cx[3]),
        .O(paletteentries_reg_0_63_0_2_i_8_n_0));
  LUT6 #(
    .INIT(64'hCCAAF0FFCCAAF000)) 
    paletteentries_reg_0_63_0_2_i_9
       (.I0(scanlinedout[13]),
        .I1(scanlinedout[29]),
        .I2(aclk[17]),
        .I3(\cx_reg[1]_0 ),
        .I4(\cx_reg[0]_0 ),
        .I5(aclk[5]),
        .O(paletteentries_reg_0_63_0_2_i_9_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \paletteout[0]_i_2 
       (.I0(\paletteout_reg[0] ),
        .I1(\paletteout_reg[0]_0 ),
        .I2(paletteindex[7]),
        .I3(\paletteout_reg[0]_1 ),
        .I4(paletteindex[6]),
        .I5(\paletteout_reg[0]_2 ),
        .O(paletteout0[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \paletteout[0]_i_4 
       (.I0(\paletteout[0]_i_3_3 ),
        .I1(\paletteout[0]_i_3_4 ),
        .I2(\paletteout[11]_i_18_n_0 ),
        .I3(\paletteout[0]_i_3_5 ),
        .I4(scanlinera),
        .I5(\paletteout[0]_i_3_6 ),
        .O(aclk[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \paletteout[0]_i_5 
       (.I0(\paletteout[0]_i_3 ),
        .I1(\paletteout[0]_i_3_0 ),
        .I2(\paletteout[11]_i_18_n_0 ),
        .I3(\paletteout[0]_i_3_1 ),
        .I4(scanlinera),
        .I5(\paletteout[0]_i_3_2 ),
        .O(aclk[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \paletteout[0]_i_6 
       (.I0(\paletteout[0]_i_3_11 ),
        .I1(\paletteout[0]_i_3_12 ),
        .I2(\paletteout[11]_i_18_n_0 ),
        .I3(\paletteout[0]_i_3_13 ),
        .I4(scanlinera),
        .I5(\paletteout[0]_i_3_14 ),
        .O(aclk[36]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \paletteout[0]_i_7 
       (.I0(\paletteout[0]_i_3_7 ),
        .I1(\paletteout[0]_i_3_8 ),
        .I2(\paletteout[11]_i_18_n_0 ),
        .I3(\paletteout[0]_i_3_9 ),
        .I4(scanlinera),
        .I5(\paletteout[0]_i_3_10 ),
        .O(aclk[24]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \paletteout[10]_i_2 
       (.I0(\paletteout_reg[10] ),
        .I1(\paletteout_reg[10]_0 ),
        .I2(paletteindex[7]),
        .I3(\paletteout_reg[10]_1 ),
        .I4(paletteindex[6]),
        .I5(\paletteout_reg[10]_2 ),
        .O(paletteout0[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \paletteout[10]_i_4 
       (.I0(\paletteout[10]_i_3_3 ),
        .I1(\paletteout[10]_i_3_4 ),
        .I2(\paletteout[11]_i_18_n_0 ),
        .I3(\paletteout[10]_i_3_5 ),
        .I4(scanlinera),
        .I5(\paletteout[10]_i_3_6 ),
        .O(aclk[22]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \paletteout[10]_i_5 
       (.I0(\paletteout[10]_i_3 ),
        .I1(\paletteout[10]_i_3_0 ),
        .I2(\paletteout[11]_i_18_n_0 ),
        .I3(\paletteout[10]_i_3_1 ),
        .I4(scanlinera),
        .I5(\paletteout[10]_i_3_2 ),
        .O(aclk[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \paletteout[10]_i_6 
       (.I0(\paletteout[10]_i_3_11 ),
        .I1(\paletteout[10]_i_3_12 ),
        .I2(\paletteout[11]_i_18_n_0 ),
        .I3(\paletteout[10]_i_3_13 ),
        .I4(scanlinera),
        .I5(\paletteout[10]_i_3_14 ),
        .O(aclk[46]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \paletteout[10]_i_7 
       (.I0(\paletteout[10]_i_3_7 ),
        .I1(\paletteout[10]_i_3_8 ),
        .I2(\paletteout[11]_i_18_n_0 ),
        .I3(\paletteout[10]_i_3_9 ),
        .I4(scanlinera),
        .I5(\paletteout[10]_i_3_10 ),
        .O(aclk[34]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \paletteout[11]_i_10 
       (.I0(cx[1]),
        .I1(scanwidth),
        .I2(cx[2]),
        .O(\cx_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \paletteout[11]_i_11 
       (.I0(cx[0]),
        .I1(scanwidth),
        .I2(cx[1]),
        .O(\cx_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \paletteout[11]_i_12 
       (.I0(\paletteout[11]_i_3_7 ),
        .I1(\paletteout[11]_i_3_8 ),
        .I2(\paletteout[11]_i_18_n_0 ),
        .I3(\paletteout[11]_i_3_9 ),
        .I4(scanlinera),
        .I5(\paletteout[11]_i_3_10 ),
        .O(aclk[35]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \paletteout[11]_i_13 
       (.I0(cy[5]),
        .I1(cy[8]),
        .I2(cy[6]),
        .I3(cy[7]),
        .O(\paletteout[11]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \paletteout[11]_i_14 
       (.I0(scanlinedout[15]),
        .I1(scanlinedout[31]),
        .I2(aclk[7]),
        .I3(\cx_reg[0]_0 ),
        .I4(\cx_reg[1]_0 ),
        .I5(aclk[19]),
        .O(\paletteout[11]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFCCF0AA00CCF0)) 
    \paletteout[11]_i_15 
       (.I0(scanlinedout[63]),
        .I1(scanlinedout[47]),
        .I2(aclk[31]),
        .I3(\cx_reg[0]_0 ),
        .I4(\cx_reg[1]_0 ),
        .I5(aclk[43]),
        .O(\paletteout[11]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \paletteout[11]_i_16 
       (.I0(scanlinedout[14]),
        .I1(scanlinedout[30]),
        .I2(aclk[6]),
        .I3(\cx_reg[0]_0 ),
        .I4(\cx_reg[1]_0 ),
        .I5(aclk[18]),
        .O(\paletteout[11]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFCCF0AA00CCF0)) 
    \paletteout[11]_i_17 
       (.I0(scanlinedout[62]),
        .I1(scanlinedout[46]),
        .I2(aclk[30]),
        .I3(\cx_reg[0]_0 ),
        .I4(\cx_reg[1]_0 ),
        .I5(aclk[42]),
        .O(\paletteout[11]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \paletteout[11]_i_18 
       (.I0(cx[9]),
        .I1(scanwidth),
        .I2(p_0_out[0]),
        .O(\paletteout[11]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hBC80)) 
    \paletteout[11]_i_19 
       (.I0(cx[8]),
        .I1(p_0_out[0]),
        .I2(scanwidth),
        .I3(cx[9]),
        .O(scanlinera));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \paletteout[11]_i_2 
       (.I0(\paletteout_reg[11] ),
        .I1(\paletteout_reg[11]_0 ),
        .I2(paletteindex[7]),
        .I3(\paletteout_reg[11]_1 ),
        .I4(paletteindex[6]),
        .I5(\paletteout_reg[11]_2 ),
        .O(paletteout0[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \paletteout[11]_i_20 
       (.I0(\paletteout[11]_i_14_0 ),
        .I1(\paletteout[11]_i_14_1 ),
        .I2(\paletteout[11]_i_18_n_0 ),
        .I3(\paletteout[11]_i_14_2 ),
        .I4(scanlinera),
        .I5(\paletteout[11]_i_14_3 ),
        .O(scanlinedout[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \paletteout[11]_i_21 
       (.I0(\paletteout[11]_i_14_4 ),
        .I1(\paletteout[11]_i_14_5 ),
        .I2(\paletteout[11]_i_18_n_0 ),
        .I3(\paletteout[11]_i_14_6 ),
        .I4(scanlinera),
        .I5(\paletteout[11]_i_14_7 ),
        .O(scanlinedout[31]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \paletteout[11]_i_22 
       (.I0(\paletteout[11]_i_15_4 ),
        .I1(\paletteout[11]_i_15_5 ),
        .I2(\paletteout[11]_i_18_n_0 ),
        .I3(\paletteout[11]_i_15_6 ),
        .I4(scanlinera),
        .I5(\paletteout[11]_i_15_7 ),
        .O(scanlinedout[63]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \paletteout[11]_i_23 
       (.I0(\paletteout[11]_i_15_0 ),
        .I1(\paletteout[11]_i_15_1 ),
        .I2(\paletteout[11]_i_18_n_0 ),
        .I3(\paletteout[11]_i_15_2 ),
        .I4(scanlinera),
        .I5(\paletteout[11]_i_15_3 ),
        .O(scanlinedout[47]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \paletteout[11]_i_24 
       (.I0(\paletteout[11]_i_16_0 ),
        .I1(\paletteout[11]_i_16_1 ),
        .I2(\paletteout[11]_i_18_n_0 ),
        .I3(\paletteout[11]_i_16_2 ),
        .I4(scanlinera),
        .I5(\paletteout[11]_i_16_3 ),
        .O(scanlinedout[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \paletteout[11]_i_25 
       (.I0(\paletteout[11]_i_16_4 ),
        .I1(\paletteout[11]_i_16_5 ),
        .I2(\paletteout[11]_i_18_n_0 ),
        .I3(\paletteout[11]_i_16_6 ),
        .I4(scanlinera),
        .I5(\paletteout[11]_i_16_7 ),
        .O(scanlinedout[30]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \paletteout[11]_i_26 
       (.I0(\paletteout[11]_i_17_4 ),
        .I1(\paletteout[11]_i_17_5 ),
        .I2(\paletteout[11]_i_18_n_0 ),
        .I3(\paletteout[11]_i_17_6 ),
        .I4(scanlinera),
        .I5(\paletteout[11]_i_17_7 ),
        .O(scanlinedout[62]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \paletteout[11]_i_27 
       (.I0(\paletteout[11]_i_17_0 ),
        .I1(\paletteout[11]_i_17_1 ),
        .I2(\paletteout[11]_i_18_n_0 ),
        .I3(\paletteout[11]_i_17_2 ),
        .I4(scanlinera),
        .I5(\paletteout[11]_i_17_3 ),
        .O(scanlinedout[46]));
  LUT6 #(
    .INIT(64'hFFFFDDD5FFFFFFFF)) 
    \paletteout[11]_i_4 
       (.I0(\paletteout[11]_i_13_n_0 ),
        .I1(cx[9]),
        .I2(cx[8]),
        .I3(cx[7]),
        .I4(cy[9]),
        .I5(p_0_out[1]),
        .O(\cx_reg[9]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \paletteout[11]_i_7 
       (.I0(\paletteout[11]_i_3_3 ),
        .I1(\paletteout[11]_i_3_4 ),
        .I2(\paletteout[11]_i_18_n_0 ),
        .I3(\paletteout[11]_i_3_5 ),
        .I4(scanlinera),
        .I5(\paletteout[11]_i_3_6 ),
        .O(aclk[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \paletteout[11]_i_8 
       (.I0(\paletteout[11]_i_3 ),
        .I1(\paletteout[11]_i_3_0 ),
        .I2(\paletteout[11]_i_18_n_0 ),
        .I3(\paletteout[11]_i_3_1 ),
        .I4(scanlinera),
        .I5(\paletteout[11]_i_3_2 ),
        .O(aclk[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \paletteout[11]_i_9 
       (.I0(\paletteout[11]_i_3_11 ),
        .I1(\paletteout[11]_i_3_12 ),
        .I2(\paletteout[11]_i_18_n_0 ),
        .I3(\paletteout[11]_i_3_13 ),
        .I4(scanlinera),
        .I5(\paletteout[11]_i_3_14 ),
        .O(aclk[47]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \paletteout[1]_i_2 
       (.I0(\paletteout_reg[1] ),
        .I1(\paletteout_reg[1]_0 ),
        .I2(paletteindex[7]),
        .I3(\paletteout_reg[1]_1 ),
        .I4(paletteindex[6]),
        .I5(\paletteout_reg[1]_2 ),
        .O(paletteout0[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \paletteout[1]_i_4 
       (.I0(\paletteout[1]_i_3_3 ),
        .I1(\paletteout[1]_i_3_4 ),
        .I2(\paletteout[11]_i_18_n_0 ),
        .I3(\paletteout[1]_i_3_5 ),
        .I4(scanlinera),
        .I5(\paletteout[1]_i_3_6 ),
        .O(aclk[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \paletteout[1]_i_5 
       (.I0(\paletteout[1]_i_3 ),
        .I1(\paletteout[1]_i_3_0 ),
        .I2(\paletteout[11]_i_18_n_0 ),
        .I3(\paletteout[1]_i_3_1 ),
        .I4(scanlinera),
        .I5(\paletteout[1]_i_3_2 ),
        .O(aclk[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \paletteout[1]_i_6 
       (.I0(\paletteout[1]_i_3_11 ),
        .I1(\paletteout[1]_i_3_12 ),
        .I2(\paletteout[11]_i_18_n_0 ),
        .I3(\paletteout[1]_i_3_13 ),
        .I4(scanlinera),
        .I5(\paletteout[1]_i_3_14 ),
        .O(aclk[37]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \paletteout[1]_i_7 
       (.I0(\paletteout[1]_i_3_7 ),
        .I1(\paletteout[1]_i_3_8 ),
        .I2(\paletteout[11]_i_18_n_0 ),
        .I3(\paletteout[1]_i_3_9 ),
        .I4(scanlinera),
        .I5(\paletteout[1]_i_3_10 ),
        .O(aclk[25]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \paletteout[2]_i_2 
       (.I0(\paletteout_reg[2] ),
        .I1(\paletteout_reg[2]_0 ),
        .I2(paletteindex[7]),
        .I3(\paletteout_reg[2]_1 ),
        .I4(paletteindex[6]),
        .I5(\paletteout_reg[2]_2 ),
        .O(paletteout0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \paletteout[2]_i_4 
       (.I0(\paletteout[2]_i_3_3 ),
        .I1(\paletteout[2]_i_3_4 ),
        .I2(\paletteout[11]_i_18_n_0 ),
        .I3(\paletteout[2]_i_3_5 ),
        .I4(scanlinera),
        .I5(\paletteout[2]_i_3_6 ),
        .O(aclk[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \paletteout[2]_i_5 
       (.I0(\paletteout[2]_i_3 ),
        .I1(\paletteout[2]_i_3_0 ),
        .I2(\paletteout[11]_i_18_n_0 ),
        .I3(\paletteout[2]_i_3_1 ),
        .I4(scanlinera),
        .I5(\paletteout[2]_i_3_2 ),
        .O(aclk[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \paletteout[2]_i_6 
       (.I0(\paletteout[2]_i_3_11 ),
        .I1(\paletteout[2]_i_3_12 ),
        .I2(\paletteout[11]_i_18_n_0 ),
        .I3(\paletteout[2]_i_3_13 ),
        .I4(scanlinera),
        .I5(\paletteout[2]_i_3_14 ),
        .O(aclk[38]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \paletteout[2]_i_7 
       (.I0(\paletteout[2]_i_3_7 ),
        .I1(\paletteout[2]_i_3_8 ),
        .I2(\paletteout[11]_i_18_n_0 ),
        .I3(\paletteout[2]_i_3_9 ),
        .I4(scanlinera),
        .I5(\paletteout[2]_i_3_10 ),
        .O(aclk[26]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \paletteout[3]_i_2 
       (.I0(\paletteout_reg[3] ),
        .I1(\paletteout_reg[3]_0 ),
        .I2(paletteindex[7]),
        .I3(\paletteout_reg[3]_1 ),
        .I4(paletteindex[6]),
        .I5(\paletteout_reg[3]_2 ),
        .O(paletteout0[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \paletteout[3]_i_4 
       (.I0(\paletteout[3]_i_3_3 ),
        .I1(\paletteout[3]_i_3_4 ),
        .I2(\paletteout[11]_i_18_n_0 ),
        .I3(\paletteout[3]_i_3_5 ),
        .I4(scanlinera),
        .I5(\paletteout[3]_i_3_6 ),
        .O(aclk[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \paletteout[3]_i_5 
       (.I0(\paletteout[3]_i_3 ),
        .I1(\paletteout[3]_i_3_0 ),
        .I2(\paletteout[11]_i_18_n_0 ),
        .I3(\paletteout[3]_i_3_1 ),
        .I4(scanlinera),
        .I5(\paletteout[3]_i_3_2 ),
        .O(aclk[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \paletteout[3]_i_6 
       (.I0(\paletteout[3]_i_3_11 ),
        .I1(\paletteout[3]_i_3_12 ),
        .I2(\paletteout[11]_i_18_n_0 ),
        .I3(\paletteout[3]_i_3_13 ),
        .I4(scanlinera),
        .I5(\paletteout[3]_i_3_14 ),
        .O(aclk[39]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \paletteout[3]_i_7 
       (.I0(\paletteout[3]_i_3_7 ),
        .I1(\paletteout[3]_i_3_8 ),
        .I2(\paletteout[11]_i_18_n_0 ),
        .I3(\paletteout[3]_i_3_9 ),
        .I4(scanlinera),
        .I5(\paletteout[3]_i_3_10 ),
        .O(aclk[27]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \paletteout[4]_i_2 
       (.I0(\paletteout_reg[4] ),
        .I1(\paletteout_reg[4]_0 ),
        .I2(paletteindex[7]),
        .I3(\paletteout_reg[4]_1 ),
        .I4(paletteindex[6]),
        .I5(\paletteout_reg[4]_2 ),
        .O(paletteout0[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \paletteout[4]_i_4 
       (.I0(\paletteout[4]_i_3_3 ),
        .I1(\paletteout[4]_i_3_4 ),
        .I2(\paletteout[11]_i_18_n_0 ),
        .I3(\paletteout[4]_i_3_5 ),
        .I4(scanlinera),
        .I5(\paletteout[4]_i_3_6 ),
        .O(aclk[16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \paletteout[4]_i_5 
       (.I0(\paletteout[4]_i_3 ),
        .I1(\paletteout[4]_i_3_0 ),
        .I2(\paletteout[11]_i_18_n_0 ),
        .I3(\paletteout[4]_i_3_1 ),
        .I4(scanlinera),
        .I5(\paletteout[4]_i_3_2 ),
        .O(aclk[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \paletteout[4]_i_6 
       (.I0(\paletteout[4]_i_3_11 ),
        .I1(\paletteout[4]_i_3_12 ),
        .I2(\paletteout[11]_i_18_n_0 ),
        .I3(\paletteout[4]_i_3_13 ),
        .I4(scanlinera),
        .I5(\paletteout[4]_i_3_14 ),
        .O(aclk[40]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \paletteout[4]_i_7 
       (.I0(\paletteout[4]_i_3_7 ),
        .I1(\paletteout[4]_i_3_8 ),
        .I2(\paletteout[11]_i_18_n_0 ),
        .I3(\paletteout[4]_i_3_9 ),
        .I4(scanlinera),
        .I5(\paletteout[4]_i_3_10 ),
        .O(aclk[28]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \paletteout[5]_i_2 
       (.I0(\paletteout_reg[5] ),
        .I1(\paletteout_reg[5]_0 ),
        .I2(paletteindex[7]),
        .I3(\paletteout_reg[5]_1 ),
        .I4(paletteindex[6]),
        .I5(\paletteout_reg[5]_2 ),
        .O(paletteout0[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \paletteout[5]_i_4 
       (.I0(\paletteout[5]_i_3_3 ),
        .I1(\paletteout[5]_i_3_4 ),
        .I2(\paletteout[11]_i_18_n_0 ),
        .I3(\paletteout[5]_i_3_5 ),
        .I4(scanlinera),
        .I5(\paletteout[5]_i_3_6 ),
        .O(aclk[17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \paletteout[5]_i_5 
       (.I0(\paletteout[5]_i_3 ),
        .I1(\paletteout[5]_i_3_0 ),
        .I2(\paletteout[11]_i_18_n_0 ),
        .I3(\paletteout[5]_i_3_1 ),
        .I4(scanlinera),
        .I5(\paletteout[5]_i_3_2 ),
        .O(aclk[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \paletteout[5]_i_6 
       (.I0(\paletteout[5]_i_3_11 ),
        .I1(\paletteout[5]_i_3_12 ),
        .I2(\paletteout[11]_i_18_n_0 ),
        .I3(\paletteout[5]_i_3_13 ),
        .I4(scanlinera),
        .I5(\paletteout[5]_i_3_14 ),
        .O(aclk[41]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \paletteout[5]_i_7 
       (.I0(\paletteout[5]_i_3_7 ),
        .I1(\paletteout[5]_i_3_8 ),
        .I2(\paletteout[11]_i_18_n_0 ),
        .I3(\paletteout[5]_i_3_9 ),
        .I4(scanlinera),
        .I5(\paletteout[5]_i_3_10 ),
        .O(aclk[29]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \paletteout[6]_i_2 
       (.I0(\paletteout_reg[6] ),
        .I1(\paletteout_reg[6]_0 ),
        .I2(paletteindex[7]),
        .I3(\paletteout_reg[6]_1 ),
        .I4(paletteindex[6]),
        .I5(\paletteout_reg[6]_2 ),
        .O(paletteout0[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \paletteout[6]_i_4 
       (.I0(\paletteout[6]_i_3_3 ),
        .I1(\paletteout[6]_i_3_4 ),
        .I2(\paletteout[11]_i_18_n_0 ),
        .I3(\paletteout[6]_i_3_5 ),
        .I4(scanlinera),
        .I5(\paletteout[6]_i_3_6 ),
        .O(aclk[18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \paletteout[6]_i_5 
       (.I0(\paletteout[6]_i_3 ),
        .I1(\paletteout[6]_i_3_0 ),
        .I2(\paletteout[11]_i_18_n_0 ),
        .I3(\paletteout[6]_i_3_1 ),
        .I4(scanlinera),
        .I5(\paletteout[6]_i_3_2 ),
        .O(aclk[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \paletteout[6]_i_6 
       (.I0(\paletteout[6]_i_3_11 ),
        .I1(\paletteout[6]_i_3_12 ),
        .I2(\paletteout[11]_i_18_n_0 ),
        .I3(\paletteout[6]_i_3_13 ),
        .I4(scanlinera),
        .I5(\paletteout[6]_i_3_14 ),
        .O(aclk[42]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \paletteout[6]_i_7 
       (.I0(\paletteout[6]_i_3_7 ),
        .I1(\paletteout[6]_i_3_8 ),
        .I2(\paletteout[11]_i_18_n_0 ),
        .I3(\paletteout[6]_i_3_9 ),
        .I4(scanlinera),
        .I5(\paletteout[6]_i_3_10 ),
        .O(aclk[30]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \paletteout[7]_i_2 
       (.I0(\paletteout_reg[7] ),
        .I1(\paletteout_reg[7]_0 ),
        .I2(paletteindex[7]),
        .I3(\paletteout_reg[7]_1 ),
        .I4(paletteindex[6]),
        .I5(\paletteout_reg[7]_2 ),
        .O(paletteout0[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \paletteout[7]_i_4 
       (.I0(\paletteout[7]_i_3_3 ),
        .I1(\paletteout[7]_i_3_4 ),
        .I2(\paletteout[11]_i_18_n_0 ),
        .I3(\paletteout[7]_i_3_5 ),
        .I4(scanlinera),
        .I5(\paletteout[7]_i_3_6 ),
        .O(aclk[19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \paletteout[7]_i_5 
       (.I0(\paletteout[7]_i_3 ),
        .I1(\paletteout[7]_i_3_0 ),
        .I2(\paletteout[11]_i_18_n_0 ),
        .I3(\paletteout[7]_i_3_1 ),
        .I4(scanlinera),
        .I5(\paletteout[7]_i_3_2 ),
        .O(aclk[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \paletteout[7]_i_6 
       (.I0(\paletteout[7]_i_3_11 ),
        .I1(\paletteout[7]_i_3_12 ),
        .I2(\paletteout[11]_i_18_n_0 ),
        .I3(\paletteout[7]_i_3_13 ),
        .I4(scanlinera),
        .I5(\paletteout[7]_i_3_14 ),
        .O(aclk[43]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \paletteout[7]_i_7 
       (.I0(\paletteout[7]_i_3_7 ),
        .I1(\paletteout[7]_i_3_8 ),
        .I2(\paletteout[11]_i_18_n_0 ),
        .I3(\paletteout[7]_i_3_9 ),
        .I4(scanlinera),
        .I5(\paletteout[7]_i_3_10 ),
        .O(aclk[31]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \paletteout[8]_i_2 
       (.I0(\paletteout_reg[8] ),
        .I1(\paletteout_reg[8]_0 ),
        .I2(paletteindex[7]),
        .I3(\paletteout_reg[8]_1 ),
        .I4(paletteindex[6]),
        .I5(\paletteout_reg[8]_2 ),
        .O(paletteout0[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \paletteout[8]_i_4 
       (.I0(\paletteout[8]_i_3_3 ),
        .I1(\paletteout[8]_i_3_4 ),
        .I2(\paletteout[11]_i_18_n_0 ),
        .I3(\paletteout[8]_i_3_5 ),
        .I4(scanlinera),
        .I5(\paletteout[8]_i_3_6 ),
        .O(aclk[20]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \paletteout[8]_i_5 
       (.I0(\paletteout[8]_i_3 ),
        .I1(\paletteout[8]_i_3_0 ),
        .I2(\paletteout[11]_i_18_n_0 ),
        .I3(\paletteout[8]_i_3_1 ),
        .I4(scanlinera),
        .I5(\paletteout[8]_i_3_2 ),
        .O(aclk[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \paletteout[8]_i_6 
       (.I0(\paletteout[8]_i_3_11 ),
        .I1(\paletteout[8]_i_3_12 ),
        .I2(\paletteout[11]_i_18_n_0 ),
        .I3(\paletteout[8]_i_3_13 ),
        .I4(scanlinera),
        .I5(\paletteout[8]_i_3_14 ),
        .O(aclk[44]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \paletteout[8]_i_7 
       (.I0(\paletteout[8]_i_3_7 ),
        .I1(\paletteout[8]_i_3_8 ),
        .I2(\paletteout[11]_i_18_n_0 ),
        .I3(\paletteout[8]_i_3_9 ),
        .I4(scanlinera),
        .I5(\paletteout[8]_i_3_10 ),
        .O(aclk[32]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \paletteout[9]_i_2 
       (.I0(\paletteout_reg[9] ),
        .I1(\paletteout_reg[9]_0 ),
        .I2(paletteindex[7]),
        .I3(\paletteout_reg[9]_1 ),
        .I4(paletteindex[6]),
        .I5(\paletteout_reg[9]_2 ),
        .O(paletteout0[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \paletteout[9]_i_4 
       (.I0(\paletteout[9]_i_3_3 ),
        .I1(\paletteout[9]_i_3_4 ),
        .I2(\paletteout[11]_i_18_n_0 ),
        .I3(\paletteout[9]_i_3_5 ),
        .I4(scanlinera),
        .I5(\paletteout[9]_i_3_6 ),
        .O(aclk[21]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \paletteout[9]_i_5 
       (.I0(\paletteout[9]_i_3 ),
        .I1(\paletteout[9]_i_3_0 ),
        .I2(\paletteout[11]_i_18_n_0 ),
        .I3(\paletteout[9]_i_3_1 ),
        .I4(scanlinera),
        .I5(\paletteout[9]_i_3_2 ),
        .O(aclk[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \paletteout[9]_i_6 
       (.I0(\paletteout[9]_i_3_11 ),
        .I1(\paletteout[9]_i_3_12 ),
        .I2(\paletteout[11]_i_18_n_0 ),
        .I3(\paletteout[9]_i_3_13 ),
        .I4(scanlinera),
        .I5(\paletteout[9]_i_3_14 ),
        .O(aclk[45]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \paletteout[9]_i_7 
       (.I0(\paletteout[9]_i_3_7 ),
        .I1(\paletteout[9]_i_3_8 ),
        .I2(\paletteout[11]_i_18_n_0 ),
        .I3(\paletteout[9]_i_3_9 ),
        .I4(scanlinera),
        .I5(\paletteout[9]_i_3_10 ),
        .O(aclk[33]));
  MUXF7 \paletteout_reg[11]_i_5 
       (.I0(\paletteout[11]_i_14_n_0 ),
        .I1(\paletteout[11]_i_15_n_0 ),
        .O(paletteindex[7]),
        .S(paletteentries_reg_0_63_0_2_i_8_n_0));
  MUXF7 \paletteout_reg[11]_i_6 
       (.I0(\paletteout[11]_i_16_n_0 ),
        .I1(\paletteout[11]_i_17_n_0 ),
        .O(paletteindex[6]),
        .S(paletteentries_reg_0_63_0_2_i_8_n_0));
  LUT5 #(
    .INIT(32'hB8F3B8C0)) 
    scanlinecache_reg_0_63_0_2_i_2
       (.I0(cx[7]),
        .I1(p_0_out[0]),
        .I2(cx[8]),
        .I3(scanwidth),
        .I4(cx[9]),
        .O(\cx_reg[7]_0 [5]));
  LUT5 #(
    .INIT(32'hB8F3B8C0)) 
    scanlinecache_reg_0_63_0_2_i_3
       (.I0(cx[6]),
        .I1(p_0_out[0]),
        .I2(cx[7]),
        .I3(scanwidth),
        .I4(cx[8]),
        .O(\cx_reg[7]_0 [4]));
  LUT5 #(
    .INIT(32'hB8F3B8C0)) 
    scanlinecache_reg_0_63_0_2_i_4
       (.I0(cx[5]),
        .I1(p_0_out[0]),
        .I2(cx[6]),
        .I3(scanwidth),
        .I4(cx[7]),
        .O(\cx_reg[7]_0 [3]));
  LUT5 #(
    .INIT(32'hB8F3B8C0)) 
    scanlinecache_reg_0_63_0_2_i_5
       (.I0(cx[4]),
        .I1(p_0_out[0]),
        .I2(cx[5]),
        .I3(scanwidth),
        .I4(cx[6]),
        .O(\cx_reg[7]_0 [2]));
  LUT5 #(
    .INIT(32'hB8F3B8C0)) 
    scanlinecache_reg_0_63_0_2_i_6
       (.I0(cx[3]),
        .I1(p_0_out[0]),
        .I2(cx[4]),
        .I3(scanwidth),
        .I4(cx[5]),
        .O(\cx_reg[7]_0 [1]));
  LUT5 #(
    .INIT(32'hB8F3B8C0)) 
    scanlinecache_reg_0_63_0_2_i_7
       (.I0(cx[2]),
        .I1(p_0_out[0]),
        .I2(cx[3]),
        .I3(scanwidth),
        .I4(cx[4]),
        .O(\cx_reg[7]_0 [0]));
  blockone_videomodule_0_0_serializer serializer
       (.Q(\tmds_internal[0]_29 ),
        .out(out),
        .pixelClock(pixelClock),
        .pixelClockx5(pixelClockx5),
        .tmds(tmds),
        .tmds_clock(tmds_clock),
        .\xilinx_serialize[1].secondary_0 (\tmds_internal[1]_30 ),
        .\xilinx_serialize[2].secondary_0 (\tmds_internal[2]_31 ));
  blockone_videomodule_0_0_tmds_channel \tmds_gen[0].tmds_channel 
       (.Q(data_island_data[3:0]),
        .SR(\tmds_gen[2].tmds_channel_n_0 ),
        .\acc_reg[1]_0 (video_data[7:4]),
        .mode(mode),
        .pixelClock(pixelClock),
        .\tmds_reg[8]_0 (control_data[1:0]),
        .\tmds_reg[8]_1 (\tmds_gen[1].tmds_channel_n_1 ),
        .\tmds_reg[9]_0 (\tmds_internal[0]_29 ));
  blockone_videomodule_0_0_tmds_channel__parameterized0 \tmds_gen[1].tmds_channel 
       (.E(\tmds_gen[1].tmds_channel_n_0 ),
        .Q(video_data[15:12]),
        .SR(\tmds_gen[2].tmds_channel_n_0 ),
        .mode(mode),
        .pixelClock(pixelClock),
        .\tmds_reg[2]_0 (data_island_data[7:4]),
        .\tmds_reg[3]_0 (control_data[2]),
        .\tmds_reg[9]_0 (\tmds_internal[1]_30 ),
        .\true_hdmi_output.mode_reg[0] (\tmds_gen[1].tmds_channel_n_1 ));
  blockone_videomodule_0_0_tmds_channel__parameterized1 \tmds_gen[2].tmds_channel 
       (.E(\tmds_gen[1].tmds_channel_n_0 ),
        .Q(video_data[23:20]),
        .SR(\tmds_gen[2].tmds_channel_n_0 ),
        .mode(mode),
        .pixelClock(pixelClock),
        .\tmds_reg[0]_0 (control_data[4]),
        .\tmds_reg[4]_0 (data_island_data[11:8]),
        .\tmds_reg[6]_0 (\tmds_gen[1].tmds_channel_n_1 ),
        .\tmds_reg[9]_0 (\tmds_internal[2]_31 ));
  LUT2 #(
    .INIT(4'hE)) 
    \true_hdmi_output.control_data[2]_i_1 
       (.I0(\true_hdmi_output.video_preamble ),
        .I1(\true_hdmi_output.data_island_preamble ),
        .O(p_0_out_0));
  FDRE #(
    .INIT(1'b0)) 
    \true_hdmi_output.control_data_reg[0] 
       (.C(pixelClock),
        .CE(out),
        .D(hsync),
        .Q(control_data[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \true_hdmi_output.control_data_reg[1] 
       (.C(pixelClock),
        .CE(out),
        .D(\true_hdmi_output.data_island_data[1]_i_1_n_0 ),
        .Q(control_data[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \true_hdmi_output.control_data_reg[2] 
       (.C(pixelClock),
        .CE(out),
        .D(p_0_out_0),
        .Q(control_data[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \true_hdmi_output.control_data_reg[4] 
       (.C(pixelClock),
        .CE(out),
        .D(\true_hdmi_output.data_island_preamble ),
        .Q(control_data[4]),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFFFFFFD557FFFF)) 
    \true_hdmi_output.data_island_data[0]_i_1 
       (.I0(cx[9]),
        .I1(cx[4]),
        .I2(cx[5]),
        .I3(cx[6]),
        .I4(cx[7]),
        .I5(cx[8]),
        .O(hsync));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT5 #(
    .INIT(32'hFEEFEEEE)) 
    \true_hdmi_output.data_island_data[1]_i_1 
       (.I0(\true_hdmi_output.packet_picker_n_48 ),
        .I1(\true_hdmi_output.data_island_data[1]_i_3_n_0 ),
        .I2(\true_hdmi_output.data_island_data[1]_i_4_n_0 ),
        .I3(cy[1]),
        .I4(cy[0]),
        .O(\true_hdmi_output.data_island_data[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF1FFFFFFFFFF)) 
    \true_hdmi_output.data_island_data[1]_i_3 
       (.I0(cy[1]),
        .I1(cy[0]),
        .I2(cy[2]),
        .I3(cy[5]),
        .I4(cy[4]),
        .I5(cy[3]),
        .O(\true_hdmi_output.data_island_data[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hC8C8C8C8C8C8C8C0)) 
    \true_hdmi_output.data_island_data[1]_i_4 
       (.I0(cx[7]),
        .I1(cx[9]),
        .I2(cx[8]),
        .I3(cx[4]),
        .I4(cx[6]),
        .I5(cx[5]),
        .O(\true_hdmi_output.data_island_data[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \true_hdmi_output.data_island_data[3]_i_1 
       (.I0(\true_hdmi_output.data_island_data[3]_i_2_n_0 ),
        .I1(cx[7]),
        .I2(\true_hdmi_output.data_island_data[3]_i_3_n_0 ),
        .I3(cx[9]),
        .I4(cx[0]),
        .I5(cx[1]),
        .O(data_island_data0));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \true_hdmi_output.data_island_data[3]_i_2 
       (.I0(cx[6]),
        .I1(cx[5]),
        .O(\true_hdmi_output.data_island_data[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \true_hdmi_output.data_island_data[3]_i_3 
       (.I0(cx[2]),
        .I1(cx[3]),
        .I2(cx[4]),
        .I3(cx[8]),
        .O(\true_hdmi_output.data_island_data[3]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \true_hdmi_output.data_island_data_reg[0] 
       (.C(pixelClock),
        .CE(1'b1),
        .D(hsync),
        .Q(data_island_data[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \true_hdmi_output.data_island_data_reg[10] 
       (.C(pixelClock),
        .CE(1'b1),
        .D(\true_hdmi_output.packet_data [7]),
        .Q(data_island_data[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \true_hdmi_output.data_island_data_reg[11] 
       (.C(pixelClock),
        .CE(1'b1),
        .D(\true_hdmi_output.packet_data [8]),
        .Q(data_island_data[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \true_hdmi_output.data_island_data_reg[1] 
       (.C(pixelClock),
        .CE(1'b1),
        .D(\true_hdmi_output.data_island_data[1]_i_1_n_0 ),
        .Q(data_island_data[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \true_hdmi_output.data_island_data_reg[2] 
       (.C(pixelClock),
        .CE(1'b1),
        .D(\true_hdmi_output.packet_data [0]),
        .Q(data_island_data[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \true_hdmi_output.data_island_data_reg[3] 
       (.C(pixelClock),
        .CE(1'b1),
        .D(data_island_data0),
        .Q(data_island_data[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \true_hdmi_output.data_island_data_reg[4] 
       (.C(pixelClock),
        .CE(1'b1),
        .D(\true_hdmi_output.packet_data [1]),
        .Q(data_island_data[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \true_hdmi_output.data_island_data_reg[5] 
       (.C(pixelClock),
        .CE(1'b1),
        .D(\true_hdmi_output.packet_data [2]),
        .Q(data_island_data[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \true_hdmi_output.data_island_data_reg[6] 
       (.C(pixelClock),
        .CE(1'b1),
        .D(\true_hdmi_output.packet_data [3]),
        .Q(data_island_data[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \true_hdmi_output.data_island_data_reg[7] 
       (.C(pixelClock),
        .CE(1'b1),
        .D(\true_hdmi_output.packet_data [4]),
        .Q(data_island_data[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \true_hdmi_output.data_island_data_reg[8] 
       (.C(pixelClock),
        .CE(1'b1),
        .D(\true_hdmi_output.packet_data [5]),
        .Q(data_island_data[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \true_hdmi_output.data_island_data_reg[9] 
       (.C(pixelClock),
        .CE(1'b1),
        .D(\true_hdmi_output.packet_data [6]),
        .Q(data_island_data[9]),
        .R(SR));
  LUT6 #(
    .INIT(64'h000F000F888F8888)) 
    \true_hdmi_output.data_island_guard_i_1 
       (.I0(\true_hdmi_output.data_island_guard_i_2_n_0 ),
        .I1(\true_hdmi_output.data_island_guard_i_3_n_0 ),
        .I2(cx[4]),
        .I3(\cy[9]_i_3_n_0 ),
        .I4(cx[7]),
        .I5(\true_hdmi_output.packet_picker_n_46 ),
        .O(\true_hdmi_output.data_island_guard0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \true_hdmi_output.data_island_guard_i_2 
       (.I0(cx[7]),
        .I1(cx[9]),
        .I2(cx[8]),
        .O(\true_hdmi_output.data_island_guard_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \true_hdmi_output.data_island_guard_i_3 
       (.I0(cx[2]),
        .I1(cx[3]),
        .I2(cx[8]),
        .I3(cx[4]),
        .I4(cx[6]),
        .I5(cx[5]),
        .O(\true_hdmi_output.data_island_guard_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \true_hdmi_output.data_island_guard_reg 
       (.C(pixelClock),
        .CE(1'b1),
        .D(\true_hdmi_output.data_island_guard0 ),
        .Q(\true_hdmi_output.data_island_guard ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \true_hdmi_output.data_island_period_reg 
       (.C(pixelClock),
        .CE(1'b1),
        .D(\true_hdmi_output.data_island_period_instantaneous ),
        .Q(\true_hdmi_output.data_island_period ),
        .R(SR));
  LUT5 #(
    .INIT(32'h60000000)) 
    \true_hdmi_output.data_island_preamble_i_1 
       (.I0(cx[2]),
        .I1(cx[3]),
        .I2(\true_hdmi_output.data_island_preamble_i_2_n_0 ),
        .I3(cx[7]),
        .I4(cx[9]),
        .O(\true_hdmi_output.data_island_preamble0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \true_hdmi_output.data_island_preamble_i_2 
       (.I0(cx[5]),
        .I1(cx[6]),
        .I2(cx[4]),
        .I3(cx[8]),
        .O(\true_hdmi_output.data_island_preamble_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \true_hdmi_output.data_island_preamble_reg 
       (.C(pixelClock),
        .CE(1'b1),
        .D(\true_hdmi_output.data_island_preamble0 ),
        .Q(\true_hdmi_output.data_island_preamble ),
        .R(SR));
  LUT5 #(
    .INIT(32'h0000F200)) 
    \true_hdmi_output.mode[0]_i_1 
       (.I0(video_data_period),
        .I1(\true_hdmi_output.video_guard ),
        .I2(\true_hdmi_output.data_island_period ),
        .I3(out),
        .I4(\true_hdmi_output.data_island_guard ),
        .O(\true_hdmi_output.mode[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h0E)) 
    \true_hdmi_output.mode[1]_i_1 
       (.I0(\true_hdmi_output.data_island_period ),
        .I1(\true_hdmi_output.video_guard ),
        .I2(\true_hdmi_output.data_island_guard ),
        .O(\true_hdmi_output.mode[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \true_hdmi_output.mode_reg[0] 
       (.C(pixelClock),
        .CE(1'b1),
        .D(\true_hdmi_output.mode[0]_i_1_n_0 ),
        .Q(mode[0]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \true_hdmi_output.mode_reg[1] 
       (.C(pixelClock),
        .CE(1'b1),
        .D(\true_hdmi_output.mode[1]_i_1_n_0 ),
        .Q(mode[1]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \true_hdmi_output.mode_reg[2] 
       (.C(pixelClock),
        .CE(1'b1),
        .D(\true_hdmi_output.data_island_guard ),
        .Q(mode[2]),
        .R(SR));
  blockone_videomodule_0_0_packet_assembler \true_hdmi_output.packet_assembler 
       (.D({\true_hdmi_output.packet_data [8:3],\true_hdmi_output.packet_data [1:0]}),
        .Q(\bch[2]_27 ),
        .SR(SR),
        .\counter_reg[1]_0 (\true_hdmi_output.packet_assembler_n_19 ),
        .\counter_reg[3]_0 (\true_hdmi_output.packet_assembler_n_18 ),
        .\counter_reg[4]_0 (\true_hdmi_output.packet_pixel_counter ),
        .\counter_reg[4]_1 (\true_hdmi_output.packet_assembler_n_7 ),
        .frame_counter10_in(frame_counter10_in),
        .out(out),
        .\parity[2][7]_i_3_0 (\true_hdmi_output.packet_picker_n_26 ),
        .\parity[2][7]_i_3_1 (\true_hdmi_output.packet_picker_n_27 ),
        .\parity[2][7]_i_9_0 (\true_hdmi_output.packet_picker_n_8 ),
        .\parity[2][7]_i_9_1 (\true_hdmi_output.packet_picker_n_7 ),
        .\parity_reg[0][0]_0 (\true_hdmi_output.packet_picker_n_32 ),
        .\parity_reg[0][0]_1 (\true_hdmi_output.packet_picker_n_33 ),
        .\parity_reg[0][7]_0 (\true_hdmi_output.packet_picker_n_22 ),
        .\parity_reg[0][7]_1 (\true_hdmi_output.packet_picker_n_23 ),
        .\parity_reg[1][1]_0 (\bch[1]_26 ),
        .\parity_reg[1][1]_1 (\true_hdmi_output.packet_picker_n_13 ),
        .\parity_reg[1][1]_2 (\true_hdmi_output.packet_picker_n_3 ),
        .\parity_reg[1][1]_3 (\true_hdmi_output.packet_picker_n_2 ),
        .\parity_reg[1][7]_0 ({\true_hdmi_output.packet_picker_n_0 ,p_27_out}),
        .\parity_reg[2][0]_0 (\true_hdmi_output.packet_picker_n_29 ),
        .\parity_reg[2][0]_1 (\true_hdmi_output.packet_picker_n_24 ),
        .\parity_reg[2][0]_2 (\true_hdmi_output.packet_picker_n_25 ),
        .\parity_reg[2][0]_3 (\true_hdmi_output.packet_picker_n_28 ),
        .\parity_reg[2][1]_0 (\true_hdmi_output.packet_picker_n_18 ),
        .\parity_reg[2][6]_0 (p_18_out),
        .\parity_reg[3][0]_0 (\true_hdmi_output.packet_picker_n_36 ),
        .\parity_reg[3][0]_1 (\true_hdmi_output.packet_picker_n_42 ),
        .\parity_reg[3][0]_2 (\true_hdmi_output.packet_picker_n_38 ),
        .\parity_reg[3][0]_3 (\true_hdmi_output.packet_picker_n_37 ),
        .\parity_reg[3][0]_4 (\true_hdmi_output.packet_picker_n_40 ),
        .\parity_reg[3][0]_5 (\true_hdmi_output.packet_picker_n_41 ),
        .\parity_reg[3][6]_0 (\true_hdmi_output.packet_picker_n_16 ),
        .\parity_reg[3][6]_1 (\true_hdmi_output.packet_picker_n_39 ),
        .\parity_reg[4][1]_0 (\true_hdmi_output.packet_picker_n_44 ),
        .\parity_reg[4][7]_0 (\true_hdmi_output.packet_picker_n_43 ),
        .pixelClock(pixelClock),
        .\true_hdmi_output.data_island_data_reg[4] (\true_hdmi_output.packet_picker_n_21 ),
        .\true_hdmi_output.data_island_data_reg[4]_0 (\true_hdmi_output.packet_picker_n_5 ),
        .\true_hdmi_output.data_island_data_reg[5] (\true_hdmi_output.packet_picker_n_12 ),
        .\true_hdmi_output.data_island_data_reg[6] (\true_hdmi_output.packet_picker_n_19 ),
        .\true_hdmi_output.data_island_data_reg[6]_0 (\true_hdmi_output.packet_picker_n_20 ),
        .\true_hdmi_output.data_island_data_reg[7] (\true_hdmi_output.packet_picker_n_15 ),
        .\true_hdmi_output.data_island_data_reg[8] (\true_hdmi_output.packet_picker_n_31 ),
        .\true_hdmi_output.data_island_data_reg[8]_0 (\true_hdmi_output.packet_picker_n_34 ),
        .\true_hdmi_output.data_island_data_reg[8]_1 (\true_hdmi_output.packet_picker_n_35 ),
        .\true_hdmi_output.data_island_data_reg[9] (\true_hdmi_output.packet_picker_n_4 ),
        .\true_hdmi_output.data_island_data_reg[9]_0 (\true_hdmi_output.packet_picker_n_30 ),
        .\true_hdmi_output.data_island_data_reg[9]_1 (\true_hdmi_output.packet_picker_n_14 ),
        .\true_hdmi_output.data_island_period (\true_hdmi_output.data_island_period ),
        .\true_hdmi_output.header (\true_hdmi_output.header ));
  blockone_videomodule_0_0_packet_picker \true_hdmi_output.packet_picker 
       (.D(\true_hdmi_output.packet_data [2]),
        .Q(cx),
        .SR(SR),
        .audioSampleInputLR(audioSampleInputLR),
        .\audio_sample_word_packet_reg[2][0][23]_0 (\true_hdmi_output.packet_picker_n_26 ),
        .audiosampleclk(audiosampleclk),
        .\counter_reg[0] (\true_hdmi_output.packet_picker_n_14 ),
        .\counter_reg[0]_0 (\true_hdmi_output.packet_picker_n_19 ),
        .\counter_reg[0]_1 (\true_hdmi_output.packet_picker_n_24 ),
        .\counter_reg[0]_2 (\true_hdmi_output.packet_picker_n_27 ),
        .\counter_reg[0]_3 (\true_hdmi_output.packet_picker_n_34 ),
        .\counter_reg[0]_4 (\true_hdmi_output.packet_picker_n_35 ),
        .\counter_reg[0]_5 (\true_hdmi_output.packet_picker_n_42 ),
        .\counter_reg[1] (\true_hdmi_output.packet_picker_n_5 ),
        .\counter_reg[1]_0 (\true_hdmi_output.packet_picker_n_28 ),
        .\counter_reg[1]_1 (\true_hdmi_output.packet_picker_n_37 ),
        .\counter_reg[1]_2 (\true_hdmi_output.packet_picker_n_38 ),
        .\counter_reg[1]_3 (\true_hdmi_output.packet_picker_n_40 ),
        .\counter_reg[1]_4 (\true_hdmi_output.packet_picker_n_41 ),
        .\counter_reg[1]_5 (\true_hdmi_output.packet_picker_n_44 ),
        .\counter_reg[2] (\true_hdmi_output.packet_picker_n_23 ),
        .\counter_reg[2]_0 (\true_hdmi_output.packet_picker_n_25 ),
        .\counter_reg[2]_1 (\true_hdmi_output.packet_picker_n_32 ),
        .\counter_reg[2]_2 (\true_hdmi_output.packet_picker_n_39 ),
        .\counter_reg[3] (\true_hdmi_output.packet_picker_n_2 ),
        .\counter_reg[3]_0 (\true_hdmi_output.packet_picker_n_13 ),
        .\counter_reg[3]_1 (\true_hdmi_output.packet_picker_n_16 ),
        .\counter_reg[3]_2 (\true_hdmi_output.packet_picker_n_21 ),
        .\counter_reg[3]_3 (\true_hdmi_output.packet_picker_n_22 ),
        .\counter_reg[3]_4 (\true_hdmi_output.packet_picker_n_33 ),
        .\counter_reg[3]_5 (\true_hdmi_output.packet_picker_n_43 ),
        .\counter_reg[4] (\true_hdmi_output.packet_picker_n_3 ),
        .\counter_reg[4]_0 (\true_hdmi_output.packet_picker_n_4 ),
        .\counter_reg[4]_1 (\true_hdmi_output.packet_picker_n_15 ),
        .\counter_reg[4]_2 (\true_hdmi_output.packet_picker_n_18 ),
        .\counter_reg[4]_3 (\true_hdmi_output.packet_picker_n_20 ),
        .\counter_reg[4]_4 (\true_hdmi_output.packet_picker_n_31 ),
        .\cx_reg[2] (\true_hdmi_output.packet_picker_n_6 ),
        .\cx_reg[6] (\true_hdmi_output.packet_picker_n_46 ),
        .\cy_reg[4] (\true_hdmi_output.packet_picker_n_47 ),
        .\cy_reg[9] (\true_hdmi_output.packet_picker_n_48 ),
        .\cycle_time_stamp_reg[3] (\true_hdmi_output.packet_picker_n_8 ),
        .\cycle_time_stamp_reg[7] (\true_hdmi_output.packet_picker_n_7 ),
        .frame_counter10_in(frame_counter10_in),
        .out(out),
        .\packet_type_reg[7]_0 (\true_hdmi_output.header ),
        .\packet_type_reg[7]_1 (\true_hdmi_output.packet_picker_n_12 ),
        .\packet_type_reg[7]_2 (\true_hdmi_output.packet_picker_n_29 ),
        .\packet_type_reg[7]_3 (\true_hdmi_output.packet_picker_n_30 ),
        .\packet_type_reg[7]_4 (\true_hdmi_output.packet_picker_n_36 ),
        .\parity_reg[1][0] ({\true_hdmi_output.packet_picker_n_0 ,p_27_out}),
        .\parity_reg[1][6] (\true_hdmi_output.packet_pixel_counter ),
        .\parity_reg[1][6]_0 (\true_hdmi_output.packet_assembler_n_19 ),
        .\parity_reg[1][7] (\bch[1]_26 ),
        .\parity_reg[1][7]_0 (\true_hdmi_output.packet_assembler_n_18 ),
        .\parity_reg[2][0] (p_18_out),
        .\parity_reg[2][6] (\bch[2]_27 ),
        .pixelClock(pixelClock),
        .\true_hdmi_output.data_island_data_reg[1] (cy),
        .\true_hdmi_output.data_island_data_reg[5] (\true_hdmi_output.packet_assembler_n_7 ),
        .\true_hdmi_output.data_island_period_instantaneous (\true_hdmi_output.data_island_period_instantaneous ));
  FDRE #(
    .INIT(1'b0)) 
    \true_hdmi_output.video_data_reg[12] 
       (.C(pixelClock),
        .CE(1'b1),
        .D(Q[4]),
        .Q(video_data[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \true_hdmi_output.video_data_reg[13] 
       (.C(pixelClock),
        .CE(1'b1),
        .D(Q[5]),
        .Q(video_data[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \true_hdmi_output.video_data_reg[14] 
       (.C(pixelClock),
        .CE(1'b1),
        .D(Q[6]),
        .Q(video_data[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \true_hdmi_output.video_data_reg[15] 
       (.C(pixelClock),
        .CE(1'b1),
        .D(Q[7]),
        .Q(video_data[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \true_hdmi_output.video_data_reg[20] 
       (.C(pixelClock),
        .CE(1'b1),
        .D(Q[8]),
        .Q(video_data[20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \true_hdmi_output.video_data_reg[21] 
       (.C(pixelClock),
        .CE(1'b1),
        .D(Q[9]),
        .Q(video_data[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \true_hdmi_output.video_data_reg[22] 
       (.C(pixelClock),
        .CE(1'b1),
        .D(Q[10]),
        .Q(video_data[22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \true_hdmi_output.video_data_reg[23] 
       (.C(pixelClock),
        .CE(1'b1),
        .D(Q[11]),
        .Q(video_data[23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \true_hdmi_output.video_data_reg[4] 
       (.C(pixelClock),
        .CE(1'b1),
        .D(Q[0]),
        .Q(video_data[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \true_hdmi_output.video_data_reg[5] 
       (.C(pixelClock),
        .CE(1'b1),
        .D(Q[1]),
        .Q(video_data[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \true_hdmi_output.video_data_reg[6] 
       (.C(pixelClock),
        .CE(1'b1),
        .D(Q[2]),
        .Q(video_data[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \true_hdmi_output.video_data_reg[7] 
       (.C(pixelClock),
        .CE(1'b1),
        .D(Q[3]),
        .Q(video_data[7]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \true_hdmi_output.video_guard_i_1 
       (.I0(\true_hdmi_output.video_preamble_i_2_n_0 ),
        .I1(cx[3]),
        .I2(cx[2]),
        .I3(cx[1]),
        .O(\true_hdmi_output.video_guard0 ));
  FDSE #(
    .INIT(1'b1)) 
    \true_hdmi_output.video_guard_reg 
       (.C(pixelClock),
        .CE(1'b1),
        .D(\true_hdmi_output.video_guard0 ),
        .Q(\true_hdmi_output.video_guard ),
        .S(SR));
  LUT4 #(
    .INIT(16'h2A80)) 
    \true_hdmi_output.video_preamble_i_1 
       (.I0(\true_hdmi_output.video_preamble_i_2_n_0 ),
        .I1(cx[2]),
        .I2(cx[1]),
        .I3(cx[3]),
        .O(\true_hdmi_output.video_preamble0 ));
  LUT6 #(
    .INIT(64'h000000F100000000)) 
    \true_hdmi_output.video_preamble_i_2 
       (.I0(cy[5]),
        .I1(\true_hdmi_output.packet_picker_n_47 ),
        .I2(\true_hdmi_output.packet_picker_n_48 ),
        .I3(\cy[9]_i_6_n_0 ),
        .I4(\cy[9]_i_3_n_0 ),
        .I5(cx[4]),
        .O(\true_hdmi_output.video_preamble_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \true_hdmi_output.video_preamble_reg 
       (.C(pixelClock),
        .CE(1'b1),
        .D(\true_hdmi_output.video_preamble0 ),
        .Q(\true_hdmi_output.video_preamble ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT5 #(
    .INIT(32'h00000A2A)) 
    video_data_period_i_1
       (.I0(\cy[9]_i_5_n_0 ),
        .I1(cx[8]),
        .I2(cx[9]),
        .I3(cx[7]),
        .I4(cy[9]),
        .O(video_data_period0));
  FDRE #(
    .INIT(1'b0)) 
    video_data_period_reg
       (.C(pixelClock),
        .CE(1'b1),
        .D(video_data_period0),
        .Q(video_data_period),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "packet_assembler" *) 
module blockone_videomodule_0_0_packet_assembler
   (Q,
    \counter_reg[4]_0 ,
    frame_counter10_in,
    \counter_reg[4]_1 ,
    \parity_reg[1][1]_0 ,
    D,
    \counter_reg[3]_0 ,
    \counter_reg[1]_0 ,
    \true_hdmi_output.data_island_data_reg[7] ,
    \parity_reg[4][7]_0 ,
    \true_hdmi_output.data_island_data_reg[5] ,
    \parity_reg[1][1]_1 ,
    \parity_reg[1][1]_2 ,
    \parity_reg[1][1]_3 ,
    \true_hdmi_output.data_island_data_reg[9] ,
    \true_hdmi_output.data_island_data_reg[9]_0 ,
    \true_hdmi_output.data_island_data_reg[9]_1 ,
    \parity_reg[3][6]_0 ,
    \parity_reg[3][6]_1 ,
    \true_hdmi_output.data_island_data_reg[6] ,
    \true_hdmi_output.data_island_data_reg[6]_0 ,
    \parity_reg[2][1]_0 ,
    \true_hdmi_output.data_island_data_reg[4] ,
    \true_hdmi_output.data_island_data_reg[4]_0 ,
    \parity_reg[0][7]_0 ,
    \parity_reg[0][7]_1 ,
    \parity_reg[2][0]_0 ,
    \parity_reg[2][0]_1 ,
    \parity_reg[2][0]_2 ,
    \parity_reg[2][0]_3 ,
    \parity[2][7]_i_3_0 ,
    \parity[2][7]_i_3_1 ,
    \true_hdmi_output.data_island_data_reg[8] ,
    \parity_reg[0][0]_0 ,
    \parity_reg[0][0]_1 ,
    \true_hdmi_output.data_island_data_reg[8]_0 ,
    \true_hdmi_output.data_island_data_reg[8]_1 ,
    \parity_reg[3][0]_0 ,
    \parity_reg[3][0]_1 ,
    \parity_reg[3][0]_2 ,
    \parity_reg[3][0]_3 ,
    \parity[2][7]_i_9_0 ,
    \parity[2][7]_i_9_1 ,
    \parity_reg[3][0]_4 ,
    \parity_reg[3][0]_5 ,
    \true_hdmi_output.header ,
    \parity_reg[4][1]_0 ,
    \true_hdmi_output.data_island_period ,
    out,
    pixelClock,
    \parity_reg[1][7]_0 ,
    \parity_reg[2][6]_0 ,
    SR);
  output [0:0]Q;
  output [4:0]\counter_reg[4]_0 ;
  output frame_counter10_in;
  output \counter_reg[4]_1 ;
  output [1:0]\parity_reg[1][1]_0 ;
  output [7:0]D;
  output \counter_reg[3]_0 ;
  output \counter_reg[1]_0 ;
  input \true_hdmi_output.data_island_data_reg[7] ;
  input \parity_reg[4][7]_0 ;
  input \true_hdmi_output.data_island_data_reg[5] ;
  input \parity_reg[1][1]_1 ;
  input \parity_reg[1][1]_2 ;
  input \parity_reg[1][1]_3 ;
  input \true_hdmi_output.data_island_data_reg[9] ;
  input \true_hdmi_output.data_island_data_reg[9]_0 ;
  input \true_hdmi_output.data_island_data_reg[9]_1 ;
  input \parity_reg[3][6]_0 ;
  input \parity_reg[3][6]_1 ;
  input \true_hdmi_output.data_island_data_reg[6] ;
  input \true_hdmi_output.data_island_data_reg[6]_0 ;
  input \parity_reg[2][1]_0 ;
  input \true_hdmi_output.data_island_data_reg[4] ;
  input \true_hdmi_output.data_island_data_reg[4]_0 ;
  input \parity_reg[0][7]_0 ;
  input \parity_reg[0][7]_1 ;
  input \parity_reg[2][0]_0 ;
  input \parity_reg[2][0]_1 ;
  input \parity_reg[2][0]_2 ;
  input \parity_reg[2][0]_3 ;
  input \parity[2][7]_i_3_0 ;
  input \parity[2][7]_i_3_1 ;
  input \true_hdmi_output.data_island_data_reg[8] ;
  input \parity_reg[0][0]_0 ;
  input \parity_reg[0][0]_1 ;
  input \true_hdmi_output.data_island_data_reg[8]_0 ;
  input \true_hdmi_output.data_island_data_reg[8]_1 ;
  input \parity_reg[3][0]_0 ;
  input \parity_reg[3][0]_1 ;
  input \parity_reg[3][0]_2 ;
  input \parity_reg[3][0]_3 ;
  input \parity[2][7]_i_9_0 ;
  input \parity[2][7]_i_9_1 ;
  input \parity_reg[3][0]_4 ;
  input \parity_reg[3][0]_5 ;
  input [0:0]\true_hdmi_output.header ;
  input \parity_reg[4][1]_0 ;
  input \true_hdmi_output.data_island_period ;
  input out;
  input pixelClock;
  input [1:0]\parity_reg[1][7]_0 ;
  input [0:0]\parity_reg[2][6]_0 ;
  input [0:0]SR;

  wire [7:0]D;
  wire [0:0]Q;
  wire [0:0]SR;
  wire [31:24]bch4;
  wire [63:56]\bch[0]_25 ;
  wire [63:58]\bch[1]_26 ;
  wire [63:57]\bch[2]_27 ;
  wire [63:56]\bch[3]_28 ;
  wire \counter[2]_i_1_n_0 ;
  wire \counter_reg[1]_0 ;
  wire \counter_reg[3]_0 ;
  wire [4:0]\counter_reg[4]_0 ;
  wire \counter_reg[4]_1 ;
  wire frame_counter10_in;
  wire [1:0]next_ecc0_return;
  wire [1:1]next_ecc1_return;
  wire [1:1]next_ecc2_return;
  wire [1:0]next_ecc3_return;
  wire [1:1]next_ecc_return;
  wire out;
  wire [4:0]p_0_in;
  wire [0:0]p_0_out;
  wire [0:0]p_13_out;
  wire [0:0]p_31_out;
  wire [0:0]p_36_out;
  wire [0:0]p_9_out;
  wire parity;
  wire \parity[0][0]_i_1_n_0 ;
  wire \parity[0][7]_i_1_n_0 ;
  wire \parity[0][7]_i_3_n_0 ;
  wire \parity[0][7]_i_4_n_0 ;
  wire \parity[2][0]_i_1_n_0 ;
  wire \parity[2][7]_i_3_0 ;
  wire \parity[2][7]_i_3_1 ;
  wire \parity[2][7]_i_3_n_0 ;
  wire \parity[2][7]_i_4_n_0 ;
  wire \parity[2][7]_i_9_0 ;
  wire \parity[2][7]_i_9_1 ;
  wire \parity[2][7]_i_9_n_0 ;
  wire \parity[3][0]_i_1_n_0 ;
  wire \parity[3][7]_i_1_n_0 ;
  wire \parity[3][7]_i_2_n_0 ;
  wire \parity[3][7]_i_3_n_0 ;
  wire \parity[3][7]_i_4_n_0 ;
  wire \parity[3][7]_i_6_n_0 ;
  wire \parity[4][7]_i_1_n_0 ;
  wire \parity[4][7]_i_6_n_0 ;
  wire \parity_reg[0][0]_0 ;
  wire \parity_reg[0][0]_1 ;
  wire \parity_reg[0][7]_0 ;
  wire \parity_reg[0][7]_1 ;
  wire [1:0]\parity_reg[1][1]_0 ;
  wire \parity_reg[1][1]_1 ;
  wire \parity_reg[1][1]_2 ;
  wire \parity_reg[1][1]_3 ;
  wire [1:0]\parity_reg[1][7]_0 ;
  wire \parity_reg[2][0]_0 ;
  wire \parity_reg[2][0]_1 ;
  wire \parity_reg[2][0]_2 ;
  wire \parity_reg[2][0]_3 ;
  wire \parity_reg[2][1]_0 ;
  wire [0:0]\parity_reg[2][6]_0 ;
  wire \parity_reg[3][0]_0 ;
  wire \parity_reg[3][0]_1 ;
  wire \parity_reg[3][0]_2 ;
  wire \parity_reg[3][0]_3 ;
  wire \parity_reg[3][0]_4 ;
  wire \parity_reg[3][0]_5 ;
  wire \parity_reg[3][6]_0 ;
  wire \parity_reg[3][6]_1 ;
  wire \parity_reg[4][1]_0 ;
  wire \parity_reg[4][7]_0 ;
  wire pixelClock;
  wire \true_hdmi_output.data_island_data[10]_i_2_n_0 ;
  wire \true_hdmi_output.data_island_data[10]_i_3_n_0 ;
  wire \true_hdmi_output.data_island_data[11]_i_2_n_0 ;
  wire \true_hdmi_output.data_island_data[11]_i_3_n_0 ;
  wire \true_hdmi_output.data_island_data[2]_i_3_n_0 ;
  wire \true_hdmi_output.data_island_data[2]_i_4_n_0 ;
  wire \true_hdmi_output.data_island_data[4]_i_3_n_0 ;
  wire \true_hdmi_output.data_island_data[4]_i_5_n_0 ;
  wire \true_hdmi_output.data_island_data[5]_i_3_n_0 ;
  wire \true_hdmi_output.data_island_data[6]_i_4_n_0 ;
  wire \true_hdmi_output.data_island_data[6]_i_7_n_0 ;
  wire \true_hdmi_output.data_island_data[7]_i_2_n_0 ;
  wire \true_hdmi_output.data_island_data[8]_i_3_n_0 ;
  wire \true_hdmi_output.data_island_data[8]_i_4_n_0 ;
  wire \true_hdmi_output.data_island_data[8]_i_9_n_0 ;
  wire \true_hdmi_output.data_island_data[9]_i_2_n_0 ;
  wire \true_hdmi_output.data_island_data_reg[2]_i_2_n_0 ;
  wire \true_hdmi_output.data_island_data_reg[4] ;
  wire \true_hdmi_output.data_island_data_reg[4]_0 ;
  wire \true_hdmi_output.data_island_data_reg[5] ;
  wire \true_hdmi_output.data_island_data_reg[6] ;
  wire \true_hdmi_output.data_island_data_reg[6]_0 ;
  wire \true_hdmi_output.data_island_data_reg[7] ;
  wire \true_hdmi_output.data_island_data_reg[8] ;
  wire \true_hdmi_output.data_island_data_reg[8]_0 ;
  wire \true_hdmi_output.data_island_data_reg[8]_1 ;
  wire \true_hdmi_output.data_island_data_reg[9] ;
  wire \true_hdmi_output.data_island_data_reg[9]_0 ;
  wire \true_hdmi_output.data_island_data_reg[9]_1 ;
  wire \true_hdmi_output.data_island_period ;
  wire [0:0]\true_hdmi_output.header ;

  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(\counter_reg[4]_0 [0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[1]_i_1 
       (.I0(\counter_reg[4]_0 [1]),
        .I1(\counter_reg[4]_0 [0]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \counter[2]_i_1 
       (.I0(\counter_reg[4]_0 [2]),
        .I1(\counter_reg[4]_0 [0]),
        .I2(\counter_reg[4]_0 [1]),
        .O(\counter[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \counter[3]_i_1 
       (.I0(\counter_reg[4]_0 [3]),
        .I1(\counter_reg[4]_0 [1]),
        .I2(\counter_reg[4]_0 [0]),
        .I3(\counter_reg[4]_0 [2]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \counter[4]_i_1 
       (.I0(\counter_reg[4]_0 [4]),
        .I1(\counter_reg[4]_0 [3]),
        .I2(\counter_reg[4]_0 [2]),
        .I3(\counter_reg[4]_0 [1]),
        .I4(\counter_reg[4]_0 [0]),
        .O(p_0_in[4]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(pixelClock),
        .CE(\true_hdmi_output.data_island_period ),
        .D(p_0_in[0]),
        .Q(\counter_reg[4]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(pixelClock),
        .CE(\true_hdmi_output.data_island_period ),
        .D(p_0_in[1]),
        .Q(\counter_reg[4]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(pixelClock),
        .CE(\true_hdmi_output.data_island_period ),
        .D(\counter[2]_i_1_n_0 ),
        .Q(\counter_reg[4]_0 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(pixelClock),
        .CE(\true_hdmi_output.data_island_period ),
        .D(p_0_in[3]),
        .Q(\counter_reg[4]_0 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(pixelClock),
        .CE(\true_hdmi_output.data_island_period ),
        .D(p_0_in[4]),
        .Q(\counter_reg[4]_0 [4]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \frame_counter[7]_i_4 
       (.I0(\counter_reg[4]_0 [3]),
        .I1(\counter_reg[4]_0 [1]),
        .I2(\counter_reg[4]_0 [0]),
        .I3(\counter_reg[4]_0 [4]),
        .I4(\counter_reg[4]_0 [2]),
        .O(frame_counter10_in));
  LUT2 #(
    .INIT(4'h9)) 
    \parity[0][0]_i_1 
       (.I0(\bch[0]_25 [58]),
        .I1(\parity[0][7]_i_3_n_0 ),
        .O(\parity[0][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \parity[0][1]_i_1 
       (.I0(\bch[0]_25 [59]),
        .I1(\parity[0][7]_i_4_n_0 ),
        .I2(\parity[0][7]_i_3_n_0 ),
        .O(next_ecc_return));
  LUT1 #(
    .INIT(2'h1)) 
    \parity[0][6]_i_1 
       (.I0(\parity[0][7]_i_4_n_0 ),
        .O(p_36_out));
  LUT3 #(
    .INIT(8'h7F)) 
    \parity[0][7]_i_1 
       (.I0(\counter_reg[4]_0 [2]),
        .I1(\counter_reg[4]_0 [4]),
        .I2(\counter_reg[4]_0 [3]),
        .O(\parity[0][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \parity[0][7]_i_2 
       (.I0(\parity[0][7]_i_3_n_0 ),
        .I1(\parity[0][7]_i_4_n_0 ),
        .O(p_31_out));
  LUT6 #(
    .INIT(64'h99A9AAAA99A99999)) 
    \parity[0][7]_i_3 
       (.I0(\bch[0]_25 [57]),
        .I1(\true_hdmi_output.data_island_data[8]_i_3_n_0 ),
        .I2(\parity_reg[0][0]_0 ),
        .I3(\counter_reg[4]_0 [3]),
        .I4(\counter_reg[4]_0 [4]),
        .I5(\parity_reg[0][0]_1 ),
        .O(\parity[0][7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h99AA9999A9A9A9A9)) 
    \parity[0][7]_i_4 
       (.I0(\bch[0]_25 [56]),
        .I1(\true_hdmi_output.data_island_data_reg[4]_0 ),
        .I2(\parity_reg[0][7]_0 ),
        .I3(\counter_reg[4]_0 [3]),
        .I4(\parity_reg[0][7]_1 ),
        .I5(\counter_reg[4]_0 [4]),
        .O(\parity[0][7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hA956)) 
    \parity[1][0]_i_1 
       (.I0(\bch[1]_26 [58]),
        .I1(\true_hdmi_output.data_island_data_reg[9] ),
        .I2(\counter_reg[3]_0 ),
        .I3(\parity_reg[1][1]_0 [1]),
        .O(next_ecc0_return[0]));
  LUT6 #(
    .INIT(64'h9669966996696996)) 
    \parity[1][1]_i_1 
       (.I0(\bch[1]_26 [59]),
        .I1(\parity_reg[1][1]_0 [1]),
        .I2(\parity_reg[1][1]_1 ),
        .I3(\parity_reg[1][1]_0 [0]),
        .I4(\parity_reg[1][1]_2 ),
        .I5(\parity_reg[1][1]_3 ),
        .O(next_ecc0_return[1]));
  LUT4 #(
    .INIT(16'h8088)) 
    \parity[1][7]_i_5 
       (.I0(\counter_reg[4]_0 [3]),
        .I1(\counter_reg[4]_0 [4]),
        .I2(\true_hdmi_output.data_island_data_reg[9]_0 ),
        .I3(\true_hdmi_output.data_island_data_reg[9]_1 ),
        .O(\counter_reg[3]_0 ));
  LUT4 #(
    .INIT(16'hA659)) 
    \parity[2][0]_i_1 
       (.I0(\bch[2]_27 [58]),
        .I1(\parity[2][7]_i_3_n_0 ),
        .I2(\parity[2][7]_i_4_n_0 ),
        .I3(\bch[2]_27 [57]),
        .O(\parity[2][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6966969996996966)) 
    \parity[2][1]_i_1 
       (.I0(\bch[2]_27 [59]),
        .I1(\bch[2]_27 [57]),
        .I2(\parity[2][7]_i_4_n_0 ),
        .I3(\parity[2][7]_i_3_n_0 ),
        .I4(Q),
        .I5(\parity_reg[2][1]_0 ),
        .O(next_ecc1_return));
  LUT5 #(
    .INIT(32'h99696696)) 
    \parity[2][7]_i_1 
       (.I0(\parity_reg[2][1]_0 ),
        .I1(Q),
        .I2(\parity[2][7]_i_3_n_0 ),
        .I3(\parity[2][7]_i_4_n_0 ),
        .I4(\bch[2]_27 [57]),
        .O(p_13_out));
  LUT6 #(
    .INIT(64'hCC44CC44FF47FF77)) 
    \parity[2][7]_i_3 
       (.I0(\parity_reg[2][0]_2 ),
        .I1(\counter_reg[4]_0 [4]),
        .I2(\counter_reg[4]_0 [2]),
        .I3(\counter_reg[4]_0 [3]),
        .I4(\parity_reg[2][0]_3 ),
        .I5(\parity[2][7]_i_9_n_0 ),
        .O(\parity[2][7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8088)) 
    \parity[2][7]_i_4 
       (.I0(\counter_reg[4]_0 [3]),
        .I1(\counter_reg[4]_0 [4]),
        .I2(\parity_reg[2][0]_0 ),
        .I3(\parity_reg[2][0]_1 ),
        .O(\parity[2][7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBAAABABABAAAAAAA)) 
    \parity[2][7]_i_9 
       (.I0(\parity[3][7]_i_6_n_0 ),
        .I1(\counter_reg[4]_0 [2]),
        .I2(\counter_reg[4]_0 [3]),
        .I3(\parity[2][7]_i_3_0 ),
        .I4(\counter_reg[4]_0 [1]),
        .I5(\parity[2][7]_i_3_1 ),
        .O(\parity[2][7]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAA65559)) 
    \parity[3][0]_i_1 
       (.I0(\bch[3]_28 [58]),
        .I1(\parity[3][7]_i_2_n_0 ),
        .I2(\parity[3][7]_i_3_n_0 ),
        .I3(\parity[3][7]_i_4_n_0 ),
        .I4(\bch[3]_28 [57]),
        .O(\parity[3][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669696969)) 
    \parity[3][1]_i_1 
       (.I0(\bch[3]_28 [59]),
        .I1(p_9_out),
        .I2(\bch[3]_28 [57]),
        .I3(\parity[3][7]_i_4_n_0 ),
        .I4(\parity[3][7]_i_3_n_0 ),
        .I5(\parity[3][7]_i_2_n_0 ),
        .O(next_ecc2_return));
  LUT5 #(
    .INIT(32'hA656A6A6)) 
    \parity[3][6]_i_1 
       (.I0(\bch[3]_28 [56]),
        .I1(\parity_reg[3][6]_0 ),
        .I2(\counter_reg[4]_0 [4]),
        .I3(\counter_reg[4]_0 [3]),
        .I4(\parity_reg[3][6]_1 ),
        .O(p_9_out));
  LUT6 #(
    .INIT(64'h02FDFD02FD0202FD)) 
    \parity[3][7]_i_1 
       (.I0(\parity[3][7]_i_2_n_0 ),
        .I1(\parity[3][7]_i_3_n_0 ),
        .I2(\parity[3][7]_i_4_n_0 ),
        .I3(\bch[3]_28 [57]),
        .I4(\true_hdmi_output.data_island_data_reg[7] ),
        .I5(\bch[3]_28 [56]),
        .O(\parity[3][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBAABBBABBABBBBBB)) 
    \parity[3][7]_i_2 
       (.I0(\counter_reg[4]_0 [4]),
        .I1(\parity[3][7]_i_6_n_0 ),
        .I2(\counter_reg[4]_0 [2]),
        .I3(\counter_reg[4]_0 [3]),
        .I4(\parity_reg[3][0]_2 ),
        .I5(\parity_reg[3][0]_3 ),
        .O(\parity[3][7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00E20000)) 
    \parity[3][7]_i_3 
       (.I0(\parity_reg[3][0]_4 ),
        .I1(\counter_reg[4]_0 [2]),
        .I2(\parity_reg[3][0]_5 ),
        .I3(\counter_reg[4]_0 [3]),
        .I4(\counter_reg[4]_0 [4]),
        .O(\parity[3][7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8088)) 
    \parity[3][7]_i_4 
       (.I0(\counter_reg[4]_0 [3]),
        .I1(\counter_reg[4]_0 [4]),
        .I2(\parity_reg[3][0]_0 ),
        .I3(\parity_reg[3][0]_1 ),
        .O(\parity[3][7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hE2000000)) 
    \parity[3][7]_i_6 
       (.I0(\parity[2][7]_i_9_0 ),
        .I1(\counter_reg[4]_0 [1]),
        .I2(\parity[2][7]_i_9_1 ),
        .I3(\counter_reg[4]_0 [2]),
        .I4(\counter_reg[4]_0 [3]),
        .O(\parity[3][7]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hA95956A6)) 
    \parity[4][0]_i_1 
       (.I0(bch4[24]),
        .I1(\parity_reg[4][7]_0 ),
        .I2(\counter_reg[4]_0 [4]),
        .I3(\parity[4][7]_i_6_n_0 ),
        .I4(bch4[25]),
        .O(next_ecc3_return[0]));
  LUT5 #(
    .INIT(32'hA95956A6)) 
    \parity[4][1]_i_1 
       (.I0(bch4[24]),
        .I1(\parity_reg[4][7]_0 ),
        .I2(\counter_reg[4]_0 [4]),
        .I3(\parity[4][7]_i_6_n_0 ),
        .I4(bch4[26]),
        .O(next_ecc3_return[1]));
  LUT6 #(
    .INIT(64'h0080FFFFFFFFFFFF)) 
    \parity[4][7]_i_1 
       (.I0(\counter_reg[4]_0 [4]),
        .I1(\counter_reg[4]_0 [3]),
        .I2(\counter_reg[4]_0 [2]),
        .I3(\counter_reg[1]_0 ),
        .I4(\true_hdmi_output.data_island_period ),
        .I5(out),
        .O(\parity[4][7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \parity[4][7]_i_2 
       (.I0(\counter_reg[4]_0 [3]),
        .I1(\counter_reg[4]_0 [4]),
        .O(parity));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h56A6)) 
    \parity[4][7]_i_3 
       (.I0(bch4[24]),
        .I1(\parity_reg[4][7]_0 ),
        .I2(\counter_reg[4]_0 [4]),
        .I3(\parity[4][7]_i_6_n_0 ),
        .O(p_0_out));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \parity[4][7]_i_4 
       (.I0(\counter_reg[4]_0 [1]),
        .I1(\counter_reg[4]_0 [0]),
        .O(\counter_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \parity[4][7]_i_6 
       (.I0(\true_hdmi_output.header ),
        .I1(\counter_reg[4]_0 [0]),
        .I2(\counter_reg[4]_0 [1]),
        .I3(\counter_reg[4]_0 [2]),
        .I4(\parity_reg[4][1]_0 ),
        .O(\parity[4][7]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \parity_reg[0][0] 
       (.C(pixelClock),
        .CE(\parity[0][7]_i_1_n_0 ),
        .D(\parity[0][0]_i_1_n_0 ),
        .Q(\bch[0]_25 [56]),
        .R(\parity[4][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \parity_reg[0][1] 
       (.C(pixelClock),
        .CE(\parity[0][7]_i_1_n_0 ),
        .D(next_ecc_return),
        .Q(\bch[0]_25 [57]),
        .R(\parity[4][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \parity_reg[0][2] 
       (.C(pixelClock),
        .CE(\parity[0][7]_i_1_n_0 ),
        .D(\bch[0]_25 [60]),
        .Q(\bch[0]_25 [58]),
        .R(\parity[4][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \parity_reg[0][3] 
       (.C(pixelClock),
        .CE(\parity[0][7]_i_1_n_0 ),
        .D(\bch[0]_25 [61]),
        .Q(\bch[0]_25 [59]),
        .R(\parity[4][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \parity_reg[0][4] 
       (.C(pixelClock),
        .CE(\parity[0][7]_i_1_n_0 ),
        .D(\bch[0]_25 [62]),
        .Q(\bch[0]_25 [60]),
        .R(\parity[4][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \parity_reg[0][5] 
       (.C(pixelClock),
        .CE(\parity[0][7]_i_1_n_0 ),
        .D(\bch[0]_25 [63]),
        .Q(\bch[0]_25 [61]),
        .R(\parity[4][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \parity_reg[0][6] 
       (.C(pixelClock),
        .CE(\parity[0][7]_i_1_n_0 ),
        .D(p_36_out),
        .Q(\bch[0]_25 [62]),
        .R(\parity[4][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \parity_reg[0][7] 
       (.C(pixelClock),
        .CE(\parity[0][7]_i_1_n_0 ),
        .D(p_31_out),
        .Q(\bch[0]_25 [63]),
        .R(\parity[4][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \parity_reg[1][0] 
       (.C(pixelClock),
        .CE(\parity[0][7]_i_1_n_0 ),
        .D(next_ecc0_return[0]),
        .Q(\parity_reg[1][1]_0 [0]),
        .R(\parity[4][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \parity_reg[1][1] 
       (.C(pixelClock),
        .CE(\parity[0][7]_i_1_n_0 ),
        .D(next_ecc0_return[1]),
        .Q(\parity_reg[1][1]_0 [1]),
        .R(\parity[4][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \parity_reg[1][2] 
       (.C(pixelClock),
        .CE(\parity[0][7]_i_1_n_0 ),
        .D(\bch[1]_26 [60]),
        .Q(\bch[1]_26 [58]),
        .R(\parity[4][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \parity_reg[1][3] 
       (.C(pixelClock),
        .CE(\parity[0][7]_i_1_n_0 ),
        .D(\bch[1]_26 [61]),
        .Q(\bch[1]_26 [59]),
        .R(\parity[4][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \parity_reg[1][4] 
       (.C(pixelClock),
        .CE(\parity[0][7]_i_1_n_0 ),
        .D(\bch[1]_26 [62]),
        .Q(\bch[1]_26 [60]),
        .R(\parity[4][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \parity_reg[1][5] 
       (.C(pixelClock),
        .CE(\parity[0][7]_i_1_n_0 ),
        .D(\bch[1]_26 [63]),
        .Q(\bch[1]_26 [61]),
        .R(\parity[4][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \parity_reg[1][6] 
       (.C(pixelClock),
        .CE(\parity[0][7]_i_1_n_0 ),
        .D(\parity_reg[1][7]_0 [0]),
        .Q(\bch[1]_26 [62]),
        .R(\parity[4][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \parity_reg[1][7] 
       (.C(pixelClock),
        .CE(\parity[0][7]_i_1_n_0 ),
        .D(\parity_reg[1][7]_0 [1]),
        .Q(\bch[1]_26 [63]),
        .R(\parity[4][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \parity_reg[2][0] 
       (.C(pixelClock),
        .CE(\parity[0][7]_i_1_n_0 ),
        .D(\parity[2][0]_i_1_n_0 ),
        .Q(Q),
        .R(\parity[4][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \parity_reg[2][1] 
       (.C(pixelClock),
        .CE(\parity[0][7]_i_1_n_0 ),
        .D(next_ecc1_return),
        .Q(\bch[2]_27 [57]),
        .R(\parity[4][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \parity_reg[2][2] 
       (.C(pixelClock),
        .CE(\parity[0][7]_i_1_n_0 ),
        .D(\bch[2]_27 [60]),
        .Q(\bch[2]_27 [58]),
        .R(\parity[4][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \parity_reg[2][3] 
       (.C(pixelClock),
        .CE(\parity[0][7]_i_1_n_0 ),
        .D(\bch[2]_27 [61]),
        .Q(\bch[2]_27 [59]),
        .R(\parity[4][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \parity_reg[2][4] 
       (.C(pixelClock),
        .CE(\parity[0][7]_i_1_n_0 ),
        .D(\bch[2]_27 [62]),
        .Q(\bch[2]_27 [60]),
        .R(\parity[4][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \parity_reg[2][5] 
       (.C(pixelClock),
        .CE(\parity[0][7]_i_1_n_0 ),
        .D(\bch[2]_27 [63]),
        .Q(\bch[2]_27 [61]),
        .R(\parity[4][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \parity_reg[2][6] 
       (.C(pixelClock),
        .CE(\parity[0][7]_i_1_n_0 ),
        .D(\parity_reg[2][6]_0 ),
        .Q(\bch[2]_27 [62]),
        .R(\parity[4][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \parity_reg[2][7] 
       (.C(pixelClock),
        .CE(\parity[0][7]_i_1_n_0 ),
        .D(p_13_out),
        .Q(\bch[2]_27 [63]),
        .R(\parity[4][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \parity_reg[3][0] 
       (.C(pixelClock),
        .CE(\parity[0][7]_i_1_n_0 ),
        .D(\parity[3][0]_i_1_n_0 ),
        .Q(\bch[3]_28 [56]),
        .R(\parity[4][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \parity_reg[3][1] 
       (.C(pixelClock),
        .CE(\parity[0][7]_i_1_n_0 ),
        .D(next_ecc2_return),
        .Q(\bch[3]_28 [57]),
        .R(\parity[4][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \parity_reg[3][2] 
       (.C(pixelClock),
        .CE(\parity[0][7]_i_1_n_0 ),
        .D(\bch[3]_28 [60]),
        .Q(\bch[3]_28 [58]),
        .R(\parity[4][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \parity_reg[3][3] 
       (.C(pixelClock),
        .CE(\parity[0][7]_i_1_n_0 ),
        .D(\bch[3]_28 [61]),
        .Q(\bch[3]_28 [59]),
        .R(\parity[4][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \parity_reg[3][4] 
       (.C(pixelClock),
        .CE(\parity[0][7]_i_1_n_0 ),
        .D(\bch[3]_28 [62]),
        .Q(\bch[3]_28 [60]),
        .R(\parity[4][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \parity_reg[3][5] 
       (.C(pixelClock),
        .CE(\parity[0][7]_i_1_n_0 ),
        .D(\bch[3]_28 [63]),
        .Q(\bch[3]_28 [61]),
        .R(\parity[4][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \parity_reg[3][6] 
       (.C(pixelClock),
        .CE(\parity[0][7]_i_1_n_0 ),
        .D(p_9_out),
        .Q(\bch[3]_28 [62]),
        .R(\parity[4][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \parity_reg[3][7] 
       (.C(pixelClock),
        .CE(\parity[0][7]_i_1_n_0 ),
        .D(\parity[3][7]_i_1_n_0 ),
        .Q(\bch[3]_28 [63]),
        .R(\parity[4][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \parity_reg[4][0] 
       (.C(pixelClock),
        .CE(parity),
        .D(next_ecc3_return[0]),
        .Q(bch4[24]),
        .R(\parity[4][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \parity_reg[4][1] 
       (.C(pixelClock),
        .CE(parity),
        .D(next_ecc3_return[1]),
        .Q(bch4[25]),
        .R(\parity[4][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \parity_reg[4][2] 
       (.C(pixelClock),
        .CE(parity),
        .D(bch4[27]),
        .Q(bch4[26]),
        .R(\parity[4][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \parity_reg[4][3] 
       (.C(pixelClock),
        .CE(parity),
        .D(bch4[28]),
        .Q(bch4[27]),
        .R(\parity[4][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \parity_reg[4][4] 
       (.C(pixelClock),
        .CE(parity),
        .D(bch4[29]),
        .Q(bch4[28]),
        .R(\parity[4][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \parity_reg[4][5] 
       (.C(pixelClock),
        .CE(parity),
        .D(bch4[30]),
        .Q(bch4[29]),
        .R(\parity[4][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \parity_reg[4][6] 
       (.C(pixelClock),
        .CE(parity),
        .D(bch4[31]),
        .Q(bch4[30]),
        .R(\parity[4][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \parity_reg[4][7] 
       (.C(pixelClock),
        .CE(parity),
        .D(p_0_out),
        .Q(bch4[31]),
        .R(\parity[4][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDDDDDDDDD5555555)) 
    \true_hdmi_output.data_island_data[10]_i_1 
       (.I0(\parity[2][7]_i_3_n_0 ),
        .I1(\true_hdmi_output.data_island_data[10]_i_2_n_0 ),
        .I2(\counter_reg[4]_0 [2]),
        .I3(\counter_reg[4]_0 [4]),
        .I4(\counter_reg[4]_0 [3]),
        .I5(\parity[2][7]_i_4_n_0 ),
        .O(D[6]));
  LUT5 #(
    .INIT(32'hFFFF55D5)) 
    \true_hdmi_output.data_island_data[10]_i_2 
       (.I0(\counter_reg[4]_0 [2]),
        .I1(\bch[2]_27 [61]),
        .I2(\counter_reg[4]_0 [1]),
        .I3(\counter_reg[4]_0 [0]),
        .I4(\true_hdmi_output.data_island_data[10]_i_3_n_0 ),
        .O(\true_hdmi_output.data_island_data[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \true_hdmi_output.data_island_data[10]_i_3 
       (.I0(\bch[2]_27 [63]),
        .I1(\counter_reg[4]_0 [1]),
        .I2(\bch[2]_27 [59]),
        .I3(\counter_reg[4]_0 [0]),
        .I4(\bch[2]_27 [57]),
        .O(\true_hdmi_output.data_island_data[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFDDD5F5F5)) 
    \true_hdmi_output.data_island_data[11]_i_1 
       (.I0(\parity[3][7]_i_2_n_0 ),
        .I1(\true_hdmi_output.data_island_data[11]_i_2_n_0 ),
        .I2(\parity[3][7]_i_4_n_0 ),
        .I3(\true_hdmi_output.data_island_data[11]_i_3_n_0 ),
        .I4(\counter_reg[4]_0 [2]),
        .I5(\parity[3][7]_i_3_n_0 ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \true_hdmi_output.data_island_data[11]_i_2 
       (.I0(\bch[3]_28 [63]),
        .I1(\bch[3]_28 [61]),
        .I2(\counter_reg[4]_0 [1]),
        .I3(\bch[3]_28 [59]),
        .I4(\counter_reg[4]_0 [0]),
        .I5(\bch[3]_28 [57]),
        .O(\true_hdmi_output.data_island_data[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \true_hdmi_output.data_island_data[11]_i_3 
       (.I0(\counter_reg[4]_0 [4]),
        .I1(\counter_reg[4]_0 [3]),
        .O(\true_hdmi_output.data_island_data[11]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \true_hdmi_output.data_island_data[2]_i_1 
       (.I0(\true_hdmi_output.data_island_data_reg[2]_i_2_n_0 ),
        .I1(\counter_reg[4]_0 [3]),
        .I2(\parity[4][7]_i_6_n_0 ),
        .I3(\counter_reg[4]_0 [4]),
        .I4(\parity_reg[4][7]_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \true_hdmi_output.data_island_data[2]_i_3 
       (.I0(bch4[27]),
        .I1(bch4[26]),
        .I2(\counter_reg[4]_0 [1]),
        .I3(bch4[25]),
        .I4(\counter_reg[4]_0 [0]),
        .I5(bch4[24]),
        .O(\true_hdmi_output.data_island_data[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \true_hdmi_output.data_island_data[2]_i_4 
       (.I0(bch4[31]),
        .I1(bch4[30]),
        .I2(\counter_reg[4]_0 [1]),
        .I3(bch4[29]),
        .I4(\counter_reg[4]_0 [0]),
        .I5(bch4[28]),
        .O(\true_hdmi_output.data_island_data[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hDDDDDDDDD5555555)) 
    \true_hdmi_output.data_island_data[4]_i_1 
       (.I0(\true_hdmi_output.data_island_data_reg[4] ),
        .I1(\true_hdmi_output.data_island_data[4]_i_3_n_0 ),
        .I2(\counter_reg[4]_0 [2]),
        .I3(\counter_reg[4]_0 [4]),
        .I4(\counter_reg[4]_0 [3]),
        .I5(\true_hdmi_output.data_island_data_reg[4]_0 ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'hFFFF55D5)) 
    \true_hdmi_output.data_island_data[4]_i_3 
       (.I0(\counter_reg[4]_0 [2]),
        .I1(\bch[0]_25 [60]),
        .I2(\counter_reg[4]_0 [1]),
        .I3(\counter_reg[4]_0 [0]),
        .I4(\true_hdmi_output.data_island_data[4]_i_5_n_0 ),
        .O(\true_hdmi_output.data_island_data[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \true_hdmi_output.data_island_data[4]_i_5 
       (.I0(\bch[0]_25 [62]),
        .I1(\counter_reg[4]_0 [1]),
        .I2(\bch[0]_25 [58]),
        .I3(\counter_reg[4]_0 [0]),
        .I4(\bch[0]_25 [56]),
        .O(\true_hdmi_output.data_island_data[4]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h80008A00)) 
    \true_hdmi_output.data_island_data[5]_i_2 
       (.I0(\counter_reg[4]_0 [4]),
        .I1(\true_hdmi_output.data_island_data[5]_i_3_n_0 ),
        .I2(\counter_reg[4]_0 [2]),
        .I3(\counter_reg[4]_0 [3]),
        .I4(\true_hdmi_output.data_island_data_reg[5] ),
        .O(\counter_reg[4]_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \true_hdmi_output.data_island_data[5]_i_3 
       (.I0(\bch[1]_26 [62]),
        .I1(\bch[1]_26 [60]),
        .I2(\counter_reg[4]_0 [1]),
        .I3(\bch[1]_26 [58]),
        .I4(\counter_reg[4]_0 [0]),
        .I5(\parity_reg[1][1]_0 [0]),
        .O(\true_hdmi_output.data_island_data[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFFFC040)) 
    \true_hdmi_output.data_island_data[6]_i_1 
       (.I0(\true_hdmi_output.data_island_data_reg[6] ),
        .I1(\counter_reg[4]_0 [4]),
        .I2(\counter_reg[4]_0 [3]),
        .I3(\counter_reg[4]_0 [2]),
        .I4(\true_hdmi_output.data_island_data_reg[6]_0 ),
        .I5(\true_hdmi_output.data_island_data[6]_i_4_n_0 ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h44440444)) 
    \true_hdmi_output.data_island_data[6]_i_4 
       (.I0(\true_hdmi_output.data_island_data[6]_i_7_n_0 ),
        .I1(\counter_reg[4]_0 [2]),
        .I2(\bch[2]_27 [60]),
        .I3(\counter_reg[4]_0 [1]),
        .I4(\counter_reg[4]_0 [0]),
        .O(\true_hdmi_output.data_island_data[6]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \true_hdmi_output.data_island_data[6]_i_7 
       (.I0(\bch[2]_27 [62]),
        .I1(\counter_reg[4]_0 [1]),
        .I2(\bch[2]_27 [58]),
        .I3(\counter_reg[4]_0 [0]),
        .I4(Q),
        .O(\true_hdmi_output.data_island_data[6]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hBAAAAAAA)) 
    \true_hdmi_output.data_island_data[7]_i_1 
       (.I0(\true_hdmi_output.data_island_data_reg[7] ),
        .I1(\true_hdmi_output.data_island_data[7]_i_2_n_0 ),
        .I2(\counter_reg[4]_0 [3]),
        .I3(\counter_reg[4]_0 [4]),
        .I4(\counter_reg[4]_0 [2]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \true_hdmi_output.data_island_data[7]_i_2 
       (.I0(\bch[3]_28 [62]),
        .I1(\bch[3]_28 [60]),
        .I2(\counter_reg[4]_0 [1]),
        .I3(\bch[3]_28 [58]),
        .I4(\counter_reg[4]_0 [0]),
        .I5(\bch[3]_28 [56]),
        .O(\true_hdmi_output.data_island_data[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEAAAAAAAAAAA)) 
    \true_hdmi_output.data_island_data[8]_i_1 
       (.I0(\true_hdmi_output.data_island_data_reg[8] ),
        .I1(\counter_reg[4]_0 [2]),
        .I2(\counter_reg[4]_0 [4]),
        .I3(\counter_reg[4]_0 [3]),
        .I4(\true_hdmi_output.data_island_data[8]_i_3_n_0 ),
        .I5(\true_hdmi_output.data_island_data[8]_i_4_n_0 ),
        .O(D[4]));
  LUT5 #(
    .INIT(32'h88800080)) 
    \true_hdmi_output.data_island_data[8]_i_3 
       (.I0(\counter_reg[4]_0 [3]),
        .I1(\counter_reg[4]_0 [4]),
        .I2(\true_hdmi_output.data_island_data_reg[8]_0 ),
        .I3(\counter_reg[4]_0 [1]),
        .I4(\true_hdmi_output.data_island_data_reg[8]_1 ),
        .O(\true_hdmi_output.data_island_data[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'hFFFF55D5)) 
    \true_hdmi_output.data_island_data[8]_i_4 
       (.I0(\counter_reg[4]_0 [2]),
        .I1(\bch[0]_25 [61]),
        .I2(\counter_reg[4]_0 [1]),
        .I3(\counter_reg[4]_0 [0]),
        .I4(\true_hdmi_output.data_island_data[8]_i_9_n_0 ),
        .O(\true_hdmi_output.data_island_data[8]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \true_hdmi_output.data_island_data[8]_i_9 
       (.I0(\bch[0]_25 [63]),
        .I1(\counter_reg[4]_0 [1]),
        .I2(\bch[0]_25 [59]),
        .I3(\counter_reg[4]_0 [0]),
        .I4(\bch[0]_25 [57]),
        .O(\true_hdmi_output.data_island_data[8]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEAAABBBBAAAA)) 
    \true_hdmi_output.data_island_data[9]_i_1 
       (.I0(\true_hdmi_output.data_island_data_reg[9] ),
        .I1(\counter_reg[4]_0 [2]),
        .I2(\counter_reg[4]_0 [4]),
        .I3(\counter_reg[4]_0 [3]),
        .I4(\counter_reg[3]_0 ),
        .I5(\true_hdmi_output.data_island_data[9]_i_2_n_0 ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \true_hdmi_output.data_island_data[9]_i_2 
       (.I0(\bch[1]_26 [63]),
        .I1(\bch[1]_26 [61]),
        .I2(\counter_reg[4]_0 [1]),
        .I3(\bch[1]_26 [59]),
        .I4(\counter_reg[4]_0 [0]),
        .I5(\parity_reg[1][1]_0 [1]),
        .O(\true_hdmi_output.data_island_data[9]_i_2_n_0 ));
  MUXF7 \true_hdmi_output.data_island_data_reg[2]_i_2 
       (.I0(\true_hdmi_output.data_island_data[2]_i_3_n_0 ),
        .I1(\true_hdmi_output.data_island_data[2]_i_4_n_0 ),
        .O(\true_hdmi_output.data_island_data_reg[2]_i_2_n_0 ),
        .S(\counter_reg[4]_0 [2]));
endmodule

(* ORIG_REF_NAME = "packet_picker" *) 
module blockone_videomodule_0_0_packet_picker
   (\parity_reg[1][0] ,
    \counter_reg[3] ,
    \counter_reg[4] ,
    \counter_reg[4]_0 ,
    \counter_reg[1] ,
    \cx_reg[2] ,
    \cycle_time_stamp_reg[7] ,
    \cycle_time_stamp_reg[3] ,
    SR,
    \packet_type_reg[7]_0 ,
    D,
    \packet_type_reg[7]_1 ,
    \counter_reg[3]_0 ,
    \counter_reg[0] ,
    \counter_reg[4]_1 ,
    \counter_reg[3]_1 ,
    \parity_reg[2][0] ,
    \counter_reg[4]_2 ,
    \counter_reg[0]_0 ,
    \counter_reg[4]_3 ,
    \counter_reg[3]_2 ,
    \counter_reg[3]_3 ,
    \counter_reg[2] ,
    \counter_reg[0]_1 ,
    \counter_reg[2]_0 ,
    \audio_sample_word_packet_reg[2][0][23]_0 ,
    \counter_reg[0]_2 ,
    \counter_reg[1]_0 ,
    \packet_type_reg[7]_2 ,
    \packet_type_reg[7]_3 ,
    \counter_reg[4]_4 ,
    \counter_reg[2]_1 ,
    \counter_reg[3]_4 ,
    \counter_reg[0]_3 ,
    \counter_reg[0]_4 ,
    \packet_type_reg[7]_4 ,
    \counter_reg[1]_1 ,
    \counter_reg[1]_2 ,
    \counter_reg[2]_2 ,
    \counter_reg[1]_3 ,
    \counter_reg[1]_4 ,
    \counter_reg[0]_5 ,
    \counter_reg[3]_5 ,
    \counter_reg[1]_5 ,
    \true_hdmi_output.data_island_period_instantaneous ,
    \cx_reg[6] ,
    \cy_reg[4] ,
    \cy_reg[9] ,
    pixelClock,
    audiosampleclk,
    \parity_reg[1][7] ,
    \parity_reg[1][7]_0 ,
    \parity_reg[1][6] ,
    Q,
    out,
    frame_counter10_in,
    \true_hdmi_output.data_island_data_reg[5] ,
    \parity_reg[1][6]_0 ,
    \parity_reg[2][6] ,
    \true_hdmi_output.data_island_data_reg[1] ,
    audioSampleInputLR);
  output [1:0]\parity_reg[1][0] ;
  output \counter_reg[3] ;
  output \counter_reg[4] ;
  output \counter_reg[4]_0 ;
  output \counter_reg[1] ;
  output \cx_reg[2] ;
  output \cycle_time_stamp_reg[7] ;
  output \cycle_time_stamp_reg[3] ;
  output [0:0]SR;
  output [0:0]\packet_type_reg[7]_0 ;
  output [0:0]D;
  output \packet_type_reg[7]_1 ;
  output \counter_reg[3]_0 ;
  output \counter_reg[0] ;
  output \counter_reg[4]_1 ;
  output \counter_reg[3]_1 ;
  output [0:0]\parity_reg[2][0] ;
  output \counter_reg[4]_2 ;
  output \counter_reg[0]_0 ;
  output \counter_reg[4]_3 ;
  output \counter_reg[3]_2 ;
  output \counter_reg[3]_3 ;
  output \counter_reg[2] ;
  output \counter_reg[0]_1 ;
  output \counter_reg[2]_0 ;
  output \audio_sample_word_packet_reg[2][0][23]_0 ;
  output \counter_reg[0]_2 ;
  output \counter_reg[1]_0 ;
  output \packet_type_reg[7]_2 ;
  output \packet_type_reg[7]_3 ;
  output \counter_reg[4]_4 ;
  output \counter_reg[2]_1 ;
  output \counter_reg[3]_4 ;
  output \counter_reg[0]_3 ;
  output \counter_reg[0]_4 ;
  output \packet_type_reg[7]_4 ;
  output \counter_reg[1]_1 ;
  output \counter_reg[1]_2 ;
  output \counter_reg[2]_2 ;
  output \counter_reg[1]_3 ;
  output \counter_reg[1]_4 ;
  output \counter_reg[0]_5 ;
  output \counter_reg[3]_5 ;
  output \counter_reg[1]_5 ;
  output \true_hdmi_output.data_island_period_instantaneous ;
  output \cx_reg[6] ;
  output \cy_reg[4] ;
  output \cy_reg[9] ;
  input pixelClock;
  input audiosampleclk;
  input [1:0]\parity_reg[1][7] ;
  input \parity_reg[1][7]_0 ;
  input [4:0]\parity_reg[1][6] ;
  input [9:0]Q;
  input out;
  input frame_counter10_in;
  input \true_hdmi_output.data_island_data_reg[5] ;
  input \parity_reg[1][6]_0 ;
  input [0:0]\parity_reg[2][6] ;
  input [9:0]\true_hdmi_output.data_island_data_reg[1] ;
  input [31:0]audioSampleInputLR;

  wire [0:0]D;
  wire [9:0]Q;
  wire [0:0]SR;
  wire [31:0]audioSampleInputLR;
  wire audio_clock_regeneration_packet_n_10;
  wire audio_clock_regeneration_packet_n_25;
  wire audio_clock_regeneration_packet_n_26;
  wire audio_clock_regeneration_packet_n_27;
  wire audio_clock_regeneration_packet_n_28;
  wire audio_clock_regeneration_packet_n_7;
  wire audio_clock_regeneration_packet_n_8;
  wire audio_clock_regeneration_packet_n_9;
  wire audio_info_frame_sent;
  wire audio_sample_word_buffer;
  wire \audio_sample_word_buffer[0][0][0][10]_i_3_n_0 ;
  wire \audio_sample_word_buffer[0][0][0][10]_i_4_n_0 ;
  wire \audio_sample_word_buffer[0][0][0][11]_i_3_n_0 ;
  wire \audio_sample_word_buffer[0][0][0][11]_i_4_n_0 ;
  wire \audio_sample_word_buffer[0][0][0][12]_i_3_n_0 ;
  wire \audio_sample_word_buffer[0][0][0][12]_i_4_n_0 ;
  wire \audio_sample_word_buffer[0][0][0][13]_i_3_n_0 ;
  wire \audio_sample_word_buffer[0][0][0][13]_i_4_n_0 ;
  wire \audio_sample_word_buffer[0][0][0][14]_i_3_n_0 ;
  wire \audio_sample_word_buffer[0][0][0][14]_i_4_n_0 ;
  wire \audio_sample_word_buffer[0][0][0][15]_i_3_n_0 ;
  wire \audio_sample_word_buffer[0][0][0][15]_i_4_n_0 ;
  wire \audio_sample_word_buffer[0][0][0][16]_i_3_n_0 ;
  wire \audio_sample_word_buffer[0][0][0][16]_i_4_n_0 ;
  wire \audio_sample_word_buffer[0][0][0][17]_i_3_n_0 ;
  wire \audio_sample_word_buffer[0][0][0][17]_i_4_n_0 ;
  wire \audio_sample_word_buffer[0][0][0][18]_i_3_n_0 ;
  wire \audio_sample_word_buffer[0][0][0][18]_i_4_n_0 ;
  wire \audio_sample_word_buffer[0][0][0][19]_i_3_n_0 ;
  wire \audio_sample_word_buffer[0][0][0][19]_i_4_n_0 ;
  wire \audio_sample_word_buffer[0][0][0][20]_i_3_n_0 ;
  wire \audio_sample_word_buffer[0][0][0][20]_i_4_n_0 ;
  wire \audio_sample_word_buffer[0][0][0][21]_i_3_n_0 ;
  wire \audio_sample_word_buffer[0][0][0][21]_i_4_n_0 ;
  wire \audio_sample_word_buffer[0][0][0][22]_i_3_n_0 ;
  wire \audio_sample_word_buffer[0][0][0][22]_i_4_n_0 ;
  wire \audio_sample_word_buffer[0][0][0][23]_i_3_n_0 ;
  wire \audio_sample_word_buffer[0][0][0][23]_i_4_n_0 ;
  wire \audio_sample_word_buffer[0][0][0][8]_i_3_n_0 ;
  wire \audio_sample_word_buffer[0][0][0][8]_i_4_n_0 ;
  wire \audio_sample_word_buffer[0][0][0][9]_i_3_n_0 ;
  wire \audio_sample_word_buffer[0][0][0][9]_i_4_n_0 ;
  wire \audio_sample_word_buffer[0][0][1][10]_i_3_n_0 ;
  wire \audio_sample_word_buffer[0][0][1][10]_i_4_n_0 ;
  wire \audio_sample_word_buffer[0][0][1][11]_i_3_n_0 ;
  wire \audio_sample_word_buffer[0][0][1][11]_i_4_n_0 ;
  wire \audio_sample_word_buffer[0][0][1][12]_i_3_n_0 ;
  wire \audio_sample_word_buffer[0][0][1][12]_i_4_n_0 ;
  wire \audio_sample_word_buffer[0][0][1][13]_i_3_n_0 ;
  wire \audio_sample_word_buffer[0][0][1][13]_i_4_n_0 ;
  wire \audio_sample_word_buffer[0][0][1][14]_i_3_n_0 ;
  wire \audio_sample_word_buffer[0][0][1][14]_i_4_n_0 ;
  wire \audio_sample_word_buffer[0][0][1][15]_i_3_n_0 ;
  wire \audio_sample_word_buffer[0][0][1][15]_i_4_n_0 ;
  wire \audio_sample_word_buffer[0][0][1][16]_i_3_n_0 ;
  wire \audio_sample_word_buffer[0][0][1][16]_i_4_n_0 ;
  wire \audio_sample_word_buffer[0][0][1][17]_i_3_n_0 ;
  wire \audio_sample_word_buffer[0][0][1][17]_i_4_n_0 ;
  wire \audio_sample_word_buffer[0][0][1][18]_i_3_n_0 ;
  wire \audio_sample_word_buffer[0][0][1][18]_i_4_n_0 ;
  wire \audio_sample_word_buffer[0][0][1][19]_i_3_n_0 ;
  wire \audio_sample_word_buffer[0][0][1][19]_i_4_n_0 ;
  wire \audio_sample_word_buffer[0][0][1][20]_i_3_n_0 ;
  wire \audio_sample_word_buffer[0][0][1][20]_i_4_n_0 ;
  wire \audio_sample_word_buffer[0][0][1][21]_i_3_n_0 ;
  wire \audio_sample_word_buffer[0][0][1][21]_i_4_n_0 ;
  wire \audio_sample_word_buffer[0][0][1][22]_i_3_n_0 ;
  wire \audio_sample_word_buffer[0][0][1][22]_i_4_n_0 ;
  wire \audio_sample_word_buffer[0][0][1][23]_i_1_n_0 ;
  wire \audio_sample_word_buffer[0][0][1][23]_i_4_n_0 ;
  wire \audio_sample_word_buffer[0][0][1][23]_i_5_n_0 ;
  wire \audio_sample_word_buffer[0][0][1][8]_i_3_n_0 ;
  wire \audio_sample_word_buffer[0][0][1][8]_i_4_n_0 ;
  wire \audio_sample_word_buffer[0][0][1][9]_i_3_n_0 ;
  wire \audio_sample_word_buffer[0][0][1][9]_i_4_n_0 ;
  wire \audio_sample_word_buffer[0][1][1][23]_i_1_n_0 ;
  wire \audio_sample_word_buffer[0][2][1][23]_i_1_n_0 ;
  wire \audio_sample_word_buffer[0][3][1][23]_i_1_n_0 ;
  wire \audio_sample_word_buffer[1][0][1][23]_i_1_n_0 ;
  wire \audio_sample_word_buffer[1][1][1][23]_i_1_n_0 ;
  wire \audio_sample_word_buffer[1][2][1][23]_i_1_n_0 ;
  wire \audio_sample_word_buffer_reg[0][0][0][10]_i_2_n_0 ;
  wire \audio_sample_word_buffer_reg[0][0][0][11]_i_2_n_0 ;
  wire \audio_sample_word_buffer_reg[0][0][0][12]_i_2_n_0 ;
  wire \audio_sample_word_buffer_reg[0][0][0][13]_i_2_n_0 ;
  wire \audio_sample_word_buffer_reg[0][0][0][14]_i_2_n_0 ;
  wire \audio_sample_word_buffer_reg[0][0][0][15]_i_2_n_0 ;
  wire \audio_sample_word_buffer_reg[0][0][0][16]_i_2_n_0 ;
  wire \audio_sample_word_buffer_reg[0][0][0][17]_i_2_n_0 ;
  wire \audio_sample_word_buffer_reg[0][0][0][18]_i_2_n_0 ;
  wire \audio_sample_word_buffer_reg[0][0][0][19]_i_2_n_0 ;
  wire \audio_sample_word_buffer_reg[0][0][0][20]_i_2_n_0 ;
  wire \audio_sample_word_buffer_reg[0][0][0][21]_i_2_n_0 ;
  wire \audio_sample_word_buffer_reg[0][0][0][22]_i_2_n_0 ;
  wire \audio_sample_word_buffer_reg[0][0][0][23]_i_2_n_0 ;
  wire \audio_sample_word_buffer_reg[0][0][0][8]_i_2_n_0 ;
  wire \audio_sample_word_buffer_reg[0][0][0][9]_i_2_n_0 ;
  wire \audio_sample_word_buffer_reg[0][0][1][10]_i_2_n_0 ;
  wire \audio_sample_word_buffer_reg[0][0][1][11]_i_2_n_0 ;
  wire \audio_sample_word_buffer_reg[0][0][1][12]_i_2_n_0 ;
  wire \audio_sample_word_buffer_reg[0][0][1][13]_i_2_n_0 ;
  wire \audio_sample_word_buffer_reg[0][0][1][14]_i_2_n_0 ;
  wire \audio_sample_word_buffer_reg[0][0][1][15]_i_2_n_0 ;
  wire \audio_sample_word_buffer_reg[0][0][1][16]_i_2_n_0 ;
  wire \audio_sample_word_buffer_reg[0][0][1][17]_i_2_n_0 ;
  wire \audio_sample_word_buffer_reg[0][0][1][18]_i_2_n_0 ;
  wire \audio_sample_word_buffer_reg[0][0][1][19]_i_2_n_0 ;
  wire \audio_sample_word_buffer_reg[0][0][1][20]_i_2_n_0 ;
  wire \audio_sample_word_buffer_reg[0][0][1][21]_i_2_n_0 ;
  wire \audio_sample_word_buffer_reg[0][0][1][22]_i_2_n_0 ;
  wire \audio_sample_word_buffer_reg[0][0][1][23]_i_3_n_0 ;
  wire \audio_sample_word_buffer_reg[0][0][1][8]_i_2_n_0 ;
  wire \audio_sample_word_buffer_reg[0][0][1][9]_i_2_n_0 ;
  wire [23:8]\audio_sample_word_buffer_reg[0][0][1]_6 ;
  wire [23:8]\audio_sample_word_buffer_reg[0][1][1]_8 ;
  wire [23:8]\audio_sample_word_buffer_reg[0][2][1]_10 ;
  wire [23:8]\audio_sample_word_buffer_reg[0][3][0]_20 ;
  wire [23:8]\audio_sample_word_buffer_reg[0][3][1]_14 ;
  wire [23:8]\audio_sample_word_buffer_reg[1][0][0]_15 ;
  wire [23:8]\audio_sample_word_buffer_reg[1][0][1]_7 ;
  wire [23:8]\audio_sample_word_buffer_reg[1][1][0]_16 ;
  wire [23:8]\audio_sample_word_buffer_reg[1][1][1]_9 ;
  wire [23:8]\audio_sample_word_buffer_reg[1][2][0]_17 ;
  wire [23:8]\audio_sample_word_buffer_reg[1][2][1]_11 ;
  wire [23:8]\audio_sample_word_buffer_reg[1][3][0]_18 ;
  wire [23:8]\audio_sample_word_buffer_reg[1][3][1]_12 ;
  wire \audio_sample_word_buffer_reg_n_0_[0][0][0][10] ;
  wire \audio_sample_word_buffer_reg_n_0_[0][0][0][11] ;
  wire \audio_sample_word_buffer_reg_n_0_[0][0][0][12] ;
  wire \audio_sample_word_buffer_reg_n_0_[0][0][0][13] ;
  wire \audio_sample_word_buffer_reg_n_0_[0][0][0][14] ;
  wire \audio_sample_word_buffer_reg_n_0_[0][0][0][15] ;
  wire \audio_sample_word_buffer_reg_n_0_[0][0][0][16] ;
  wire \audio_sample_word_buffer_reg_n_0_[0][0][0][17] ;
  wire \audio_sample_word_buffer_reg_n_0_[0][0][0][18] ;
  wire \audio_sample_word_buffer_reg_n_0_[0][0][0][19] ;
  wire \audio_sample_word_buffer_reg_n_0_[0][0][0][20] ;
  wire \audio_sample_word_buffer_reg_n_0_[0][0][0][21] ;
  wire \audio_sample_word_buffer_reg_n_0_[0][0][0][22] ;
  wire \audio_sample_word_buffer_reg_n_0_[0][0][0][23] ;
  wire \audio_sample_word_buffer_reg_n_0_[0][0][0][8] ;
  wire \audio_sample_word_buffer_reg_n_0_[0][0][0][9] ;
  wire \audio_sample_word_buffer_reg_n_0_[0][1][0][10] ;
  wire \audio_sample_word_buffer_reg_n_0_[0][1][0][11] ;
  wire \audio_sample_word_buffer_reg_n_0_[0][1][0][12] ;
  wire \audio_sample_word_buffer_reg_n_0_[0][1][0][13] ;
  wire \audio_sample_word_buffer_reg_n_0_[0][1][0][14] ;
  wire \audio_sample_word_buffer_reg_n_0_[0][1][0][15] ;
  wire \audio_sample_word_buffer_reg_n_0_[0][1][0][16] ;
  wire \audio_sample_word_buffer_reg_n_0_[0][1][0][17] ;
  wire \audio_sample_word_buffer_reg_n_0_[0][1][0][18] ;
  wire \audio_sample_word_buffer_reg_n_0_[0][1][0][19] ;
  wire \audio_sample_word_buffer_reg_n_0_[0][1][0][20] ;
  wire \audio_sample_word_buffer_reg_n_0_[0][1][0][21] ;
  wire \audio_sample_word_buffer_reg_n_0_[0][1][0][22] ;
  wire \audio_sample_word_buffer_reg_n_0_[0][1][0][23] ;
  wire \audio_sample_word_buffer_reg_n_0_[0][1][0][8] ;
  wire \audio_sample_word_buffer_reg_n_0_[0][1][0][9] ;
  wire \audio_sample_word_buffer_reg_n_0_[0][2][0][10] ;
  wire \audio_sample_word_buffer_reg_n_0_[0][2][0][11] ;
  wire \audio_sample_word_buffer_reg_n_0_[0][2][0][12] ;
  wire \audio_sample_word_buffer_reg_n_0_[0][2][0][13] ;
  wire \audio_sample_word_buffer_reg_n_0_[0][2][0][14] ;
  wire \audio_sample_word_buffer_reg_n_0_[0][2][0][15] ;
  wire \audio_sample_word_buffer_reg_n_0_[0][2][0][16] ;
  wire \audio_sample_word_buffer_reg_n_0_[0][2][0][17] ;
  wire \audio_sample_word_buffer_reg_n_0_[0][2][0][18] ;
  wire \audio_sample_word_buffer_reg_n_0_[0][2][0][19] ;
  wire \audio_sample_word_buffer_reg_n_0_[0][2][0][20] ;
  wire \audio_sample_word_buffer_reg_n_0_[0][2][0][21] ;
  wire \audio_sample_word_buffer_reg_n_0_[0][2][0][22] ;
  wire \audio_sample_word_buffer_reg_n_0_[0][2][0][23] ;
  wire \audio_sample_word_buffer_reg_n_0_[0][2][0][8] ;
  wire \audio_sample_word_buffer_reg_n_0_[0][2][0][9] ;
  wire audio_sample_word_packet;
  wire \audio_sample_word_packet[0][0][10]_i_1_n_0 ;
  wire \audio_sample_word_packet[0][0][11]_i_1_n_0 ;
  wire \audio_sample_word_packet[0][0][12]_i_1_n_0 ;
  wire \audio_sample_word_packet[0][0][13]_i_1_n_0 ;
  wire \audio_sample_word_packet[0][0][14]_i_1_n_0 ;
  wire \audio_sample_word_packet[0][0][15]_i_1_n_0 ;
  wire \audio_sample_word_packet[0][0][16]_i_1_n_0 ;
  wire \audio_sample_word_packet[0][0][17]_i_1_n_0 ;
  wire \audio_sample_word_packet[0][0][18]_i_1_n_0 ;
  wire \audio_sample_word_packet[0][0][19]_i_1_n_0 ;
  wire \audio_sample_word_packet[0][0][20]_i_1_n_0 ;
  wire \audio_sample_word_packet[0][0][21]_i_1_n_0 ;
  wire \audio_sample_word_packet[0][0][22]_i_1_n_0 ;
  wire \audio_sample_word_packet[0][0][23]_i_1_n_0 ;
  wire \audio_sample_word_packet[0][0][8]_i_1_n_0 ;
  wire \audio_sample_word_packet[0][0][9]_i_1_n_0 ;
  wire \audio_sample_word_packet[0][1][10]_i_1_n_0 ;
  wire \audio_sample_word_packet[0][1][11]_i_1_n_0 ;
  wire \audio_sample_word_packet[0][1][12]_i_1_n_0 ;
  wire \audio_sample_word_packet[0][1][13]_i_1_n_0 ;
  wire \audio_sample_word_packet[0][1][14]_i_1_n_0 ;
  wire \audio_sample_word_packet[0][1][15]_i_1_n_0 ;
  wire \audio_sample_word_packet[0][1][16]_i_1_n_0 ;
  wire \audio_sample_word_packet[0][1][17]_i_1_n_0 ;
  wire \audio_sample_word_packet[0][1][18]_i_1_n_0 ;
  wire \audio_sample_word_packet[0][1][19]_i_1_n_0 ;
  wire \audio_sample_word_packet[0][1][20]_i_1_n_0 ;
  wire \audio_sample_word_packet[0][1][21]_i_1_n_0 ;
  wire \audio_sample_word_packet[0][1][22]_i_1_n_0 ;
  wire \audio_sample_word_packet[0][1][23]_i_1_n_0 ;
  wire \audio_sample_word_packet[0][1][8]_i_1_n_0 ;
  wire \audio_sample_word_packet[0][1][9]_i_1_n_0 ;
  wire \audio_sample_word_packet[1][0][10]_i_1_n_0 ;
  wire \audio_sample_word_packet[1][0][11]_i_1_n_0 ;
  wire \audio_sample_word_packet[1][0][12]_i_1_n_0 ;
  wire \audio_sample_word_packet[1][0][13]_i_1_n_0 ;
  wire \audio_sample_word_packet[1][0][14]_i_1_n_0 ;
  wire \audio_sample_word_packet[1][0][15]_i_1_n_0 ;
  wire \audio_sample_word_packet[1][0][16]_i_1_n_0 ;
  wire \audio_sample_word_packet[1][0][17]_i_1_n_0 ;
  wire \audio_sample_word_packet[1][0][18]_i_1_n_0 ;
  wire \audio_sample_word_packet[1][0][19]_i_1_n_0 ;
  wire \audio_sample_word_packet[1][0][20]_i_1_n_0 ;
  wire \audio_sample_word_packet[1][0][21]_i_1_n_0 ;
  wire \audio_sample_word_packet[1][0][22]_i_1_n_0 ;
  wire \audio_sample_word_packet[1][0][23]_i_1_n_0 ;
  wire \audio_sample_word_packet[1][0][8]_i_1_n_0 ;
  wire \audio_sample_word_packet[1][0][9]_i_1_n_0 ;
  wire \audio_sample_word_packet[1][1][10]_i_1_n_0 ;
  wire \audio_sample_word_packet[1][1][11]_i_1_n_0 ;
  wire \audio_sample_word_packet[1][1][12]_i_1_n_0 ;
  wire \audio_sample_word_packet[1][1][13]_i_1_n_0 ;
  wire \audio_sample_word_packet[1][1][14]_i_1_n_0 ;
  wire \audio_sample_word_packet[1][1][15]_i_1_n_0 ;
  wire \audio_sample_word_packet[1][1][16]_i_1_n_0 ;
  wire \audio_sample_word_packet[1][1][17]_i_1_n_0 ;
  wire \audio_sample_word_packet[1][1][18]_i_1_n_0 ;
  wire \audio_sample_word_packet[1][1][19]_i_1_n_0 ;
  wire \audio_sample_word_packet[1][1][20]_i_1_n_0 ;
  wire \audio_sample_word_packet[1][1][21]_i_1_n_0 ;
  wire \audio_sample_word_packet[1][1][22]_i_1_n_0 ;
  wire \audio_sample_word_packet[1][1][23]_i_1_n_0 ;
  wire \audio_sample_word_packet[1][1][8]_i_1_n_0 ;
  wire \audio_sample_word_packet[1][1][9]_i_1_n_0 ;
  wire \audio_sample_word_packet[2][0][10]_i_1_n_0 ;
  wire \audio_sample_word_packet[2][0][11]_i_1_n_0 ;
  wire \audio_sample_word_packet[2][0][12]_i_1_n_0 ;
  wire \audio_sample_word_packet[2][0][13]_i_1_n_0 ;
  wire \audio_sample_word_packet[2][0][14]_i_1_n_0 ;
  wire \audio_sample_word_packet[2][0][15]_i_1_n_0 ;
  wire \audio_sample_word_packet[2][0][16]_i_1_n_0 ;
  wire \audio_sample_word_packet[2][0][17]_i_1_n_0 ;
  wire \audio_sample_word_packet[2][0][18]_i_1_n_0 ;
  wire \audio_sample_word_packet[2][0][19]_i_1_n_0 ;
  wire \audio_sample_word_packet[2][0][20]_i_1_n_0 ;
  wire \audio_sample_word_packet[2][0][21]_i_1_n_0 ;
  wire \audio_sample_word_packet[2][0][22]_i_1_n_0 ;
  wire \audio_sample_word_packet[2][0][23]_i_1_n_0 ;
  wire \audio_sample_word_packet[2][0][8]_i_1_n_0 ;
  wire \audio_sample_word_packet[2][0][9]_i_1_n_0 ;
  wire \audio_sample_word_packet[2][1][10]_i_1_n_0 ;
  wire \audio_sample_word_packet[2][1][11]_i_1_n_0 ;
  wire \audio_sample_word_packet[2][1][12]_i_1_n_0 ;
  wire \audio_sample_word_packet[2][1][13]_i_1_n_0 ;
  wire \audio_sample_word_packet[2][1][14]_i_1_n_0 ;
  wire \audio_sample_word_packet[2][1][15]_i_1_n_0 ;
  wire \audio_sample_word_packet[2][1][16]_i_1_n_0 ;
  wire \audio_sample_word_packet[2][1][17]_i_1_n_0 ;
  wire \audio_sample_word_packet[2][1][18]_i_1_n_0 ;
  wire \audio_sample_word_packet[2][1][19]_i_1_n_0 ;
  wire \audio_sample_word_packet[2][1][20]_i_1_n_0 ;
  wire \audio_sample_word_packet[2][1][21]_i_1_n_0 ;
  wire \audio_sample_word_packet[2][1][22]_i_1_n_0 ;
  wire \audio_sample_word_packet[2][1][23]_i_1_n_0 ;
  wire \audio_sample_word_packet[2][1][8]_i_1_n_0 ;
  wire \audio_sample_word_packet[2][1][9]_i_1_n_0 ;
  wire \audio_sample_word_packet[3][0][10]_i_1_n_0 ;
  wire \audio_sample_word_packet[3][0][11]_i_1_n_0 ;
  wire \audio_sample_word_packet[3][0][12]_i_1_n_0 ;
  wire \audio_sample_word_packet[3][0][13]_i_1_n_0 ;
  wire \audio_sample_word_packet[3][0][14]_i_1_n_0 ;
  wire \audio_sample_word_packet[3][0][15]_i_1_n_0 ;
  wire \audio_sample_word_packet[3][0][16]_i_1_n_0 ;
  wire \audio_sample_word_packet[3][0][17]_i_1_n_0 ;
  wire \audio_sample_word_packet[3][0][18]_i_1_n_0 ;
  wire \audio_sample_word_packet[3][0][19]_i_1_n_0 ;
  wire \audio_sample_word_packet[3][0][20]_i_1_n_0 ;
  wire \audio_sample_word_packet[3][0][21]_i_1_n_0 ;
  wire \audio_sample_word_packet[3][0][22]_i_1_n_0 ;
  wire \audio_sample_word_packet[3][0][23]_i_1_n_0 ;
  wire \audio_sample_word_packet[3][0][8]_i_1_n_0 ;
  wire \audio_sample_word_packet[3][0][9]_i_1_n_0 ;
  wire \audio_sample_word_packet[3][1][10]_i_1_n_0 ;
  wire \audio_sample_word_packet[3][1][11]_i_1_n_0 ;
  wire \audio_sample_word_packet[3][1][12]_i_1_n_0 ;
  wire \audio_sample_word_packet[3][1][13]_i_1_n_0 ;
  wire \audio_sample_word_packet[3][1][14]_i_1_n_0 ;
  wire \audio_sample_word_packet[3][1][15]_i_1_n_0 ;
  wire \audio_sample_word_packet[3][1][16]_i_1_n_0 ;
  wire \audio_sample_word_packet[3][1][17]_i_1_n_0 ;
  wire \audio_sample_word_packet[3][1][18]_i_1_n_0 ;
  wire \audio_sample_word_packet[3][1][19]_i_1_n_0 ;
  wire \audio_sample_word_packet[3][1][20]_i_1_n_0 ;
  wire \audio_sample_word_packet[3][1][21]_i_1_n_0 ;
  wire \audio_sample_word_packet[3][1][22]_i_1_n_0 ;
  wire \audio_sample_word_packet[3][1][23]_i_2_n_0 ;
  wire \audio_sample_word_packet[3][1][8]_i_1_n_0 ;
  wire \audio_sample_word_packet[3][1][9]_i_1_n_0 ;
  wire \audio_sample_word_packet_reg[2][0][23]_0 ;
  wire \audio_sample_word_packet_reg_n_0_[0][0][10] ;
  wire \audio_sample_word_packet_reg_n_0_[0][0][11] ;
  wire \audio_sample_word_packet_reg_n_0_[0][0][12] ;
  wire \audio_sample_word_packet_reg_n_0_[0][0][13] ;
  wire \audio_sample_word_packet_reg_n_0_[0][0][14] ;
  wire \audio_sample_word_packet_reg_n_0_[0][0][15] ;
  wire \audio_sample_word_packet_reg_n_0_[0][0][16] ;
  wire \audio_sample_word_packet_reg_n_0_[0][0][17] ;
  wire \audio_sample_word_packet_reg_n_0_[0][0][18] ;
  wire \audio_sample_word_packet_reg_n_0_[0][0][19] ;
  wire \audio_sample_word_packet_reg_n_0_[0][0][20] ;
  wire \audio_sample_word_packet_reg_n_0_[0][0][21] ;
  wire \audio_sample_word_packet_reg_n_0_[0][0][22] ;
  wire \audio_sample_word_packet_reg_n_0_[0][0][23] ;
  wire \audio_sample_word_packet_reg_n_0_[0][0][8] ;
  wire \audio_sample_word_packet_reg_n_0_[0][0][9] ;
  wire \audio_sample_word_packet_reg_n_0_[0][1][10] ;
  wire \audio_sample_word_packet_reg_n_0_[0][1][11] ;
  wire \audio_sample_word_packet_reg_n_0_[0][1][12] ;
  wire \audio_sample_word_packet_reg_n_0_[0][1][13] ;
  wire \audio_sample_word_packet_reg_n_0_[0][1][14] ;
  wire \audio_sample_word_packet_reg_n_0_[0][1][15] ;
  wire \audio_sample_word_packet_reg_n_0_[0][1][16] ;
  wire \audio_sample_word_packet_reg_n_0_[0][1][17] ;
  wire \audio_sample_word_packet_reg_n_0_[0][1][18] ;
  wire \audio_sample_word_packet_reg_n_0_[0][1][19] ;
  wire \audio_sample_word_packet_reg_n_0_[0][1][20] ;
  wire \audio_sample_word_packet_reg_n_0_[0][1][21] ;
  wire \audio_sample_word_packet_reg_n_0_[0][1][22] ;
  wire \audio_sample_word_packet_reg_n_0_[0][1][23] ;
  wire \audio_sample_word_packet_reg_n_0_[0][1][8] ;
  wire \audio_sample_word_packet_reg_n_0_[0][1][9] ;
  wire audio_sample_word_transfer_control;
  wire audio_sample_word_transfer_control_i_1_n_0;
  wire \audio_sample_word_transfer_control_synchronizer_chain_reg_n_0_[0] ;
  wire [15:0]\audio_sample_word_transfer_mux[0]_22 ;
  wire [15:0]\audio_sample_word_transfer_mux[1]_21 ;
  wire [15:0]\audio_sample_word_transfer_reg[0]_19 ;
  wire [15:0]\audio_sample_word_transfer_reg[1]_13 ;
  wire audiosampleclk;
  wire auxiliary_video_information_info_frame_sent;
  wire \counter_reg[0] ;
  wire \counter_reg[0]_0 ;
  wire \counter_reg[0]_1 ;
  wire \counter_reg[0]_2 ;
  wire \counter_reg[0]_3 ;
  wire \counter_reg[0]_4 ;
  wire \counter_reg[0]_5 ;
  wire \counter_reg[1] ;
  wire \counter_reg[1]_0 ;
  wire \counter_reg[1]_1 ;
  wire \counter_reg[1]_2 ;
  wire \counter_reg[1]_3 ;
  wire \counter_reg[1]_4 ;
  wire \counter_reg[1]_5 ;
  wire \counter_reg[2] ;
  wire \counter_reg[2]_0 ;
  wire \counter_reg[2]_1 ;
  wire \counter_reg[2]_2 ;
  wire \counter_reg[3] ;
  wire \counter_reg[3]_0 ;
  wire \counter_reg[3]_1 ;
  wire \counter_reg[3]_2 ;
  wire \counter_reg[3]_3 ;
  wire \counter_reg[3]_4 ;
  wire \counter_reg[3]_5 ;
  wire \counter_reg[4] ;
  wire \counter_reg[4]_0 ;
  wire \counter_reg[4]_1 ;
  wire \counter_reg[4]_2 ;
  wire \counter_reg[4]_3 ;
  wire \counter_reg[4]_4 ;
  wire \cx_reg[2] ;
  wire \cx_reg[6] ;
  wire \cy_reg[4] ;
  wire \cy_reg[9] ;
  wire \cycle_time_stamp_reg[3] ;
  wire \cycle_time_stamp_reg[7] ;
  wire frame_counter10_in;
  wire [5:2]frame_counter2;
  wire \frame_counter[7]_i_2_n_0 ;
  wire [7:2]frame_counter_reg;
  wire last_clk_audio_counter_wrap_reg_n_0;
  wire out;
  wire p_0_in;
  wire [7:6]p_0_in__0;
  wire [1:0]packet_type;
  wire \packet_type[2]_i_3_n_0 ;
  wire \packet_type[2]_i_4_n_0 ;
  wire [0:0]\packet_type_reg[7]_0 ;
  wire \packet_type_reg[7]_1 ;
  wire \packet_type_reg[7]_2 ;
  wire \packet_type_reg[7]_3 ;
  wire \packet_type_reg[7]_4 ;
  wire \packet_type_reg_n_0_[0] ;
  wire \packet_type_reg_n_0_[1] ;
  wire \packet_type_reg_n_0_[2] ;
  wire \packet_type_reg_n_0_[7] ;
  wire \parity[0][7]_i_10_n_0 ;
  wire \parity[0][7]_i_11_n_0 ;
  wire \parity[0][7]_i_12_n_0 ;
  wire \parity[0][7]_i_15_n_0 ;
  wire \parity[0][7]_i_16_n_0 ;
  wire \parity[0][7]_i_20_n_0 ;
  wire \parity[0][7]_i_21_n_0 ;
  wire \parity[0][7]_i_22_n_0 ;
  wire \parity[0][7]_i_24_n_0 ;
  wire \parity[0][7]_i_29_n_0 ;
  wire \parity[0][7]_i_48_n_0 ;
  wire \parity[0][7]_i_51_n_0 ;
  wire \parity[0][7]_i_9_n_0 ;
  wire \parity[1][6]_i_2_n_0 ;
  wire \parity[1][6]_i_4_n_0 ;
  wire \parity[1][6]_i_5_n_0 ;
  wire \parity[1][6]_i_6_n_0 ;
  wire \parity[1][6]_i_7_n_0 ;
  wire \parity[1][6]_i_9_n_0 ;
  wire \parity[1][7]_i_10_n_0 ;
  wire \parity[1][7]_i_13_n_0 ;
  wire \parity[1][7]_i_22_n_0 ;
  wire \parity[1][7]_i_23_n_0 ;
  wire \parity[1][7]_i_35_n_0 ;
  wire \parity[1][7]_i_36_n_0 ;
  wire \parity[1][7]_i_43_n_0 ;
  wire \parity[1][7]_i_44_n_0 ;
  wire \parity[1][7]_i_45_n_0 ;
  wire \parity[1][7]_i_46_n_0 ;
  wire \parity[1][7]_i_50_n_0 ;
  wire \parity[1][7]_i_51_n_0 ;
  wire \parity[1][7]_i_52_n_0 ;
  wire \parity[1][7]_i_53_n_0 ;
  wire \parity[1][7]_i_54_n_0 ;
  wire \parity[1][7]_i_55_n_0 ;
  wire \parity[1][7]_i_56_n_0 ;
  wire \parity[1][7]_i_57_n_0 ;
  wire \parity[1][7]_i_58_n_0 ;
  wire \parity[1][7]_i_6_n_0 ;
  wire \parity[2][7]_i_18_n_0 ;
  wire \parity[2][7]_i_19_n_0 ;
  wire \parity[2][7]_i_24_n_0 ;
  wire \parity[2][7]_i_25_n_0 ;
  wire \parity[2][7]_i_28_n_0 ;
  wire \parity[2][7]_i_29_n_0 ;
  wire \parity[2][7]_i_30_n_0 ;
  wire \parity[2][7]_i_31_n_0 ;
  wire \parity[2][7]_i_32_n_0 ;
  wire \parity[2][7]_i_33_n_0 ;
  wire \parity[2][7]_i_37_n_0 ;
  wire \parity[2][7]_i_38_n_0 ;
  wire \parity[2][7]_i_39_n_0 ;
  wire \parity[2][7]_i_40_n_0 ;
  wire \parity[2][7]_i_41_n_0 ;
  wire \parity[2][7]_i_42_n_0 ;
  wire \parity[2][7]_i_43_n_0 ;
  wire \parity[2][7]_i_44_n_0 ;
  wire \parity[3][6]_i_12_n_0 ;
  wire \parity[3][6]_i_13_n_0 ;
  wire \parity[3][6]_i_14_n_0 ;
  wire \parity[3][6]_i_15_n_0 ;
  wire \parity[3][7]_i_13_n_0 ;
  wire \parity[3][7]_i_14_n_0 ;
  wire \parity[3][7]_i_18_n_0 ;
  wire \parity[3][7]_i_19_n_0 ;
  wire \parity[3][7]_i_20_n_0 ;
  wire \parity[3][7]_i_21_n_0 ;
  wire \parity[3][7]_i_22_n_0 ;
  wire \parity[3][7]_i_23_n_0 ;
  wire \parity[3][7]_i_26_n_0 ;
  wire \parity[3][7]_i_27_n_0 ;
  wire \parity[3][7]_i_29_n_0 ;
  wire \parity[3][7]_i_30_n_0 ;
  wire \parity[3][7]_i_31_n_0 ;
  wire \parity[3][7]_i_32_n_0 ;
  wire \parity[4][7]_i_7_n_0 ;
  wire \parity[4][7]_i_9_n_0 ;
  wire \parity_reg[0][7]_i_19_n_0 ;
  wire \parity_reg[0][7]_i_23_n_0 ;
  wire \parity_reg[0][7]_i_36_n_0 ;
  wire \parity_reg[0][7]_i_37_n_0 ;
  wire [1:0]\parity_reg[1][0] ;
  wire [4:0]\parity_reg[1][6] ;
  wire \parity_reg[1][6]_0 ;
  wire [1:0]\parity_reg[1][7] ;
  wire \parity_reg[1][7]_0 ;
  wire \parity_reg[1][7]_i_11_n_0 ;
  wire \parity_reg[1][7]_i_16_n_0 ;
  wire \parity_reg[1][7]_i_24_n_0 ;
  wire \parity_reg[1][7]_i_26_n_0 ;
  wire \parity_reg[1][7]_i_27_n_0 ;
  wire \parity_reg[1][7]_i_32_n_0 ;
  wire \parity_reg[1][7]_i_9_n_0 ;
  wire [0:0]\parity_reg[2][0] ;
  wire [0:0]\parity_reg[2][6] ;
  wire \parity_reg[2][7]_i_12_n_0 ;
  wire \parity_reg[2][7]_i_14_n_0 ;
  wire \parity_reg[2][7]_i_15_n_0 ;
  wire \parity_reg[2][7]_i_16_n_0 ;
  wire \parity_reg[2][7]_i_17_n_0 ;
  wire \parity_reg[2][7]_i_6_n_0 ;
  wire \parity_reg[3][6]_i_6_n_0 ;
  wire \parity_reg[3][6]_i_7_n_0 ;
  wire \parity_reg[3][6]_i_8_n_0 ;
  wire pixelClock;
  wire sample_buffer_current_i_1_n_0;
  wire sample_buffer_current_reg_n_0;
  wire sample_buffer_ready;
  wire sample_buffer_ready_i_1_n_0;
  wire sample_buffer_used_reg_n_0;
  wire [1:0]samples_remaining;
  wire \samples_remaining[0]_i_1_n_0 ;
  wire \samples_remaining[1]_i_1_n_0 ;
  wire source_product_description_info_frame_sent;
  wire [55:50]\subs[2][0]_2 ;
  wire [55:8]\subs[2][1]_4 ;
  wire [55:8]\subs[2][2]_3 ;
  wire [55:8]\subs[2][3]_1 ;
  wire \true_hdmi_output.data_island_data[4]_i_6_n_0 ;
  wire \true_hdmi_output.data_island_data[4]_i_7_n_0 ;
  wire \true_hdmi_output.data_island_data[6]_i_6_n_0 ;
  wire \true_hdmi_output.data_island_data[6]_i_8_n_0 ;
  wire \true_hdmi_output.data_island_data[6]_i_9_n_0 ;
  wire \true_hdmi_output.data_island_data[8]_i_13_n_0 ;
  wire \true_hdmi_output.data_island_data[8]_i_14_n_0 ;
  wire \true_hdmi_output.data_island_data[8]_i_17_n_0 ;
  wire \true_hdmi_output.data_island_data[8]_i_21_n_0 ;
  wire \true_hdmi_output.data_island_data[8]_i_24_n_0 ;
  wire \true_hdmi_output.data_island_data[8]_i_25_n_0 ;
  wire \true_hdmi_output.data_island_data[8]_i_26_n_0 ;
  wire \true_hdmi_output.data_island_data[8]_i_27_n_0 ;
  wire \true_hdmi_output.data_island_data[8]_i_28_n_0 ;
  wire \true_hdmi_output.data_island_data[8]_i_29_n_0 ;
  wire \true_hdmi_output.data_island_data[8]_i_6_n_0 ;
  wire [9:0]\true_hdmi_output.data_island_data_reg[1] ;
  wire \true_hdmi_output.data_island_data_reg[5] ;
  wire \true_hdmi_output.data_island_period_instantaneous ;
  wire [19:19]\true_hdmi_output.header ;
  wire \true_hdmi_output.packet_enable ;
  wire [46:8]\true_hdmi_output.sub[0]_23 ;
  wire [46:32]\true_hdmi_output.sub[1]_0 ;
  wire [35:35]\true_hdmi_output.sub[3]_24 ;

  blockone_videomodule_0_0_audio_clock_regeneration_packet audio_clock_regeneration_packet
       (.D(D),
        .E(audio_sample_word_packet),
        .Q(\subs[2][3]_1 [22:16]),
        .audio_info_frame_sent(audio_info_frame_sent),
        .audio_info_frame_sent_reg(audio_clock_regeneration_packet_n_10),
        .\audio_sample_word_packet_reg[2][0][23] (\audio_sample_word_packet_reg[2][0][23]_0 ),
        .audiosampleclk(audiosampleclk),
        .auxiliary_video_information_info_frame_sent(auxiliary_video_information_info_frame_sent),
        .\counter_reg[0] (\counter_reg[0]_2 ),
        .\counter_reg[1] (\counter_reg[1]_2 ),
        .\counter_reg[3] (\counter_reg[3] ),
        .\counter_reg[3]_0 (\counter_reg[3]_0 ),
        .\counter_reg[3]_1 (\counter_reg[3]_1 ),
        .\counter_reg[3]_2 (\counter_reg[3]_2 ),
        .\counter_reg[3]_3 (\counter_reg[3]_3 ),
        .\counter_reg[3]_4 (\counter_reg[3]_4 ),
        .\counter_reg[4] (\counter_reg[4]_0 ),
        .\counter_reg[4]_0 (\counter_reg[4]_1 ),
        .\counter_reg[4]_1 (\counter_reg[4]_2 ),
        .\counter_reg[4]_2 (\counter_reg[4]_3 ),
        .\counter_reg[4]_3 (\counter_reg[4]_4 ),
        .\cycle_time_stamp_reg[3]_0 (\cycle_time_stamp_reg[3] ),
        .\cycle_time_stamp_reg[7]_0 (\cycle_time_stamp_reg[7] ),
        .last_clk_audio_counter_wrap_reg(audio_clock_regeneration_packet_n_7),
        .packet_type(packet_type),
        .\packet_type_reg[0] (audio_clock_regeneration_packet_n_28),
        .\packet_type_reg[0]_0 (\packet_type_reg_n_0_[0] ),
        .\packet_type_reg[1] (audio_clock_regeneration_packet_n_27),
        .\packet_type_reg[1]_0 (last_clk_audio_counter_wrap_reg_n_0),
        .\packet_type_reg[1]_1 (\packet_type_reg_n_0_[1] ),
        .\packet_type_reg[2] (audio_clock_regeneration_packet_n_26),
        .\packet_type_reg[2]_0 (\packet_type[2]_i_3_n_0 ),
        .\packet_type_reg[2]_1 (\packet_type_reg_n_0_[2] ),
        .\packet_type_reg[7] (audio_clock_regeneration_packet_n_25),
        .\packet_type_reg[7]_0 (\packet_type_reg_n_0_[7] ),
        .\parity[0][7]_i_13_0 (\true_hdmi_output.data_island_data[4]_i_7_n_0 ),
        .\parity[0][7]_i_13_1 (\true_hdmi_output.data_island_data[8]_i_17_n_0 ),
        .\parity[0][7]_i_3 (\parity[0][7]_i_15_n_0 ),
        .\parity[0][7]_i_3_0 (\parity[0][7]_i_16_n_0 ),
        .\parity[0][7]_i_4 (\parity_reg[0][7]_i_19_n_0 ),
        .\parity[0][7]_i_4_0 (\parity[0][7]_i_20_n_0 ),
        .\parity[1][7]_i_12_0 (\subs[2][1]_4 [23:16]),
        .\parity[2][7]_i_2_0 (\parity_reg[2][7]_i_12_n_0 ),
        .\parity[2][7]_i_9 (\subs[2][2]_3 [23:16]),
        .\parity[3][7]_i_2 (\parity[3][7]_i_14_n_0 ),
        .\parity_reg[0][7]_i_35_0 ({\audio_sample_word_packet_reg_n_0_[0][0][22] ,\audio_sample_word_packet_reg_n_0_[0][0][21] ,\audio_sample_word_packet_reg_n_0_[0][0][20] ,\audio_sample_word_packet_reg_n_0_[0][0][19] ,\audio_sample_word_packet_reg_n_0_[0][0][18] ,\audio_sample_word_packet_reg_n_0_[0][0][17] ,\audio_sample_word_packet_reg_n_0_[0][0][16] }),
        .\parity_reg[1][0] (\parity_reg[1][0] ),
        .\parity_reg[1][1] (\parity[1][7]_i_13_n_0 ),
        .\parity_reg[1][1]_0 (\parity_reg[1][7]_i_11_n_0 ),
        .\parity_reg[1][6] (\parity_reg[1][6] ),
        .\parity_reg[1][6]_0 (\packet_type_reg[7]_1 ),
        .\parity_reg[1][6]_1 (\parity[1][7]_i_6_n_0 ),
        .\parity_reg[1][7] (\counter_reg[4] ),
        .\parity_reg[1][7]_0 (\parity_reg[1][7] ),
        .\parity_reg[1][7]_1 (\parity_reg[1][7]_0 ),
        .\parity_reg[2][0] (\parity_reg[2][0] ),
        .\parity_reg[2][6] (\parity_reg[2][6] ),
        .\parity_reg[2][6]_0 (\counter_reg[0]_0 ),
        .\parity_reg[2][6]_1 (\parity_reg[2][7]_i_6_n_0 ),
        .\parity_reg[3][6] (\parity_reg[3][6]_i_6_n_0 ),
        .pixelClock(pixelClock),
        .sample_buffer_ready(sample_buffer_ready),
        .sample_buffer_ready_reg(audio_clock_regeneration_packet_n_9),
        .source_product_description_info_frame_sent(source_product_description_info_frame_sent),
        .source_product_description_info_frame_sent_reg(audio_clock_regeneration_packet_n_8),
        .\true_hdmi_output.data_island_data[8]_i_10_0 (\parity[1][6]_i_9_n_0 ),
        .\true_hdmi_output.data_island_data[8]_i_10_1 (\parity[1][6]_i_7_n_0 ),
        .\true_hdmi_output.data_island_data[8]_i_5_0 (\true_hdmi_output.data_island_data[8]_i_21_n_0 ),
        .\true_hdmi_output.data_island_data_reg[4] (\counter_reg[2] ),
        .\true_hdmi_output.data_island_data_reg[5] (\true_hdmi_output.data_island_data_reg[5] ),
        .\true_hdmi_output.data_island_data_reg[5]_0 (\parity[1][6]_i_2_n_0 ),
        .\true_hdmi_output.data_island_data_reg[6] (\true_hdmi_output.data_island_data[6]_i_6_n_0 ),
        .\true_hdmi_output.data_island_data_reg[7] (\parity[3][7]_i_13_n_0 ),
        .\true_hdmi_output.data_island_data_reg[8] (\counter_reg[2]_1 ),
        .\true_hdmi_output.data_island_data_reg[8]_0 (\true_hdmi_output.data_island_data[8]_i_6_n_0 ),
        .\true_hdmi_output.packet_enable (\true_hdmi_output.packet_enable ));
  FDRE #(
    .INIT(1'b0)) 
    audio_info_frame_sent_reg
       (.C(pixelClock),
        .CE(1'b1),
        .D(audio_clock_regeneration_packet_n_10),
        .Q(audio_info_frame_sent),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hED48)) 
    \audio_sample_word_buffer[0][0][0][10]_i_1 
       (.I0(p_0_in),
        .I1(\audio_sample_word_transfer_reg[0]_19 [2]),
        .I2(\audio_sample_word_transfer_control_synchronizer_chain_reg_n_0_[0] ),
        .I3(\audio_sample_word_buffer_reg[0][0][0][10]_i_2_n_0 ),
        .O(\audio_sample_word_transfer_mux[0]_22 [2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \audio_sample_word_buffer[0][0][0][10]_i_3 
       (.I0(\audio_sample_word_buffer_reg[1][1][0]_16 [10]),
        .I1(\audio_sample_word_buffer_reg_n_0_[0][1][0][10] ),
        .I2(samples_remaining[0]),
        .I3(\audio_sample_word_buffer_reg[1][0][0]_15 [10]),
        .I4(sample_buffer_current_reg_n_0),
        .I5(\audio_sample_word_buffer_reg_n_0_[0][0][0][10] ),
        .O(\audio_sample_word_buffer[0][0][0][10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \audio_sample_word_buffer[0][0][0][10]_i_4 
       (.I0(\audio_sample_word_buffer_reg[1][3][0]_18 [10]),
        .I1(\audio_sample_word_buffer_reg[0][3][0]_20 [10]),
        .I2(samples_remaining[0]),
        .I3(\audio_sample_word_buffer_reg[1][2][0]_17 [10]),
        .I4(sample_buffer_current_reg_n_0),
        .I5(\audio_sample_word_buffer_reg_n_0_[0][2][0][10] ),
        .O(\audio_sample_word_buffer[0][0][0][10]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hED48)) 
    \audio_sample_word_buffer[0][0][0][11]_i_1 
       (.I0(p_0_in),
        .I1(\audio_sample_word_transfer_reg[0]_19 [3]),
        .I2(\audio_sample_word_transfer_control_synchronizer_chain_reg_n_0_[0] ),
        .I3(\audio_sample_word_buffer_reg[0][0][0][11]_i_2_n_0 ),
        .O(\audio_sample_word_transfer_mux[0]_22 [3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \audio_sample_word_buffer[0][0][0][11]_i_3 
       (.I0(\audio_sample_word_buffer_reg[1][1][0]_16 [11]),
        .I1(\audio_sample_word_buffer_reg_n_0_[0][1][0][11] ),
        .I2(samples_remaining[0]),
        .I3(\audio_sample_word_buffer_reg[1][0][0]_15 [11]),
        .I4(sample_buffer_current_reg_n_0),
        .I5(\audio_sample_word_buffer_reg_n_0_[0][0][0][11] ),
        .O(\audio_sample_word_buffer[0][0][0][11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \audio_sample_word_buffer[0][0][0][11]_i_4 
       (.I0(\audio_sample_word_buffer_reg[1][3][0]_18 [11]),
        .I1(\audio_sample_word_buffer_reg[0][3][0]_20 [11]),
        .I2(samples_remaining[0]),
        .I3(\audio_sample_word_buffer_reg[1][2][0]_17 [11]),
        .I4(sample_buffer_current_reg_n_0),
        .I5(\audio_sample_word_buffer_reg_n_0_[0][2][0][11] ),
        .O(\audio_sample_word_buffer[0][0][0][11]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hED48)) 
    \audio_sample_word_buffer[0][0][0][12]_i_1 
       (.I0(p_0_in),
        .I1(\audio_sample_word_transfer_reg[0]_19 [4]),
        .I2(\audio_sample_word_transfer_control_synchronizer_chain_reg_n_0_[0] ),
        .I3(\audio_sample_word_buffer_reg[0][0][0][12]_i_2_n_0 ),
        .O(\audio_sample_word_transfer_mux[0]_22 [4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \audio_sample_word_buffer[0][0][0][12]_i_3 
       (.I0(\audio_sample_word_buffer_reg[1][1][0]_16 [12]),
        .I1(\audio_sample_word_buffer_reg_n_0_[0][1][0][12] ),
        .I2(samples_remaining[0]),
        .I3(\audio_sample_word_buffer_reg[1][0][0]_15 [12]),
        .I4(sample_buffer_current_reg_n_0),
        .I5(\audio_sample_word_buffer_reg_n_0_[0][0][0][12] ),
        .O(\audio_sample_word_buffer[0][0][0][12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \audio_sample_word_buffer[0][0][0][12]_i_4 
       (.I0(\audio_sample_word_buffer_reg[1][3][0]_18 [12]),
        .I1(\audio_sample_word_buffer_reg[0][3][0]_20 [12]),
        .I2(samples_remaining[0]),
        .I3(\audio_sample_word_buffer_reg[1][2][0]_17 [12]),
        .I4(sample_buffer_current_reg_n_0),
        .I5(\audio_sample_word_buffer_reg_n_0_[0][2][0][12] ),
        .O(\audio_sample_word_buffer[0][0][0][12]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hED48)) 
    \audio_sample_word_buffer[0][0][0][13]_i_1 
       (.I0(p_0_in),
        .I1(\audio_sample_word_transfer_reg[0]_19 [5]),
        .I2(\audio_sample_word_transfer_control_synchronizer_chain_reg_n_0_[0] ),
        .I3(\audio_sample_word_buffer_reg[0][0][0][13]_i_2_n_0 ),
        .O(\audio_sample_word_transfer_mux[0]_22 [5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \audio_sample_word_buffer[0][0][0][13]_i_3 
       (.I0(\audio_sample_word_buffer_reg[1][1][0]_16 [13]),
        .I1(\audio_sample_word_buffer_reg_n_0_[0][1][0][13] ),
        .I2(samples_remaining[0]),
        .I3(\audio_sample_word_buffer_reg[1][0][0]_15 [13]),
        .I4(sample_buffer_current_reg_n_0),
        .I5(\audio_sample_word_buffer_reg_n_0_[0][0][0][13] ),
        .O(\audio_sample_word_buffer[0][0][0][13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \audio_sample_word_buffer[0][0][0][13]_i_4 
       (.I0(\audio_sample_word_buffer_reg[1][3][0]_18 [13]),
        .I1(\audio_sample_word_buffer_reg[0][3][0]_20 [13]),
        .I2(samples_remaining[0]),
        .I3(\audio_sample_word_buffer_reg[1][2][0]_17 [13]),
        .I4(sample_buffer_current_reg_n_0),
        .I5(\audio_sample_word_buffer_reg_n_0_[0][2][0][13] ),
        .O(\audio_sample_word_buffer[0][0][0][13]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hED48)) 
    \audio_sample_word_buffer[0][0][0][14]_i_1 
       (.I0(p_0_in),
        .I1(\audio_sample_word_transfer_reg[0]_19 [6]),
        .I2(\audio_sample_word_transfer_control_synchronizer_chain_reg_n_0_[0] ),
        .I3(\audio_sample_word_buffer_reg[0][0][0][14]_i_2_n_0 ),
        .O(\audio_sample_word_transfer_mux[0]_22 [6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \audio_sample_word_buffer[0][0][0][14]_i_3 
       (.I0(\audio_sample_word_buffer_reg[1][1][0]_16 [14]),
        .I1(\audio_sample_word_buffer_reg_n_0_[0][1][0][14] ),
        .I2(samples_remaining[0]),
        .I3(\audio_sample_word_buffer_reg[1][0][0]_15 [14]),
        .I4(sample_buffer_current_reg_n_0),
        .I5(\audio_sample_word_buffer_reg_n_0_[0][0][0][14] ),
        .O(\audio_sample_word_buffer[0][0][0][14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \audio_sample_word_buffer[0][0][0][14]_i_4 
       (.I0(\audio_sample_word_buffer_reg[1][3][0]_18 [14]),
        .I1(\audio_sample_word_buffer_reg[0][3][0]_20 [14]),
        .I2(samples_remaining[0]),
        .I3(\audio_sample_word_buffer_reg[1][2][0]_17 [14]),
        .I4(sample_buffer_current_reg_n_0),
        .I5(\audio_sample_word_buffer_reg_n_0_[0][2][0][14] ),
        .O(\audio_sample_word_buffer[0][0][0][14]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hED48)) 
    \audio_sample_word_buffer[0][0][0][15]_i_1 
       (.I0(p_0_in),
        .I1(\audio_sample_word_transfer_reg[0]_19 [7]),
        .I2(\audio_sample_word_transfer_control_synchronizer_chain_reg_n_0_[0] ),
        .I3(\audio_sample_word_buffer_reg[0][0][0][15]_i_2_n_0 ),
        .O(\audio_sample_word_transfer_mux[0]_22 [7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \audio_sample_word_buffer[0][0][0][15]_i_3 
       (.I0(\audio_sample_word_buffer_reg[1][1][0]_16 [15]),
        .I1(\audio_sample_word_buffer_reg_n_0_[0][1][0][15] ),
        .I2(samples_remaining[0]),
        .I3(\audio_sample_word_buffer_reg[1][0][0]_15 [15]),
        .I4(sample_buffer_current_reg_n_0),
        .I5(\audio_sample_word_buffer_reg_n_0_[0][0][0][15] ),
        .O(\audio_sample_word_buffer[0][0][0][15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \audio_sample_word_buffer[0][0][0][15]_i_4 
       (.I0(\audio_sample_word_buffer_reg[1][3][0]_18 [15]),
        .I1(\audio_sample_word_buffer_reg[0][3][0]_20 [15]),
        .I2(samples_remaining[0]),
        .I3(\audio_sample_word_buffer_reg[1][2][0]_17 [15]),
        .I4(sample_buffer_current_reg_n_0),
        .I5(\audio_sample_word_buffer_reg_n_0_[0][2][0][15] ),
        .O(\audio_sample_word_buffer[0][0][0][15]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hED48)) 
    \audio_sample_word_buffer[0][0][0][16]_i_1 
       (.I0(p_0_in),
        .I1(\audio_sample_word_transfer_reg[0]_19 [8]),
        .I2(\audio_sample_word_transfer_control_synchronizer_chain_reg_n_0_[0] ),
        .I3(\audio_sample_word_buffer_reg[0][0][0][16]_i_2_n_0 ),
        .O(\audio_sample_word_transfer_mux[0]_22 [8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \audio_sample_word_buffer[0][0][0][16]_i_3 
       (.I0(\audio_sample_word_buffer_reg[1][1][0]_16 [16]),
        .I1(\audio_sample_word_buffer_reg_n_0_[0][1][0][16] ),
        .I2(samples_remaining[0]),
        .I3(\audio_sample_word_buffer_reg[1][0][0]_15 [16]),
        .I4(sample_buffer_current_reg_n_0),
        .I5(\audio_sample_word_buffer_reg_n_0_[0][0][0][16] ),
        .O(\audio_sample_word_buffer[0][0][0][16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \audio_sample_word_buffer[0][0][0][16]_i_4 
       (.I0(\audio_sample_word_buffer_reg[1][3][0]_18 [16]),
        .I1(\audio_sample_word_buffer_reg[0][3][0]_20 [16]),
        .I2(samples_remaining[0]),
        .I3(\audio_sample_word_buffer_reg[1][2][0]_17 [16]),
        .I4(sample_buffer_current_reg_n_0),
        .I5(\audio_sample_word_buffer_reg_n_0_[0][2][0][16] ),
        .O(\audio_sample_word_buffer[0][0][0][16]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hED48)) 
    \audio_sample_word_buffer[0][0][0][17]_i_1 
       (.I0(p_0_in),
        .I1(\audio_sample_word_transfer_reg[0]_19 [9]),
        .I2(\audio_sample_word_transfer_control_synchronizer_chain_reg_n_0_[0] ),
        .I3(\audio_sample_word_buffer_reg[0][0][0][17]_i_2_n_0 ),
        .O(\audio_sample_word_transfer_mux[0]_22 [9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \audio_sample_word_buffer[0][0][0][17]_i_3 
       (.I0(\audio_sample_word_buffer_reg[1][1][0]_16 [17]),
        .I1(\audio_sample_word_buffer_reg_n_0_[0][1][0][17] ),
        .I2(samples_remaining[0]),
        .I3(\audio_sample_word_buffer_reg[1][0][0]_15 [17]),
        .I4(sample_buffer_current_reg_n_0),
        .I5(\audio_sample_word_buffer_reg_n_0_[0][0][0][17] ),
        .O(\audio_sample_word_buffer[0][0][0][17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \audio_sample_word_buffer[0][0][0][17]_i_4 
       (.I0(\audio_sample_word_buffer_reg[1][3][0]_18 [17]),
        .I1(\audio_sample_word_buffer_reg[0][3][0]_20 [17]),
        .I2(samples_remaining[0]),
        .I3(\audio_sample_word_buffer_reg[1][2][0]_17 [17]),
        .I4(sample_buffer_current_reg_n_0),
        .I5(\audio_sample_word_buffer_reg_n_0_[0][2][0][17] ),
        .O(\audio_sample_word_buffer[0][0][0][17]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hED48)) 
    \audio_sample_word_buffer[0][0][0][18]_i_1 
       (.I0(p_0_in),
        .I1(\audio_sample_word_transfer_reg[0]_19 [10]),
        .I2(\audio_sample_word_transfer_control_synchronizer_chain_reg_n_0_[0] ),
        .I3(\audio_sample_word_buffer_reg[0][0][0][18]_i_2_n_0 ),
        .O(\audio_sample_word_transfer_mux[0]_22 [10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \audio_sample_word_buffer[0][0][0][18]_i_3 
       (.I0(\audio_sample_word_buffer_reg[1][1][0]_16 [18]),
        .I1(\audio_sample_word_buffer_reg_n_0_[0][1][0][18] ),
        .I2(samples_remaining[0]),
        .I3(\audio_sample_word_buffer_reg[1][0][0]_15 [18]),
        .I4(sample_buffer_current_reg_n_0),
        .I5(\audio_sample_word_buffer_reg_n_0_[0][0][0][18] ),
        .O(\audio_sample_word_buffer[0][0][0][18]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \audio_sample_word_buffer[0][0][0][18]_i_4 
       (.I0(\audio_sample_word_buffer_reg[1][3][0]_18 [18]),
        .I1(\audio_sample_word_buffer_reg[0][3][0]_20 [18]),
        .I2(samples_remaining[0]),
        .I3(\audio_sample_word_buffer_reg[1][2][0]_17 [18]),
        .I4(sample_buffer_current_reg_n_0),
        .I5(\audio_sample_word_buffer_reg_n_0_[0][2][0][18] ),
        .O(\audio_sample_word_buffer[0][0][0][18]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hED48)) 
    \audio_sample_word_buffer[0][0][0][19]_i_1 
       (.I0(p_0_in),
        .I1(\audio_sample_word_transfer_reg[0]_19 [11]),
        .I2(\audio_sample_word_transfer_control_synchronizer_chain_reg_n_0_[0] ),
        .I3(\audio_sample_word_buffer_reg[0][0][0][19]_i_2_n_0 ),
        .O(\audio_sample_word_transfer_mux[0]_22 [11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \audio_sample_word_buffer[0][0][0][19]_i_3 
       (.I0(\audio_sample_word_buffer_reg[1][1][0]_16 [19]),
        .I1(\audio_sample_word_buffer_reg_n_0_[0][1][0][19] ),
        .I2(samples_remaining[0]),
        .I3(\audio_sample_word_buffer_reg[1][0][0]_15 [19]),
        .I4(sample_buffer_current_reg_n_0),
        .I5(\audio_sample_word_buffer_reg_n_0_[0][0][0][19] ),
        .O(\audio_sample_word_buffer[0][0][0][19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \audio_sample_word_buffer[0][0][0][19]_i_4 
       (.I0(\audio_sample_word_buffer_reg[1][3][0]_18 [19]),
        .I1(\audio_sample_word_buffer_reg[0][3][0]_20 [19]),
        .I2(samples_remaining[0]),
        .I3(\audio_sample_word_buffer_reg[1][2][0]_17 [19]),
        .I4(sample_buffer_current_reg_n_0),
        .I5(\audio_sample_word_buffer_reg_n_0_[0][2][0][19] ),
        .O(\audio_sample_word_buffer[0][0][0][19]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hED48)) 
    \audio_sample_word_buffer[0][0][0][20]_i_1 
       (.I0(p_0_in),
        .I1(\audio_sample_word_transfer_reg[0]_19 [12]),
        .I2(\audio_sample_word_transfer_control_synchronizer_chain_reg_n_0_[0] ),
        .I3(\audio_sample_word_buffer_reg[0][0][0][20]_i_2_n_0 ),
        .O(\audio_sample_word_transfer_mux[0]_22 [12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \audio_sample_word_buffer[0][0][0][20]_i_3 
       (.I0(\audio_sample_word_buffer_reg[1][1][0]_16 [20]),
        .I1(\audio_sample_word_buffer_reg_n_0_[0][1][0][20] ),
        .I2(samples_remaining[0]),
        .I3(\audio_sample_word_buffer_reg[1][0][0]_15 [20]),
        .I4(sample_buffer_current_reg_n_0),
        .I5(\audio_sample_word_buffer_reg_n_0_[0][0][0][20] ),
        .O(\audio_sample_word_buffer[0][0][0][20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \audio_sample_word_buffer[0][0][0][20]_i_4 
       (.I0(\audio_sample_word_buffer_reg[1][3][0]_18 [20]),
        .I1(\audio_sample_word_buffer_reg[0][3][0]_20 [20]),
        .I2(samples_remaining[0]),
        .I3(\audio_sample_word_buffer_reg[1][2][0]_17 [20]),
        .I4(sample_buffer_current_reg_n_0),
        .I5(\audio_sample_word_buffer_reg_n_0_[0][2][0][20] ),
        .O(\audio_sample_word_buffer[0][0][0][20]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hED48)) 
    \audio_sample_word_buffer[0][0][0][21]_i_1 
       (.I0(p_0_in),
        .I1(\audio_sample_word_transfer_reg[0]_19 [13]),
        .I2(\audio_sample_word_transfer_control_synchronizer_chain_reg_n_0_[0] ),
        .I3(\audio_sample_word_buffer_reg[0][0][0][21]_i_2_n_0 ),
        .O(\audio_sample_word_transfer_mux[0]_22 [13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \audio_sample_word_buffer[0][0][0][21]_i_3 
       (.I0(\audio_sample_word_buffer_reg[1][1][0]_16 [21]),
        .I1(\audio_sample_word_buffer_reg_n_0_[0][1][0][21] ),
        .I2(samples_remaining[0]),
        .I3(\audio_sample_word_buffer_reg[1][0][0]_15 [21]),
        .I4(sample_buffer_current_reg_n_0),
        .I5(\audio_sample_word_buffer_reg_n_0_[0][0][0][21] ),
        .O(\audio_sample_word_buffer[0][0][0][21]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \audio_sample_word_buffer[0][0][0][21]_i_4 
       (.I0(\audio_sample_word_buffer_reg[1][3][0]_18 [21]),
        .I1(\audio_sample_word_buffer_reg[0][3][0]_20 [21]),
        .I2(samples_remaining[0]),
        .I3(\audio_sample_word_buffer_reg[1][2][0]_17 [21]),
        .I4(sample_buffer_current_reg_n_0),
        .I5(\audio_sample_word_buffer_reg_n_0_[0][2][0][21] ),
        .O(\audio_sample_word_buffer[0][0][0][21]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hED48)) 
    \audio_sample_word_buffer[0][0][0][22]_i_1 
       (.I0(p_0_in),
        .I1(\audio_sample_word_transfer_reg[0]_19 [14]),
        .I2(\audio_sample_word_transfer_control_synchronizer_chain_reg_n_0_[0] ),
        .I3(\audio_sample_word_buffer_reg[0][0][0][22]_i_2_n_0 ),
        .O(\audio_sample_word_transfer_mux[0]_22 [14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \audio_sample_word_buffer[0][0][0][22]_i_3 
       (.I0(\audio_sample_word_buffer_reg[1][1][0]_16 [22]),
        .I1(\audio_sample_word_buffer_reg_n_0_[0][1][0][22] ),
        .I2(samples_remaining[0]),
        .I3(\audio_sample_word_buffer_reg[1][0][0]_15 [22]),
        .I4(sample_buffer_current_reg_n_0),
        .I5(\audio_sample_word_buffer_reg_n_0_[0][0][0][22] ),
        .O(\audio_sample_word_buffer[0][0][0][22]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \audio_sample_word_buffer[0][0][0][22]_i_4 
       (.I0(\audio_sample_word_buffer_reg[1][3][0]_18 [22]),
        .I1(\audio_sample_word_buffer_reg[0][3][0]_20 [22]),
        .I2(samples_remaining[0]),
        .I3(\audio_sample_word_buffer_reg[1][2][0]_17 [22]),
        .I4(sample_buffer_current_reg_n_0),
        .I5(\audio_sample_word_buffer_reg_n_0_[0][2][0][22] ),
        .O(\audio_sample_word_buffer[0][0][0][22]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hED48)) 
    \audio_sample_word_buffer[0][0][0][23]_i_1 
       (.I0(p_0_in),
        .I1(\audio_sample_word_transfer_reg[0]_19 [15]),
        .I2(\audio_sample_word_transfer_control_synchronizer_chain_reg_n_0_[0] ),
        .I3(\audio_sample_word_buffer_reg[0][0][0][23]_i_2_n_0 ),
        .O(\audio_sample_word_transfer_mux[0]_22 [15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \audio_sample_word_buffer[0][0][0][23]_i_3 
       (.I0(\audio_sample_word_buffer_reg[1][1][0]_16 [23]),
        .I1(\audio_sample_word_buffer_reg_n_0_[0][1][0][23] ),
        .I2(samples_remaining[0]),
        .I3(\audio_sample_word_buffer_reg[1][0][0]_15 [23]),
        .I4(sample_buffer_current_reg_n_0),
        .I5(\audio_sample_word_buffer_reg_n_0_[0][0][0][23] ),
        .O(\audio_sample_word_buffer[0][0][0][23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \audio_sample_word_buffer[0][0][0][23]_i_4 
       (.I0(\audio_sample_word_buffer_reg[1][3][0]_18 [23]),
        .I1(\audio_sample_word_buffer_reg[0][3][0]_20 [23]),
        .I2(samples_remaining[0]),
        .I3(\audio_sample_word_buffer_reg[1][2][0]_17 [23]),
        .I4(sample_buffer_current_reg_n_0),
        .I5(\audio_sample_word_buffer_reg_n_0_[0][2][0][23] ),
        .O(\audio_sample_word_buffer[0][0][0][23]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hED48)) 
    \audio_sample_word_buffer[0][0][0][8]_i_1 
       (.I0(p_0_in),
        .I1(\audio_sample_word_transfer_reg[0]_19 [0]),
        .I2(\audio_sample_word_transfer_control_synchronizer_chain_reg_n_0_[0] ),
        .I3(\audio_sample_word_buffer_reg[0][0][0][8]_i_2_n_0 ),
        .O(\audio_sample_word_transfer_mux[0]_22 [0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \audio_sample_word_buffer[0][0][0][8]_i_3 
       (.I0(\audio_sample_word_buffer_reg[1][1][0]_16 [8]),
        .I1(\audio_sample_word_buffer_reg_n_0_[0][1][0][8] ),
        .I2(samples_remaining[0]),
        .I3(\audio_sample_word_buffer_reg[1][0][0]_15 [8]),
        .I4(sample_buffer_current_reg_n_0),
        .I5(\audio_sample_word_buffer_reg_n_0_[0][0][0][8] ),
        .O(\audio_sample_word_buffer[0][0][0][8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \audio_sample_word_buffer[0][0][0][8]_i_4 
       (.I0(\audio_sample_word_buffer_reg[1][3][0]_18 [8]),
        .I1(\audio_sample_word_buffer_reg[0][3][0]_20 [8]),
        .I2(samples_remaining[0]),
        .I3(\audio_sample_word_buffer_reg[1][2][0]_17 [8]),
        .I4(sample_buffer_current_reg_n_0),
        .I5(\audio_sample_word_buffer_reg_n_0_[0][2][0][8] ),
        .O(\audio_sample_word_buffer[0][0][0][8]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hED48)) 
    \audio_sample_word_buffer[0][0][0][9]_i_1 
       (.I0(p_0_in),
        .I1(\audio_sample_word_transfer_reg[0]_19 [1]),
        .I2(\audio_sample_word_transfer_control_synchronizer_chain_reg_n_0_[0] ),
        .I3(\audio_sample_word_buffer_reg[0][0][0][9]_i_2_n_0 ),
        .O(\audio_sample_word_transfer_mux[0]_22 [1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \audio_sample_word_buffer[0][0][0][9]_i_3 
       (.I0(\audio_sample_word_buffer_reg[1][1][0]_16 [9]),
        .I1(\audio_sample_word_buffer_reg_n_0_[0][1][0][9] ),
        .I2(samples_remaining[0]),
        .I3(\audio_sample_word_buffer_reg[1][0][0]_15 [9]),
        .I4(sample_buffer_current_reg_n_0),
        .I5(\audio_sample_word_buffer_reg_n_0_[0][0][0][9] ),
        .O(\audio_sample_word_buffer[0][0][0][9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \audio_sample_word_buffer[0][0][0][9]_i_4 
       (.I0(\audio_sample_word_buffer_reg[1][3][0]_18 [9]),
        .I1(\audio_sample_word_buffer_reg[0][3][0]_20 [9]),
        .I2(samples_remaining[0]),
        .I3(\audio_sample_word_buffer_reg[1][2][0]_17 [9]),
        .I4(sample_buffer_current_reg_n_0),
        .I5(\audio_sample_word_buffer_reg_n_0_[0][2][0][9] ),
        .O(\audio_sample_word_buffer[0][0][0][9]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hED48)) 
    \audio_sample_word_buffer[0][0][1][10]_i_1 
       (.I0(p_0_in),
        .I1(\audio_sample_word_transfer_reg[1]_13 [2]),
        .I2(\audio_sample_word_transfer_control_synchronizer_chain_reg_n_0_[0] ),
        .I3(\audio_sample_word_buffer_reg[0][0][1][10]_i_2_n_0 ),
        .O(\audio_sample_word_transfer_mux[1]_21 [2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \audio_sample_word_buffer[0][0][1][10]_i_3 
       (.I0(\audio_sample_word_buffer_reg[1][1][1]_9 [10]),
        .I1(\audio_sample_word_buffer_reg[0][1][1]_8 [10]),
        .I2(samples_remaining[0]),
        .I3(\audio_sample_word_buffer_reg[1][0][1]_7 [10]),
        .I4(sample_buffer_current_reg_n_0),
        .I5(\audio_sample_word_buffer_reg[0][0][1]_6 [10]),
        .O(\audio_sample_word_buffer[0][0][1][10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \audio_sample_word_buffer[0][0][1][10]_i_4 
       (.I0(\audio_sample_word_buffer_reg[1][3][1]_12 [10]),
        .I1(\audio_sample_word_buffer_reg[0][3][1]_14 [10]),
        .I2(samples_remaining[0]),
        .I3(\audio_sample_word_buffer_reg[1][2][1]_11 [10]),
        .I4(sample_buffer_current_reg_n_0),
        .I5(\audio_sample_word_buffer_reg[0][2][1]_10 [10]),
        .O(\audio_sample_word_buffer[0][0][1][10]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hED48)) 
    \audio_sample_word_buffer[0][0][1][11]_i_1 
       (.I0(p_0_in),
        .I1(\audio_sample_word_transfer_reg[1]_13 [3]),
        .I2(\audio_sample_word_transfer_control_synchronizer_chain_reg_n_0_[0] ),
        .I3(\audio_sample_word_buffer_reg[0][0][1][11]_i_2_n_0 ),
        .O(\audio_sample_word_transfer_mux[1]_21 [3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \audio_sample_word_buffer[0][0][1][11]_i_3 
       (.I0(\audio_sample_word_buffer_reg[1][1][1]_9 [11]),
        .I1(\audio_sample_word_buffer_reg[0][1][1]_8 [11]),
        .I2(samples_remaining[0]),
        .I3(\audio_sample_word_buffer_reg[1][0][1]_7 [11]),
        .I4(sample_buffer_current_reg_n_0),
        .I5(\audio_sample_word_buffer_reg[0][0][1]_6 [11]),
        .O(\audio_sample_word_buffer[0][0][1][11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \audio_sample_word_buffer[0][0][1][11]_i_4 
       (.I0(\audio_sample_word_buffer_reg[1][3][1]_12 [11]),
        .I1(\audio_sample_word_buffer_reg[0][3][1]_14 [11]),
        .I2(samples_remaining[0]),
        .I3(\audio_sample_word_buffer_reg[1][2][1]_11 [11]),
        .I4(sample_buffer_current_reg_n_0),
        .I5(\audio_sample_word_buffer_reg[0][2][1]_10 [11]),
        .O(\audio_sample_word_buffer[0][0][1][11]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hED48)) 
    \audio_sample_word_buffer[0][0][1][12]_i_1 
       (.I0(p_0_in),
        .I1(\audio_sample_word_transfer_reg[1]_13 [4]),
        .I2(\audio_sample_word_transfer_control_synchronizer_chain_reg_n_0_[0] ),
        .I3(\audio_sample_word_buffer_reg[0][0][1][12]_i_2_n_0 ),
        .O(\audio_sample_word_transfer_mux[1]_21 [4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \audio_sample_word_buffer[0][0][1][12]_i_3 
       (.I0(\audio_sample_word_buffer_reg[1][1][1]_9 [12]),
        .I1(\audio_sample_word_buffer_reg[0][1][1]_8 [12]),
        .I2(samples_remaining[0]),
        .I3(\audio_sample_word_buffer_reg[1][0][1]_7 [12]),
        .I4(sample_buffer_current_reg_n_0),
        .I5(\audio_sample_word_buffer_reg[0][0][1]_6 [12]),
        .O(\audio_sample_word_buffer[0][0][1][12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \audio_sample_word_buffer[0][0][1][12]_i_4 
       (.I0(\audio_sample_word_buffer_reg[1][3][1]_12 [12]),
        .I1(\audio_sample_word_buffer_reg[0][3][1]_14 [12]),
        .I2(samples_remaining[0]),
        .I3(\audio_sample_word_buffer_reg[1][2][1]_11 [12]),
        .I4(sample_buffer_current_reg_n_0),
        .I5(\audio_sample_word_buffer_reg[0][2][1]_10 [12]),
        .O(\audio_sample_word_buffer[0][0][1][12]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hED48)) 
    \audio_sample_word_buffer[0][0][1][13]_i_1 
       (.I0(p_0_in),
        .I1(\audio_sample_word_transfer_reg[1]_13 [5]),
        .I2(\audio_sample_word_transfer_control_synchronizer_chain_reg_n_0_[0] ),
        .I3(\audio_sample_word_buffer_reg[0][0][1][13]_i_2_n_0 ),
        .O(\audio_sample_word_transfer_mux[1]_21 [5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \audio_sample_word_buffer[0][0][1][13]_i_3 
       (.I0(\audio_sample_word_buffer_reg[1][1][1]_9 [13]),
        .I1(\audio_sample_word_buffer_reg[0][1][1]_8 [13]),
        .I2(samples_remaining[0]),
        .I3(\audio_sample_word_buffer_reg[1][0][1]_7 [13]),
        .I4(sample_buffer_current_reg_n_0),
        .I5(\audio_sample_word_buffer_reg[0][0][1]_6 [13]),
        .O(\audio_sample_word_buffer[0][0][1][13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \audio_sample_word_buffer[0][0][1][13]_i_4 
       (.I0(\audio_sample_word_buffer_reg[1][3][1]_12 [13]),
        .I1(\audio_sample_word_buffer_reg[0][3][1]_14 [13]),
        .I2(samples_remaining[0]),
        .I3(\audio_sample_word_buffer_reg[1][2][1]_11 [13]),
        .I4(sample_buffer_current_reg_n_0),
        .I5(\audio_sample_word_buffer_reg[0][2][1]_10 [13]),
        .O(\audio_sample_word_buffer[0][0][1][13]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hED48)) 
    \audio_sample_word_buffer[0][0][1][14]_i_1 
       (.I0(p_0_in),
        .I1(\audio_sample_word_transfer_reg[1]_13 [6]),
        .I2(\audio_sample_word_transfer_control_synchronizer_chain_reg_n_0_[0] ),
        .I3(\audio_sample_word_buffer_reg[0][0][1][14]_i_2_n_0 ),
        .O(\audio_sample_word_transfer_mux[1]_21 [6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \audio_sample_word_buffer[0][0][1][14]_i_3 
       (.I0(\audio_sample_word_buffer_reg[1][1][1]_9 [14]),
        .I1(\audio_sample_word_buffer_reg[0][1][1]_8 [14]),
        .I2(samples_remaining[0]),
        .I3(\audio_sample_word_buffer_reg[1][0][1]_7 [14]),
        .I4(sample_buffer_current_reg_n_0),
        .I5(\audio_sample_word_buffer_reg[0][0][1]_6 [14]),
        .O(\audio_sample_word_buffer[0][0][1][14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \audio_sample_word_buffer[0][0][1][14]_i_4 
       (.I0(\audio_sample_word_buffer_reg[1][3][1]_12 [14]),
        .I1(\audio_sample_word_buffer_reg[0][3][1]_14 [14]),
        .I2(samples_remaining[0]),
        .I3(\audio_sample_word_buffer_reg[1][2][1]_11 [14]),
        .I4(sample_buffer_current_reg_n_0),
        .I5(\audio_sample_word_buffer_reg[0][2][1]_10 [14]),
        .O(\audio_sample_word_buffer[0][0][1][14]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hED48)) 
    \audio_sample_word_buffer[0][0][1][15]_i_1 
       (.I0(p_0_in),
        .I1(\audio_sample_word_transfer_reg[1]_13 [7]),
        .I2(\audio_sample_word_transfer_control_synchronizer_chain_reg_n_0_[0] ),
        .I3(\audio_sample_word_buffer_reg[0][0][1][15]_i_2_n_0 ),
        .O(\audio_sample_word_transfer_mux[1]_21 [7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \audio_sample_word_buffer[0][0][1][15]_i_3 
       (.I0(\audio_sample_word_buffer_reg[1][1][1]_9 [15]),
        .I1(\audio_sample_word_buffer_reg[0][1][1]_8 [15]),
        .I2(samples_remaining[0]),
        .I3(\audio_sample_word_buffer_reg[1][0][1]_7 [15]),
        .I4(sample_buffer_current_reg_n_0),
        .I5(\audio_sample_word_buffer_reg[0][0][1]_6 [15]),
        .O(\audio_sample_word_buffer[0][0][1][15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \audio_sample_word_buffer[0][0][1][15]_i_4 
       (.I0(\audio_sample_word_buffer_reg[1][3][1]_12 [15]),
        .I1(\audio_sample_word_buffer_reg[0][3][1]_14 [15]),
        .I2(samples_remaining[0]),
        .I3(\audio_sample_word_buffer_reg[1][2][1]_11 [15]),
        .I4(sample_buffer_current_reg_n_0),
        .I5(\audio_sample_word_buffer_reg[0][2][1]_10 [15]),
        .O(\audio_sample_word_buffer[0][0][1][15]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hED48)) 
    \audio_sample_word_buffer[0][0][1][16]_i_1 
       (.I0(p_0_in),
        .I1(\audio_sample_word_transfer_reg[1]_13 [8]),
        .I2(\audio_sample_word_transfer_control_synchronizer_chain_reg_n_0_[0] ),
        .I3(\audio_sample_word_buffer_reg[0][0][1][16]_i_2_n_0 ),
        .O(\audio_sample_word_transfer_mux[1]_21 [8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \audio_sample_word_buffer[0][0][1][16]_i_3 
       (.I0(\audio_sample_word_buffer_reg[1][1][1]_9 [16]),
        .I1(\audio_sample_word_buffer_reg[0][1][1]_8 [16]),
        .I2(samples_remaining[0]),
        .I3(\audio_sample_word_buffer_reg[1][0][1]_7 [16]),
        .I4(sample_buffer_current_reg_n_0),
        .I5(\audio_sample_word_buffer_reg[0][0][1]_6 [16]),
        .O(\audio_sample_word_buffer[0][0][1][16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \audio_sample_word_buffer[0][0][1][16]_i_4 
       (.I0(\audio_sample_word_buffer_reg[1][3][1]_12 [16]),
        .I1(\audio_sample_word_buffer_reg[0][3][1]_14 [16]),
        .I2(samples_remaining[0]),
        .I3(\audio_sample_word_buffer_reg[1][2][1]_11 [16]),
        .I4(sample_buffer_current_reg_n_0),
        .I5(\audio_sample_word_buffer_reg[0][2][1]_10 [16]),
        .O(\audio_sample_word_buffer[0][0][1][16]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hED48)) 
    \audio_sample_word_buffer[0][0][1][17]_i_1 
       (.I0(p_0_in),
        .I1(\audio_sample_word_transfer_reg[1]_13 [9]),
        .I2(\audio_sample_word_transfer_control_synchronizer_chain_reg_n_0_[0] ),
        .I3(\audio_sample_word_buffer_reg[0][0][1][17]_i_2_n_0 ),
        .O(\audio_sample_word_transfer_mux[1]_21 [9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \audio_sample_word_buffer[0][0][1][17]_i_3 
       (.I0(\audio_sample_word_buffer_reg[1][1][1]_9 [17]),
        .I1(\audio_sample_word_buffer_reg[0][1][1]_8 [17]),
        .I2(samples_remaining[0]),
        .I3(\audio_sample_word_buffer_reg[1][0][1]_7 [17]),
        .I4(sample_buffer_current_reg_n_0),
        .I5(\audio_sample_word_buffer_reg[0][0][1]_6 [17]),
        .O(\audio_sample_word_buffer[0][0][1][17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \audio_sample_word_buffer[0][0][1][17]_i_4 
       (.I0(\audio_sample_word_buffer_reg[1][3][1]_12 [17]),
        .I1(\audio_sample_word_buffer_reg[0][3][1]_14 [17]),
        .I2(samples_remaining[0]),
        .I3(\audio_sample_word_buffer_reg[1][2][1]_11 [17]),
        .I4(sample_buffer_current_reg_n_0),
        .I5(\audio_sample_word_buffer_reg[0][2][1]_10 [17]),
        .O(\audio_sample_word_buffer[0][0][1][17]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hED48)) 
    \audio_sample_word_buffer[0][0][1][18]_i_1 
       (.I0(p_0_in),
        .I1(\audio_sample_word_transfer_reg[1]_13 [10]),
        .I2(\audio_sample_word_transfer_control_synchronizer_chain_reg_n_0_[0] ),
        .I3(\audio_sample_word_buffer_reg[0][0][1][18]_i_2_n_0 ),
        .O(\audio_sample_word_transfer_mux[1]_21 [10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \audio_sample_word_buffer[0][0][1][18]_i_3 
       (.I0(\audio_sample_word_buffer_reg[1][1][1]_9 [18]),
        .I1(\audio_sample_word_buffer_reg[0][1][1]_8 [18]),
        .I2(samples_remaining[0]),
        .I3(\audio_sample_word_buffer_reg[1][0][1]_7 [18]),
        .I4(sample_buffer_current_reg_n_0),
        .I5(\audio_sample_word_buffer_reg[0][0][1]_6 [18]),
        .O(\audio_sample_word_buffer[0][0][1][18]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \audio_sample_word_buffer[0][0][1][18]_i_4 
       (.I0(\audio_sample_word_buffer_reg[1][3][1]_12 [18]),
        .I1(\audio_sample_word_buffer_reg[0][3][1]_14 [18]),
        .I2(samples_remaining[0]),
        .I3(\audio_sample_word_buffer_reg[1][2][1]_11 [18]),
        .I4(sample_buffer_current_reg_n_0),
        .I5(\audio_sample_word_buffer_reg[0][2][1]_10 [18]),
        .O(\audio_sample_word_buffer[0][0][1][18]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hED48)) 
    \audio_sample_word_buffer[0][0][1][19]_i_1 
       (.I0(p_0_in),
        .I1(\audio_sample_word_transfer_reg[1]_13 [11]),
        .I2(\audio_sample_word_transfer_control_synchronizer_chain_reg_n_0_[0] ),
        .I3(\audio_sample_word_buffer_reg[0][0][1][19]_i_2_n_0 ),
        .O(\audio_sample_word_transfer_mux[1]_21 [11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \audio_sample_word_buffer[0][0][1][19]_i_3 
       (.I0(\audio_sample_word_buffer_reg[1][1][1]_9 [19]),
        .I1(\audio_sample_word_buffer_reg[0][1][1]_8 [19]),
        .I2(samples_remaining[0]),
        .I3(\audio_sample_word_buffer_reg[1][0][1]_7 [19]),
        .I4(sample_buffer_current_reg_n_0),
        .I5(\audio_sample_word_buffer_reg[0][0][1]_6 [19]),
        .O(\audio_sample_word_buffer[0][0][1][19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \audio_sample_word_buffer[0][0][1][19]_i_4 
       (.I0(\audio_sample_word_buffer_reg[1][3][1]_12 [19]),
        .I1(\audio_sample_word_buffer_reg[0][3][1]_14 [19]),
        .I2(samples_remaining[0]),
        .I3(\audio_sample_word_buffer_reg[1][2][1]_11 [19]),
        .I4(sample_buffer_current_reg_n_0),
        .I5(\audio_sample_word_buffer_reg[0][2][1]_10 [19]),
        .O(\audio_sample_word_buffer[0][0][1][19]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hED48)) 
    \audio_sample_word_buffer[0][0][1][20]_i_1 
       (.I0(p_0_in),
        .I1(\audio_sample_word_transfer_reg[1]_13 [12]),
        .I2(\audio_sample_word_transfer_control_synchronizer_chain_reg_n_0_[0] ),
        .I3(\audio_sample_word_buffer_reg[0][0][1][20]_i_2_n_0 ),
        .O(\audio_sample_word_transfer_mux[1]_21 [12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \audio_sample_word_buffer[0][0][1][20]_i_3 
       (.I0(\audio_sample_word_buffer_reg[1][1][1]_9 [20]),
        .I1(\audio_sample_word_buffer_reg[0][1][1]_8 [20]),
        .I2(samples_remaining[0]),
        .I3(\audio_sample_word_buffer_reg[1][0][1]_7 [20]),
        .I4(sample_buffer_current_reg_n_0),
        .I5(\audio_sample_word_buffer_reg[0][0][1]_6 [20]),
        .O(\audio_sample_word_buffer[0][0][1][20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \audio_sample_word_buffer[0][0][1][20]_i_4 
       (.I0(\audio_sample_word_buffer_reg[1][3][1]_12 [20]),
        .I1(\audio_sample_word_buffer_reg[0][3][1]_14 [20]),
        .I2(samples_remaining[0]),
        .I3(\audio_sample_word_buffer_reg[1][2][1]_11 [20]),
        .I4(sample_buffer_current_reg_n_0),
        .I5(\audio_sample_word_buffer_reg[0][2][1]_10 [20]),
        .O(\audio_sample_word_buffer[0][0][1][20]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hED48)) 
    \audio_sample_word_buffer[0][0][1][21]_i_1 
       (.I0(p_0_in),
        .I1(\audio_sample_word_transfer_reg[1]_13 [13]),
        .I2(\audio_sample_word_transfer_control_synchronizer_chain_reg_n_0_[0] ),
        .I3(\audio_sample_word_buffer_reg[0][0][1][21]_i_2_n_0 ),
        .O(\audio_sample_word_transfer_mux[1]_21 [13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \audio_sample_word_buffer[0][0][1][21]_i_3 
       (.I0(\audio_sample_word_buffer_reg[1][1][1]_9 [21]),
        .I1(\audio_sample_word_buffer_reg[0][1][1]_8 [21]),
        .I2(samples_remaining[0]),
        .I3(\audio_sample_word_buffer_reg[1][0][1]_7 [21]),
        .I4(sample_buffer_current_reg_n_0),
        .I5(\audio_sample_word_buffer_reg[0][0][1]_6 [21]),
        .O(\audio_sample_word_buffer[0][0][1][21]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \audio_sample_word_buffer[0][0][1][21]_i_4 
       (.I0(\audio_sample_word_buffer_reg[1][3][1]_12 [21]),
        .I1(\audio_sample_word_buffer_reg[0][3][1]_14 [21]),
        .I2(samples_remaining[0]),
        .I3(\audio_sample_word_buffer_reg[1][2][1]_11 [21]),
        .I4(sample_buffer_current_reg_n_0),
        .I5(\audio_sample_word_buffer_reg[0][2][1]_10 [21]),
        .O(\audio_sample_word_buffer[0][0][1][21]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hED48)) 
    \audio_sample_word_buffer[0][0][1][22]_i_1 
       (.I0(p_0_in),
        .I1(\audio_sample_word_transfer_reg[1]_13 [14]),
        .I2(\audio_sample_word_transfer_control_synchronizer_chain_reg_n_0_[0] ),
        .I3(\audio_sample_word_buffer_reg[0][0][1][22]_i_2_n_0 ),
        .O(\audio_sample_word_transfer_mux[1]_21 [14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \audio_sample_word_buffer[0][0][1][22]_i_3 
       (.I0(\audio_sample_word_buffer_reg[1][1][1]_9 [22]),
        .I1(\audio_sample_word_buffer_reg[0][1][1]_8 [22]),
        .I2(samples_remaining[0]),
        .I3(\audio_sample_word_buffer_reg[1][0][1]_7 [22]),
        .I4(sample_buffer_current_reg_n_0),
        .I5(\audio_sample_word_buffer_reg[0][0][1]_6 [22]),
        .O(\audio_sample_word_buffer[0][0][1][22]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \audio_sample_word_buffer[0][0][1][22]_i_4 
       (.I0(\audio_sample_word_buffer_reg[1][3][1]_12 [22]),
        .I1(\audio_sample_word_buffer_reg[0][3][1]_14 [22]),
        .I2(samples_remaining[0]),
        .I3(\audio_sample_word_buffer_reg[1][2][1]_11 [22]),
        .I4(sample_buffer_current_reg_n_0),
        .I5(\audio_sample_word_buffer_reg[0][2][1]_10 [22]),
        .O(\audio_sample_word_buffer[0][0][1][22]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00010002)) 
    \audio_sample_word_buffer[0][0][1][23]_i_1 
       (.I0(p_0_in),
        .I1(samples_remaining[1]),
        .I2(sample_buffer_current_reg_n_0),
        .I3(samples_remaining[0]),
        .I4(\audio_sample_word_transfer_control_synchronizer_chain_reg_n_0_[0] ),
        .O(\audio_sample_word_buffer[0][0][1][23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hED48)) 
    \audio_sample_word_buffer[0][0][1][23]_i_2 
       (.I0(p_0_in),
        .I1(\audio_sample_word_transfer_reg[1]_13 [15]),
        .I2(\audio_sample_word_transfer_control_synchronizer_chain_reg_n_0_[0] ),
        .I3(\audio_sample_word_buffer_reg[0][0][1][23]_i_3_n_0 ),
        .O(\audio_sample_word_transfer_mux[1]_21 [15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \audio_sample_word_buffer[0][0][1][23]_i_4 
       (.I0(\audio_sample_word_buffer_reg[1][1][1]_9 [23]),
        .I1(\audio_sample_word_buffer_reg[0][1][1]_8 [23]),
        .I2(samples_remaining[0]),
        .I3(\audio_sample_word_buffer_reg[1][0][1]_7 [23]),
        .I4(sample_buffer_current_reg_n_0),
        .I5(\audio_sample_word_buffer_reg[0][0][1]_6 [23]),
        .O(\audio_sample_word_buffer[0][0][1][23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \audio_sample_word_buffer[0][0][1][23]_i_5 
       (.I0(\audio_sample_word_buffer_reg[1][3][1]_12 [23]),
        .I1(\audio_sample_word_buffer_reg[0][3][1]_14 [23]),
        .I2(samples_remaining[0]),
        .I3(\audio_sample_word_buffer_reg[1][2][1]_11 [23]),
        .I4(sample_buffer_current_reg_n_0),
        .I5(\audio_sample_word_buffer_reg[0][2][1]_10 [23]),
        .O(\audio_sample_word_buffer[0][0][1][23]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hED48)) 
    \audio_sample_word_buffer[0][0][1][8]_i_1 
       (.I0(p_0_in),
        .I1(\audio_sample_word_transfer_reg[1]_13 [0]),
        .I2(\audio_sample_word_transfer_control_synchronizer_chain_reg_n_0_[0] ),
        .I3(\audio_sample_word_buffer_reg[0][0][1][8]_i_2_n_0 ),
        .O(\audio_sample_word_transfer_mux[1]_21 [0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \audio_sample_word_buffer[0][0][1][8]_i_3 
       (.I0(\audio_sample_word_buffer_reg[1][1][1]_9 [8]),
        .I1(\audio_sample_word_buffer_reg[0][1][1]_8 [8]),
        .I2(samples_remaining[0]),
        .I3(\audio_sample_word_buffer_reg[1][0][1]_7 [8]),
        .I4(sample_buffer_current_reg_n_0),
        .I5(\audio_sample_word_buffer_reg[0][0][1]_6 [8]),
        .O(\audio_sample_word_buffer[0][0][1][8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \audio_sample_word_buffer[0][0][1][8]_i_4 
       (.I0(\audio_sample_word_buffer_reg[1][3][1]_12 [8]),
        .I1(\audio_sample_word_buffer_reg[0][3][1]_14 [8]),
        .I2(samples_remaining[0]),
        .I3(\audio_sample_word_buffer_reg[1][2][1]_11 [8]),
        .I4(sample_buffer_current_reg_n_0),
        .I5(\audio_sample_word_buffer_reg[0][2][1]_10 [8]),
        .O(\audio_sample_word_buffer[0][0][1][8]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hED48)) 
    \audio_sample_word_buffer[0][0][1][9]_i_1 
       (.I0(p_0_in),
        .I1(\audio_sample_word_transfer_reg[1]_13 [1]),
        .I2(\audio_sample_word_transfer_control_synchronizer_chain_reg_n_0_[0] ),
        .I3(\audio_sample_word_buffer_reg[0][0][1][9]_i_2_n_0 ),
        .O(\audio_sample_word_transfer_mux[1]_21 [1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \audio_sample_word_buffer[0][0][1][9]_i_3 
       (.I0(\audio_sample_word_buffer_reg[1][1][1]_9 [9]),
        .I1(\audio_sample_word_buffer_reg[0][1][1]_8 [9]),
        .I2(samples_remaining[0]),
        .I3(\audio_sample_word_buffer_reg[1][0][1]_7 [9]),
        .I4(sample_buffer_current_reg_n_0),
        .I5(\audio_sample_word_buffer_reg[0][0][1]_6 [9]),
        .O(\audio_sample_word_buffer[0][0][1][9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \audio_sample_word_buffer[0][0][1][9]_i_4 
       (.I0(\audio_sample_word_buffer_reg[1][3][1]_12 [9]),
        .I1(\audio_sample_word_buffer_reg[0][3][1]_14 [9]),
        .I2(samples_remaining[0]),
        .I3(\audio_sample_word_buffer_reg[1][2][1]_11 [9]),
        .I4(sample_buffer_current_reg_n_0),
        .I5(\audio_sample_word_buffer_reg[0][2][1]_10 [9]),
        .O(\audio_sample_word_buffer[0][0][1][9]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00100020)) 
    \audio_sample_word_buffer[0][1][1][23]_i_1 
       (.I0(p_0_in),
        .I1(samples_remaining[1]),
        .I2(samples_remaining[0]),
        .I3(sample_buffer_current_reg_n_0),
        .I4(\audio_sample_word_transfer_control_synchronizer_chain_reg_n_0_[0] ),
        .O(\audio_sample_word_buffer[0][1][1][23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00040008)) 
    \audio_sample_word_buffer[0][2][1][23]_i_1 
       (.I0(p_0_in),
        .I1(samples_remaining[1]),
        .I2(sample_buffer_current_reg_n_0),
        .I3(samples_remaining[0]),
        .I4(\audio_sample_word_transfer_control_synchronizer_chain_reg_n_0_[0] ),
        .O(\audio_sample_word_buffer[0][2][1][23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00400080)) 
    \audio_sample_word_buffer[0][3][1][23]_i_1 
       (.I0(p_0_in),
        .I1(samples_remaining[1]),
        .I2(samples_remaining[0]),
        .I3(sample_buffer_current_reg_n_0),
        .I4(\audio_sample_word_transfer_control_synchronizer_chain_reg_n_0_[0] ),
        .O(\audio_sample_word_buffer[0][3][1][23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00100020)) 
    \audio_sample_word_buffer[1][0][1][23]_i_1 
       (.I0(p_0_in),
        .I1(samples_remaining[1]),
        .I2(sample_buffer_current_reg_n_0),
        .I3(samples_remaining[0]),
        .I4(\audio_sample_word_transfer_control_synchronizer_chain_reg_n_0_[0] ),
        .O(\audio_sample_word_buffer[1][0][1][23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h10002000)) 
    \audio_sample_word_buffer[1][1][1][23]_i_1 
       (.I0(p_0_in),
        .I1(samples_remaining[1]),
        .I2(sample_buffer_current_reg_n_0),
        .I3(samples_remaining[0]),
        .I4(\audio_sample_word_transfer_control_synchronizer_chain_reg_n_0_[0] ),
        .O(\audio_sample_word_buffer[1][1][1][23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00400080)) 
    \audio_sample_word_buffer[1][2][1][23]_i_1 
       (.I0(p_0_in),
        .I1(samples_remaining[1]),
        .I2(sample_buffer_current_reg_n_0),
        .I3(samples_remaining[0]),
        .I4(\audio_sample_word_transfer_control_synchronizer_chain_reg_n_0_[0] ),
        .O(\audio_sample_word_buffer[1][2][1][23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h40008000)) 
    \audio_sample_word_buffer[1][3][1][23]_i_1 
       (.I0(p_0_in),
        .I1(samples_remaining[1]),
        .I2(sample_buffer_current_reg_n_0),
        .I3(samples_remaining[0]),
        .I4(\audio_sample_word_transfer_control_synchronizer_chain_reg_n_0_[0] ),
        .O(audio_sample_word_buffer));
  FDRE \audio_sample_word_buffer_reg[0][0][0][10] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][0][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [2]),
        .Q(\audio_sample_word_buffer_reg_n_0_[0][0][0][10] ),
        .R(1'b0));
  MUXF7 \audio_sample_word_buffer_reg[0][0][0][10]_i_2 
       (.I0(\audio_sample_word_buffer[0][0][0][10]_i_3_n_0 ),
        .I1(\audio_sample_word_buffer[0][0][0][10]_i_4_n_0 ),
        .O(\audio_sample_word_buffer_reg[0][0][0][10]_i_2_n_0 ),
        .S(samples_remaining[1]));
  FDRE \audio_sample_word_buffer_reg[0][0][0][11] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][0][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [3]),
        .Q(\audio_sample_word_buffer_reg_n_0_[0][0][0][11] ),
        .R(1'b0));
  MUXF7 \audio_sample_word_buffer_reg[0][0][0][11]_i_2 
       (.I0(\audio_sample_word_buffer[0][0][0][11]_i_3_n_0 ),
        .I1(\audio_sample_word_buffer[0][0][0][11]_i_4_n_0 ),
        .O(\audio_sample_word_buffer_reg[0][0][0][11]_i_2_n_0 ),
        .S(samples_remaining[1]));
  FDRE \audio_sample_word_buffer_reg[0][0][0][12] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][0][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [4]),
        .Q(\audio_sample_word_buffer_reg_n_0_[0][0][0][12] ),
        .R(1'b0));
  MUXF7 \audio_sample_word_buffer_reg[0][0][0][12]_i_2 
       (.I0(\audio_sample_word_buffer[0][0][0][12]_i_3_n_0 ),
        .I1(\audio_sample_word_buffer[0][0][0][12]_i_4_n_0 ),
        .O(\audio_sample_word_buffer_reg[0][0][0][12]_i_2_n_0 ),
        .S(samples_remaining[1]));
  FDRE \audio_sample_word_buffer_reg[0][0][0][13] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][0][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [5]),
        .Q(\audio_sample_word_buffer_reg_n_0_[0][0][0][13] ),
        .R(1'b0));
  MUXF7 \audio_sample_word_buffer_reg[0][0][0][13]_i_2 
       (.I0(\audio_sample_word_buffer[0][0][0][13]_i_3_n_0 ),
        .I1(\audio_sample_word_buffer[0][0][0][13]_i_4_n_0 ),
        .O(\audio_sample_word_buffer_reg[0][0][0][13]_i_2_n_0 ),
        .S(samples_remaining[1]));
  FDRE \audio_sample_word_buffer_reg[0][0][0][14] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][0][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [6]),
        .Q(\audio_sample_word_buffer_reg_n_0_[0][0][0][14] ),
        .R(1'b0));
  MUXF7 \audio_sample_word_buffer_reg[0][0][0][14]_i_2 
       (.I0(\audio_sample_word_buffer[0][0][0][14]_i_3_n_0 ),
        .I1(\audio_sample_word_buffer[0][0][0][14]_i_4_n_0 ),
        .O(\audio_sample_word_buffer_reg[0][0][0][14]_i_2_n_0 ),
        .S(samples_remaining[1]));
  FDRE \audio_sample_word_buffer_reg[0][0][0][15] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][0][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [7]),
        .Q(\audio_sample_word_buffer_reg_n_0_[0][0][0][15] ),
        .R(1'b0));
  MUXF7 \audio_sample_word_buffer_reg[0][0][0][15]_i_2 
       (.I0(\audio_sample_word_buffer[0][0][0][15]_i_3_n_0 ),
        .I1(\audio_sample_word_buffer[0][0][0][15]_i_4_n_0 ),
        .O(\audio_sample_word_buffer_reg[0][0][0][15]_i_2_n_0 ),
        .S(samples_remaining[1]));
  FDRE \audio_sample_word_buffer_reg[0][0][0][16] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][0][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [8]),
        .Q(\audio_sample_word_buffer_reg_n_0_[0][0][0][16] ),
        .R(1'b0));
  MUXF7 \audio_sample_word_buffer_reg[0][0][0][16]_i_2 
       (.I0(\audio_sample_word_buffer[0][0][0][16]_i_3_n_0 ),
        .I1(\audio_sample_word_buffer[0][0][0][16]_i_4_n_0 ),
        .O(\audio_sample_word_buffer_reg[0][0][0][16]_i_2_n_0 ),
        .S(samples_remaining[1]));
  FDRE \audio_sample_word_buffer_reg[0][0][0][17] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][0][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [9]),
        .Q(\audio_sample_word_buffer_reg_n_0_[0][0][0][17] ),
        .R(1'b0));
  MUXF7 \audio_sample_word_buffer_reg[0][0][0][17]_i_2 
       (.I0(\audio_sample_word_buffer[0][0][0][17]_i_3_n_0 ),
        .I1(\audio_sample_word_buffer[0][0][0][17]_i_4_n_0 ),
        .O(\audio_sample_word_buffer_reg[0][0][0][17]_i_2_n_0 ),
        .S(samples_remaining[1]));
  FDRE \audio_sample_word_buffer_reg[0][0][0][18] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][0][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [10]),
        .Q(\audio_sample_word_buffer_reg_n_0_[0][0][0][18] ),
        .R(1'b0));
  MUXF7 \audio_sample_word_buffer_reg[0][0][0][18]_i_2 
       (.I0(\audio_sample_word_buffer[0][0][0][18]_i_3_n_0 ),
        .I1(\audio_sample_word_buffer[0][0][0][18]_i_4_n_0 ),
        .O(\audio_sample_word_buffer_reg[0][0][0][18]_i_2_n_0 ),
        .S(samples_remaining[1]));
  FDRE \audio_sample_word_buffer_reg[0][0][0][19] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][0][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [11]),
        .Q(\audio_sample_word_buffer_reg_n_0_[0][0][0][19] ),
        .R(1'b0));
  MUXF7 \audio_sample_word_buffer_reg[0][0][0][19]_i_2 
       (.I0(\audio_sample_word_buffer[0][0][0][19]_i_3_n_0 ),
        .I1(\audio_sample_word_buffer[0][0][0][19]_i_4_n_0 ),
        .O(\audio_sample_word_buffer_reg[0][0][0][19]_i_2_n_0 ),
        .S(samples_remaining[1]));
  FDRE \audio_sample_word_buffer_reg[0][0][0][20] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][0][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [12]),
        .Q(\audio_sample_word_buffer_reg_n_0_[0][0][0][20] ),
        .R(1'b0));
  MUXF7 \audio_sample_word_buffer_reg[0][0][0][20]_i_2 
       (.I0(\audio_sample_word_buffer[0][0][0][20]_i_3_n_0 ),
        .I1(\audio_sample_word_buffer[0][0][0][20]_i_4_n_0 ),
        .O(\audio_sample_word_buffer_reg[0][0][0][20]_i_2_n_0 ),
        .S(samples_remaining[1]));
  FDRE \audio_sample_word_buffer_reg[0][0][0][21] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][0][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [13]),
        .Q(\audio_sample_word_buffer_reg_n_0_[0][0][0][21] ),
        .R(1'b0));
  MUXF7 \audio_sample_word_buffer_reg[0][0][0][21]_i_2 
       (.I0(\audio_sample_word_buffer[0][0][0][21]_i_3_n_0 ),
        .I1(\audio_sample_word_buffer[0][0][0][21]_i_4_n_0 ),
        .O(\audio_sample_word_buffer_reg[0][0][0][21]_i_2_n_0 ),
        .S(samples_remaining[1]));
  FDRE \audio_sample_word_buffer_reg[0][0][0][22] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][0][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [14]),
        .Q(\audio_sample_word_buffer_reg_n_0_[0][0][0][22] ),
        .R(1'b0));
  MUXF7 \audio_sample_word_buffer_reg[0][0][0][22]_i_2 
       (.I0(\audio_sample_word_buffer[0][0][0][22]_i_3_n_0 ),
        .I1(\audio_sample_word_buffer[0][0][0][22]_i_4_n_0 ),
        .O(\audio_sample_word_buffer_reg[0][0][0][22]_i_2_n_0 ),
        .S(samples_remaining[1]));
  FDRE \audio_sample_word_buffer_reg[0][0][0][23] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][0][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [15]),
        .Q(\audio_sample_word_buffer_reg_n_0_[0][0][0][23] ),
        .R(1'b0));
  MUXF7 \audio_sample_word_buffer_reg[0][0][0][23]_i_2 
       (.I0(\audio_sample_word_buffer[0][0][0][23]_i_3_n_0 ),
        .I1(\audio_sample_word_buffer[0][0][0][23]_i_4_n_0 ),
        .O(\audio_sample_word_buffer_reg[0][0][0][23]_i_2_n_0 ),
        .S(samples_remaining[1]));
  FDRE \audio_sample_word_buffer_reg[0][0][0][8] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][0][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [0]),
        .Q(\audio_sample_word_buffer_reg_n_0_[0][0][0][8] ),
        .R(1'b0));
  MUXF7 \audio_sample_word_buffer_reg[0][0][0][8]_i_2 
       (.I0(\audio_sample_word_buffer[0][0][0][8]_i_3_n_0 ),
        .I1(\audio_sample_word_buffer[0][0][0][8]_i_4_n_0 ),
        .O(\audio_sample_word_buffer_reg[0][0][0][8]_i_2_n_0 ),
        .S(samples_remaining[1]));
  FDRE \audio_sample_word_buffer_reg[0][0][0][9] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][0][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [1]),
        .Q(\audio_sample_word_buffer_reg_n_0_[0][0][0][9] ),
        .R(1'b0));
  MUXF7 \audio_sample_word_buffer_reg[0][0][0][9]_i_2 
       (.I0(\audio_sample_word_buffer[0][0][0][9]_i_3_n_0 ),
        .I1(\audio_sample_word_buffer[0][0][0][9]_i_4_n_0 ),
        .O(\audio_sample_word_buffer_reg[0][0][0][9]_i_2_n_0 ),
        .S(samples_remaining[1]));
  FDRE \audio_sample_word_buffer_reg[0][0][1][10] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][0][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [2]),
        .Q(\audio_sample_word_buffer_reg[0][0][1]_6 [10]),
        .R(1'b0));
  MUXF7 \audio_sample_word_buffer_reg[0][0][1][10]_i_2 
       (.I0(\audio_sample_word_buffer[0][0][1][10]_i_3_n_0 ),
        .I1(\audio_sample_word_buffer[0][0][1][10]_i_4_n_0 ),
        .O(\audio_sample_word_buffer_reg[0][0][1][10]_i_2_n_0 ),
        .S(samples_remaining[1]));
  FDRE \audio_sample_word_buffer_reg[0][0][1][11] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][0][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [3]),
        .Q(\audio_sample_word_buffer_reg[0][0][1]_6 [11]),
        .R(1'b0));
  MUXF7 \audio_sample_word_buffer_reg[0][0][1][11]_i_2 
       (.I0(\audio_sample_word_buffer[0][0][1][11]_i_3_n_0 ),
        .I1(\audio_sample_word_buffer[0][0][1][11]_i_4_n_0 ),
        .O(\audio_sample_word_buffer_reg[0][0][1][11]_i_2_n_0 ),
        .S(samples_remaining[1]));
  FDRE \audio_sample_word_buffer_reg[0][0][1][12] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][0][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [4]),
        .Q(\audio_sample_word_buffer_reg[0][0][1]_6 [12]),
        .R(1'b0));
  MUXF7 \audio_sample_word_buffer_reg[0][0][1][12]_i_2 
       (.I0(\audio_sample_word_buffer[0][0][1][12]_i_3_n_0 ),
        .I1(\audio_sample_word_buffer[0][0][1][12]_i_4_n_0 ),
        .O(\audio_sample_word_buffer_reg[0][0][1][12]_i_2_n_0 ),
        .S(samples_remaining[1]));
  FDRE \audio_sample_word_buffer_reg[0][0][1][13] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][0][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [5]),
        .Q(\audio_sample_word_buffer_reg[0][0][1]_6 [13]),
        .R(1'b0));
  MUXF7 \audio_sample_word_buffer_reg[0][0][1][13]_i_2 
       (.I0(\audio_sample_word_buffer[0][0][1][13]_i_3_n_0 ),
        .I1(\audio_sample_word_buffer[0][0][1][13]_i_4_n_0 ),
        .O(\audio_sample_word_buffer_reg[0][0][1][13]_i_2_n_0 ),
        .S(samples_remaining[1]));
  FDRE \audio_sample_word_buffer_reg[0][0][1][14] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][0][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [6]),
        .Q(\audio_sample_word_buffer_reg[0][0][1]_6 [14]),
        .R(1'b0));
  MUXF7 \audio_sample_word_buffer_reg[0][0][1][14]_i_2 
       (.I0(\audio_sample_word_buffer[0][0][1][14]_i_3_n_0 ),
        .I1(\audio_sample_word_buffer[0][0][1][14]_i_4_n_0 ),
        .O(\audio_sample_word_buffer_reg[0][0][1][14]_i_2_n_0 ),
        .S(samples_remaining[1]));
  FDRE \audio_sample_word_buffer_reg[0][0][1][15] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][0][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [7]),
        .Q(\audio_sample_word_buffer_reg[0][0][1]_6 [15]),
        .R(1'b0));
  MUXF7 \audio_sample_word_buffer_reg[0][0][1][15]_i_2 
       (.I0(\audio_sample_word_buffer[0][0][1][15]_i_3_n_0 ),
        .I1(\audio_sample_word_buffer[0][0][1][15]_i_4_n_0 ),
        .O(\audio_sample_word_buffer_reg[0][0][1][15]_i_2_n_0 ),
        .S(samples_remaining[1]));
  FDRE \audio_sample_word_buffer_reg[0][0][1][16] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][0][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [8]),
        .Q(\audio_sample_word_buffer_reg[0][0][1]_6 [16]),
        .R(1'b0));
  MUXF7 \audio_sample_word_buffer_reg[0][0][1][16]_i_2 
       (.I0(\audio_sample_word_buffer[0][0][1][16]_i_3_n_0 ),
        .I1(\audio_sample_word_buffer[0][0][1][16]_i_4_n_0 ),
        .O(\audio_sample_word_buffer_reg[0][0][1][16]_i_2_n_0 ),
        .S(samples_remaining[1]));
  FDRE \audio_sample_word_buffer_reg[0][0][1][17] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][0][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [9]),
        .Q(\audio_sample_word_buffer_reg[0][0][1]_6 [17]),
        .R(1'b0));
  MUXF7 \audio_sample_word_buffer_reg[0][0][1][17]_i_2 
       (.I0(\audio_sample_word_buffer[0][0][1][17]_i_3_n_0 ),
        .I1(\audio_sample_word_buffer[0][0][1][17]_i_4_n_0 ),
        .O(\audio_sample_word_buffer_reg[0][0][1][17]_i_2_n_0 ),
        .S(samples_remaining[1]));
  FDRE \audio_sample_word_buffer_reg[0][0][1][18] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][0][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [10]),
        .Q(\audio_sample_word_buffer_reg[0][0][1]_6 [18]),
        .R(1'b0));
  MUXF7 \audio_sample_word_buffer_reg[0][0][1][18]_i_2 
       (.I0(\audio_sample_word_buffer[0][0][1][18]_i_3_n_0 ),
        .I1(\audio_sample_word_buffer[0][0][1][18]_i_4_n_0 ),
        .O(\audio_sample_word_buffer_reg[0][0][1][18]_i_2_n_0 ),
        .S(samples_remaining[1]));
  FDRE \audio_sample_word_buffer_reg[0][0][1][19] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][0][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [11]),
        .Q(\audio_sample_word_buffer_reg[0][0][1]_6 [19]),
        .R(1'b0));
  MUXF7 \audio_sample_word_buffer_reg[0][0][1][19]_i_2 
       (.I0(\audio_sample_word_buffer[0][0][1][19]_i_3_n_0 ),
        .I1(\audio_sample_word_buffer[0][0][1][19]_i_4_n_0 ),
        .O(\audio_sample_word_buffer_reg[0][0][1][19]_i_2_n_0 ),
        .S(samples_remaining[1]));
  FDRE \audio_sample_word_buffer_reg[0][0][1][20] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][0][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [12]),
        .Q(\audio_sample_word_buffer_reg[0][0][1]_6 [20]),
        .R(1'b0));
  MUXF7 \audio_sample_word_buffer_reg[0][0][1][20]_i_2 
       (.I0(\audio_sample_word_buffer[0][0][1][20]_i_3_n_0 ),
        .I1(\audio_sample_word_buffer[0][0][1][20]_i_4_n_0 ),
        .O(\audio_sample_word_buffer_reg[0][0][1][20]_i_2_n_0 ),
        .S(samples_remaining[1]));
  FDRE \audio_sample_word_buffer_reg[0][0][1][21] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][0][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [13]),
        .Q(\audio_sample_word_buffer_reg[0][0][1]_6 [21]),
        .R(1'b0));
  MUXF7 \audio_sample_word_buffer_reg[0][0][1][21]_i_2 
       (.I0(\audio_sample_word_buffer[0][0][1][21]_i_3_n_0 ),
        .I1(\audio_sample_word_buffer[0][0][1][21]_i_4_n_0 ),
        .O(\audio_sample_word_buffer_reg[0][0][1][21]_i_2_n_0 ),
        .S(samples_remaining[1]));
  FDRE \audio_sample_word_buffer_reg[0][0][1][22] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][0][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [14]),
        .Q(\audio_sample_word_buffer_reg[0][0][1]_6 [22]),
        .R(1'b0));
  MUXF7 \audio_sample_word_buffer_reg[0][0][1][22]_i_2 
       (.I0(\audio_sample_word_buffer[0][0][1][22]_i_3_n_0 ),
        .I1(\audio_sample_word_buffer[0][0][1][22]_i_4_n_0 ),
        .O(\audio_sample_word_buffer_reg[0][0][1][22]_i_2_n_0 ),
        .S(samples_remaining[1]));
  FDRE \audio_sample_word_buffer_reg[0][0][1][23] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][0][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [15]),
        .Q(\audio_sample_word_buffer_reg[0][0][1]_6 [23]),
        .R(1'b0));
  MUXF7 \audio_sample_word_buffer_reg[0][0][1][23]_i_3 
       (.I0(\audio_sample_word_buffer[0][0][1][23]_i_4_n_0 ),
        .I1(\audio_sample_word_buffer[0][0][1][23]_i_5_n_0 ),
        .O(\audio_sample_word_buffer_reg[0][0][1][23]_i_3_n_0 ),
        .S(samples_remaining[1]));
  FDRE \audio_sample_word_buffer_reg[0][0][1][8] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][0][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [0]),
        .Q(\audio_sample_word_buffer_reg[0][0][1]_6 [8]),
        .R(1'b0));
  MUXF7 \audio_sample_word_buffer_reg[0][0][1][8]_i_2 
       (.I0(\audio_sample_word_buffer[0][0][1][8]_i_3_n_0 ),
        .I1(\audio_sample_word_buffer[0][0][1][8]_i_4_n_0 ),
        .O(\audio_sample_word_buffer_reg[0][0][1][8]_i_2_n_0 ),
        .S(samples_remaining[1]));
  FDRE \audio_sample_word_buffer_reg[0][0][1][9] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][0][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [1]),
        .Q(\audio_sample_word_buffer_reg[0][0][1]_6 [9]),
        .R(1'b0));
  MUXF7 \audio_sample_word_buffer_reg[0][0][1][9]_i_2 
       (.I0(\audio_sample_word_buffer[0][0][1][9]_i_3_n_0 ),
        .I1(\audio_sample_word_buffer[0][0][1][9]_i_4_n_0 ),
        .O(\audio_sample_word_buffer_reg[0][0][1][9]_i_2_n_0 ),
        .S(samples_remaining[1]));
  FDRE \audio_sample_word_buffer_reg[0][1][0][10] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][1][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [2]),
        .Q(\audio_sample_word_buffer_reg_n_0_[0][1][0][10] ),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][1][0][11] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][1][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [3]),
        .Q(\audio_sample_word_buffer_reg_n_0_[0][1][0][11] ),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][1][0][12] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][1][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [4]),
        .Q(\audio_sample_word_buffer_reg_n_0_[0][1][0][12] ),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][1][0][13] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][1][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [5]),
        .Q(\audio_sample_word_buffer_reg_n_0_[0][1][0][13] ),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][1][0][14] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][1][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [6]),
        .Q(\audio_sample_word_buffer_reg_n_0_[0][1][0][14] ),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][1][0][15] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][1][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [7]),
        .Q(\audio_sample_word_buffer_reg_n_0_[0][1][0][15] ),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][1][0][16] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][1][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [8]),
        .Q(\audio_sample_word_buffer_reg_n_0_[0][1][0][16] ),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][1][0][17] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][1][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [9]),
        .Q(\audio_sample_word_buffer_reg_n_0_[0][1][0][17] ),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][1][0][18] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][1][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [10]),
        .Q(\audio_sample_word_buffer_reg_n_0_[0][1][0][18] ),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][1][0][19] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][1][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [11]),
        .Q(\audio_sample_word_buffer_reg_n_0_[0][1][0][19] ),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][1][0][20] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][1][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [12]),
        .Q(\audio_sample_word_buffer_reg_n_0_[0][1][0][20] ),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][1][0][21] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][1][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [13]),
        .Q(\audio_sample_word_buffer_reg_n_0_[0][1][0][21] ),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][1][0][22] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][1][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [14]),
        .Q(\audio_sample_word_buffer_reg_n_0_[0][1][0][22] ),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][1][0][23] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][1][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [15]),
        .Q(\audio_sample_word_buffer_reg_n_0_[0][1][0][23] ),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][1][0][8] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][1][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [0]),
        .Q(\audio_sample_word_buffer_reg_n_0_[0][1][0][8] ),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][1][0][9] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][1][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [1]),
        .Q(\audio_sample_word_buffer_reg_n_0_[0][1][0][9] ),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][1][1][10] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][1][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [2]),
        .Q(\audio_sample_word_buffer_reg[0][1][1]_8 [10]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][1][1][11] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][1][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [3]),
        .Q(\audio_sample_word_buffer_reg[0][1][1]_8 [11]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][1][1][12] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][1][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [4]),
        .Q(\audio_sample_word_buffer_reg[0][1][1]_8 [12]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][1][1][13] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][1][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [5]),
        .Q(\audio_sample_word_buffer_reg[0][1][1]_8 [13]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][1][1][14] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][1][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [6]),
        .Q(\audio_sample_word_buffer_reg[0][1][1]_8 [14]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][1][1][15] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][1][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [7]),
        .Q(\audio_sample_word_buffer_reg[0][1][1]_8 [15]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][1][1][16] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][1][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [8]),
        .Q(\audio_sample_word_buffer_reg[0][1][1]_8 [16]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][1][1][17] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][1][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [9]),
        .Q(\audio_sample_word_buffer_reg[0][1][1]_8 [17]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][1][1][18] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][1][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [10]),
        .Q(\audio_sample_word_buffer_reg[0][1][1]_8 [18]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][1][1][19] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][1][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [11]),
        .Q(\audio_sample_word_buffer_reg[0][1][1]_8 [19]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][1][1][20] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][1][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [12]),
        .Q(\audio_sample_word_buffer_reg[0][1][1]_8 [20]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][1][1][21] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][1][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [13]),
        .Q(\audio_sample_word_buffer_reg[0][1][1]_8 [21]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][1][1][22] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][1][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [14]),
        .Q(\audio_sample_word_buffer_reg[0][1][1]_8 [22]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][1][1][23] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][1][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [15]),
        .Q(\audio_sample_word_buffer_reg[0][1][1]_8 [23]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][1][1][8] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][1][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [0]),
        .Q(\audio_sample_word_buffer_reg[0][1][1]_8 [8]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][1][1][9] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][1][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [1]),
        .Q(\audio_sample_word_buffer_reg[0][1][1]_8 [9]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][2][0][10] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][2][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [2]),
        .Q(\audio_sample_word_buffer_reg_n_0_[0][2][0][10] ),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][2][0][11] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][2][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [3]),
        .Q(\audio_sample_word_buffer_reg_n_0_[0][2][0][11] ),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][2][0][12] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][2][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [4]),
        .Q(\audio_sample_word_buffer_reg_n_0_[0][2][0][12] ),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][2][0][13] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][2][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [5]),
        .Q(\audio_sample_word_buffer_reg_n_0_[0][2][0][13] ),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][2][0][14] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][2][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [6]),
        .Q(\audio_sample_word_buffer_reg_n_0_[0][2][0][14] ),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][2][0][15] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][2][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [7]),
        .Q(\audio_sample_word_buffer_reg_n_0_[0][2][0][15] ),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][2][0][16] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][2][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [8]),
        .Q(\audio_sample_word_buffer_reg_n_0_[0][2][0][16] ),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][2][0][17] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][2][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [9]),
        .Q(\audio_sample_word_buffer_reg_n_0_[0][2][0][17] ),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][2][0][18] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][2][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [10]),
        .Q(\audio_sample_word_buffer_reg_n_0_[0][2][0][18] ),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][2][0][19] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][2][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [11]),
        .Q(\audio_sample_word_buffer_reg_n_0_[0][2][0][19] ),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][2][0][20] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][2][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [12]),
        .Q(\audio_sample_word_buffer_reg_n_0_[0][2][0][20] ),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][2][0][21] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][2][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [13]),
        .Q(\audio_sample_word_buffer_reg_n_0_[0][2][0][21] ),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][2][0][22] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][2][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [14]),
        .Q(\audio_sample_word_buffer_reg_n_0_[0][2][0][22] ),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][2][0][23] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][2][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [15]),
        .Q(\audio_sample_word_buffer_reg_n_0_[0][2][0][23] ),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][2][0][8] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][2][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [0]),
        .Q(\audio_sample_word_buffer_reg_n_0_[0][2][0][8] ),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][2][0][9] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][2][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [1]),
        .Q(\audio_sample_word_buffer_reg_n_0_[0][2][0][9] ),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][2][1][10] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][2][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [2]),
        .Q(\audio_sample_word_buffer_reg[0][2][1]_10 [10]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][2][1][11] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][2][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [3]),
        .Q(\audio_sample_word_buffer_reg[0][2][1]_10 [11]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][2][1][12] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][2][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [4]),
        .Q(\audio_sample_word_buffer_reg[0][2][1]_10 [12]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][2][1][13] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][2][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [5]),
        .Q(\audio_sample_word_buffer_reg[0][2][1]_10 [13]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][2][1][14] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][2][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [6]),
        .Q(\audio_sample_word_buffer_reg[0][2][1]_10 [14]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][2][1][15] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][2][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [7]),
        .Q(\audio_sample_word_buffer_reg[0][2][1]_10 [15]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][2][1][16] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][2][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [8]),
        .Q(\audio_sample_word_buffer_reg[0][2][1]_10 [16]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][2][1][17] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][2][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [9]),
        .Q(\audio_sample_word_buffer_reg[0][2][1]_10 [17]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][2][1][18] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][2][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [10]),
        .Q(\audio_sample_word_buffer_reg[0][2][1]_10 [18]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][2][1][19] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][2][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [11]),
        .Q(\audio_sample_word_buffer_reg[0][2][1]_10 [19]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][2][1][20] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][2][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [12]),
        .Q(\audio_sample_word_buffer_reg[0][2][1]_10 [20]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][2][1][21] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][2][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [13]),
        .Q(\audio_sample_word_buffer_reg[0][2][1]_10 [21]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][2][1][22] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][2][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [14]),
        .Q(\audio_sample_word_buffer_reg[0][2][1]_10 [22]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][2][1][23] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][2][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [15]),
        .Q(\audio_sample_word_buffer_reg[0][2][1]_10 [23]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][2][1][8] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][2][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [0]),
        .Q(\audio_sample_word_buffer_reg[0][2][1]_10 [8]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][2][1][9] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][2][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [1]),
        .Q(\audio_sample_word_buffer_reg[0][2][1]_10 [9]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][3][0][10] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][3][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [2]),
        .Q(\audio_sample_word_buffer_reg[0][3][0]_20 [10]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][3][0][11] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][3][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [3]),
        .Q(\audio_sample_word_buffer_reg[0][3][0]_20 [11]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][3][0][12] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][3][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [4]),
        .Q(\audio_sample_word_buffer_reg[0][3][0]_20 [12]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][3][0][13] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][3][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [5]),
        .Q(\audio_sample_word_buffer_reg[0][3][0]_20 [13]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][3][0][14] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][3][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [6]),
        .Q(\audio_sample_word_buffer_reg[0][3][0]_20 [14]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][3][0][15] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][3][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [7]),
        .Q(\audio_sample_word_buffer_reg[0][3][0]_20 [15]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][3][0][16] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][3][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [8]),
        .Q(\audio_sample_word_buffer_reg[0][3][0]_20 [16]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][3][0][17] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][3][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [9]),
        .Q(\audio_sample_word_buffer_reg[0][3][0]_20 [17]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][3][0][18] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][3][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [10]),
        .Q(\audio_sample_word_buffer_reg[0][3][0]_20 [18]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][3][0][19] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][3][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [11]),
        .Q(\audio_sample_word_buffer_reg[0][3][0]_20 [19]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][3][0][20] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][3][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [12]),
        .Q(\audio_sample_word_buffer_reg[0][3][0]_20 [20]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][3][0][21] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][3][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [13]),
        .Q(\audio_sample_word_buffer_reg[0][3][0]_20 [21]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][3][0][22] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][3][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [14]),
        .Q(\audio_sample_word_buffer_reg[0][3][0]_20 [22]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][3][0][23] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][3][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [15]),
        .Q(\audio_sample_word_buffer_reg[0][3][0]_20 [23]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][3][0][8] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][3][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [0]),
        .Q(\audio_sample_word_buffer_reg[0][3][0]_20 [8]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][3][0][9] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][3][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [1]),
        .Q(\audio_sample_word_buffer_reg[0][3][0]_20 [9]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][3][1][10] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][3][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [2]),
        .Q(\audio_sample_word_buffer_reg[0][3][1]_14 [10]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][3][1][11] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][3][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [3]),
        .Q(\audio_sample_word_buffer_reg[0][3][1]_14 [11]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][3][1][12] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][3][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [4]),
        .Q(\audio_sample_word_buffer_reg[0][3][1]_14 [12]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][3][1][13] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][3][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [5]),
        .Q(\audio_sample_word_buffer_reg[0][3][1]_14 [13]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][3][1][14] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][3][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [6]),
        .Q(\audio_sample_word_buffer_reg[0][3][1]_14 [14]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][3][1][15] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][3][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [7]),
        .Q(\audio_sample_word_buffer_reg[0][3][1]_14 [15]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][3][1][16] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][3][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [8]),
        .Q(\audio_sample_word_buffer_reg[0][3][1]_14 [16]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][3][1][17] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][3][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [9]),
        .Q(\audio_sample_word_buffer_reg[0][3][1]_14 [17]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][3][1][18] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][3][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [10]),
        .Q(\audio_sample_word_buffer_reg[0][3][1]_14 [18]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][3][1][19] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][3][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [11]),
        .Q(\audio_sample_word_buffer_reg[0][3][1]_14 [19]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][3][1][20] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][3][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [12]),
        .Q(\audio_sample_word_buffer_reg[0][3][1]_14 [20]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][3][1][21] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][3][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [13]),
        .Q(\audio_sample_word_buffer_reg[0][3][1]_14 [21]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][3][1][22] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][3][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [14]),
        .Q(\audio_sample_word_buffer_reg[0][3][1]_14 [22]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][3][1][23] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][3][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [15]),
        .Q(\audio_sample_word_buffer_reg[0][3][1]_14 [23]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][3][1][8] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][3][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [0]),
        .Q(\audio_sample_word_buffer_reg[0][3][1]_14 [8]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[0][3][1][9] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[0][3][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [1]),
        .Q(\audio_sample_word_buffer_reg[0][3][1]_14 [9]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][0][0][10] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][0][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [2]),
        .Q(\audio_sample_word_buffer_reg[1][0][0]_15 [10]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][0][0][11] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][0][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [3]),
        .Q(\audio_sample_word_buffer_reg[1][0][0]_15 [11]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][0][0][12] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][0][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [4]),
        .Q(\audio_sample_word_buffer_reg[1][0][0]_15 [12]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][0][0][13] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][0][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [5]),
        .Q(\audio_sample_word_buffer_reg[1][0][0]_15 [13]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][0][0][14] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][0][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [6]),
        .Q(\audio_sample_word_buffer_reg[1][0][0]_15 [14]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][0][0][15] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][0][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [7]),
        .Q(\audio_sample_word_buffer_reg[1][0][0]_15 [15]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][0][0][16] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][0][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [8]),
        .Q(\audio_sample_word_buffer_reg[1][0][0]_15 [16]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][0][0][17] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][0][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [9]),
        .Q(\audio_sample_word_buffer_reg[1][0][0]_15 [17]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][0][0][18] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][0][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [10]),
        .Q(\audio_sample_word_buffer_reg[1][0][0]_15 [18]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][0][0][19] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][0][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [11]),
        .Q(\audio_sample_word_buffer_reg[1][0][0]_15 [19]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][0][0][20] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][0][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [12]),
        .Q(\audio_sample_word_buffer_reg[1][0][0]_15 [20]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][0][0][21] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][0][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [13]),
        .Q(\audio_sample_word_buffer_reg[1][0][0]_15 [21]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][0][0][22] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][0][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [14]),
        .Q(\audio_sample_word_buffer_reg[1][0][0]_15 [22]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][0][0][23] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][0][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [15]),
        .Q(\audio_sample_word_buffer_reg[1][0][0]_15 [23]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][0][0][8] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][0][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [0]),
        .Q(\audio_sample_word_buffer_reg[1][0][0]_15 [8]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][0][0][9] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][0][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [1]),
        .Q(\audio_sample_word_buffer_reg[1][0][0]_15 [9]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][0][1][10] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][0][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [2]),
        .Q(\audio_sample_word_buffer_reg[1][0][1]_7 [10]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][0][1][11] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][0][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [3]),
        .Q(\audio_sample_word_buffer_reg[1][0][1]_7 [11]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][0][1][12] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][0][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [4]),
        .Q(\audio_sample_word_buffer_reg[1][0][1]_7 [12]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][0][1][13] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][0][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [5]),
        .Q(\audio_sample_word_buffer_reg[1][0][1]_7 [13]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][0][1][14] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][0][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [6]),
        .Q(\audio_sample_word_buffer_reg[1][0][1]_7 [14]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][0][1][15] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][0][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [7]),
        .Q(\audio_sample_word_buffer_reg[1][0][1]_7 [15]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][0][1][16] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][0][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [8]),
        .Q(\audio_sample_word_buffer_reg[1][0][1]_7 [16]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][0][1][17] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][0][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [9]),
        .Q(\audio_sample_word_buffer_reg[1][0][1]_7 [17]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][0][1][18] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][0][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [10]),
        .Q(\audio_sample_word_buffer_reg[1][0][1]_7 [18]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][0][1][19] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][0][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [11]),
        .Q(\audio_sample_word_buffer_reg[1][0][1]_7 [19]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][0][1][20] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][0][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [12]),
        .Q(\audio_sample_word_buffer_reg[1][0][1]_7 [20]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][0][1][21] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][0][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [13]),
        .Q(\audio_sample_word_buffer_reg[1][0][1]_7 [21]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][0][1][22] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][0][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [14]),
        .Q(\audio_sample_word_buffer_reg[1][0][1]_7 [22]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][0][1][23] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][0][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [15]),
        .Q(\audio_sample_word_buffer_reg[1][0][1]_7 [23]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][0][1][8] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][0][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [0]),
        .Q(\audio_sample_word_buffer_reg[1][0][1]_7 [8]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][0][1][9] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][0][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [1]),
        .Q(\audio_sample_word_buffer_reg[1][0][1]_7 [9]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][1][0][10] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][1][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [2]),
        .Q(\audio_sample_word_buffer_reg[1][1][0]_16 [10]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][1][0][11] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][1][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [3]),
        .Q(\audio_sample_word_buffer_reg[1][1][0]_16 [11]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][1][0][12] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][1][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [4]),
        .Q(\audio_sample_word_buffer_reg[1][1][0]_16 [12]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][1][0][13] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][1][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [5]),
        .Q(\audio_sample_word_buffer_reg[1][1][0]_16 [13]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][1][0][14] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][1][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [6]),
        .Q(\audio_sample_word_buffer_reg[1][1][0]_16 [14]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][1][0][15] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][1][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [7]),
        .Q(\audio_sample_word_buffer_reg[1][1][0]_16 [15]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][1][0][16] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][1][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [8]),
        .Q(\audio_sample_word_buffer_reg[1][1][0]_16 [16]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][1][0][17] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][1][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [9]),
        .Q(\audio_sample_word_buffer_reg[1][1][0]_16 [17]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][1][0][18] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][1][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [10]),
        .Q(\audio_sample_word_buffer_reg[1][1][0]_16 [18]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][1][0][19] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][1][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [11]),
        .Q(\audio_sample_word_buffer_reg[1][1][0]_16 [19]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][1][0][20] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][1][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [12]),
        .Q(\audio_sample_word_buffer_reg[1][1][0]_16 [20]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][1][0][21] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][1][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [13]),
        .Q(\audio_sample_word_buffer_reg[1][1][0]_16 [21]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][1][0][22] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][1][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [14]),
        .Q(\audio_sample_word_buffer_reg[1][1][0]_16 [22]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][1][0][23] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][1][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [15]),
        .Q(\audio_sample_word_buffer_reg[1][1][0]_16 [23]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][1][0][8] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][1][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [0]),
        .Q(\audio_sample_word_buffer_reg[1][1][0]_16 [8]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][1][0][9] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][1][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [1]),
        .Q(\audio_sample_word_buffer_reg[1][1][0]_16 [9]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][1][1][10] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][1][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [2]),
        .Q(\audio_sample_word_buffer_reg[1][1][1]_9 [10]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][1][1][11] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][1][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [3]),
        .Q(\audio_sample_word_buffer_reg[1][1][1]_9 [11]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][1][1][12] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][1][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [4]),
        .Q(\audio_sample_word_buffer_reg[1][1][1]_9 [12]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][1][1][13] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][1][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [5]),
        .Q(\audio_sample_word_buffer_reg[1][1][1]_9 [13]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][1][1][14] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][1][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [6]),
        .Q(\audio_sample_word_buffer_reg[1][1][1]_9 [14]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][1][1][15] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][1][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [7]),
        .Q(\audio_sample_word_buffer_reg[1][1][1]_9 [15]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][1][1][16] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][1][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [8]),
        .Q(\audio_sample_word_buffer_reg[1][1][1]_9 [16]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][1][1][17] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][1][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [9]),
        .Q(\audio_sample_word_buffer_reg[1][1][1]_9 [17]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][1][1][18] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][1][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [10]),
        .Q(\audio_sample_word_buffer_reg[1][1][1]_9 [18]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][1][1][19] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][1][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [11]),
        .Q(\audio_sample_word_buffer_reg[1][1][1]_9 [19]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][1][1][20] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][1][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [12]),
        .Q(\audio_sample_word_buffer_reg[1][1][1]_9 [20]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][1][1][21] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][1][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [13]),
        .Q(\audio_sample_word_buffer_reg[1][1][1]_9 [21]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][1][1][22] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][1][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [14]),
        .Q(\audio_sample_word_buffer_reg[1][1][1]_9 [22]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][1][1][23] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][1][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [15]),
        .Q(\audio_sample_word_buffer_reg[1][1][1]_9 [23]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][1][1][8] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][1][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [0]),
        .Q(\audio_sample_word_buffer_reg[1][1][1]_9 [8]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][1][1][9] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][1][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [1]),
        .Q(\audio_sample_word_buffer_reg[1][1][1]_9 [9]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][2][0][10] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][2][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [2]),
        .Q(\audio_sample_word_buffer_reg[1][2][0]_17 [10]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][2][0][11] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][2][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [3]),
        .Q(\audio_sample_word_buffer_reg[1][2][0]_17 [11]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][2][0][12] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][2][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [4]),
        .Q(\audio_sample_word_buffer_reg[1][2][0]_17 [12]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][2][0][13] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][2][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [5]),
        .Q(\audio_sample_word_buffer_reg[1][2][0]_17 [13]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][2][0][14] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][2][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [6]),
        .Q(\audio_sample_word_buffer_reg[1][2][0]_17 [14]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][2][0][15] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][2][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [7]),
        .Q(\audio_sample_word_buffer_reg[1][2][0]_17 [15]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][2][0][16] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][2][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [8]),
        .Q(\audio_sample_word_buffer_reg[1][2][0]_17 [16]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][2][0][17] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][2][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [9]),
        .Q(\audio_sample_word_buffer_reg[1][2][0]_17 [17]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][2][0][18] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][2][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [10]),
        .Q(\audio_sample_word_buffer_reg[1][2][0]_17 [18]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][2][0][19] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][2][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [11]),
        .Q(\audio_sample_word_buffer_reg[1][2][0]_17 [19]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][2][0][20] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][2][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [12]),
        .Q(\audio_sample_word_buffer_reg[1][2][0]_17 [20]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][2][0][21] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][2][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [13]),
        .Q(\audio_sample_word_buffer_reg[1][2][0]_17 [21]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][2][0][22] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][2][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [14]),
        .Q(\audio_sample_word_buffer_reg[1][2][0]_17 [22]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][2][0][23] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][2][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [15]),
        .Q(\audio_sample_word_buffer_reg[1][2][0]_17 [23]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][2][0][8] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][2][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [0]),
        .Q(\audio_sample_word_buffer_reg[1][2][0]_17 [8]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][2][0][9] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][2][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[0]_22 [1]),
        .Q(\audio_sample_word_buffer_reg[1][2][0]_17 [9]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][2][1][10] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][2][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [2]),
        .Q(\audio_sample_word_buffer_reg[1][2][1]_11 [10]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][2][1][11] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][2][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [3]),
        .Q(\audio_sample_word_buffer_reg[1][2][1]_11 [11]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][2][1][12] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][2][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [4]),
        .Q(\audio_sample_word_buffer_reg[1][2][1]_11 [12]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][2][1][13] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][2][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [5]),
        .Q(\audio_sample_word_buffer_reg[1][2][1]_11 [13]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][2][1][14] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][2][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [6]),
        .Q(\audio_sample_word_buffer_reg[1][2][1]_11 [14]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][2][1][15] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][2][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [7]),
        .Q(\audio_sample_word_buffer_reg[1][2][1]_11 [15]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][2][1][16] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][2][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [8]),
        .Q(\audio_sample_word_buffer_reg[1][2][1]_11 [16]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][2][1][17] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][2][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [9]),
        .Q(\audio_sample_word_buffer_reg[1][2][1]_11 [17]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][2][1][18] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][2][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [10]),
        .Q(\audio_sample_word_buffer_reg[1][2][1]_11 [18]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][2][1][19] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][2][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [11]),
        .Q(\audio_sample_word_buffer_reg[1][2][1]_11 [19]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][2][1][20] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][2][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [12]),
        .Q(\audio_sample_word_buffer_reg[1][2][1]_11 [20]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][2][1][21] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][2][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [13]),
        .Q(\audio_sample_word_buffer_reg[1][2][1]_11 [21]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][2][1][22] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][2][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [14]),
        .Q(\audio_sample_word_buffer_reg[1][2][1]_11 [22]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][2][1][23] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][2][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [15]),
        .Q(\audio_sample_word_buffer_reg[1][2][1]_11 [23]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][2][1][8] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][2][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [0]),
        .Q(\audio_sample_word_buffer_reg[1][2][1]_11 [8]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][2][1][9] 
       (.C(pixelClock),
        .CE(\audio_sample_word_buffer[1][2][1][23]_i_1_n_0 ),
        .D(\audio_sample_word_transfer_mux[1]_21 [1]),
        .Q(\audio_sample_word_buffer_reg[1][2][1]_11 [9]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][3][0][10] 
       (.C(pixelClock),
        .CE(audio_sample_word_buffer),
        .D(\audio_sample_word_transfer_mux[0]_22 [2]),
        .Q(\audio_sample_word_buffer_reg[1][3][0]_18 [10]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][3][0][11] 
       (.C(pixelClock),
        .CE(audio_sample_word_buffer),
        .D(\audio_sample_word_transfer_mux[0]_22 [3]),
        .Q(\audio_sample_word_buffer_reg[1][3][0]_18 [11]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][3][0][12] 
       (.C(pixelClock),
        .CE(audio_sample_word_buffer),
        .D(\audio_sample_word_transfer_mux[0]_22 [4]),
        .Q(\audio_sample_word_buffer_reg[1][3][0]_18 [12]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][3][0][13] 
       (.C(pixelClock),
        .CE(audio_sample_word_buffer),
        .D(\audio_sample_word_transfer_mux[0]_22 [5]),
        .Q(\audio_sample_word_buffer_reg[1][3][0]_18 [13]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][3][0][14] 
       (.C(pixelClock),
        .CE(audio_sample_word_buffer),
        .D(\audio_sample_word_transfer_mux[0]_22 [6]),
        .Q(\audio_sample_word_buffer_reg[1][3][0]_18 [14]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][3][0][15] 
       (.C(pixelClock),
        .CE(audio_sample_word_buffer),
        .D(\audio_sample_word_transfer_mux[0]_22 [7]),
        .Q(\audio_sample_word_buffer_reg[1][3][0]_18 [15]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][3][0][16] 
       (.C(pixelClock),
        .CE(audio_sample_word_buffer),
        .D(\audio_sample_word_transfer_mux[0]_22 [8]),
        .Q(\audio_sample_word_buffer_reg[1][3][0]_18 [16]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][3][0][17] 
       (.C(pixelClock),
        .CE(audio_sample_word_buffer),
        .D(\audio_sample_word_transfer_mux[0]_22 [9]),
        .Q(\audio_sample_word_buffer_reg[1][3][0]_18 [17]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][3][0][18] 
       (.C(pixelClock),
        .CE(audio_sample_word_buffer),
        .D(\audio_sample_word_transfer_mux[0]_22 [10]),
        .Q(\audio_sample_word_buffer_reg[1][3][0]_18 [18]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][3][0][19] 
       (.C(pixelClock),
        .CE(audio_sample_word_buffer),
        .D(\audio_sample_word_transfer_mux[0]_22 [11]),
        .Q(\audio_sample_word_buffer_reg[1][3][0]_18 [19]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][3][0][20] 
       (.C(pixelClock),
        .CE(audio_sample_word_buffer),
        .D(\audio_sample_word_transfer_mux[0]_22 [12]),
        .Q(\audio_sample_word_buffer_reg[1][3][0]_18 [20]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][3][0][21] 
       (.C(pixelClock),
        .CE(audio_sample_word_buffer),
        .D(\audio_sample_word_transfer_mux[0]_22 [13]),
        .Q(\audio_sample_word_buffer_reg[1][3][0]_18 [21]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][3][0][22] 
       (.C(pixelClock),
        .CE(audio_sample_word_buffer),
        .D(\audio_sample_word_transfer_mux[0]_22 [14]),
        .Q(\audio_sample_word_buffer_reg[1][3][0]_18 [22]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][3][0][23] 
       (.C(pixelClock),
        .CE(audio_sample_word_buffer),
        .D(\audio_sample_word_transfer_mux[0]_22 [15]),
        .Q(\audio_sample_word_buffer_reg[1][3][0]_18 [23]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][3][0][8] 
       (.C(pixelClock),
        .CE(audio_sample_word_buffer),
        .D(\audio_sample_word_transfer_mux[0]_22 [0]),
        .Q(\audio_sample_word_buffer_reg[1][3][0]_18 [8]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][3][0][9] 
       (.C(pixelClock),
        .CE(audio_sample_word_buffer),
        .D(\audio_sample_word_transfer_mux[0]_22 [1]),
        .Q(\audio_sample_word_buffer_reg[1][3][0]_18 [9]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][3][1][10] 
       (.C(pixelClock),
        .CE(audio_sample_word_buffer),
        .D(\audio_sample_word_transfer_mux[1]_21 [2]),
        .Q(\audio_sample_word_buffer_reg[1][3][1]_12 [10]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][3][1][11] 
       (.C(pixelClock),
        .CE(audio_sample_word_buffer),
        .D(\audio_sample_word_transfer_mux[1]_21 [3]),
        .Q(\audio_sample_word_buffer_reg[1][3][1]_12 [11]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][3][1][12] 
       (.C(pixelClock),
        .CE(audio_sample_word_buffer),
        .D(\audio_sample_word_transfer_mux[1]_21 [4]),
        .Q(\audio_sample_word_buffer_reg[1][3][1]_12 [12]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][3][1][13] 
       (.C(pixelClock),
        .CE(audio_sample_word_buffer),
        .D(\audio_sample_word_transfer_mux[1]_21 [5]),
        .Q(\audio_sample_word_buffer_reg[1][3][1]_12 [13]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][3][1][14] 
       (.C(pixelClock),
        .CE(audio_sample_word_buffer),
        .D(\audio_sample_word_transfer_mux[1]_21 [6]),
        .Q(\audio_sample_word_buffer_reg[1][3][1]_12 [14]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][3][1][15] 
       (.C(pixelClock),
        .CE(audio_sample_word_buffer),
        .D(\audio_sample_word_transfer_mux[1]_21 [7]),
        .Q(\audio_sample_word_buffer_reg[1][3][1]_12 [15]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][3][1][16] 
       (.C(pixelClock),
        .CE(audio_sample_word_buffer),
        .D(\audio_sample_word_transfer_mux[1]_21 [8]),
        .Q(\audio_sample_word_buffer_reg[1][3][1]_12 [16]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][3][1][17] 
       (.C(pixelClock),
        .CE(audio_sample_word_buffer),
        .D(\audio_sample_word_transfer_mux[1]_21 [9]),
        .Q(\audio_sample_word_buffer_reg[1][3][1]_12 [17]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][3][1][18] 
       (.C(pixelClock),
        .CE(audio_sample_word_buffer),
        .D(\audio_sample_word_transfer_mux[1]_21 [10]),
        .Q(\audio_sample_word_buffer_reg[1][3][1]_12 [18]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][3][1][19] 
       (.C(pixelClock),
        .CE(audio_sample_word_buffer),
        .D(\audio_sample_word_transfer_mux[1]_21 [11]),
        .Q(\audio_sample_word_buffer_reg[1][3][1]_12 [19]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][3][1][20] 
       (.C(pixelClock),
        .CE(audio_sample_word_buffer),
        .D(\audio_sample_word_transfer_mux[1]_21 [12]),
        .Q(\audio_sample_word_buffer_reg[1][3][1]_12 [20]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][3][1][21] 
       (.C(pixelClock),
        .CE(audio_sample_word_buffer),
        .D(\audio_sample_word_transfer_mux[1]_21 [13]),
        .Q(\audio_sample_word_buffer_reg[1][3][1]_12 [21]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][3][1][22] 
       (.C(pixelClock),
        .CE(audio_sample_word_buffer),
        .D(\audio_sample_word_transfer_mux[1]_21 [14]),
        .Q(\audio_sample_word_buffer_reg[1][3][1]_12 [22]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][3][1][23] 
       (.C(pixelClock),
        .CE(audio_sample_word_buffer),
        .D(\audio_sample_word_transfer_mux[1]_21 [15]),
        .Q(\audio_sample_word_buffer_reg[1][3][1]_12 [23]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][3][1][8] 
       (.C(pixelClock),
        .CE(audio_sample_word_buffer),
        .D(\audio_sample_word_transfer_mux[1]_21 [0]),
        .Q(\audio_sample_word_buffer_reg[1][3][1]_12 [8]),
        .R(1'b0));
  FDRE \audio_sample_word_buffer_reg[1][3][1][9] 
       (.C(pixelClock),
        .CE(audio_sample_word_buffer),
        .D(\audio_sample_word_transfer_mux[1]_21 [1]),
        .Q(\audio_sample_word_buffer_reg[1][3][1]_12 [9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[0][0][10]_i_1 
       (.I0(\audio_sample_word_buffer_reg_n_0_[0][0][0][10] ),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][0][0]_15 [10]),
        .O(\audio_sample_word_packet[0][0][10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[0][0][11]_i_1 
       (.I0(\audio_sample_word_buffer_reg_n_0_[0][0][0][11] ),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][0][0]_15 [11]),
        .O(\audio_sample_word_packet[0][0][11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[0][0][12]_i_1 
       (.I0(\audio_sample_word_buffer_reg_n_0_[0][0][0][12] ),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][0][0]_15 [12]),
        .O(\audio_sample_word_packet[0][0][12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[0][0][13]_i_1 
       (.I0(\audio_sample_word_buffer_reg_n_0_[0][0][0][13] ),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][0][0]_15 [13]),
        .O(\audio_sample_word_packet[0][0][13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[0][0][14]_i_1 
       (.I0(\audio_sample_word_buffer_reg_n_0_[0][0][0][14] ),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][0][0]_15 [14]),
        .O(\audio_sample_word_packet[0][0][14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[0][0][15]_i_1 
       (.I0(\audio_sample_word_buffer_reg_n_0_[0][0][0][15] ),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][0][0]_15 [15]),
        .O(\audio_sample_word_packet[0][0][15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[0][0][16]_i_1 
       (.I0(\audio_sample_word_buffer_reg_n_0_[0][0][0][16] ),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][0][0]_15 [16]),
        .O(\audio_sample_word_packet[0][0][16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[0][0][17]_i_1 
       (.I0(\audio_sample_word_buffer_reg_n_0_[0][0][0][17] ),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][0][0]_15 [17]),
        .O(\audio_sample_word_packet[0][0][17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[0][0][18]_i_1 
       (.I0(\audio_sample_word_buffer_reg_n_0_[0][0][0][18] ),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][0][0]_15 [18]),
        .O(\audio_sample_word_packet[0][0][18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[0][0][19]_i_1 
       (.I0(\audio_sample_word_buffer_reg_n_0_[0][0][0][19] ),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][0][0]_15 [19]),
        .O(\audio_sample_word_packet[0][0][19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[0][0][20]_i_1 
       (.I0(\audio_sample_word_buffer_reg_n_0_[0][0][0][20] ),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][0][0]_15 [20]),
        .O(\audio_sample_word_packet[0][0][20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[0][0][21]_i_1 
       (.I0(\audio_sample_word_buffer_reg_n_0_[0][0][0][21] ),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][0][0]_15 [21]),
        .O(\audio_sample_word_packet[0][0][21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[0][0][22]_i_1 
       (.I0(\audio_sample_word_buffer_reg_n_0_[0][0][0][22] ),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][0][0]_15 [22]),
        .O(\audio_sample_word_packet[0][0][22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[0][0][23]_i_1 
       (.I0(\audio_sample_word_buffer_reg_n_0_[0][0][0][23] ),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][0][0]_15 [23]),
        .O(\audio_sample_word_packet[0][0][23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[0][0][8]_i_1 
       (.I0(\audio_sample_word_buffer_reg_n_0_[0][0][0][8] ),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][0][0]_15 [8]),
        .O(\audio_sample_word_packet[0][0][8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[0][0][9]_i_1 
       (.I0(\audio_sample_word_buffer_reg_n_0_[0][0][0][9] ),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][0][0]_15 [9]),
        .O(\audio_sample_word_packet[0][0][9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[0][1][10]_i_1 
       (.I0(\audio_sample_word_buffer_reg[0][0][1]_6 [10]),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][0][1]_7 [10]),
        .O(\audio_sample_word_packet[0][1][10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[0][1][11]_i_1 
       (.I0(\audio_sample_word_buffer_reg[0][0][1]_6 [11]),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][0][1]_7 [11]),
        .O(\audio_sample_word_packet[0][1][11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[0][1][12]_i_1 
       (.I0(\audio_sample_word_buffer_reg[0][0][1]_6 [12]),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][0][1]_7 [12]),
        .O(\audio_sample_word_packet[0][1][12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[0][1][13]_i_1 
       (.I0(\audio_sample_word_buffer_reg[0][0][1]_6 [13]),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][0][1]_7 [13]),
        .O(\audio_sample_word_packet[0][1][13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[0][1][14]_i_1 
       (.I0(\audio_sample_word_buffer_reg[0][0][1]_6 [14]),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][0][1]_7 [14]),
        .O(\audio_sample_word_packet[0][1][14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[0][1][15]_i_1 
       (.I0(\audio_sample_word_buffer_reg[0][0][1]_6 [15]),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][0][1]_7 [15]),
        .O(\audio_sample_word_packet[0][1][15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[0][1][16]_i_1 
       (.I0(\audio_sample_word_buffer_reg[0][0][1]_6 [16]),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][0][1]_7 [16]),
        .O(\audio_sample_word_packet[0][1][16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[0][1][17]_i_1 
       (.I0(\audio_sample_word_buffer_reg[0][0][1]_6 [17]),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][0][1]_7 [17]),
        .O(\audio_sample_word_packet[0][1][17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[0][1][18]_i_1 
       (.I0(\audio_sample_word_buffer_reg[0][0][1]_6 [18]),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][0][1]_7 [18]),
        .O(\audio_sample_word_packet[0][1][18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[0][1][19]_i_1 
       (.I0(\audio_sample_word_buffer_reg[0][0][1]_6 [19]),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][0][1]_7 [19]),
        .O(\audio_sample_word_packet[0][1][19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[0][1][20]_i_1 
       (.I0(\audio_sample_word_buffer_reg[0][0][1]_6 [20]),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][0][1]_7 [20]),
        .O(\audio_sample_word_packet[0][1][20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[0][1][21]_i_1 
       (.I0(\audio_sample_word_buffer_reg[0][0][1]_6 [21]),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][0][1]_7 [21]),
        .O(\audio_sample_word_packet[0][1][21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[0][1][22]_i_1 
       (.I0(\audio_sample_word_buffer_reg[0][0][1]_6 [22]),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][0][1]_7 [22]),
        .O(\audio_sample_word_packet[0][1][22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[0][1][23]_i_1 
       (.I0(\audio_sample_word_buffer_reg[0][0][1]_6 [23]),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][0][1]_7 [23]),
        .O(\audio_sample_word_packet[0][1][23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[0][1][8]_i_1 
       (.I0(\audio_sample_word_buffer_reg[0][0][1]_6 [8]),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][0][1]_7 [8]),
        .O(\audio_sample_word_packet[0][1][8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[0][1][9]_i_1 
       (.I0(\audio_sample_word_buffer_reg[0][0][1]_6 [9]),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][0][1]_7 [9]),
        .O(\audio_sample_word_packet[0][1][9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[1][0][10]_i_1 
       (.I0(\audio_sample_word_buffer_reg_n_0_[0][1][0][10] ),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][1][0]_16 [10]),
        .O(\audio_sample_word_packet[1][0][10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[1][0][11]_i_1 
       (.I0(\audio_sample_word_buffer_reg_n_0_[0][1][0][11] ),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][1][0]_16 [11]),
        .O(\audio_sample_word_packet[1][0][11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[1][0][12]_i_1 
       (.I0(\audio_sample_word_buffer_reg_n_0_[0][1][0][12] ),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][1][0]_16 [12]),
        .O(\audio_sample_word_packet[1][0][12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[1][0][13]_i_1 
       (.I0(\audio_sample_word_buffer_reg_n_0_[0][1][0][13] ),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][1][0]_16 [13]),
        .O(\audio_sample_word_packet[1][0][13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[1][0][14]_i_1 
       (.I0(\audio_sample_word_buffer_reg_n_0_[0][1][0][14] ),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][1][0]_16 [14]),
        .O(\audio_sample_word_packet[1][0][14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[1][0][15]_i_1 
       (.I0(\audio_sample_word_buffer_reg_n_0_[0][1][0][15] ),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][1][0]_16 [15]),
        .O(\audio_sample_word_packet[1][0][15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[1][0][16]_i_1 
       (.I0(\audio_sample_word_buffer_reg_n_0_[0][1][0][16] ),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][1][0]_16 [16]),
        .O(\audio_sample_word_packet[1][0][16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[1][0][17]_i_1 
       (.I0(\audio_sample_word_buffer_reg_n_0_[0][1][0][17] ),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][1][0]_16 [17]),
        .O(\audio_sample_word_packet[1][0][17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[1][0][18]_i_1 
       (.I0(\audio_sample_word_buffer_reg_n_0_[0][1][0][18] ),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][1][0]_16 [18]),
        .O(\audio_sample_word_packet[1][0][18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[1][0][19]_i_1 
       (.I0(\audio_sample_word_buffer_reg_n_0_[0][1][0][19] ),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][1][0]_16 [19]),
        .O(\audio_sample_word_packet[1][0][19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[1][0][20]_i_1 
       (.I0(\audio_sample_word_buffer_reg_n_0_[0][1][0][20] ),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][1][0]_16 [20]),
        .O(\audio_sample_word_packet[1][0][20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[1][0][21]_i_1 
       (.I0(\audio_sample_word_buffer_reg_n_0_[0][1][0][21] ),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][1][0]_16 [21]),
        .O(\audio_sample_word_packet[1][0][21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[1][0][22]_i_1 
       (.I0(\audio_sample_word_buffer_reg_n_0_[0][1][0][22] ),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][1][0]_16 [22]),
        .O(\audio_sample_word_packet[1][0][22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[1][0][23]_i_1 
       (.I0(\audio_sample_word_buffer_reg_n_0_[0][1][0][23] ),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][1][0]_16 [23]),
        .O(\audio_sample_word_packet[1][0][23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[1][0][8]_i_1 
       (.I0(\audio_sample_word_buffer_reg_n_0_[0][1][0][8] ),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][1][0]_16 [8]),
        .O(\audio_sample_word_packet[1][0][8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[1][0][9]_i_1 
       (.I0(\audio_sample_word_buffer_reg_n_0_[0][1][0][9] ),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][1][0]_16 [9]),
        .O(\audio_sample_word_packet[1][0][9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[1][1][10]_i_1 
       (.I0(\audio_sample_word_buffer_reg[0][1][1]_8 [10]),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][1][1]_9 [10]),
        .O(\audio_sample_word_packet[1][1][10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[1][1][11]_i_1 
       (.I0(\audio_sample_word_buffer_reg[0][1][1]_8 [11]),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][1][1]_9 [11]),
        .O(\audio_sample_word_packet[1][1][11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[1][1][12]_i_1 
       (.I0(\audio_sample_word_buffer_reg[0][1][1]_8 [12]),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][1][1]_9 [12]),
        .O(\audio_sample_word_packet[1][1][12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[1][1][13]_i_1 
       (.I0(\audio_sample_word_buffer_reg[0][1][1]_8 [13]),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][1][1]_9 [13]),
        .O(\audio_sample_word_packet[1][1][13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[1][1][14]_i_1 
       (.I0(\audio_sample_word_buffer_reg[0][1][1]_8 [14]),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][1][1]_9 [14]),
        .O(\audio_sample_word_packet[1][1][14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[1][1][15]_i_1 
       (.I0(\audio_sample_word_buffer_reg[0][1][1]_8 [15]),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][1][1]_9 [15]),
        .O(\audio_sample_word_packet[1][1][15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[1][1][16]_i_1 
       (.I0(\audio_sample_word_buffer_reg[0][1][1]_8 [16]),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][1][1]_9 [16]),
        .O(\audio_sample_word_packet[1][1][16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[1][1][17]_i_1 
       (.I0(\audio_sample_word_buffer_reg[0][1][1]_8 [17]),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][1][1]_9 [17]),
        .O(\audio_sample_word_packet[1][1][17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[1][1][18]_i_1 
       (.I0(\audio_sample_word_buffer_reg[0][1][1]_8 [18]),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][1][1]_9 [18]),
        .O(\audio_sample_word_packet[1][1][18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[1][1][19]_i_1 
       (.I0(\audio_sample_word_buffer_reg[0][1][1]_8 [19]),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][1][1]_9 [19]),
        .O(\audio_sample_word_packet[1][1][19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[1][1][20]_i_1 
       (.I0(\audio_sample_word_buffer_reg[0][1][1]_8 [20]),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][1][1]_9 [20]),
        .O(\audio_sample_word_packet[1][1][20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[1][1][21]_i_1 
       (.I0(\audio_sample_word_buffer_reg[0][1][1]_8 [21]),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][1][1]_9 [21]),
        .O(\audio_sample_word_packet[1][1][21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[1][1][22]_i_1 
       (.I0(\audio_sample_word_buffer_reg[0][1][1]_8 [22]),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][1][1]_9 [22]),
        .O(\audio_sample_word_packet[1][1][22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[1][1][23]_i_1 
       (.I0(\audio_sample_word_buffer_reg[0][1][1]_8 [23]),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][1][1]_9 [23]),
        .O(\audio_sample_word_packet[1][1][23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[1][1][8]_i_1 
       (.I0(\audio_sample_word_buffer_reg[0][1][1]_8 [8]),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][1][1]_9 [8]),
        .O(\audio_sample_word_packet[1][1][8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[1][1][9]_i_1 
       (.I0(\audio_sample_word_buffer_reg[0][1][1]_8 [9]),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][1][1]_9 [9]),
        .O(\audio_sample_word_packet[1][1][9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[2][0][10]_i_1 
       (.I0(\audio_sample_word_buffer_reg_n_0_[0][2][0][10] ),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][2][0]_17 [10]),
        .O(\audio_sample_word_packet[2][0][10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[2][0][11]_i_1 
       (.I0(\audio_sample_word_buffer_reg_n_0_[0][2][0][11] ),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][2][0]_17 [11]),
        .O(\audio_sample_word_packet[2][0][11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[2][0][12]_i_1 
       (.I0(\audio_sample_word_buffer_reg_n_0_[0][2][0][12] ),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][2][0]_17 [12]),
        .O(\audio_sample_word_packet[2][0][12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[2][0][13]_i_1 
       (.I0(\audio_sample_word_buffer_reg_n_0_[0][2][0][13] ),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][2][0]_17 [13]),
        .O(\audio_sample_word_packet[2][0][13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[2][0][14]_i_1 
       (.I0(\audio_sample_word_buffer_reg_n_0_[0][2][0][14] ),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][2][0]_17 [14]),
        .O(\audio_sample_word_packet[2][0][14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[2][0][15]_i_1 
       (.I0(\audio_sample_word_buffer_reg_n_0_[0][2][0][15] ),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][2][0]_17 [15]),
        .O(\audio_sample_word_packet[2][0][15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[2][0][16]_i_1 
       (.I0(\audio_sample_word_buffer_reg_n_0_[0][2][0][16] ),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][2][0]_17 [16]),
        .O(\audio_sample_word_packet[2][0][16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[2][0][17]_i_1 
       (.I0(\audio_sample_word_buffer_reg_n_0_[0][2][0][17] ),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][2][0]_17 [17]),
        .O(\audio_sample_word_packet[2][0][17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[2][0][18]_i_1 
       (.I0(\audio_sample_word_buffer_reg_n_0_[0][2][0][18] ),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][2][0]_17 [18]),
        .O(\audio_sample_word_packet[2][0][18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[2][0][19]_i_1 
       (.I0(\audio_sample_word_buffer_reg_n_0_[0][2][0][19] ),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][2][0]_17 [19]),
        .O(\audio_sample_word_packet[2][0][19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[2][0][20]_i_1 
       (.I0(\audio_sample_word_buffer_reg_n_0_[0][2][0][20] ),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][2][0]_17 [20]),
        .O(\audio_sample_word_packet[2][0][20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[2][0][21]_i_1 
       (.I0(\audio_sample_word_buffer_reg_n_0_[0][2][0][21] ),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][2][0]_17 [21]),
        .O(\audio_sample_word_packet[2][0][21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[2][0][22]_i_1 
       (.I0(\audio_sample_word_buffer_reg_n_0_[0][2][0][22] ),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][2][0]_17 [22]),
        .O(\audio_sample_word_packet[2][0][22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[2][0][23]_i_1 
       (.I0(\audio_sample_word_buffer_reg_n_0_[0][2][0][23] ),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][2][0]_17 [23]),
        .O(\audio_sample_word_packet[2][0][23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[2][0][8]_i_1 
       (.I0(\audio_sample_word_buffer_reg_n_0_[0][2][0][8] ),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][2][0]_17 [8]),
        .O(\audio_sample_word_packet[2][0][8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[2][0][9]_i_1 
       (.I0(\audio_sample_word_buffer_reg_n_0_[0][2][0][9] ),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][2][0]_17 [9]),
        .O(\audio_sample_word_packet[2][0][9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[2][1][10]_i_1 
       (.I0(\audio_sample_word_buffer_reg[0][2][1]_10 [10]),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][2][1]_11 [10]),
        .O(\audio_sample_word_packet[2][1][10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[2][1][11]_i_1 
       (.I0(\audio_sample_word_buffer_reg[0][2][1]_10 [11]),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][2][1]_11 [11]),
        .O(\audio_sample_word_packet[2][1][11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[2][1][12]_i_1 
       (.I0(\audio_sample_word_buffer_reg[0][2][1]_10 [12]),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][2][1]_11 [12]),
        .O(\audio_sample_word_packet[2][1][12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[2][1][13]_i_1 
       (.I0(\audio_sample_word_buffer_reg[0][2][1]_10 [13]),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][2][1]_11 [13]),
        .O(\audio_sample_word_packet[2][1][13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[2][1][14]_i_1 
       (.I0(\audio_sample_word_buffer_reg[0][2][1]_10 [14]),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][2][1]_11 [14]),
        .O(\audio_sample_word_packet[2][1][14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[2][1][15]_i_1 
       (.I0(\audio_sample_word_buffer_reg[0][2][1]_10 [15]),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][2][1]_11 [15]),
        .O(\audio_sample_word_packet[2][1][15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[2][1][16]_i_1 
       (.I0(\audio_sample_word_buffer_reg[0][2][1]_10 [16]),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][2][1]_11 [16]),
        .O(\audio_sample_word_packet[2][1][16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[2][1][17]_i_1 
       (.I0(\audio_sample_word_buffer_reg[0][2][1]_10 [17]),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][2][1]_11 [17]),
        .O(\audio_sample_word_packet[2][1][17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[2][1][18]_i_1 
       (.I0(\audio_sample_word_buffer_reg[0][2][1]_10 [18]),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][2][1]_11 [18]),
        .O(\audio_sample_word_packet[2][1][18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[2][1][19]_i_1 
       (.I0(\audio_sample_word_buffer_reg[0][2][1]_10 [19]),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][2][1]_11 [19]),
        .O(\audio_sample_word_packet[2][1][19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[2][1][20]_i_1 
       (.I0(\audio_sample_word_buffer_reg[0][2][1]_10 [20]),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][2][1]_11 [20]),
        .O(\audio_sample_word_packet[2][1][20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[2][1][21]_i_1 
       (.I0(\audio_sample_word_buffer_reg[0][2][1]_10 [21]),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][2][1]_11 [21]),
        .O(\audio_sample_word_packet[2][1][21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[2][1][22]_i_1 
       (.I0(\audio_sample_word_buffer_reg[0][2][1]_10 [22]),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][2][1]_11 [22]),
        .O(\audio_sample_word_packet[2][1][22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[2][1][23]_i_1 
       (.I0(\audio_sample_word_buffer_reg[0][2][1]_10 [23]),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][2][1]_11 [23]),
        .O(\audio_sample_word_packet[2][1][23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[2][1][8]_i_1 
       (.I0(\audio_sample_word_buffer_reg[0][2][1]_10 [8]),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][2][1]_11 [8]),
        .O(\audio_sample_word_packet[2][1][8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[2][1][9]_i_1 
       (.I0(\audio_sample_word_buffer_reg[0][2][1]_10 [9]),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][2][1]_11 [9]),
        .O(\audio_sample_word_packet[2][1][9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[3][0][10]_i_1 
       (.I0(\audio_sample_word_buffer_reg[0][3][0]_20 [10]),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][3][0]_18 [10]),
        .O(\audio_sample_word_packet[3][0][10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[3][0][11]_i_1 
       (.I0(\audio_sample_word_buffer_reg[0][3][0]_20 [11]),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][3][0]_18 [11]),
        .O(\audio_sample_word_packet[3][0][11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[3][0][12]_i_1 
       (.I0(\audio_sample_word_buffer_reg[0][3][0]_20 [12]),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][3][0]_18 [12]),
        .O(\audio_sample_word_packet[3][0][12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[3][0][13]_i_1 
       (.I0(\audio_sample_word_buffer_reg[0][3][0]_20 [13]),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][3][0]_18 [13]),
        .O(\audio_sample_word_packet[3][0][13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[3][0][14]_i_1 
       (.I0(\audio_sample_word_buffer_reg[0][3][0]_20 [14]),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][3][0]_18 [14]),
        .O(\audio_sample_word_packet[3][0][14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[3][0][15]_i_1 
       (.I0(\audio_sample_word_buffer_reg[0][3][0]_20 [15]),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][3][0]_18 [15]),
        .O(\audio_sample_word_packet[3][0][15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[3][0][16]_i_1 
       (.I0(\audio_sample_word_buffer_reg[0][3][0]_20 [16]),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][3][0]_18 [16]),
        .O(\audio_sample_word_packet[3][0][16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[3][0][17]_i_1 
       (.I0(\audio_sample_word_buffer_reg[0][3][0]_20 [17]),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][3][0]_18 [17]),
        .O(\audio_sample_word_packet[3][0][17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[3][0][18]_i_1 
       (.I0(\audio_sample_word_buffer_reg[0][3][0]_20 [18]),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][3][0]_18 [18]),
        .O(\audio_sample_word_packet[3][0][18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[3][0][19]_i_1 
       (.I0(\audio_sample_word_buffer_reg[0][3][0]_20 [19]),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][3][0]_18 [19]),
        .O(\audio_sample_word_packet[3][0][19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[3][0][20]_i_1 
       (.I0(\audio_sample_word_buffer_reg[0][3][0]_20 [20]),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][3][0]_18 [20]),
        .O(\audio_sample_word_packet[3][0][20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[3][0][21]_i_1 
       (.I0(\audio_sample_word_buffer_reg[0][3][0]_20 [21]),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][3][0]_18 [21]),
        .O(\audio_sample_word_packet[3][0][21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[3][0][22]_i_1 
       (.I0(\audio_sample_word_buffer_reg[0][3][0]_20 [22]),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][3][0]_18 [22]),
        .O(\audio_sample_word_packet[3][0][22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[3][0][23]_i_1 
       (.I0(\audio_sample_word_buffer_reg[0][3][0]_20 [23]),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][3][0]_18 [23]),
        .O(\audio_sample_word_packet[3][0][23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[3][0][8]_i_1 
       (.I0(\audio_sample_word_buffer_reg[0][3][0]_20 [8]),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][3][0]_18 [8]),
        .O(\audio_sample_word_packet[3][0][8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[3][0][9]_i_1 
       (.I0(\audio_sample_word_buffer_reg[0][3][0]_20 [9]),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][3][0]_18 [9]),
        .O(\audio_sample_word_packet[3][0][9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[3][1][10]_i_1 
       (.I0(\audio_sample_word_buffer_reg[0][3][1]_14 [10]),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][3][1]_12 [10]),
        .O(\audio_sample_word_packet[3][1][10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[3][1][11]_i_1 
       (.I0(\audio_sample_word_buffer_reg[0][3][1]_14 [11]),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][3][1]_12 [11]),
        .O(\audio_sample_word_packet[3][1][11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[3][1][12]_i_1 
       (.I0(\audio_sample_word_buffer_reg[0][3][1]_14 [12]),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][3][1]_12 [12]),
        .O(\audio_sample_word_packet[3][1][12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[3][1][13]_i_1 
       (.I0(\audio_sample_word_buffer_reg[0][3][1]_14 [13]),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][3][1]_12 [13]),
        .O(\audio_sample_word_packet[3][1][13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[3][1][14]_i_1 
       (.I0(\audio_sample_word_buffer_reg[0][3][1]_14 [14]),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][3][1]_12 [14]),
        .O(\audio_sample_word_packet[3][1][14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[3][1][15]_i_1 
       (.I0(\audio_sample_word_buffer_reg[0][3][1]_14 [15]),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][3][1]_12 [15]),
        .O(\audio_sample_word_packet[3][1][15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[3][1][16]_i_1 
       (.I0(\audio_sample_word_buffer_reg[0][3][1]_14 [16]),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][3][1]_12 [16]),
        .O(\audio_sample_word_packet[3][1][16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[3][1][17]_i_1 
       (.I0(\audio_sample_word_buffer_reg[0][3][1]_14 [17]),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][3][1]_12 [17]),
        .O(\audio_sample_word_packet[3][1][17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[3][1][18]_i_1 
       (.I0(\audio_sample_word_buffer_reg[0][3][1]_14 [18]),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][3][1]_12 [18]),
        .O(\audio_sample_word_packet[3][1][18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[3][1][19]_i_1 
       (.I0(\audio_sample_word_buffer_reg[0][3][1]_14 [19]),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][3][1]_12 [19]),
        .O(\audio_sample_word_packet[3][1][19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[3][1][20]_i_1 
       (.I0(\audio_sample_word_buffer_reg[0][3][1]_14 [20]),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][3][1]_12 [20]),
        .O(\audio_sample_word_packet[3][1][20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[3][1][21]_i_1 
       (.I0(\audio_sample_word_buffer_reg[0][3][1]_14 [21]),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][3][1]_12 [21]),
        .O(\audio_sample_word_packet[3][1][21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[3][1][22]_i_1 
       (.I0(\audio_sample_word_buffer_reg[0][3][1]_14 [22]),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][3][1]_12 [22]),
        .O(\audio_sample_word_packet[3][1][22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[3][1][23]_i_2 
       (.I0(\audio_sample_word_buffer_reg[0][3][1]_14 [23]),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][3][1]_12 [23]),
        .O(\audio_sample_word_packet[3][1][23]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[3][1][8]_i_1 
       (.I0(\audio_sample_word_buffer_reg[0][3][1]_14 [8]),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][3][1]_12 [8]),
        .O(\audio_sample_word_packet[3][1][8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \audio_sample_word_packet[3][1][9]_i_1 
       (.I0(\audio_sample_word_buffer_reg[0][3][1]_14 [9]),
        .I1(sample_buffer_current_reg_n_0),
        .I2(\audio_sample_word_buffer_reg[1][3][1]_12 [9]),
        .O(\audio_sample_word_packet[3][1][9]_i_1_n_0 ));
  FDRE \audio_sample_word_packet_reg[0][0][10] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[0][0][10]_i_1_n_0 ),
        .Q(\audio_sample_word_packet_reg_n_0_[0][0][10] ),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[0][0][11] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[0][0][11]_i_1_n_0 ),
        .Q(\audio_sample_word_packet_reg_n_0_[0][0][11] ),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[0][0][12] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[0][0][12]_i_1_n_0 ),
        .Q(\audio_sample_word_packet_reg_n_0_[0][0][12] ),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[0][0][13] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[0][0][13]_i_1_n_0 ),
        .Q(\audio_sample_word_packet_reg_n_0_[0][0][13] ),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[0][0][14] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[0][0][14]_i_1_n_0 ),
        .Q(\audio_sample_word_packet_reg_n_0_[0][0][14] ),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[0][0][15] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[0][0][15]_i_1_n_0 ),
        .Q(\audio_sample_word_packet_reg_n_0_[0][0][15] ),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[0][0][16] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[0][0][16]_i_1_n_0 ),
        .Q(\audio_sample_word_packet_reg_n_0_[0][0][16] ),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[0][0][17] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[0][0][17]_i_1_n_0 ),
        .Q(\audio_sample_word_packet_reg_n_0_[0][0][17] ),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[0][0][18] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[0][0][18]_i_1_n_0 ),
        .Q(\audio_sample_word_packet_reg_n_0_[0][0][18] ),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[0][0][19] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[0][0][19]_i_1_n_0 ),
        .Q(\audio_sample_word_packet_reg_n_0_[0][0][19] ),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[0][0][20] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[0][0][20]_i_1_n_0 ),
        .Q(\audio_sample_word_packet_reg_n_0_[0][0][20] ),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[0][0][21] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[0][0][21]_i_1_n_0 ),
        .Q(\audio_sample_word_packet_reg_n_0_[0][0][21] ),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[0][0][22] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[0][0][22]_i_1_n_0 ),
        .Q(\audio_sample_word_packet_reg_n_0_[0][0][22] ),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[0][0][23] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[0][0][23]_i_1_n_0 ),
        .Q(\audio_sample_word_packet_reg_n_0_[0][0][23] ),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[0][0][8] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[0][0][8]_i_1_n_0 ),
        .Q(\audio_sample_word_packet_reg_n_0_[0][0][8] ),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[0][0][9] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[0][0][9]_i_1_n_0 ),
        .Q(\audio_sample_word_packet_reg_n_0_[0][0][9] ),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[0][1][10] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[0][1][10]_i_1_n_0 ),
        .Q(\audio_sample_word_packet_reg_n_0_[0][1][10] ),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[0][1][11] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[0][1][11]_i_1_n_0 ),
        .Q(\audio_sample_word_packet_reg_n_0_[0][1][11] ),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[0][1][12] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[0][1][12]_i_1_n_0 ),
        .Q(\audio_sample_word_packet_reg_n_0_[0][1][12] ),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[0][1][13] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[0][1][13]_i_1_n_0 ),
        .Q(\audio_sample_word_packet_reg_n_0_[0][1][13] ),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[0][1][14] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[0][1][14]_i_1_n_0 ),
        .Q(\audio_sample_word_packet_reg_n_0_[0][1][14] ),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[0][1][15] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[0][1][15]_i_1_n_0 ),
        .Q(\audio_sample_word_packet_reg_n_0_[0][1][15] ),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[0][1][16] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[0][1][16]_i_1_n_0 ),
        .Q(\audio_sample_word_packet_reg_n_0_[0][1][16] ),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[0][1][17] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[0][1][17]_i_1_n_0 ),
        .Q(\audio_sample_word_packet_reg_n_0_[0][1][17] ),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[0][1][18] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[0][1][18]_i_1_n_0 ),
        .Q(\audio_sample_word_packet_reg_n_0_[0][1][18] ),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[0][1][19] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[0][1][19]_i_1_n_0 ),
        .Q(\audio_sample_word_packet_reg_n_0_[0][1][19] ),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[0][1][20] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[0][1][20]_i_1_n_0 ),
        .Q(\audio_sample_word_packet_reg_n_0_[0][1][20] ),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[0][1][21] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[0][1][21]_i_1_n_0 ),
        .Q(\audio_sample_word_packet_reg_n_0_[0][1][21] ),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[0][1][22] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[0][1][22]_i_1_n_0 ),
        .Q(\audio_sample_word_packet_reg_n_0_[0][1][22] ),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[0][1][23] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[0][1][23]_i_1_n_0 ),
        .Q(\audio_sample_word_packet_reg_n_0_[0][1][23] ),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[0][1][8] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[0][1][8]_i_1_n_0 ),
        .Q(\audio_sample_word_packet_reg_n_0_[0][1][8] ),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[0][1][9] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[0][1][9]_i_1_n_0 ),
        .Q(\audio_sample_word_packet_reg_n_0_[0][1][9] ),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[1][0][10] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[1][0][10]_i_1_n_0 ),
        .Q(\subs[2][1]_4 [10]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[1][0][11] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[1][0][11]_i_1_n_0 ),
        .Q(\subs[2][1]_4 [11]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[1][0][12] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[1][0][12]_i_1_n_0 ),
        .Q(\subs[2][1]_4 [12]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[1][0][13] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[1][0][13]_i_1_n_0 ),
        .Q(\subs[2][1]_4 [13]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[1][0][14] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[1][0][14]_i_1_n_0 ),
        .Q(\subs[2][1]_4 [14]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[1][0][15] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[1][0][15]_i_1_n_0 ),
        .Q(\subs[2][1]_4 [15]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[1][0][16] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[1][0][16]_i_1_n_0 ),
        .Q(\subs[2][1]_4 [16]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[1][0][17] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[1][0][17]_i_1_n_0 ),
        .Q(\subs[2][1]_4 [17]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[1][0][18] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[1][0][18]_i_1_n_0 ),
        .Q(\subs[2][1]_4 [18]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[1][0][19] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[1][0][19]_i_1_n_0 ),
        .Q(\subs[2][1]_4 [19]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[1][0][20] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[1][0][20]_i_1_n_0 ),
        .Q(\subs[2][1]_4 [20]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[1][0][21] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[1][0][21]_i_1_n_0 ),
        .Q(\subs[2][1]_4 [21]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[1][0][22] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[1][0][22]_i_1_n_0 ),
        .Q(\subs[2][1]_4 [22]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[1][0][23] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[1][0][23]_i_1_n_0 ),
        .Q(\subs[2][1]_4 [23]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[1][0][8] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[1][0][8]_i_1_n_0 ),
        .Q(\subs[2][1]_4 [8]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[1][0][9] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[1][0][9]_i_1_n_0 ),
        .Q(\subs[2][1]_4 [9]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[1][1][10] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[1][1][10]_i_1_n_0 ),
        .Q(\subs[2][1]_4 [34]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[1][1][11] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[1][1][11]_i_1_n_0 ),
        .Q(\subs[2][1]_4 [35]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[1][1][12] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[1][1][12]_i_1_n_0 ),
        .Q(\subs[2][1]_4 [36]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[1][1][13] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[1][1][13]_i_1_n_0 ),
        .Q(\subs[2][1]_4 [37]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[1][1][14] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[1][1][14]_i_1_n_0 ),
        .Q(\subs[2][1]_4 [38]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[1][1][15] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[1][1][15]_i_1_n_0 ),
        .Q(\subs[2][1]_4 [39]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[1][1][16] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[1][1][16]_i_1_n_0 ),
        .Q(\subs[2][1]_4 [40]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[1][1][17] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[1][1][17]_i_1_n_0 ),
        .Q(\subs[2][1]_4 [41]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[1][1][18] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[1][1][18]_i_1_n_0 ),
        .Q(\subs[2][1]_4 [42]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[1][1][19] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[1][1][19]_i_1_n_0 ),
        .Q(\subs[2][1]_4 [43]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[1][1][20] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[1][1][20]_i_1_n_0 ),
        .Q(\subs[2][1]_4 [44]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[1][1][21] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[1][1][21]_i_1_n_0 ),
        .Q(\subs[2][1]_4 [45]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[1][1][22] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[1][1][22]_i_1_n_0 ),
        .Q(\subs[2][1]_4 [46]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[1][1][23] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[1][1][23]_i_1_n_0 ),
        .Q(\subs[2][1]_4 [47]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[1][1][8] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[1][1][8]_i_1_n_0 ),
        .Q(\subs[2][1]_4 [32]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[1][1][9] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[1][1][9]_i_1_n_0 ),
        .Q(\subs[2][1]_4 [33]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[2][0][10] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[2][0][10]_i_1_n_0 ),
        .Q(\subs[2][2]_3 [10]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[2][0][11] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[2][0][11]_i_1_n_0 ),
        .Q(\subs[2][2]_3 [11]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[2][0][12] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[2][0][12]_i_1_n_0 ),
        .Q(\subs[2][2]_3 [12]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[2][0][13] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[2][0][13]_i_1_n_0 ),
        .Q(\subs[2][2]_3 [13]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[2][0][14] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[2][0][14]_i_1_n_0 ),
        .Q(\subs[2][2]_3 [14]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[2][0][15] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[2][0][15]_i_1_n_0 ),
        .Q(\subs[2][2]_3 [15]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[2][0][16] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[2][0][16]_i_1_n_0 ),
        .Q(\subs[2][2]_3 [16]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[2][0][17] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[2][0][17]_i_1_n_0 ),
        .Q(\subs[2][2]_3 [17]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[2][0][18] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[2][0][18]_i_1_n_0 ),
        .Q(\subs[2][2]_3 [18]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[2][0][19] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[2][0][19]_i_1_n_0 ),
        .Q(\subs[2][2]_3 [19]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[2][0][20] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[2][0][20]_i_1_n_0 ),
        .Q(\subs[2][2]_3 [20]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[2][0][21] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[2][0][21]_i_1_n_0 ),
        .Q(\subs[2][2]_3 [21]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[2][0][22] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[2][0][22]_i_1_n_0 ),
        .Q(\subs[2][2]_3 [22]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[2][0][23] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[2][0][23]_i_1_n_0 ),
        .Q(\subs[2][2]_3 [23]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[2][0][8] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[2][0][8]_i_1_n_0 ),
        .Q(\subs[2][2]_3 [8]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[2][0][9] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[2][0][9]_i_1_n_0 ),
        .Q(\subs[2][2]_3 [9]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[2][1][10] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[2][1][10]_i_1_n_0 ),
        .Q(\subs[2][2]_3 [34]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[2][1][11] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[2][1][11]_i_1_n_0 ),
        .Q(\subs[2][2]_3 [35]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[2][1][12] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[2][1][12]_i_1_n_0 ),
        .Q(\subs[2][2]_3 [36]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[2][1][13] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[2][1][13]_i_1_n_0 ),
        .Q(\subs[2][2]_3 [37]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[2][1][14] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[2][1][14]_i_1_n_0 ),
        .Q(\subs[2][2]_3 [38]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[2][1][15] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[2][1][15]_i_1_n_0 ),
        .Q(\subs[2][2]_3 [39]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[2][1][16] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[2][1][16]_i_1_n_0 ),
        .Q(\subs[2][2]_3 [40]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[2][1][17] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[2][1][17]_i_1_n_0 ),
        .Q(\subs[2][2]_3 [41]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[2][1][18] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[2][1][18]_i_1_n_0 ),
        .Q(\subs[2][2]_3 [42]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[2][1][19] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[2][1][19]_i_1_n_0 ),
        .Q(\subs[2][2]_3 [43]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[2][1][20] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[2][1][20]_i_1_n_0 ),
        .Q(\subs[2][2]_3 [44]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[2][1][21] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[2][1][21]_i_1_n_0 ),
        .Q(\subs[2][2]_3 [45]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[2][1][22] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[2][1][22]_i_1_n_0 ),
        .Q(\subs[2][2]_3 [46]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[2][1][23] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[2][1][23]_i_1_n_0 ),
        .Q(\subs[2][2]_3 [47]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[2][1][8] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[2][1][8]_i_1_n_0 ),
        .Q(\subs[2][2]_3 [32]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[2][1][9] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[2][1][9]_i_1_n_0 ),
        .Q(\subs[2][2]_3 [33]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[3][0][10] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[3][0][10]_i_1_n_0 ),
        .Q(\subs[2][3]_1 [10]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[3][0][11] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[3][0][11]_i_1_n_0 ),
        .Q(\subs[2][3]_1 [11]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[3][0][12] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[3][0][12]_i_1_n_0 ),
        .Q(\subs[2][3]_1 [12]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[3][0][13] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[3][0][13]_i_1_n_0 ),
        .Q(\subs[2][3]_1 [13]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[3][0][14] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[3][0][14]_i_1_n_0 ),
        .Q(\subs[2][3]_1 [14]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[3][0][15] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[3][0][15]_i_1_n_0 ),
        .Q(\subs[2][3]_1 [15]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[3][0][16] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[3][0][16]_i_1_n_0 ),
        .Q(\subs[2][3]_1 [16]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[3][0][17] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[3][0][17]_i_1_n_0 ),
        .Q(\subs[2][3]_1 [17]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[3][0][18] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[3][0][18]_i_1_n_0 ),
        .Q(\subs[2][3]_1 [18]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[3][0][19] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[3][0][19]_i_1_n_0 ),
        .Q(\subs[2][3]_1 [19]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[3][0][20] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[3][0][20]_i_1_n_0 ),
        .Q(\subs[2][3]_1 [20]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[3][0][21] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[3][0][21]_i_1_n_0 ),
        .Q(\subs[2][3]_1 [21]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[3][0][22] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[3][0][22]_i_1_n_0 ),
        .Q(\subs[2][3]_1 [22]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[3][0][23] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[3][0][23]_i_1_n_0 ),
        .Q(\subs[2][3]_1 [23]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[3][0][8] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[3][0][8]_i_1_n_0 ),
        .Q(\subs[2][3]_1 [8]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[3][0][9] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[3][0][9]_i_1_n_0 ),
        .Q(\subs[2][3]_1 [9]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[3][1][10] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[3][1][10]_i_1_n_0 ),
        .Q(\subs[2][3]_1 [34]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[3][1][11] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[3][1][11]_i_1_n_0 ),
        .Q(\subs[2][3]_1 [35]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[3][1][12] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[3][1][12]_i_1_n_0 ),
        .Q(\subs[2][3]_1 [36]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[3][1][13] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[3][1][13]_i_1_n_0 ),
        .Q(\subs[2][3]_1 [37]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[3][1][14] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[3][1][14]_i_1_n_0 ),
        .Q(\subs[2][3]_1 [38]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[3][1][15] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[3][1][15]_i_1_n_0 ),
        .Q(\subs[2][3]_1 [39]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[3][1][16] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[3][1][16]_i_1_n_0 ),
        .Q(\subs[2][3]_1 [40]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[3][1][17] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[3][1][17]_i_1_n_0 ),
        .Q(\subs[2][3]_1 [41]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[3][1][18] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[3][1][18]_i_1_n_0 ),
        .Q(\subs[2][3]_1 [42]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[3][1][19] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[3][1][19]_i_1_n_0 ),
        .Q(\subs[2][3]_1 [43]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[3][1][20] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[3][1][20]_i_1_n_0 ),
        .Q(\subs[2][3]_1 [44]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[3][1][21] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[3][1][21]_i_1_n_0 ),
        .Q(\subs[2][3]_1 [45]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[3][1][22] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[3][1][22]_i_1_n_0 ),
        .Q(\subs[2][3]_1 [46]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[3][1][23] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[3][1][23]_i_2_n_0 ),
        .Q(\subs[2][3]_1 [47]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[3][1][8] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[3][1][8]_i_1_n_0 ),
        .Q(\subs[2][3]_1 [32]),
        .R(1'b0));
  FDRE \audio_sample_word_packet_reg[3][1][9] 
       (.C(pixelClock),
        .CE(audio_sample_word_packet),
        .D(\audio_sample_word_packet[3][1][9]_i_1_n_0 ),
        .Q(\subs[2][3]_1 [33]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    audio_sample_word_transfer_control_i_1
       (.I0(audio_sample_word_transfer_control),
        .O(audio_sample_word_transfer_control_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    audio_sample_word_transfer_control_reg
       (.C(audiosampleclk),
        .CE(1'b1),
        .D(audio_sample_word_transfer_control_i_1_n_0),
        .Q(audio_sample_word_transfer_control),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \audio_sample_word_transfer_control_synchronizer_chain_reg[0] 
       (.C(pixelClock),
        .CE(1'b1),
        .D(p_0_in),
        .Q(\audio_sample_word_transfer_control_synchronizer_chain_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \audio_sample_word_transfer_control_synchronizer_chain_reg[1] 
       (.C(pixelClock),
        .CE(1'b1),
        .D(audio_sample_word_transfer_control),
        .Q(p_0_in),
        .R(1'b0));
  FDRE \audio_sample_word_transfer_reg[0][0] 
       (.C(audiosampleclk),
        .CE(1'b1),
        .D(audioSampleInputLR[0]),
        .Q(\audio_sample_word_transfer_reg[0]_19 [0]),
        .R(1'b0));
  FDRE \audio_sample_word_transfer_reg[0][10] 
       (.C(audiosampleclk),
        .CE(1'b1),
        .D(audioSampleInputLR[10]),
        .Q(\audio_sample_word_transfer_reg[0]_19 [10]),
        .R(1'b0));
  FDRE \audio_sample_word_transfer_reg[0][11] 
       (.C(audiosampleclk),
        .CE(1'b1),
        .D(audioSampleInputLR[11]),
        .Q(\audio_sample_word_transfer_reg[0]_19 [11]),
        .R(1'b0));
  FDRE \audio_sample_word_transfer_reg[0][12] 
       (.C(audiosampleclk),
        .CE(1'b1),
        .D(audioSampleInputLR[12]),
        .Q(\audio_sample_word_transfer_reg[0]_19 [12]),
        .R(1'b0));
  FDRE \audio_sample_word_transfer_reg[0][13] 
       (.C(audiosampleclk),
        .CE(1'b1),
        .D(audioSampleInputLR[13]),
        .Q(\audio_sample_word_transfer_reg[0]_19 [13]),
        .R(1'b0));
  FDRE \audio_sample_word_transfer_reg[0][14] 
       (.C(audiosampleclk),
        .CE(1'b1),
        .D(audioSampleInputLR[14]),
        .Q(\audio_sample_word_transfer_reg[0]_19 [14]),
        .R(1'b0));
  FDRE \audio_sample_word_transfer_reg[0][15] 
       (.C(audiosampleclk),
        .CE(1'b1),
        .D(audioSampleInputLR[15]),
        .Q(\audio_sample_word_transfer_reg[0]_19 [15]),
        .R(1'b0));
  FDRE \audio_sample_word_transfer_reg[0][1] 
       (.C(audiosampleclk),
        .CE(1'b1),
        .D(audioSampleInputLR[1]),
        .Q(\audio_sample_word_transfer_reg[0]_19 [1]),
        .R(1'b0));
  FDRE \audio_sample_word_transfer_reg[0][2] 
       (.C(audiosampleclk),
        .CE(1'b1),
        .D(audioSampleInputLR[2]),
        .Q(\audio_sample_word_transfer_reg[0]_19 [2]),
        .R(1'b0));
  FDRE \audio_sample_word_transfer_reg[0][3] 
       (.C(audiosampleclk),
        .CE(1'b1),
        .D(audioSampleInputLR[3]),
        .Q(\audio_sample_word_transfer_reg[0]_19 [3]),
        .R(1'b0));
  FDRE \audio_sample_word_transfer_reg[0][4] 
       (.C(audiosampleclk),
        .CE(1'b1),
        .D(audioSampleInputLR[4]),
        .Q(\audio_sample_word_transfer_reg[0]_19 [4]),
        .R(1'b0));
  FDRE \audio_sample_word_transfer_reg[0][5] 
       (.C(audiosampleclk),
        .CE(1'b1),
        .D(audioSampleInputLR[5]),
        .Q(\audio_sample_word_transfer_reg[0]_19 [5]),
        .R(1'b0));
  FDRE \audio_sample_word_transfer_reg[0][6] 
       (.C(audiosampleclk),
        .CE(1'b1),
        .D(audioSampleInputLR[6]),
        .Q(\audio_sample_word_transfer_reg[0]_19 [6]),
        .R(1'b0));
  FDRE \audio_sample_word_transfer_reg[0][7] 
       (.C(audiosampleclk),
        .CE(1'b1),
        .D(audioSampleInputLR[7]),
        .Q(\audio_sample_word_transfer_reg[0]_19 [7]),
        .R(1'b0));
  FDRE \audio_sample_word_transfer_reg[0][8] 
       (.C(audiosampleclk),
        .CE(1'b1),
        .D(audioSampleInputLR[8]),
        .Q(\audio_sample_word_transfer_reg[0]_19 [8]),
        .R(1'b0));
  FDRE \audio_sample_word_transfer_reg[0][9] 
       (.C(audiosampleclk),
        .CE(1'b1),
        .D(audioSampleInputLR[9]),
        .Q(\audio_sample_word_transfer_reg[0]_19 [9]),
        .R(1'b0));
  FDRE \audio_sample_word_transfer_reg[1][0] 
       (.C(audiosampleclk),
        .CE(1'b1),
        .D(audioSampleInputLR[16]),
        .Q(\audio_sample_word_transfer_reg[1]_13 [0]),
        .R(1'b0));
  FDRE \audio_sample_word_transfer_reg[1][10] 
       (.C(audiosampleclk),
        .CE(1'b1),
        .D(audioSampleInputLR[26]),
        .Q(\audio_sample_word_transfer_reg[1]_13 [10]),
        .R(1'b0));
  FDRE \audio_sample_word_transfer_reg[1][11] 
       (.C(audiosampleclk),
        .CE(1'b1),
        .D(audioSampleInputLR[27]),
        .Q(\audio_sample_word_transfer_reg[1]_13 [11]),
        .R(1'b0));
  FDRE \audio_sample_word_transfer_reg[1][12] 
       (.C(audiosampleclk),
        .CE(1'b1),
        .D(audioSampleInputLR[28]),
        .Q(\audio_sample_word_transfer_reg[1]_13 [12]),
        .R(1'b0));
  FDRE \audio_sample_word_transfer_reg[1][13] 
       (.C(audiosampleclk),
        .CE(1'b1),
        .D(audioSampleInputLR[29]),
        .Q(\audio_sample_word_transfer_reg[1]_13 [13]),
        .R(1'b0));
  FDRE \audio_sample_word_transfer_reg[1][14] 
       (.C(audiosampleclk),
        .CE(1'b1),
        .D(audioSampleInputLR[30]),
        .Q(\audio_sample_word_transfer_reg[1]_13 [14]),
        .R(1'b0));
  FDRE \audio_sample_word_transfer_reg[1][15] 
       (.C(audiosampleclk),
        .CE(1'b1),
        .D(audioSampleInputLR[31]),
        .Q(\audio_sample_word_transfer_reg[1]_13 [15]),
        .R(1'b0));
  FDRE \audio_sample_word_transfer_reg[1][1] 
       (.C(audiosampleclk),
        .CE(1'b1),
        .D(audioSampleInputLR[17]),
        .Q(\audio_sample_word_transfer_reg[1]_13 [1]),
        .R(1'b0));
  FDRE \audio_sample_word_transfer_reg[1][2] 
       (.C(audiosampleclk),
        .CE(1'b1),
        .D(audioSampleInputLR[18]),
        .Q(\audio_sample_word_transfer_reg[1]_13 [2]),
        .R(1'b0));
  FDRE \audio_sample_word_transfer_reg[1][3] 
       (.C(audiosampleclk),
        .CE(1'b1),
        .D(audioSampleInputLR[19]),
        .Q(\audio_sample_word_transfer_reg[1]_13 [3]),
        .R(1'b0));
  FDRE \audio_sample_word_transfer_reg[1][4] 
       (.C(audiosampleclk),
        .CE(1'b1),
        .D(audioSampleInputLR[20]),
        .Q(\audio_sample_word_transfer_reg[1]_13 [4]),
        .R(1'b0));
  FDRE \audio_sample_word_transfer_reg[1][5] 
       (.C(audiosampleclk),
        .CE(1'b1),
        .D(audioSampleInputLR[21]),
        .Q(\audio_sample_word_transfer_reg[1]_13 [5]),
        .R(1'b0));
  FDRE \audio_sample_word_transfer_reg[1][6] 
       (.C(audiosampleclk),
        .CE(1'b1),
        .D(audioSampleInputLR[22]),
        .Q(\audio_sample_word_transfer_reg[1]_13 [6]),
        .R(1'b0));
  FDRE \audio_sample_word_transfer_reg[1][7] 
       (.C(audiosampleclk),
        .CE(1'b1),
        .D(audioSampleInputLR[23]),
        .Q(\audio_sample_word_transfer_reg[1]_13 [7]),
        .R(1'b0));
  FDRE \audio_sample_word_transfer_reg[1][8] 
       (.C(audiosampleclk),
        .CE(1'b1),
        .D(audioSampleInputLR[24]),
        .Q(\audio_sample_word_transfer_reg[1]_13 [8]),
        .R(1'b0));
  FDRE \audio_sample_word_transfer_reg[1][9] 
       (.C(audiosampleclk),
        .CE(1'b1),
        .D(audioSampleInputLR[25]),
        .Q(\audio_sample_word_transfer_reg[1]_13 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    auxiliary_video_information_info_frame_sent_reg
       (.C(pixelClock),
        .CE(1'b1),
        .D(audio_clock_regeneration_packet_n_9),
        .Q(auxiliary_video_information_info_frame_sent),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h8000)) 
    \cx[8]_i_2 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\cx_reg[2] ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \cy[9]_i_4 
       (.I0(\true_hdmi_output.data_island_data_reg[1] [4]),
        .I1(\true_hdmi_output.data_island_data_reg[1] [3]),
        .I2(\true_hdmi_output.data_island_data_reg[1] [2]),
        .I3(\true_hdmi_output.data_island_data_reg[1] [0]),
        .I4(\true_hdmi_output.data_island_data_reg[1] [1]),
        .O(\cy_reg[4] ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \frame_counter[2]_i_1 
       (.I0(frame_counter_reg[2]),
        .O(frame_counter2[2]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \frame_counter[3]_i_1 
       (.I0(frame_counter_reg[2]),
        .I1(frame_counter_reg[3]),
        .O(frame_counter2[3]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \frame_counter[4]_i_1 
       (.I0(frame_counter_reg[2]),
        .I1(frame_counter_reg[3]),
        .I2(frame_counter_reg[4]),
        .O(frame_counter2[4]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \frame_counter[5]_i_1 
       (.I0(frame_counter_reg[3]),
        .I1(frame_counter_reg[2]),
        .I2(frame_counter_reg[4]),
        .I3(frame_counter_reg[5]),
        .O(frame_counter2[5]));
  LUT6 #(
    .INIT(64'h1444444444444444)) 
    \frame_counter[6]_i_1 
       (.I0(frame_counter_reg[7]),
        .I1(frame_counter_reg[6]),
        .I2(frame_counter_reg[5]),
        .I3(frame_counter_reg[3]),
        .I4(frame_counter_reg[2]),
        .I5(frame_counter_reg[4]),
        .O(p_0_in__0[6]));
  LUT1 #(
    .INIT(2'h1)) 
    \frame_counter[7]_i_1 
       (.I0(out),
        .O(SR));
  LUT5 #(
    .INIT(32'h00100000)) 
    \frame_counter[7]_i_2 
       (.I0(\packet_type_reg_n_0_[7] ),
        .I1(\packet_type_reg_n_0_[0] ),
        .I2(\packet_type_reg_n_0_[1] ),
        .I3(\packet_type_reg_n_0_[2] ),
        .I4(frame_counter10_in),
        .O(\frame_counter[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4222222222222222)) 
    \frame_counter[7]_i_3 
       (.I0(frame_counter_reg[7]),
        .I1(frame_counter_reg[6]),
        .I2(frame_counter_reg[4]),
        .I3(frame_counter_reg[2]),
        .I4(frame_counter_reg[3]),
        .I5(frame_counter_reg[5]),
        .O(p_0_in__0[7]));
  FDRE #(
    .INIT(1'b0)) 
    \frame_counter_reg[2] 
       (.C(pixelClock),
        .CE(\frame_counter[7]_i_2_n_0 ),
        .D(frame_counter2[2]),
        .Q(frame_counter_reg[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \frame_counter_reg[3] 
       (.C(pixelClock),
        .CE(\frame_counter[7]_i_2_n_0 ),
        .D(frame_counter2[3]),
        .Q(frame_counter_reg[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \frame_counter_reg[4] 
       (.C(pixelClock),
        .CE(\frame_counter[7]_i_2_n_0 ),
        .D(frame_counter2[4]),
        .Q(frame_counter_reg[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \frame_counter_reg[5] 
       (.C(pixelClock),
        .CE(\frame_counter[7]_i_2_n_0 ),
        .D(frame_counter2[5]),
        .Q(frame_counter_reg[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \frame_counter_reg[6] 
       (.C(pixelClock),
        .CE(\frame_counter[7]_i_2_n_0 ),
        .D(p_0_in__0[6]),
        .Q(frame_counter_reg[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \frame_counter_reg[7] 
       (.C(pixelClock),
        .CE(\frame_counter[7]_i_2_n_0 ),
        .D(p_0_in__0[7]),
        .Q(frame_counter_reg[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    last_clk_audio_counter_wrap_reg
       (.C(pixelClock),
        .CE(1'b1),
        .D(audio_clock_regeneration_packet_n_7),
        .Q(last_clk_audio_counter_wrap_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \packet_type[0]_i_2 
       (.I0(sample_buffer_ready),
        .I1(source_product_description_info_frame_sent),
        .I2(audio_info_frame_sent),
        .I3(auxiliary_video_information_info_frame_sent),
        .O(packet_type[0]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'hFF70)) 
    \packet_type[1]_i_2 
       (.I0(source_product_description_info_frame_sent),
        .I1(auxiliary_video_information_info_frame_sent),
        .I2(audio_info_frame_sent),
        .I3(sample_buffer_ready),
        .O(packet_type[1]));
  LUT6 #(
    .INIT(64'h40000000FFFFFFFF)) 
    \packet_type[2]_i_3 
       (.I0(\packet_type[2]_i_4_n_0 ),
        .I1(Q[6]),
        .I2(Q[5]),
        .I3(Q[4]),
        .I4(\cx_reg[2] ),
        .I5(out),
        .O(\packet_type[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDFF)) 
    \packet_type[2]_i_4 
       (.I0(\cy_reg[4] ),
        .I1(\true_hdmi_output.data_island_data_reg[1] [5]),
        .I2(Q[8]),
        .I3(Q[9]),
        .I4(Q[7]),
        .I5(\cy_reg[9] ),
        .O(\packet_type[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    \packet_type[7]_i_2 
       (.I0(\true_hdmi_output.data_island_period_instantaneous ),
        .I1(Q[4]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(\true_hdmi_output.packet_enable ));
  FDRE #(
    .INIT(1'b0)) 
    \packet_type_reg[0] 
       (.C(pixelClock),
        .CE(1'b1),
        .D(audio_clock_regeneration_packet_n_28),
        .Q(\packet_type_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \packet_type_reg[1] 
       (.C(pixelClock),
        .CE(1'b1),
        .D(audio_clock_regeneration_packet_n_27),
        .Q(\packet_type_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \packet_type_reg[2] 
       (.C(pixelClock),
        .CE(1'b1),
        .D(audio_clock_regeneration_packet_n_26),
        .Q(\packet_type_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \packet_type_reg[7] 
       (.C(pixelClock),
        .CE(1'b1),
        .D(audio_clock_regeneration_packet_n_25),
        .Q(\packet_type_reg_n_0_[7] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8888888888888B88)) 
    \parity[0][7]_i_10 
       (.I0(\true_hdmi_output.sub[0]_23 [43]),
        .I1(\parity_reg[1][6] [0]),
        .I2(\parity[1][6]_i_7_n_0 ),
        .I3(\audio_sample_word_packet_reg_n_0_[0][1][17] ),
        .I4(\parity[1][6]_i_9_n_0 ),
        .I5(\packet_type_reg_n_0_[7] ),
        .O(\parity[0][7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \parity[0][7]_i_11 
       (.I0(\audio_sample_word_packet_reg_n_0_[0][1][15] ),
        .I1(\parity_reg[1][6] [0]),
        .I2(\parity[1][6]_i_7_n_0 ),
        .I3(\audio_sample_word_packet_reg_n_0_[0][1][13] ),
        .I4(\parity[1][6]_i_9_n_0 ),
        .I5(\packet_type_reg_n_0_[7] ),
        .O(\parity[0][7]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \parity[0][7]_i_12 
       (.I0(\audio_sample_word_packet_reg_n_0_[0][1][11] ),
        .I1(\parity_reg[1][6] [0]),
        .I2(\parity[1][6]_i_7_n_0 ),
        .I3(\audio_sample_word_packet_reg_n_0_[0][1][9] ),
        .I4(\parity[1][6]_i_9_n_0 ),
        .I5(\packet_type_reg_n_0_[7] ),
        .O(\parity[0][7]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \parity[0][7]_i_15 
       (.I0(\true_hdmi_output.data_island_data[8]_i_13_n_0 ),
        .I1(\parity_reg[1][6] [1]),
        .I2(\parity[0][7]_i_29_n_0 ),
        .I3(\parity_reg[1][6] [0]),
        .I4(\true_hdmi_output.sub[0]_23 [9]),
        .O(\parity[0][7]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0000E70004000000)) 
    \parity[0][7]_i_16 
       (.I0(\packet_type_reg_n_0_[0] ),
        .I1(\parity_reg[1][6] [1]),
        .I2(\parity_reg[1][6] [0]),
        .I3(\packet_type_reg_n_0_[7] ),
        .I4(\packet_type_reg_n_0_[2] ),
        .I5(\packet_type_reg_n_0_[1] ),
        .O(\parity[0][7]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h000A0C0000000000)) 
    \parity[0][7]_i_20 
       (.I0(\parity_reg[1][6] [1]),
        .I1(\parity_reg[1][6] [0]),
        .I2(\packet_type_reg_n_0_[0] ),
        .I3(\packet_type_reg_n_0_[1] ),
        .I4(\packet_type_reg_n_0_[2] ),
        .I5(\packet_type_reg_n_0_[7] ),
        .O(\parity[0][7]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h888888888B8B8B88)) 
    \parity[0][7]_i_21 
       (.I0(\true_hdmi_output.sub[0]_23 [46]),
        .I1(\parity_reg[1][6] [0]),
        .I2(\parity[1][6]_i_9_n_0 ),
        .I3(\audio_sample_word_packet_reg_n_0_[0][1][20] ),
        .I4(\parity[1][6]_i_7_n_0 ),
        .I5(\packet_type_reg_n_0_[7] ),
        .O(\parity[0][7]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \parity[0][7]_i_22 
       (.I0(\parity[1][6]_i_7_n_0 ),
        .I1(\audio_sample_word_packet_reg_n_0_[0][1][18] ),
        .I2(\parity[1][6]_i_9_n_0 ),
        .I3(\packet_type_reg_n_0_[7] ),
        .I4(\parity_reg[1][6] [0]),
        .I5(\true_hdmi_output.sub[0]_23 [40]),
        .O(\parity[0][7]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \parity[0][7]_i_24 
       (.I0(\parity[1][6]_i_7_n_0 ),
        .I1(\audio_sample_word_packet_reg_n_0_[0][1][10] ),
        .I2(\parity[1][6]_i_9_n_0 ),
        .I3(\packet_type_reg_n_0_[7] ),
        .I4(\parity_reg[1][6] [0]),
        .I5(\true_hdmi_output.sub[0]_23 [32]),
        .O(\parity[0][7]_i_24_n_0 ));
  LUT5 #(
    .INIT(32'h88888B88)) 
    \parity[0][7]_i_25 
       (.I0(\true_hdmi_output.data_island_data[4]_i_7_n_0 ),
        .I1(\packet_type_reg_n_0_[7] ),
        .I2(\parity[1][6]_i_9_n_0 ),
        .I3(\audio_sample_word_packet_reg_n_0_[0][1][21] ),
        .I4(\parity[1][6]_i_7_n_0 ),
        .O(\true_hdmi_output.sub[0]_23 [45]));
  LUT5 #(
    .INIT(32'h8888BBB8)) 
    \parity[0][7]_i_26 
       (.I0(\true_hdmi_output.data_island_data[4]_i_7_n_0 ),
        .I1(\packet_type_reg_n_0_[7] ),
        .I2(\parity[1][6]_i_7_n_0 ),
        .I3(\audio_sample_word_packet_reg_n_0_[0][1][19] ),
        .I4(\parity[1][6]_i_9_n_0 ),
        .O(\true_hdmi_output.sub[0]_23 [43]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \parity[0][7]_i_29 
       (.I0(\parity[1][6]_i_7_n_0 ),
        .I1(\audio_sample_word_packet_reg_n_0_[0][0][11] ),
        .I2(\parity[1][6]_i_9_n_0 ),
        .I3(\packet_type_reg_n_0_[7] ),
        .O(\parity[0][7]_i_29_n_0 ));
  LUT5 #(
    .INIT(32'h88888B88)) 
    \parity[0][7]_i_30 
       (.I0(\true_hdmi_output.data_island_data[4]_i_7_n_0 ),
        .I1(\packet_type_reg_n_0_[7] ),
        .I2(\parity[1][6]_i_9_n_0 ),
        .I3(\audio_sample_word_packet_reg_n_0_[0][0][9] ),
        .I4(\parity[1][6]_i_7_n_0 ),
        .O(\true_hdmi_output.sub[0]_23 [9]));
  LUT5 #(
    .INIT(32'h88888B88)) 
    \parity[0][7]_i_38 
       (.I0(\true_hdmi_output.data_island_data[4]_i_7_n_0 ),
        .I1(\packet_type_reg_n_0_[7] ),
        .I2(\parity[1][6]_i_9_n_0 ),
        .I3(\audio_sample_word_packet_reg_n_0_[0][1][22] ),
        .I4(\parity[1][6]_i_7_n_0 ),
        .O(\true_hdmi_output.sub[0]_23 [46]));
  LUT5 #(
    .INIT(32'h88888B88)) 
    \parity[0][7]_i_39 
       (.I0(\true_hdmi_output.data_island_data[4]_i_7_n_0 ),
        .I1(\packet_type_reg_n_0_[7] ),
        .I2(\parity[1][6]_i_9_n_0 ),
        .I3(\audio_sample_word_packet_reg_n_0_[0][1][16] ),
        .I4(\parity[1][6]_i_7_n_0 ),
        .O(\true_hdmi_output.sub[0]_23 [40]));
  LUT5 #(
    .INIT(32'h88888B88)) 
    \parity[0][7]_i_40 
       (.I0(\true_hdmi_output.data_island_data[4]_i_7_n_0 ),
        .I1(\packet_type_reg_n_0_[7] ),
        .I2(\parity[1][6]_i_9_n_0 ),
        .I3(\audio_sample_word_packet_reg_n_0_[0][1][12] ),
        .I4(\parity[1][6]_i_7_n_0 ),
        .O(\true_hdmi_output.sub[0]_23 [36]));
  LUT5 #(
    .INIT(32'h88888B88)) 
    \parity[0][7]_i_41 
       (.I0(\true_hdmi_output.data_island_data[4]_i_7_n_0 ),
        .I1(\packet_type_reg_n_0_[7] ),
        .I2(\parity[1][6]_i_9_n_0 ),
        .I3(\audio_sample_word_packet_reg_n_0_[0][1][14] ),
        .I4(\parity[1][6]_i_7_n_0 ),
        .O(\true_hdmi_output.sub[0]_23 [38]));
  LUT5 #(
    .INIT(32'h88888B88)) 
    \parity[0][7]_i_42 
       (.I0(\true_hdmi_output.data_island_data[8]_i_17_n_0 ),
        .I1(\packet_type_reg_n_0_[7] ),
        .I2(\parity[1][6]_i_9_n_0 ),
        .I3(\audio_sample_word_packet_reg_n_0_[0][1][8] ),
        .I4(\parity[1][6]_i_7_n_0 ),
        .O(\true_hdmi_output.sub[0]_23 [32]));
  LUT5 #(
    .INIT(32'h88888B88)) 
    \parity[0][7]_i_47 
       (.I0(\parity[0][7]_i_51_n_0 ),
        .I1(\packet_type_reg_n_0_[7] ),
        .I2(\parity[1][6]_i_9_n_0 ),
        .I3(\audio_sample_word_packet_reg_n_0_[0][0][8] ),
        .I4(\parity[1][6]_i_7_n_0 ),
        .O(\true_hdmi_output.sub[0]_23 [8]));
  LUT4 #(
    .INIT(16'h0004)) 
    \parity[0][7]_i_48 
       (.I0(\parity[1][6]_i_7_n_0 ),
        .I1(\audio_sample_word_packet_reg_n_0_[0][0][10] ),
        .I2(\parity[1][6]_i_9_n_0 ),
        .I3(\packet_type_reg_n_0_[7] ),
        .O(\parity[0][7]_i_48_n_0 ));
  LUT5 #(
    .INIT(32'h88888B88)) 
    \parity[0][7]_i_49 
       (.I0(\true_hdmi_output.data_island_data[4]_i_7_n_0 ),
        .I1(\packet_type_reg_n_0_[7] ),
        .I2(\parity[1][6]_i_9_n_0 ),
        .I3(\audio_sample_word_packet_reg_n_0_[0][0][12] ),
        .I4(\parity[1][6]_i_7_n_0 ),
        .O(\true_hdmi_output.sub[0]_23 [12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \parity[0][7]_i_5 
       (.I0(\parity[0][7]_i_9_n_0 ),
        .I1(\parity[0][7]_i_10_n_0 ),
        .I2(\parity_reg[1][6] [2]),
        .I3(\parity[0][7]_i_11_n_0 ),
        .I4(\parity_reg[1][6] [1]),
        .I5(\parity[0][7]_i_12_n_0 ),
        .O(\counter_reg[2]_1 ));
  LUT5 #(
    .INIT(32'h88888B88)) 
    \parity[0][7]_i_50 
       (.I0(\true_hdmi_output.data_island_data[4]_i_7_n_0 ),
        .I1(\packet_type_reg_n_0_[7] ),
        .I2(\parity[1][6]_i_9_n_0 ),
        .I3(\audio_sample_word_packet_reg_n_0_[0][0][14] ),
        .I4(\parity[1][6]_i_7_n_0 ),
        .O(\true_hdmi_output.sub[0]_23 [14]));
  LUT3 #(
    .INIT(8'h42)) 
    \parity[0][7]_i_51 
       (.I0(\packet_type_reg_n_0_[2] ),
        .I1(\packet_type_reg_n_0_[1] ),
        .I2(\packet_type_reg_n_0_[0] ),
        .O(\parity[0][7]_i_51_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \parity[0][7]_i_8 
       (.I0(\parity[0][7]_i_21_n_0 ),
        .I1(\parity[0][7]_i_22_n_0 ),
        .I2(\parity_reg[1][6] [2]),
        .I3(\parity_reg[0][7]_i_23_n_0 ),
        .I4(\parity_reg[1][6] [1]),
        .I5(\parity[0][7]_i_24_n_0 ),
        .O(\counter_reg[2] ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \parity[0][7]_i_9 
       (.I0(\parity[1][6]_i_7_n_0 ),
        .I1(\audio_sample_word_packet_reg_n_0_[0][1][23] ),
        .I2(\parity[1][6]_i_9_n_0 ),
        .I3(\packet_type_reg_n_0_[7] ),
        .I4(\parity_reg[1][6] [0]),
        .I5(\true_hdmi_output.sub[0]_23 [45]),
        .O(\parity[0][7]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h88888B88)) 
    \parity[1][6]_i_10 
       (.I0(\true_hdmi_output.data_island_data[4]_i_7_n_0 ),
        .I1(\packet_type_reg_n_0_[7] ),
        .I2(\parity[1][6]_i_9_n_0 ),
        .I3(\subs[2][1]_4 [34]),
        .I4(\parity[1][6]_i_7_n_0 ),
        .O(\true_hdmi_output.sub[1]_0 [34]));
  LUT5 #(
    .INIT(32'h88888B88)) 
    \parity[1][6]_i_11 
       (.I0(\true_hdmi_output.data_island_data[4]_i_7_n_0 ),
        .I1(\packet_type_reg_n_0_[7] ),
        .I2(\parity[1][6]_i_9_n_0 ),
        .I3(\subs[2][1]_4 [32]),
        .I4(\parity[1][6]_i_7_n_0 ),
        .O(\true_hdmi_output.sub[1]_0 [32]));
  LUT6 #(
    .INIT(64'h0000000000000090)) 
    \parity[1][6]_i_12 
       (.I0(frame_counter_reg[6]),
        .I1(frame_counter_reg[7]),
        .I2(frame_counter_reg[5]),
        .I3(frame_counter_reg[4]),
        .I4(frame_counter_reg[3]),
        .I5(frame_counter_reg[2]),
        .O(\subs[2][1]_4 [50]));
  LUT6 #(
    .INIT(64'h0000FD0D00000000)) 
    \parity[1][6]_i_2 
       (.I0(\parity[1][6]_i_4_n_0 ),
        .I1(\parity[1][6]_i_5_n_0 ),
        .I2(\parity_reg[1][6] [2]),
        .I3(\parity_reg[1][7]_i_9_n_0 ),
        .I4(\parity_reg[1][6] [3]),
        .I5(\parity_reg[1][6] [4]),
        .O(\parity[1][6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5555555555555455)) 
    \parity[1][6]_i_3 
       (.I0(\parity[1][6]_i_6_n_0 ),
        .I1(\parity_reg[1][6]_0 ),
        .I2(\parity[1][6]_i_7_n_0 ),
        .I3(\subs[2][1]_4 [54]),
        .I4(\parity[1][6]_i_9_n_0 ),
        .I5(\packet_type_reg_n_0_[7] ),
        .O(\packet_type_reg[7]_1 ));
  LUT5 #(
    .INIT(32'h47CC47FF)) 
    \parity[1][6]_i_4 
       (.I0(\true_hdmi_output.sub[1]_0 [38]),
        .I1(\parity_reg[1][6] [1]),
        .I2(\true_hdmi_output.sub[1]_0 [34]),
        .I3(\parity_reg[1][6] [0]),
        .I4(\true_hdmi_output.sub[1]_0 [32]),
        .O(\parity[1][6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    \parity[1][6]_i_5 
       (.I0(\packet_type_reg_n_0_[7] ),
        .I1(\parity[1][6]_i_9_n_0 ),
        .I2(\subs[2][1]_4 [36]),
        .I3(\parity[1][6]_i_7_n_0 ),
        .I4(\parity_reg[1][6] [1]),
        .I5(\parity_reg[1][6] [0]),
        .O(\parity[1][6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    \parity[1][6]_i_6 
       (.I0(\packet_type_reg_n_0_[7] ),
        .I1(\parity[1][6]_i_9_n_0 ),
        .I2(\subs[2][1]_4 [50]),
        .I3(\parity[1][6]_i_7_n_0 ),
        .I4(\parity_reg[1][6] [0]),
        .I5(\parity_reg[1][6] [1]),
        .O(\parity[1][6]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \parity[1][6]_i_7 
       (.I0(\packet_type_reg_n_0_[2] ),
        .I1(\packet_type_reg_n_0_[1] ),
        .O(\parity[1][6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0120000000000120)) 
    \parity[1][6]_i_8 
       (.I0(frame_counter_reg[2]),
        .I1(frame_counter_reg[3]),
        .I2(frame_counter_reg[4]),
        .I3(frame_counter_reg[5]),
        .I4(frame_counter_reg[6]),
        .I5(frame_counter_reg[7]),
        .O(\subs[2][1]_4 [54]));
  LUT3 #(
    .INIT(8'hEA)) 
    \parity[1][6]_i_9 
       (.I0(\packet_type_reg_n_0_[2] ),
        .I1(\packet_type_reg_n_0_[1] ),
        .I2(\packet_type_reg_n_0_[0] ),
        .O(\parity[1][6]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEEEFEEEFEEEFE)) 
    \parity[1][7]_i_10 
       (.I0(\parity[1][6]_i_5_n_0 ),
        .I1(\parity_reg[1][6] [2]),
        .I2(\parity_reg[1][7]_i_24_n_0 ),
        .I3(\parity_reg[1][6] [1]),
        .I4(\parity_reg[1][6] [0]),
        .I5(\true_hdmi_output.sub[1]_0 [38]),
        .O(\parity[1][7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF080000000800)) 
    \parity[1][7]_i_13 
       (.I0(\true_hdmi_output.data_island_data[4]_i_7_n_0 ),
        .I1(\packet_type_reg_n_0_[7] ),
        .I2(\parity_reg[1][6] [0]),
        .I3(\parity_reg[1][6] [1]),
        .I4(\parity_reg[1][6] [2]),
        .I5(\parity_reg[1][7]_i_32_n_0 ),
        .O(\parity[1][7]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0054000000000000)) 
    \parity[1][7]_i_14 
       (.I0(\packet_type_reg_n_0_[7] ),
        .I1(\parity[1][6]_i_7_n_0 ),
        .I2(\subs[2][1]_4 [55]),
        .I3(\parity[1][6]_i_9_n_0 ),
        .I4(\parity_reg[1][6] [0]),
        .I5(\parity_reg[1][6] [1]),
        .O(\packet_type_reg[7]_3 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFDFFFF)) 
    \parity[1][7]_i_15 
       (.I0(\parity_reg[1][6] [0]),
        .I1(\parity_reg[1][6] [1]),
        .I2(\packet_type_reg_n_0_[7] ),
        .I3(\parity[1][6]_i_9_n_0 ),
        .I4(\subs[2][1]_4 [51]),
        .I5(\parity[1][6]_i_7_n_0 ),
        .O(\counter_reg[0] ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \parity[1][7]_i_22 
       (.I0(\parity[1][6]_i_7_n_0 ),
        .I1(\subs[2][1]_4 [42]),
        .I2(\parity[1][6]_i_9_n_0 ),
        .I3(\packet_type_reg_n_0_[7] ),
        .I4(\parity_reg[1][6] [0]),
        .I5(\true_hdmi_output.sub[1]_0 [40]),
        .O(\parity[1][7]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h888888888B8B8B88)) 
    \parity[1][7]_i_23 
       (.I0(\true_hdmi_output.sub[1]_0 [46]),
        .I1(\parity_reg[1][6] [0]),
        .I2(\parity[1][6]_i_9_n_0 ),
        .I3(\subs[2][1]_4 [44]),
        .I4(\parity[1][6]_i_7_n_0 ),
        .I5(\packet_type_reg_n_0_[7] ),
        .O(\parity[1][7]_i_23_n_0 ));
  LUT5 #(
    .INIT(32'h88888B88)) 
    \parity[1][7]_i_25 
       (.I0(\true_hdmi_output.data_island_data[4]_i_7_n_0 ),
        .I1(\packet_type_reg_n_0_[7] ),
        .I2(\parity[1][6]_i_9_n_0 ),
        .I3(\subs[2][1]_4 [38]),
        .I4(\parity[1][6]_i_7_n_0 ),
        .O(\true_hdmi_output.sub[1]_0 [38]));
  LUT6 #(
    .INIT(64'h4C404C4C40404040)) 
    \parity[1][7]_i_3 
       (.I0(\packet_type_reg[7]_1 ),
        .I1(\parity_reg[1][6] [4]),
        .I2(\parity_reg[1][6] [3]),
        .I3(\parity_reg[1][7]_i_9_n_0 ),
        .I4(\parity_reg[1][6] [2]),
        .I5(\parity[1][7]_i_10_n_0 ),
        .O(\counter_reg[4] ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \parity[1][7]_i_33 
       (.I0(\subs[2][1]_4 [54]),
        .I1(\parity[1][7]_i_52_n_0 ),
        .I2(\parity[1][7]_i_53_n_0 ),
        .I3(\parity[1][7]_i_54_n_0 ),
        .I4(\parity[1][7]_i_55_n_0 ),
        .O(\subs[2][1]_4 [55]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \parity[1][7]_i_34 
       (.I0(\parity[1][7]_i_56_n_0 ),
        .I1(\parity[1][7]_i_57_n_0 ),
        .I2(\subs[2][1]_4 [50]),
        .I3(\parity[1][7]_i_58_n_0 ),
        .I4(\subs[2][1]_4 [8]),
        .I5(\subs[2][1]_4 [9]),
        .O(\subs[2][1]_4 [51]));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \parity[1][7]_i_35 
       (.I0(\subs[2][1]_4 [10]),
        .I1(\parity_reg[1][6] [0]),
        .I2(\parity[1][6]_i_7_n_0 ),
        .I3(\subs[2][1]_4 [8]),
        .I4(\parity[1][6]_i_9_n_0 ),
        .I5(\packet_type_reg_n_0_[7] ),
        .O(\parity[1][7]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \parity[1][7]_i_36 
       (.I0(\subs[2][1]_4 [14]),
        .I1(\parity_reg[1][6] [0]),
        .I2(\parity[1][6]_i_7_n_0 ),
        .I3(\subs[2][1]_4 [12]),
        .I4(\parity[1][6]_i_9_n_0 ),
        .I5(\packet_type_reg_n_0_[7] ),
        .O(\parity[1][7]_i_36_n_0 ));
  LUT5 #(
    .INIT(32'h88888B88)) 
    \parity[1][7]_i_41 
       (.I0(\true_hdmi_output.data_island_data[4]_i_7_n_0 ),
        .I1(\packet_type_reg_n_0_[7] ),
        .I2(\parity[1][6]_i_9_n_0 ),
        .I3(\subs[2][1]_4 [40]),
        .I4(\parity[1][6]_i_7_n_0 ),
        .O(\true_hdmi_output.sub[1]_0 [40]));
  LUT5 #(
    .INIT(32'h88888B88)) 
    \parity[1][7]_i_42 
       (.I0(\true_hdmi_output.data_island_data[4]_i_7_n_0 ),
        .I1(\packet_type_reg_n_0_[7] ),
        .I2(\parity[1][6]_i_9_n_0 ),
        .I3(\subs[2][1]_4 [46]),
        .I4(\parity[1][6]_i_7_n_0 ),
        .O(\true_hdmi_output.sub[1]_0 [46]));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \parity[1][7]_i_43 
       (.I0(\parity[1][6]_i_7_n_0 ),
        .I1(\subs[2][1]_4 [35]),
        .I2(\parity[1][6]_i_9_n_0 ),
        .I3(\packet_type_reg_n_0_[7] ),
        .I4(\parity_reg[1][6] [0]),
        .I5(\true_hdmi_output.sub[1]_0 [33]),
        .O(\parity[1][7]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \parity[1][7]_i_44 
       (.I0(\subs[2][1]_4 [39]),
        .I1(\parity_reg[1][6] [0]),
        .I2(\parity[1][6]_i_7_n_0 ),
        .I3(\subs[2][1]_4 [37]),
        .I4(\parity[1][6]_i_9_n_0 ),
        .I5(\packet_type_reg_n_0_[7] ),
        .O(\parity[1][7]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000CBC8)) 
    \parity[1][7]_i_45 
       (.I0(\subs[2][1]_4 [43]),
        .I1(\parity_reg[1][6] [0]),
        .I2(\parity[1][6]_i_7_n_0 ),
        .I3(\subs[2][1]_4 [41]),
        .I4(\parity[1][6]_i_9_n_0 ),
        .I5(\packet_type_reg_n_0_[7] ),
        .O(\parity[1][7]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \parity[1][7]_i_46 
       (.I0(\subs[2][1]_4 [47]),
        .I1(\parity_reg[1][6] [0]),
        .I2(\parity[1][6]_i_7_n_0 ),
        .I3(\subs[2][1]_4 [45]),
        .I4(\parity[1][6]_i_9_n_0 ),
        .I5(\packet_type_reg_n_0_[7] ),
        .O(\parity[1][7]_i_46_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \parity[1][7]_i_50 
       (.I0(\subs[2][1]_4 [11]),
        .I1(\parity_reg[1][6] [0]),
        .I2(\parity[1][6]_i_7_n_0 ),
        .I3(\subs[2][1]_4 [9]),
        .I4(\parity[1][6]_i_9_n_0 ),
        .I5(\packet_type_reg_n_0_[7] ),
        .O(\parity[1][7]_i_50_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \parity[1][7]_i_51 
       (.I0(\subs[2][1]_4 [15]),
        .I1(\parity_reg[1][6] [0]),
        .I2(\parity[1][6]_i_7_n_0 ),
        .I3(\subs[2][1]_4 [13]),
        .I4(\parity[1][6]_i_9_n_0 ),
        .I5(\packet_type_reg_n_0_[7] ),
        .O(\parity[1][7]_i_51_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \parity[1][7]_i_52 
       (.I0(\subs[2][1]_4 [45]),
        .I1(\subs[2][1]_4 [44]),
        .I2(\subs[2][1]_4 [43]),
        .I3(\subs[2][1]_4 [42]),
        .O(\parity[1][7]_i_52_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \parity[1][7]_i_53 
       (.I0(\subs[2][1]_4 [41]),
        .I1(\subs[2][1]_4 [40]),
        .I2(\subs[2][1]_4 [47]),
        .I3(\subs[2][1]_4 [46]),
        .O(\parity[1][7]_i_53_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \parity[1][7]_i_54 
       (.I0(\subs[2][1]_4 [39]),
        .I1(\subs[2][1]_4 [38]),
        .I2(\subs[2][1]_4 [37]),
        .I3(\subs[2][1]_4 [36]),
        .O(\parity[1][7]_i_54_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \parity[1][7]_i_55 
       (.I0(\subs[2][1]_4 [33]),
        .I1(\subs[2][1]_4 [32]),
        .I2(\subs[2][1]_4 [35]),
        .I3(\subs[2][1]_4 [34]),
        .O(\parity[1][7]_i_55_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \parity[1][7]_i_56 
       (.I0(\subs[2][1]_4 [17]),
        .I1(\subs[2][1]_4 [16]),
        .I2(\subs[2][1]_4 [19]),
        .I3(\subs[2][1]_4 [18]),
        .O(\parity[1][7]_i_56_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \parity[1][7]_i_57 
       (.I0(\subs[2][1]_4 [23]),
        .I1(\subs[2][1]_4 [22]),
        .I2(\subs[2][1]_4 [21]),
        .I3(\subs[2][1]_4 [20]),
        .O(\parity[1][7]_i_57_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \parity[1][7]_i_58 
       (.I0(\subs[2][1]_4 [15]),
        .I1(\subs[2][1]_4 [14]),
        .I2(\subs[2][1]_4 [10]),
        .I3(\subs[2][1]_4 [11]),
        .I4(\subs[2][1]_4 [12]),
        .I5(\subs[2][1]_4 [13]),
        .O(\parity[1][7]_i_58_n_0 ));
  LUT5 #(
    .INIT(32'h88888B88)) 
    \parity[1][7]_i_59 
       (.I0(\true_hdmi_output.data_island_data[4]_i_7_n_0 ),
        .I1(\packet_type_reg_n_0_[7] ),
        .I2(\parity[1][6]_i_9_n_0 ),
        .I3(\subs[2][1]_4 [33]),
        .I4(\parity[1][6]_i_7_n_0 ),
        .O(\true_hdmi_output.sub[1]_0 [33]));
  LUT6 #(
    .INIT(64'hB8888888B888B888)) 
    \parity[1][7]_i_6 
       (.I0(\parity_reg[1][7]_i_16_n_0 ),
        .I1(\parity_reg[1][6] [2]),
        .I2(\true_hdmi_output.data_island_data[4]_i_7_n_0 ),
        .I3(\packet_type_reg_n_0_[7] ),
        .I4(\parity_reg[1][6] [0]),
        .I5(\parity_reg[1][6] [1]),
        .O(\parity[1][7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0054000000000000)) 
    \parity[2][7]_i_10 
       (.I0(\packet_type_reg_n_0_[7] ),
        .I1(\parity[1][6]_i_7_n_0 ),
        .I2(\subs[2][2]_3 [55]),
        .I3(\parity[1][6]_i_9_n_0 ),
        .I4(\parity_reg[1][6] [0]),
        .I5(\parity_reg[1][6] [1]),
        .O(\packet_type_reg[7]_2 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFDFFFF)) 
    \parity[2][7]_i_11 
       (.I0(\parity_reg[1][6] [0]),
        .I1(\parity_reg[1][6] [1]),
        .I2(\packet_type_reg_n_0_[7] ),
        .I3(\parity[1][6]_i_9_n_0 ),
        .I4(\subs[2][2]_3 [51]),
        .I5(\parity[1][6]_i_7_n_0 ),
        .O(\counter_reg[0]_1 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \parity[2][7]_i_18 
       (.I0(\subs[2][2]_3 [11]),
        .I1(\parity_reg[1][6] [0]),
        .I2(\parity[1][6]_i_7_n_0 ),
        .I3(\subs[2][2]_3 [9]),
        .I4(\parity[1][6]_i_9_n_0 ),
        .I5(\packet_type_reg_n_0_[7] ),
        .O(\parity[2][7]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \parity[2][7]_i_19 
       (.I0(\subs[2][2]_3 [15]),
        .I1(\parity_reg[1][6] [0]),
        .I2(\parity[1][6]_i_7_n_0 ),
        .I3(\subs[2][2]_3 [13]),
        .I4(\parity[1][6]_i_9_n_0 ),
        .I5(\packet_type_reg_n_0_[7] ),
        .O(\parity[2][7]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \parity[2][7]_i_22 
       (.I0(\parity[2][7]_i_37_n_0 ),
        .I1(\parity[2][7]_i_38_n_0 ),
        .I2(\subs[2][2]_3 [54]),
        .I3(\parity[2][7]_i_39_n_0 ),
        .I4(\parity[2][7]_i_40_n_0 ),
        .O(\subs[2][2]_3 [55]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \parity[2][7]_i_23 
       (.I0(\parity[2][7]_i_41_n_0 ),
        .I1(\parity[2][7]_i_42_n_0 ),
        .I2(\subs[2][2]_3 [54]),
        .I3(\parity[2][7]_i_43_n_0 ),
        .I4(\parity[2][7]_i_44_n_0 ),
        .O(\subs[2][2]_3 [51]));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \parity[2][7]_i_24 
       (.I0(\subs[2][2]_3 [10]),
        .I1(\parity_reg[1][6] [0]),
        .I2(\parity[1][6]_i_7_n_0 ),
        .I3(\subs[2][2]_3 [8]),
        .I4(\parity[1][6]_i_9_n_0 ),
        .I5(\packet_type_reg_n_0_[7] ),
        .O(\parity[2][7]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \parity[2][7]_i_25 
       (.I0(\subs[2][2]_3 [14]),
        .I1(\parity_reg[1][6] [0]),
        .I2(\parity[1][6]_i_7_n_0 ),
        .I3(\subs[2][2]_3 [12]),
        .I4(\parity[1][6]_i_9_n_0 ),
        .I5(\packet_type_reg_n_0_[7] ),
        .O(\parity[2][7]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \parity[2][7]_i_28 
       (.I0(\subs[2][2]_3 [34]),
        .I1(\parity_reg[1][6] [0]),
        .I2(\parity[1][6]_i_7_n_0 ),
        .I3(\subs[2][2]_3 [32]),
        .I4(\parity[1][6]_i_9_n_0 ),
        .I5(\packet_type_reg_n_0_[7] ),
        .O(\parity[2][7]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \parity[2][7]_i_29 
       (.I0(\subs[2][2]_3 [38]),
        .I1(\parity_reg[1][6] [0]),
        .I2(\parity[1][6]_i_7_n_0 ),
        .I3(\subs[2][2]_3 [36]),
        .I4(\parity[1][6]_i_9_n_0 ),
        .I5(\packet_type_reg_n_0_[7] ),
        .O(\parity[2][7]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \parity[2][7]_i_30 
       (.I0(\subs[2][2]_3 [35]),
        .I1(\parity_reg[1][6] [0]),
        .I2(\parity[1][6]_i_7_n_0 ),
        .I3(\subs[2][2]_3 [33]),
        .I4(\parity[1][6]_i_9_n_0 ),
        .I5(\packet_type_reg_n_0_[7] ),
        .O(\parity[2][7]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \parity[2][7]_i_31 
       (.I0(\subs[2][2]_3 [39]),
        .I1(\parity_reg[1][6] [0]),
        .I2(\parity[1][6]_i_7_n_0 ),
        .I3(\subs[2][2]_3 [37]),
        .I4(\parity[1][6]_i_9_n_0 ),
        .I5(\packet_type_reg_n_0_[7] ),
        .O(\parity[2][7]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000CBC8)) 
    \parity[2][7]_i_32 
       (.I0(\subs[2][2]_3 [43]),
        .I1(\parity_reg[1][6] [0]),
        .I2(\parity[1][6]_i_7_n_0 ),
        .I3(\subs[2][2]_3 [41]),
        .I4(\parity[1][6]_i_9_n_0 ),
        .I5(\packet_type_reg_n_0_[7] ),
        .O(\parity[2][7]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \parity[2][7]_i_33 
       (.I0(\subs[2][2]_3 [47]),
        .I1(\parity_reg[1][6] [0]),
        .I2(\parity[1][6]_i_7_n_0 ),
        .I3(\subs[2][2]_3 [45]),
        .I4(\parity[1][6]_i_9_n_0 ),
        .I5(\packet_type_reg_n_0_[7] ),
        .O(\parity[2][7]_i_33_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \parity[2][7]_i_37 
       (.I0(\subs[2][2]_3 [41]),
        .I1(\subs[2][2]_3 [40]),
        .I2(\subs[2][2]_3 [43]),
        .I3(\subs[2][2]_3 [42]),
        .O(\parity[2][7]_i_37_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \parity[2][7]_i_38 
       (.I0(\subs[2][2]_3 [45]),
        .I1(\subs[2][2]_3 [44]),
        .I2(\subs[2][2]_3 [47]),
        .I3(\subs[2][2]_3 [46]),
        .O(\parity[2][7]_i_38_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \parity[2][7]_i_39 
       (.I0(\subs[2][2]_3 [33]),
        .I1(\subs[2][2]_3 [32]),
        .I2(\subs[2][2]_3 [39]),
        .I3(\subs[2][2]_3 [38]),
        .O(\parity[2][7]_i_39_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \parity[2][7]_i_40 
       (.I0(\subs[2][2]_3 [37]),
        .I1(\subs[2][2]_3 [36]),
        .I2(\subs[2][2]_3 [35]),
        .I3(\subs[2][2]_3 [34]),
        .O(\parity[2][7]_i_40_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \parity[2][7]_i_41 
       (.I0(\subs[2][2]_3 [19]),
        .I1(\subs[2][2]_3 [18]),
        .I2(\subs[2][2]_3 [17]),
        .I3(\subs[2][2]_3 [16]),
        .O(\parity[2][7]_i_41_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \parity[2][7]_i_42 
       (.I0(\subs[2][2]_3 [23]),
        .I1(\subs[2][2]_3 [22]),
        .I2(\subs[2][2]_3 [21]),
        .I3(\subs[2][2]_3 [20]),
        .O(\parity[2][7]_i_42_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \parity[2][7]_i_43 
       (.I0(\subs[2][2]_3 [15]),
        .I1(\subs[2][2]_3 [14]),
        .I2(\subs[2][2]_3 [13]),
        .I3(\subs[2][2]_3 [12]),
        .O(\parity[2][7]_i_43_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \parity[2][7]_i_44 
       (.I0(\subs[2][2]_3 [9]),
        .I1(\subs[2][2]_3 [8]),
        .I2(\subs[2][2]_3 [11]),
        .I3(\subs[2][2]_3 [10]),
        .O(\parity[2][7]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \parity[3][6]_i_12 
       (.I0(\subs[2][3]_1 [10]),
        .I1(\parity_reg[1][6] [0]),
        .I2(\parity[1][6]_i_7_n_0 ),
        .I3(\subs[2][3]_1 [8]),
        .I4(\parity[1][6]_i_9_n_0 ),
        .I5(\packet_type_reg_n_0_[7] ),
        .O(\parity[3][6]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \parity[3][6]_i_13 
       (.I0(\subs[2][3]_1 [14]),
        .I1(\parity_reg[1][6] [0]),
        .I2(\parity[1][6]_i_7_n_0 ),
        .I3(\subs[2][3]_1 [12]),
        .I4(\parity[1][6]_i_9_n_0 ),
        .I5(\packet_type_reg_n_0_[7] ),
        .O(\parity[3][6]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \parity[3][6]_i_14 
       (.I0(\subs[2][3]_1 [34]),
        .I1(\parity_reg[1][6] [0]),
        .I2(\parity[1][6]_i_7_n_0 ),
        .I3(\subs[2][3]_1 [32]),
        .I4(\parity[1][6]_i_9_n_0 ),
        .I5(\packet_type_reg_n_0_[7] ),
        .O(\parity[3][6]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \parity[3][6]_i_15 
       (.I0(\subs[2][3]_1 [38]),
        .I1(\parity_reg[1][6] [0]),
        .I2(\parity[1][6]_i_7_n_0 ),
        .I3(\subs[2][3]_1 [36]),
        .I4(\parity[1][6]_i_9_n_0 ),
        .I5(\packet_type_reg_n_0_[7] ),
        .O(\parity[3][6]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0054000000000000)) 
    \parity[3][7]_i_11 
       (.I0(\packet_type_reg_n_0_[7] ),
        .I1(\parity[1][6]_i_7_n_0 ),
        .I2(\subs[2][3]_1 [55]),
        .I3(\parity[1][6]_i_9_n_0 ),
        .I4(\parity_reg[1][6] [0]),
        .I5(\parity_reg[1][6] [1]),
        .O(\packet_type_reg[7]_4 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFDFFFF)) 
    \parity[3][7]_i_12 
       (.I0(\parity_reg[1][6] [0]),
        .I1(\parity_reg[1][6] [1]),
        .I2(\packet_type_reg_n_0_[7] ),
        .I3(\parity[1][6]_i_9_n_0 ),
        .I4(\subs[2][3]_1 [51]),
        .I5(\parity[1][6]_i_7_n_0 ),
        .O(\counter_reg[0]_5 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \parity[3][7]_i_13 
       (.I0(\parity_reg[3][6]_i_7_n_0 ),
        .I1(\parity_reg[1][6] [2]),
        .I2(\parity[3][7]_i_26_n_0 ),
        .I3(\parity_reg[1][6] [1]),
        .I4(\parity[3][7]_i_27_n_0 ),
        .I5(\parity_reg[1][6] [3]),
        .O(\parity[3][7]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \parity[3][7]_i_14 
       (.I0(\parity[1][6]_i_7_n_0 ),
        .I1(\subs[2][3]_1 [23]),
        .I2(\parity[1][6]_i_9_n_0 ),
        .I3(\packet_type_reg_n_0_[7] ),
        .O(\parity[3][7]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \parity[3][7]_i_18 
       (.I0(\subs[2][3]_1 [11]),
        .I1(\parity_reg[1][6] [0]),
        .I2(\parity[1][6]_i_7_n_0 ),
        .I3(\subs[2][3]_1 [9]),
        .I4(\parity[1][6]_i_9_n_0 ),
        .I5(\packet_type_reg_n_0_[7] ),
        .O(\parity[3][7]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \parity[3][7]_i_19 
       (.I0(\subs[2][3]_1 [15]),
        .I1(\parity_reg[1][6] [0]),
        .I2(\parity[1][6]_i_7_n_0 ),
        .I3(\subs[2][3]_1 [13]),
        .I4(\parity[1][6]_i_9_n_0 ),
        .I5(\packet_type_reg_n_0_[7] ),
        .O(\parity[3][7]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h8888888888888B88)) 
    \parity[3][7]_i_20 
       (.I0(\true_hdmi_output.sub[3]_24 ),
        .I1(\parity_reg[1][6] [0]),
        .I2(\parity[1][6]_i_7_n_0 ),
        .I3(\subs[2][3]_1 [33]),
        .I4(\parity[1][6]_i_9_n_0 ),
        .I5(\packet_type_reg_n_0_[7] ),
        .O(\parity[3][7]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \parity[3][7]_i_21 
       (.I0(\subs[2][3]_1 [39]),
        .I1(\parity_reg[1][6] [0]),
        .I2(\parity[1][6]_i_7_n_0 ),
        .I3(\subs[2][3]_1 [37]),
        .I4(\parity[1][6]_i_9_n_0 ),
        .I5(\packet_type_reg_n_0_[7] ),
        .O(\parity[3][7]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000CBC8)) 
    \parity[3][7]_i_22 
       (.I0(\subs[2][3]_1 [43]),
        .I1(\parity_reg[1][6] [0]),
        .I2(\parity[1][6]_i_7_n_0 ),
        .I3(\subs[2][3]_1 [41]),
        .I4(\parity[1][6]_i_9_n_0 ),
        .I5(\packet_type_reg_n_0_[7] ),
        .O(\parity[3][7]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \parity[3][7]_i_23 
       (.I0(\subs[2][3]_1 [47]),
        .I1(\parity_reg[1][6] [0]),
        .I2(\parity[1][6]_i_7_n_0 ),
        .I3(\subs[2][3]_1 [45]),
        .I4(\parity[1][6]_i_9_n_0 ),
        .I5(\packet_type_reg_n_0_[7] ),
        .O(\parity[3][7]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \parity[3][7]_i_24 
       (.I0(\subs[2][3]_1 [35]),
        .I1(\subs[2][3]_1 [34]),
        .I2(\parity[3][7]_i_29_n_0 ),
        .I3(\parity[3][7]_i_30_n_0 ),
        .I4(\subs[2][3]_1 [32]),
        .I5(\subs[2][3]_1 [33]),
        .O(\subs[2][3]_1 [55]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \parity[3][7]_i_25 
       (.I0(\subs[2][3]_1 [11]),
        .I1(\subs[2][3]_1 [10]),
        .I2(\parity[3][7]_i_31_n_0 ),
        .I3(\parity[3][7]_i_32_n_0 ),
        .I4(\subs[2][3]_1 [8]),
        .I5(\subs[2][3]_1 [9]),
        .O(\subs[2][3]_1 [51]));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \parity[3][7]_i_26 
       (.I0(\subs[2][3]_1 [42]),
        .I1(\parity_reg[1][6] [0]),
        .I2(\parity[1][6]_i_7_n_0 ),
        .I3(\subs[2][3]_1 [40]),
        .I4(\parity[1][6]_i_9_n_0 ),
        .I5(\packet_type_reg_n_0_[7] ),
        .O(\parity[3][7]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h0000000003030B08)) 
    \parity[3][7]_i_27 
       (.I0(\subs[2][3]_1 [46]),
        .I1(\parity_reg[1][6] [0]),
        .I2(\parity[1][6]_i_9_n_0 ),
        .I3(\subs[2][3]_1 [44]),
        .I4(\parity[1][6]_i_7_n_0 ),
        .I5(\packet_type_reg_n_0_[7] ),
        .O(\parity[3][7]_i_27_n_0 ));
  LUT5 #(
    .INIT(32'h88888B88)) 
    \parity[3][7]_i_28 
       (.I0(\true_hdmi_output.data_island_data[4]_i_7_n_0 ),
        .I1(\packet_type_reg_n_0_[7] ),
        .I2(\parity[1][6]_i_9_n_0 ),
        .I3(\subs[2][3]_1 [35]),
        .I4(\parity[1][6]_i_7_n_0 ),
        .O(\true_hdmi_output.sub[3]_24 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \parity[3][7]_i_29 
       (.I0(\subs[2][3]_1 [43]),
        .I1(\subs[2][3]_1 [42]),
        .I2(\subs[2][3]_1 [46]),
        .I3(\subs[2][3]_1 [47]),
        .I4(\subs[2][3]_1 [44]),
        .I5(\subs[2][3]_1 [45]),
        .O(\parity[3][7]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \parity[3][7]_i_30 
       (.I0(\subs[2][3]_1 [36]),
        .I1(\subs[2][3]_1 [37]),
        .I2(\subs[2][3]_1 [40]),
        .I3(\subs[2][3]_1 [41]),
        .I4(\subs[2][3]_1 [39]),
        .I5(\subs[2][3]_1 [38]),
        .O(\parity[3][7]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \parity[3][7]_i_31 
       (.I0(\subs[2][3]_1 [19]),
        .I1(\subs[2][3]_1 [18]),
        .I2(\subs[2][3]_1 [22]),
        .I3(\subs[2][3]_1 [23]),
        .I4(\subs[2][3]_1 [20]),
        .I5(\subs[2][3]_1 [21]),
        .O(\parity[3][7]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \parity[3][7]_i_32 
       (.I0(\subs[2][3]_1 [12]),
        .I1(\subs[2][3]_1 [13]),
        .I2(\subs[2][3]_1 [16]),
        .I3(\subs[2][3]_1 [17]),
        .I4(\subs[2][3]_1 [15]),
        .I5(\subs[2][3]_1 [14]),
        .O(\parity[3][7]_i_32_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h0000A400)) 
    \parity[4][7]_i_10 
       (.I0(\packet_type_reg_n_0_[7] ),
        .I1(\subs[2][2]_3 [54]),
        .I2(\packet_type_reg_n_0_[0] ),
        .I3(\packet_type_reg_n_0_[1] ),
        .I4(\packet_type_reg_n_0_[2] ),
        .O(\packet_type_reg[7]_0 ));
  LUT6 #(
    .INIT(64'h0000A70030000000)) 
    \parity[4][7]_i_11 
       (.I0(\parity_reg[1][6] [1]),
        .I1(\packet_type_reg_n_0_[0] ),
        .I2(\parity_reg[1][6] [0]),
        .I3(\packet_type_reg_n_0_[7] ),
        .I4(\packet_type_reg_n_0_[2] ),
        .I5(\packet_type_reg_n_0_[1] ),
        .O(\counter_reg[1]_5 ));
  LUT6 #(
    .INIT(64'h0030BBBB00308888)) 
    \parity[4][7]_i_5 
       (.I0(\parity[4][7]_i_7_n_0 ),
        .I1(\parity_reg[1][6] [3]),
        .I2(\true_hdmi_output.header ),
        .I3(\parity_reg[1][6]_0 ),
        .I4(\parity_reg[1][6] [2]),
        .I5(\parity[4][7]_i_9_n_0 ),
        .O(\counter_reg[3]_5 ));
  LUT6 #(
    .INIT(64'h00000010104F0000)) 
    \parity[4][7]_i_7 
       (.I0(\parity_reg[1][6] [1]),
        .I1(\parity_reg[1][6] [0]),
        .I2(\packet_type_reg_n_0_[7] ),
        .I3(\packet_type_reg_n_0_[0] ),
        .I4(\packet_type_reg_n_0_[1] ),
        .I5(\packet_type_reg_n_0_[2] ),
        .O(\parity[4][7]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h0828)) 
    \parity[4][7]_i_8 
       (.I0(\packet_type_reg_n_0_[7] ),
        .I1(\packet_type_reg_n_0_[1] ),
        .I2(\packet_type_reg_n_0_[2] ),
        .I3(\packet_type_reg_n_0_[0] ),
        .O(\true_hdmi_output.header ));
  LUT6 #(
    .INIT(64'h0000002050014400)) 
    \parity[4][7]_i_9 
       (.I0(\parity_reg[1][6] [1]),
        .I1(\parity_reg[1][6] [0]),
        .I2(\packet_type_reg_n_0_[7] ),
        .I3(\packet_type_reg_n_0_[1] ),
        .I4(\packet_type_reg_n_0_[0] ),
        .I5(\packet_type_reg_n_0_[2] ),
        .O(\parity[4][7]_i_9_n_0 ));
  MUXF8 \parity_reg[0][7]_i_19 
       (.I0(\parity_reg[0][7]_i_36_n_0 ),
        .I1(\parity_reg[0][7]_i_37_n_0 ),
        .O(\parity_reg[0][7]_i_19_n_0 ),
        .S(\parity_reg[1][6] [1]));
  MUXF7 \parity_reg[0][7]_i_23 
       (.I0(\true_hdmi_output.sub[0]_23 [36]),
        .I1(\true_hdmi_output.sub[0]_23 [38]),
        .O(\parity_reg[0][7]_i_23_n_0 ),
        .S(\parity_reg[1][6] [0]));
  MUXF7 \parity_reg[0][7]_i_36 
       (.I0(\true_hdmi_output.sub[0]_23 [8]),
        .I1(\parity[0][7]_i_48_n_0 ),
        .O(\parity_reg[0][7]_i_36_n_0 ),
        .S(\parity_reg[1][6] [0]));
  MUXF7 \parity_reg[0][7]_i_37 
       (.I0(\true_hdmi_output.sub[0]_23 [12]),
        .I1(\true_hdmi_output.sub[0]_23 [14]),
        .O(\parity_reg[0][7]_i_37_n_0 ),
        .S(\parity_reg[1][6] [0]));
  MUXF8 \parity_reg[1][7]_i_11 
       (.I0(\parity_reg[1][7]_i_26_n_0 ),
        .I1(\parity_reg[1][7]_i_27_n_0 ),
        .O(\parity_reg[1][7]_i_11_n_0 ),
        .S(\parity_reg[1][6] [2]));
  MUXF7 \parity_reg[1][7]_i_16 
       (.I0(\parity[1][7]_i_35_n_0 ),
        .I1(\parity[1][7]_i_36_n_0 ),
        .O(\parity_reg[1][7]_i_16_n_0 ),
        .S(\parity_reg[1][6] [1]));
  MUXF7 \parity_reg[1][7]_i_24 
       (.I0(\true_hdmi_output.sub[1]_0 [32]),
        .I1(\true_hdmi_output.sub[1]_0 [34]),
        .O(\parity_reg[1][7]_i_24_n_0 ),
        .S(\parity_reg[1][6] [0]));
  MUXF7 \parity_reg[1][7]_i_26 
       (.I0(\parity[1][7]_i_43_n_0 ),
        .I1(\parity[1][7]_i_44_n_0 ),
        .O(\parity_reg[1][7]_i_26_n_0 ),
        .S(\parity_reg[1][6] [1]));
  MUXF7 \parity_reg[1][7]_i_27 
       (.I0(\parity[1][7]_i_45_n_0 ),
        .I1(\parity[1][7]_i_46_n_0 ),
        .O(\parity_reg[1][7]_i_27_n_0 ),
        .S(\parity_reg[1][6] [1]));
  MUXF7 \parity_reg[1][7]_i_32 
       (.I0(\parity[1][7]_i_50_n_0 ),
        .I1(\parity[1][7]_i_51_n_0 ),
        .O(\parity_reg[1][7]_i_32_n_0 ),
        .S(\parity_reg[1][6] [1]));
  MUXF7 \parity_reg[1][7]_i_9 
       (.I0(\parity[1][7]_i_22_n_0 ),
        .I1(\parity[1][7]_i_23_n_0 ),
        .O(\parity_reg[1][7]_i_9_n_0 ),
        .S(\parity_reg[1][6] [1]));
  MUXF7 \parity_reg[2][7]_i_12 
       (.I0(\parity[2][7]_i_24_n_0 ),
        .I1(\parity[2][7]_i_25_n_0 ),
        .O(\parity_reg[2][7]_i_12_n_0 ),
        .S(\parity_reg[1][6] [1]));
  MUXF7 \parity_reg[2][7]_i_14 
       (.I0(\parity[2][7]_i_28_n_0 ),
        .I1(\parity[2][7]_i_29_n_0 ),
        .O(\parity_reg[2][7]_i_14_n_0 ),
        .S(\parity_reg[1][6] [1]));
  MUXF7 \parity_reg[2][7]_i_15 
       (.I0(\true_hdmi_output.data_island_data[6]_i_8_n_0 ),
        .I1(\true_hdmi_output.data_island_data[6]_i_9_n_0 ),
        .O(\parity_reg[2][7]_i_15_n_0 ),
        .S(\parity_reg[1][6] [1]));
  MUXF7 \parity_reg[2][7]_i_16 
       (.I0(\parity[2][7]_i_30_n_0 ),
        .I1(\parity[2][7]_i_31_n_0 ),
        .O(\parity_reg[2][7]_i_16_n_0 ),
        .S(\parity_reg[1][6] [1]));
  MUXF7 \parity_reg[2][7]_i_17 
       (.I0(\parity[2][7]_i_32_n_0 ),
        .I1(\parity[2][7]_i_33_n_0 ),
        .O(\parity_reg[2][7]_i_17_n_0 ),
        .S(\parity_reg[1][6] [1]));
  MUXF8 \parity_reg[2][7]_i_6 
       (.I0(\parity_reg[2][7]_i_14_n_0 ),
        .I1(\parity_reg[2][7]_i_15_n_0 ),
        .O(\parity_reg[2][7]_i_6_n_0 ),
        .S(\parity_reg[1][6] [2]));
  MUXF8 \parity_reg[2][7]_i_7 
       (.I0(\parity_reg[2][7]_i_16_n_0 ),
        .I1(\parity_reg[2][7]_i_17_n_0 ),
        .O(\counter_reg[2]_0 ),
        .S(\parity_reg[1][6] [2]));
  MUXF7 \parity_reg[2][7]_i_8 
       (.I0(\parity[2][7]_i_18_n_0 ),
        .I1(\parity[2][7]_i_19_n_0 ),
        .O(\counter_reg[1]_0 ),
        .S(\parity_reg[1][6] [1]));
  MUXF8 \parity_reg[3][6]_i_3 
       (.I0(\parity_reg[3][6]_i_7_n_0 ),
        .I1(\parity_reg[3][6]_i_8_n_0 ),
        .O(\counter_reg[2]_2 ),
        .S(\parity_reg[1][6] [2]));
  MUXF7 \parity_reg[3][6]_i_6 
       (.I0(\parity[3][6]_i_12_n_0 ),
        .I1(\parity[3][6]_i_13_n_0 ),
        .O(\parity_reg[3][6]_i_6_n_0 ),
        .S(\parity_reg[1][6] [1]));
  MUXF7 \parity_reg[3][6]_i_7 
       (.I0(\parity[3][6]_i_14_n_0 ),
        .I1(\parity[3][6]_i_15_n_0 ),
        .O(\parity_reg[3][6]_i_7_n_0 ),
        .S(\parity_reg[1][6] [1]));
  MUXF7 \parity_reg[3][6]_i_8 
       (.I0(\parity[3][7]_i_26_n_0 ),
        .I1(\parity[3][7]_i_27_n_0 ),
        .O(\parity_reg[3][6]_i_8_n_0 ),
        .S(\parity_reg[1][6] [1]));
  MUXF7 \parity_reg[3][7]_i_10 
       (.I0(\parity[3][7]_i_22_n_0 ),
        .I1(\parity[3][7]_i_23_n_0 ),
        .O(\counter_reg[1]_4 ),
        .S(\parity_reg[1][6] [1]));
  MUXF7 \parity_reg[3][7]_i_8 
       (.I0(\parity[3][7]_i_18_n_0 ),
        .I1(\parity[3][7]_i_19_n_0 ),
        .O(\counter_reg[1]_1 ),
        .S(\parity_reg[1][6] [1]));
  MUXF7 \parity_reg[3][7]_i_9 
       (.I0(\parity[3][7]_i_20_n_0 ),
        .I1(\parity[3][7]_i_21_n_0 ),
        .O(\counter_reg[1]_3 ),
        .S(\parity_reg[1][6] [1]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'hBF7F4080)) 
    sample_buffer_current_i_1
       (.I0(\audio_sample_word_transfer_control_synchronizer_chain_reg_n_0_[0] ),
        .I1(samples_remaining[0]),
        .I2(samples_remaining[1]),
        .I3(p_0_in),
        .I4(sample_buffer_current_reg_n_0),
        .O(sample_buffer_current_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sample_buffer_current_reg
       (.C(pixelClock),
        .CE(1'b1),
        .D(sample_buffer_current_i_1_n_0),
        .Q(sample_buffer_current_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h2F222222F2222222)) 
    sample_buffer_ready_i_1
       (.I0(sample_buffer_ready),
        .I1(sample_buffer_used_reg_n_0),
        .I2(\audio_sample_word_transfer_control_synchronizer_chain_reg_n_0_[0] ),
        .I3(samples_remaining[0]),
        .I4(samples_remaining[1]),
        .I5(p_0_in),
        .O(sample_buffer_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sample_buffer_ready_reg
       (.C(pixelClock),
        .CE(1'b1),
        .D(sample_buffer_ready_i_1_n_0),
        .Q(sample_buffer_ready),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sample_buffer_used_reg
       (.C(pixelClock),
        .CE(1'b1),
        .D(audio_sample_word_packet),
        .Q(sample_buffer_used_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \samples_remaining[0]_i_1 
       (.I0(\audio_sample_word_transfer_control_synchronizer_chain_reg_n_0_[0] ),
        .I1(p_0_in),
        .I2(samples_remaining[0]),
        .O(\samples_remaining[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hD728)) 
    \samples_remaining[1]_i_1 
       (.I0(samples_remaining[0]),
        .I1(p_0_in),
        .I2(\audio_sample_word_transfer_control_synchronizer_chain_reg_n_0_[0] ),
        .I3(samples_remaining[1]),
        .O(\samples_remaining[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \samples_remaining_reg[0] 
       (.C(pixelClock),
        .CE(1'b1),
        .D(\samples_remaining[0]_i_1_n_0 ),
        .Q(samples_remaining[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \samples_remaining_reg[1] 
       (.C(pixelClock),
        .CE(1'b1),
        .D(\samples_remaining[1]_i_1_n_0 ),
        .Q(samples_remaining[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    source_product_description_info_frame_sent_reg
       (.C(pixelClock),
        .CE(1'b1),
        .D(audio_clock_regeneration_packet_n_8),
        .Q(source_product_description_info_frame_sent),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hBFFF)) 
    \true_hdmi_output.data_island_data[1]_i_2 
       (.I0(\true_hdmi_output.data_island_data_reg[1] [9]),
        .I1(\true_hdmi_output.data_island_data_reg[1] [6]),
        .I2(\true_hdmi_output.data_island_data_reg[1] [7]),
        .I3(\true_hdmi_output.data_island_data_reg[1] [8]),
        .O(\cy_reg[9] ));
  LUT6 #(
    .INIT(64'hE222000000000000)) 
    \true_hdmi_output.data_island_data[4]_i_4 
       (.I0(\true_hdmi_output.data_island_data[4]_i_6_n_0 ),
        .I1(\parity_reg[1][6] [1]),
        .I2(\true_hdmi_output.data_island_data[4]_i_7_n_0 ),
        .I3(\packet_type_reg_n_0_[7] ),
        .I4(\parity_reg[1][6] [3]),
        .I5(\parity_reg[1][6] [4]),
        .O(\counter_reg[1] ));
  LUT5 #(
    .INIT(32'h00000200)) 
    \true_hdmi_output.data_island_data[4]_i_6 
       (.I0(\parity_reg[1][6] [0]),
        .I1(\packet_type_reg_n_0_[7] ),
        .I2(\parity[1][6]_i_9_n_0 ),
        .I3(\subs[2][0]_2 [50]),
        .I4(\parity[1][6]_i_7_n_0 ),
        .O(\true_hdmi_output.data_island_data[4]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \true_hdmi_output.data_island_data[4]_i_7 
       (.I0(\packet_type_reg_n_0_[0] ),
        .I1(\packet_type_reg_n_0_[1] ),
        .I2(\packet_type_reg_n_0_[2] ),
        .O(\true_hdmi_output.data_island_data[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000090000000000)) 
    \true_hdmi_output.data_island_data[4]_i_8 
       (.I0(frame_counter_reg[7]),
        .I1(frame_counter_reg[6]),
        .I2(frame_counter_reg[5]),
        .I3(frame_counter_reg[4]),
        .I4(frame_counter_reg[3]),
        .I5(frame_counter_reg[2]),
        .O(\subs[2][0]_2 [50]));
  LUT5 #(
    .INIT(32'hFFFFFDFF)) 
    \true_hdmi_output.data_island_data[6]_i_2 
       (.I0(\parity_reg[1][6] [0]),
        .I1(\packet_type_reg_n_0_[7] ),
        .I2(\parity[1][6]_i_9_n_0 ),
        .I3(\subs[2][2]_3 [54]),
        .I4(\parity[1][6]_i_7_n_0 ),
        .O(\counter_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0000000001000001)) 
    \true_hdmi_output.data_island_data[6]_i_5 
       (.I0(frame_counter_reg[2]),
        .I1(frame_counter_reg[3]),
        .I2(frame_counter_reg[4]),
        .I3(frame_counter_reg[7]),
        .I4(frame_counter_reg[6]),
        .I5(frame_counter_reg[5]),
        .O(\subs[2][2]_3 [54]));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \true_hdmi_output.data_island_data[6]_i_6 
       (.I0(\parity_reg[2][7]_i_14_n_0 ),
        .I1(\parity_reg[1][6] [2]),
        .I2(\true_hdmi_output.data_island_data[6]_i_8_n_0 ),
        .I3(\parity_reg[1][6] [1]),
        .I4(\true_hdmi_output.data_island_data[6]_i_9_n_0 ),
        .I5(\parity_reg[1][6] [3]),
        .O(\true_hdmi_output.data_island_data[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \true_hdmi_output.data_island_data[6]_i_8 
       (.I0(\subs[2][2]_3 [42]),
        .I1(\parity_reg[1][6] [0]),
        .I2(\parity[1][6]_i_7_n_0 ),
        .I3(\subs[2][2]_3 [40]),
        .I4(\parity[1][6]_i_9_n_0 ),
        .I5(\packet_type_reg_n_0_[7] ),
        .O(\true_hdmi_output.data_island_data[6]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000003030B08)) 
    \true_hdmi_output.data_island_data[6]_i_9 
       (.I0(\subs[2][2]_3 [46]),
        .I1(\parity_reg[1][6] [0]),
        .I2(\parity[1][6]_i_9_n_0 ),
        .I3(\subs[2][2]_3 [44]),
        .I4(\parity[1][6]_i_7_n_0 ),
        .I5(\packet_type_reg_n_0_[7] ),
        .O(\true_hdmi_output.data_island_data[6]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \true_hdmi_output.data_island_data[8]_i_13 
       (.I0(\audio_sample_word_packet_reg_n_0_[0][0][15] ),
        .I1(\parity_reg[1][6] [0]),
        .I2(\parity[1][6]_i_7_n_0 ),
        .I3(\audio_sample_word_packet_reg_n_0_[0][0][13] ),
        .I4(\parity[1][6]_i_9_n_0 ),
        .I5(\packet_type_reg_n_0_[7] ),
        .O(\true_hdmi_output.data_island_data[8]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \true_hdmi_output.data_island_data[8]_i_14 
       (.I0(\parity[1][6]_i_7_n_0 ),
        .I1(\audio_sample_word_packet_reg_n_0_[0][0][11] ),
        .I2(\parity[1][6]_i_9_n_0 ),
        .I3(\packet_type_reg_n_0_[7] ),
        .I4(\parity_reg[1][6] [0]),
        .I5(\true_hdmi_output.sub[0]_23 [9]),
        .O(\true_hdmi_output.data_island_data[8]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \true_hdmi_output.data_island_data[8]_i_15 
       (.I0(\true_hdmi_output.data_island_data[8]_i_24_n_0 ),
        .I1(\true_hdmi_output.data_island_data[8]_i_25_n_0 ),
        .I2(\subs[2][0]_2 [50]),
        .I3(\true_hdmi_output.data_island_data[8]_i_26_n_0 ),
        .I4(\true_hdmi_output.data_island_data[8]_i_27_n_0 ),
        .O(\subs[2][0]_2 [51]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \true_hdmi_output.data_island_data[8]_i_16 
       (.I0(\audio_sample_word_packet_reg_n_0_[0][1][11] ),
        .I1(\audio_sample_word_packet_reg_n_0_[0][1][10] ),
        .I2(\true_hdmi_output.data_island_data[8]_i_28_n_0 ),
        .I3(\true_hdmi_output.data_island_data[8]_i_29_n_0 ),
        .I4(\audio_sample_word_packet_reg_n_0_[0][1][8] ),
        .I5(\audio_sample_word_packet_reg_n_0_[0][1][9] ),
        .O(\subs[2][0]_2 [55]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \true_hdmi_output.data_island_data[8]_i_17 
       (.I0(\packet_type_reg_n_0_[0] ),
        .I1(\packet_type_reg_n_0_[1] ),
        .I2(\packet_type_reg_n_0_[2] ),
        .O(\true_hdmi_output.data_island_data[8]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \true_hdmi_output.data_island_data[8]_i_21 
       (.I0(\parity[1][6]_i_7_n_0 ),
        .I1(\audio_sample_word_packet_reg_n_0_[0][0][23] ),
        .I2(\parity[1][6]_i_9_n_0 ),
        .I3(\packet_type_reg_n_0_[7] ),
        .O(\true_hdmi_output.data_island_data[8]_i_21_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \true_hdmi_output.data_island_data[8]_i_24 
       (.I0(\audio_sample_word_packet_reg_n_0_[0][0][17] ),
        .I1(\audio_sample_word_packet_reg_n_0_[0][0][16] ),
        .I2(\audio_sample_word_packet_reg_n_0_[0][0][19] ),
        .I3(\audio_sample_word_packet_reg_n_0_[0][0][18] ),
        .O(\true_hdmi_output.data_island_data[8]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \true_hdmi_output.data_island_data[8]_i_25 
       (.I0(\audio_sample_word_packet_reg_n_0_[0][0][23] ),
        .I1(\audio_sample_word_packet_reg_n_0_[0][0][22] ),
        .I2(\audio_sample_word_packet_reg_n_0_[0][0][21] ),
        .I3(\audio_sample_word_packet_reg_n_0_[0][0][20] ),
        .O(\true_hdmi_output.data_island_data[8]_i_25_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \true_hdmi_output.data_island_data[8]_i_26 
       (.I0(\audio_sample_word_packet_reg_n_0_[0][0][15] ),
        .I1(\audio_sample_word_packet_reg_n_0_[0][0][14] ),
        .I2(\audio_sample_word_packet_reg_n_0_[0][0][13] ),
        .I3(\audio_sample_word_packet_reg_n_0_[0][0][12] ),
        .O(\true_hdmi_output.data_island_data[8]_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \true_hdmi_output.data_island_data[8]_i_27 
       (.I0(\audio_sample_word_packet_reg_n_0_[0][0][9] ),
        .I1(\audio_sample_word_packet_reg_n_0_[0][0][8] ),
        .I2(\audio_sample_word_packet_reg_n_0_[0][0][11] ),
        .I3(\audio_sample_word_packet_reg_n_0_[0][0][10] ),
        .O(\true_hdmi_output.data_island_data[8]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \true_hdmi_output.data_island_data[8]_i_28 
       (.I0(\audio_sample_word_packet_reg_n_0_[0][1][19] ),
        .I1(\audio_sample_word_packet_reg_n_0_[0][1][18] ),
        .I2(\audio_sample_word_packet_reg_n_0_[0][1][22] ),
        .I3(\audio_sample_word_packet_reg_n_0_[0][1][23] ),
        .I4(\audio_sample_word_packet_reg_n_0_[0][1][20] ),
        .I5(\audio_sample_word_packet_reg_n_0_[0][1][21] ),
        .O(\true_hdmi_output.data_island_data[8]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \true_hdmi_output.data_island_data[8]_i_29 
       (.I0(\audio_sample_word_packet_reg_n_0_[0][1][12] ),
        .I1(\audio_sample_word_packet_reg_n_0_[0][1][13] ),
        .I2(\audio_sample_word_packet_reg_n_0_[0][1][16] ),
        .I3(\audio_sample_word_packet_reg_n_0_[0][1][17] ),
        .I4(\audio_sample_word_packet_reg_n_0_[0][1][15] ),
        .I5(\audio_sample_word_packet_reg_n_0_[0][1][14] ),
        .O(\true_hdmi_output.data_island_data[8]_i_29_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \true_hdmi_output.data_island_data[8]_i_6 
       (.I0(\true_hdmi_output.data_island_data[8]_i_13_n_0 ),
        .I1(\parity_reg[1][6] [1]),
        .I2(\true_hdmi_output.data_island_data[8]_i_14_n_0 ),
        .I3(\parity_reg[1][6] [2]),
        .I4(\parity[0][7]_i_16_n_0 ),
        .O(\true_hdmi_output.data_island_data[8]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00000200)) 
    \true_hdmi_output.data_island_data[8]_i_7 
       (.I0(\parity_reg[1][6] [0]),
        .I1(\packet_type_reg_n_0_[7] ),
        .I2(\parity[1][6]_i_9_n_0 ),
        .I3(\subs[2][0]_2 [51]),
        .I4(\parity[1][6]_i_7_n_0 ),
        .O(\counter_reg[0]_3 ));
  LUT6 #(
    .INIT(64'h00FF540000005400)) 
    \true_hdmi_output.data_island_data[8]_i_8 
       (.I0(\parity[1][6]_i_9_n_0 ),
        .I1(\subs[2][0]_2 [55]),
        .I2(\parity[1][6]_i_7_n_0 ),
        .I3(\parity_reg[1][6] [0]),
        .I4(\packet_type_reg_n_0_[7] ),
        .I5(\true_hdmi_output.data_island_data[4]_i_7_n_0 ),
        .O(\counter_reg[0]_4 ));
  LUT4 #(
    .INIT(16'h0840)) 
    \true_hdmi_output.data_island_period_i_1 
       (.I0(Q[7]),
        .I1(Q[9]),
        .I2(Q[8]),
        .I3(\cx_reg[6] ),
        .O(\true_hdmi_output.data_island_period_instantaneous ));
  LUT6 #(
    .INIT(64'hFFFEFEFEFEFEFEFE)) 
    \true_hdmi_output.data_island_period_i_2 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[4]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(\cx_reg[6] ));
endmodule

(* ORIG_REF_NAME = "serializer" *) 
module blockone_videomodule_0_0_serializer
   (tmds,
    tmds_clock,
    pixelClockx5,
    pixelClock,
    Q,
    \xilinx_serialize[1].secondary_0 ,
    \xilinx_serialize[2].secondary_0 ,
    out);
  output [2:0]tmds;
  output tmds_clock;
  input pixelClockx5;
  input pixelClock;
  input [9:0]Q;
  input [9:0]\xilinx_serialize[1].secondary_0 ;
  input [9:0]\xilinx_serialize[2].secondary_0 ;
  input out;

  wire [9:0]Q;
  wire \cascade[0]_0 ;
  wire \cascade[0]_1 ;
  wire \cascade[1]_0 ;
  wire \cascade[1]_1 ;
  wire \cascade[2]_0 ;
  wire \cascade[2]_1 ;
  wire \cascade[3]_0 ;
  wire \cascade[3]_1 ;
  wire internal_reset;
  wire out;
  wire pixelClock;
  wire pixelClockx5;
  wire [2:0]tmds;
  wire tmds_clock;
  wire \xilinx_serialize[0].primary_i_1_n_0 ;
  wire [9:0]\xilinx_serialize[1].secondary_0 ;
  wire [9:0]\xilinx_serialize[2].secondary_0 ;
  wire \NLW_xilinx_serialize[0].primary_OFB_UNCONNECTED ;
  wire \NLW_xilinx_serialize[0].primary_SHIFTOUT1_UNCONNECTED ;
  wire \NLW_xilinx_serialize[0].primary_SHIFTOUT2_UNCONNECTED ;
  wire \NLW_xilinx_serialize[0].primary_TBYTEOUT_UNCONNECTED ;
  wire \NLW_xilinx_serialize[0].primary_TFB_UNCONNECTED ;
  wire \NLW_xilinx_serialize[0].primary_TQ_UNCONNECTED ;
  wire \NLW_xilinx_serialize[0].secondary_OFB_UNCONNECTED ;
  wire \NLW_xilinx_serialize[0].secondary_OQ_UNCONNECTED ;
  wire \NLW_xilinx_serialize[0].secondary_TBYTEOUT_UNCONNECTED ;
  wire \NLW_xilinx_serialize[0].secondary_TFB_UNCONNECTED ;
  wire \NLW_xilinx_serialize[0].secondary_TQ_UNCONNECTED ;
  wire \NLW_xilinx_serialize[1].primary_OFB_UNCONNECTED ;
  wire \NLW_xilinx_serialize[1].primary_SHIFTOUT1_UNCONNECTED ;
  wire \NLW_xilinx_serialize[1].primary_SHIFTOUT2_UNCONNECTED ;
  wire \NLW_xilinx_serialize[1].primary_TBYTEOUT_UNCONNECTED ;
  wire \NLW_xilinx_serialize[1].primary_TFB_UNCONNECTED ;
  wire \NLW_xilinx_serialize[1].primary_TQ_UNCONNECTED ;
  wire \NLW_xilinx_serialize[1].secondary_OFB_UNCONNECTED ;
  wire \NLW_xilinx_serialize[1].secondary_OQ_UNCONNECTED ;
  wire \NLW_xilinx_serialize[1].secondary_TBYTEOUT_UNCONNECTED ;
  wire \NLW_xilinx_serialize[1].secondary_TFB_UNCONNECTED ;
  wire \NLW_xilinx_serialize[1].secondary_TQ_UNCONNECTED ;
  wire \NLW_xilinx_serialize[2].primary_OFB_UNCONNECTED ;
  wire \NLW_xilinx_serialize[2].primary_SHIFTOUT1_UNCONNECTED ;
  wire \NLW_xilinx_serialize[2].primary_SHIFTOUT2_UNCONNECTED ;
  wire \NLW_xilinx_serialize[2].primary_TBYTEOUT_UNCONNECTED ;
  wire \NLW_xilinx_serialize[2].primary_TFB_UNCONNECTED ;
  wire \NLW_xilinx_serialize[2].primary_TQ_UNCONNECTED ;
  wire \NLW_xilinx_serialize[2].secondary_OFB_UNCONNECTED ;
  wire \NLW_xilinx_serialize[2].secondary_OQ_UNCONNECTED ;
  wire \NLW_xilinx_serialize[2].secondary_TBYTEOUT_UNCONNECTED ;
  wire \NLW_xilinx_serialize[2].secondary_TFB_UNCONNECTED ;
  wire \NLW_xilinx_serialize[2].secondary_TQ_UNCONNECTED ;
  wire \NLW_xilinx_serialize[3].primary_OFB_UNCONNECTED ;
  wire \NLW_xilinx_serialize[3].primary_SHIFTOUT1_UNCONNECTED ;
  wire \NLW_xilinx_serialize[3].primary_SHIFTOUT2_UNCONNECTED ;
  wire \NLW_xilinx_serialize[3].primary_TBYTEOUT_UNCONNECTED ;
  wire \NLW_xilinx_serialize[3].primary_TFB_UNCONNECTED ;
  wire \NLW_xilinx_serialize[3].primary_TQ_UNCONNECTED ;
  wire \NLW_xilinx_serialize[3].secondary_OFB_UNCONNECTED ;
  wire \NLW_xilinx_serialize[3].secondary_OQ_UNCONNECTED ;
  wire \NLW_xilinx_serialize[3].secondary_TBYTEOUT_UNCONNECTED ;
  wire \NLW_xilinx_serialize[3].secondary_TFB_UNCONNECTED ;
  wire \NLW_xilinx_serialize[3].secondary_TQ_UNCONNECTED ;

  FDRE #(
    .INIT(1'b1)) 
    internal_reset_reg
       (.C(pixelClock),
        .CE(1'b1),
        .D(1'b0),
        .Q(internal_reset),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("SDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("MASTER"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    \xilinx_serialize[0].primary 
       (.CLK(pixelClockx5),
        .CLKDIV(pixelClock),
        .D1(Q[0]),
        .D2(Q[1]),
        .D3(Q[2]),
        .D4(Q[3]),
        .D5(Q[4]),
        .D6(Q[5]),
        .D7(Q[6]),
        .D8(Q[7]),
        .OCE(1'b1),
        .OFB(\NLW_xilinx_serialize[0].primary_OFB_UNCONNECTED ),
        .OQ(tmds[0]),
        .RST(\xilinx_serialize[0].primary_i_1_n_0 ),
        .SHIFTIN1(\cascade[0]_0 ),
        .SHIFTIN2(\cascade[0]_1 ),
        .SHIFTOUT1(\NLW_xilinx_serialize[0].primary_SHIFTOUT1_UNCONNECTED ),
        .SHIFTOUT2(\NLW_xilinx_serialize[0].primary_SHIFTOUT2_UNCONNECTED ),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(\NLW_xilinx_serialize[0].primary_TBYTEOUT_UNCONNECTED ),
        .TCE(1'b0),
        .TFB(\NLW_xilinx_serialize[0].primary_TFB_UNCONNECTED ),
        .TQ(\NLW_xilinx_serialize[0].primary_TQ_UNCONNECTED ));
  LUT2 #(
    .INIT(4'hB)) 
    \xilinx_serialize[0].primary_i_1 
       (.I0(internal_reset),
        .I1(out),
        .O(\xilinx_serialize[0].primary_i_1_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("SDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("SLAVE"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    \xilinx_serialize[0].secondary 
       (.CLK(pixelClockx5),
        .CLKDIV(pixelClock),
        .D1(1'b0),
        .D2(1'b0),
        .D3(Q[8]),
        .D4(Q[9]),
        .D5(1'b0),
        .D6(1'b0),
        .D7(1'b0),
        .D8(1'b0),
        .OCE(1'b1),
        .OFB(\NLW_xilinx_serialize[0].secondary_OFB_UNCONNECTED ),
        .OQ(\NLW_xilinx_serialize[0].secondary_OQ_UNCONNECTED ),
        .RST(\xilinx_serialize[0].primary_i_1_n_0 ),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(\cascade[0]_0 ),
        .SHIFTOUT2(\cascade[0]_1 ),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(\NLW_xilinx_serialize[0].secondary_TBYTEOUT_UNCONNECTED ),
        .TCE(1'b0),
        .TFB(\NLW_xilinx_serialize[0].secondary_TFB_UNCONNECTED ),
        .TQ(\NLW_xilinx_serialize[0].secondary_TQ_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("SDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("MASTER"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    \xilinx_serialize[1].primary 
       (.CLK(pixelClockx5),
        .CLKDIV(pixelClock),
        .D1(\xilinx_serialize[1].secondary_0 [0]),
        .D2(\xilinx_serialize[1].secondary_0 [1]),
        .D3(\xilinx_serialize[1].secondary_0 [2]),
        .D4(\xilinx_serialize[1].secondary_0 [3]),
        .D5(\xilinx_serialize[1].secondary_0 [4]),
        .D6(\xilinx_serialize[1].secondary_0 [5]),
        .D7(\xilinx_serialize[1].secondary_0 [6]),
        .D8(\xilinx_serialize[1].secondary_0 [7]),
        .OCE(1'b1),
        .OFB(\NLW_xilinx_serialize[1].primary_OFB_UNCONNECTED ),
        .OQ(tmds[1]),
        .RST(\xilinx_serialize[0].primary_i_1_n_0 ),
        .SHIFTIN1(\cascade[1]_0 ),
        .SHIFTIN2(\cascade[1]_1 ),
        .SHIFTOUT1(\NLW_xilinx_serialize[1].primary_SHIFTOUT1_UNCONNECTED ),
        .SHIFTOUT2(\NLW_xilinx_serialize[1].primary_SHIFTOUT2_UNCONNECTED ),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(\NLW_xilinx_serialize[1].primary_TBYTEOUT_UNCONNECTED ),
        .TCE(1'b0),
        .TFB(\NLW_xilinx_serialize[1].primary_TFB_UNCONNECTED ),
        .TQ(\NLW_xilinx_serialize[1].primary_TQ_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("SDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("SLAVE"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    \xilinx_serialize[1].secondary 
       (.CLK(pixelClockx5),
        .CLKDIV(pixelClock),
        .D1(1'b0),
        .D2(1'b0),
        .D3(\xilinx_serialize[1].secondary_0 [8]),
        .D4(\xilinx_serialize[1].secondary_0 [9]),
        .D5(1'b0),
        .D6(1'b0),
        .D7(1'b0),
        .D8(1'b0),
        .OCE(1'b1),
        .OFB(\NLW_xilinx_serialize[1].secondary_OFB_UNCONNECTED ),
        .OQ(\NLW_xilinx_serialize[1].secondary_OQ_UNCONNECTED ),
        .RST(\xilinx_serialize[0].primary_i_1_n_0 ),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(\cascade[1]_0 ),
        .SHIFTOUT2(\cascade[1]_1 ),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(\NLW_xilinx_serialize[1].secondary_TBYTEOUT_UNCONNECTED ),
        .TCE(1'b0),
        .TFB(\NLW_xilinx_serialize[1].secondary_TFB_UNCONNECTED ),
        .TQ(\NLW_xilinx_serialize[1].secondary_TQ_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("SDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("MASTER"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    \xilinx_serialize[2].primary 
       (.CLK(pixelClockx5),
        .CLKDIV(pixelClock),
        .D1(\xilinx_serialize[2].secondary_0 [0]),
        .D2(\xilinx_serialize[2].secondary_0 [1]),
        .D3(\xilinx_serialize[2].secondary_0 [2]),
        .D4(\xilinx_serialize[2].secondary_0 [3]),
        .D5(\xilinx_serialize[2].secondary_0 [4]),
        .D6(\xilinx_serialize[2].secondary_0 [5]),
        .D7(\xilinx_serialize[2].secondary_0 [6]),
        .D8(\xilinx_serialize[2].secondary_0 [7]),
        .OCE(1'b1),
        .OFB(\NLW_xilinx_serialize[2].primary_OFB_UNCONNECTED ),
        .OQ(tmds[2]),
        .RST(\xilinx_serialize[0].primary_i_1_n_0 ),
        .SHIFTIN1(\cascade[2]_0 ),
        .SHIFTIN2(\cascade[2]_1 ),
        .SHIFTOUT1(\NLW_xilinx_serialize[2].primary_SHIFTOUT1_UNCONNECTED ),
        .SHIFTOUT2(\NLW_xilinx_serialize[2].primary_SHIFTOUT2_UNCONNECTED ),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(\NLW_xilinx_serialize[2].primary_TBYTEOUT_UNCONNECTED ),
        .TCE(1'b0),
        .TFB(\NLW_xilinx_serialize[2].primary_TFB_UNCONNECTED ),
        .TQ(\NLW_xilinx_serialize[2].primary_TQ_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("SDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("SLAVE"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    \xilinx_serialize[2].secondary 
       (.CLK(pixelClockx5),
        .CLKDIV(pixelClock),
        .D1(1'b0),
        .D2(1'b0),
        .D3(\xilinx_serialize[2].secondary_0 [8]),
        .D4(\xilinx_serialize[2].secondary_0 [9]),
        .D5(1'b0),
        .D6(1'b0),
        .D7(1'b0),
        .D8(1'b0),
        .OCE(1'b1),
        .OFB(\NLW_xilinx_serialize[2].secondary_OFB_UNCONNECTED ),
        .OQ(\NLW_xilinx_serialize[2].secondary_OQ_UNCONNECTED ),
        .RST(\xilinx_serialize[0].primary_i_1_n_0 ),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(\cascade[2]_0 ),
        .SHIFTOUT2(\cascade[2]_1 ),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(\NLW_xilinx_serialize[2].secondary_TBYTEOUT_UNCONNECTED ),
        .TCE(1'b0),
        .TFB(\NLW_xilinx_serialize[2].secondary_TFB_UNCONNECTED ),
        .TQ(\NLW_xilinx_serialize[2].secondary_TQ_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("SDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("MASTER"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    \xilinx_serialize[3].primary 
       (.CLK(pixelClockx5),
        .CLKDIV(pixelClock),
        .D1(1'b1),
        .D2(1'b1),
        .D3(1'b1),
        .D4(1'b1),
        .D5(1'b1),
        .D6(1'b0),
        .D7(1'b0),
        .D8(1'b0),
        .OCE(1'b1),
        .OFB(\NLW_xilinx_serialize[3].primary_OFB_UNCONNECTED ),
        .OQ(tmds_clock),
        .RST(\xilinx_serialize[0].primary_i_1_n_0 ),
        .SHIFTIN1(\cascade[3]_0 ),
        .SHIFTIN2(\cascade[3]_1 ),
        .SHIFTOUT1(\NLW_xilinx_serialize[3].primary_SHIFTOUT1_UNCONNECTED ),
        .SHIFTOUT2(\NLW_xilinx_serialize[3].primary_SHIFTOUT2_UNCONNECTED ),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(\NLW_xilinx_serialize[3].primary_TBYTEOUT_UNCONNECTED ),
        .TCE(1'b0),
        .TFB(\NLW_xilinx_serialize[3].primary_TFB_UNCONNECTED ),
        .TQ(\NLW_xilinx_serialize[3].primary_TQ_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("SDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("SLAVE"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    \xilinx_serialize[3].secondary 
       (.CLK(pixelClockx5),
        .CLKDIV(pixelClock),
        .D1(1'b0),
        .D2(1'b0),
        .D3(1'b0),
        .D4(1'b0),
        .D5(1'b0),
        .D6(1'b0),
        .D7(1'b0),
        .D8(1'b0),
        .OCE(1'b1),
        .OFB(\NLW_xilinx_serialize[3].secondary_OFB_UNCONNECTED ),
        .OQ(\NLW_xilinx_serialize[3].secondary_OQ_UNCONNECTED ),
        .RST(\xilinx_serialize[0].primary_i_1_n_0 ),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(\cascade[3]_0 ),
        .SHIFTOUT2(\cascade[3]_1 ),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(\NLW_xilinx_serialize[3].secondary_TBYTEOUT_UNCONNECTED ),
        .TCE(1'b0),
        .TFB(\NLW_xilinx_serialize[3].secondary_TFB_UNCONNECTED ),
        .TQ(\NLW_xilinx_serialize[3].secondary_TQ_UNCONNECTED ));
endmodule

(* ORIG_REF_NAME = "tmds_channel" *) 
module blockone_videomodule_0_0_tmds_channel
   (\tmds_reg[9]_0 ,
    Q,
    mode,
    \tmds_reg[8]_0 ,
    \tmds_reg[8]_1 ,
    \acc_reg[1]_0 ,
    pixelClock,
    SR);
  output [9:0]\tmds_reg[9]_0 ;
  input [3:0]Q;
  input [2:0]mode;
  input [1:0]\tmds_reg[8]_0 ;
  input \tmds_reg[8]_1 ;
  input [3:0]\acc_reg[1]_0 ;
  input pixelClock;
  input [0:0]SR;

  wire [3:0]Q;
  wire [0:0]SR;
  wire \acc[3]_i_2_n_0 ;
  wire \acc[3]_i_3_n_0 ;
  wire \acc[4]_i_3_n_0 ;
  wire \acc[4]_i_4_n_0 ;
  wire \acc[4]_i_5_n_0 ;
  wire [4:1]acc_reg;
  wire [3:0]\acc_reg[1]_0 ;
  wire [2:0]mode;
  wire [4:1]p_0_in__0;
  wire pixelClock;
  wire \tmds[0]_i_1_n_0 ;
  wire \tmds[0]_i_2_n_0 ;
  wire \tmds[1]_i_1_n_0 ;
  wire \tmds[1]_i_2_n_0 ;
  wire \tmds[2]_i_1_n_0 ;
  wire \tmds[2]_i_2__0_n_0 ;
  wire \tmds[3]_i_1_n_0 ;
  wire \tmds[3]_i_2_n_0 ;
  wire \tmds[4]_i_1_n_0 ;
  wire \tmds[4]_i_2__1_n_0 ;
  wire \tmds[5]_i_1_n_0 ;
  wire \tmds[5]_i_2_n_0 ;
  wire \tmds[5]_i_3_n_0 ;
  wire \tmds[6]_i_1_n_0 ;
  wire \tmds[6]_i_2_n_0 ;
  wire \tmds[6]_i_3_n_0 ;
  wire \tmds[6]_i_4_n_0 ;
  wire \tmds[6]_i_5__1_n_0 ;
  wire \tmds[6]_i_6__0_n_0 ;
  wire \tmds[6]_i_7_n_0 ;
  wire \tmds[7]_i_1_n_0 ;
  wire \tmds[7]_i_2_n_0 ;
  wire \tmds[7]_i_3__0_n_0 ;
  wire \tmds[7]_i_4__1_n_0 ;
  wire \tmds[7]_i_5__0_n_0 ;
  wire \tmds[7]_i_6_n_0 ;
  wire \tmds[8]_i_1_n_0 ;
  wire \tmds[8]_i_2__1_n_0 ;
  wire \tmds[8]_i_3_n_0 ;
  wire \tmds[9]_i_1__0_n_0 ;
  wire \tmds[9]_i_2__1_n_0 ;
  wire \tmds[9]_i_3_n_0 ;
  wire \tmds[9]_i_4_n_0 ;
  wire \tmds[9]_i_5_n_0 ;
  wire [1:0]\tmds_reg[8]_0 ;
  wire \tmds_reg[8]_1 ;
  wire [9:0]\tmds_reg[9]_0 ;

  LUT6 #(
    .INIT(64'h66999966669999A6)) 
    \acc[1]_i_1 
       (.I0(acc_reg[1]),
        .I1(acc_reg[4]),
        .I2(\acc_reg[1]_0 [0]),
        .I3(\acc_reg[1]_0 [1]),
        .I4(\acc_reg[1]_0 [3]),
        .I5(\acc_reg[1]_0 [2]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \acc[2]_i_1 
       (.I0(\acc[3]_i_3_n_0 ),
        .I1(acc_reg[2]),
        .I2(\acc[3]_i_2_n_0 ),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h96669996)) 
    \acc[3]_i_1 
       (.I0(\acc[4]_i_3_n_0 ),
        .I1(acc_reg[3]),
        .I2(\acc[3]_i_2_n_0 ),
        .I3(acc_reg[2]),
        .I4(\acc[3]_i_3_n_0 ),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FF0C3CC)) 
    \acc[3]_i_2 
       (.I0(acc_reg[4]),
        .I1(\acc_reg[1]_0 [2]),
        .I2(\acc_reg[1]_0 [0]),
        .I3(\acc_reg[1]_0 [1]),
        .I4(\acc_reg[1]_0 [3]),
        .O(\acc[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3D3CC3C3FFFFFFFF)) 
    \acc[3]_i_3 
       (.I0(\acc_reg[1]_0 [2]),
        .I1(\acc_reg[1]_0 [3]),
        .I2(\acc_reg[1]_0 [1]),
        .I3(\acc_reg[1]_0 [0]),
        .I4(acc_reg[4]),
        .I5(acc_reg[1]),
        .O(\acc[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h71710071)) 
    \acc[4]_i_2 
       (.I0(\acc[4]_i_3_n_0 ),
        .I1(acc_reg[3]),
        .I2(\acc[4]_i_4_n_0 ),
        .I3(\acc[4]_i_5_n_0 ),
        .I4(acc_reg[4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h51111FF11F1011FF)) 
    \acc[4]_i_3 
       (.I0(acc_reg[4]),
        .I1(\tmds[7]_i_6_n_0 ),
        .I2(\acc_reg[1]_0 [3]),
        .I3(\acc_reg[1]_0 [1]),
        .I4(\acc_reg[1]_0 [0]),
        .I5(\acc_reg[1]_0 [2]),
        .O(\acc[4]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h2B)) 
    \acc[4]_i_4 
       (.I0(\acc[3]_i_3_n_0 ),
        .I1(acc_reg[2]),
        .I2(\acc[3]_i_2_n_0 ),
        .O(\acc[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \acc[4]_i_5 
       (.I0(\acc_reg[1]_0 [3]),
        .I1(\acc_reg[1]_0 [1]),
        .I2(\acc_reg[1]_0 [0]),
        .I3(\acc_reg[1]_0 [2]),
        .O(\acc[4]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[1] 
       (.C(pixelClock),
        .CE(1'b1),
        .D(p_0_in__0[1]),
        .Q(acc_reg[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[2] 
       (.C(pixelClock),
        .CE(1'b1),
        .D(p_0_in__0[2]),
        .Q(acc_reg[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[3] 
       (.C(pixelClock),
        .CE(1'b1),
        .D(p_0_in__0[3]),
        .Q(acc_reg[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[4] 
       (.C(pixelClock),
        .CE(1'b1),
        .D(p_0_in__0[4]),
        .Q(acc_reg[4]),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFF00FFEAEAEAEA)) 
    \tmds[0]_i_1 
       (.I0(\tmds_reg[8]_0 [0]),
        .I1(\tmds_reg[8]_0 [1]),
        .I2(mode[2]),
        .I3(\tmds[9]_i_5_n_0 ),
        .I4(\tmds[0]_i_2_n_0 ),
        .I5(mode[0]),
        .O(\tmds[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88820A00)) 
    \tmds[0]_i_2 
       (.I0(mode[1]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(\tmds[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00FFE6E6)) 
    \tmds[1]_i_1 
       (.I0(mode[2]),
        .I1(\tmds_reg[8]_0 [0]),
        .I2(\tmds_reg[8]_0 [1]),
        .I3(\tmds[1]_i_2_n_0 ),
        .I4(mode[0]),
        .O(\tmds[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h300FCC3F55555555)) 
    \tmds[1]_i_2 
       (.I0(\tmds[6]_i_7_n_0 ),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(mode[1]),
        .O(\tmds[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF1F50000F1F5F1F5)) 
    \tmds[2]_i_1 
       (.I0(\tmds_reg[8]_0 [0]),
        .I1(\tmds_reg[8]_0 [1]),
        .I2(mode[0]),
        .I3(mode[2]),
        .I4(\tmds[2]_i_2__0_n_0 ),
        .I5(\tmds[9]_i_5_n_0 ),
        .O(\tmds[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h674B0000FFFFFFFF)) 
    \tmds[2]_i_2__0 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(mode[1]),
        .I5(mode[0]),
        .O(\tmds[2]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFF520052)) 
    \tmds[3]_i_1 
       (.I0(mode[2]),
        .I1(\tmds_reg[8]_0 [1]),
        .I2(\tmds_reg[8]_0 [0]),
        .I3(mode[0]),
        .I4(\tmds[3]_i_2_n_0 ),
        .O(\tmds[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h17E1FFFF17E10000)) 
    \tmds[3]_i_2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(mode[1]),
        .I5(\tmds[6]_i_7_n_0 ),
        .O(\tmds[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0000FF14)) 
    \tmds[4]_i_1 
       (.I0(\tmds[6]_i_2_n_0 ),
        .I1(\tmds[6]_i_3_n_0 ),
        .I2(\acc_reg[1]_0 [0]),
        .I3(\tmds[4]_i_2__1_n_0 ),
        .I4(\tmds[7]_i_4__1_n_0 ),
        .O(\tmds[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2B006100FFFFFFFF)) 
    \tmds[4]_i_2__1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(mode[1]),
        .I4(Q[2]),
        .I5(mode[0]),
        .O(\tmds[4]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h8BB8BB88)) 
    \tmds[5]_i_1 
       (.I0(\tmds[5]_i_2_n_0 ),
        .I1(mode[0]),
        .I2(mode[2]),
        .I3(\tmds_reg[8]_0 [0]),
        .I4(\tmds_reg[8]_0 [1]),
        .O(\tmds[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h59B4FFFF59B40000)) 
    \tmds[5]_i_2 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(mode[1]),
        .I5(\tmds[5]_i_3_n_0 ),
        .O(\tmds[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8070001F000F00F0)) 
    \tmds[5]_i_3 
       (.I0(\acc_reg[1]_0 [3]),
        .I1(\acc_reg[1]_0 [2]),
        .I2(acc_reg[4]),
        .I3(\tmds[7]_i_6_n_0 ),
        .I4(\acc_reg[1]_0 [1]),
        .I5(\acc_reg[1]_0 [0]),
        .O(\tmds[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF4114)) 
    \tmds[6]_i_1 
       (.I0(\tmds[6]_i_2_n_0 ),
        .I1(\tmds[6]_i_3_n_0 ),
        .I2(\acc_reg[1]_0 [2]),
        .I3(\tmds[6]_i_4_n_0 ),
        .I4(\tmds[6]_i_5__1_n_0 ),
        .I5(\tmds[6]_i_6__0_n_0 ),
        .O(\tmds[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAAA)) 
    \tmds[6]_i_2 
       (.I0(mode[1]),
        .I1(acc_reg[4]),
        .I2(acc_reg[2]),
        .I3(acc_reg[1]),
        .I4(acc_reg[3]),
        .I5(\tmds[8]_i_3_n_0 ),
        .O(\tmds[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFEFF00FF00)) 
    \tmds[6]_i_3 
       (.I0(acc_reg[3]),
        .I1(acc_reg[1]),
        .I2(acc_reg[2]),
        .I3(\tmds[6]_i_7_n_0 ),
        .I4(acc_reg[4]),
        .I5(\tmds[8]_i_3_n_0 ),
        .O(\tmds[6]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmds[6]_i_4 
       (.I0(\acc_reg[1]_0 [1]),
        .I1(\acc_reg[1]_0 [0]),
        .O(\tmds[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB9960000FFFFFFFF)) 
    \tmds[6]_i_5__1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(mode[1]),
        .I5(mode[0]),
        .O(\tmds[6]_i_5__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0144)) 
    \tmds[6]_i_6__0 
       (.I0(mode[0]),
        .I1(\tmds_reg[8]_0 [0]),
        .I2(\tmds_reg[8]_0 [1]),
        .I3(mode[2]),
        .O(\tmds[6]_i_6__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hAAAAAA8A)) 
    \tmds[6]_i_7 
       (.I0(acc_reg[4]),
        .I1(\acc_reg[1]_0 [2]),
        .I2(\acc_reg[1]_0 [0]),
        .I3(\acc_reg[1]_0 [1]),
        .I4(\acc_reg[1]_0 [3]),
        .O(\tmds[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8F8F8FFF8FFF8)) 
    \tmds[7]_i_1 
       (.I0(\tmds_reg[8]_1 ),
        .I1(\tmds[7]_i_2_n_0 ),
        .I2(\tmds[7]_i_3__0_n_0 ),
        .I3(\tmds[7]_i_4__1_n_0 ),
        .I4(\tmds[7]_i_5__0_n_0 ),
        .I5(mode[2]),
        .O(\tmds[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h811E1EE51EE1E11E)) 
    \tmds[7]_i_2 
       (.I0(\tmds[7]_i_6_n_0 ),
        .I1(acc_reg[4]),
        .I2(\acc_reg[1]_0 [2]),
        .I3(\acc_reg[1]_0 [3]),
        .I4(\acc_reg[1]_0 [1]),
        .I5(\acc_reg[1]_0 [0]),
        .O(\tmds[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9D4D000000000000)) 
    \tmds[7]_i_3__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(mode[0]),
        .I5(mode[1]),
        .O(\tmds[7]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h4550)) 
    \tmds[7]_i_4__1 
       (.I0(mode[0]),
        .I1(\tmds_reg[8]_0 [1]),
        .I2(\tmds_reg[8]_0 [0]),
        .I3(mode[2]),
        .O(\tmds[7]_i_4__1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \tmds[7]_i_5__0 
       (.I0(\tmds_reg[8]_0 [0]),
        .I1(\tmds_reg[8]_0 [1]),
        .O(\tmds[7]_i_5__0_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \tmds[7]_i_6 
       (.I0(\tmds[8]_i_3_n_0 ),
        .I1(acc_reg[3]),
        .I2(acc_reg[1]),
        .I3(acc_reg[2]),
        .I4(acc_reg[4]),
        .O(\tmds[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h000008AA08AA08AA)) 
    \tmds[8]_i_1 
       (.I0(\tmds[9]_i_4_n_0 ),
        .I1(\tmds_reg[8]_0 [1]),
        .I2(\tmds_reg[8]_0 [0]),
        .I3(\tmds[8]_i_2__1_n_0 ),
        .I4(\tmds[8]_i_3_n_0 ),
        .I5(\tmds_reg[8]_1 ),
        .O(\tmds[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h54)) 
    \tmds[8]_i_2__1 
       (.I0(mode[0]),
        .I1(\tmds_reg[8]_0 [0]),
        .I2(mode[2]),
        .O(\tmds[8]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \tmds[8]_i_3 
       (.I0(\acc_reg[1]_0 [2]),
        .I1(\acc_reg[1]_0 [3]),
        .I2(\acc_reg[1]_0 [1]),
        .I3(\acc_reg[1]_0 [0]),
        .O(\tmds[8]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \tmds[9]_i_1__0 
       (.I0(mode[1]),
        .I1(mode[2]),
        .I2(mode[0]),
        .O(\tmds[9]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'h35)) 
    \tmds[9]_i_2__1 
       (.I0(mode[1]),
        .I1(mode[2]),
        .I2(mode[0]),
        .O(\tmds[9]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h5555DFD7FFFFDFD7)) 
    \tmds[9]_i_3 
       (.I0(\tmds[9]_i_4_n_0 ),
        .I1(\tmds_reg[8]_0 [0]),
        .I2(\tmds_reg[8]_0 [1]),
        .I3(mode[2]),
        .I4(mode[0]),
        .I5(\tmds[9]_i_5_n_0 ),
        .O(\tmds[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h75FF7D55FFFFFFFF)) 
    \tmds[9]_i_4 
       (.I0(mode[0]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(mode[1]),
        .O(\tmds[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEBBBBBBBBBBBBFBB)) 
    \tmds[9]_i_5 
       (.I0(mode[1]),
        .I1(acc_reg[4]),
        .I2(\acc_reg[1]_0 [2]),
        .I3(\acc_reg[1]_0 [0]),
        .I4(\acc_reg[1]_0 [1]),
        .I5(\acc_reg[1]_0 [3]),
        .O(\tmds[9]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tmds_reg[0] 
       (.C(pixelClock),
        .CE(\tmds[9]_i_2__1_n_0 ),
        .D(\tmds[0]_i_1_n_0 ),
        .Q(\tmds_reg[9]_0 [0]),
        .R(\tmds[9]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tmds_reg[1] 
       (.C(pixelClock),
        .CE(\tmds[9]_i_2__1_n_0 ),
        .D(\tmds[1]_i_1_n_0 ),
        .Q(\tmds_reg[9]_0 [1]),
        .R(\tmds[9]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \tmds_reg[2] 
       (.C(pixelClock),
        .CE(\tmds[9]_i_2__1_n_0 ),
        .D(\tmds[2]_i_1_n_0 ),
        .Q(\tmds_reg[9]_0 [2]),
        .S(\tmds[9]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \tmds_reg[3] 
       (.C(pixelClock),
        .CE(\tmds[9]_i_2__1_n_0 ),
        .D(\tmds[3]_i_1_n_0 ),
        .Q(\tmds_reg[9]_0 [3]),
        .S(\tmds[9]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \tmds_reg[4] 
       (.C(pixelClock),
        .CE(\tmds[9]_i_2__1_n_0 ),
        .D(\tmds[4]_i_1_n_0 ),
        .Q(\tmds_reg[9]_0 [4]),
        .R(\tmds[9]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tmds_reg[5] 
       (.C(pixelClock),
        .CE(\tmds[9]_i_2__1_n_0 ),
        .D(\tmds[5]_i_1_n_0 ),
        .Q(\tmds_reg[9]_0 [5]),
        .R(\tmds[9]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \tmds_reg[6] 
       (.C(pixelClock),
        .CE(\tmds[9]_i_2__1_n_0 ),
        .D(\tmds[6]_i_1_n_0 ),
        .Q(\tmds_reg[9]_0 [6]),
        .S(\tmds[9]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \tmds_reg[7] 
       (.C(pixelClock),
        .CE(\tmds[9]_i_2__1_n_0 ),
        .D(\tmds[7]_i_1_n_0 ),
        .Q(\tmds_reg[9]_0 [7]),
        .S(\tmds[9]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \tmds_reg[8] 
       (.C(pixelClock),
        .CE(\tmds[9]_i_2__1_n_0 ),
        .D(\tmds[8]_i_1_n_0 ),
        .Q(\tmds_reg[9]_0 [8]),
        .R(\tmds[9]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \tmds_reg[9] 
       (.C(pixelClock),
        .CE(\tmds[9]_i_2__1_n_0 ),
        .D(\tmds[9]_i_3_n_0 ),
        .Q(\tmds_reg[9]_0 [9]),
        .S(\tmds[9]_i_1__0_n_0 ));
endmodule

(* ORIG_REF_NAME = "tmds_channel" *) 
module blockone_videomodule_0_0_tmds_channel__parameterized0
   (E,
    \true_hdmi_output.mode_reg[0] ,
    \tmds_reg[9]_0 ,
    Q,
    mode,
    \tmds_reg[3]_0 ,
    \tmds_reg[2]_0 ,
    pixelClock,
    SR);
  output [0:0]E;
  output \true_hdmi_output.mode_reg[0] ;
  output [9:0]\tmds_reg[9]_0 ;
  input [3:0]Q;
  input [2:0]mode;
  input [0:0]\tmds_reg[3]_0 ;
  input [3:0]\tmds_reg[2]_0 ;
  input pixelClock;
  input [0:0]SR;

  wire [0:0]E;
  wire [3:0]Q;
  wire [0:0]SR;
  wire \acc[3]_i_2__0_n_0 ;
  wire \acc[3]_i_3__0_n_0 ;
  wire \acc[4]_i_2__1_n_0 ;
  wire \acc[4]_i_3__0_n_0 ;
  wire \acc[4]_i_4__0_n_0 ;
  wire \acc[4]_i_5__0_n_0 ;
  wire [4:1]acc_reg;
  wire [2:0]mode;
  wire [4:1]p_0_in__1;
  wire pixelClock;
  wire \tmds[0]_i_1__0_n_0 ;
  wire \tmds[1]_i_1__0_n_0 ;
  wire \tmds[1]_i_2__0_n_0 ;
  wire \tmds[2]_i_1__0_n_0 ;
  wire \tmds[2]_i_2_n_0 ;
  wire \tmds[3]_i_1__0_n_0 ;
  wire \tmds[3]_i_2__0_n_0 ;
  wire \tmds[3]_i_3__0_n_0 ;
  wire \tmds[4]_i_1__0_n_0 ;
  wire \tmds[4]_i_2_n_0 ;
  wire \tmds[5]_i_1__0_n_0 ;
  wire \tmds[5]_i_2__1_n_0 ;
  wire \tmds[5]_i_3__0_n_0 ;
  wire \tmds[5]_i_4_n_0 ;
  wire \tmds[6]_i_1__0_n_0 ;
  wire \tmds[6]_i_2__0_n_0 ;
  wire \tmds[6]_i_3__0_n_0 ;
  wire \tmds[6]_i_4__0_n_0 ;
  wire \tmds[6]_i_5__0_n_0 ;
  wire \tmds[7]_i_1__0_n_0 ;
  wire \tmds[7]_i_2__0_n_0 ;
  wire \tmds[7]_i_3_n_0 ;
  wire \tmds[7]_i_4_n_0 ;
  wire \tmds[7]_i_5_n_0 ;
  wire \tmds[7]_i_6__0_n_0 ;
  wire \tmds[8]_i_1__0_n_0 ;
  wire \tmds[8]_i_2_n_0 ;
  wire \tmds[9]_i_2_n_0 ;
  wire \tmds[9]_i_3__0_n_0 ;
  wire \tmds[9]_i_4__0_n_0 ;
  wire [3:0]\tmds_reg[2]_0 ;
  wire [0:0]\tmds_reg[3]_0 ;
  wire [9:0]\tmds_reg[9]_0 ;
  wire \true_hdmi_output.mode_reg[0] ;

  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \acc[1]_i_1__0 
       (.I0(acc_reg[1]),
        .I1(\acc[3]_i_2__0_n_0 ),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h2DD2)) 
    \acc[2]_i_1__1 
       (.I0(acc_reg[1]),
        .I1(\acc[3]_i_2__0_n_0 ),
        .I2(\acc[3]_i_3__0_n_0 ),
        .I3(acc_reg[2]),
        .O(p_0_in__1[2]));
  LUT6 #(
    .INIT(64'h0DDFF220F2200DDF)) 
    \acc[3]_i_1__1 
       (.I0(acc_reg[1]),
        .I1(\acc[3]_i_2__0_n_0 ),
        .I2(acc_reg[2]),
        .I3(\acc[3]_i_3__0_n_0 ),
        .I4(\acc[4]_i_3__0_n_0 ),
        .I5(acc_reg[3]),
        .O(p_0_in__1[3]));
  LUT6 #(
    .INIT(64'hFF0000FF55AAAA75)) 
    \acc[3]_i_2__0 
       (.I0(acc_reg[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(\tmds[6]_i_3__0_n_0 ),
        .O(\acc[3]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hBFF0FF0FF0FFF000)) 
    \acc[3]_i_3__0 
       (.I0(\tmds[6]_i_3__0_n_0 ),
        .I1(acc_reg[4]),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\acc[3]_i_3__0_n_0 ));
  LUT5 #(
    .INIT(32'h00717171)) 
    \acc[4]_i_1 
       (.I0(\acc[4]_i_2__1_n_0 ),
        .I1(acc_reg[3]),
        .I2(\acc[4]_i_3__0_n_0 ),
        .I3(\acc[4]_i_4__0_n_0 ),
        .I4(\acc[4]_i_5__0_n_0 ),
        .O(p_0_in__1[4]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hF220)) 
    \acc[4]_i_2__1 
       (.I0(acc_reg[1]),
        .I1(\acc[3]_i_2__0_n_0 ),
        .I2(\acc[3]_i_3__0_n_0 ),
        .I3(acc_reg[2]),
        .O(\acc[4]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h0004EDBC00040004)) 
    \acc[4]_i_3__0 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(\tmds[6]_i_3__0_n_0 ),
        .I5(acc_reg[4]),
        .O(\acc[4]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00550057)) 
    \acc[4]_i_4__0 
       (.I0(\tmds[8]_i_2_n_0 ),
        .I1(acc_reg[3]),
        .I2(acc_reg[2]),
        .I3(acc_reg[4]),
        .I4(acc_reg[1]),
        .O(\acc[4]_i_4__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \acc[4]_i_5__0 
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(\acc[4]_i_5__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[1] 
       (.C(pixelClock),
        .CE(1'b1),
        .D(p_0_in__1[1]),
        .Q(acc_reg[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[2] 
       (.C(pixelClock),
        .CE(1'b1),
        .D(p_0_in__1[2]),
        .Q(acc_reg[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[3] 
       (.C(pixelClock),
        .CE(1'b1),
        .D(p_0_in__1[3]),
        .Q(acc_reg[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[4] 
       (.C(pixelClock),
        .CE(1'b1),
        .D(p_0_in__1[4]),
        .Q(acc_reg[4]),
        .R(SR));
  LUT6 #(
    .INIT(64'hAEAEAEAAAEAAAEAA)) 
    \tmds[0]_i_1__0 
       (.I0(\tmds[2]_i_2_n_0 ),
        .I1(mode[0]),
        .I2(mode[1]),
        .I3(\tmds[7]_i_3_n_0 ),
        .I4(\tmds[6]_i_3__0_n_0 ),
        .I5(\tmds[8]_i_2_n_0 ),
        .O(\tmds[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00004700)) 
    \tmds[1]_i_1__0 
       (.I0(\tmds[8]_i_2_n_0 ),
        .I1(\tmds[7]_i_3_n_0 ),
        .I2(\tmds[7]_i_2__0_n_0 ),
        .I3(mode[0]),
        .I4(mode[1]),
        .I5(\tmds[1]_i_2__0_n_0 ),
        .O(\tmds[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF90E0B000)) 
    \tmds[1]_i_2__0 
       (.I0(\tmds_reg[2]_0 [1]),
        .I1(\tmds_reg[2]_0 [3]),
        .I2(mode[1]),
        .I3(\tmds_reg[2]_0 [0]),
        .I4(\tmds_reg[2]_0 [2]),
        .I5(\tmds[6]_i_5__0_n_0 ),
        .O(\tmds[1]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h2222222220222222)) 
    \tmds[2]_i_1__0 
       (.I0(\tmds[9]_i_3__0_n_0 ),
        .I1(\tmds[2]_i_2_n_0 ),
        .I2(\tmds_reg[2]_0 [2]),
        .I3(mode[1]),
        .I4(\tmds_reg[2]_0 [0]),
        .I5(\tmds_reg[2]_0 [3]),
        .O(\tmds[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFAEEAABEAAAAAAAA)) 
    \tmds[2]_i_2 
       (.I0(\tmds[6]_i_5__0_n_0 ),
        .I1(\tmds_reg[2]_0 [0]),
        .I2(\tmds_reg[2]_0 [2]),
        .I3(\tmds_reg[2]_0 [1]),
        .I4(\tmds_reg[2]_0 [3]),
        .I5(mode[1]),
        .O(\tmds[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3010301330103010)) 
    \tmds[3]_i_1__0 
       (.I0(\tmds[3]_i_2__0_n_0 ),
        .I1(\tmds[3]_i_3__0_n_0 ),
        .I2(mode[0]),
        .I3(mode[1]),
        .I4(mode[2]),
        .I5(\tmds_reg[3]_0 ),
        .O(\tmds[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAB55555555)) 
    \tmds[3]_i_2__0 
       (.I0(\tmds[7]_i_3_n_0 ),
        .I1(acc_reg[3]),
        .I2(acc_reg[2]),
        .I3(acc_reg[4]),
        .I4(acc_reg[1]),
        .I5(\tmds[8]_i_2_n_0 ),
        .O(\tmds[3]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hE18E0000)) 
    \tmds[3]_i_3__0 
       (.I0(\tmds_reg[2]_0 [0]),
        .I1(\tmds_reg[2]_0 [1]),
        .I2(\tmds_reg[2]_0 [3]),
        .I3(\tmds_reg[2]_0 [2]),
        .I4(mode[1]),
        .O(\tmds[3]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00606060)) 
    \tmds[4]_i_1__0 
       (.I0(Q[0]),
        .I1(\tmds[7]_i_3_n_0 ),
        .I2(\true_hdmi_output.mode_reg[0] ),
        .I3(\tmds[6]_i_3__0_n_0 ),
        .I4(\tmds[8]_i_2_n_0 ),
        .I5(\tmds[4]_i_2_n_0 ),
        .O(\tmds[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hBFABAEEBAAAAAAAA)) 
    \tmds[4]_i_2 
       (.I0(\tmds[7]_i_6__0_n_0 ),
        .I1(\tmds_reg[2]_0 [3]),
        .I2(\tmds_reg[2]_0 [1]),
        .I3(\tmds_reg[2]_0 [0]),
        .I4(\tmds_reg[2]_0 [2]),
        .I5(mode[1]),
        .O(\tmds[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF2C002F00)) 
    \tmds[5]_i_1__0 
       (.I0(\tmds[5]_i_2__1_n_0 ),
        .I1(\tmds[5]_i_3__0_n_0 ),
        .I2(\tmds[7]_i_3_n_0 ),
        .I3(\true_hdmi_output.mode_reg[0] ),
        .I4(\tmds[7]_i_2__0_n_0 ),
        .I5(\tmds[5]_i_4_n_0 ),
        .O(\tmds[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \tmds[5]_i_2__1 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[1]),
        .O(\tmds[5]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \tmds[5]_i_3__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\tmds[5]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hBAEEEFBEAAAAAAAA)) 
    \tmds[5]_i_4 
       (.I0(\tmds[6]_i_5__0_n_0 ),
        .I1(\tmds_reg[2]_0 [0]),
        .I2(\tmds_reg[2]_0 [2]),
        .I3(\tmds_reg[2]_0 [1]),
        .I4(\tmds_reg[2]_0 [3]),
        .I5(mode[1]),
        .O(\tmds[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000004F6F6F6F)) 
    \tmds[6]_i_1__0 
       (.I0(\tmds[6]_i_2__0_n_0 ),
        .I1(\tmds[7]_i_3_n_0 ),
        .I2(\true_hdmi_output.mode_reg[0] ),
        .I3(\tmds[8]_i_2_n_0 ),
        .I4(\tmds[6]_i_3__0_n_0 ),
        .I5(\tmds[6]_i_4__0_n_0 ),
        .O(\tmds[6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \tmds[6]_i_2__0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(\tmds[6]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \tmds[6]_i_3__0 
       (.I0(acc_reg[1]),
        .I1(acc_reg[4]),
        .I2(acc_reg[2]),
        .I3(acc_reg[3]),
        .O(\tmds[6]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF16E10000)) 
    \tmds[6]_i_4__0 
       (.I0(\tmds_reg[2]_0 [0]),
        .I1(\tmds_reg[2]_0 [1]),
        .I2(\tmds_reg[2]_0 [2]),
        .I3(\tmds_reg[2]_0 [3]),
        .I4(mode[1]),
        .I5(\tmds[6]_i_5__0_n_0 ),
        .O(\tmds[6]_i_4__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h5554)) 
    \tmds[6]_i_5__0 
       (.I0(mode[0]),
        .I1(mode[1]),
        .I2(mode[2]),
        .I3(\tmds_reg[3]_0 ),
        .O(\tmds[6]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'h000000003F3F1FDF)) 
    \tmds[7]_i_1__0 
       (.I0(\tmds[7]_i_2__0_n_0 ),
        .I1(\tmds[7]_i_3_n_0 ),
        .I2(\true_hdmi_output.mode_reg[0] ),
        .I3(\tmds[8]_i_2_n_0 ),
        .I4(\tmds[7]_i_4_n_0 ),
        .I5(\tmds[7]_i_5_n_0 ),
        .O(\tmds[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h0001FFFF)) 
    \tmds[7]_i_2__0 
       (.I0(acc_reg[3]),
        .I1(acc_reg[2]),
        .I2(acc_reg[4]),
        .I3(acc_reg[1]),
        .I4(\tmds[8]_i_2_n_0 ),
        .O(\tmds[7]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h1555554540000000)) 
    \tmds[7]_i_3 
       (.I0(\tmds[6]_i_3__0_n_0 ),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(acc_reg[4]),
        .O(\tmds[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \tmds[7]_i_4 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(\tmds[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBEFBBABAAAAAAAAA)) 
    \tmds[7]_i_5 
       (.I0(\tmds[7]_i_6__0_n_0 ),
        .I1(\tmds_reg[2]_0 [1]),
        .I2(\tmds_reg[2]_0 [0]),
        .I3(\tmds_reg[2]_0 [3]),
        .I4(\tmds_reg[2]_0 [2]),
        .I5(mode[1]),
        .O(\tmds[7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h5455)) 
    \tmds[7]_i_6__0 
       (.I0(mode[0]),
        .I1(mode[1]),
        .I2(mode[2]),
        .I3(\tmds_reg[3]_0 ),
        .O(\tmds[7]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'hBBBABBBBBFBEBFBF)) 
    \tmds[8]_i_1__0 
       (.I0(\tmds[9]_i_4__0_n_0 ),
        .I1(mode[0]),
        .I2(mode[1]),
        .I3(mode[2]),
        .I4(\tmds_reg[3]_0 ),
        .I5(\tmds[8]_i_2_n_0 ),
        .O(\tmds[8]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \tmds[8]_i_2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[2]),
        .O(\tmds[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \tmds[8]_i_4 
       (.I0(mode[0]),
        .I1(mode[1]),
        .O(\true_hdmi_output.mode_reg[0] ));
  LUT3 #(
    .INIT(8'h1F)) 
    \tmds[9]_i_1__1 
       (.I0(mode[1]),
        .I1(mode[0]),
        .I2(mode[2]),
        .O(E));
  LUT6 #(
    .INIT(64'h2020202020202022)) 
    \tmds[9]_i_2 
       (.I0(\tmds[9]_i_3__0_n_0 ),
        .I1(\tmds[9]_i_4__0_n_0 ),
        .I2(mode[0]),
        .I3(mode[1]),
        .I4(mode[2]),
        .I5(\tmds_reg[3]_0 ),
        .O(\tmds[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFFFFEAFF)) 
    \tmds[9]_i_3__0 
       (.I0(\tmds[7]_i_3_n_0 ),
        .I1(\tmds[8]_i_2_n_0 ),
        .I2(\tmds[6]_i_3__0_n_0 ),
        .I3(mode[0]),
        .I4(mode[1]),
        .O(\tmds[9]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h4F006000)) 
    \tmds[9]_i_4__0 
       (.I0(\tmds_reg[2]_0 [0]),
        .I1(\tmds_reg[2]_0 [1]),
        .I2(\tmds_reg[2]_0 [3]),
        .I3(mode[1]),
        .I4(\tmds_reg[2]_0 [2]),
        .O(\tmds[9]_i_4__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tmds_reg[0] 
       (.C(pixelClock),
        .CE(E),
        .D(\tmds[0]_i_1__0_n_0 ),
        .Q(\tmds_reg[9]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmds_reg[1] 
       (.C(pixelClock),
        .CE(E),
        .D(\tmds[1]_i_1__0_n_0 ),
        .Q(\tmds_reg[9]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \tmds_reg[2] 
       (.C(pixelClock),
        .CE(E),
        .D(\tmds[2]_i_1__0_n_0 ),
        .Q(\tmds_reg[9]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmds_reg[3] 
       (.C(pixelClock),
        .CE(E),
        .D(\tmds[3]_i_1__0_n_0 ),
        .Q(\tmds_reg[9]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \tmds_reg[4] 
       (.C(pixelClock),
        .CE(E),
        .D(\tmds[4]_i_1__0_n_0 ),
        .Q(\tmds_reg[9]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmds_reg[5] 
       (.C(pixelClock),
        .CE(E),
        .D(\tmds[5]_i_1__0_n_0 ),
        .Q(\tmds_reg[9]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \tmds_reg[6] 
       (.C(pixelClock),
        .CE(E),
        .D(\tmds[6]_i_1__0_n_0 ),
        .Q(\tmds_reg[9]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmds_reg[7] 
       (.C(pixelClock),
        .CE(E),
        .D(\tmds[7]_i_1__0_n_0 ),
        .Q(\tmds_reg[9]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \tmds_reg[8] 
       (.C(pixelClock),
        .CE(E),
        .D(\tmds[8]_i_1__0_n_0 ),
        .Q(\tmds_reg[9]_0 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \tmds_reg[9] 
       (.C(pixelClock),
        .CE(E),
        .D(\tmds[9]_i_2_n_0 ),
        .Q(\tmds_reg[9]_0 [9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "tmds_channel" *) 
module blockone_videomodule_0_0_tmds_channel__parameterized1
   (SR,
    \tmds_reg[9]_0 ,
    Q,
    mode,
    \tmds_reg[0]_0 ,
    \tmds_reg[4]_0 ,
    \tmds_reg[6]_0 ,
    E,
    pixelClock);
  output [0:0]SR;
  output [9:0]\tmds_reg[9]_0 ;
  input [3:0]Q;
  input [2:0]mode;
  input [0:0]\tmds_reg[0]_0 ;
  input [3:0]\tmds_reg[4]_0 ;
  input \tmds_reg[6]_0 ;
  input [0:0]E;
  input pixelClock;

  wire [0:0]E;
  wire [3:0]Q;
  wire [0:0]SR;
  wire \acc[2]_i_2_n_0 ;
  wire \acc[4]_i_2__0_n_0 ;
  wire \acc[4]_i_3__1_n_0 ;
  wire \acc[4]_i_4__1_n_0 ;
  wire [4:1]acc_reg;
  wire [2:0]mode;
  wire [4:1]p_0_in__2;
  wire pixelClock;
  wire \tmds[0]_i_1__1_n_0 ;
  wire \tmds[0]_i_2__0_n_0 ;
  wire \tmds[0]_i_3_n_0 ;
  wire \tmds[1]_i_1__1_n_0 ;
  wire \tmds[1]_i_2__1_n_0 ;
  wire \tmds[2]_i_1__1_n_0 ;
  wire \tmds[3]_i_1__1_n_0 ;
  wire \tmds[3]_i_2__1_n_0 ;
  wire \tmds[3]_i_3_n_0 ;
  wire \tmds[3]_i_4_n_0 ;
  wire \tmds[3]_i_5_n_0 ;
  wire \tmds[4]_i_1__1_n_0 ;
  wire \tmds[4]_i_2__0_n_0 ;
  wire \tmds[4]_i_3_n_0 ;
  wire \tmds[5]_i_1__1_n_0 ;
  wire \tmds[5]_i_2__0_n_0 ;
  wire \tmds[5]_i_3__1_n_0 ;
  wire \tmds[6]_i_1__1_n_0 ;
  wire \tmds[6]_i_2__1_n_0 ;
  wire \tmds[6]_i_3__1_n_0 ;
  wire \tmds[6]_i_4__1_n_0 ;
  wire \tmds[6]_i_5_n_0 ;
  wire \tmds[6]_i_6_n_0 ;
  wire \tmds[7]_i_1__1_n_0 ;
  wire \tmds[7]_i_2__1_n_0 ;
  wire \tmds[7]_i_3__1_n_0 ;
  wire \tmds[7]_i_4__0_n_0 ;
  wire \tmds[8]_i_1__1_n_0 ;
  wire \tmds[8]_i_2__0_n_0 ;
  wire \tmds[8]_i_3__0_n_0 ;
  wire \tmds[9]_i_1_n_0 ;
  wire \tmds[9]_i_2__0_n_0 ;
  wire [0:0]\tmds_reg[0]_0 ;
  wire [3:0]\tmds_reg[4]_0 ;
  wire \tmds_reg[6]_0 ;
  wire [9:0]\tmds_reg[9]_0 ;

  LUT6 #(
    .INIT(64'h69966996699A6996)) 
    \acc[1]_i_1__1 
       (.I0(acc_reg[1]),
        .I1(acc_reg[4]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(p_0_in__2[1]));
  LUT6 #(
    .INIT(64'h960069FF69FF9600)) 
    \acc[2]_i_1__0 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(\tmds[3]_i_5_n_0 ),
        .I3(acc_reg[1]),
        .I4(\acc[2]_i_2_n_0 ),
        .I5(acc_reg[2]),
        .O(p_0_in__2[2]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h7FC3F0CC)) 
    \acc[2]_i_2 
       (.I0(acc_reg[4]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(\acc[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \acc[3]_i_1__0 
       (.I0(\acc[4]_i_2__0_n_0 ),
        .I1(\acc[4]_i_3__1_n_0 ),
        .I2(acc_reg[3]),
        .O(p_0_in__2[3]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hB2B200B2)) 
    \acc[4]_i_1__0 
       (.I0(\acc[4]_i_2__0_n_0 ),
        .I1(acc_reg[3]),
        .I2(\acc[4]_i_3__1_n_0 ),
        .I3(\acc[4]_i_4__1_n_0 ),
        .I4(acc_reg[4]),
        .O(p_0_in__2[4]));
  LUT3 #(
    .INIT(8'hEF)) 
    \acc[4]_i_1__1 
       (.I0(mode[2]),
        .I1(mode[1]),
        .I2(mode[0]),
        .O(SR));
  LUT6 #(
    .INIT(64'h4555500555005F50)) 
    \acc[4]_i_2__0 
       (.I0(\tmds[7]_i_2__1_n_0 ),
        .I1(acc_reg[4]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[3]),
        .I5(Q[1]),
        .O(\acc[4]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h1777771777171777)) 
    \acc[4]_i_3__1 
       (.I0(acc_reg[2]),
        .I1(\acc[2]_i_2_n_0 ),
        .I2(acc_reg[1]),
        .I3(\tmds[3]_i_5_n_0 ),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\acc[4]_i_3__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \acc[4]_i_4__1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[1]),
        .O(\acc[4]_i_4__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[1] 
       (.C(pixelClock),
        .CE(1'b1),
        .D(p_0_in__2[1]),
        .Q(acc_reg[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[2] 
       (.C(pixelClock),
        .CE(1'b1),
        .D(p_0_in__2[2]),
        .Q(acc_reg[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[3] 
       (.C(pixelClock),
        .CE(1'b1),
        .D(p_0_in__2[3]),
        .Q(acc_reg[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[4] 
       (.C(pixelClock),
        .CE(1'b1),
        .D(p_0_in__2[4]),
        .Q(acc_reg[4]),
        .R(SR));
  LUT6 #(
    .INIT(64'h00000000FFFFCCB8)) 
    \tmds[0]_i_1__1 
       (.I0(\tmds[0]_i_2__0_n_0 ),
        .I1(mode[0]),
        .I2(\tmds_reg[0]_0 ),
        .I3(mode[1]),
        .I4(mode[2]),
        .I5(\tmds[0]_i_3_n_0 ),
        .O(\tmds[0]_i_1__1_n_0 ));
  LUT3 #(
    .INIT(8'hC6)) 
    \tmds[0]_i_2__0 
       (.I0(acc_reg[4]),
        .I1(\tmds[8]_i_2__0_n_0 ),
        .I2(\acc[4]_i_4__1_n_0 ),
        .O(\tmds[0]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h1EBB0000)) 
    \tmds[0]_i_3 
       (.I0(\tmds_reg[4]_0 [1]),
        .I1(\tmds_reg[4]_0 [0]),
        .I2(\tmds_reg[4]_0 [3]),
        .I3(\tmds_reg[4]_0 [2]),
        .I4(mode[1]),
        .O(\tmds[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFCCB8)) 
    \tmds[1]_i_1__1 
       (.I0(\tmds[3]_i_5_n_0 ),
        .I1(mode[0]),
        .I2(\tmds_reg[0]_0 ),
        .I3(mode[1]),
        .I4(mode[2]),
        .I5(\tmds[1]_i_2__1_n_0 ),
        .O(\tmds[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h282002AA)) 
    \tmds[1]_i_2__1 
       (.I0(mode[1]),
        .I1(\tmds_reg[4]_0 [1]),
        .I2(\tmds_reg[4]_0 [3]),
        .I3(\tmds_reg[4]_0 [2]),
        .I4(\tmds_reg[4]_0 [0]),
        .O(\tmds[1]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hAAFABAEAFABABABA)) 
    \tmds[2]_i_1__1 
       (.I0(\tmds[9]_i_2__0_n_0 ),
        .I1(\tmds_reg[4]_0 [0]),
        .I2(mode[1]),
        .I3(\tmds_reg[4]_0 [3]),
        .I4(\tmds_reg[4]_0 [1]),
        .I5(\tmds_reg[4]_0 [2]),
        .O(\tmds[2]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFEFEEEFEEEFEE)) 
    \tmds[3]_i_1__1 
       (.I0(\tmds[3]_i_2__1_n_0 ),
        .I1(\tmds[3]_i_3_n_0 ),
        .I2(\tmds[3]_i_4_n_0 ),
        .I3(mode[1]),
        .I4(\tmds[3]_i_5_n_0 ),
        .I5(mode[0]),
        .O(\tmds[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h080808A2)) 
    \tmds[3]_i_2__1 
       (.I0(mode[1]),
        .I1(\tmds_reg[4]_0 [2]),
        .I2(\tmds_reg[4]_0 [3]),
        .I3(\tmds_reg[4]_0 [0]),
        .I4(\tmds_reg[4]_0 [1]),
        .O(\tmds[3]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h2322)) 
    \tmds[3]_i_3 
       (.I0(mode[1]),
        .I1(mode[0]),
        .I2(mode[2]),
        .I3(\tmds_reg[0]_0 ),
        .O(\tmds[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hFF8F)) 
    \tmds[3]_i_4 
       (.I0(\tmds_reg[4]_0 [1]),
        .I1(\tmds_reg[4]_0 [0]),
        .I2(\tmds_reg[4]_0 [3]),
        .I3(\tmds_reg[4]_0 [2]),
        .O(\tmds[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \tmds[3]_i_5 
       (.I0(acc_reg[4]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(\tmds[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h2A22AAA222A22A2A)) 
    \tmds[4]_i_1__1 
       (.I0(\tmds[4]_i_2__0_n_0 ),
        .I1(mode[1]),
        .I2(\tmds_reg[4]_0 [3]),
        .I3(\tmds_reg[4]_0 [2]),
        .I4(\tmds_reg[4]_0 [1]),
        .I5(\tmds_reg[4]_0 [0]),
        .O(\tmds[4]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hFF470000FFFFFFFF)) 
    \tmds[4]_i_2__0 
       (.I0(\tmds[0]_i_2__0_n_0 ),
        .I1(Q[0]),
        .I2(\tmds[6]_i_3__1_n_0 ),
        .I3(mode[1]),
        .I4(mode[0]),
        .I5(\tmds[4]_i_3_n_0 ),
        .O(\tmds[4]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h5554)) 
    \tmds[4]_i_3 
       (.I0(mode[2]),
        .I1(\tmds_reg[0]_0 ),
        .I2(mode[0]),
        .I3(mode[1]),
        .O(\tmds[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFADFFA8)) 
    \tmds[5]_i_1__1 
       (.I0(mode[0]),
        .I1(\tmds[5]_i_2__0_n_0 ),
        .I2(mode[1]),
        .I3(mode[2]),
        .I4(\tmds_reg[0]_0 ),
        .I5(\tmds[5]_i_3__1_n_0 ),
        .O(\tmds[5]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h969696D6)) 
    \tmds[5]_i_2__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(acc_reg[4]),
        .I3(Q[3]),
        .I4(Q[2]),
        .O(\tmds[5]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h96C50000)) 
    \tmds[5]_i_3__1 
       (.I0(\tmds_reg[4]_0 [0]),
        .I1(\tmds_reg[4]_0 [3]),
        .I2(\tmds_reg[4]_0 [1]),
        .I3(\tmds_reg[4]_0 [2]),
        .I4(mode[1]),
        .O(\tmds[5]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00006900)) 
    \tmds[6]_i_1__1 
       (.I0(\tmds[6]_i_2__1_n_0 ),
        .I1(Q[2]),
        .I2(\tmds[6]_i_3__1_n_0 ),
        .I3(\tmds_reg[6]_0 ),
        .I4(\tmds[6]_i_4__1_n_0 ),
        .I5(\tmds[6]_i_5_n_0 ),
        .O(\tmds[6]_i_1__1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmds[6]_i_2__1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\tmds[6]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF00FF000100FF)) 
    \tmds[6]_i_3__1 
       (.I0(acc_reg[2]),
        .I1(acc_reg[1]),
        .I2(acc_reg[3]),
        .I3(\tmds[3]_i_5_n_0 ),
        .I4(\tmds[8]_i_2__0_n_0 ),
        .I5(acc_reg[4]),
        .O(\tmds[6]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF000100000000)) 
    \tmds[6]_i_4__1 
       (.I0(acc_reg[4]),
        .I1(acc_reg[2]),
        .I2(acc_reg[1]),
        .I3(acc_reg[3]),
        .I4(\acc[4]_i_4__1_n_0 ),
        .I5(\tmds[8]_i_2__0_n_0 ),
        .O(\tmds[6]_i_4__1_n_0 ));
  LUT6 #(
    .INIT(64'hFEABEBFEAAAAAAAA)) 
    \tmds[6]_i_5 
       (.I0(\tmds[6]_i_6_n_0 ),
        .I1(\tmds_reg[4]_0 [0]),
        .I2(\tmds_reg[4]_0 [1]),
        .I3(\tmds_reg[4]_0 [3]),
        .I4(\tmds_reg[4]_0 [2]),
        .I5(mode[1]),
        .O(\tmds[6]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h2223)) 
    \tmds[6]_i_6 
       (.I0(mode[1]),
        .I1(mode[0]),
        .I2(mode[2]),
        .I3(\tmds_reg[0]_0 ),
        .O(\tmds[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF70206060)) 
    \tmds[7]_i_1__1 
       (.I0(\tmds[7]_i_2__1_n_0 ),
        .I1(\tmds[7]_i_3__1_n_0 ),
        .I2(\tmds_reg[6]_0 ),
        .I3(acc_reg[4]),
        .I4(\tmds[8]_i_2__0_n_0 ),
        .I5(\tmds[7]_i_4__0_n_0 ),
        .O(\tmds[7]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h00015555)) 
    \tmds[7]_i_2__1 
       (.I0(\tmds[3]_i_5_n_0 ),
        .I1(acc_reg[3]),
        .I2(acc_reg[1]),
        .I3(acc_reg[2]),
        .I4(\tmds[8]_i_2__0_n_0 ),
        .O(\tmds[7]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \tmds[7]_i_3__1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(\tmds[7]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF9400F500)) 
    \tmds[7]_i_4__0 
       (.I0(\tmds_reg[4]_0 [0]),
        .I1(\tmds_reg[4]_0 [3]),
        .I2(\tmds_reg[4]_0 [1]),
        .I3(mode[1]),
        .I4(\tmds_reg[4]_0 [2]),
        .I5(\tmds[3]_i_3_n_0 ),
        .O(\tmds[7]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FAABFAFB)) 
    \tmds[8]_i_1__1 
       (.I0(mode[2]),
        .I1(\tmds_reg[0]_0 ),
        .I2(mode[0]),
        .I3(mode[1]),
        .I4(\tmds[8]_i_2__0_n_0 ),
        .I5(\tmds[8]_i_3__0_n_0 ),
        .O(\tmds[8]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \tmds[8]_i_2__0 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\tmds[8]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hB09000F0)) 
    \tmds[8]_i_3__0 
       (.I0(\tmds_reg[4]_0 [0]),
        .I1(\tmds_reg[4]_0 [1]),
        .I2(mode[1]),
        .I3(\tmds_reg[4]_0 [2]),
        .I4(\tmds_reg[4]_0 [3]),
        .O(\tmds[8]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFB09010B0)) 
    \tmds[9]_i_1 
       (.I0(\tmds_reg[4]_0 [3]),
        .I1(\tmds_reg[4]_0 [2]),
        .I2(mode[1]),
        .I3(\tmds_reg[4]_0 [1]),
        .I4(\tmds_reg[4]_0 [0]),
        .I5(\tmds[9]_i_2__0_n_0 ),
        .O(\tmds[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h0FF10F01)) 
    \tmds[9]_i_2__0 
       (.I0(\tmds_reg[0]_0 ),
        .I1(mode[2]),
        .I2(mode[0]),
        .I3(mode[1]),
        .I4(\tmds[0]_i_2__0_n_0 ),
        .O(\tmds[9]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tmds_reg[0] 
       (.C(pixelClock),
        .CE(E),
        .D(\tmds[0]_i_1__1_n_0 ),
        .Q(\tmds_reg[9]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmds_reg[1] 
       (.C(pixelClock),
        .CE(E),
        .D(\tmds[1]_i_1__1_n_0 ),
        .Q(\tmds_reg[9]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \tmds_reg[2] 
       (.C(pixelClock),
        .CE(E),
        .D(\tmds[2]_i_1__1_n_0 ),
        .Q(\tmds_reg[9]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmds_reg[3] 
       (.C(pixelClock),
        .CE(E),
        .D(\tmds[3]_i_1__1_n_0 ),
        .Q(\tmds_reg[9]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \tmds_reg[4] 
       (.C(pixelClock),
        .CE(E),
        .D(\tmds[4]_i_1__1_n_0 ),
        .Q(\tmds_reg[9]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmds_reg[5] 
       (.C(pixelClock),
        .CE(E),
        .D(\tmds[5]_i_1__1_n_0 ),
        .Q(\tmds_reg[9]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \tmds_reg[6] 
       (.C(pixelClock),
        .CE(E),
        .D(\tmds[6]_i_1__1_n_0 ),
        .Q(\tmds_reg[9]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmds_reg[7] 
       (.C(pixelClock),
        .CE(E),
        .D(\tmds[7]_i_1__1_n_0 ),
        .Q(\tmds_reg[9]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \tmds_reg[8] 
       (.C(pixelClock),
        .CE(E),
        .D(\tmds[8]_i_1__1_n_0 ),
        .Q(\tmds_reg[9]_0 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \tmds_reg[9] 
       (.C(pixelClock),
        .CE(E),
        .D(\tmds[9]_i_1_n_0 ),
        .Q(\tmds_reg[9]_0 [9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "videocore" *) 
module blockone_videomodule_0_0_videocore
   (HDMI_TMDS_p,
    HDMI_TMDS_n,
    HDMI_CLK_p,
    HDMI_CLK_n,
    s_axi_arready,
    s_axi_bvalid,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_wready,
    s_axi_rdata,
    m_axi_araddr,
    m_axi_arlen,
    s_axi_awready,
    m_axi_arvalid,
    m_axi_rready,
    aclk,
    s_axi_rready,
    m_axi_rvalid,
    audiosampleclk,
    pixelClock,
    audioSampleInputLR,
    pixelClockx5,
    s_axi_arvalid,
    s_axi_awvalid,
    s_axi_wvalid,
    s_axi_bready,
    aresetn,
    m_axi_rdata,
    s_axi_wdata,
    m_axi_arready,
    m_axi_rlast);
  output [2:0]HDMI_TMDS_p;
  output [2:0]HDMI_TMDS_n;
  output HDMI_CLK_p;
  output HDMI_CLK_n;
  output s_axi_arready;
  output s_axi_bvalid;
  output s_axi_rlast;
  output s_axi_rvalid;
  output s_axi_wready;
  output [10:0]s_axi_rdata;
  output [31:0]m_axi_araddr;
  output [0:0]m_axi_arlen;
  output s_axi_awready;
  output m_axi_arvalid;
  output m_axi_rready;
  input aclk;
  input s_axi_rready;
  input m_axi_rvalid;
  input audiosampleclk;
  input pixelClock;
  input [31:0]audioSampleInputLR;
  input pixelClockx5;
  input s_axi_arvalid;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input s_axi_bready;
  input aresetn;
  input [63:0]m_axi_rdata;
  input [31:0]s_axi_wdata;
  input m_axi_arready;
  input m_axi_rlast;

  wire HDMIInst_n_92;
  wire HDMIInst_n_93;
  wire HDMIInst_n_94;
  wire HDMIInst_n_95;
  wire HDMIInst_n_96;
  wire HDMI_CLK_n;
  wire HDMI_CLK_p;
  wire [2:0]HDMI_TMDS_n;
  wire [2:0]HDMI_TMDS_p;
  wire aclk;
  wire aresetn;
  (* async_reg = "true" *) wire aresetnA;
  (* async_reg = "true" *) wire aresetnB;
  wire [31:0]audioSampleInputLR;
  wire audiosampleclk;
  wire blankt;
  (* async_reg = "true" *) wire blanktoggle;
  (* async_reg = "true" *) wire blanktogglepre;
  wire [5:3]burstmask;
  wire [0:0]burststate;
  wire \burststate[0]_i_1_n_0 ;
  wire \burststate[1]_i_1_n_0 ;
  wire \burststate[2]_i_1_n_0 ;
  wire \burststate[3]_i_1_n_0 ;
  wire \burststate[4]_i_1_n_0 ;
  wire \burststate[5]_i_1_n_0 ;
  wire \burststate[6]_i_1_n_0 ;
  wire \burststate[7]_i_1_n_0 ;
  wire \burststate[8]_i_1_n_0 ;
  wire \burststate[9]_i_1_n_0 ;
  wire \burststate[9]_i_2_n_0 ;
  wire \burststate[9]_i_3_n_0 ;
  wire [9:1]burststate__0;
  wire [2:0]cmdmode;
  wire \cmdmode[0]_i_2_n_0 ;
  wire \cmdmode[1]_i_2_n_0 ;
  wire \cmdmode[2]_i_2_n_0 ;
  wire cmdre;
  wire [1:1]lastscanline;
  wire [0:0]lastscanline0;
  wire [31:0]m_axi_araddr;
  wire [0:0]m_axi_arlen;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire [63:0]m_axi_rdata;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire m_axi_rvalid;
  wire [1:0]p_0_out;
  wire [11:0]p_1_out;
  wire [5:3]p_2_in;
  wire [11:0]palettedin;
  wire paletteentries_reg_0_63_0_2_i_1_n_0;
  wire paletteentries_reg_0_63_0_2_n_0;
  wire paletteentries_reg_0_63_0_2_n_1;
  wire paletteentries_reg_0_63_0_2_n_2;
  wire paletteentries_reg_0_63_3_5_n_0;
  wire paletteentries_reg_0_63_3_5_n_1;
  wire paletteentries_reg_0_63_3_5_n_2;
  wire paletteentries_reg_0_63_6_8_n_0;
  wire paletteentries_reg_0_63_6_8_n_1;
  wire paletteentries_reg_0_63_6_8_n_2;
  wire paletteentries_reg_0_63_9_11_n_0;
  wire paletteentries_reg_0_63_9_11_n_1;
  wire paletteentries_reg_0_63_9_11_n_2;
  wire paletteentries_reg_128_191_0_2_i_1_n_0;
  wire paletteentries_reg_128_191_0_2_n_0;
  wire paletteentries_reg_128_191_0_2_n_1;
  wire paletteentries_reg_128_191_0_2_n_2;
  wire paletteentries_reg_128_191_3_5_n_0;
  wire paletteentries_reg_128_191_3_5_n_1;
  wire paletteentries_reg_128_191_3_5_n_2;
  wire paletteentries_reg_128_191_6_8_n_0;
  wire paletteentries_reg_128_191_6_8_n_1;
  wire paletteentries_reg_128_191_6_8_n_2;
  wire paletteentries_reg_128_191_9_11_n_0;
  wire paletteentries_reg_128_191_9_11_n_1;
  wire paletteentries_reg_128_191_9_11_n_2;
  wire paletteentries_reg_192_255_0_2_i_1_n_0;
  wire paletteentries_reg_192_255_0_2_n_0;
  wire paletteentries_reg_192_255_0_2_n_1;
  wire paletteentries_reg_192_255_0_2_n_2;
  wire paletteentries_reg_192_255_3_5_n_0;
  wire paletteentries_reg_192_255_3_5_n_1;
  wire paletteentries_reg_192_255_3_5_n_2;
  wire paletteentries_reg_192_255_6_8_n_0;
  wire paletteentries_reg_192_255_6_8_n_1;
  wire paletteentries_reg_192_255_6_8_n_2;
  wire paletteentries_reg_192_255_9_11_n_0;
  wire paletteentries_reg_192_255_9_11_n_1;
  wire paletteentries_reg_192_255_9_11_n_2;
  wire paletteentries_reg_64_127_0_2_i_1_n_0;
  wire paletteentries_reg_64_127_0_2_n_0;
  wire paletteentries_reg_64_127_0_2_n_1;
  wire paletteentries_reg_64_127_0_2_n_2;
  wire paletteentries_reg_64_127_3_5_n_0;
  wire paletteentries_reg_64_127_3_5_n_1;
  wire paletteentries_reg_64_127_3_5_n_2;
  wire paletteentries_reg_64_127_6_8_n_0;
  wire paletteentries_reg_64_127_6_8_n_1;
  wire paletteentries_reg_64_127_6_8_n_2;
  wire paletteentries_reg_64_127_9_11_n_0;
  wire paletteentries_reg_64_127_9_11_n_1;
  wire paletteentries_reg_64_127_9_11_n_2;
  wire [5:0]paletteindex;
  wire [11:0]paletteout;
  wire [11:0]paletteout0;
  wire [7:0]palettewa;
  wire palettewe;
  wire pixelClock;
  wire pixelClockx5;
  wire [7:0]rdata_cnt;
  wire \rdata_cnt[0]_i_1_n_0 ;
  wire \rdata_cnt[1]_i_1_n_0 ;
  wire \rdata_cnt[2]_i_1_n_0 ;
  wire \rdata_cnt[3]_i_1_n_0 ;
  wire \rdata_cnt[4]_i_1_n_0 ;
  wire \rdata_cnt[5]_i_1_n_0 ;
  wire \rdata_cnt[5]_i_2_n_0 ;
  wire \rdata_cnt[6]_i_1_n_0 ;
  wire \rdata_cnt[7]_i_1_n_0 ;
  wire \rdata_cnt[7]_i_2_n_0 ;
  wire \rdata_cnt[7]_i_3_n_0 ;
  wire [11:0]rgbcolor;
  (* async_reg = "true" *) wire rst25n;
  wire \s_axi_araddr[31]_i_1_n_0 ;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire s_axi_arvalid_i_1_n_0;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [10:0]s_axi_rdata;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire s_axi_rready_i_1_n_0;
  wire s_axi_rready_i_2_n_0;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire [31:0]scanaddr;
  (* async_reg = "true" *) wire [9:0]scanline;
  wire scanlinecache_reg_0_63_0_2_i_1_n_0;
  wire scanlinecache_reg_0_63_0_2_n_0;
  wire scanlinecache_reg_0_63_0_2_n_1;
  wire scanlinecache_reg_0_63_0_2_n_2;
  wire scanlinecache_reg_0_63_12_14_n_0;
  wire scanlinecache_reg_0_63_12_14_n_1;
  wire scanlinecache_reg_0_63_12_14_n_2;
  wire scanlinecache_reg_0_63_15_17_n_0;
  wire scanlinecache_reg_0_63_15_17_n_1;
  wire scanlinecache_reg_0_63_15_17_n_2;
  wire scanlinecache_reg_0_63_18_20_n_0;
  wire scanlinecache_reg_0_63_18_20_n_1;
  wire scanlinecache_reg_0_63_18_20_n_2;
  wire scanlinecache_reg_0_63_21_23_n_0;
  wire scanlinecache_reg_0_63_21_23_n_1;
  wire scanlinecache_reg_0_63_21_23_n_2;
  wire scanlinecache_reg_0_63_24_26_n_0;
  wire scanlinecache_reg_0_63_24_26_n_1;
  wire scanlinecache_reg_0_63_24_26_n_2;
  wire scanlinecache_reg_0_63_27_29_n_0;
  wire scanlinecache_reg_0_63_27_29_n_1;
  wire scanlinecache_reg_0_63_27_29_n_2;
  wire scanlinecache_reg_0_63_30_32_n_0;
  wire scanlinecache_reg_0_63_30_32_n_1;
  wire scanlinecache_reg_0_63_30_32_n_2;
  wire scanlinecache_reg_0_63_33_35_n_0;
  wire scanlinecache_reg_0_63_33_35_n_1;
  wire scanlinecache_reg_0_63_33_35_n_2;
  wire scanlinecache_reg_0_63_36_38_n_0;
  wire scanlinecache_reg_0_63_36_38_n_1;
  wire scanlinecache_reg_0_63_36_38_n_2;
  wire scanlinecache_reg_0_63_39_41_n_0;
  wire scanlinecache_reg_0_63_39_41_n_1;
  wire scanlinecache_reg_0_63_39_41_n_2;
  wire scanlinecache_reg_0_63_3_5_n_0;
  wire scanlinecache_reg_0_63_3_5_n_1;
  wire scanlinecache_reg_0_63_3_5_n_2;
  wire scanlinecache_reg_0_63_42_44_n_0;
  wire scanlinecache_reg_0_63_42_44_n_1;
  wire scanlinecache_reg_0_63_42_44_n_2;
  wire scanlinecache_reg_0_63_45_47_n_0;
  wire scanlinecache_reg_0_63_45_47_n_1;
  wire scanlinecache_reg_0_63_45_47_n_2;
  wire scanlinecache_reg_0_63_48_50_n_0;
  wire scanlinecache_reg_0_63_48_50_n_1;
  wire scanlinecache_reg_0_63_48_50_n_2;
  wire scanlinecache_reg_0_63_51_53_n_0;
  wire scanlinecache_reg_0_63_51_53_n_1;
  wire scanlinecache_reg_0_63_51_53_n_2;
  wire scanlinecache_reg_0_63_54_56_n_0;
  wire scanlinecache_reg_0_63_54_56_n_1;
  wire scanlinecache_reg_0_63_54_56_n_2;
  wire scanlinecache_reg_0_63_57_59_n_0;
  wire scanlinecache_reg_0_63_57_59_n_1;
  wire scanlinecache_reg_0_63_57_59_n_2;
  wire scanlinecache_reg_0_63_60_62_n_0;
  wire scanlinecache_reg_0_63_60_62_n_1;
  wire scanlinecache_reg_0_63_60_62_n_2;
  wire scanlinecache_reg_0_63_63_63_n_0;
  wire scanlinecache_reg_0_63_6_8_n_0;
  wire scanlinecache_reg_0_63_6_8_n_1;
  wire scanlinecache_reg_0_63_6_8_n_2;
  wire scanlinecache_reg_0_63_9_11_n_0;
  wire scanlinecache_reg_0_63_9_11_n_1;
  wire scanlinecache_reg_0_63_9_11_n_2;
  wire scanlinecache_reg_128_191_0_2_i_1_n_0;
  wire scanlinecache_reg_128_191_0_2_n_0;
  wire scanlinecache_reg_128_191_0_2_n_1;
  wire scanlinecache_reg_128_191_0_2_n_2;
  wire scanlinecache_reg_128_191_12_14_n_0;
  wire scanlinecache_reg_128_191_12_14_n_1;
  wire scanlinecache_reg_128_191_12_14_n_2;
  wire scanlinecache_reg_128_191_15_17_n_0;
  wire scanlinecache_reg_128_191_15_17_n_1;
  wire scanlinecache_reg_128_191_15_17_n_2;
  wire scanlinecache_reg_128_191_18_20_n_0;
  wire scanlinecache_reg_128_191_18_20_n_1;
  wire scanlinecache_reg_128_191_18_20_n_2;
  wire scanlinecache_reg_128_191_21_23_n_0;
  wire scanlinecache_reg_128_191_21_23_n_1;
  wire scanlinecache_reg_128_191_21_23_n_2;
  wire scanlinecache_reg_128_191_24_26_n_0;
  wire scanlinecache_reg_128_191_24_26_n_1;
  wire scanlinecache_reg_128_191_24_26_n_2;
  wire scanlinecache_reg_128_191_27_29_n_0;
  wire scanlinecache_reg_128_191_27_29_n_1;
  wire scanlinecache_reg_128_191_27_29_n_2;
  wire scanlinecache_reg_128_191_30_32_n_0;
  wire scanlinecache_reg_128_191_30_32_n_1;
  wire scanlinecache_reg_128_191_30_32_n_2;
  wire scanlinecache_reg_128_191_33_35_n_0;
  wire scanlinecache_reg_128_191_33_35_n_1;
  wire scanlinecache_reg_128_191_33_35_n_2;
  wire scanlinecache_reg_128_191_36_38_n_0;
  wire scanlinecache_reg_128_191_36_38_n_1;
  wire scanlinecache_reg_128_191_36_38_n_2;
  wire scanlinecache_reg_128_191_39_41_n_0;
  wire scanlinecache_reg_128_191_39_41_n_1;
  wire scanlinecache_reg_128_191_39_41_n_2;
  wire scanlinecache_reg_128_191_3_5_n_0;
  wire scanlinecache_reg_128_191_3_5_n_1;
  wire scanlinecache_reg_128_191_3_5_n_2;
  wire scanlinecache_reg_128_191_42_44_n_0;
  wire scanlinecache_reg_128_191_42_44_n_1;
  wire scanlinecache_reg_128_191_42_44_n_2;
  wire scanlinecache_reg_128_191_45_47_n_0;
  wire scanlinecache_reg_128_191_45_47_n_1;
  wire scanlinecache_reg_128_191_45_47_n_2;
  wire scanlinecache_reg_128_191_48_50_n_0;
  wire scanlinecache_reg_128_191_48_50_n_1;
  wire scanlinecache_reg_128_191_48_50_n_2;
  wire scanlinecache_reg_128_191_51_53_n_0;
  wire scanlinecache_reg_128_191_51_53_n_1;
  wire scanlinecache_reg_128_191_51_53_n_2;
  wire scanlinecache_reg_128_191_54_56_n_0;
  wire scanlinecache_reg_128_191_54_56_n_1;
  wire scanlinecache_reg_128_191_54_56_n_2;
  wire scanlinecache_reg_128_191_57_59_n_0;
  wire scanlinecache_reg_128_191_57_59_n_1;
  wire scanlinecache_reg_128_191_57_59_n_2;
  wire scanlinecache_reg_128_191_60_62_n_0;
  wire scanlinecache_reg_128_191_60_62_n_1;
  wire scanlinecache_reg_128_191_60_62_n_2;
  wire scanlinecache_reg_128_191_63_63_n_0;
  wire scanlinecache_reg_128_191_6_8_n_0;
  wire scanlinecache_reg_128_191_6_8_n_1;
  wire scanlinecache_reg_128_191_6_8_n_2;
  wire scanlinecache_reg_128_191_9_11_n_0;
  wire scanlinecache_reg_128_191_9_11_n_1;
  wire scanlinecache_reg_128_191_9_11_n_2;
  wire scanlinecache_reg_192_255_0_2_i_1_n_0;
  wire scanlinecache_reg_192_255_0_2_n_0;
  wire scanlinecache_reg_192_255_0_2_n_1;
  wire scanlinecache_reg_192_255_0_2_n_2;
  wire scanlinecache_reg_192_255_12_14_n_0;
  wire scanlinecache_reg_192_255_12_14_n_1;
  wire scanlinecache_reg_192_255_12_14_n_2;
  wire scanlinecache_reg_192_255_15_17_n_0;
  wire scanlinecache_reg_192_255_15_17_n_1;
  wire scanlinecache_reg_192_255_15_17_n_2;
  wire scanlinecache_reg_192_255_18_20_n_0;
  wire scanlinecache_reg_192_255_18_20_n_1;
  wire scanlinecache_reg_192_255_18_20_n_2;
  wire scanlinecache_reg_192_255_21_23_n_0;
  wire scanlinecache_reg_192_255_21_23_n_1;
  wire scanlinecache_reg_192_255_21_23_n_2;
  wire scanlinecache_reg_192_255_24_26_n_0;
  wire scanlinecache_reg_192_255_24_26_n_1;
  wire scanlinecache_reg_192_255_24_26_n_2;
  wire scanlinecache_reg_192_255_27_29_n_0;
  wire scanlinecache_reg_192_255_27_29_n_1;
  wire scanlinecache_reg_192_255_27_29_n_2;
  wire scanlinecache_reg_192_255_30_32_n_0;
  wire scanlinecache_reg_192_255_30_32_n_1;
  wire scanlinecache_reg_192_255_30_32_n_2;
  wire scanlinecache_reg_192_255_33_35_n_0;
  wire scanlinecache_reg_192_255_33_35_n_1;
  wire scanlinecache_reg_192_255_33_35_n_2;
  wire scanlinecache_reg_192_255_36_38_n_0;
  wire scanlinecache_reg_192_255_36_38_n_1;
  wire scanlinecache_reg_192_255_36_38_n_2;
  wire scanlinecache_reg_192_255_39_41_n_0;
  wire scanlinecache_reg_192_255_39_41_n_1;
  wire scanlinecache_reg_192_255_39_41_n_2;
  wire scanlinecache_reg_192_255_3_5_n_0;
  wire scanlinecache_reg_192_255_3_5_n_1;
  wire scanlinecache_reg_192_255_3_5_n_2;
  wire scanlinecache_reg_192_255_42_44_n_0;
  wire scanlinecache_reg_192_255_42_44_n_1;
  wire scanlinecache_reg_192_255_42_44_n_2;
  wire scanlinecache_reg_192_255_45_47_n_0;
  wire scanlinecache_reg_192_255_45_47_n_1;
  wire scanlinecache_reg_192_255_45_47_n_2;
  wire scanlinecache_reg_192_255_48_50_n_0;
  wire scanlinecache_reg_192_255_48_50_n_1;
  wire scanlinecache_reg_192_255_48_50_n_2;
  wire scanlinecache_reg_192_255_51_53_n_0;
  wire scanlinecache_reg_192_255_51_53_n_1;
  wire scanlinecache_reg_192_255_51_53_n_2;
  wire scanlinecache_reg_192_255_54_56_n_0;
  wire scanlinecache_reg_192_255_54_56_n_1;
  wire scanlinecache_reg_192_255_54_56_n_2;
  wire scanlinecache_reg_192_255_57_59_n_0;
  wire scanlinecache_reg_192_255_57_59_n_1;
  wire scanlinecache_reg_192_255_57_59_n_2;
  wire scanlinecache_reg_192_255_60_62_n_0;
  wire scanlinecache_reg_192_255_60_62_n_1;
  wire scanlinecache_reg_192_255_60_62_n_2;
  wire scanlinecache_reg_192_255_63_63_n_0;
  wire scanlinecache_reg_192_255_6_8_n_0;
  wire scanlinecache_reg_192_255_6_8_n_1;
  wire scanlinecache_reg_192_255_6_8_n_2;
  wire scanlinecache_reg_192_255_9_11_n_0;
  wire scanlinecache_reg_192_255_9_11_n_1;
  wire scanlinecache_reg_192_255_9_11_n_2;
  wire scanlinecache_reg_64_127_0_2_i_1_n_0;
  wire scanlinecache_reg_64_127_0_2_n_0;
  wire scanlinecache_reg_64_127_0_2_n_1;
  wire scanlinecache_reg_64_127_0_2_n_2;
  wire scanlinecache_reg_64_127_12_14_n_0;
  wire scanlinecache_reg_64_127_12_14_n_1;
  wire scanlinecache_reg_64_127_12_14_n_2;
  wire scanlinecache_reg_64_127_15_17_n_0;
  wire scanlinecache_reg_64_127_15_17_n_1;
  wire scanlinecache_reg_64_127_15_17_n_2;
  wire scanlinecache_reg_64_127_18_20_n_0;
  wire scanlinecache_reg_64_127_18_20_n_1;
  wire scanlinecache_reg_64_127_18_20_n_2;
  wire scanlinecache_reg_64_127_21_23_n_0;
  wire scanlinecache_reg_64_127_21_23_n_1;
  wire scanlinecache_reg_64_127_21_23_n_2;
  wire scanlinecache_reg_64_127_24_26_n_0;
  wire scanlinecache_reg_64_127_24_26_n_1;
  wire scanlinecache_reg_64_127_24_26_n_2;
  wire scanlinecache_reg_64_127_27_29_n_0;
  wire scanlinecache_reg_64_127_27_29_n_1;
  wire scanlinecache_reg_64_127_27_29_n_2;
  wire scanlinecache_reg_64_127_30_32_n_0;
  wire scanlinecache_reg_64_127_30_32_n_1;
  wire scanlinecache_reg_64_127_30_32_n_2;
  wire scanlinecache_reg_64_127_33_35_n_0;
  wire scanlinecache_reg_64_127_33_35_n_1;
  wire scanlinecache_reg_64_127_33_35_n_2;
  wire scanlinecache_reg_64_127_36_38_n_0;
  wire scanlinecache_reg_64_127_36_38_n_1;
  wire scanlinecache_reg_64_127_36_38_n_2;
  wire scanlinecache_reg_64_127_39_41_n_0;
  wire scanlinecache_reg_64_127_39_41_n_1;
  wire scanlinecache_reg_64_127_39_41_n_2;
  wire scanlinecache_reg_64_127_3_5_n_0;
  wire scanlinecache_reg_64_127_3_5_n_1;
  wire scanlinecache_reg_64_127_3_5_n_2;
  wire scanlinecache_reg_64_127_42_44_n_0;
  wire scanlinecache_reg_64_127_42_44_n_1;
  wire scanlinecache_reg_64_127_42_44_n_2;
  wire scanlinecache_reg_64_127_45_47_n_0;
  wire scanlinecache_reg_64_127_45_47_n_1;
  wire scanlinecache_reg_64_127_45_47_n_2;
  wire scanlinecache_reg_64_127_48_50_n_0;
  wire scanlinecache_reg_64_127_48_50_n_1;
  wire scanlinecache_reg_64_127_48_50_n_2;
  wire scanlinecache_reg_64_127_51_53_n_0;
  wire scanlinecache_reg_64_127_51_53_n_1;
  wire scanlinecache_reg_64_127_51_53_n_2;
  wire scanlinecache_reg_64_127_54_56_n_0;
  wire scanlinecache_reg_64_127_54_56_n_1;
  wire scanlinecache_reg_64_127_54_56_n_2;
  wire scanlinecache_reg_64_127_57_59_n_0;
  wire scanlinecache_reg_64_127_57_59_n_1;
  wire scanlinecache_reg_64_127_57_59_n_2;
  wire scanlinecache_reg_64_127_60_62_n_0;
  wire scanlinecache_reg_64_127_60_62_n_1;
  wire scanlinecache_reg_64_127_60_62_n_2;
  wire scanlinecache_reg_64_127_63_63_n_0;
  wire scanlinecache_reg_64_127_6_8_n_0;
  wire scanlinecache_reg_64_127_6_8_n_1;
  wire scanlinecache_reg_64_127_6_8_n_2;
  wire scanlinecache_reg_64_127_9_11_n_0;
  wire scanlinecache_reg_64_127_9_11_n_1;
  wire scanlinecache_reg_64_127_9_11_n_2;
  wire [63:0]scanlinedin;
  wire \scanlinedin[63]_i_1_n_0 ;
  wire scanlinedin__0;
  wire [59:0]scanlinedout;
  (* async_reg = "true" *) wire [9:0]scanlinepre;
  wire [5:0]scanlinera;
  wire [7:0]scanlinewa;
  wire scanlinewe;
  wire [31:0]scanoffset;
  wire scanoffset1;
  wire \scanoffset[0]_i_1_n_0 ;
  wire \scanoffset[10]_i_1_n_0 ;
  wire \scanoffset[11]_i_1_n_0 ;
  wire \scanoffset[12]_i_1_n_0 ;
  wire \scanoffset[13]_i_1_n_0 ;
  wire \scanoffset[14]_i_1_n_0 ;
  wire \scanoffset[15]_i_1_n_0 ;
  wire \scanoffset[16]_i_1_n_0 ;
  wire \scanoffset[17]_i_1_n_0 ;
  wire \scanoffset[18]_i_1_n_0 ;
  wire \scanoffset[19]_i_1_n_0 ;
  wire \scanoffset[1]_i_1_n_0 ;
  wire \scanoffset[20]_i_1_n_0 ;
  wire \scanoffset[21]_i_1_n_0 ;
  wire \scanoffset[22]_i_1_n_0 ;
  wire \scanoffset[23]_i_1_n_0 ;
  wire \scanoffset[24]_i_1_n_0 ;
  wire \scanoffset[25]_i_1_n_0 ;
  wire \scanoffset[26]_i_1_n_0 ;
  wire \scanoffset[27]_i_1_n_0 ;
  wire \scanoffset[28]_i_1_n_0 ;
  wire \scanoffset[29]_i_1_n_0 ;
  wire \scanoffset[2]_i_1_n_0 ;
  wire \scanoffset[30]_i_1_n_0 ;
  wire \scanoffset[31]_i_1_n_0 ;
  wire \scanoffset[31]_i_2_n_0 ;
  wire \scanoffset[31]_i_5_n_0 ;
  wire \scanoffset[31]_i_6_n_0 ;
  wire \scanoffset[31]_i_7_n_0 ;
  wire \scanoffset[3]_i_1_n_0 ;
  wire \scanoffset[4]_i_1_n_0 ;
  wire \scanoffset[5]_i_1_n_0 ;
  wire \scanoffset[6]_i_1_n_0 ;
  wire \scanoffset[7]_i_1_n_0 ;
  wire \scanoffset[8]_i_1_n_0 ;
  wire \scanoffset[9]_i_1_n_0 ;
  wire \scanoffset[9]_i_3_n_0 ;
  wire \scanoffset_reg[13]_i_2_n_0 ;
  wire \scanoffset_reg[13]_i_2_n_1 ;
  wire \scanoffset_reg[13]_i_2_n_2 ;
  wire \scanoffset_reg[13]_i_2_n_3 ;
  wire \scanoffset_reg[13]_i_2_n_4 ;
  wire \scanoffset_reg[13]_i_2_n_5 ;
  wire \scanoffset_reg[13]_i_2_n_6 ;
  wire \scanoffset_reg[13]_i_2_n_7 ;
  wire \scanoffset_reg[17]_i_2_n_0 ;
  wire \scanoffset_reg[17]_i_2_n_1 ;
  wire \scanoffset_reg[17]_i_2_n_2 ;
  wire \scanoffset_reg[17]_i_2_n_3 ;
  wire \scanoffset_reg[17]_i_2_n_4 ;
  wire \scanoffset_reg[17]_i_2_n_5 ;
  wire \scanoffset_reg[17]_i_2_n_6 ;
  wire \scanoffset_reg[17]_i_2_n_7 ;
  wire \scanoffset_reg[21]_i_2_n_0 ;
  wire \scanoffset_reg[21]_i_2_n_1 ;
  wire \scanoffset_reg[21]_i_2_n_2 ;
  wire \scanoffset_reg[21]_i_2_n_3 ;
  wire \scanoffset_reg[21]_i_2_n_4 ;
  wire \scanoffset_reg[21]_i_2_n_5 ;
  wire \scanoffset_reg[21]_i_2_n_6 ;
  wire \scanoffset_reg[21]_i_2_n_7 ;
  wire \scanoffset_reg[25]_i_2_n_0 ;
  wire \scanoffset_reg[25]_i_2_n_1 ;
  wire \scanoffset_reg[25]_i_2_n_2 ;
  wire \scanoffset_reg[25]_i_2_n_3 ;
  wire \scanoffset_reg[25]_i_2_n_4 ;
  wire \scanoffset_reg[25]_i_2_n_5 ;
  wire \scanoffset_reg[25]_i_2_n_6 ;
  wire \scanoffset_reg[25]_i_2_n_7 ;
  wire \scanoffset_reg[29]_i_2_n_0 ;
  wire \scanoffset_reg[29]_i_2_n_1 ;
  wire \scanoffset_reg[29]_i_2_n_2 ;
  wire \scanoffset_reg[29]_i_2_n_3 ;
  wire \scanoffset_reg[29]_i_2_n_4 ;
  wire \scanoffset_reg[29]_i_2_n_5 ;
  wire \scanoffset_reg[29]_i_2_n_6 ;
  wire \scanoffset_reg[29]_i_2_n_7 ;
  wire \scanoffset_reg[31]_i_3_n_1 ;
  wire \scanoffset_reg[31]_i_3_n_2 ;
  wire \scanoffset_reg[31]_i_3_n_3 ;
  wire \scanoffset_reg[31]_i_4_n_3 ;
  wire \scanoffset_reg[31]_i_4_n_6 ;
  wire \scanoffset_reg[31]_i_4_n_7 ;
  wire \scanoffset_reg[9]_i_2_n_0 ;
  wire \scanoffset_reg[9]_i_2_n_1 ;
  wire \scanoffset_reg[9]_i_2_n_2 ;
  wire \scanoffset_reg[9]_i_2_n_3 ;
  wire \scanoffset_reg[9]_i_2_n_4 ;
  wire \scanoffset_reg[9]_i_2_n_5 ;
  wire \scanoffset_reg[9]_i_2_n_6 ;
  wire \scanoffset_reg[9]_i_2_n_7 ;
  (* async_reg = "true" *) wire [9:0]scanpixel;
  (* async_reg = "true" *) wire [9:0]scanpixelpre;
  wire \scanstate[0]_i_1_n_0 ;
  wire \scanstate[0]_i_2_n_0 ;
  wire \scanstate[0]_i_3_n_0 ;
  wire \scanstate[0]_i_4_n_0 ;
  wire \scanstate[0]_i_5_n_0 ;
  wire \scanstate[0]_i_6_n_0 ;
  wire \scanstate[0]_i_7_n_0 ;
  wire \scanstate[1]_i_1_n_0 ;
  wire \scanstate[1]_i_2_n_0 ;
  wire \scanstate[1]_i_3_n_0 ;
  wire \scanstate[2]_i_1_n_0 ;
  wire \scanstate_reg_n_0_[0] ;
  wire \scanstate_reg_n_0_[1] ;
  wire \scanstate_reg_n_0_[2] ;
  wire scanwidth;
  wire [2:0]tmds;
  wire tmds_clock;
  wire [9:0]video_x;
  wire [9:0]video_y;
  wire [1:0]vpucmd;
  wire [7:2]vpucmd__0;
  wire vpucommandinterface_n_32;
  wire vpucommandinterface_n_39;
  wire vpucommandinterface_n_40;
  wire vpucommandinterface_n_41;
  wire vpucommandinterface_n_42;
  wire vpucommandinterface_n_43;
  wire vpucommandinterface_n_44;
  wire vpucommandinterface_n_45;
  wire vpucommandinterface_n_46;
  wire [31:0]vpufifodout;
  wire NLW_paletteentries_reg_0_63_0_2_DOD_UNCONNECTED;
  wire NLW_paletteentries_reg_0_63_3_5_DOD_UNCONNECTED;
  wire NLW_paletteentries_reg_0_63_6_8_DOD_UNCONNECTED;
  wire NLW_paletteentries_reg_0_63_9_11_DOD_UNCONNECTED;
  wire NLW_paletteentries_reg_128_191_0_2_DOD_UNCONNECTED;
  wire NLW_paletteentries_reg_128_191_3_5_DOD_UNCONNECTED;
  wire NLW_paletteentries_reg_128_191_6_8_DOD_UNCONNECTED;
  wire NLW_paletteentries_reg_128_191_9_11_DOD_UNCONNECTED;
  wire NLW_paletteentries_reg_192_255_0_2_DOD_UNCONNECTED;
  wire NLW_paletteentries_reg_192_255_3_5_DOD_UNCONNECTED;
  wire NLW_paletteentries_reg_192_255_6_8_DOD_UNCONNECTED;
  wire NLW_paletteentries_reg_192_255_9_11_DOD_UNCONNECTED;
  wire NLW_paletteentries_reg_64_127_0_2_DOD_UNCONNECTED;
  wire NLW_paletteentries_reg_64_127_3_5_DOD_UNCONNECTED;
  wire NLW_paletteentries_reg_64_127_6_8_DOD_UNCONNECTED;
  wire NLW_paletteentries_reg_64_127_9_11_DOD_UNCONNECTED;
  wire NLW_scanlinecache_reg_0_63_0_2_DOD_UNCONNECTED;
  wire NLW_scanlinecache_reg_0_63_12_14_DOD_UNCONNECTED;
  wire NLW_scanlinecache_reg_0_63_15_17_DOD_UNCONNECTED;
  wire NLW_scanlinecache_reg_0_63_18_20_DOD_UNCONNECTED;
  wire NLW_scanlinecache_reg_0_63_21_23_DOD_UNCONNECTED;
  wire NLW_scanlinecache_reg_0_63_24_26_DOD_UNCONNECTED;
  wire NLW_scanlinecache_reg_0_63_27_29_DOD_UNCONNECTED;
  wire NLW_scanlinecache_reg_0_63_30_32_DOD_UNCONNECTED;
  wire NLW_scanlinecache_reg_0_63_33_35_DOD_UNCONNECTED;
  wire NLW_scanlinecache_reg_0_63_36_38_DOD_UNCONNECTED;
  wire NLW_scanlinecache_reg_0_63_39_41_DOD_UNCONNECTED;
  wire NLW_scanlinecache_reg_0_63_3_5_DOD_UNCONNECTED;
  wire NLW_scanlinecache_reg_0_63_42_44_DOD_UNCONNECTED;
  wire NLW_scanlinecache_reg_0_63_45_47_DOD_UNCONNECTED;
  wire NLW_scanlinecache_reg_0_63_48_50_DOD_UNCONNECTED;
  wire NLW_scanlinecache_reg_0_63_51_53_DOD_UNCONNECTED;
  wire NLW_scanlinecache_reg_0_63_54_56_DOD_UNCONNECTED;
  wire NLW_scanlinecache_reg_0_63_57_59_DOD_UNCONNECTED;
  wire NLW_scanlinecache_reg_0_63_60_62_DOD_UNCONNECTED;
  wire NLW_scanlinecache_reg_0_63_63_63_SPO_UNCONNECTED;
  wire NLW_scanlinecache_reg_0_63_6_8_DOD_UNCONNECTED;
  wire NLW_scanlinecache_reg_0_63_9_11_DOD_UNCONNECTED;
  wire NLW_scanlinecache_reg_128_191_0_2_DOD_UNCONNECTED;
  wire NLW_scanlinecache_reg_128_191_12_14_DOD_UNCONNECTED;
  wire NLW_scanlinecache_reg_128_191_15_17_DOD_UNCONNECTED;
  wire NLW_scanlinecache_reg_128_191_18_20_DOD_UNCONNECTED;
  wire NLW_scanlinecache_reg_128_191_21_23_DOD_UNCONNECTED;
  wire NLW_scanlinecache_reg_128_191_24_26_DOD_UNCONNECTED;
  wire NLW_scanlinecache_reg_128_191_27_29_DOD_UNCONNECTED;
  wire NLW_scanlinecache_reg_128_191_30_32_DOD_UNCONNECTED;
  wire NLW_scanlinecache_reg_128_191_33_35_DOD_UNCONNECTED;
  wire NLW_scanlinecache_reg_128_191_36_38_DOD_UNCONNECTED;
  wire NLW_scanlinecache_reg_128_191_39_41_DOD_UNCONNECTED;
  wire NLW_scanlinecache_reg_128_191_3_5_DOD_UNCONNECTED;
  wire NLW_scanlinecache_reg_128_191_42_44_DOD_UNCONNECTED;
  wire NLW_scanlinecache_reg_128_191_45_47_DOD_UNCONNECTED;
  wire NLW_scanlinecache_reg_128_191_48_50_DOD_UNCONNECTED;
  wire NLW_scanlinecache_reg_128_191_51_53_DOD_UNCONNECTED;
  wire NLW_scanlinecache_reg_128_191_54_56_DOD_UNCONNECTED;
  wire NLW_scanlinecache_reg_128_191_57_59_DOD_UNCONNECTED;
  wire NLW_scanlinecache_reg_128_191_60_62_DOD_UNCONNECTED;
  wire NLW_scanlinecache_reg_128_191_63_63_SPO_UNCONNECTED;
  wire NLW_scanlinecache_reg_128_191_6_8_DOD_UNCONNECTED;
  wire NLW_scanlinecache_reg_128_191_9_11_DOD_UNCONNECTED;
  wire NLW_scanlinecache_reg_192_255_0_2_DOD_UNCONNECTED;
  wire NLW_scanlinecache_reg_192_255_12_14_DOD_UNCONNECTED;
  wire NLW_scanlinecache_reg_192_255_15_17_DOD_UNCONNECTED;
  wire NLW_scanlinecache_reg_192_255_18_20_DOD_UNCONNECTED;
  wire NLW_scanlinecache_reg_192_255_21_23_DOD_UNCONNECTED;
  wire NLW_scanlinecache_reg_192_255_24_26_DOD_UNCONNECTED;
  wire NLW_scanlinecache_reg_192_255_27_29_DOD_UNCONNECTED;
  wire NLW_scanlinecache_reg_192_255_30_32_DOD_UNCONNECTED;
  wire NLW_scanlinecache_reg_192_255_33_35_DOD_UNCONNECTED;
  wire NLW_scanlinecache_reg_192_255_36_38_DOD_UNCONNECTED;
  wire NLW_scanlinecache_reg_192_255_39_41_DOD_UNCONNECTED;
  wire NLW_scanlinecache_reg_192_255_3_5_DOD_UNCONNECTED;
  wire NLW_scanlinecache_reg_192_255_42_44_DOD_UNCONNECTED;
  wire NLW_scanlinecache_reg_192_255_45_47_DOD_UNCONNECTED;
  wire NLW_scanlinecache_reg_192_255_48_50_DOD_UNCONNECTED;
  wire NLW_scanlinecache_reg_192_255_51_53_DOD_UNCONNECTED;
  wire NLW_scanlinecache_reg_192_255_54_56_DOD_UNCONNECTED;
  wire NLW_scanlinecache_reg_192_255_57_59_DOD_UNCONNECTED;
  wire NLW_scanlinecache_reg_192_255_60_62_DOD_UNCONNECTED;
  wire NLW_scanlinecache_reg_192_255_63_63_SPO_UNCONNECTED;
  wire NLW_scanlinecache_reg_192_255_6_8_DOD_UNCONNECTED;
  wire NLW_scanlinecache_reg_192_255_9_11_DOD_UNCONNECTED;
  wire NLW_scanlinecache_reg_64_127_0_2_DOD_UNCONNECTED;
  wire NLW_scanlinecache_reg_64_127_12_14_DOD_UNCONNECTED;
  wire NLW_scanlinecache_reg_64_127_15_17_DOD_UNCONNECTED;
  wire NLW_scanlinecache_reg_64_127_18_20_DOD_UNCONNECTED;
  wire NLW_scanlinecache_reg_64_127_21_23_DOD_UNCONNECTED;
  wire NLW_scanlinecache_reg_64_127_24_26_DOD_UNCONNECTED;
  wire NLW_scanlinecache_reg_64_127_27_29_DOD_UNCONNECTED;
  wire NLW_scanlinecache_reg_64_127_30_32_DOD_UNCONNECTED;
  wire NLW_scanlinecache_reg_64_127_33_35_DOD_UNCONNECTED;
  wire NLW_scanlinecache_reg_64_127_36_38_DOD_UNCONNECTED;
  wire NLW_scanlinecache_reg_64_127_39_41_DOD_UNCONNECTED;
  wire NLW_scanlinecache_reg_64_127_3_5_DOD_UNCONNECTED;
  wire NLW_scanlinecache_reg_64_127_42_44_DOD_UNCONNECTED;
  wire NLW_scanlinecache_reg_64_127_45_47_DOD_UNCONNECTED;
  wire NLW_scanlinecache_reg_64_127_48_50_DOD_UNCONNECTED;
  wire NLW_scanlinecache_reg_64_127_51_53_DOD_UNCONNECTED;
  wire NLW_scanlinecache_reg_64_127_54_56_DOD_UNCONNECTED;
  wire NLW_scanlinecache_reg_64_127_57_59_DOD_UNCONNECTED;
  wire NLW_scanlinecache_reg_64_127_60_62_DOD_UNCONNECTED;
  wire NLW_scanlinecache_reg_64_127_63_63_SPO_UNCONNECTED;
  wire NLW_scanlinecache_reg_64_127_6_8_DOD_UNCONNECTED;
  wire NLW_scanlinecache_reg_64_127_9_11_DOD_UNCONNECTED;
  wire [3:0]\NLW_scanoffset_reg[31]_i_3_O_UNCONNECTED ;
  wire [3:1]\NLW_scanoffset_reg[31]_i_4_CO_UNCONNECTED ;
  wire [3:2]\NLW_scanoffset_reg[31]_i_4_O_UNCONNECTED ;

  blockone_videomodule_0_0_hdmi HDMIInst
       (.ADDRA(paletteindex),
        .Q(paletteout),
        .SR(HDMIInst_n_96),
        .aclk({scanlinedout[59:48],scanlinedout[43:32],scanlinedout[27:16],scanlinedout[11:0]}),
        .audioSampleInputLR(audioSampleInputLR),
        .audiosampleclk(audiosampleclk),
        .blankt(blankt),
        .cx(video_x),
        .\cx_reg[0]_0 (HDMIInst_n_93),
        .\cx_reg[1]_0 (HDMIInst_n_94),
        .\cx_reg[1]_1 (HDMIInst_n_95),
        .\cx_reg[7]_0 (scanlinera),
        .\cx_reg[9]_0 (HDMIInst_n_92),
        .cy(video_y),
        .out(rst25n),
        .p_0_out(p_0_out),
        .paletteentries_reg_0_63_0_2_i_10_0(scanlinecache_reg_192_255_45_47_n_0),
        .paletteentries_reg_0_63_0_2_i_10_1(scanlinecache_reg_128_191_45_47_n_0),
        .paletteentries_reg_0_63_0_2_i_10_2(scanlinecache_reg_64_127_45_47_n_0),
        .paletteentries_reg_0_63_0_2_i_10_3(scanlinecache_reg_0_63_45_47_n_0),
        .paletteentries_reg_0_63_0_2_i_10_4(scanlinecache_reg_192_255_60_62_n_1),
        .paletteentries_reg_0_63_0_2_i_10_5(scanlinecache_reg_128_191_60_62_n_1),
        .paletteentries_reg_0_63_0_2_i_10_6(scanlinecache_reg_64_127_60_62_n_1),
        .paletteentries_reg_0_63_0_2_i_10_7(scanlinecache_reg_0_63_60_62_n_1),
        .paletteentries_reg_0_63_0_2_i_11_0(scanlinecache_reg_192_255_12_14_n_0),
        .paletteentries_reg_0_63_0_2_i_11_1(scanlinecache_reg_128_191_12_14_n_0),
        .paletteentries_reg_0_63_0_2_i_11_2(scanlinecache_reg_64_127_12_14_n_0),
        .paletteentries_reg_0_63_0_2_i_11_3(scanlinecache_reg_0_63_12_14_n_0),
        .paletteentries_reg_0_63_0_2_i_11_4(scanlinecache_reg_192_255_27_29_n_1),
        .paletteentries_reg_0_63_0_2_i_11_5(scanlinecache_reg_128_191_27_29_n_1),
        .paletteentries_reg_0_63_0_2_i_11_6(scanlinecache_reg_64_127_27_29_n_1),
        .paletteentries_reg_0_63_0_2_i_11_7(scanlinecache_reg_0_63_27_29_n_1),
        .paletteentries_reg_0_63_0_2_i_12_0(scanlinecache_reg_192_255_42_44_n_2),
        .paletteentries_reg_0_63_0_2_i_12_1(scanlinecache_reg_128_191_42_44_n_2),
        .paletteentries_reg_0_63_0_2_i_12_2(scanlinecache_reg_64_127_42_44_n_2),
        .paletteentries_reg_0_63_0_2_i_12_3(scanlinecache_reg_0_63_42_44_n_2),
        .paletteentries_reg_0_63_0_2_i_12_4(scanlinecache_reg_192_255_60_62_n_0),
        .paletteentries_reg_0_63_0_2_i_12_5(scanlinecache_reg_128_191_60_62_n_0),
        .paletteentries_reg_0_63_0_2_i_12_6(scanlinecache_reg_64_127_60_62_n_0),
        .paletteentries_reg_0_63_0_2_i_12_7(scanlinecache_reg_0_63_60_62_n_0),
        .paletteentries_reg_0_63_0_2_i_9_0(scanlinecache_reg_192_255_12_14_n_1),
        .paletteentries_reg_0_63_0_2_i_9_1(scanlinecache_reg_128_191_12_14_n_1),
        .paletteentries_reg_0_63_0_2_i_9_2(scanlinecache_reg_64_127_12_14_n_1),
        .paletteentries_reg_0_63_0_2_i_9_3(scanlinecache_reg_0_63_12_14_n_1),
        .paletteentries_reg_0_63_0_2_i_9_4(scanlinecache_reg_192_255_27_29_n_2),
        .paletteentries_reg_0_63_0_2_i_9_5(scanlinecache_reg_128_191_27_29_n_2),
        .paletteentries_reg_0_63_0_2_i_9_6(scanlinecache_reg_64_127_27_29_n_2),
        .paletteentries_reg_0_63_0_2_i_9_7(scanlinecache_reg_0_63_27_29_n_2),
        .paletteout0(paletteout0),
        .\paletteout[0]_i_3 (scanlinecache_reg_192_255_0_2_n_0),
        .\paletteout[0]_i_3_0 (scanlinecache_reg_128_191_0_2_n_0),
        .\paletteout[0]_i_3_1 (scanlinecache_reg_64_127_0_2_n_0),
        .\paletteout[0]_i_3_10 (scanlinecache_reg_0_63_30_32_n_2),
        .\paletteout[0]_i_3_11 (scanlinecache_reg_192_255_48_50_n_0),
        .\paletteout[0]_i_3_12 (scanlinecache_reg_128_191_48_50_n_0),
        .\paletteout[0]_i_3_13 (scanlinecache_reg_64_127_48_50_n_0),
        .\paletteout[0]_i_3_14 (scanlinecache_reg_0_63_48_50_n_0),
        .\paletteout[0]_i_3_2 (scanlinecache_reg_0_63_0_2_n_0),
        .\paletteout[0]_i_3_3 (scanlinecache_reg_192_255_15_17_n_1),
        .\paletteout[0]_i_3_4 (scanlinecache_reg_128_191_15_17_n_1),
        .\paletteout[0]_i_3_5 (scanlinecache_reg_64_127_15_17_n_1),
        .\paletteout[0]_i_3_6 (scanlinecache_reg_0_63_15_17_n_1),
        .\paletteout[0]_i_3_7 (scanlinecache_reg_192_255_30_32_n_2),
        .\paletteout[0]_i_3_8 (scanlinecache_reg_128_191_30_32_n_2),
        .\paletteout[0]_i_3_9 (scanlinecache_reg_64_127_30_32_n_2),
        .\paletteout[10]_i_3 (scanlinecache_reg_192_255_9_11_n_1),
        .\paletteout[10]_i_3_0 (scanlinecache_reg_128_191_9_11_n_1),
        .\paletteout[10]_i_3_1 (scanlinecache_reg_64_127_9_11_n_1),
        .\paletteout[10]_i_3_10 (scanlinecache_reg_0_63_42_44_n_0),
        .\paletteout[10]_i_3_11 (scanlinecache_reg_192_255_57_59_n_1),
        .\paletteout[10]_i_3_12 (scanlinecache_reg_128_191_57_59_n_1),
        .\paletteout[10]_i_3_13 (scanlinecache_reg_64_127_57_59_n_1),
        .\paletteout[10]_i_3_14 (scanlinecache_reg_0_63_57_59_n_1),
        .\paletteout[10]_i_3_2 (scanlinecache_reg_0_63_9_11_n_1),
        .\paletteout[10]_i_3_3 (scanlinecache_reg_192_255_24_26_n_2),
        .\paletteout[10]_i_3_4 (scanlinecache_reg_128_191_24_26_n_2),
        .\paletteout[10]_i_3_5 (scanlinecache_reg_64_127_24_26_n_2),
        .\paletteout[10]_i_3_6 (scanlinecache_reg_0_63_24_26_n_2),
        .\paletteout[10]_i_3_7 (scanlinecache_reg_192_255_42_44_n_0),
        .\paletteout[10]_i_3_8 (scanlinecache_reg_128_191_42_44_n_0),
        .\paletteout[10]_i_3_9 (scanlinecache_reg_64_127_42_44_n_0),
        .\paletteout[11]_i_14_0 (scanlinecache_reg_192_255_15_17_n_0),
        .\paletteout[11]_i_14_1 (scanlinecache_reg_128_191_15_17_n_0),
        .\paletteout[11]_i_14_2 (scanlinecache_reg_64_127_15_17_n_0),
        .\paletteout[11]_i_14_3 (scanlinecache_reg_0_63_15_17_n_0),
        .\paletteout[11]_i_14_4 (scanlinecache_reg_192_255_30_32_n_1),
        .\paletteout[11]_i_14_5 (scanlinecache_reg_128_191_30_32_n_1),
        .\paletteout[11]_i_14_6 (scanlinecache_reg_64_127_30_32_n_1),
        .\paletteout[11]_i_14_7 (scanlinecache_reg_0_63_30_32_n_1),
        .\paletteout[11]_i_15_0 (scanlinecache_reg_192_255_45_47_n_2),
        .\paletteout[11]_i_15_1 (scanlinecache_reg_128_191_45_47_n_2),
        .\paletteout[11]_i_15_2 (scanlinecache_reg_64_127_45_47_n_2),
        .\paletteout[11]_i_15_3 (scanlinecache_reg_0_63_45_47_n_2),
        .\paletteout[11]_i_15_4 (scanlinecache_reg_192_255_63_63_n_0),
        .\paletteout[11]_i_15_5 (scanlinecache_reg_128_191_63_63_n_0),
        .\paletteout[11]_i_15_6 (scanlinecache_reg_64_127_63_63_n_0),
        .\paletteout[11]_i_15_7 (scanlinecache_reg_0_63_63_63_n_0),
        .\paletteout[11]_i_16_0 (scanlinecache_reg_192_255_12_14_n_2),
        .\paletteout[11]_i_16_1 (scanlinecache_reg_128_191_12_14_n_2),
        .\paletteout[11]_i_16_2 (scanlinecache_reg_64_127_12_14_n_2),
        .\paletteout[11]_i_16_3 (scanlinecache_reg_0_63_12_14_n_2),
        .\paletteout[11]_i_16_4 (scanlinecache_reg_192_255_30_32_n_0),
        .\paletteout[11]_i_16_5 (scanlinecache_reg_128_191_30_32_n_0),
        .\paletteout[11]_i_16_6 (scanlinecache_reg_64_127_30_32_n_0),
        .\paletteout[11]_i_16_7 (scanlinecache_reg_0_63_30_32_n_0),
        .\paletteout[11]_i_17_0 (scanlinecache_reg_192_255_45_47_n_1),
        .\paletteout[11]_i_17_1 (scanlinecache_reg_128_191_45_47_n_1),
        .\paletteout[11]_i_17_2 (scanlinecache_reg_64_127_45_47_n_1),
        .\paletteout[11]_i_17_3 (scanlinecache_reg_0_63_45_47_n_1),
        .\paletteout[11]_i_17_4 (scanlinecache_reg_192_255_60_62_n_2),
        .\paletteout[11]_i_17_5 (scanlinecache_reg_128_191_60_62_n_2),
        .\paletteout[11]_i_17_6 (scanlinecache_reg_64_127_60_62_n_2),
        .\paletteout[11]_i_17_7 (scanlinecache_reg_0_63_60_62_n_2),
        .\paletteout[11]_i_3 (scanlinecache_reg_192_255_9_11_n_2),
        .\paletteout[11]_i_3_0 (scanlinecache_reg_128_191_9_11_n_2),
        .\paletteout[11]_i_3_1 (scanlinecache_reg_64_127_9_11_n_2),
        .\paletteout[11]_i_3_10 (scanlinecache_reg_0_63_42_44_n_1),
        .\paletteout[11]_i_3_11 (scanlinecache_reg_192_255_57_59_n_2),
        .\paletteout[11]_i_3_12 (scanlinecache_reg_128_191_57_59_n_2),
        .\paletteout[11]_i_3_13 (scanlinecache_reg_64_127_57_59_n_2),
        .\paletteout[11]_i_3_14 (scanlinecache_reg_0_63_57_59_n_2),
        .\paletteout[11]_i_3_2 (scanlinecache_reg_0_63_9_11_n_2),
        .\paletteout[11]_i_3_3 (scanlinecache_reg_192_255_27_29_n_0),
        .\paletteout[11]_i_3_4 (scanlinecache_reg_128_191_27_29_n_0),
        .\paletteout[11]_i_3_5 (scanlinecache_reg_64_127_27_29_n_0),
        .\paletteout[11]_i_3_6 (scanlinecache_reg_0_63_27_29_n_0),
        .\paletteout[11]_i_3_7 (scanlinecache_reg_192_255_42_44_n_1),
        .\paletteout[11]_i_3_8 (scanlinecache_reg_128_191_42_44_n_1),
        .\paletteout[11]_i_3_9 (scanlinecache_reg_64_127_42_44_n_1),
        .\paletteout[1]_i_3 (scanlinecache_reg_192_255_0_2_n_1),
        .\paletteout[1]_i_3_0 (scanlinecache_reg_128_191_0_2_n_1),
        .\paletteout[1]_i_3_1 (scanlinecache_reg_64_127_0_2_n_1),
        .\paletteout[1]_i_3_10 (scanlinecache_reg_0_63_33_35_n_0),
        .\paletteout[1]_i_3_11 (scanlinecache_reg_192_255_48_50_n_1),
        .\paletteout[1]_i_3_12 (scanlinecache_reg_128_191_48_50_n_1),
        .\paletteout[1]_i_3_13 (scanlinecache_reg_64_127_48_50_n_1),
        .\paletteout[1]_i_3_14 (scanlinecache_reg_0_63_48_50_n_1),
        .\paletteout[1]_i_3_2 (scanlinecache_reg_0_63_0_2_n_1),
        .\paletteout[1]_i_3_3 (scanlinecache_reg_192_255_15_17_n_2),
        .\paletteout[1]_i_3_4 (scanlinecache_reg_128_191_15_17_n_2),
        .\paletteout[1]_i_3_5 (scanlinecache_reg_64_127_15_17_n_2),
        .\paletteout[1]_i_3_6 (scanlinecache_reg_0_63_15_17_n_2),
        .\paletteout[1]_i_3_7 (scanlinecache_reg_192_255_33_35_n_0),
        .\paletteout[1]_i_3_8 (scanlinecache_reg_128_191_33_35_n_0),
        .\paletteout[1]_i_3_9 (scanlinecache_reg_64_127_33_35_n_0),
        .\paletteout[2]_i_3 (scanlinecache_reg_192_255_0_2_n_2),
        .\paletteout[2]_i_3_0 (scanlinecache_reg_128_191_0_2_n_2),
        .\paletteout[2]_i_3_1 (scanlinecache_reg_64_127_0_2_n_2),
        .\paletteout[2]_i_3_10 (scanlinecache_reg_0_63_33_35_n_1),
        .\paletteout[2]_i_3_11 (scanlinecache_reg_192_255_48_50_n_2),
        .\paletteout[2]_i_3_12 (scanlinecache_reg_128_191_48_50_n_2),
        .\paletteout[2]_i_3_13 (scanlinecache_reg_64_127_48_50_n_2),
        .\paletteout[2]_i_3_14 (scanlinecache_reg_0_63_48_50_n_2),
        .\paletteout[2]_i_3_2 (scanlinecache_reg_0_63_0_2_n_2),
        .\paletteout[2]_i_3_3 (scanlinecache_reg_192_255_18_20_n_0),
        .\paletteout[2]_i_3_4 (scanlinecache_reg_128_191_18_20_n_0),
        .\paletteout[2]_i_3_5 (scanlinecache_reg_64_127_18_20_n_0),
        .\paletteout[2]_i_3_6 (scanlinecache_reg_0_63_18_20_n_0),
        .\paletteout[2]_i_3_7 (scanlinecache_reg_192_255_33_35_n_1),
        .\paletteout[2]_i_3_8 (scanlinecache_reg_128_191_33_35_n_1),
        .\paletteout[2]_i_3_9 (scanlinecache_reg_64_127_33_35_n_1),
        .\paletteout[3]_i_3 (scanlinecache_reg_192_255_3_5_n_0),
        .\paletteout[3]_i_3_0 (scanlinecache_reg_128_191_3_5_n_0),
        .\paletteout[3]_i_3_1 (scanlinecache_reg_64_127_3_5_n_0),
        .\paletteout[3]_i_3_10 (scanlinecache_reg_0_63_33_35_n_2),
        .\paletteout[3]_i_3_11 (scanlinecache_reg_192_255_51_53_n_0),
        .\paletteout[3]_i_3_12 (scanlinecache_reg_128_191_51_53_n_0),
        .\paletteout[3]_i_3_13 (scanlinecache_reg_64_127_51_53_n_0),
        .\paletteout[3]_i_3_14 (scanlinecache_reg_0_63_51_53_n_0),
        .\paletteout[3]_i_3_2 (scanlinecache_reg_0_63_3_5_n_0),
        .\paletteout[3]_i_3_3 (scanlinecache_reg_192_255_18_20_n_1),
        .\paletteout[3]_i_3_4 (scanlinecache_reg_128_191_18_20_n_1),
        .\paletteout[3]_i_3_5 (scanlinecache_reg_64_127_18_20_n_1),
        .\paletteout[3]_i_3_6 (scanlinecache_reg_0_63_18_20_n_1),
        .\paletteout[3]_i_3_7 (scanlinecache_reg_192_255_33_35_n_2),
        .\paletteout[3]_i_3_8 (scanlinecache_reg_128_191_33_35_n_2),
        .\paletteout[3]_i_3_9 (scanlinecache_reg_64_127_33_35_n_2),
        .\paletteout[4]_i_3 (scanlinecache_reg_192_255_3_5_n_1),
        .\paletteout[4]_i_3_0 (scanlinecache_reg_128_191_3_5_n_1),
        .\paletteout[4]_i_3_1 (scanlinecache_reg_64_127_3_5_n_1),
        .\paletteout[4]_i_3_10 (scanlinecache_reg_0_63_36_38_n_0),
        .\paletteout[4]_i_3_11 (scanlinecache_reg_192_255_51_53_n_1),
        .\paletteout[4]_i_3_12 (scanlinecache_reg_128_191_51_53_n_1),
        .\paletteout[4]_i_3_13 (scanlinecache_reg_64_127_51_53_n_1),
        .\paletteout[4]_i_3_14 (scanlinecache_reg_0_63_51_53_n_1),
        .\paletteout[4]_i_3_2 (scanlinecache_reg_0_63_3_5_n_1),
        .\paletteout[4]_i_3_3 (scanlinecache_reg_192_255_18_20_n_2),
        .\paletteout[4]_i_3_4 (scanlinecache_reg_128_191_18_20_n_2),
        .\paletteout[4]_i_3_5 (scanlinecache_reg_64_127_18_20_n_2),
        .\paletteout[4]_i_3_6 (scanlinecache_reg_0_63_18_20_n_2),
        .\paletteout[4]_i_3_7 (scanlinecache_reg_192_255_36_38_n_0),
        .\paletteout[4]_i_3_8 (scanlinecache_reg_128_191_36_38_n_0),
        .\paletteout[4]_i_3_9 (scanlinecache_reg_64_127_36_38_n_0),
        .\paletteout[5]_i_3 (scanlinecache_reg_192_255_3_5_n_2),
        .\paletteout[5]_i_3_0 (scanlinecache_reg_128_191_3_5_n_2),
        .\paletteout[5]_i_3_1 (scanlinecache_reg_64_127_3_5_n_2),
        .\paletteout[5]_i_3_10 (scanlinecache_reg_0_63_36_38_n_1),
        .\paletteout[5]_i_3_11 (scanlinecache_reg_192_255_51_53_n_2),
        .\paletteout[5]_i_3_12 (scanlinecache_reg_128_191_51_53_n_2),
        .\paletteout[5]_i_3_13 (scanlinecache_reg_64_127_51_53_n_2),
        .\paletteout[5]_i_3_14 (scanlinecache_reg_0_63_51_53_n_2),
        .\paletteout[5]_i_3_2 (scanlinecache_reg_0_63_3_5_n_2),
        .\paletteout[5]_i_3_3 (scanlinecache_reg_192_255_21_23_n_0),
        .\paletteout[5]_i_3_4 (scanlinecache_reg_128_191_21_23_n_0),
        .\paletteout[5]_i_3_5 (scanlinecache_reg_64_127_21_23_n_0),
        .\paletteout[5]_i_3_6 (scanlinecache_reg_0_63_21_23_n_0),
        .\paletteout[5]_i_3_7 (scanlinecache_reg_192_255_36_38_n_1),
        .\paletteout[5]_i_3_8 (scanlinecache_reg_128_191_36_38_n_1),
        .\paletteout[5]_i_3_9 (scanlinecache_reg_64_127_36_38_n_1),
        .\paletteout[6]_i_3 (scanlinecache_reg_192_255_6_8_n_0),
        .\paletteout[6]_i_3_0 (scanlinecache_reg_128_191_6_8_n_0),
        .\paletteout[6]_i_3_1 (scanlinecache_reg_64_127_6_8_n_0),
        .\paletteout[6]_i_3_10 (scanlinecache_reg_0_63_36_38_n_2),
        .\paletteout[6]_i_3_11 (scanlinecache_reg_192_255_54_56_n_0),
        .\paletteout[6]_i_3_12 (scanlinecache_reg_128_191_54_56_n_0),
        .\paletteout[6]_i_3_13 (scanlinecache_reg_64_127_54_56_n_0),
        .\paletteout[6]_i_3_14 (scanlinecache_reg_0_63_54_56_n_0),
        .\paletteout[6]_i_3_2 (scanlinecache_reg_0_63_6_8_n_0),
        .\paletteout[6]_i_3_3 (scanlinecache_reg_192_255_21_23_n_1),
        .\paletteout[6]_i_3_4 (scanlinecache_reg_128_191_21_23_n_1),
        .\paletteout[6]_i_3_5 (scanlinecache_reg_64_127_21_23_n_1),
        .\paletteout[6]_i_3_6 (scanlinecache_reg_0_63_21_23_n_1),
        .\paletteout[6]_i_3_7 (scanlinecache_reg_192_255_36_38_n_2),
        .\paletteout[6]_i_3_8 (scanlinecache_reg_128_191_36_38_n_2),
        .\paletteout[6]_i_3_9 (scanlinecache_reg_64_127_36_38_n_2),
        .\paletteout[7]_i_3 (scanlinecache_reg_192_255_6_8_n_1),
        .\paletteout[7]_i_3_0 (scanlinecache_reg_128_191_6_8_n_1),
        .\paletteout[7]_i_3_1 (scanlinecache_reg_64_127_6_8_n_1),
        .\paletteout[7]_i_3_10 (scanlinecache_reg_0_63_39_41_n_0),
        .\paletteout[7]_i_3_11 (scanlinecache_reg_192_255_54_56_n_1),
        .\paletteout[7]_i_3_12 (scanlinecache_reg_128_191_54_56_n_1),
        .\paletteout[7]_i_3_13 (scanlinecache_reg_64_127_54_56_n_1),
        .\paletteout[7]_i_3_14 (scanlinecache_reg_0_63_54_56_n_1),
        .\paletteout[7]_i_3_2 (scanlinecache_reg_0_63_6_8_n_1),
        .\paletteout[7]_i_3_3 (scanlinecache_reg_192_255_21_23_n_2),
        .\paletteout[7]_i_3_4 (scanlinecache_reg_128_191_21_23_n_2),
        .\paletteout[7]_i_3_5 (scanlinecache_reg_64_127_21_23_n_2),
        .\paletteout[7]_i_3_6 (scanlinecache_reg_0_63_21_23_n_2),
        .\paletteout[7]_i_3_7 (scanlinecache_reg_192_255_39_41_n_0),
        .\paletteout[7]_i_3_8 (scanlinecache_reg_128_191_39_41_n_0),
        .\paletteout[7]_i_3_9 (scanlinecache_reg_64_127_39_41_n_0),
        .\paletteout[8]_i_3 (scanlinecache_reg_192_255_6_8_n_2),
        .\paletteout[8]_i_3_0 (scanlinecache_reg_128_191_6_8_n_2),
        .\paletteout[8]_i_3_1 (scanlinecache_reg_64_127_6_8_n_2),
        .\paletteout[8]_i_3_10 (scanlinecache_reg_0_63_39_41_n_1),
        .\paletteout[8]_i_3_11 (scanlinecache_reg_192_255_54_56_n_2),
        .\paletteout[8]_i_3_12 (scanlinecache_reg_128_191_54_56_n_2),
        .\paletteout[8]_i_3_13 (scanlinecache_reg_64_127_54_56_n_2),
        .\paletteout[8]_i_3_14 (scanlinecache_reg_0_63_54_56_n_2),
        .\paletteout[8]_i_3_2 (scanlinecache_reg_0_63_6_8_n_2),
        .\paletteout[8]_i_3_3 (scanlinecache_reg_192_255_24_26_n_0),
        .\paletteout[8]_i_3_4 (scanlinecache_reg_128_191_24_26_n_0),
        .\paletteout[8]_i_3_5 (scanlinecache_reg_64_127_24_26_n_0),
        .\paletteout[8]_i_3_6 (scanlinecache_reg_0_63_24_26_n_0),
        .\paletteout[8]_i_3_7 (scanlinecache_reg_192_255_39_41_n_1),
        .\paletteout[8]_i_3_8 (scanlinecache_reg_128_191_39_41_n_1),
        .\paletteout[8]_i_3_9 (scanlinecache_reg_64_127_39_41_n_1),
        .\paletteout[9]_i_3 (scanlinecache_reg_192_255_9_11_n_0),
        .\paletteout[9]_i_3_0 (scanlinecache_reg_128_191_9_11_n_0),
        .\paletteout[9]_i_3_1 (scanlinecache_reg_64_127_9_11_n_0),
        .\paletteout[9]_i_3_10 (scanlinecache_reg_0_63_39_41_n_2),
        .\paletteout[9]_i_3_11 (scanlinecache_reg_192_255_57_59_n_0),
        .\paletteout[9]_i_3_12 (scanlinecache_reg_128_191_57_59_n_0),
        .\paletteout[9]_i_3_13 (scanlinecache_reg_64_127_57_59_n_0),
        .\paletteout[9]_i_3_14 (scanlinecache_reg_0_63_57_59_n_0),
        .\paletteout[9]_i_3_2 (scanlinecache_reg_0_63_9_11_n_0),
        .\paletteout[9]_i_3_3 (scanlinecache_reg_192_255_24_26_n_1),
        .\paletteout[9]_i_3_4 (scanlinecache_reg_128_191_24_26_n_1),
        .\paletteout[9]_i_3_5 (scanlinecache_reg_64_127_24_26_n_1),
        .\paletteout[9]_i_3_6 (scanlinecache_reg_0_63_24_26_n_1),
        .\paletteout[9]_i_3_7 (scanlinecache_reg_192_255_39_41_n_2),
        .\paletteout[9]_i_3_8 (scanlinecache_reg_128_191_39_41_n_2),
        .\paletteout[9]_i_3_9 (scanlinecache_reg_64_127_39_41_n_2),
        .\paletteout_reg[0] (paletteentries_reg_192_255_0_2_n_0),
        .\paletteout_reg[0]_0 (paletteentries_reg_128_191_0_2_n_0),
        .\paletteout_reg[0]_1 (paletteentries_reg_64_127_0_2_n_0),
        .\paletteout_reg[0]_2 (paletteentries_reg_0_63_0_2_n_0),
        .\paletteout_reg[10] (paletteentries_reg_192_255_9_11_n_1),
        .\paletteout_reg[10]_0 (paletteentries_reg_128_191_9_11_n_1),
        .\paletteout_reg[10]_1 (paletteentries_reg_64_127_9_11_n_1),
        .\paletteout_reg[10]_2 (paletteentries_reg_0_63_9_11_n_1),
        .\paletteout_reg[11] (paletteentries_reg_192_255_9_11_n_2),
        .\paletteout_reg[11]_0 (paletteentries_reg_128_191_9_11_n_2),
        .\paletteout_reg[11]_1 (paletteentries_reg_64_127_9_11_n_2),
        .\paletteout_reg[11]_2 (paletteentries_reg_0_63_9_11_n_2),
        .\paletteout_reg[1] (paletteentries_reg_192_255_0_2_n_1),
        .\paletteout_reg[1]_0 (paletteentries_reg_128_191_0_2_n_1),
        .\paletteout_reg[1]_1 (paletteentries_reg_64_127_0_2_n_1),
        .\paletteout_reg[1]_2 (paletteentries_reg_0_63_0_2_n_1),
        .\paletteout_reg[2] (paletteentries_reg_192_255_0_2_n_2),
        .\paletteout_reg[2]_0 (paletteentries_reg_128_191_0_2_n_2),
        .\paletteout_reg[2]_1 (paletteentries_reg_64_127_0_2_n_2),
        .\paletteout_reg[2]_2 (paletteentries_reg_0_63_0_2_n_2),
        .\paletteout_reg[3] (paletteentries_reg_192_255_3_5_n_0),
        .\paletteout_reg[3]_0 (paletteentries_reg_128_191_3_5_n_0),
        .\paletteout_reg[3]_1 (paletteentries_reg_64_127_3_5_n_0),
        .\paletteout_reg[3]_2 (paletteentries_reg_0_63_3_5_n_0),
        .\paletteout_reg[4] (paletteentries_reg_192_255_3_5_n_1),
        .\paletteout_reg[4]_0 (paletteentries_reg_128_191_3_5_n_1),
        .\paletteout_reg[4]_1 (paletteentries_reg_64_127_3_5_n_1),
        .\paletteout_reg[4]_2 (paletteentries_reg_0_63_3_5_n_1),
        .\paletteout_reg[5] (paletteentries_reg_192_255_3_5_n_2),
        .\paletteout_reg[5]_0 (paletteentries_reg_128_191_3_5_n_2),
        .\paletteout_reg[5]_1 (paletteentries_reg_64_127_3_5_n_2),
        .\paletteout_reg[5]_2 (paletteentries_reg_0_63_3_5_n_2),
        .\paletteout_reg[6] (paletteentries_reg_192_255_6_8_n_0),
        .\paletteout_reg[6]_0 (paletteentries_reg_128_191_6_8_n_0),
        .\paletteout_reg[6]_1 (paletteentries_reg_64_127_6_8_n_0),
        .\paletteout_reg[6]_2 (paletteentries_reg_0_63_6_8_n_0),
        .\paletteout_reg[7] (paletteentries_reg_192_255_6_8_n_1),
        .\paletteout_reg[7]_0 (paletteentries_reg_128_191_6_8_n_1),
        .\paletteout_reg[7]_1 (paletteentries_reg_64_127_6_8_n_1),
        .\paletteout_reg[7]_2 (paletteentries_reg_0_63_6_8_n_1),
        .\paletteout_reg[8] (paletteentries_reg_192_255_6_8_n_2),
        .\paletteout_reg[8]_0 (paletteentries_reg_128_191_6_8_n_2),
        .\paletteout_reg[8]_1 (paletteentries_reg_64_127_6_8_n_2),
        .\paletteout_reg[8]_2 (paletteentries_reg_0_63_6_8_n_2),
        .\paletteout_reg[9] (paletteentries_reg_192_255_9_11_n_0),
        .\paletteout_reg[9]_0 (paletteentries_reg_128_191_9_11_n_0),
        .\paletteout_reg[9]_1 (paletteentries_reg_64_127_9_11_n_0),
        .\paletteout_reg[9]_2 (paletteentries_reg_0_63_9_11_n_0),
        .pixelClock(pixelClock),
        .pixelClockx5(pixelClockx5),
        .scanwidth(scanwidth),
        .tmds(tmds),
        .tmds_clock(tmds_clock));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE aresetnA_reg
       (.C(pixelClock),
        .CE(1'b1),
        .D(aresetn),
        .Q(aresetnA),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE aresetnB_reg
       (.C(pixelClock),
        .CE(1'b1),
        .D(aresetnA),
        .Q(aresetnB),
        .R(1'b0));
  FDRE blankt_reg
       (.C(pixelClock),
        .CE(1'b1),
        .D(HDMIInst_n_95),
        .Q(blankt),
        .R(HDMIInst_n_96));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE blanktoggle_reg
       (.C(aclk),
        .CE(1'b1),
        .D(blanktogglepre),
        .Q(blanktoggle),
        .R(vpucommandinterface_n_32));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE blanktogglepre_reg
       (.C(aclk),
        .CE(1'b1),
        .D(blankt),
        .Q(blanktogglepre),
        .R(vpucommandinterface_n_32));
  FDRE \burstmask_reg[3] 
       (.C(aclk),
        .CE(vpucommandinterface_n_45),
        .D(p_2_in[3]),
        .Q(burstmask[3]),
        .R(vpucommandinterface_n_32));
  FDRE \burstmask_reg[5] 
       (.C(aclk),
        .CE(vpucommandinterface_n_45),
        .D(p_2_in[5]),
        .Q(burstmask[5]),
        .R(vpucommandinterface_n_32));
  LUT2 #(
    .INIT(4'hE)) 
    \burststate[0]_i_1 
       (.I0(\scanstate_reg_n_0_[0] ),
        .I1(burststate__0[1]),
        .O(\burststate[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \burststate[1]_i_1 
       (.I0(\scanstate_reg_n_0_[0] ),
        .I1(burststate__0[2]),
        .O(\burststate[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \burststate[2]_i_1 
       (.I0(\scanstate_reg_n_0_[0] ),
        .I1(burststate__0[3]),
        .O(\burststate[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \burststate[3]_i_1 
       (.I0(burstmask[3]),
        .I1(\scanstate_reg_n_0_[0] ),
        .I2(burststate__0[4]),
        .O(\burststate[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \burststate[4]_i_1 
       (.I0(burstmask[3]),
        .I1(\scanstate_reg_n_0_[0] ),
        .I2(burststate__0[5]),
        .O(\burststate[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \burststate[5]_i_1 
       (.I0(burstmask[5]),
        .I1(\scanstate_reg_n_0_[0] ),
        .I2(burststate__0[6]),
        .O(\burststate[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \burststate[6]_i_1 
       (.I0(burstmask[5]),
        .I1(\scanstate_reg_n_0_[0] ),
        .I2(burststate__0[7]),
        .O(\burststate[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \burststate[7]_i_1 
       (.I0(burstmask[5]),
        .I1(\scanstate_reg_n_0_[0] ),
        .I2(burststate__0[8]),
        .O(\burststate[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \burststate[8]_i_1 
       (.I0(burstmask[5]),
        .I1(\scanstate_reg_n_0_[0] ),
        .I2(burststate__0[9]),
        .O(\burststate[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFF04)) 
    \burststate[9]_i_1 
       (.I0(\scanstate_reg_n_0_[2] ),
        .I1(\scanstate_reg_n_0_[1] ),
        .I2(\scanstate_reg_n_0_[0] ),
        .I3(\burststate[9]_i_3_n_0 ),
        .O(\burststate[9]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \burststate[9]_i_2 
       (.I0(burstmask[5]),
        .I1(\scanstate_reg_n_0_[1] ),
        .O(\burststate[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \burststate[9]_i_3 
       (.I0(\scanstate[0]_i_2_n_0 ),
        .I1(\scanstate_reg_n_0_[1] ),
        .I2(\scanstate_reg_n_0_[0] ),
        .I3(\scanstate_reg_n_0_[2] ),
        .O(\burststate[9]_i_3_n_0 ));
  FDRE \burststate_reg[0] 
       (.C(aclk),
        .CE(\burststate[9]_i_1_n_0 ),
        .D(\burststate[0]_i_1_n_0 ),
        .Q(burststate),
        .R(vpucommandinterface_n_32));
  FDRE \burststate_reg[1] 
       (.C(aclk),
        .CE(\burststate[9]_i_1_n_0 ),
        .D(\burststate[1]_i_1_n_0 ),
        .Q(burststate__0[1]),
        .R(vpucommandinterface_n_32));
  FDRE \burststate_reg[2] 
       (.C(aclk),
        .CE(\burststate[9]_i_1_n_0 ),
        .D(\burststate[2]_i_1_n_0 ),
        .Q(burststate__0[2]),
        .R(vpucommandinterface_n_32));
  FDRE \burststate_reg[3] 
       (.C(aclk),
        .CE(\burststate[9]_i_1_n_0 ),
        .D(\burststate[3]_i_1_n_0 ),
        .Q(burststate__0[3]),
        .R(vpucommandinterface_n_32));
  FDRE \burststate_reg[4] 
       (.C(aclk),
        .CE(\burststate[9]_i_1_n_0 ),
        .D(\burststate[4]_i_1_n_0 ),
        .Q(burststate__0[4]),
        .R(vpucommandinterface_n_32));
  FDRE \burststate_reg[5] 
       (.C(aclk),
        .CE(\burststate[9]_i_1_n_0 ),
        .D(\burststate[5]_i_1_n_0 ),
        .Q(burststate__0[5]),
        .R(vpucommandinterface_n_32));
  FDRE \burststate_reg[6] 
       (.C(aclk),
        .CE(\burststate[9]_i_1_n_0 ),
        .D(\burststate[6]_i_1_n_0 ),
        .Q(burststate__0[6]),
        .R(vpucommandinterface_n_32));
  FDRE \burststate_reg[7] 
       (.C(aclk),
        .CE(\burststate[9]_i_1_n_0 ),
        .D(\burststate[7]_i_1_n_0 ),
        .Q(burststate__0[7]),
        .R(vpucommandinterface_n_32));
  FDRE \burststate_reg[8] 
       (.C(aclk),
        .CE(\burststate[9]_i_1_n_0 ),
        .D(\burststate[8]_i_1_n_0 ),
        .Q(burststate__0[8]),
        .R(vpucommandinterface_n_32));
  FDRE \burststate_reg[9] 
       (.C(aclk),
        .CE(\burststate[9]_i_1_n_0 ),
        .D(\burststate[9]_i_2_n_0 ),
        .Q(burststate__0[9]),
        .R(vpucommandinterface_n_32));
  LUT6 #(
    .INIT(64'h0000010055555555)) 
    \cmdmode[0]_i_2 
       (.I0(cmdmode[1]),
        .I1(cmdmode[2]),
        .I2(\cmdmode[2]_i_2_n_0 ),
        .I3(vpucmd[0]),
        .I4(vpucmd[1]),
        .I5(cmdmode[0]),
        .O(\cmdmode[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF22222222)) 
    \cmdmode[1]_i_2 
       (.I0(cmdmode[1]),
        .I1(cmdmode[2]),
        .I2(vpucmd[0]),
        .I3(vpucmd[1]),
        .I4(\cmdmode[2]_i_2_n_0 ),
        .I5(cmdmode[0]),
        .O(\cmdmode[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \cmdmode[2]_i_2 
       (.I0(vpucmd__0[6]),
        .I1(vpucmd__0[7]),
        .I2(vpucmd__0[3]),
        .I3(vpucmd__0[2]),
        .I4(vpucmd__0[5]),
        .I5(vpucmd__0[4]),
        .O(\cmdmode[2]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cmdmode_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(vpucommandinterface_n_41),
        .Q(cmdmode[0]),
        .R(vpucommandinterface_n_32));
  FDRE #(
    .INIT(1'b0)) 
    \cmdmode_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(vpucommandinterface_n_40),
        .Q(cmdmode[1]),
        .R(vpucommandinterface_n_32));
  FDRE #(
    .INIT(1'b0)) 
    \cmdmode_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(vpucommandinterface_n_39),
        .Q(cmdmode[2]),
        .R(vpucommandinterface_n_32));
  FDRE cmdre_reg
       (.C(aclk),
        .CE(1'b1),
        .D(vpucommandinterface_n_43),
        .Q(cmdre),
        .R(vpucommandinterface_n_32));
  FDRE colormode_reg
       (.C(aclk),
        .CE(vpucommandinterface_n_45),
        .D(vpufifodout[2]),
        .Q(p_0_out[0]),
        .R(vpucommandinterface_n_32));
  FDSE \lastscanline_reg[1] 
       (.C(aclk),
        .CE(vpucommandinterface_n_45),
        .D(lastscanline0),
        .Q(lastscanline),
        .S(vpucommandinterface_n_32));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  OBUFDS obufds_clock
       (.I(tmds_clock),
        .O(HDMI_CLK_p),
        .OB(HDMI_CLK_n));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  OBUFDS \obufds_gen[0].obufds 
       (.I(tmds[0]),
        .O(HDMI_TMDS_p[0]),
        .OB(HDMI_TMDS_n[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  OBUFDS \obufds_gen[1].obufds 
       (.I(tmds[1]),
        .O(HDMI_TMDS_p[1]),
        .OB(HDMI_TMDS_n[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  OBUFDS \obufds_gen[2].obufds 
       (.I(tmds[2]),
        .O(HDMI_TMDS_p[2]),
        .OB(HDMI_TMDS_n[2]));
  FDRE \palettedin_reg[0] 
       (.C(aclk),
        .CE(vpucommandinterface_n_42),
        .D(vpufifodout[0]),
        .Q(palettedin[0]),
        .R(vpucommandinterface_n_32));
  FDRE \palettedin_reg[10] 
       (.C(aclk),
        .CE(vpucommandinterface_n_42),
        .D(vpufifodout[10]),
        .Q(palettedin[10]),
        .R(vpucommandinterface_n_32));
  FDRE \palettedin_reg[11] 
       (.C(aclk),
        .CE(vpucommandinterface_n_42),
        .D(vpufifodout[11]),
        .Q(palettedin[11]),
        .R(vpucommandinterface_n_32));
  FDRE \palettedin_reg[1] 
       (.C(aclk),
        .CE(vpucommandinterface_n_42),
        .D(vpufifodout[1]),
        .Q(palettedin[1]),
        .R(vpucommandinterface_n_32));
  FDRE \palettedin_reg[2] 
       (.C(aclk),
        .CE(vpucommandinterface_n_42),
        .D(vpufifodout[2]),
        .Q(palettedin[2]),
        .R(vpucommandinterface_n_32));
  FDRE \palettedin_reg[3] 
       (.C(aclk),
        .CE(vpucommandinterface_n_42),
        .D(vpufifodout[3]),
        .Q(palettedin[3]),
        .R(vpucommandinterface_n_32));
  FDRE \palettedin_reg[4] 
       (.C(aclk),
        .CE(vpucommandinterface_n_42),
        .D(vpufifodout[4]),
        .Q(palettedin[4]),
        .R(vpucommandinterface_n_32));
  FDRE \palettedin_reg[5] 
       (.C(aclk),
        .CE(vpucommandinterface_n_42),
        .D(vpufifodout[5]),
        .Q(palettedin[5]),
        .R(vpucommandinterface_n_32));
  FDRE \palettedin_reg[6] 
       (.C(aclk),
        .CE(vpucommandinterface_n_42),
        .D(vpufifodout[6]),
        .Q(palettedin[6]),
        .R(vpucommandinterface_n_32));
  FDRE \palettedin_reg[7] 
       (.C(aclk),
        .CE(vpucommandinterface_n_42),
        .D(vpufifodout[7]),
        .Q(palettedin[7]),
        .R(vpucommandinterface_n_32));
  FDRE \palettedin_reg[8] 
       (.C(aclk),
        .CE(vpucommandinterface_n_42),
        .D(vpufifodout[8]),
        .Q(palettedin[8]),
        .R(vpucommandinterface_n_32));
  FDRE \palettedin_reg[9] 
       (.C(aclk),
        .CE(vpucommandinterface_n_42),
        .D(vpufifodout[9]),
        .Q(palettedin[9]),
        .R(vpucommandinterface_n_32));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "videomodule/paletteentries_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'hFFF8003FAAAAFF00),
    .INIT_B(64'h5FF8003FCCCCAAAA),
    .INIT_C(64'h3FF2009FF0F0FF00),
    .INIT_D(64'h0000000000000000)) 
    paletteentries_reg_0_63_0_2
       (.ADDRA(paletteindex),
        .ADDRB(paletteindex),
        .ADDRC(paletteindex),
        .ADDRD(palettewa[5:0]),
        .DIA(palettedin[0]),
        .DIB(palettedin[1]),
        .DIC(palettedin[2]),
        .DID(1'b0),
        .DOA(paletteentries_reg_0_63_0_2_n_0),
        .DOB(paletteentries_reg_0_63_0_2_n_1),
        .DOC(paletteentries_reg_0_63_0_2_n_2),
        .DOD(NLW_paletteentries_reg_0_63_0_2_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(paletteentries_reg_0_63_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h02)) 
    paletteentries_reg_0_63_0_2_i_1
       (.I0(palettewe),
        .I1(palettewa[6]),
        .I2(palettewa[7]),
        .O(paletteentries_reg_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "videomodule/paletteentries_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'hFFFC007FFF00AAAA),
    .INIT_B(64'h003FF800AAAAFF40),
    .INIT_C(64'h003FF800CCCCCC8C),
    .INIT_D(64'h0000000000000000)) 
    paletteentries_reg_0_63_3_5
       (.ADDRA(paletteindex),
        .ADDRB(paletteindex),
        .ADDRC(paletteindex),
        .ADDRD(palettewa[5:0]),
        .DIA(palettedin[3]),
        .DIB(palettedin[4]),
        .DIC(palettedin[5]),
        .DID(1'b0),
        .DOA(paletteentries_reg_0_63_3_5_n_0),
        .DOB(paletteentries_reg_0_63_3_5_n_1),
        .DOC(paletteentries_reg_0_63_3_5_n_2),
        .DOD(NLW_paletteentries_reg_0_63_3_5_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(paletteentries_reg_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "videomodule/paletteentries_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M #(
    .INIT_A(64'h009FF200F0F0FF40),
    .INIT_B(64'hFF7FFC00FF00CC8C),
    .INIT_C(64'hFE003FF8AAAAFF00),
    .INIT_D(64'h0000000000000000)) 
    paletteentries_reg_0_63_6_8
       (.ADDRA(paletteindex),
        .ADDRB(paletteindex),
        .ADDRC(paletteindex),
        .ADDRD(palettewa[5:0]),
        .DIA(palettedin[6]),
        .DIB(palettedin[7]),
        .DIC(palettedin[8]),
        .DID(1'b0),
        .DOA(paletteentries_reg_0_63_6_8_n_0),
        .DOB(paletteentries_reg_0_63_6_8_n_1),
        .DOC(paletteentries_reg_0_63_6_8_n_2),
        .DOD(NLW_paletteentries_reg_0_63_6_8_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(paletteentries_reg_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "videomodule/paletteentries_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M #(
    .INIT_A(64'hF4003FF8CCCCF0F0),
    .INIT_B(64'hF8009FF2F0F0FF00),
    .INIT_C(64'hFF007FFCFF00F0F0),
    .INIT_D(64'h0000000000000000)) 
    paletteentries_reg_0_63_9_11
       (.ADDRA(paletteindex),
        .ADDRB(paletteindex),
        .ADDRC(paletteindex),
        .ADDRD(palettewa[5:0]),
        .DIA(palettedin[9]),
        .DIB(palettedin[10]),
        .DIC(palettedin[11]),
        .DID(1'b0),
        .DOA(paletteentries_reg_0_63_9_11_n_0),
        .DOB(paletteentries_reg_0_63_9_11_n_1),
        .DOC(paletteentries_reg_0_63_9_11_n_2),
        .DOD(NLW_paletteentries_reg_0_63_9_11_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(paletteentries_reg_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "videomodule/paletteentries_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h00A0F3FF9FF5FF5F),
    .INIT_B(64'h0060FC007FF9FF3F),
    .INIT_C(64'h001FFFFFFFFE00FF),
    .INIT_D(64'h0000000000000000)) 
    paletteentries_reg_128_191_0_2
       (.ADDRA(paletteindex),
        .ADDRB(paletteindex),
        .ADDRC(paletteindex),
        .ADDRD(palettewa[5:0]),
        .DIA(palettedin[0]),
        .DIB(palettedin[1]),
        .DIC(palettedin[2]),
        .DID(1'b0),
        .DOA(paletteentries_reg_128_191_0_2_n_0),
        .DOB(paletteentries_reg_128_191_0_2_n_1),
        .DOC(paletteentries_reg_128_191_0_2_n_2),
        .DOD(NLW_paletteentries_reg_128_191_0_2_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(paletteentries_reg_128_191_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h40)) 
    paletteentries_reg_128_191_0_2_i_1
       (.I0(palettewa[6]),
        .I1(palettewa[7]),
        .I2(palettewe),
        .O(paletteentries_reg_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "videomodule/paletteentries_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0A009FF3FF5FF5FF),
    .INIT_C(64'h0C007FFC003FF9FF),
    .INIT_D(64'h0000000000000000)) 
    paletteentries_reg_128_191_3_5
       (.ADDRA(paletteindex),
        .ADDRB(paletteindex),
        .ADDRC(paletteindex),
        .ADDRD(palettewa[5:0]),
        .DIA(palettedin[3]),
        .DIB(palettedin[4]),
        .DIC(palettedin[5]),
        .DID(1'b0),
        .DOA(paletteentries_reg_128_191_3_5_n_0),
        .DOB(paletteentries_reg_128_191_3_5_n_1),
        .DOC(paletteentries_reg_128_191_3_5_n_2),
        .DOD(NLW_paletteentries_reg_128_191_3_5_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(paletteentries_reg_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "videomodule/paletteentries_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M #(
    .INIT_A(64'hF000FFFFFFFFFE00),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'hA00AFF9FF3FF5FF5),
    .INIT_D(64'h0000000000000000)) 
    paletteentries_reg_128_191_6_8
       (.ADDRA(paletteindex),
        .ADDRB(paletteindex),
        .ADDRC(paletteindex),
        .ADDRD(palettewa[5:0]),
        .DIA(palettedin[6]),
        .DIB(palettedin[7]),
        .DIC(palettedin[8]),
        .DID(1'b0),
        .DOA(paletteentries_reg_128_191_6_8_n_0),
        .DOB(paletteentries_reg_128_191_6_8_n_1),
        .DOC(paletteentries_reg_128_191_6_8_n_2),
        .DOD(NLW_paletteentries_reg_128_191_6_8_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(paletteentries_reg_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "videomodule/paletteentries_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M #(
    .INIT_A(64'h600C007FFCFF3FF9),
    .INIT_B(64'h1FF0FFFFFF00FFFE),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    paletteentries_reg_128_191_9_11
       (.ADDRA(paletteindex),
        .ADDRB(paletteindex),
        .ADDRC(paletteindex),
        .ADDRD(palettewa[5:0]),
        .DIA(palettedin[9]),
        .DIB(palettedin[10]),
        .DIC(palettedin[11]),
        .DID(1'b0),
        .DOA(paletteentries_reg_128_191_9_11_n_0),
        .DOB(paletteentries_reg_128_191_9_11_n_1),
        .DOC(paletteentries_reg_128_191_9_11_n_2),
        .DOD(NLW_paletteentries_reg_128_191_9_11_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(paletteentries_reg_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "videomodule/paletteentries_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h000E00E00C00600A),
    .INIT_B(64'h000FFFE00FFFE00C),
    .INIT_C(64'h00F0001FF0001FF0),
    .INIT_D(64'h0000000000000000)) 
    paletteentries_reg_192_255_0_2
       (.ADDRA(paletteindex),
        .ADDRB(paletteindex),
        .ADDRC(paletteindex),
        .ADDRD(palettewa[5:0]),
        .DIA(palettedin[0]),
        .DIB(palettedin[1]),
        .DIC(palettedin[2]),
        .DID(1'b0),
        .DOA(paletteentries_reg_192_255_0_2_n_0),
        .DOB(paletteentries_reg_192_255_0_2_n_1),
        .DOC(paletteentries_reg_192_255_0_2_n_2),
        .DOD(NLW_paletteentries_reg_192_255_0_2_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(paletteentries_reg_192_255_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    paletteentries_reg_192_255_0_2_i_1
       (.I0(palettewe),
        .I1(palettewa[6]),
        .I2(palettewa[7]),
        .O(paletteentries_reg_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "videomodule/paletteentries_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h00E00E00600C00A0),
    .INIT_C(64'h00E00FFFE00FFF60),
    .INIT_D(64'h0000000000000000)) 
    paletteentries_reg_192_255_3_5
       (.ADDRA(paletteindex),
        .ADDRB(paletteindex),
        .ADDRC(paletteindex),
        .ADDRD(palettewa[5:0]),
        .DIA(palettedin[3]),
        .DIB(palettedin[4]),
        .DIC(palettedin[5]),
        .DID(1'b0),
        .DOA(paletteentries_reg_192_255_3_5_n_0),
        .DOB(paletteentries_reg_192_255_3_5_n_1),
        .DOC(paletteentries_reg_192_255_3_5_n_2),
        .DOD(NLW_paletteentries_reg_192_255_3_5_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(paletteentries_reg_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "videomodule/paletteentries_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M #(
    .INIT_A(64'h001FF0001FF0001F),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000E00E00600C00),
    .INIT_D(64'h0000000000000000)) 
    paletteentries_reg_192_255_6_8
       (.ADDRA(paletteindex),
        .ADDRB(paletteindex),
        .ADDRC(paletteindex),
        .ADDRD(palettewa[5:0]),
        .DIA(palettedin[6]),
        .DIB(palettedin[7]),
        .DIC(palettedin[8]),
        .DID(1'b0),
        .DOA(paletteentries_reg_192_255_6_8_n_0),
        .DOB(paletteentries_reg_192_255_6_8_n_1),
        .DOC(paletteentries_reg_192_255_6_8_n_2),
        .DOD(NLW_paletteentries_reg_192_255_6_8_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(paletteentries_reg_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "videomodule/paletteentries_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M #(
    .INIT_A(64'h00FFE00FFFE00F00),
    .INIT_B(64'h00001FF0001FF000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    paletteentries_reg_192_255_9_11
       (.ADDRA(paletteindex),
        .ADDRB(paletteindex),
        .ADDRC(paletteindex),
        .ADDRD(palettewa[5:0]),
        .DIA(palettedin[9]),
        .DIB(palettedin[10]),
        .DIC(palettedin[11]),
        .DID(1'b0),
        .DOA(paletteentries_reg_192_255_9_11_n_0),
        .DOB(paletteentries_reg_192_255_9_11_n_1),
        .DOC(paletteentries_reg_192_255_9_11_n_2),
        .DOD(NLW_paletteentries_reg_192_255_9_11_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(paletteentries_reg_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "videomodule/paletteentries_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'hFE00FFF5FF5FFE00),
    .INIT_B(64'hF4005FF9FF3FF400),
    .INIT_C(64'hF8003FFE00FFF800),
    .INIT_D(64'h0000000000000000)) 
    paletteentries_reg_64_127_0_2
       (.ADDRA(paletteindex),
        .ADDRB(paletteindex),
        .ADDRC(paletteindex),
        .ADDRD(palettewa[5:0]),
        .DIA(palettedin[0]),
        .DIB(palettedin[1]),
        .DIC(palettedin[2]),
        .DID(1'b0),
        .DOA(paletteentries_reg_64_127_0_2_n_0),
        .DOB(paletteentries_reg_64_127_0_2_n_1),
        .DOC(paletteentries_reg_64_127_0_2_n_2),
        .DOD(NLW_paletteentries_reg_64_127_0_2_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(paletteentries_reg_64_127_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h40)) 
    paletteentries_reg_64_127_0_2_i_1
       (.I0(palettewa[7]),
        .I1(palettewa[6]),
        .I2(palettewe),
        .O(paletteentries_reg_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "videomodule/paletteentries_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h000000FFFFFFFFFF),
    .INIT_B(64'hFFFE005FF5FFFFFE),
    .INIT_C(64'h5FF4003FF9FF5FF4),
    .INIT_D(64'h0000000000000000)) 
    paletteentries_reg_64_127_3_5
       (.ADDRA(paletteindex),
        .ADDRB(paletteindex),
        .ADDRC(paletteindex),
        .ADDRD(palettewa[5:0]),
        .DIA(palettedin[3]),
        .DIB(palettedin[4]),
        .DIC(palettedin[5]),
        .DID(1'b0),
        .DOA(paletteentries_reg_64_127_3_5_n_0),
        .DOB(paletteentries_reg_64_127_3_5_n_1),
        .DOC(paletteentries_reg_64_127_3_5_n_2),
        .DOD(NLW_paletteentries_reg_64_127_3_5_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(paletteentries_reg_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "videomodule/paletteentries_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M #(
    .INIT_A(64'h3FF800FFFE003FF8),
    .INIT_B(64'h000000FFFFFFFFFF),
    .INIT_C(64'h00FFFEFF5FF500FF),
    .INIT_D(64'h0000000000000000)) 
    paletteentries_reg_64_127_6_8
       (.ADDRA(paletteindex),
        .ADDRB(paletteindex),
        .ADDRC(paletteindex),
        .ADDRD(palettewa[5:0]),
        .DIA(palettedin[6]),
        .DIB(palettedin[7]),
        .DIC(palettedin[8]),
        .DID(1'b0),
        .DOA(paletteentries_reg_64_127_6_8_n_0),
        .DOB(paletteentries_reg_64_127_6_8_n_1),
        .DOC(paletteentries_reg_64_127_6_8_n_2),
        .DOD(NLW_paletteentries_reg_64_127_6_8_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(paletteentries_reg_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "3072" *) 
  (* RTL_RAM_NAME = "videomodule/paletteentries_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M #(
    .INIT_A(64'h005FF4FF3FF9005F),
    .INIT_B(64'h003FF800FFFE003F),
    .INIT_C(64'h000000FFFFFFFFFF),
    .INIT_D(64'h0000000000000000)) 
    paletteentries_reg_64_127_9_11
       (.ADDRA(paletteindex),
        .ADDRB(paletteindex),
        .ADDRC(paletteindex),
        .ADDRD(palettewa[5:0]),
        .DIA(palettedin[9]),
        .DIB(palettedin[10]),
        .DIC(palettedin[11]),
        .DID(1'b0),
        .DOA(paletteentries_reg_64_127_9_11_n_0),
        .DOB(paletteentries_reg_64_127_9_11_n_1),
        .DOC(paletteentries_reg_64_127_9_11_n_2),
        .DOD(NLW_paletteentries_reg_64_127_9_11_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(paletteentries_reg_64_127_0_2_i_1_n_0));
  LUT4 #(
    .INIT(16'h00E2)) 
    \paletteout[0]_i_1 
       (.I0(paletteout0[0]),
        .I1(p_0_out[0]),
        .I2(rgbcolor[0]),
        .I3(HDMIInst_n_92),
        .O(p_1_out[0]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \paletteout[0]_i_3 
       (.I0(scanlinedout[16]),
        .I1(scanlinedout[0]),
        .I2(scanlinedout[48]),
        .I3(HDMIInst_n_94),
        .I4(HDMIInst_n_93),
        .I5(scanlinedout[32]),
        .O(rgbcolor[0]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \paletteout[10]_i_1 
       (.I0(paletteout0[10]),
        .I1(p_0_out[0]),
        .I2(rgbcolor[10]),
        .I3(HDMIInst_n_92),
        .O(p_1_out[10]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \paletteout[10]_i_3 
       (.I0(scanlinedout[26]),
        .I1(scanlinedout[10]),
        .I2(scanlinedout[58]),
        .I3(HDMIInst_n_94),
        .I4(HDMIInst_n_93),
        .I5(scanlinedout[42]),
        .O(rgbcolor[10]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \paletteout[11]_i_1 
       (.I0(paletteout0[11]),
        .I1(p_0_out[0]),
        .I2(rgbcolor[11]),
        .I3(HDMIInst_n_92),
        .O(p_1_out[11]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \paletteout[11]_i_3 
       (.I0(scanlinedout[27]),
        .I1(scanlinedout[11]),
        .I2(scanlinedout[59]),
        .I3(HDMIInst_n_94),
        .I4(HDMIInst_n_93),
        .I5(scanlinedout[43]),
        .O(rgbcolor[11]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \paletteout[1]_i_1 
       (.I0(paletteout0[1]),
        .I1(p_0_out[0]),
        .I2(rgbcolor[1]),
        .I3(HDMIInst_n_92),
        .O(p_1_out[1]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \paletteout[1]_i_3 
       (.I0(scanlinedout[17]),
        .I1(scanlinedout[1]),
        .I2(scanlinedout[49]),
        .I3(HDMIInst_n_94),
        .I4(HDMIInst_n_93),
        .I5(scanlinedout[33]),
        .O(rgbcolor[1]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \paletteout[2]_i_1 
       (.I0(paletteout0[2]),
        .I1(p_0_out[0]),
        .I2(rgbcolor[2]),
        .I3(HDMIInst_n_92),
        .O(p_1_out[2]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \paletteout[2]_i_3 
       (.I0(scanlinedout[18]),
        .I1(scanlinedout[2]),
        .I2(scanlinedout[50]),
        .I3(HDMIInst_n_94),
        .I4(HDMIInst_n_93),
        .I5(scanlinedout[34]),
        .O(rgbcolor[2]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \paletteout[3]_i_1 
       (.I0(paletteout0[3]),
        .I1(p_0_out[0]),
        .I2(rgbcolor[3]),
        .I3(HDMIInst_n_92),
        .O(p_1_out[3]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \paletteout[3]_i_3 
       (.I0(scanlinedout[19]),
        .I1(scanlinedout[3]),
        .I2(scanlinedout[51]),
        .I3(HDMIInst_n_94),
        .I4(HDMIInst_n_93),
        .I5(scanlinedout[35]),
        .O(rgbcolor[3]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \paletteout[4]_i_1 
       (.I0(paletteout0[4]),
        .I1(p_0_out[0]),
        .I2(rgbcolor[4]),
        .I3(HDMIInst_n_92),
        .O(p_1_out[4]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \paletteout[4]_i_3 
       (.I0(scanlinedout[20]),
        .I1(scanlinedout[4]),
        .I2(scanlinedout[52]),
        .I3(HDMIInst_n_94),
        .I4(HDMIInst_n_93),
        .I5(scanlinedout[36]),
        .O(rgbcolor[4]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \paletteout[5]_i_1 
       (.I0(paletteout0[5]),
        .I1(p_0_out[0]),
        .I2(rgbcolor[5]),
        .I3(HDMIInst_n_92),
        .O(p_1_out[5]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \paletteout[5]_i_3 
       (.I0(scanlinedout[21]),
        .I1(scanlinedout[5]),
        .I2(scanlinedout[53]),
        .I3(HDMIInst_n_94),
        .I4(HDMIInst_n_93),
        .I5(scanlinedout[37]),
        .O(rgbcolor[5]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \paletteout[6]_i_1 
       (.I0(paletteout0[6]),
        .I1(p_0_out[0]),
        .I2(rgbcolor[6]),
        .I3(HDMIInst_n_92),
        .O(p_1_out[6]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \paletteout[6]_i_3 
       (.I0(scanlinedout[22]),
        .I1(scanlinedout[6]),
        .I2(scanlinedout[54]),
        .I3(HDMIInst_n_94),
        .I4(HDMIInst_n_93),
        .I5(scanlinedout[38]),
        .O(rgbcolor[6]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \paletteout[7]_i_1 
       (.I0(paletteout0[7]),
        .I1(p_0_out[0]),
        .I2(rgbcolor[7]),
        .I3(HDMIInst_n_92),
        .O(p_1_out[7]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \paletteout[7]_i_3 
       (.I0(scanlinedout[23]),
        .I1(scanlinedout[7]),
        .I2(scanlinedout[55]),
        .I3(HDMIInst_n_94),
        .I4(HDMIInst_n_93),
        .I5(scanlinedout[39]),
        .O(rgbcolor[7]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \paletteout[8]_i_1 
       (.I0(paletteout0[8]),
        .I1(p_0_out[0]),
        .I2(rgbcolor[8]),
        .I3(HDMIInst_n_92),
        .O(p_1_out[8]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \paletteout[8]_i_3 
       (.I0(scanlinedout[24]),
        .I1(scanlinedout[8]),
        .I2(scanlinedout[56]),
        .I3(HDMIInst_n_94),
        .I4(HDMIInst_n_93),
        .I5(scanlinedout[40]),
        .O(rgbcolor[8]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \paletteout[9]_i_1 
       (.I0(paletteout0[9]),
        .I1(p_0_out[0]),
        .I2(rgbcolor[9]),
        .I3(HDMIInst_n_92),
        .O(p_1_out[9]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \paletteout[9]_i_3 
       (.I0(scanlinedout[25]),
        .I1(scanlinedout[9]),
        .I2(scanlinedout[57]),
        .I3(HDMIInst_n_94),
        .I4(HDMIInst_n_93),
        .I5(scanlinedout[41]),
        .O(rgbcolor[9]));
  FDRE \paletteout_reg[0] 
       (.C(pixelClock),
        .CE(1'b1),
        .D(p_1_out[0]),
        .Q(paletteout[0]),
        .R(HDMIInst_n_96));
  FDRE \paletteout_reg[10] 
       (.C(pixelClock),
        .CE(1'b1),
        .D(p_1_out[10]),
        .Q(paletteout[10]),
        .R(HDMIInst_n_96));
  FDRE \paletteout_reg[11] 
       (.C(pixelClock),
        .CE(1'b1),
        .D(p_1_out[11]),
        .Q(paletteout[11]),
        .R(HDMIInst_n_96));
  FDRE \paletteout_reg[1] 
       (.C(pixelClock),
        .CE(1'b1),
        .D(p_1_out[1]),
        .Q(paletteout[1]),
        .R(HDMIInst_n_96));
  FDRE \paletteout_reg[2] 
       (.C(pixelClock),
        .CE(1'b1),
        .D(p_1_out[2]),
        .Q(paletteout[2]),
        .R(HDMIInst_n_96));
  FDRE \paletteout_reg[3] 
       (.C(pixelClock),
        .CE(1'b1),
        .D(p_1_out[3]),
        .Q(paletteout[3]),
        .R(HDMIInst_n_96));
  FDRE \paletteout_reg[4] 
       (.C(pixelClock),
        .CE(1'b1),
        .D(p_1_out[4]),
        .Q(paletteout[4]),
        .R(HDMIInst_n_96));
  FDRE \paletteout_reg[5] 
       (.C(pixelClock),
        .CE(1'b1),
        .D(p_1_out[5]),
        .Q(paletteout[5]),
        .R(HDMIInst_n_96));
  FDRE \paletteout_reg[6] 
       (.C(pixelClock),
        .CE(1'b1),
        .D(p_1_out[6]),
        .Q(paletteout[6]),
        .R(HDMIInst_n_96));
  FDRE \paletteout_reg[7] 
       (.C(pixelClock),
        .CE(1'b1),
        .D(p_1_out[7]),
        .Q(paletteout[7]),
        .R(HDMIInst_n_96));
  FDRE \paletteout_reg[8] 
       (.C(pixelClock),
        .CE(1'b1),
        .D(p_1_out[8]),
        .Q(paletteout[8]),
        .R(HDMIInst_n_96));
  FDRE \paletteout_reg[9] 
       (.C(pixelClock),
        .CE(1'b1),
        .D(p_1_out[9]),
        .Q(paletteout[9]),
        .R(HDMIInst_n_96));
  FDRE \palettewa_reg[0] 
       (.C(aclk),
        .CE(vpucommandinterface_n_42),
        .D(vpufifodout[24]),
        .Q(palettewa[0]),
        .R(vpucommandinterface_n_32));
  FDRE \palettewa_reg[1] 
       (.C(aclk),
        .CE(vpucommandinterface_n_42),
        .D(vpufifodout[25]),
        .Q(palettewa[1]),
        .R(vpucommandinterface_n_32));
  FDRE \palettewa_reg[2] 
       (.C(aclk),
        .CE(vpucommandinterface_n_42),
        .D(vpufifodout[26]),
        .Q(palettewa[2]),
        .R(vpucommandinterface_n_32));
  FDRE \palettewa_reg[3] 
       (.C(aclk),
        .CE(vpucommandinterface_n_42),
        .D(vpufifodout[27]),
        .Q(palettewa[3]),
        .R(vpucommandinterface_n_32));
  FDRE \palettewa_reg[4] 
       (.C(aclk),
        .CE(vpucommandinterface_n_42),
        .D(vpufifodout[28]),
        .Q(palettewa[4]),
        .R(vpucommandinterface_n_32));
  FDRE \palettewa_reg[5] 
       (.C(aclk),
        .CE(vpucommandinterface_n_42),
        .D(vpufifodout[29]),
        .Q(palettewa[5]),
        .R(vpucommandinterface_n_32));
  FDRE \palettewa_reg[6] 
       (.C(aclk),
        .CE(vpucommandinterface_n_42),
        .D(vpufifodout[30]),
        .Q(palettewa[6]),
        .R(vpucommandinterface_n_32));
  FDRE \palettewa_reg[7] 
       (.C(aclk),
        .CE(vpucommandinterface_n_42),
        .D(vpufifodout[31]),
        .Q(palettewa[7]),
        .R(vpucommandinterface_n_32));
  FDRE palettewe_reg
       (.C(aclk),
        .CE(1'b1),
        .D(vpucommandinterface_n_42),
        .Q(palettewe),
        .R(vpucommandinterface_n_32));
  LUT2 #(
    .INIT(4'h2)) 
    \rdata_cnt[0]_i_1 
       (.I0(\scanstate_reg_n_0_[2] ),
        .I1(rdata_cnt[0]),
        .O(\rdata_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \rdata_cnt[1]_i_1 
       (.I0(rdata_cnt[0]),
        .I1(rdata_cnt[1]),
        .I2(\scanstate_reg_n_0_[2] ),
        .O(\rdata_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \rdata_cnt[2]_i_1 
       (.I0(\scanstate_reg_n_0_[2] ),
        .I1(rdata_cnt[0]),
        .I2(rdata_cnt[1]),
        .I3(rdata_cnt[2]),
        .O(\rdata_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \rdata_cnt[3]_i_1 
       (.I0(\scanstate_reg_n_0_[2] ),
        .I1(rdata_cnt[2]),
        .I2(rdata_cnt[1]),
        .I3(rdata_cnt[0]),
        .I4(rdata_cnt[3]),
        .O(\rdata_cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \rdata_cnt[4]_i_1 
       (.I0(\scanstate_reg_n_0_[2] ),
        .I1(rdata_cnt[3]),
        .I2(rdata_cnt[0]),
        .I3(rdata_cnt[1]),
        .I4(rdata_cnt[2]),
        .I5(rdata_cnt[4]),
        .O(\rdata_cnt[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \rdata_cnt[5]_i_1 
       (.I0(\scanstate_reg_n_0_[2] ),
        .I1(\rdata_cnt[5]_i_2_n_0 ),
        .I2(rdata_cnt[5]),
        .O(\rdata_cnt[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \rdata_cnt[5]_i_2 
       (.I0(rdata_cnt[4]),
        .I1(rdata_cnt[2]),
        .I2(rdata_cnt[1]),
        .I3(rdata_cnt[0]),
        .I4(rdata_cnt[3]),
        .O(\rdata_cnt[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'h48)) 
    \rdata_cnt[6]_i_1 
       (.I0(\rdata_cnt[7]_i_3_n_0 ),
        .I1(\scanstate_reg_n_0_[2] ),
        .I2(rdata_cnt[6]),
        .O(\rdata_cnt[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0008)) 
    \rdata_cnt[7]_i_1 
       (.I0(\scanstate_reg_n_0_[2] ),
        .I1(m_axi_rvalid),
        .I2(\scanstate_reg_n_0_[1] ),
        .I3(\scanstate_reg_n_0_[0] ),
        .I4(\burststate[9]_i_3_n_0 ),
        .O(\rdata_cnt[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \rdata_cnt[7]_i_2 
       (.I0(rdata_cnt[6]),
        .I1(\rdata_cnt[7]_i_3_n_0 ),
        .I2(\scanstate_reg_n_0_[2] ),
        .I3(rdata_cnt[7]),
        .O(\rdata_cnt[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \rdata_cnt[7]_i_3 
       (.I0(rdata_cnt[5]),
        .I1(rdata_cnt[3]),
        .I2(rdata_cnt[0]),
        .I3(rdata_cnt[1]),
        .I4(rdata_cnt[2]),
        .I5(rdata_cnt[4]),
        .O(\rdata_cnt[7]_i_3_n_0 ));
  FDRE \rdata_cnt_reg[0] 
       (.C(aclk),
        .CE(\rdata_cnt[7]_i_1_n_0 ),
        .D(\rdata_cnt[0]_i_1_n_0 ),
        .Q(rdata_cnt[0]),
        .R(vpucommandinterface_n_32));
  FDRE \rdata_cnt_reg[1] 
       (.C(aclk),
        .CE(\rdata_cnt[7]_i_1_n_0 ),
        .D(\rdata_cnt[1]_i_1_n_0 ),
        .Q(rdata_cnt[1]),
        .R(vpucommandinterface_n_32));
  FDRE \rdata_cnt_reg[2] 
       (.C(aclk),
        .CE(\rdata_cnt[7]_i_1_n_0 ),
        .D(\rdata_cnt[2]_i_1_n_0 ),
        .Q(rdata_cnt[2]),
        .R(vpucommandinterface_n_32));
  FDRE \rdata_cnt_reg[3] 
       (.C(aclk),
        .CE(\rdata_cnt[7]_i_1_n_0 ),
        .D(\rdata_cnt[3]_i_1_n_0 ),
        .Q(rdata_cnt[3]),
        .R(vpucommandinterface_n_32));
  FDRE \rdata_cnt_reg[4] 
       (.C(aclk),
        .CE(\rdata_cnt[7]_i_1_n_0 ),
        .D(\rdata_cnt[4]_i_1_n_0 ),
        .Q(rdata_cnt[4]),
        .R(vpucommandinterface_n_32));
  FDRE \rdata_cnt_reg[5] 
       (.C(aclk),
        .CE(\rdata_cnt[7]_i_1_n_0 ),
        .D(\rdata_cnt[5]_i_1_n_0 ),
        .Q(rdata_cnt[5]),
        .R(vpucommandinterface_n_32));
  FDRE \rdata_cnt_reg[6] 
       (.C(aclk),
        .CE(\rdata_cnt[7]_i_1_n_0 ),
        .D(\rdata_cnt[6]_i_1_n_0 ),
        .Q(rdata_cnt[6]),
        .R(vpucommandinterface_n_32));
  FDRE \rdata_cnt_reg[7] 
       (.C(aclk),
        .CE(\rdata_cnt[7]_i_1_n_0 ),
        .D(\rdata_cnt[7]_i_2_n_0 ),
        .Q(rdata_cnt[7]),
        .R(vpucommandinterface_n_32));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE rst25n_reg
       (.C(pixelClock),
        .CE(1'b1),
        .D(aresetnB),
        .Q(rst25n),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h04)) 
    \s_axi_araddr[31]_i_1 
       (.I0(\scanstate_reg_n_0_[0] ),
        .I1(\scanstate_reg_n_0_[1] ),
        .I2(\scanstate_reg_n_0_[2] ),
        .O(\s_axi_araddr[31]_i_1_n_0 ));
  FDRE \s_axi_araddr_reg[0] 
       (.C(aclk),
        .CE(\s_axi_araddr[31]_i_1_n_0 ),
        .D(scanoffset[0]),
        .Q(m_axi_araddr[0]),
        .R(vpucommandinterface_n_32));
  FDRE \s_axi_araddr_reg[10] 
       (.C(aclk),
        .CE(\s_axi_araddr[31]_i_1_n_0 ),
        .D(scanoffset[10]),
        .Q(m_axi_araddr[10]),
        .R(vpucommandinterface_n_32));
  FDRE \s_axi_araddr_reg[11] 
       (.C(aclk),
        .CE(\s_axi_araddr[31]_i_1_n_0 ),
        .D(scanoffset[11]),
        .Q(m_axi_araddr[11]),
        .R(vpucommandinterface_n_32));
  FDRE \s_axi_araddr_reg[12] 
       (.C(aclk),
        .CE(\s_axi_araddr[31]_i_1_n_0 ),
        .D(scanoffset[12]),
        .Q(m_axi_araddr[12]),
        .R(vpucommandinterface_n_32));
  FDRE \s_axi_araddr_reg[13] 
       (.C(aclk),
        .CE(\s_axi_araddr[31]_i_1_n_0 ),
        .D(scanoffset[13]),
        .Q(m_axi_araddr[13]),
        .R(vpucommandinterface_n_32));
  FDRE \s_axi_araddr_reg[14] 
       (.C(aclk),
        .CE(\s_axi_araddr[31]_i_1_n_0 ),
        .D(scanoffset[14]),
        .Q(m_axi_araddr[14]),
        .R(vpucommandinterface_n_32));
  FDRE \s_axi_araddr_reg[15] 
       (.C(aclk),
        .CE(\s_axi_araddr[31]_i_1_n_0 ),
        .D(scanoffset[15]),
        .Q(m_axi_araddr[15]),
        .R(vpucommandinterface_n_32));
  FDRE \s_axi_araddr_reg[16] 
       (.C(aclk),
        .CE(\s_axi_araddr[31]_i_1_n_0 ),
        .D(scanoffset[16]),
        .Q(m_axi_araddr[16]),
        .R(vpucommandinterface_n_32));
  FDRE \s_axi_araddr_reg[17] 
       (.C(aclk),
        .CE(\s_axi_araddr[31]_i_1_n_0 ),
        .D(scanoffset[17]),
        .Q(m_axi_araddr[17]),
        .R(vpucommandinterface_n_32));
  FDRE \s_axi_araddr_reg[18] 
       (.C(aclk),
        .CE(\s_axi_araddr[31]_i_1_n_0 ),
        .D(scanoffset[18]),
        .Q(m_axi_araddr[18]),
        .R(vpucommandinterface_n_32));
  FDRE \s_axi_araddr_reg[19] 
       (.C(aclk),
        .CE(\s_axi_araddr[31]_i_1_n_0 ),
        .D(scanoffset[19]),
        .Q(m_axi_araddr[19]),
        .R(vpucommandinterface_n_32));
  FDRE \s_axi_araddr_reg[1] 
       (.C(aclk),
        .CE(\s_axi_araddr[31]_i_1_n_0 ),
        .D(scanoffset[1]),
        .Q(m_axi_araddr[1]),
        .R(vpucommandinterface_n_32));
  FDRE \s_axi_araddr_reg[20] 
       (.C(aclk),
        .CE(\s_axi_araddr[31]_i_1_n_0 ),
        .D(scanoffset[20]),
        .Q(m_axi_araddr[20]),
        .R(vpucommandinterface_n_32));
  FDRE \s_axi_araddr_reg[21] 
       (.C(aclk),
        .CE(\s_axi_araddr[31]_i_1_n_0 ),
        .D(scanoffset[21]),
        .Q(m_axi_araddr[21]),
        .R(vpucommandinterface_n_32));
  FDRE \s_axi_araddr_reg[22] 
       (.C(aclk),
        .CE(\s_axi_araddr[31]_i_1_n_0 ),
        .D(scanoffset[22]),
        .Q(m_axi_araddr[22]),
        .R(vpucommandinterface_n_32));
  FDRE \s_axi_araddr_reg[23] 
       (.C(aclk),
        .CE(\s_axi_araddr[31]_i_1_n_0 ),
        .D(scanoffset[23]),
        .Q(m_axi_araddr[23]),
        .R(vpucommandinterface_n_32));
  FDRE \s_axi_araddr_reg[24] 
       (.C(aclk),
        .CE(\s_axi_araddr[31]_i_1_n_0 ),
        .D(scanoffset[24]),
        .Q(m_axi_araddr[24]),
        .R(vpucommandinterface_n_32));
  FDRE \s_axi_araddr_reg[25] 
       (.C(aclk),
        .CE(\s_axi_araddr[31]_i_1_n_0 ),
        .D(scanoffset[25]),
        .Q(m_axi_araddr[25]),
        .R(vpucommandinterface_n_32));
  FDRE \s_axi_araddr_reg[26] 
       (.C(aclk),
        .CE(\s_axi_araddr[31]_i_1_n_0 ),
        .D(scanoffset[26]),
        .Q(m_axi_araddr[26]),
        .R(vpucommandinterface_n_32));
  FDRE \s_axi_araddr_reg[27] 
       (.C(aclk),
        .CE(\s_axi_araddr[31]_i_1_n_0 ),
        .D(scanoffset[27]),
        .Q(m_axi_araddr[27]),
        .R(vpucommandinterface_n_32));
  FDRE \s_axi_araddr_reg[28] 
       (.C(aclk),
        .CE(\s_axi_araddr[31]_i_1_n_0 ),
        .D(scanoffset[28]),
        .Q(m_axi_araddr[28]),
        .R(vpucommandinterface_n_32));
  FDRE \s_axi_araddr_reg[29] 
       (.C(aclk),
        .CE(\s_axi_araddr[31]_i_1_n_0 ),
        .D(scanoffset[29]),
        .Q(m_axi_araddr[29]),
        .R(vpucommandinterface_n_32));
  FDRE \s_axi_araddr_reg[2] 
       (.C(aclk),
        .CE(\s_axi_araddr[31]_i_1_n_0 ),
        .D(scanoffset[2]),
        .Q(m_axi_araddr[2]),
        .R(vpucommandinterface_n_32));
  FDRE \s_axi_araddr_reg[30] 
       (.C(aclk),
        .CE(\s_axi_araddr[31]_i_1_n_0 ),
        .D(scanoffset[30]),
        .Q(m_axi_araddr[30]),
        .R(vpucommandinterface_n_32));
  FDRE \s_axi_araddr_reg[31] 
       (.C(aclk),
        .CE(\s_axi_araddr[31]_i_1_n_0 ),
        .D(scanoffset[31]),
        .Q(m_axi_araddr[31]),
        .R(vpucommandinterface_n_32));
  FDRE \s_axi_araddr_reg[3] 
       (.C(aclk),
        .CE(\s_axi_araddr[31]_i_1_n_0 ),
        .D(scanoffset[3]),
        .Q(m_axi_araddr[3]),
        .R(vpucommandinterface_n_32));
  FDRE \s_axi_araddr_reg[4] 
       (.C(aclk),
        .CE(\s_axi_araddr[31]_i_1_n_0 ),
        .D(scanoffset[4]),
        .Q(m_axi_araddr[4]),
        .R(vpucommandinterface_n_32));
  FDRE \s_axi_araddr_reg[5] 
       (.C(aclk),
        .CE(\s_axi_araddr[31]_i_1_n_0 ),
        .D(scanoffset[5]),
        .Q(m_axi_araddr[5]),
        .R(vpucommandinterface_n_32));
  FDRE \s_axi_araddr_reg[6] 
       (.C(aclk),
        .CE(\s_axi_araddr[31]_i_1_n_0 ),
        .D(scanoffset[6]),
        .Q(m_axi_araddr[6]),
        .R(vpucommandinterface_n_32));
  FDRE \s_axi_araddr_reg[7] 
       (.C(aclk),
        .CE(\s_axi_araddr[31]_i_1_n_0 ),
        .D(scanoffset[7]),
        .Q(m_axi_araddr[7]),
        .R(vpucommandinterface_n_32));
  FDRE \s_axi_araddr_reg[8] 
       (.C(aclk),
        .CE(\s_axi_araddr[31]_i_1_n_0 ),
        .D(scanoffset[8]),
        .Q(m_axi_araddr[8]),
        .R(vpucommandinterface_n_32));
  FDRE \s_axi_araddr_reg[9] 
       (.C(aclk),
        .CE(\s_axi_araddr[31]_i_1_n_0 ),
        .D(scanoffset[9]),
        .Q(m_axi_araddr[9]),
        .R(vpucommandinterface_n_32));
  FDRE \s_axi_arlen_reg[3] 
       (.C(aclk),
        .CE(\s_axi_araddr[31]_i_1_n_0 ),
        .D(1'b1),
        .Q(m_axi_arlen),
        .R(vpucommandinterface_n_32));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT5 #(
    .INIT(32'hFF7F0050)) 
    s_axi_arvalid_i_1
       (.I0(\scanstate_reg_n_0_[0] ),
        .I1(m_axi_arready),
        .I2(\scanstate_reg_n_0_[1] ),
        .I3(\scanstate_reg_n_0_[2] ),
        .I4(m_axi_arvalid),
        .O(s_axi_arvalid_i_1_n_0));
  FDRE s_axi_arvalid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_axi_arvalid_i_1_n_0),
        .Q(m_axi_arvalid),
        .R(vpucommandinterface_n_32));
  LUT6 #(
    .INIT(64'hFF773377CF440044)) 
    s_axi_rready_i_1
       (.I0(m_axi_rlast),
        .I1(scanlinedin__0),
        .I2(s_axi_rready_i_2_n_0),
        .I3(\scanstate_reg_n_0_[0] ),
        .I4(m_axi_arready),
        .I5(m_axi_rready),
        .O(s_axi_rready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT2 #(
    .INIT(4'hB)) 
    s_axi_rready_i_2
       (.I0(\scanstate_reg_n_0_[2] ),
        .I1(\scanstate_reg_n_0_[1] ),
        .O(s_axi_rready_i_2_n_0));
  FDRE s_axi_rready_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_axi_rready_i_1_n_0),
        .Q(m_axi_rready),
        .R(vpucommandinterface_n_32));
  FDRE \scanaddr_reg[0] 
       (.C(aclk),
        .CE(vpucommandinterface_n_44),
        .D(vpufifodout[0]),
        .Q(scanaddr[0]),
        .R(vpucommandinterface_n_32));
  FDRE \scanaddr_reg[10] 
       (.C(aclk),
        .CE(vpucommandinterface_n_44),
        .D(vpufifodout[10]),
        .Q(scanaddr[10]),
        .R(vpucommandinterface_n_32));
  FDRE \scanaddr_reg[11] 
       (.C(aclk),
        .CE(vpucommandinterface_n_44),
        .D(vpufifodout[11]),
        .Q(scanaddr[11]),
        .R(vpucommandinterface_n_32));
  FDRE \scanaddr_reg[12] 
       (.C(aclk),
        .CE(vpucommandinterface_n_44),
        .D(vpufifodout[12]),
        .Q(scanaddr[12]),
        .R(vpucommandinterface_n_32));
  FDRE \scanaddr_reg[13] 
       (.C(aclk),
        .CE(vpucommandinterface_n_44),
        .D(vpufifodout[13]),
        .Q(scanaddr[13]),
        .R(vpucommandinterface_n_32));
  FDRE \scanaddr_reg[14] 
       (.C(aclk),
        .CE(vpucommandinterface_n_44),
        .D(vpufifodout[14]),
        .Q(scanaddr[14]),
        .R(vpucommandinterface_n_32));
  FDRE \scanaddr_reg[15] 
       (.C(aclk),
        .CE(vpucommandinterface_n_44),
        .D(vpufifodout[15]),
        .Q(scanaddr[15]),
        .R(vpucommandinterface_n_32));
  FDRE \scanaddr_reg[16] 
       (.C(aclk),
        .CE(vpucommandinterface_n_44),
        .D(vpufifodout[16]),
        .Q(scanaddr[16]),
        .R(vpucommandinterface_n_32));
  FDRE \scanaddr_reg[17] 
       (.C(aclk),
        .CE(vpucommandinterface_n_44),
        .D(vpufifodout[17]),
        .Q(scanaddr[17]),
        .R(vpucommandinterface_n_32));
  FDRE \scanaddr_reg[18] 
       (.C(aclk),
        .CE(vpucommandinterface_n_44),
        .D(vpufifodout[18]),
        .Q(scanaddr[18]),
        .R(vpucommandinterface_n_32));
  FDRE \scanaddr_reg[19] 
       (.C(aclk),
        .CE(vpucommandinterface_n_44),
        .D(vpufifodout[19]),
        .Q(scanaddr[19]),
        .R(vpucommandinterface_n_32));
  FDRE \scanaddr_reg[1] 
       (.C(aclk),
        .CE(vpucommandinterface_n_44),
        .D(vpufifodout[1]),
        .Q(scanaddr[1]),
        .R(vpucommandinterface_n_32));
  FDRE \scanaddr_reg[20] 
       (.C(aclk),
        .CE(vpucommandinterface_n_44),
        .D(vpufifodout[20]),
        .Q(scanaddr[20]),
        .R(vpucommandinterface_n_32));
  FDRE \scanaddr_reg[21] 
       (.C(aclk),
        .CE(vpucommandinterface_n_44),
        .D(vpufifodout[21]),
        .Q(scanaddr[21]),
        .R(vpucommandinterface_n_32));
  FDRE \scanaddr_reg[22] 
       (.C(aclk),
        .CE(vpucommandinterface_n_44),
        .D(vpufifodout[22]),
        .Q(scanaddr[22]),
        .R(vpucommandinterface_n_32));
  FDRE \scanaddr_reg[23] 
       (.C(aclk),
        .CE(vpucommandinterface_n_44),
        .D(vpufifodout[23]),
        .Q(scanaddr[23]),
        .R(vpucommandinterface_n_32));
  FDSE \scanaddr_reg[24] 
       (.C(aclk),
        .CE(vpucommandinterface_n_44),
        .D(vpufifodout[24]),
        .Q(scanaddr[24]),
        .S(vpucommandinterface_n_32));
  FDSE \scanaddr_reg[25] 
       (.C(aclk),
        .CE(vpucommandinterface_n_44),
        .D(vpufifodout[25]),
        .Q(scanaddr[25]),
        .S(vpucommandinterface_n_32));
  FDSE \scanaddr_reg[26] 
       (.C(aclk),
        .CE(vpucommandinterface_n_44),
        .D(vpufifodout[26]),
        .Q(scanaddr[26]),
        .S(vpucommandinterface_n_32));
  FDSE \scanaddr_reg[27] 
       (.C(aclk),
        .CE(vpucommandinterface_n_44),
        .D(vpufifodout[27]),
        .Q(scanaddr[27]),
        .S(vpucommandinterface_n_32));
  FDSE \scanaddr_reg[28] 
       (.C(aclk),
        .CE(vpucommandinterface_n_44),
        .D(vpufifodout[28]),
        .Q(scanaddr[28]),
        .S(vpucommandinterface_n_32));
  FDRE \scanaddr_reg[29] 
       (.C(aclk),
        .CE(vpucommandinterface_n_44),
        .D(vpufifodout[29]),
        .Q(scanaddr[29]),
        .R(vpucommandinterface_n_32));
  FDRE \scanaddr_reg[2] 
       (.C(aclk),
        .CE(vpucommandinterface_n_44),
        .D(vpufifodout[2]),
        .Q(scanaddr[2]),
        .R(vpucommandinterface_n_32));
  FDRE \scanaddr_reg[30] 
       (.C(aclk),
        .CE(vpucommandinterface_n_44),
        .D(vpufifodout[30]),
        .Q(scanaddr[30]),
        .R(vpucommandinterface_n_32));
  FDRE \scanaddr_reg[31] 
       (.C(aclk),
        .CE(vpucommandinterface_n_44),
        .D(vpufifodout[31]),
        .Q(scanaddr[31]),
        .R(vpucommandinterface_n_32));
  FDRE \scanaddr_reg[3] 
       (.C(aclk),
        .CE(vpucommandinterface_n_44),
        .D(vpufifodout[3]),
        .Q(scanaddr[3]),
        .R(vpucommandinterface_n_32));
  FDRE \scanaddr_reg[4] 
       (.C(aclk),
        .CE(vpucommandinterface_n_44),
        .D(vpufifodout[4]),
        .Q(scanaddr[4]),
        .R(vpucommandinterface_n_32));
  FDRE \scanaddr_reg[5] 
       (.C(aclk),
        .CE(vpucommandinterface_n_44),
        .D(vpufifodout[5]),
        .Q(scanaddr[5]),
        .R(vpucommandinterface_n_32));
  FDRE \scanaddr_reg[6] 
       (.C(aclk),
        .CE(vpucommandinterface_n_44),
        .D(vpufifodout[6]),
        .Q(scanaddr[6]),
        .R(vpucommandinterface_n_32));
  FDRE \scanaddr_reg[7] 
       (.C(aclk),
        .CE(vpucommandinterface_n_44),
        .D(vpufifodout[7]),
        .Q(scanaddr[7]),
        .R(vpucommandinterface_n_32));
  FDRE \scanaddr_reg[8] 
       (.C(aclk),
        .CE(vpucommandinterface_n_44),
        .D(vpufifodout[8]),
        .Q(scanaddr[8]),
        .R(vpucommandinterface_n_32));
  FDRE \scanaddr_reg[9] 
       (.C(aclk),
        .CE(vpucommandinterface_n_44),
        .D(vpufifodout[9]),
        .Q(scanaddr[9]),
        .R(vpucommandinterface_n_32));
  FDSE scanenable_reg
       (.C(aclk),
        .CE(vpucommandinterface_n_45),
        .D(vpufifodout[0]),
        .Q(p_0_out[1]),
        .S(vpucommandinterface_n_32));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \scanline_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(scanlinepre[0]),
        .Q(scanline[0]),
        .R(vpucommandinterface_n_32));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \scanline_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(scanlinepre[1]),
        .Q(scanline[1]),
        .R(vpucommandinterface_n_32));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \scanline_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(scanlinepre[2]),
        .Q(scanline[2]),
        .R(vpucommandinterface_n_32));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \scanline_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(scanlinepre[3]),
        .Q(scanline[3]),
        .R(vpucommandinterface_n_32));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \scanline_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(scanlinepre[4]),
        .Q(scanline[4]),
        .R(vpucommandinterface_n_32));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \scanline_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(scanlinepre[5]),
        .Q(scanline[5]),
        .R(vpucommandinterface_n_32));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \scanline_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(scanlinepre[6]),
        .Q(scanline[6]),
        .R(vpucommandinterface_n_32));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \scanline_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(scanlinepre[7]),
        .Q(scanline[7]),
        .R(vpucommandinterface_n_32));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \scanline_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(scanlinepre[8]),
        .Q(scanline[8]),
        .R(vpucommandinterface_n_32));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \scanline_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(scanlinepre[9]),
        .Q(scanline[9]),
        .R(vpucommandinterface_n_32));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/scanlinecache_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'hAAAAAAAAAAAAAAAA),
    .INIT_B(64'hCCCCCCCCCCCCCCCC),
    .INIT_C(64'hF0F0F0F0F0F0F0F0),
    .INIT_D(64'h0000000000000000)) 
    scanlinecache_reg_0_63_0_2
       (.ADDRA(scanlinera),
        .ADDRB(scanlinera),
        .ADDRC(scanlinera),
        .ADDRD(scanlinewa[5:0]),
        .DIA(scanlinedin[0]),
        .DIB(scanlinedin[1]),
        .DIC(scanlinedin[2]),
        .DID(1'b0),
        .DOA(scanlinecache_reg_0_63_0_2_n_0),
        .DOB(scanlinecache_reg_0_63_0_2_n_1),
        .DOC(scanlinecache_reg_0_63_0_2_n_2),
        .DOD(NLW_scanlinecache_reg_0_63_0_2_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_0_63_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h02)) 
    scanlinecache_reg_0_63_0_2_i_1
       (.I0(scanlinewe),
        .I1(scanlinewa[6]),
        .I2(scanlinewa[7]),
        .O(scanlinecache_reg_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/scanlinecache_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "14" *) 
  RAM64M #(
    .INIT_A(64'hFFFF0000FFFF0000),
    .INIT_B(64'hFFFFFFFF00000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    scanlinecache_reg_0_63_12_14
       (.ADDRA(scanlinera),
        .ADDRB(scanlinera),
        .ADDRC(scanlinera),
        .ADDRD(scanlinewa[5:0]),
        .DIA(scanlinedin[12]),
        .DIB(scanlinedin[13]),
        .DIC(scanlinedin[14]),
        .DID(1'b0),
        .DOA(scanlinecache_reg_0_63_12_14_n_0),
        .DOB(scanlinecache_reg_0_63_12_14_n_1),
        .DOC(scanlinecache_reg_0_63_12_14_n_2),
        .DOD(NLW_scanlinecache_reg_0_63_12_14_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/scanlinecache_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "17" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'hAAAAAAAAAAAAAAAA),
    .INIT_C(64'hCCCCCCCCCCCCCCCC),
    .INIT_D(64'h0000000000000000)) 
    scanlinecache_reg_0_63_15_17
       (.ADDRA(scanlinera),
        .ADDRB(scanlinera),
        .ADDRC(scanlinera),
        .ADDRD(scanlinewa[5:0]),
        .DIA(scanlinedin[15]),
        .DIB(scanlinedin[16]),
        .DIC(scanlinedin[17]),
        .DID(1'b0),
        .DOA(scanlinecache_reg_0_63_15_17_n_0),
        .DOB(scanlinecache_reg_0_63_15_17_n_1),
        .DOC(scanlinecache_reg_0_63_15_17_n_2),
        .DOD(NLW_scanlinecache_reg_0_63_15_17_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/scanlinecache_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "20" *) 
  RAM64M #(
    .INIT_A(64'hF0F0F0F0F0F0F0F0),
    .INIT_B(64'hFF00FF00FF00FF00),
    .INIT_C(64'hFFFF0000FFFF0000),
    .INIT_D(64'h0000000000000000)) 
    scanlinecache_reg_0_63_18_20
       (.ADDRA(scanlinera),
        .ADDRB(scanlinera),
        .ADDRC(scanlinera),
        .ADDRD(scanlinewa[5:0]),
        .DIA(scanlinedin[18]),
        .DIB(scanlinedin[19]),
        .DIC(scanlinedin[20]),
        .DID(1'b0),
        .DOA(scanlinecache_reg_0_63_18_20_n_0),
        .DOB(scanlinecache_reg_0_63_18_20_n_1),
        .DOC(scanlinecache_reg_0_63_18_20_n_2),
        .DOD(NLW_scanlinecache_reg_0_63_18_20_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/scanlinecache_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "23" *) 
  RAM64M #(
    .INIT_A(64'hFFFFFFFF00000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    scanlinecache_reg_0_63_21_23
       (.ADDRA(scanlinera),
        .ADDRB(scanlinera),
        .ADDRC(scanlinera),
        .ADDRD(scanlinewa[5:0]),
        .DIA(scanlinedin[21]),
        .DIB(scanlinedin[22]),
        .DIC(scanlinedin[23]),
        .DID(1'b0),
        .DOA(scanlinecache_reg_0_63_21_23_n_0),
        .DOB(scanlinecache_reg_0_63_21_23_n_1),
        .DOC(scanlinecache_reg_0_63_21_23_n_2),
        .DOD(NLW_scanlinecache_reg_0_63_21_23_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/scanlinecache_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "26" *) 
  RAM64M #(
    .INIT_A(64'hAAAAAAAAAAAAAAAA),
    .INIT_B(64'hCCCCCCCCCCCCCCCC),
    .INIT_C(64'hF0F0F0F0F0F0F0F0),
    .INIT_D(64'h0000000000000000)) 
    scanlinecache_reg_0_63_24_26
       (.ADDRA(scanlinera),
        .ADDRB(scanlinera),
        .ADDRC(scanlinera),
        .ADDRD(scanlinewa[5:0]),
        .DIA(scanlinedin[24]),
        .DIB(scanlinedin[25]),
        .DIC(scanlinedin[26]),
        .DID(1'b0),
        .DOA(scanlinecache_reg_0_63_24_26_n_0),
        .DOB(scanlinecache_reg_0_63_24_26_n_1),
        .DOC(scanlinecache_reg_0_63_24_26_n_2),
        .DOD(NLW_scanlinecache_reg_0_63_24_26_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/scanlinecache_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "27" *) 
  (* ram_slice_end = "29" *) 
  RAM64M #(
    .INIT_A(64'hFF00FF00FF00FF00),
    .INIT_B(64'hFFFF0000FFFF0000),
    .INIT_C(64'hFFFFFFFF00000000),
    .INIT_D(64'h0000000000000000)) 
    scanlinecache_reg_0_63_27_29
       (.ADDRA(scanlinera),
        .ADDRB(scanlinera),
        .ADDRC(scanlinera),
        .ADDRD(scanlinewa[5:0]),
        .DIA(scanlinedin[27]),
        .DIB(scanlinedin[28]),
        .DIC(scanlinedin[29]),
        .DID(1'b0),
        .DOA(scanlinecache_reg_0_63_27_29_n_0),
        .DOB(scanlinecache_reg_0_63_27_29_n_1),
        .DOC(scanlinecache_reg_0_63_27_29_n_2),
        .DOD(NLW_scanlinecache_reg_0_63_27_29_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/scanlinecache_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "32" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'hAAAAAAAAAAAAAAAA),
    .INIT_D(64'h0000000000000000)) 
    scanlinecache_reg_0_63_30_32
       (.ADDRA(scanlinera),
        .ADDRB(scanlinera),
        .ADDRC(scanlinera),
        .ADDRD(scanlinewa[5:0]),
        .DIA(scanlinedin[30]),
        .DIB(scanlinedin[31]),
        .DIC(scanlinedin[32]),
        .DID(1'b0),
        .DOA(scanlinecache_reg_0_63_30_32_n_0),
        .DOB(scanlinecache_reg_0_63_30_32_n_1),
        .DOC(scanlinecache_reg_0_63_30_32_n_2),
        .DOD(NLW_scanlinecache_reg_0_63_30_32_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/scanlinecache_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "33" *) 
  (* ram_slice_end = "35" *) 
  RAM64M #(
    .INIT_A(64'hCCCCCCCCCCCCCCCC),
    .INIT_B(64'hF0F0F0F0F0F0F0F0),
    .INIT_C(64'hFF00FF00FF00FF00),
    .INIT_D(64'h0000000000000000)) 
    scanlinecache_reg_0_63_33_35
       (.ADDRA(scanlinera),
        .ADDRB(scanlinera),
        .ADDRC(scanlinera),
        .ADDRD(scanlinewa[5:0]),
        .DIA(scanlinedin[33]),
        .DIB(scanlinedin[34]),
        .DIC(scanlinedin[35]),
        .DID(1'b0),
        .DOA(scanlinecache_reg_0_63_33_35_n_0),
        .DOB(scanlinecache_reg_0_63_33_35_n_1),
        .DOC(scanlinecache_reg_0_63_33_35_n_2),
        .DOD(NLW_scanlinecache_reg_0_63_33_35_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/scanlinecache_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "36" *) 
  (* ram_slice_end = "38" *) 
  RAM64M #(
    .INIT_A(64'hFFFF0000FFFF0000),
    .INIT_B(64'hFFFFFFFF00000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    scanlinecache_reg_0_63_36_38
       (.ADDRA(scanlinera),
        .ADDRB(scanlinera),
        .ADDRC(scanlinera),
        .ADDRD(scanlinewa[5:0]),
        .DIA(scanlinedin[36]),
        .DIB(scanlinedin[37]),
        .DIC(scanlinedin[38]),
        .DID(1'b0),
        .DOA(scanlinecache_reg_0_63_36_38_n_0),
        .DOB(scanlinecache_reg_0_63_36_38_n_1),
        .DOC(scanlinecache_reg_0_63_36_38_n_2),
        .DOD(NLW_scanlinecache_reg_0_63_36_38_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/scanlinecache_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "39" *) 
  (* ram_slice_end = "41" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'hAAAAAAAAAAAAAAAA),
    .INIT_C(64'hCCCCCCCCCCCCCCCC),
    .INIT_D(64'h0000000000000000)) 
    scanlinecache_reg_0_63_39_41
       (.ADDRA(scanlinera),
        .ADDRB(scanlinera),
        .ADDRC(scanlinera),
        .ADDRD(scanlinewa[5:0]),
        .DIA(scanlinedin[39]),
        .DIB(scanlinedin[40]),
        .DIC(scanlinedin[41]),
        .DID(1'b0),
        .DOA(scanlinecache_reg_0_63_39_41_n_0),
        .DOB(scanlinecache_reg_0_63_39_41_n_1),
        .DOC(scanlinecache_reg_0_63_39_41_n_2),
        .DOD(NLW_scanlinecache_reg_0_63_39_41_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/scanlinecache_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'hFF00FF00FF00FF00),
    .INIT_B(64'hFFFF0000FFFF0000),
    .INIT_C(64'hFFFFFFFF00000000),
    .INIT_D(64'h0000000000000000)) 
    scanlinecache_reg_0_63_3_5
       (.ADDRA(scanlinera),
        .ADDRB(scanlinera),
        .ADDRC(scanlinera),
        .ADDRD(scanlinewa[5:0]),
        .DIA(scanlinedin[3]),
        .DIB(scanlinedin[4]),
        .DIC(scanlinedin[5]),
        .DID(1'b0),
        .DOA(scanlinecache_reg_0_63_3_5_n_0),
        .DOB(scanlinecache_reg_0_63_3_5_n_1),
        .DOC(scanlinecache_reg_0_63_3_5_n_2),
        .DOD(NLW_scanlinecache_reg_0_63_3_5_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/scanlinecache_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "42" *) 
  (* ram_slice_end = "44" *) 
  RAM64M #(
    .INIT_A(64'hF0F0F0F0F0F0F0F0),
    .INIT_B(64'hFF00FF00FF00FF00),
    .INIT_C(64'hFFFF0000FFFF0000),
    .INIT_D(64'h0000000000000000)) 
    scanlinecache_reg_0_63_42_44
       (.ADDRA(scanlinera),
        .ADDRB(scanlinera),
        .ADDRC(scanlinera),
        .ADDRD(scanlinewa[5:0]),
        .DIA(scanlinedin[42]),
        .DIB(scanlinedin[43]),
        .DIC(scanlinedin[44]),
        .DID(1'b0),
        .DOA(scanlinecache_reg_0_63_42_44_n_0),
        .DOB(scanlinecache_reg_0_63_42_44_n_1),
        .DOC(scanlinecache_reg_0_63_42_44_n_2),
        .DOD(NLW_scanlinecache_reg_0_63_42_44_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/scanlinecache_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "45" *) 
  (* ram_slice_end = "47" *) 
  RAM64M #(
    .INIT_A(64'hFFFFFFFF00000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    scanlinecache_reg_0_63_45_47
       (.ADDRA(scanlinera),
        .ADDRB(scanlinera),
        .ADDRC(scanlinera),
        .ADDRD(scanlinewa[5:0]),
        .DIA(scanlinedin[45]),
        .DIB(scanlinedin[46]),
        .DIC(scanlinedin[47]),
        .DID(1'b0),
        .DOA(scanlinecache_reg_0_63_45_47_n_0),
        .DOB(scanlinecache_reg_0_63_45_47_n_1),
        .DOC(scanlinecache_reg_0_63_45_47_n_2),
        .DOD(NLW_scanlinecache_reg_0_63_45_47_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/scanlinecache_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "48" *) 
  (* ram_slice_end = "50" *) 
  RAM64M #(
    .INIT_A(64'hAAAAAAAAAAAAAAAA),
    .INIT_B(64'hCCCCCCCCCCCCCCCC),
    .INIT_C(64'hF0F0F0F0F0F0F0F0),
    .INIT_D(64'h0000000000000000)) 
    scanlinecache_reg_0_63_48_50
       (.ADDRA(scanlinera),
        .ADDRB(scanlinera),
        .ADDRC(scanlinera),
        .ADDRD(scanlinewa[5:0]),
        .DIA(scanlinedin[48]),
        .DIB(scanlinedin[49]),
        .DIC(scanlinedin[50]),
        .DID(1'b0),
        .DOA(scanlinecache_reg_0_63_48_50_n_0),
        .DOB(scanlinecache_reg_0_63_48_50_n_1),
        .DOC(scanlinecache_reg_0_63_48_50_n_2),
        .DOD(NLW_scanlinecache_reg_0_63_48_50_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/scanlinecache_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "51" *) 
  (* ram_slice_end = "53" *) 
  RAM64M #(
    .INIT_A(64'hFF00FF00FF00FF00),
    .INIT_B(64'hFFFF0000FFFF0000),
    .INIT_C(64'hFFFFFFFF00000000),
    .INIT_D(64'h0000000000000000)) 
    scanlinecache_reg_0_63_51_53
       (.ADDRA(scanlinera),
        .ADDRB(scanlinera),
        .ADDRC(scanlinera),
        .ADDRD(scanlinewa[5:0]),
        .DIA(scanlinedin[51]),
        .DIB(scanlinedin[52]),
        .DIC(scanlinedin[53]),
        .DID(1'b0),
        .DOA(scanlinecache_reg_0_63_51_53_n_0),
        .DOB(scanlinecache_reg_0_63_51_53_n_1),
        .DOC(scanlinecache_reg_0_63_51_53_n_2),
        .DOD(NLW_scanlinecache_reg_0_63_51_53_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/scanlinecache_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "54" *) 
  (* ram_slice_end = "56" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'hAAAAAAAAAAAAAAAA),
    .INIT_D(64'h0000000000000000)) 
    scanlinecache_reg_0_63_54_56
       (.ADDRA(scanlinera),
        .ADDRB(scanlinera),
        .ADDRC(scanlinera),
        .ADDRD(scanlinewa[5:0]),
        .DIA(scanlinedin[54]),
        .DIB(scanlinedin[55]),
        .DIC(scanlinedin[56]),
        .DID(1'b0),
        .DOA(scanlinecache_reg_0_63_54_56_n_0),
        .DOB(scanlinecache_reg_0_63_54_56_n_1),
        .DOC(scanlinecache_reg_0_63_54_56_n_2),
        .DOD(NLW_scanlinecache_reg_0_63_54_56_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/scanlinecache_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "57" *) 
  (* ram_slice_end = "59" *) 
  RAM64M #(
    .INIT_A(64'hCCCCCCCCCCCCCCCC),
    .INIT_B(64'hF0F0F0F0F0F0F0F0),
    .INIT_C(64'hFF00FF00FF00FF00),
    .INIT_D(64'h0000000000000000)) 
    scanlinecache_reg_0_63_57_59
       (.ADDRA(scanlinera),
        .ADDRB(scanlinera),
        .ADDRC(scanlinera),
        .ADDRD(scanlinewa[5:0]),
        .DIA(scanlinedin[57]),
        .DIB(scanlinedin[58]),
        .DIC(scanlinedin[59]),
        .DID(1'b0),
        .DOA(scanlinecache_reg_0_63_57_59_n_0),
        .DOB(scanlinecache_reg_0_63_57_59_n_1),
        .DOC(scanlinecache_reg_0_63_57_59_n_2),
        .DOD(NLW_scanlinecache_reg_0_63_57_59_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/scanlinecache_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "60" *) 
  (* ram_slice_end = "62" *) 
  RAM64M #(
    .INIT_A(64'hFFFF0000FFFF0000),
    .INIT_B(64'hFFFFFFFF00000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    scanlinecache_reg_0_63_60_62
       (.ADDRA(scanlinera),
        .ADDRB(scanlinera),
        .ADDRC(scanlinera),
        .ADDRD(scanlinewa[5:0]),
        .DIA(scanlinedin[60]),
        .DIB(scanlinedin[61]),
        .DIC(scanlinedin[62]),
        .DID(1'b0),
        .DOA(scanlinecache_reg_0_63_60_62_n_0),
        .DOB(scanlinecache_reg_0_63_60_62_n_1),
        .DOC(scanlinecache_reg_0_63_60_62_n_2),
        .DOD(NLW_scanlinecache_reg_0_63_60_62_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/videocoreInst/scanlinecache_reg_0_63_63_63" *) 
  (* RTL_RAM_STYLE = "NONE" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "63" *) 
  (* ram_slice_end = "63" *) 
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    scanlinecache_reg_0_63_63_63
       (.A0(scanlinewa[0]),
        .A1(scanlinewa[1]),
        .A2(scanlinewa[2]),
        .A3(scanlinewa[3]),
        .A4(scanlinewa[4]),
        .A5(scanlinewa[5]),
        .D(scanlinedin[63]),
        .DPO(scanlinecache_reg_0_63_63_63_n_0),
        .DPRA0(scanlinera[0]),
        .DPRA1(scanlinera[1]),
        .DPRA2(scanlinera[2]),
        .DPRA3(scanlinera[3]),
        .DPRA4(scanlinera[4]),
        .DPRA5(scanlinera[5]),
        .SPO(NLW_scanlinecache_reg_0_63_63_63_SPO_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/scanlinecache_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'hAAAAAAAAAAAAAAAA),
    .INIT_D(64'h0000000000000000)) 
    scanlinecache_reg_0_63_6_8
       (.ADDRA(scanlinera),
        .ADDRB(scanlinera),
        .ADDRC(scanlinera),
        .ADDRD(scanlinewa[5:0]),
        .DIA(scanlinedin[6]),
        .DIB(scanlinedin[7]),
        .DIC(scanlinedin[8]),
        .DID(1'b0),
        .DOA(scanlinecache_reg_0_63_6_8_n_0),
        .DOB(scanlinecache_reg_0_63_6_8_n_1),
        .DOC(scanlinecache_reg_0_63_6_8_n_2),
        .DOD(NLW_scanlinecache_reg_0_63_6_8_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/scanlinecache_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M #(
    .INIT_A(64'hCCCCCCCCCCCCCCCC),
    .INIT_B(64'hF0F0F0F0F0F0F0F0),
    .INIT_C(64'hFF00FF00FF00FF00),
    .INIT_D(64'h0000000000000000)) 
    scanlinecache_reg_0_63_9_11
       (.ADDRA(scanlinera),
        .ADDRB(scanlinera),
        .ADDRC(scanlinera),
        .ADDRD(scanlinewa[5:0]),
        .DIA(scanlinedin[9]),
        .DIB(scanlinedin[10]),
        .DIC(scanlinedin[11]),
        .DID(1'b0),
        .DOA(scanlinecache_reg_0_63_9_11_n_0),
        .DOB(scanlinecache_reg_0_63_9_11_n_1),
        .DOC(scanlinecache_reg_0_63_9_11_n_2),
        .DOD(NLW_scanlinecache_reg_0_63_9_11_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/scanlinecache_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'hAAAAAAAAAAAAAAAA),
    .INIT_B(64'hCCCCCCCCCCCCCCCC),
    .INIT_C(64'hF0F0F0F0F0F0F0F0),
    .INIT_D(64'h0000000000000000)) 
    scanlinecache_reg_128_191_0_2
       (.ADDRA(scanlinera),
        .ADDRB(scanlinera),
        .ADDRC(scanlinera),
        .ADDRD(scanlinewa[5:0]),
        .DIA(scanlinedin[0]),
        .DIB(scanlinedin[1]),
        .DIC(scanlinedin[2]),
        .DID(1'b0),
        .DOA(scanlinecache_reg_128_191_0_2_n_0),
        .DOB(scanlinecache_reg_128_191_0_2_n_1),
        .DOC(scanlinecache_reg_128_191_0_2_n_2),
        .DOD(NLW_scanlinecache_reg_128_191_0_2_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_128_191_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h40)) 
    scanlinecache_reg_128_191_0_2_i_1
       (.I0(scanlinewa[6]),
        .I1(scanlinewa[7]),
        .I2(scanlinewe),
        .O(scanlinecache_reg_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/scanlinecache_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "14" *) 
  RAM64M #(
    .INIT_A(64'hFFFF0000FFFF0000),
    .INIT_B(64'hFFFFFFFF00000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    scanlinecache_reg_128_191_12_14
       (.ADDRA(scanlinera),
        .ADDRB(scanlinera),
        .ADDRC(scanlinera),
        .ADDRD(scanlinewa[5:0]),
        .DIA(scanlinedin[12]),
        .DIB(scanlinedin[13]),
        .DIC(scanlinedin[14]),
        .DID(1'b0),
        .DOA(scanlinecache_reg_128_191_12_14_n_0),
        .DOB(scanlinecache_reg_128_191_12_14_n_1),
        .DOC(scanlinecache_reg_128_191_12_14_n_2),
        .DOD(NLW_scanlinecache_reg_128_191_12_14_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/scanlinecache_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "17" *) 
  RAM64M #(
    .INIT_A(64'hFFFFFFFFFFFFFFFF),
    .INIT_B(64'hAAAAAAAAAAAAAAAA),
    .INIT_C(64'hCCCCCCCCCCCCCCCC),
    .INIT_D(64'h0000000000000000)) 
    scanlinecache_reg_128_191_15_17
       (.ADDRA(scanlinera),
        .ADDRB(scanlinera),
        .ADDRC(scanlinera),
        .ADDRD(scanlinewa[5:0]),
        .DIA(scanlinedin[15]),
        .DIB(scanlinedin[16]),
        .DIC(scanlinedin[17]),
        .DID(1'b0),
        .DOA(scanlinecache_reg_128_191_15_17_n_0),
        .DOB(scanlinecache_reg_128_191_15_17_n_1),
        .DOC(scanlinecache_reg_128_191_15_17_n_2),
        .DOD(NLW_scanlinecache_reg_128_191_15_17_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/scanlinecache_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "20" *) 
  RAM64M #(
    .INIT_A(64'hF0F0F0F0F0F0F0F0),
    .INIT_B(64'hFF00FF00FF00FF00),
    .INIT_C(64'hFFFF0000FFFF0000),
    .INIT_D(64'h0000000000000000)) 
    scanlinecache_reg_128_191_18_20
       (.ADDRA(scanlinera),
        .ADDRB(scanlinera),
        .ADDRC(scanlinera),
        .ADDRD(scanlinewa[5:0]),
        .DIA(scanlinedin[18]),
        .DIB(scanlinedin[19]),
        .DIC(scanlinedin[20]),
        .DID(1'b0),
        .DOA(scanlinecache_reg_128_191_18_20_n_0),
        .DOB(scanlinecache_reg_128_191_18_20_n_1),
        .DOC(scanlinecache_reg_128_191_18_20_n_2),
        .DOD(NLW_scanlinecache_reg_128_191_18_20_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/scanlinecache_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "23" *) 
  RAM64M #(
    .INIT_A(64'hFFFFFFFF00000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'hFFFFFFFFFFFFFFFF),
    .INIT_D(64'h0000000000000000)) 
    scanlinecache_reg_128_191_21_23
       (.ADDRA(scanlinera),
        .ADDRB(scanlinera),
        .ADDRC(scanlinera),
        .ADDRD(scanlinewa[5:0]),
        .DIA(scanlinedin[21]),
        .DIB(scanlinedin[22]),
        .DIC(scanlinedin[23]),
        .DID(1'b0),
        .DOA(scanlinecache_reg_128_191_21_23_n_0),
        .DOB(scanlinecache_reg_128_191_21_23_n_1),
        .DOC(scanlinecache_reg_128_191_21_23_n_2),
        .DOD(NLW_scanlinecache_reg_128_191_21_23_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/scanlinecache_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "26" *) 
  RAM64M #(
    .INIT_A(64'hAAAAAAAAAAAAAAAA),
    .INIT_B(64'hCCCCCCCCCCCCCCCC),
    .INIT_C(64'hF0F0F0F0F0F0F0F0),
    .INIT_D(64'h0000000000000000)) 
    scanlinecache_reg_128_191_24_26
       (.ADDRA(scanlinera),
        .ADDRB(scanlinera),
        .ADDRC(scanlinera),
        .ADDRD(scanlinewa[5:0]),
        .DIA(scanlinedin[24]),
        .DIB(scanlinedin[25]),
        .DIC(scanlinedin[26]),
        .DID(1'b0),
        .DOA(scanlinecache_reg_128_191_24_26_n_0),
        .DOB(scanlinecache_reg_128_191_24_26_n_1),
        .DOC(scanlinecache_reg_128_191_24_26_n_2),
        .DOD(NLW_scanlinecache_reg_128_191_24_26_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/scanlinecache_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "27" *) 
  (* ram_slice_end = "29" *) 
  RAM64M #(
    .INIT_A(64'hFF00FF00FF00FF00),
    .INIT_B(64'hFFFF0000FFFF0000),
    .INIT_C(64'hFFFFFFFF00000000),
    .INIT_D(64'h0000000000000000)) 
    scanlinecache_reg_128_191_27_29
       (.ADDRA(scanlinera),
        .ADDRB(scanlinera),
        .ADDRC(scanlinera),
        .ADDRD(scanlinewa[5:0]),
        .DIA(scanlinedin[27]),
        .DIB(scanlinedin[28]),
        .DIC(scanlinedin[29]),
        .DID(1'b0),
        .DOA(scanlinecache_reg_128_191_27_29_n_0),
        .DOB(scanlinecache_reg_128_191_27_29_n_1),
        .DOC(scanlinecache_reg_128_191_27_29_n_2),
        .DOD(NLW_scanlinecache_reg_128_191_27_29_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/scanlinecache_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "32" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'hFFFFFFFFFFFFFFFF),
    .INIT_C(64'hAAAAAAAAAAAAAAAA),
    .INIT_D(64'h0000000000000000)) 
    scanlinecache_reg_128_191_30_32
       (.ADDRA(scanlinera),
        .ADDRB(scanlinera),
        .ADDRC(scanlinera),
        .ADDRD(scanlinewa[5:0]),
        .DIA(scanlinedin[30]),
        .DIB(scanlinedin[31]),
        .DIC(scanlinedin[32]),
        .DID(1'b0),
        .DOA(scanlinecache_reg_128_191_30_32_n_0),
        .DOB(scanlinecache_reg_128_191_30_32_n_1),
        .DOC(scanlinecache_reg_128_191_30_32_n_2),
        .DOD(NLW_scanlinecache_reg_128_191_30_32_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/scanlinecache_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "33" *) 
  (* ram_slice_end = "35" *) 
  RAM64M #(
    .INIT_A(64'hCCCCCCCCCCCCCCCC),
    .INIT_B(64'hF0F0F0F0F0F0F0F0),
    .INIT_C(64'hFF00FF00FF00FF00),
    .INIT_D(64'h0000000000000000)) 
    scanlinecache_reg_128_191_33_35
       (.ADDRA(scanlinera),
        .ADDRB(scanlinera),
        .ADDRC(scanlinera),
        .ADDRD(scanlinewa[5:0]),
        .DIA(scanlinedin[33]),
        .DIB(scanlinedin[34]),
        .DIC(scanlinedin[35]),
        .DID(1'b0),
        .DOA(scanlinecache_reg_128_191_33_35_n_0),
        .DOB(scanlinecache_reg_128_191_33_35_n_1),
        .DOC(scanlinecache_reg_128_191_33_35_n_2),
        .DOD(NLW_scanlinecache_reg_128_191_33_35_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/scanlinecache_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "36" *) 
  (* ram_slice_end = "38" *) 
  RAM64M #(
    .INIT_A(64'hFFFF0000FFFF0000),
    .INIT_B(64'hFFFFFFFF00000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    scanlinecache_reg_128_191_36_38
       (.ADDRA(scanlinera),
        .ADDRB(scanlinera),
        .ADDRC(scanlinera),
        .ADDRD(scanlinewa[5:0]),
        .DIA(scanlinedin[36]),
        .DIB(scanlinedin[37]),
        .DIC(scanlinedin[38]),
        .DID(1'b0),
        .DOA(scanlinecache_reg_128_191_36_38_n_0),
        .DOB(scanlinecache_reg_128_191_36_38_n_1),
        .DOC(scanlinecache_reg_128_191_36_38_n_2),
        .DOD(NLW_scanlinecache_reg_128_191_36_38_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/scanlinecache_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "39" *) 
  (* ram_slice_end = "41" *) 
  RAM64M #(
    .INIT_A(64'hFFFFFFFFFFFFFFFF),
    .INIT_B(64'hAAAAAAAAAAAAAAAA),
    .INIT_C(64'hCCCCCCCCCCCCCCCC),
    .INIT_D(64'h0000000000000000)) 
    scanlinecache_reg_128_191_39_41
       (.ADDRA(scanlinera),
        .ADDRB(scanlinera),
        .ADDRC(scanlinera),
        .ADDRD(scanlinewa[5:0]),
        .DIA(scanlinedin[39]),
        .DIB(scanlinedin[40]),
        .DIC(scanlinedin[41]),
        .DID(1'b0),
        .DOA(scanlinecache_reg_128_191_39_41_n_0),
        .DOB(scanlinecache_reg_128_191_39_41_n_1),
        .DOC(scanlinecache_reg_128_191_39_41_n_2),
        .DOD(NLW_scanlinecache_reg_128_191_39_41_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/scanlinecache_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'hFF00FF00FF00FF00),
    .INIT_B(64'hFFFF0000FFFF0000),
    .INIT_C(64'hFFFFFFFF00000000),
    .INIT_D(64'h0000000000000000)) 
    scanlinecache_reg_128_191_3_5
       (.ADDRA(scanlinera),
        .ADDRB(scanlinera),
        .ADDRC(scanlinera),
        .ADDRD(scanlinewa[5:0]),
        .DIA(scanlinedin[3]),
        .DIB(scanlinedin[4]),
        .DIC(scanlinedin[5]),
        .DID(1'b0),
        .DOA(scanlinecache_reg_128_191_3_5_n_0),
        .DOB(scanlinecache_reg_128_191_3_5_n_1),
        .DOC(scanlinecache_reg_128_191_3_5_n_2),
        .DOD(NLW_scanlinecache_reg_128_191_3_5_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/scanlinecache_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "42" *) 
  (* ram_slice_end = "44" *) 
  RAM64M #(
    .INIT_A(64'hF0F0F0F0F0F0F0F0),
    .INIT_B(64'hFF00FF00FF00FF00),
    .INIT_C(64'hFFFF0000FFFF0000),
    .INIT_D(64'h0000000000000000)) 
    scanlinecache_reg_128_191_42_44
       (.ADDRA(scanlinera),
        .ADDRB(scanlinera),
        .ADDRC(scanlinera),
        .ADDRD(scanlinewa[5:0]),
        .DIA(scanlinedin[42]),
        .DIB(scanlinedin[43]),
        .DIC(scanlinedin[44]),
        .DID(1'b0),
        .DOA(scanlinecache_reg_128_191_42_44_n_0),
        .DOB(scanlinecache_reg_128_191_42_44_n_1),
        .DOC(scanlinecache_reg_128_191_42_44_n_2),
        .DOD(NLW_scanlinecache_reg_128_191_42_44_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/scanlinecache_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "45" *) 
  (* ram_slice_end = "47" *) 
  RAM64M #(
    .INIT_A(64'hFFFFFFFF00000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'hFFFFFFFFFFFFFFFF),
    .INIT_D(64'h0000000000000000)) 
    scanlinecache_reg_128_191_45_47
       (.ADDRA(scanlinera),
        .ADDRB(scanlinera),
        .ADDRC(scanlinera),
        .ADDRD(scanlinewa[5:0]),
        .DIA(scanlinedin[45]),
        .DIB(scanlinedin[46]),
        .DIC(scanlinedin[47]),
        .DID(1'b0),
        .DOA(scanlinecache_reg_128_191_45_47_n_0),
        .DOB(scanlinecache_reg_128_191_45_47_n_1),
        .DOC(scanlinecache_reg_128_191_45_47_n_2),
        .DOD(NLW_scanlinecache_reg_128_191_45_47_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/scanlinecache_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "48" *) 
  (* ram_slice_end = "50" *) 
  RAM64M #(
    .INIT_A(64'hAAAAAAAAAAAAAAAA),
    .INIT_B(64'hCCCCCCCCCCCCCCCC),
    .INIT_C(64'hF0F0F0F0F0F0F0F0),
    .INIT_D(64'h0000000000000000)) 
    scanlinecache_reg_128_191_48_50
       (.ADDRA(scanlinera),
        .ADDRB(scanlinera),
        .ADDRC(scanlinera),
        .ADDRD(scanlinewa[5:0]),
        .DIA(scanlinedin[48]),
        .DIB(scanlinedin[49]),
        .DIC(scanlinedin[50]),
        .DID(1'b0),
        .DOA(scanlinecache_reg_128_191_48_50_n_0),
        .DOB(scanlinecache_reg_128_191_48_50_n_1),
        .DOC(scanlinecache_reg_128_191_48_50_n_2),
        .DOD(NLW_scanlinecache_reg_128_191_48_50_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/scanlinecache_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "51" *) 
  (* ram_slice_end = "53" *) 
  RAM64M #(
    .INIT_A(64'hFF00FF00FF00FF00),
    .INIT_B(64'hFFFF0000FFFF0000),
    .INIT_C(64'hFFFFFFFF00000000),
    .INIT_D(64'h0000000000000000)) 
    scanlinecache_reg_128_191_51_53
       (.ADDRA(scanlinera),
        .ADDRB(scanlinera),
        .ADDRC(scanlinera),
        .ADDRD(scanlinewa[5:0]),
        .DIA(scanlinedin[51]),
        .DIB(scanlinedin[52]),
        .DIC(scanlinedin[53]),
        .DID(1'b0),
        .DOA(scanlinecache_reg_128_191_51_53_n_0),
        .DOB(scanlinecache_reg_128_191_51_53_n_1),
        .DOC(scanlinecache_reg_128_191_51_53_n_2),
        .DOD(NLW_scanlinecache_reg_128_191_51_53_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/scanlinecache_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "54" *) 
  (* ram_slice_end = "56" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'hFFFFFFFFFFFFFFFF),
    .INIT_C(64'hAAAAAAAAAAAAAAAA),
    .INIT_D(64'h0000000000000000)) 
    scanlinecache_reg_128_191_54_56
       (.ADDRA(scanlinera),
        .ADDRB(scanlinera),
        .ADDRC(scanlinera),
        .ADDRD(scanlinewa[5:0]),
        .DIA(scanlinedin[54]),
        .DIB(scanlinedin[55]),
        .DIC(scanlinedin[56]),
        .DID(1'b0),
        .DOA(scanlinecache_reg_128_191_54_56_n_0),
        .DOB(scanlinecache_reg_128_191_54_56_n_1),
        .DOC(scanlinecache_reg_128_191_54_56_n_2),
        .DOD(NLW_scanlinecache_reg_128_191_54_56_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/scanlinecache_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "57" *) 
  (* ram_slice_end = "59" *) 
  RAM64M #(
    .INIT_A(64'hCCCCCCCCCCCCCCCC),
    .INIT_B(64'hF0F0F0F0F0F0F0F0),
    .INIT_C(64'hFF00FF00FF00FF00),
    .INIT_D(64'h0000000000000000)) 
    scanlinecache_reg_128_191_57_59
       (.ADDRA(scanlinera),
        .ADDRB(scanlinera),
        .ADDRC(scanlinera),
        .ADDRD(scanlinewa[5:0]),
        .DIA(scanlinedin[57]),
        .DIB(scanlinedin[58]),
        .DIC(scanlinedin[59]),
        .DID(1'b0),
        .DOA(scanlinecache_reg_128_191_57_59_n_0),
        .DOB(scanlinecache_reg_128_191_57_59_n_1),
        .DOC(scanlinecache_reg_128_191_57_59_n_2),
        .DOD(NLW_scanlinecache_reg_128_191_57_59_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/scanlinecache_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "60" *) 
  (* ram_slice_end = "62" *) 
  RAM64M #(
    .INIT_A(64'hFFFF0000FFFF0000),
    .INIT_B(64'hFFFFFFFF00000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    scanlinecache_reg_128_191_60_62
       (.ADDRA(scanlinera),
        .ADDRB(scanlinera),
        .ADDRC(scanlinera),
        .ADDRD(scanlinewa[5:0]),
        .DIA(scanlinedin[60]),
        .DIB(scanlinedin[61]),
        .DIC(scanlinedin[62]),
        .DID(1'b0),
        .DOA(scanlinecache_reg_128_191_60_62_n_0),
        .DOB(scanlinecache_reg_128_191_60_62_n_1),
        .DOC(scanlinecache_reg_128_191_60_62_n_2),
        .DOD(NLW_scanlinecache_reg_128_191_60_62_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/videocoreInst/scanlinecache_reg_128_191_63_63" *) 
  (* RTL_RAM_STYLE = "NONE" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "63" *) 
  (* ram_slice_end = "63" *) 
  RAM64X1D #(
    .INIT(64'hFFFFFFFFFFFFFFFF)) 
    scanlinecache_reg_128_191_63_63
       (.A0(scanlinewa[0]),
        .A1(scanlinewa[1]),
        .A2(scanlinewa[2]),
        .A3(scanlinewa[3]),
        .A4(scanlinewa[4]),
        .A5(scanlinewa[5]),
        .D(scanlinedin[63]),
        .DPO(scanlinecache_reg_128_191_63_63_n_0),
        .DPRA0(scanlinera[0]),
        .DPRA1(scanlinera[1]),
        .DPRA2(scanlinera[2]),
        .DPRA3(scanlinera[3]),
        .DPRA4(scanlinera[4]),
        .DPRA5(scanlinera[5]),
        .SPO(NLW_scanlinecache_reg_128_191_63_63_SPO_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/scanlinecache_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'hFFFFFFFFFFFFFFFF),
    .INIT_C(64'hAAAAAAAAAAAAAAAA),
    .INIT_D(64'h0000000000000000)) 
    scanlinecache_reg_128_191_6_8
       (.ADDRA(scanlinera),
        .ADDRB(scanlinera),
        .ADDRC(scanlinera),
        .ADDRD(scanlinewa[5:0]),
        .DIA(scanlinedin[6]),
        .DIB(scanlinedin[7]),
        .DIC(scanlinedin[8]),
        .DID(1'b0),
        .DOA(scanlinecache_reg_128_191_6_8_n_0),
        .DOB(scanlinecache_reg_128_191_6_8_n_1),
        .DOC(scanlinecache_reg_128_191_6_8_n_2),
        .DOD(NLW_scanlinecache_reg_128_191_6_8_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/scanlinecache_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M #(
    .INIT_A(64'hCCCCCCCCCCCCCCCC),
    .INIT_B(64'hF0F0F0F0F0F0F0F0),
    .INIT_C(64'hFF00FF00FF00FF00),
    .INIT_D(64'h0000000000000000)) 
    scanlinecache_reg_128_191_9_11
       (.ADDRA(scanlinera),
        .ADDRB(scanlinera),
        .ADDRC(scanlinera),
        .ADDRD(scanlinewa[5:0]),
        .DIA(scanlinedin[9]),
        .DIB(scanlinedin[10]),
        .DIC(scanlinedin[11]),
        .DID(1'b0),
        .DOA(scanlinecache_reg_128_191_9_11_n_0),
        .DOB(scanlinecache_reg_128_191_9_11_n_1),
        .DOC(scanlinecache_reg_128_191_9_11_n_2),
        .DOD(NLW_scanlinecache_reg_128_191_9_11_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/scanlinecache_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'hAAAAAAAAAAAAAAAA),
    .INIT_B(64'hCCCCCCCCCCCCCCCC),
    .INIT_C(64'hF0F0F0F0F0F0F0F0),
    .INIT_D(64'h0000000000000000)) 
    scanlinecache_reg_192_255_0_2
       (.ADDRA(scanlinera),
        .ADDRB(scanlinera),
        .ADDRC(scanlinera),
        .ADDRD(scanlinewa[5:0]),
        .DIA(scanlinedin[0]),
        .DIB(scanlinedin[1]),
        .DIC(scanlinedin[2]),
        .DID(1'b0),
        .DOA(scanlinecache_reg_192_255_0_2_n_0),
        .DOB(scanlinecache_reg_192_255_0_2_n_1),
        .DOC(scanlinecache_reg_192_255_0_2_n_2),
        .DOD(NLW_scanlinecache_reg_192_255_0_2_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_192_255_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    scanlinecache_reg_192_255_0_2_i_1
       (.I0(scanlinewe),
        .I1(scanlinewa[6]),
        .I2(scanlinewa[7]),
        .O(scanlinecache_reg_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/scanlinecache_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "14" *) 
  RAM64M #(
    .INIT_A(64'hFFFF0000FFFF0000),
    .INIT_B(64'hFFFFFFFF00000000),
    .INIT_C(64'hFFFFFFFFFFFFFFFF),
    .INIT_D(64'h0000000000000000)) 
    scanlinecache_reg_192_255_12_14
       (.ADDRA(scanlinera),
        .ADDRB(scanlinera),
        .ADDRC(scanlinera),
        .ADDRD(scanlinewa[5:0]),
        .DIA(scanlinedin[12]),
        .DIB(scanlinedin[13]),
        .DIC(scanlinedin[14]),
        .DID(1'b0),
        .DOA(scanlinecache_reg_192_255_12_14_n_0),
        .DOB(scanlinecache_reg_192_255_12_14_n_1),
        .DOC(scanlinecache_reg_192_255_12_14_n_2),
        .DOD(NLW_scanlinecache_reg_192_255_12_14_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/scanlinecache_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "17" *) 
  RAM64M #(
    .INIT_A(64'hFFFFFFFFFFFFFFFF),
    .INIT_B(64'hAAAAAAAAAAAAAAAA),
    .INIT_C(64'hCCCCCCCCCCCCCCCC),
    .INIT_D(64'h0000000000000000)) 
    scanlinecache_reg_192_255_15_17
       (.ADDRA(scanlinera),
        .ADDRB(scanlinera),
        .ADDRC(scanlinera),
        .ADDRD(scanlinewa[5:0]),
        .DIA(scanlinedin[15]),
        .DIB(scanlinedin[16]),
        .DIC(scanlinedin[17]),
        .DID(1'b0),
        .DOA(scanlinecache_reg_192_255_15_17_n_0),
        .DOB(scanlinecache_reg_192_255_15_17_n_1),
        .DOC(scanlinecache_reg_192_255_15_17_n_2),
        .DOD(NLW_scanlinecache_reg_192_255_15_17_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/scanlinecache_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "20" *) 
  RAM64M #(
    .INIT_A(64'hF0F0F0F0F0F0F0F0),
    .INIT_B(64'hFF00FF00FF00FF00),
    .INIT_C(64'hFFFF0000FFFF0000),
    .INIT_D(64'h0000000000000000)) 
    scanlinecache_reg_192_255_18_20
       (.ADDRA(scanlinera),
        .ADDRB(scanlinera),
        .ADDRC(scanlinera),
        .ADDRD(scanlinewa[5:0]),
        .DIA(scanlinedin[18]),
        .DIB(scanlinedin[19]),
        .DIC(scanlinedin[20]),
        .DID(1'b0),
        .DOA(scanlinecache_reg_192_255_18_20_n_0),
        .DOB(scanlinecache_reg_192_255_18_20_n_1),
        .DOC(scanlinecache_reg_192_255_18_20_n_2),
        .DOD(NLW_scanlinecache_reg_192_255_18_20_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/scanlinecache_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "23" *) 
  RAM64M #(
    .INIT_A(64'hFFFFFFFF00000000),
    .INIT_B(64'hFFFFFFFFFFFFFFFF),
    .INIT_C(64'hFFFFFFFFFFFFFFFF),
    .INIT_D(64'h0000000000000000)) 
    scanlinecache_reg_192_255_21_23
       (.ADDRA(scanlinera),
        .ADDRB(scanlinera),
        .ADDRC(scanlinera),
        .ADDRD(scanlinewa[5:0]),
        .DIA(scanlinedin[21]),
        .DIB(scanlinedin[22]),
        .DIC(scanlinedin[23]),
        .DID(1'b0),
        .DOA(scanlinecache_reg_192_255_21_23_n_0),
        .DOB(scanlinecache_reg_192_255_21_23_n_1),
        .DOC(scanlinecache_reg_192_255_21_23_n_2),
        .DOD(NLW_scanlinecache_reg_192_255_21_23_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/scanlinecache_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "26" *) 
  RAM64M #(
    .INIT_A(64'hAAAAAAAAAAAAAAAA),
    .INIT_B(64'hCCCCCCCCCCCCCCCC),
    .INIT_C(64'hF0F0F0F0F0F0F0F0),
    .INIT_D(64'h0000000000000000)) 
    scanlinecache_reg_192_255_24_26
       (.ADDRA(scanlinera),
        .ADDRB(scanlinera),
        .ADDRC(scanlinera),
        .ADDRD(scanlinewa[5:0]),
        .DIA(scanlinedin[24]),
        .DIB(scanlinedin[25]),
        .DIC(scanlinedin[26]),
        .DID(1'b0),
        .DOA(scanlinecache_reg_192_255_24_26_n_0),
        .DOB(scanlinecache_reg_192_255_24_26_n_1),
        .DOC(scanlinecache_reg_192_255_24_26_n_2),
        .DOD(NLW_scanlinecache_reg_192_255_24_26_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/scanlinecache_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "27" *) 
  (* ram_slice_end = "29" *) 
  RAM64M #(
    .INIT_A(64'hFF00FF00FF00FF00),
    .INIT_B(64'hFFFF0000FFFF0000),
    .INIT_C(64'hFFFFFFFF00000000),
    .INIT_D(64'h0000000000000000)) 
    scanlinecache_reg_192_255_27_29
       (.ADDRA(scanlinera),
        .ADDRB(scanlinera),
        .ADDRC(scanlinera),
        .ADDRD(scanlinewa[5:0]),
        .DIA(scanlinedin[27]),
        .DIB(scanlinedin[28]),
        .DIC(scanlinedin[29]),
        .DID(1'b0),
        .DOA(scanlinecache_reg_192_255_27_29_n_0),
        .DOB(scanlinecache_reg_192_255_27_29_n_1),
        .DOC(scanlinecache_reg_192_255_27_29_n_2),
        .DOD(NLW_scanlinecache_reg_192_255_27_29_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/scanlinecache_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "32" *) 
  RAM64M #(
    .INIT_A(64'hFFFFFFFFFFFFFFFF),
    .INIT_B(64'hFFFFFFFFFFFFFFFF),
    .INIT_C(64'hAAAAAAAAAAAAAAAA),
    .INIT_D(64'h0000000000000000)) 
    scanlinecache_reg_192_255_30_32
       (.ADDRA(scanlinera),
        .ADDRB(scanlinera),
        .ADDRC(scanlinera),
        .ADDRD(scanlinewa[5:0]),
        .DIA(scanlinedin[30]),
        .DIB(scanlinedin[31]),
        .DIC(scanlinedin[32]),
        .DID(1'b0),
        .DOA(scanlinecache_reg_192_255_30_32_n_0),
        .DOB(scanlinecache_reg_192_255_30_32_n_1),
        .DOC(scanlinecache_reg_192_255_30_32_n_2),
        .DOD(NLW_scanlinecache_reg_192_255_30_32_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/scanlinecache_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "33" *) 
  (* ram_slice_end = "35" *) 
  RAM64M #(
    .INIT_A(64'hCCCCCCCCCCCCCCCC),
    .INIT_B(64'hF0F0F0F0F0F0F0F0),
    .INIT_C(64'hFF00FF00FF00FF00),
    .INIT_D(64'h0000000000000000)) 
    scanlinecache_reg_192_255_33_35
       (.ADDRA(scanlinera),
        .ADDRB(scanlinera),
        .ADDRC(scanlinera),
        .ADDRD(scanlinewa[5:0]),
        .DIA(scanlinedin[33]),
        .DIB(scanlinedin[34]),
        .DIC(scanlinedin[35]),
        .DID(1'b0),
        .DOA(scanlinecache_reg_192_255_33_35_n_0),
        .DOB(scanlinecache_reg_192_255_33_35_n_1),
        .DOC(scanlinecache_reg_192_255_33_35_n_2),
        .DOD(NLW_scanlinecache_reg_192_255_33_35_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/scanlinecache_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "36" *) 
  (* ram_slice_end = "38" *) 
  RAM64M #(
    .INIT_A(64'hFFFF0000FFFF0000),
    .INIT_B(64'hFFFFFFFF00000000),
    .INIT_C(64'hFFFFFFFFFFFFFFFF),
    .INIT_D(64'h0000000000000000)) 
    scanlinecache_reg_192_255_36_38
       (.ADDRA(scanlinera),
        .ADDRB(scanlinera),
        .ADDRC(scanlinera),
        .ADDRD(scanlinewa[5:0]),
        .DIA(scanlinedin[36]),
        .DIB(scanlinedin[37]),
        .DIC(scanlinedin[38]),
        .DID(1'b0),
        .DOA(scanlinecache_reg_192_255_36_38_n_0),
        .DOB(scanlinecache_reg_192_255_36_38_n_1),
        .DOC(scanlinecache_reg_192_255_36_38_n_2),
        .DOD(NLW_scanlinecache_reg_192_255_36_38_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/scanlinecache_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "39" *) 
  (* ram_slice_end = "41" *) 
  RAM64M #(
    .INIT_A(64'hFFFFFFFFFFFFFFFF),
    .INIT_B(64'hAAAAAAAAAAAAAAAA),
    .INIT_C(64'hCCCCCCCCCCCCCCCC),
    .INIT_D(64'h0000000000000000)) 
    scanlinecache_reg_192_255_39_41
       (.ADDRA(scanlinera),
        .ADDRB(scanlinera),
        .ADDRC(scanlinera),
        .ADDRD(scanlinewa[5:0]),
        .DIA(scanlinedin[39]),
        .DIB(scanlinedin[40]),
        .DIC(scanlinedin[41]),
        .DID(1'b0),
        .DOA(scanlinecache_reg_192_255_39_41_n_0),
        .DOB(scanlinecache_reg_192_255_39_41_n_1),
        .DOC(scanlinecache_reg_192_255_39_41_n_2),
        .DOD(NLW_scanlinecache_reg_192_255_39_41_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/scanlinecache_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'hFF00FF00FF00FF00),
    .INIT_B(64'hFFFF0000FFFF0000),
    .INIT_C(64'hFFFFFFFF00000000),
    .INIT_D(64'h0000000000000000)) 
    scanlinecache_reg_192_255_3_5
       (.ADDRA(scanlinera),
        .ADDRB(scanlinera),
        .ADDRC(scanlinera),
        .ADDRD(scanlinewa[5:0]),
        .DIA(scanlinedin[3]),
        .DIB(scanlinedin[4]),
        .DIC(scanlinedin[5]),
        .DID(1'b0),
        .DOA(scanlinecache_reg_192_255_3_5_n_0),
        .DOB(scanlinecache_reg_192_255_3_5_n_1),
        .DOC(scanlinecache_reg_192_255_3_5_n_2),
        .DOD(NLW_scanlinecache_reg_192_255_3_5_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/scanlinecache_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "42" *) 
  (* ram_slice_end = "44" *) 
  RAM64M #(
    .INIT_A(64'hF0F0F0F0F0F0F0F0),
    .INIT_B(64'hFF00FF00FF00FF00),
    .INIT_C(64'hFFFF0000FFFF0000),
    .INIT_D(64'h0000000000000000)) 
    scanlinecache_reg_192_255_42_44
       (.ADDRA(scanlinera),
        .ADDRB(scanlinera),
        .ADDRC(scanlinera),
        .ADDRD(scanlinewa[5:0]),
        .DIA(scanlinedin[42]),
        .DIB(scanlinedin[43]),
        .DIC(scanlinedin[44]),
        .DID(1'b0),
        .DOA(scanlinecache_reg_192_255_42_44_n_0),
        .DOB(scanlinecache_reg_192_255_42_44_n_1),
        .DOC(scanlinecache_reg_192_255_42_44_n_2),
        .DOD(NLW_scanlinecache_reg_192_255_42_44_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/scanlinecache_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "45" *) 
  (* ram_slice_end = "47" *) 
  RAM64M #(
    .INIT_A(64'hFFFFFFFF00000000),
    .INIT_B(64'hFFFFFFFFFFFFFFFF),
    .INIT_C(64'hFFFFFFFFFFFFFFFF),
    .INIT_D(64'h0000000000000000)) 
    scanlinecache_reg_192_255_45_47
       (.ADDRA(scanlinera),
        .ADDRB(scanlinera),
        .ADDRC(scanlinera),
        .ADDRD(scanlinewa[5:0]),
        .DIA(scanlinedin[45]),
        .DIB(scanlinedin[46]),
        .DIC(scanlinedin[47]),
        .DID(1'b0),
        .DOA(scanlinecache_reg_192_255_45_47_n_0),
        .DOB(scanlinecache_reg_192_255_45_47_n_1),
        .DOC(scanlinecache_reg_192_255_45_47_n_2),
        .DOD(NLW_scanlinecache_reg_192_255_45_47_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/scanlinecache_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "48" *) 
  (* ram_slice_end = "50" *) 
  RAM64M #(
    .INIT_A(64'hAAAAAAAAAAAAAAAA),
    .INIT_B(64'hCCCCCCCCCCCCCCCC),
    .INIT_C(64'hF0F0F0F0F0F0F0F0),
    .INIT_D(64'h0000000000000000)) 
    scanlinecache_reg_192_255_48_50
       (.ADDRA(scanlinera),
        .ADDRB(scanlinera),
        .ADDRC(scanlinera),
        .ADDRD(scanlinewa[5:0]),
        .DIA(scanlinedin[48]),
        .DIB(scanlinedin[49]),
        .DIC(scanlinedin[50]),
        .DID(1'b0),
        .DOA(scanlinecache_reg_192_255_48_50_n_0),
        .DOB(scanlinecache_reg_192_255_48_50_n_1),
        .DOC(scanlinecache_reg_192_255_48_50_n_2),
        .DOD(NLW_scanlinecache_reg_192_255_48_50_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/scanlinecache_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "51" *) 
  (* ram_slice_end = "53" *) 
  RAM64M #(
    .INIT_A(64'hFF00FF00FF00FF00),
    .INIT_B(64'hFFFF0000FFFF0000),
    .INIT_C(64'hFFFFFFFF00000000),
    .INIT_D(64'h0000000000000000)) 
    scanlinecache_reg_192_255_51_53
       (.ADDRA(scanlinera),
        .ADDRB(scanlinera),
        .ADDRC(scanlinera),
        .ADDRD(scanlinewa[5:0]),
        .DIA(scanlinedin[51]),
        .DIB(scanlinedin[52]),
        .DIC(scanlinedin[53]),
        .DID(1'b0),
        .DOA(scanlinecache_reg_192_255_51_53_n_0),
        .DOB(scanlinecache_reg_192_255_51_53_n_1),
        .DOC(scanlinecache_reg_192_255_51_53_n_2),
        .DOD(NLW_scanlinecache_reg_192_255_51_53_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/scanlinecache_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "54" *) 
  (* ram_slice_end = "56" *) 
  RAM64M #(
    .INIT_A(64'hFFFFFFFFFFFFFFFF),
    .INIT_B(64'hFFFFFFFFFFFFFFFF),
    .INIT_C(64'hAAAAAAAAAAAAAAAA),
    .INIT_D(64'h0000000000000000)) 
    scanlinecache_reg_192_255_54_56
       (.ADDRA(scanlinera),
        .ADDRB(scanlinera),
        .ADDRC(scanlinera),
        .ADDRD(scanlinewa[5:0]),
        .DIA(scanlinedin[54]),
        .DIB(scanlinedin[55]),
        .DIC(scanlinedin[56]),
        .DID(1'b0),
        .DOA(scanlinecache_reg_192_255_54_56_n_0),
        .DOB(scanlinecache_reg_192_255_54_56_n_1),
        .DOC(scanlinecache_reg_192_255_54_56_n_2),
        .DOD(NLW_scanlinecache_reg_192_255_54_56_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/scanlinecache_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "57" *) 
  (* ram_slice_end = "59" *) 
  RAM64M #(
    .INIT_A(64'hCCCCCCCCCCCCCCCC),
    .INIT_B(64'hF0F0F0F0F0F0F0F0),
    .INIT_C(64'hFF00FF00FF00FF00),
    .INIT_D(64'h0000000000000000)) 
    scanlinecache_reg_192_255_57_59
       (.ADDRA(scanlinera),
        .ADDRB(scanlinera),
        .ADDRC(scanlinera),
        .ADDRD(scanlinewa[5:0]),
        .DIA(scanlinedin[57]),
        .DIB(scanlinedin[58]),
        .DIC(scanlinedin[59]),
        .DID(1'b0),
        .DOA(scanlinecache_reg_192_255_57_59_n_0),
        .DOB(scanlinecache_reg_192_255_57_59_n_1),
        .DOC(scanlinecache_reg_192_255_57_59_n_2),
        .DOD(NLW_scanlinecache_reg_192_255_57_59_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/scanlinecache_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "60" *) 
  (* ram_slice_end = "62" *) 
  RAM64M #(
    .INIT_A(64'hFFFF0000FFFF0000),
    .INIT_B(64'hFFFFFFFF00000000),
    .INIT_C(64'hFFFFFFFFFFFFFFFF),
    .INIT_D(64'h0000000000000000)) 
    scanlinecache_reg_192_255_60_62
       (.ADDRA(scanlinera),
        .ADDRB(scanlinera),
        .ADDRC(scanlinera),
        .ADDRD(scanlinewa[5:0]),
        .DIA(scanlinedin[60]),
        .DIB(scanlinedin[61]),
        .DIC(scanlinedin[62]),
        .DID(1'b0),
        .DOA(scanlinecache_reg_192_255_60_62_n_0),
        .DOB(scanlinecache_reg_192_255_60_62_n_1),
        .DOC(scanlinecache_reg_192_255_60_62_n_2),
        .DOD(NLW_scanlinecache_reg_192_255_60_62_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/videocoreInst/scanlinecache_reg_192_255_63_63" *) 
  (* RTL_RAM_STYLE = "NONE" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "63" *) 
  (* ram_slice_end = "63" *) 
  RAM64X1D #(
    .INIT(64'hFFFFFFFFFFFFFFFF)) 
    scanlinecache_reg_192_255_63_63
       (.A0(scanlinewa[0]),
        .A1(scanlinewa[1]),
        .A2(scanlinewa[2]),
        .A3(scanlinewa[3]),
        .A4(scanlinewa[4]),
        .A5(scanlinewa[5]),
        .D(scanlinedin[63]),
        .DPO(scanlinecache_reg_192_255_63_63_n_0),
        .DPRA0(scanlinera[0]),
        .DPRA1(scanlinera[1]),
        .DPRA2(scanlinera[2]),
        .DPRA3(scanlinera[3]),
        .DPRA4(scanlinera[4]),
        .DPRA5(scanlinera[5]),
        .SPO(NLW_scanlinecache_reg_192_255_63_63_SPO_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/scanlinecache_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M #(
    .INIT_A(64'hFFFFFFFFFFFFFFFF),
    .INIT_B(64'hFFFFFFFFFFFFFFFF),
    .INIT_C(64'hAAAAAAAAAAAAAAAA),
    .INIT_D(64'h0000000000000000)) 
    scanlinecache_reg_192_255_6_8
       (.ADDRA(scanlinera),
        .ADDRB(scanlinera),
        .ADDRC(scanlinera),
        .ADDRD(scanlinewa[5:0]),
        .DIA(scanlinedin[6]),
        .DIB(scanlinedin[7]),
        .DIC(scanlinedin[8]),
        .DID(1'b0),
        .DOA(scanlinecache_reg_192_255_6_8_n_0),
        .DOB(scanlinecache_reg_192_255_6_8_n_1),
        .DOC(scanlinecache_reg_192_255_6_8_n_2),
        .DOD(NLW_scanlinecache_reg_192_255_6_8_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/scanlinecache_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M #(
    .INIT_A(64'hCCCCCCCCCCCCCCCC),
    .INIT_B(64'hF0F0F0F0F0F0F0F0),
    .INIT_C(64'hFF00FF00FF00FF00),
    .INIT_D(64'h0000000000000000)) 
    scanlinecache_reg_192_255_9_11
       (.ADDRA(scanlinera),
        .ADDRB(scanlinera),
        .ADDRC(scanlinera),
        .ADDRD(scanlinewa[5:0]),
        .DIA(scanlinedin[9]),
        .DIB(scanlinedin[10]),
        .DIC(scanlinedin[11]),
        .DID(1'b0),
        .DOA(scanlinecache_reg_192_255_9_11_n_0),
        .DOB(scanlinecache_reg_192_255_9_11_n_1),
        .DOC(scanlinecache_reg_192_255_9_11_n_2),
        .DOD(NLW_scanlinecache_reg_192_255_9_11_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/scanlinecache_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'hAAAAAAAAAAAAAAAA),
    .INIT_B(64'hCCCCCCCCCCCCCCCC),
    .INIT_C(64'hF0F0F0F0F0F0F0F0),
    .INIT_D(64'h0000000000000000)) 
    scanlinecache_reg_64_127_0_2
       (.ADDRA(scanlinera),
        .ADDRB(scanlinera),
        .ADDRC(scanlinera),
        .ADDRD(scanlinewa[5:0]),
        .DIA(scanlinedin[0]),
        .DIB(scanlinedin[1]),
        .DIC(scanlinedin[2]),
        .DID(1'b0),
        .DOA(scanlinecache_reg_64_127_0_2_n_0),
        .DOB(scanlinecache_reg_64_127_0_2_n_1),
        .DOC(scanlinecache_reg_64_127_0_2_n_2),
        .DOD(NLW_scanlinecache_reg_64_127_0_2_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_64_127_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h40)) 
    scanlinecache_reg_64_127_0_2_i_1
       (.I0(scanlinewa[7]),
        .I1(scanlinewa[6]),
        .I2(scanlinewe),
        .O(scanlinecache_reg_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/scanlinecache_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "14" *) 
  RAM64M #(
    .INIT_A(64'hFFFF0000FFFF0000),
    .INIT_B(64'hFFFFFFFF00000000),
    .INIT_C(64'hFFFFFFFFFFFFFFFF),
    .INIT_D(64'h0000000000000000)) 
    scanlinecache_reg_64_127_12_14
       (.ADDRA(scanlinera),
        .ADDRB(scanlinera),
        .ADDRC(scanlinera),
        .ADDRD(scanlinewa[5:0]),
        .DIA(scanlinedin[12]),
        .DIB(scanlinedin[13]),
        .DIC(scanlinedin[14]),
        .DID(1'b0),
        .DOA(scanlinecache_reg_64_127_12_14_n_0),
        .DOB(scanlinecache_reg_64_127_12_14_n_1),
        .DOC(scanlinecache_reg_64_127_12_14_n_2),
        .DOD(NLW_scanlinecache_reg_64_127_12_14_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/scanlinecache_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "17" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'hAAAAAAAAAAAAAAAA),
    .INIT_C(64'hCCCCCCCCCCCCCCCC),
    .INIT_D(64'h0000000000000000)) 
    scanlinecache_reg_64_127_15_17
       (.ADDRA(scanlinera),
        .ADDRB(scanlinera),
        .ADDRC(scanlinera),
        .ADDRD(scanlinewa[5:0]),
        .DIA(scanlinedin[15]),
        .DIB(scanlinedin[16]),
        .DIC(scanlinedin[17]),
        .DID(1'b0),
        .DOA(scanlinecache_reg_64_127_15_17_n_0),
        .DOB(scanlinecache_reg_64_127_15_17_n_1),
        .DOC(scanlinecache_reg_64_127_15_17_n_2),
        .DOD(NLW_scanlinecache_reg_64_127_15_17_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/scanlinecache_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "20" *) 
  RAM64M #(
    .INIT_A(64'hF0F0F0F0F0F0F0F0),
    .INIT_B(64'hFF00FF00FF00FF00),
    .INIT_C(64'hFFFF0000FFFF0000),
    .INIT_D(64'h0000000000000000)) 
    scanlinecache_reg_64_127_18_20
       (.ADDRA(scanlinera),
        .ADDRB(scanlinera),
        .ADDRC(scanlinera),
        .ADDRD(scanlinewa[5:0]),
        .DIA(scanlinedin[18]),
        .DIB(scanlinedin[19]),
        .DIC(scanlinedin[20]),
        .DID(1'b0),
        .DOA(scanlinecache_reg_64_127_18_20_n_0),
        .DOB(scanlinecache_reg_64_127_18_20_n_1),
        .DOC(scanlinecache_reg_64_127_18_20_n_2),
        .DOD(NLW_scanlinecache_reg_64_127_18_20_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/scanlinecache_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "23" *) 
  RAM64M #(
    .INIT_A(64'hFFFFFFFF00000000),
    .INIT_B(64'hFFFFFFFFFFFFFFFF),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    scanlinecache_reg_64_127_21_23
       (.ADDRA(scanlinera),
        .ADDRB(scanlinera),
        .ADDRC(scanlinera),
        .ADDRD(scanlinewa[5:0]),
        .DIA(scanlinedin[21]),
        .DIB(scanlinedin[22]),
        .DIC(scanlinedin[23]),
        .DID(1'b0),
        .DOA(scanlinecache_reg_64_127_21_23_n_0),
        .DOB(scanlinecache_reg_64_127_21_23_n_1),
        .DOC(scanlinecache_reg_64_127_21_23_n_2),
        .DOD(NLW_scanlinecache_reg_64_127_21_23_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/scanlinecache_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "26" *) 
  RAM64M #(
    .INIT_A(64'hAAAAAAAAAAAAAAAA),
    .INIT_B(64'hCCCCCCCCCCCCCCCC),
    .INIT_C(64'hF0F0F0F0F0F0F0F0),
    .INIT_D(64'h0000000000000000)) 
    scanlinecache_reg_64_127_24_26
       (.ADDRA(scanlinera),
        .ADDRB(scanlinera),
        .ADDRC(scanlinera),
        .ADDRD(scanlinewa[5:0]),
        .DIA(scanlinedin[24]),
        .DIB(scanlinedin[25]),
        .DIC(scanlinedin[26]),
        .DID(1'b0),
        .DOA(scanlinecache_reg_64_127_24_26_n_0),
        .DOB(scanlinecache_reg_64_127_24_26_n_1),
        .DOC(scanlinecache_reg_64_127_24_26_n_2),
        .DOD(NLW_scanlinecache_reg_64_127_24_26_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/scanlinecache_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "27" *) 
  (* ram_slice_end = "29" *) 
  RAM64M #(
    .INIT_A(64'hFF00FF00FF00FF00),
    .INIT_B(64'hFFFF0000FFFF0000),
    .INIT_C(64'hFFFFFFFF00000000),
    .INIT_D(64'h0000000000000000)) 
    scanlinecache_reg_64_127_27_29
       (.ADDRA(scanlinera),
        .ADDRB(scanlinera),
        .ADDRC(scanlinera),
        .ADDRD(scanlinewa[5:0]),
        .DIA(scanlinedin[27]),
        .DIB(scanlinedin[28]),
        .DIC(scanlinedin[29]),
        .DID(1'b0),
        .DOA(scanlinecache_reg_64_127_27_29_n_0),
        .DOB(scanlinecache_reg_64_127_27_29_n_1),
        .DOC(scanlinecache_reg_64_127_27_29_n_2),
        .DOD(NLW_scanlinecache_reg_64_127_27_29_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/scanlinecache_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "32" *) 
  RAM64M #(
    .INIT_A(64'hFFFFFFFFFFFFFFFF),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'hAAAAAAAAAAAAAAAA),
    .INIT_D(64'h0000000000000000)) 
    scanlinecache_reg_64_127_30_32
       (.ADDRA(scanlinera),
        .ADDRB(scanlinera),
        .ADDRC(scanlinera),
        .ADDRD(scanlinewa[5:0]),
        .DIA(scanlinedin[30]),
        .DIB(scanlinedin[31]),
        .DIC(scanlinedin[32]),
        .DID(1'b0),
        .DOA(scanlinecache_reg_64_127_30_32_n_0),
        .DOB(scanlinecache_reg_64_127_30_32_n_1),
        .DOC(scanlinecache_reg_64_127_30_32_n_2),
        .DOD(NLW_scanlinecache_reg_64_127_30_32_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/scanlinecache_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "33" *) 
  (* ram_slice_end = "35" *) 
  RAM64M #(
    .INIT_A(64'hCCCCCCCCCCCCCCCC),
    .INIT_B(64'hF0F0F0F0F0F0F0F0),
    .INIT_C(64'hFF00FF00FF00FF00),
    .INIT_D(64'h0000000000000000)) 
    scanlinecache_reg_64_127_33_35
       (.ADDRA(scanlinera),
        .ADDRB(scanlinera),
        .ADDRC(scanlinera),
        .ADDRD(scanlinewa[5:0]),
        .DIA(scanlinedin[33]),
        .DIB(scanlinedin[34]),
        .DIC(scanlinedin[35]),
        .DID(1'b0),
        .DOA(scanlinecache_reg_64_127_33_35_n_0),
        .DOB(scanlinecache_reg_64_127_33_35_n_1),
        .DOC(scanlinecache_reg_64_127_33_35_n_2),
        .DOD(NLW_scanlinecache_reg_64_127_33_35_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/scanlinecache_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "36" *) 
  (* ram_slice_end = "38" *) 
  RAM64M #(
    .INIT_A(64'hFFFF0000FFFF0000),
    .INIT_B(64'hFFFFFFFF00000000),
    .INIT_C(64'hFFFFFFFFFFFFFFFF),
    .INIT_D(64'h0000000000000000)) 
    scanlinecache_reg_64_127_36_38
       (.ADDRA(scanlinera),
        .ADDRB(scanlinera),
        .ADDRC(scanlinera),
        .ADDRD(scanlinewa[5:0]),
        .DIA(scanlinedin[36]),
        .DIB(scanlinedin[37]),
        .DIC(scanlinedin[38]),
        .DID(1'b0),
        .DOA(scanlinecache_reg_64_127_36_38_n_0),
        .DOB(scanlinecache_reg_64_127_36_38_n_1),
        .DOC(scanlinecache_reg_64_127_36_38_n_2),
        .DOD(NLW_scanlinecache_reg_64_127_36_38_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/scanlinecache_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "39" *) 
  (* ram_slice_end = "41" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'hAAAAAAAAAAAAAAAA),
    .INIT_C(64'hCCCCCCCCCCCCCCCC),
    .INIT_D(64'h0000000000000000)) 
    scanlinecache_reg_64_127_39_41
       (.ADDRA(scanlinera),
        .ADDRB(scanlinera),
        .ADDRC(scanlinera),
        .ADDRD(scanlinewa[5:0]),
        .DIA(scanlinedin[39]),
        .DIB(scanlinedin[40]),
        .DIC(scanlinedin[41]),
        .DID(1'b0),
        .DOA(scanlinecache_reg_64_127_39_41_n_0),
        .DOB(scanlinecache_reg_64_127_39_41_n_1),
        .DOC(scanlinecache_reg_64_127_39_41_n_2),
        .DOD(NLW_scanlinecache_reg_64_127_39_41_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/scanlinecache_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'hFF00FF00FF00FF00),
    .INIT_B(64'hFFFF0000FFFF0000),
    .INIT_C(64'hFFFFFFFF00000000),
    .INIT_D(64'h0000000000000000)) 
    scanlinecache_reg_64_127_3_5
       (.ADDRA(scanlinera),
        .ADDRB(scanlinera),
        .ADDRC(scanlinera),
        .ADDRD(scanlinewa[5:0]),
        .DIA(scanlinedin[3]),
        .DIB(scanlinedin[4]),
        .DIC(scanlinedin[5]),
        .DID(1'b0),
        .DOA(scanlinecache_reg_64_127_3_5_n_0),
        .DOB(scanlinecache_reg_64_127_3_5_n_1),
        .DOC(scanlinecache_reg_64_127_3_5_n_2),
        .DOD(NLW_scanlinecache_reg_64_127_3_5_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/scanlinecache_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "42" *) 
  (* ram_slice_end = "44" *) 
  RAM64M #(
    .INIT_A(64'hF0F0F0F0F0F0F0F0),
    .INIT_B(64'hFF00FF00FF00FF00),
    .INIT_C(64'hFFFF0000FFFF0000),
    .INIT_D(64'h0000000000000000)) 
    scanlinecache_reg_64_127_42_44
       (.ADDRA(scanlinera),
        .ADDRB(scanlinera),
        .ADDRC(scanlinera),
        .ADDRD(scanlinewa[5:0]),
        .DIA(scanlinedin[42]),
        .DIB(scanlinedin[43]),
        .DIC(scanlinedin[44]),
        .DID(1'b0),
        .DOA(scanlinecache_reg_64_127_42_44_n_0),
        .DOB(scanlinecache_reg_64_127_42_44_n_1),
        .DOC(scanlinecache_reg_64_127_42_44_n_2),
        .DOD(NLW_scanlinecache_reg_64_127_42_44_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/scanlinecache_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "45" *) 
  (* ram_slice_end = "47" *) 
  RAM64M #(
    .INIT_A(64'hFFFFFFFF00000000),
    .INIT_B(64'hFFFFFFFFFFFFFFFF),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    scanlinecache_reg_64_127_45_47
       (.ADDRA(scanlinera),
        .ADDRB(scanlinera),
        .ADDRC(scanlinera),
        .ADDRD(scanlinewa[5:0]),
        .DIA(scanlinedin[45]),
        .DIB(scanlinedin[46]),
        .DIC(scanlinedin[47]),
        .DID(1'b0),
        .DOA(scanlinecache_reg_64_127_45_47_n_0),
        .DOB(scanlinecache_reg_64_127_45_47_n_1),
        .DOC(scanlinecache_reg_64_127_45_47_n_2),
        .DOD(NLW_scanlinecache_reg_64_127_45_47_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/scanlinecache_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "48" *) 
  (* ram_slice_end = "50" *) 
  RAM64M #(
    .INIT_A(64'hAAAAAAAAAAAAAAAA),
    .INIT_B(64'hCCCCCCCCCCCCCCCC),
    .INIT_C(64'hF0F0F0F0F0F0F0F0),
    .INIT_D(64'h0000000000000000)) 
    scanlinecache_reg_64_127_48_50
       (.ADDRA(scanlinera),
        .ADDRB(scanlinera),
        .ADDRC(scanlinera),
        .ADDRD(scanlinewa[5:0]),
        .DIA(scanlinedin[48]),
        .DIB(scanlinedin[49]),
        .DIC(scanlinedin[50]),
        .DID(1'b0),
        .DOA(scanlinecache_reg_64_127_48_50_n_0),
        .DOB(scanlinecache_reg_64_127_48_50_n_1),
        .DOC(scanlinecache_reg_64_127_48_50_n_2),
        .DOD(NLW_scanlinecache_reg_64_127_48_50_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/scanlinecache_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "51" *) 
  (* ram_slice_end = "53" *) 
  RAM64M #(
    .INIT_A(64'hFF00FF00FF00FF00),
    .INIT_B(64'hFFFF0000FFFF0000),
    .INIT_C(64'hFFFFFFFF00000000),
    .INIT_D(64'h0000000000000000)) 
    scanlinecache_reg_64_127_51_53
       (.ADDRA(scanlinera),
        .ADDRB(scanlinera),
        .ADDRC(scanlinera),
        .ADDRD(scanlinewa[5:0]),
        .DIA(scanlinedin[51]),
        .DIB(scanlinedin[52]),
        .DIC(scanlinedin[53]),
        .DID(1'b0),
        .DOA(scanlinecache_reg_64_127_51_53_n_0),
        .DOB(scanlinecache_reg_64_127_51_53_n_1),
        .DOC(scanlinecache_reg_64_127_51_53_n_2),
        .DOD(NLW_scanlinecache_reg_64_127_51_53_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/scanlinecache_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "54" *) 
  (* ram_slice_end = "56" *) 
  RAM64M #(
    .INIT_A(64'hFFFFFFFFFFFFFFFF),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'hAAAAAAAAAAAAAAAA),
    .INIT_D(64'h0000000000000000)) 
    scanlinecache_reg_64_127_54_56
       (.ADDRA(scanlinera),
        .ADDRB(scanlinera),
        .ADDRC(scanlinera),
        .ADDRD(scanlinewa[5:0]),
        .DIA(scanlinedin[54]),
        .DIB(scanlinedin[55]),
        .DIC(scanlinedin[56]),
        .DID(1'b0),
        .DOA(scanlinecache_reg_64_127_54_56_n_0),
        .DOB(scanlinecache_reg_64_127_54_56_n_1),
        .DOC(scanlinecache_reg_64_127_54_56_n_2),
        .DOD(NLW_scanlinecache_reg_64_127_54_56_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/scanlinecache_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "57" *) 
  (* ram_slice_end = "59" *) 
  RAM64M #(
    .INIT_A(64'hCCCCCCCCCCCCCCCC),
    .INIT_B(64'hF0F0F0F0F0F0F0F0),
    .INIT_C(64'hFF00FF00FF00FF00),
    .INIT_D(64'h0000000000000000)) 
    scanlinecache_reg_64_127_57_59
       (.ADDRA(scanlinera),
        .ADDRB(scanlinera),
        .ADDRC(scanlinera),
        .ADDRD(scanlinewa[5:0]),
        .DIA(scanlinedin[57]),
        .DIB(scanlinedin[58]),
        .DIC(scanlinedin[59]),
        .DID(1'b0),
        .DOA(scanlinecache_reg_64_127_57_59_n_0),
        .DOB(scanlinecache_reg_64_127_57_59_n_1),
        .DOC(scanlinecache_reg_64_127_57_59_n_2),
        .DOD(NLW_scanlinecache_reg_64_127_57_59_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/scanlinecache_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "60" *) 
  (* ram_slice_end = "62" *) 
  RAM64M #(
    .INIT_A(64'hFFFF0000FFFF0000),
    .INIT_B(64'hFFFFFFFF00000000),
    .INIT_C(64'hFFFFFFFFFFFFFFFF),
    .INIT_D(64'h0000000000000000)) 
    scanlinecache_reg_64_127_60_62
       (.ADDRA(scanlinera),
        .ADDRB(scanlinera),
        .ADDRC(scanlinera),
        .ADDRD(scanlinewa[5:0]),
        .DIA(scanlinedin[60]),
        .DIB(scanlinedin[61]),
        .DIC(scanlinedin[62]),
        .DID(1'b0),
        .DOA(scanlinecache_reg_64_127_60_62_n_0),
        .DOB(scanlinecache_reg_64_127_60_62_n_1),
        .DOC(scanlinecache_reg_64_127_60_62_n_2),
        .DOD(NLW_scanlinecache_reg_64_127_60_62_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/videocoreInst/scanlinecache_reg_64_127_63_63" *) 
  (* RTL_RAM_STYLE = "NONE" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "63" *) 
  (* ram_slice_end = "63" *) 
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    scanlinecache_reg_64_127_63_63
       (.A0(scanlinewa[0]),
        .A1(scanlinewa[1]),
        .A2(scanlinewa[2]),
        .A3(scanlinewa[3]),
        .A4(scanlinewa[4]),
        .A5(scanlinewa[5]),
        .D(scanlinedin[63]),
        .DPO(scanlinecache_reg_64_127_63_63_n_0),
        .DPRA0(scanlinera[0]),
        .DPRA1(scanlinera[1]),
        .DPRA2(scanlinera[2]),
        .DPRA3(scanlinera[3]),
        .DPRA4(scanlinera[4]),
        .DPRA5(scanlinera[5]),
        .SPO(NLW_scanlinecache_reg_64_127_63_63_SPO_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/scanlinecache_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M #(
    .INIT_A(64'hFFFFFFFFFFFFFFFF),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'hAAAAAAAAAAAAAAAA),
    .INIT_D(64'h0000000000000000)) 
    scanlinecache_reg_64_127_6_8
       (.ADDRA(scanlinera),
        .ADDRB(scanlinera),
        .ADDRC(scanlinera),
        .ADDRD(scanlinewa[5:0]),
        .DIA(scanlinedin[6]),
        .DIB(scanlinedin[7]),
        .DIC(scanlinedin[8]),
        .DID(1'b0),
        .DOA(scanlinecache_reg_64_127_6_8_n_0),
        .DOB(scanlinecache_reg_64_127_6_8_n_1),
        .DOC(scanlinecache_reg_64_127_6_8_n_2),
        .DOD(NLW_scanlinecache_reg_64_127_6_8_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "videomodule/scanlinecache_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M #(
    .INIT_A(64'hCCCCCCCCCCCCCCCC),
    .INIT_B(64'hF0F0F0F0F0F0F0F0),
    .INIT_C(64'hFF00FF00FF00FF00),
    .INIT_D(64'h0000000000000000)) 
    scanlinecache_reg_64_127_9_11
       (.ADDRA(scanlinera),
        .ADDRB(scanlinera),
        .ADDRC(scanlinera),
        .ADDRD(scanlinewa[5:0]),
        .DIA(scanlinedin[9]),
        .DIB(scanlinedin[10]),
        .DIC(scanlinedin[11]),
        .DID(1'b0),
        .DOA(scanlinecache_reg_64_127_9_11_n_0),
        .DOB(scanlinecache_reg_64_127_9_11_n_1),
        .DOC(scanlinecache_reg_64_127_9_11_n_2),
        .DOD(NLW_scanlinecache_reg_64_127_9_11_DOD_UNCONNECTED),
        .WCLK(aclk),
        .WE(scanlinecache_reg_64_127_0_2_i_1_n_0));
  LUT5 #(
    .INIT(32'h00080000)) 
    \scanlinedin[63]_i_1 
       (.I0(\scanstate_reg_n_0_[2] ),
        .I1(m_axi_rvalid),
        .I2(\scanstate_reg_n_0_[1] ),
        .I3(\scanstate_reg_n_0_[0] ),
        .I4(aresetn),
        .O(\scanlinedin[63]_i_1_n_0 ));
  FDRE \scanlinedin_reg[0] 
       (.C(aclk),
        .CE(\scanlinedin[63]_i_1_n_0 ),
        .D(m_axi_rdata[0]),
        .Q(scanlinedin[0]),
        .R(1'b0));
  FDRE \scanlinedin_reg[10] 
       (.C(aclk),
        .CE(\scanlinedin[63]_i_1_n_0 ),
        .D(m_axi_rdata[10]),
        .Q(scanlinedin[10]),
        .R(1'b0));
  FDRE \scanlinedin_reg[11] 
       (.C(aclk),
        .CE(\scanlinedin[63]_i_1_n_0 ),
        .D(m_axi_rdata[11]),
        .Q(scanlinedin[11]),
        .R(1'b0));
  FDRE \scanlinedin_reg[12] 
       (.C(aclk),
        .CE(\scanlinedin[63]_i_1_n_0 ),
        .D(m_axi_rdata[12]),
        .Q(scanlinedin[12]),
        .R(1'b0));
  FDRE \scanlinedin_reg[13] 
       (.C(aclk),
        .CE(\scanlinedin[63]_i_1_n_0 ),
        .D(m_axi_rdata[13]),
        .Q(scanlinedin[13]),
        .R(1'b0));
  FDRE \scanlinedin_reg[14] 
       (.C(aclk),
        .CE(\scanlinedin[63]_i_1_n_0 ),
        .D(m_axi_rdata[14]),
        .Q(scanlinedin[14]),
        .R(1'b0));
  FDRE \scanlinedin_reg[15] 
       (.C(aclk),
        .CE(\scanlinedin[63]_i_1_n_0 ),
        .D(m_axi_rdata[15]),
        .Q(scanlinedin[15]),
        .R(1'b0));
  FDRE \scanlinedin_reg[16] 
       (.C(aclk),
        .CE(\scanlinedin[63]_i_1_n_0 ),
        .D(m_axi_rdata[16]),
        .Q(scanlinedin[16]),
        .R(1'b0));
  FDRE \scanlinedin_reg[17] 
       (.C(aclk),
        .CE(\scanlinedin[63]_i_1_n_0 ),
        .D(m_axi_rdata[17]),
        .Q(scanlinedin[17]),
        .R(1'b0));
  FDRE \scanlinedin_reg[18] 
       (.C(aclk),
        .CE(\scanlinedin[63]_i_1_n_0 ),
        .D(m_axi_rdata[18]),
        .Q(scanlinedin[18]),
        .R(1'b0));
  FDRE \scanlinedin_reg[19] 
       (.C(aclk),
        .CE(\scanlinedin[63]_i_1_n_0 ),
        .D(m_axi_rdata[19]),
        .Q(scanlinedin[19]),
        .R(1'b0));
  FDRE \scanlinedin_reg[1] 
       (.C(aclk),
        .CE(\scanlinedin[63]_i_1_n_0 ),
        .D(m_axi_rdata[1]),
        .Q(scanlinedin[1]),
        .R(1'b0));
  FDRE \scanlinedin_reg[20] 
       (.C(aclk),
        .CE(\scanlinedin[63]_i_1_n_0 ),
        .D(m_axi_rdata[20]),
        .Q(scanlinedin[20]),
        .R(1'b0));
  FDRE \scanlinedin_reg[21] 
       (.C(aclk),
        .CE(\scanlinedin[63]_i_1_n_0 ),
        .D(m_axi_rdata[21]),
        .Q(scanlinedin[21]),
        .R(1'b0));
  FDRE \scanlinedin_reg[22] 
       (.C(aclk),
        .CE(\scanlinedin[63]_i_1_n_0 ),
        .D(m_axi_rdata[22]),
        .Q(scanlinedin[22]),
        .R(1'b0));
  FDRE \scanlinedin_reg[23] 
       (.C(aclk),
        .CE(\scanlinedin[63]_i_1_n_0 ),
        .D(m_axi_rdata[23]),
        .Q(scanlinedin[23]),
        .R(1'b0));
  FDRE \scanlinedin_reg[24] 
       (.C(aclk),
        .CE(\scanlinedin[63]_i_1_n_0 ),
        .D(m_axi_rdata[24]),
        .Q(scanlinedin[24]),
        .R(1'b0));
  FDRE \scanlinedin_reg[25] 
       (.C(aclk),
        .CE(\scanlinedin[63]_i_1_n_0 ),
        .D(m_axi_rdata[25]),
        .Q(scanlinedin[25]),
        .R(1'b0));
  FDRE \scanlinedin_reg[26] 
       (.C(aclk),
        .CE(\scanlinedin[63]_i_1_n_0 ),
        .D(m_axi_rdata[26]),
        .Q(scanlinedin[26]),
        .R(1'b0));
  FDRE \scanlinedin_reg[27] 
       (.C(aclk),
        .CE(\scanlinedin[63]_i_1_n_0 ),
        .D(m_axi_rdata[27]),
        .Q(scanlinedin[27]),
        .R(1'b0));
  FDRE \scanlinedin_reg[28] 
       (.C(aclk),
        .CE(\scanlinedin[63]_i_1_n_0 ),
        .D(m_axi_rdata[28]),
        .Q(scanlinedin[28]),
        .R(1'b0));
  FDRE \scanlinedin_reg[29] 
       (.C(aclk),
        .CE(\scanlinedin[63]_i_1_n_0 ),
        .D(m_axi_rdata[29]),
        .Q(scanlinedin[29]),
        .R(1'b0));
  FDRE \scanlinedin_reg[2] 
       (.C(aclk),
        .CE(\scanlinedin[63]_i_1_n_0 ),
        .D(m_axi_rdata[2]),
        .Q(scanlinedin[2]),
        .R(1'b0));
  FDRE \scanlinedin_reg[30] 
       (.C(aclk),
        .CE(\scanlinedin[63]_i_1_n_0 ),
        .D(m_axi_rdata[30]),
        .Q(scanlinedin[30]),
        .R(1'b0));
  FDRE \scanlinedin_reg[31] 
       (.C(aclk),
        .CE(\scanlinedin[63]_i_1_n_0 ),
        .D(m_axi_rdata[31]),
        .Q(scanlinedin[31]),
        .R(1'b0));
  FDRE \scanlinedin_reg[32] 
       (.C(aclk),
        .CE(\scanlinedin[63]_i_1_n_0 ),
        .D(m_axi_rdata[32]),
        .Q(scanlinedin[32]),
        .R(1'b0));
  FDRE \scanlinedin_reg[33] 
       (.C(aclk),
        .CE(\scanlinedin[63]_i_1_n_0 ),
        .D(m_axi_rdata[33]),
        .Q(scanlinedin[33]),
        .R(1'b0));
  FDRE \scanlinedin_reg[34] 
       (.C(aclk),
        .CE(\scanlinedin[63]_i_1_n_0 ),
        .D(m_axi_rdata[34]),
        .Q(scanlinedin[34]),
        .R(1'b0));
  FDRE \scanlinedin_reg[35] 
       (.C(aclk),
        .CE(\scanlinedin[63]_i_1_n_0 ),
        .D(m_axi_rdata[35]),
        .Q(scanlinedin[35]),
        .R(1'b0));
  FDRE \scanlinedin_reg[36] 
       (.C(aclk),
        .CE(\scanlinedin[63]_i_1_n_0 ),
        .D(m_axi_rdata[36]),
        .Q(scanlinedin[36]),
        .R(1'b0));
  FDRE \scanlinedin_reg[37] 
       (.C(aclk),
        .CE(\scanlinedin[63]_i_1_n_0 ),
        .D(m_axi_rdata[37]),
        .Q(scanlinedin[37]),
        .R(1'b0));
  FDRE \scanlinedin_reg[38] 
       (.C(aclk),
        .CE(\scanlinedin[63]_i_1_n_0 ),
        .D(m_axi_rdata[38]),
        .Q(scanlinedin[38]),
        .R(1'b0));
  FDRE \scanlinedin_reg[39] 
       (.C(aclk),
        .CE(\scanlinedin[63]_i_1_n_0 ),
        .D(m_axi_rdata[39]),
        .Q(scanlinedin[39]),
        .R(1'b0));
  FDRE \scanlinedin_reg[3] 
       (.C(aclk),
        .CE(\scanlinedin[63]_i_1_n_0 ),
        .D(m_axi_rdata[3]),
        .Q(scanlinedin[3]),
        .R(1'b0));
  FDRE \scanlinedin_reg[40] 
       (.C(aclk),
        .CE(\scanlinedin[63]_i_1_n_0 ),
        .D(m_axi_rdata[40]),
        .Q(scanlinedin[40]),
        .R(1'b0));
  FDRE \scanlinedin_reg[41] 
       (.C(aclk),
        .CE(\scanlinedin[63]_i_1_n_0 ),
        .D(m_axi_rdata[41]),
        .Q(scanlinedin[41]),
        .R(1'b0));
  FDRE \scanlinedin_reg[42] 
       (.C(aclk),
        .CE(\scanlinedin[63]_i_1_n_0 ),
        .D(m_axi_rdata[42]),
        .Q(scanlinedin[42]),
        .R(1'b0));
  FDRE \scanlinedin_reg[43] 
       (.C(aclk),
        .CE(\scanlinedin[63]_i_1_n_0 ),
        .D(m_axi_rdata[43]),
        .Q(scanlinedin[43]),
        .R(1'b0));
  FDRE \scanlinedin_reg[44] 
       (.C(aclk),
        .CE(\scanlinedin[63]_i_1_n_0 ),
        .D(m_axi_rdata[44]),
        .Q(scanlinedin[44]),
        .R(1'b0));
  FDRE \scanlinedin_reg[45] 
       (.C(aclk),
        .CE(\scanlinedin[63]_i_1_n_0 ),
        .D(m_axi_rdata[45]),
        .Q(scanlinedin[45]),
        .R(1'b0));
  FDRE \scanlinedin_reg[46] 
       (.C(aclk),
        .CE(\scanlinedin[63]_i_1_n_0 ),
        .D(m_axi_rdata[46]),
        .Q(scanlinedin[46]),
        .R(1'b0));
  FDRE \scanlinedin_reg[47] 
       (.C(aclk),
        .CE(\scanlinedin[63]_i_1_n_0 ),
        .D(m_axi_rdata[47]),
        .Q(scanlinedin[47]),
        .R(1'b0));
  FDRE \scanlinedin_reg[48] 
       (.C(aclk),
        .CE(\scanlinedin[63]_i_1_n_0 ),
        .D(m_axi_rdata[48]),
        .Q(scanlinedin[48]),
        .R(1'b0));
  FDRE \scanlinedin_reg[49] 
       (.C(aclk),
        .CE(\scanlinedin[63]_i_1_n_0 ),
        .D(m_axi_rdata[49]),
        .Q(scanlinedin[49]),
        .R(1'b0));
  FDRE \scanlinedin_reg[4] 
       (.C(aclk),
        .CE(\scanlinedin[63]_i_1_n_0 ),
        .D(m_axi_rdata[4]),
        .Q(scanlinedin[4]),
        .R(1'b0));
  FDRE \scanlinedin_reg[50] 
       (.C(aclk),
        .CE(\scanlinedin[63]_i_1_n_0 ),
        .D(m_axi_rdata[50]),
        .Q(scanlinedin[50]),
        .R(1'b0));
  FDRE \scanlinedin_reg[51] 
       (.C(aclk),
        .CE(\scanlinedin[63]_i_1_n_0 ),
        .D(m_axi_rdata[51]),
        .Q(scanlinedin[51]),
        .R(1'b0));
  FDRE \scanlinedin_reg[52] 
       (.C(aclk),
        .CE(\scanlinedin[63]_i_1_n_0 ),
        .D(m_axi_rdata[52]),
        .Q(scanlinedin[52]),
        .R(1'b0));
  FDRE \scanlinedin_reg[53] 
       (.C(aclk),
        .CE(\scanlinedin[63]_i_1_n_0 ),
        .D(m_axi_rdata[53]),
        .Q(scanlinedin[53]),
        .R(1'b0));
  FDRE \scanlinedin_reg[54] 
       (.C(aclk),
        .CE(\scanlinedin[63]_i_1_n_0 ),
        .D(m_axi_rdata[54]),
        .Q(scanlinedin[54]),
        .R(1'b0));
  FDRE \scanlinedin_reg[55] 
       (.C(aclk),
        .CE(\scanlinedin[63]_i_1_n_0 ),
        .D(m_axi_rdata[55]),
        .Q(scanlinedin[55]),
        .R(1'b0));
  FDRE \scanlinedin_reg[56] 
       (.C(aclk),
        .CE(\scanlinedin[63]_i_1_n_0 ),
        .D(m_axi_rdata[56]),
        .Q(scanlinedin[56]),
        .R(1'b0));
  FDRE \scanlinedin_reg[57] 
       (.C(aclk),
        .CE(\scanlinedin[63]_i_1_n_0 ),
        .D(m_axi_rdata[57]),
        .Q(scanlinedin[57]),
        .R(1'b0));
  FDRE \scanlinedin_reg[58] 
       (.C(aclk),
        .CE(\scanlinedin[63]_i_1_n_0 ),
        .D(m_axi_rdata[58]),
        .Q(scanlinedin[58]),
        .R(1'b0));
  FDRE \scanlinedin_reg[59] 
       (.C(aclk),
        .CE(\scanlinedin[63]_i_1_n_0 ),
        .D(m_axi_rdata[59]),
        .Q(scanlinedin[59]),
        .R(1'b0));
  FDRE \scanlinedin_reg[5] 
       (.C(aclk),
        .CE(\scanlinedin[63]_i_1_n_0 ),
        .D(m_axi_rdata[5]),
        .Q(scanlinedin[5]),
        .R(1'b0));
  FDRE \scanlinedin_reg[60] 
       (.C(aclk),
        .CE(\scanlinedin[63]_i_1_n_0 ),
        .D(m_axi_rdata[60]),
        .Q(scanlinedin[60]),
        .R(1'b0));
  FDRE \scanlinedin_reg[61] 
       (.C(aclk),
        .CE(\scanlinedin[63]_i_1_n_0 ),
        .D(m_axi_rdata[61]),
        .Q(scanlinedin[61]),
        .R(1'b0));
  FDRE \scanlinedin_reg[62] 
       (.C(aclk),
        .CE(\scanlinedin[63]_i_1_n_0 ),
        .D(m_axi_rdata[62]),
        .Q(scanlinedin[62]),
        .R(1'b0));
  FDRE \scanlinedin_reg[63] 
       (.C(aclk),
        .CE(\scanlinedin[63]_i_1_n_0 ),
        .D(m_axi_rdata[63]),
        .Q(scanlinedin[63]),
        .R(1'b0));
  FDRE \scanlinedin_reg[6] 
       (.C(aclk),
        .CE(\scanlinedin[63]_i_1_n_0 ),
        .D(m_axi_rdata[6]),
        .Q(scanlinedin[6]),
        .R(1'b0));
  FDRE \scanlinedin_reg[7] 
       (.C(aclk),
        .CE(\scanlinedin[63]_i_1_n_0 ),
        .D(m_axi_rdata[7]),
        .Q(scanlinedin[7]),
        .R(1'b0));
  FDRE \scanlinedin_reg[8] 
       (.C(aclk),
        .CE(\scanlinedin[63]_i_1_n_0 ),
        .D(m_axi_rdata[8]),
        .Q(scanlinedin[8]),
        .R(1'b0));
  FDRE \scanlinedin_reg[9] 
       (.C(aclk),
        .CE(\scanlinedin[63]_i_1_n_0 ),
        .D(m_axi_rdata[9]),
        .Q(scanlinedin[9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \scanlinepre_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(video_y[0]),
        .Q(scanlinepre[0]),
        .R(vpucommandinterface_n_32));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \scanlinepre_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(video_y[1]),
        .Q(scanlinepre[1]),
        .R(vpucommandinterface_n_32));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \scanlinepre_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(video_y[2]),
        .Q(scanlinepre[2]),
        .R(vpucommandinterface_n_32));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \scanlinepre_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(video_y[3]),
        .Q(scanlinepre[3]),
        .R(vpucommandinterface_n_32));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \scanlinepre_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(video_y[4]),
        .Q(scanlinepre[4]),
        .R(vpucommandinterface_n_32));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \scanlinepre_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(video_y[5]),
        .Q(scanlinepre[5]),
        .R(vpucommandinterface_n_32));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \scanlinepre_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(video_y[6]),
        .Q(scanlinepre[6]),
        .R(vpucommandinterface_n_32));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \scanlinepre_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(video_y[7]),
        .Q(scanlinepre[7]),
        .R(vpucommandinterface_n_32));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \scanlinepre_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(video_y[8]),
        .Q(scanlinepre[8]),
        .R(vpucommandinterface_n_32));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \scanlinepre_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(video_y[9]),
        .Q(scanlinepre[9]),
        .R(vpucommandinterface_n_32));
  LUT4 #(
    .INIT(16'h1000)) 
    \scanlinewa[7]_i_1 
       (.I0(\scanstate_reg_n_0_[0] ),
        .I1(\scanstate_reg_n_0_[1] ),
        .I2(m_axi_rvalid),
        .I3(\scanstate_reg_n_0_[2] ),
        .O(scanlinedin__0));
  FDRE \scanlinewa_reg[0] 
       (.C(aclk),
        .CE(scanlinedin__0),
        .D(rdata_cnt[0]),
        .Q(scanlinewa[0]),
        .R(vpucommandinterface_n_32));
  FDRE \scanlinewa_reg[1] 
       (.C(aclk),
        .CE(scanlinedin__0),
        .D(rdata_cnt[1]),
        .Q(scanlinewa[1]),
        .R(vpucommandinterface_n_32));
  FDRE \scanlinewa_reg[2] 
       (.C(aclk),
        .CE(scanlinedin__0),
        .D(rdata_cnt[2]),
        .Q(scanlinewa[2]),
        .R(vpucommandinterface_n_32));
  FDRE \scanlinewa_reg[3] 
       (.C(aclk),
        .CE(scanlinedin__0),
        .D(rdata_cnt[3]),
        .Q(scanlinewa[3]),
        .R(vpucommandinterface_n_32));
  FDRE \scanlinewa_reg[4] 
       (.C(aclk),
        .CE(scanlinedin__0),
        .D(rdata_cnt[4]),
        .Q(scanlinewa[4]),
        .R(vpucommandinterface_n_32));
  FDRE \scanlinewa_reg[5] 
       (.C(aclk),
        .CE(scanlinedin__0),
        .D(rdata_cnt[5]),
        .Q(scanlinewa[5]),
        .R(vpucommandinterface_n_32));
  FDRE \scanlinewa_reg[6] 
       (.C(aclk),
        .CE(scanlinedin__0),
        .D(rdata_cnt[6]),
        .Q(scanlinewa[6]),
        .R(vpucommandinterface_n_32));
  FDRE \scanlinewa_reg[7] 
       (.C(aclk),
        .CE(scanlinedin__0),
        .D(rdata_cnt[7]),
        .Q(scanlinewa[7]),
        .R(vpucommandinterface_n_32));
  FDRE scanlinewe_reg
       (.C(aclk),
        .CE(1'b1),
        .D(scanlinedin__0),
        .Q(scanlinewe),
        .R(vpucommandinterface_n_32));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \scanoffset[0]_i_1 
       (.I0(scanoffset[0]),
        .I1(\scanstate_reg_n_0_[0] ),
        .I2(scanaddr[0]),
        .O(\scanoffset[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \scanoffset[10]_i_1 
       (.I0(\scanoffset_reg[13]_i_2_n_7 ),
        .I1(\scanstate_reg_n_0_[0] ),
        .I2(scanaddr[10]),
        .O(\scanoffset[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \scanoffset[11]_i_1 
       (.I0(\scanoffset_reg[13]_i_2_n_6 ),
        .I1(\scanstate_reg_n_0_[0] ),
        .I2(scanaddr[11]),
        .O(\scanoffset[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \scanoffset[12]_i_1 
       (.I0(\scanoffset_reg[13]_i_2_n_5 ),
        .I1(\scanstate_reg_n_0_[0] ),
        .I2(scanaddr[12]),
        .O(\scanoffset[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \scanoffset[13]_i_1 
       (.I0(\scanoffset_reg[13]_i_2_n_4 ),
        .I1(\scanstate_reg_n_0_[0] ),
        .I2(scanaddr[13]),
        .O(\scanoffset[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \scanoffset[14]_i_1 
       (.I0(\scanoffset_reg[17]_i_2_n_7 ),
        .I1(\scanstate_reg_n_0_[0] ),
        .I2(scanaddr[14]),
        .O(\scanoffset[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \scanoffset[15]_i_1 
       (.I0(\scanoffset_reg[17]_i_2_n_6 ),
        .I1(\scanstate_reg_n_0_[0] ),
        .I2(scanaddr[15]),
        .O(\scanoffset[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \scanoffset[16]_i_1 
       (.I0(\scanoffset_reg[17]_i_2_n_5 ),
        .I1(\scanstate_reg_n_0_[0] ),
        .I2(scanaddr[16]),
        .O(\scanoffset[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \scanoffset[17]_i_1 
       (.I0(\scanoffset_reg[17]_i_2_n_4 ),
        .I1(\scanstate_reg_n_0_[0] ),
        .I2(scanaddr[17]),
        .O(\scanoffset[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \scanoffset[18]_i_1 
       (.I0(\scanoffset_reg[21]_i_2_n_7 ),
        .I1(\scanstate_reg_n_0_[0] ),
        .I2(scanaddr[18]),
        .O(\scanoffset[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \scanoffset[19]_i_1 
       (.I0(\scanoffset_reg[21]_i_2_n_6 ),
        .I1(\scanstate_reg_n_0_[0] ),
        .I2(scanaddr[19]),
        .O(\scanoffset[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \scanoffset[1]_i_1 
       (.I0(scanoffset[1]),
        .I1(\scanstate_reg_n_0_[0] ),
        .I2(scanaddr[1]),
        .O(\scanoffset[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \scanoffset[20]_i_1 
       (.I0(\scanoffset_reg[21]_i_2_n_5 ),
        .I1(\scanstate_reg_n_0_[0] ),
        .I2(scanaddr[20]),
        .O(\scanoffset[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \scanoffset[21]_i_1 
       (.I0(\scanoffset_reg[21]_i_2_n_4 ),
        .I1(\scanstate_reg_n_0_[0] ),
        .I2(scanaddr[21]),
        .O(\scanoffset[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \scanoffset[22]_i_1 
       (.I0(\scanoffset_reg[25]_i_2_n_7 ),
        .I1(\scanstate_reg_n_0_[0] ),
        .I2(scanaddr[22]),
        .O(\scanoffset[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \scanoffset[23]_i_1 
       (.I0(\scanoffset_reg[25]_i_2_n_6 ),
        .I1(\scanstate_reg_n_0_[0] ),
        .I2(scanaddr[23]),
        .O(\scanoffset[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \scanoffset[24]_i_1 
       (.I0(\scanoffset_reg[25]_i_2_n_5 ),
        .I1(\scanstate_reg_n_0_[0] ),
        .I2(scanaddr[24]),
        .O(\scanoffset[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \scanoffset[25]_i_1 
       (.I0(\scanoffset_reg[25]_i_2_n_4 ),
        .I1(\scanstate_reg_n_0_[0] ),
        .I2(scanaddr[25]),
        .O(\scanoffset[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \scanoffset[26]_i_1 
       (.I0(\scanoffset_reg[29]_i_2_n_7 ),
        .I1(\scanstate_reg_n_0_[0] ),
        .I2(scanaddr[26]),
        .O(\scanoffset[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \scanoffset[27]_i_1 
       (.I0(\scanoffset_reg[29]_i_2_n_6 ),
        .I1(\scanstate_reg_n_0_[0] ),
        .I2(scanaddr[27]),
        .O(\scanoffset[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \scanoffset[28]_i_1 
       (.I0(\scanoffset_reg[29]_i_2_n_5 ),
        .I1(\scanstate_reg_n_0_[0] ),
        .I2(scanaddr[28]),
        .O(\scanoffset[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \scanoffset[29]_i_1 
       (.I0(\scanoffset_reg[29]_i_2_n_4 ),
        .I1(\scanstate_reg_n_0_[0] ),
        .I2(scanaddr[29]),
        .O(\scanoffset[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \scanoffset[2]_i_1 
       (.I0(scanoffset[2]),
        .I1(\scanstate_reg_n_0_[0] ),
        .I2(scanaddr[2]),
        .O(\scanoffset[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \scanoffset[30]_i_1 
       (.I0(\scanoffset_reg[31]_i_4_n_7 ),
        .I1(\scanstate_reg_n_0_[0] ),
        .I2(scanaddr[30]),
        .O(\scanoffset[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0F000008)) 
    \scanoffset[31]_i_1 
       (.I0(scanoffset1),
        .I1(p_0_out[1]),
        .I2(\scanstate_reg_n_0_[1] ),
        .I3(\scanstate_reg_n_0_[0] ),
        .I4(\scanstate_reg_n_0_[2] ),
        .O(\scanoffset[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \scanoffset[31]_i_2 
       (.I0(\scanoffset_reg[31]_i_4_n_6 ),
        .I1(\scanstate_reg_n_0_[0] ),
        .I2(scanaddr[31]),
        .O(\scanoffset[31]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \scanoffset[31]_i_5 
       (.I0(scanline[7]),
        .I1(scanline[8]),
        .I2(scanline[6]),
        .O(\scanoffset[31]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \scanoffset[31]_i_6 
       (.I0(scanline[4]),
        .I1(scanline[3]),
        .I2(scanline[5]),
        .O(\scanoffset[31]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h81000081)) 
    \scanoffset[31]_i_7 
       (.I0(lastscanline),
        .I1(scanline[0]),
        .I2(scanline[1]),
        .I3(scanline[2]),
        .I4(scanwidth),
        .O(\scanoffset[31]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \scanoffset[3]_i_1 
       (.I0(scanoffset[3]),
        .I1(\scanstate_reg_n_0_[0] ),
        .I2(scanaddr[3]),
        .O(\scanoffset[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \scanoffset[4]_i_1 
       (.I0(scanoffset[4]),
        .I1(\scanstate_reg_n_0_[0] ),
        .I2(scanaddr[4]),
        .O(\scanoffset[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \scanoffset[5]_i_1 
       (.I0(scanoffset[5]),
        .I1(\scanstate_reg_n_0_[0] ),
        .I2(scanaddr[5]),
        .O(\scanoffset[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \scanoffset[6]_i_1 
       (.I0(\scanoffset_reg[9]_i_2_n_7 ),
        .I1(\scanstate_reg_n_0_[0] ),
        .I2(scanaddr[6]),
        .O(\scanoffset[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \scanoffset[7]_i_1 
       (.I0(\scanoffset_reg[9]_i_2_n_6 ),
        .I1(\scanstate_reg_n_0_[0] ),
        .I2(scanaddr[7]),
        .O(\scanoffset[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \scanoffset[8]_i_1 
       (.I0(\scanoffset_reg[9]_i_2_n_5 ),
        .I1(\scanstate_reg_n_0_[0] ),
        .I2(scanaddr[8]),
        .O(\scanoffset[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \scanoffset[9]_i_1 
       (.I0(\scanoffset_reg[9]_i_2_n_4 ),
        .I1(\scanstate_reg_n_0_[0] ),
        .I2(scanaddr[9]),
        .O(\scanoffset[9]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \scanoffset[9]_i_3 
       (.I0(scanoffset[7]),
        .O(\scanoffset[9]_i_3_n_0 ));
  FDRE \scanoffset_reg[0] 
       (.C(aclk),
        .CE(\scanoffset[31]_i_1_n_0 ),
        .D(\scanoffset[0]_i_1_n_0 ),
        .Q(scanoffset[0]),
        .R(vpucommandinterface_n_32));
  FDRE \scanoffset_reg[10] 
       (.C(aclk),
        .CE(\scanoffset[31]_i_1_n_0 ),
        .D(\scanoffset[10]_i_1_n_0 ),
        .Q(scanoffset[10]),
        .R(vpucommandinterface_n_32));
  FDRE \scanoffset_reg[11] 
       (.C(aclk),
        .CE(\scanoffset[31]_i_1_n_0 ),
        .D(\scanoffset[11]_i_1_n_0 ),
        .Q(scanoffset[11]),
        .R(vpucommandinterface_n_32));
  FDRE \scanoffset_reg[12] 
       (.C(aclk),
        .CE(\scanoffset[31]_i_1_n_0 ),
        .D(\scanoffset[12]_i_1_n_0 ),
        .Q(scanoffset[12]),
        .R(vpucommandinterface_n_32));
  FDRE \scanoffset_reg[13] 
       (.C(aclk),
        .CE(\scanoffset[31]_i_1_n_0 ),
        .D(\scanoffset[13]_i_1_n_0 ),
        .Q(scanoffset[13]),
        .R(vpucommandinterface_n_32));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \scanoffset_reg[13]_i_2 
       (.CI(\scanoffset_reg[9]_i_2_n_0 ),
        .CO({\scanoffset_reg[13]_i_2_n_0 ,\scanoffset_reg[13]_i_2_n_1 ,\scanoffset_reg[13]_i_2_n_2 ,\scanoffset_reg[13]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\scanoffset_reg[13]_i_2_n_4 ,\scanoffset_reg[13]_i_2_n_5 ,\scanoffset_reg[13]_i_2_n_6 ,\scanoffset_reg[13]_i_2_n_7 }),
        .S(scanoffset[13:10]));
  FDRE \scanoffset_reg[14] 
       (.C(aclk),
        .CE(\scanoffset[31]_i_1_n_0 ),
        .D(\scanoffset[14]_i_1_n_0 ),
        .Q(scanoffset[14]),
        .R(vpucommandinterface_n_32));
  FDRE \scanoffset_reg[15] 
       (.C(aclk),
        .CE(\scanoffset[31]_i_1_n_0 ),
        .D(\scanoffset[15]_i_1_n_0 ),
        .Q(scanoffset[15]),
        .R(vpucommandinterface_n_32));
  FDRE \scanoffset_reg[16] 
       (.C(aclk),
        .CE(\scanoffset[31]_i_1_n_0 ),
        .D(\scanoffset[16]_i_1_n_0 ),
        .Q(scanoffset[16]),
        .R(vpucommandinterface_n_32));
  FDRE \scanoffset_reg[17] 
       (.C(aclk),
        .CE(\scanoffset[31]_i_1_n_0 ),
        .D(\scanoffset[17]_i_1_n_0 ),
        .Q(scanoffset[17]),
        .R(vpucommandinterface_n_32));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \scanoffset_reg[17]_i_2 
       (.CI(\scanoffset_reg[13]_i_2_n_0 ),
        .CO({\scanoffset_reg[17]_i_2_n_0 ,\scanoffset_reg[17]_i_2_n_1 ,\scanoffset_reg[17]_i_2_n_2 ,\scanoffset_reg[17]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\scanoffset_reg[17]_i_2_n_4 ,\scanoffset_reg[17]_i_2_n_5 ,\scanoffset_reg[17]_i_2_n_6 ,\scanoffset_reg[17]_i_2_n_7 }),
        .S(scanoffset[17:14]));
  FDRE \scanoffset_reg[18] 
       (.C(aclk),
        .CE(\scanoffset[31]_i_1_n_0 ),
        .D(\scanoffset[18]_i_1_n_0 ),
        .Q(scanoffset[18]),
        .R(vpucommandinterface_n_32));
  FDRE \scanoffset_reg[19] 
       (.C(aclk),
        .CE(\scanoffset[31]_i_1_n_0 ),
        .D(\scanoffset[19]_i_1_n_0 ),
        .Q(scanoffset[19]),
        .R(vpucommandinterface_n_32));
  FDRE \scanoffset_reg[1] 
       (.C(aclk),
        .CE(\scanoffset[31]_i_1_n_0 ),
        .D(\scanoffset[1]_i_1_n_0 ),
        .Q(scanoffset[1]),
        .R(vpucommandinterface_n_32));
  FDRE \scanoffset_reg[20] 
       (.C(aclk),
        .CE(\scanoffset[31]_i_1_n_0 ),
        .D(\scanoffset[20]_i_1_n_0 ),
        .Q(scanoffset[20]),
        .R(vpucommandinterface_n_32));
  FDRE \scanoffset_reg[21] 
       (.C(aclk),
        .CE(\scanoffset[31]_i_1_n_0 ),
        .D(\scanoffset[21]_i_1_n_0 ),
        .Q(scanoffset[21]),
        .R(vpucommandinterface_n_32));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \scanoffset_reg[21]_i_2 
       (.CI(\scanoffset_reg[17]_i_2_n_0 ),
        .CO({\scanoffset_reg[21]_i_2_n_0 ,\scanoffset_reg[21]_i_2_n_1 ,\scanoffset_reg[21]_i_2_n_2 ,\scanoffset_reg[21]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\scanoffset_reg[21]_i_2_n_4 ,\scanoffset_reg[21]_i_2_n_5 ,\scanoffset_reg[21]_i_2_n_6 ,\scanoffset_reg[21]_i_2_n_7 }),
        .S(scanoffset[21:18]));
  FDRE \scanoffset_reg[22] 
       (.C(aclk),
        .CE(\scanoffset[31]_i_1_n_0 ),
        .D(\scanoffset[22]_i_1_n_0 ),
        .Q(scanoffset[22]),
        .R(vpucommandinterface_n_32));
  FDRE \scanoffset_reg[23] 
       (.C(aclk),
        .CE(\scanoffset[31]_i_1_n_0 ),
        .D(\scanoffset[23]_i_1_n_0 ),
        .Q(scanoffset[23]),
        .R(vpucommandinterface_n_32));
  FDRE \scanoffset_reg[24] 
       (.C(aclk),
        .CE(\scanoffset[31]_i_1_n_0 ),
        .D(\scanoffset[24]_i_1_n_0 ),
        .Q(scanoffset[24]),
        .R(vpucommandinterface_n_32));
  FDRE \scanoffset_reg[25] 
       (.C(aclk),
        .CE(\scanoffset[31]_i_1_n_0 ),
        .D(\scanoffset[25]_i_1_n_0 ),
        .Q(scanoffset[25]),
        .R(vpucommandinterface_n_32));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \scanoffset_reg[25]_i_2 
       (.CI(\scanoffset_reg[21]_i_2_n_0 ),
        .CO({\scanoffset_reg[25]_i_2_n_0 ,\scanoffset_reg[25]_i_2_n_1 ,\scanoffset_reg[25]_i_2_n_2 ,\scanoffset_reg[25]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\scanoffset_reg[25]_i_2_n_4 ,\scanoffset_reg[25]_i_2_n_5 ,\scanoffset_reg[25]_i_2_n_6 ,\scanoffset_reg[25]_i_2_n_7 }),
        .S(scanoffset[25:22]));
  FDRE \scanoffset_reg[26] 
       (.C(aclk),
        .CE(\scanoffset[31]_i_1_n_0 ),
        .D(\scanoffset[26]_i_1_n_0 ),
        .Q(scanoffset[26]),
        .R(vpucommandinterface_n_32));
  FDRE \scanoffset_reg[27] 
       (.C(aclk),
        .CE(\scanoffset[31]_i_1_n_0 ),
        .D(\scanoffset[27]_i_1_n_0 ),
        .Q(scanoffset[27]),
        .R(vpucommandinterface_n_32));
  FDRE \scanoffset_reg[28] 
       (.C(aclk),
        .CE(\scanoffset[31]_i_1_n_0 ),
        .D(\scanoffset[28]_i_1_n_0 ),
        .Q(scanoffset[28]),
        .R(vpucommandinterface_n_32));
  FDRE \scanoffset_reg[29] 
       (.C(aclk),
        .CE(\scanoffset[31]_i_1_n_0 ),
        .D(\scanoffset[29]_i_1_n_0 ),
        .Q(scanoffset[29]),
        .R(vpucommandinterface_n_32));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \scanoffset_reg[29]_i_2 
       (.CI(\scanoffset_reg[25]_i_2_n_0 ),
        .CO({\scanoffset_reg[29]_i_2_n_0 ,\scanoffset_reg[29]_i_2_n_1 ,\scanoffset_reg[29]_i_2_n_2 ,\scanoffset_reg[29]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\scanoffset_reg[29]_i_2_n_4 ,\scanoffset_reg[29]_i_2_n_5 ,\scanoffset_reg[29]_i_2_n_6 ,\scanoffset_reg[29]_i_2_n_7 }),
        .S(scanoffset[29:26]));
  FDRE \scanoffset_reg[2] 
       (.C(aclk),
        .CE(\scanoffset[31]_i_1_n_0 ),
        .D(\scanoffset[2]_i_1_n_0 ),
        .Q(scanoffset[2]),
        .R(vpucommandinterface_n_32));
  FDRE \scanoffset_reg[30] 
       (.C(aclk),
        .CE(\scanoffset[31]_i_1_n_0 ),
        .D(\scanoffset[30]_i_1_n_0 ),
        .Q(scanoffset[30]),
        .R(vpucommandinterface_n_32));
  FDRE \scanoffset_reg[31] 
       (.C(aclk),
        .CE(\scanoffset[31]_i_1_n_0 ),
        .D(\scanoffset[31]_i_2_n_0 ),
        .Q(scanoffset[31]),
        .R(vpucommandinterface_n_32));
  CARRY4 \scanoffset_reg[31]_i_3 
       (.CI(1'b0),
        .CO({scanoffset1,\scanoffset_reg[31]_i_3_n_1 ,\scanoffset_reg[31]_i_3_n_2 ,\scanoffset_reg[31]_i_3_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_scanoffset_reg[31]_i_3_O_UNCONNECTED [3:0]),
        .S({scanline[9],\scanoffset[31]_i_5_n_0 ,\scanoffset[31]_i_6_n_0 ,\scanoffset[31]_i_7_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \scanoffset_reg[31]_i_4 
       (.CI(\scanoffset_reg[29]_i_2_n_0 ),
        .CO({\NLW_scanoffset_reg[31]_i_4_CO_UNCONNECTED [3:1],\scanoffset_reg[31]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_scanoffset_reg[31]_i_4_O_UNCONNECTED [3:2],\scanoffset_reg[31]_i_4_n_6 ,\scanoffset_reg[31]_i_4_n_7 }),
        .S({1'b0,1'b0,scanoffset[31:30]}));
  FDRE \scanoffset_reg[3] 
       (.C(aclk),
        .CE(\scanoffset[31]_i_1_n_0 ),
        .D(\scanoffset[3]_i_1_n_0 ),
        .Q(scanoffset[3]),
        .R(vpucommandinterface_n_32));
  FDRE \scanoffset_reg[4] 
       (.C(aclk),
        .CE(\scanoffset[31]_i_1_n_0 ),
        .D(\scanoffset[4]_i_1_n_0 ),
        .Q(scanoffset[4]),
        .R(vpucommandinterface_n_32));
  FDRE \scanoffset_reg[5] 
       (.C(aclk),
        .CE(\scanoffset[31]_i_1_n_0 ),
        .D(\scanoffset[5]_i_1_n_0 ),
        .Q(scanoffset[5]),
        .R(vpucommandinterface_n_32));
  FDRE \scanoffset_reg[6] 
       (.C(aclk),
        .CE(\scanoffset[31]_i_1_n_0 ),
        .D(\scanoffset[6]_i_1_n_0 ),
        .Q(scanoffset[6]),
        .R(vpucommandinterface_n_32));
  FDRE \scanoffset_reg[7] 
       (.C(aclk),
        .CE(\scanoffset[31]_i_1_n_0 ),
        .D(\scanoffset[7]_i_1_n_0 ),
        .Q(scanoffset[7]),
        .R(vpucommandinterface_n_32));
  FDRE \scanoffset_reg[8] 
       (.C(aclk),
        .CE(\scanoffset[31]_i_1_n_0 ),
        .D(\scanoffset[8]_i_1_n_0 ),
        .Q(scanoffset[8]),
        .R(vpucommandinterface_n_32));
  FDRE \scanoffset_reg[9] 
       (.C(aclk),
        .CE(\scanoffset[31]_i_1_n_0 ),
        .D(\scanoffset[9]_i_1_n_0 ),
        .Q(scanoffset[9]),
        .R(vpucommandinterface_n_32));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \scanoffset_reg[9]_i_2 
       (.CI(1'b0),
        .CO({\scanoffset_reg[9]_i_2_n_0 ,\scanoffset_reg[9]_i_2_n_1 ,\scanoffset_reg[9]_i_2_n_2 ,\scanoffset_reg[9]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,scanoffset[7],1'b0}),
        .O({\scanoffset_reg[9]_i_2_n_4 ,\scanoffset_reg[9]_i_2_n_5 ,\scanoffset_reg[9]_i_2_n_6 ,\scanoffset_reg[9]_i_2_n_7 }),
        .S({scanoffset[9:8],\scanoffset[9]_i_3_n_0 ,scanoffset[6]}));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \scanpixel_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(scanpixelpre[0]),
        .Q(scanpixel[0]),
        .R(vpucommandinterface_n_32));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \scanpixel_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(scanpixelpre[1]),
        .Q(scanpixel[1]),
        .R(vpucommandinterface_n_32));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \scanpixel_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(scanpixelpre[2]),
        .Q(scanpixel[2]),
        .R(vpucommandinterface_n_32));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \scanpixel_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(scanpixelpre[3]),
        .Q(scanpixel[3]),
        .R(vpucommandinterface_n_32));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \scanpixel_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(scanpixelpre[4]),
        .Q(scanpixel[4]),
        .R(vpucommandinterface_n_32));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \scanpixel_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(scanpixelpre[5]),
        .Q(scanpixel[5]),
        .R(vpucommandinterface_n_32));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \scanpixel_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(scanpixelpre[6]),
        .Q(scanpixel[6]),
        .R(vpucommandinterface_n_32));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \scanpixel_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(scanpixelpre[7]),
        .Q(scanpixel[7]),
        .R(vpucommandinterface_n_32));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \scanpixel_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(scanpixelpre[8]),
        .Q(scanpixel[8]),
        .R(vpucommandinterface_n_32));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \scanpixel_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(scanpixelpre[9]),
        .Q(scanpixel[9]),
        .R(vpucommandinterface_n_32));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \scanpixelpre_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(video_x[0]),
        .Q(scanpixelpre[0]),
        .R(vpucommandinterface_n_32));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \scanpixelpre_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(video_x[1]),
        .Q(scanpixelpre[1]),
        .R(vpucommandinterface_n_32));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \scanpixelpre_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(video_x[2]),
        .Q(scanpixelpre[2]),
        .R(vpucommandinterface_n_32));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \scanpixelpre_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(video_x[3]),
        .Q(scanpixelpre[3]),
        .R(vpucommandinterface_n_32));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \scanpixelpre_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(video_x[4]),
        .Q(scanpixelpre[4]),
        .R(vpucommandinterface_n_32));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \scanpixelpre_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(video_x[5]),
        .Q(scanpixelpre[5]),
        .R(vpucommandinterface_n_32));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \scanpixelpre_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(video_x[6]),
        .Q(scanpixelpre[6]),
        .R(vpucommandinterface_n_32));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \scanpixelpre_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(video_x[7]),
        .Q(scanpixelpre[7]),
        .R(vpucommandinterface_n_32));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \scanpixelpre_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(video_x[8]),
        .Q(scanpixelpre[8]),
        .R(vpucommandinterface_n_32));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \scanpixelpre_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(video_x[9]),
        .Q(scanpixelpre[9]),
        .R(vpucommandinterface_n_32));
  LUT6 #(
    .INIT(64'hFFFCFCFE00FCFCFC)) 
    \scanstate[0]_i_1 
       (.I0(\scanstate[0]_i_2_n_0 ),
        .I1(\scanstate[0]_i_3_n_0 ),
        .I2(\scanstate[0]_i_4_n_0 ),
        .I3(\scanstate_reg_n_0_[2] ),
        .I4(\scanstate_reg_n_0_[1] ),
        .I5(\scanstate_reg_n_0_[0] ),
        .O(\scanstate[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFBFFFFFFFF)) 
    \scanstate[0]_i_2 
       (.I0(\scanstate[0]_i_5_n_0 ),
        .I1(scanpixel[7]),
        .I2(scanpixel[4]),
        .I3(scanpixel[6]),
        .I4(scanpixel[3]),
        .I5(\scanstate[0]_i_6_n_0 ),
        .O(\scanstate[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF74440000)) 
    \scanstate[0]_i_3 
       (.I0(burststate),
        .I1(\scanstate_reg_n_0_[0] ),
        .I2(m_axi_rlast),
        .I3(m_axi_rvalid),
        .I4(\scanstate_reg_n_0_[2] ),
        .I5(\scanstate[0]_i_7_n_0 ),
        .O(\scanstate[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \scanstate[0]_i_4 
       (.I0(\scanstate_reg_n_0_[0] ),
        .I1(\scanstate_reg_n_0_[1] ),
        .I2(p_0_out[1]),
        .I3(scanoffset1),
        .I4(\scanstate_reg_n_0_[2] ),
        .O(\scanstate[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFF1)) 
    \scanstate[0]_i_5 
       (.I0(scanline[0]),
        .I1(scanwidth),
        .I2(scanpixel[1]),
        .I3(scanpixel[2]),
        .O(\scanstate[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \scanstate[0]_i_6 
       (.I0(scanpixel[8]),
        .I1(scanpixel[0]),
        .I2(scanpixel[9]),
        .I3(scanpixel[5]),
        .O(\scanstate[0]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT4 #(
    .INIT(16'h0070)) 
    \scanstate[0]_i_7 
       (.I0(m_axi_arready),
        .I1(\scanstate_reg_n_0_[0] ),
        .I2(\scanstate_reg_n_0_[1] ),
        .I3(\scanstate_reg_n_0_[2] ),
        .O(\scanstate[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAFFFEAEAAAAA)) 
    \scanstate[1]_i_1 
       (.I0(\scanstate[1]_i_2_n_0 ),
        .I1(burststate),
        .I2(\scanstate_reg_n_0_[0] ),
        .I3(m_axi_arready),
        .I4(\scanstate_reg_n_0_[2] ),
        .I5(\scanstate_reg_n_0_[1] ),
        .O(\scanstate[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8AAAAAAAAAAAAAAA)) 
    \scanstate[1]_i_2 
       (.I0(\burststate[9]_i_3_n_0 ),
        .I1(\scanstate[1]_i_3_n_0 ),
        .I2(scanline[6]),
        .I3(scanline[7]),
        .I4(scanline[8]),
        .I5(scanline[0]),
        .O(\scanstate[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFDFFFFFFFFFFFFFF)) 
    \scanstate[1]_i_3 
       (.I0(scanline[3]),
        .I1(scanline[5]),
        .I2(scanline[9]),
        .I3(scanline[4]),
        .I4(scanline[2]),
        .I5(scanline[1]),
        .O(\scanstate[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT4 #(
    .INIT(16'hF830)) 
    \scanstate[2]_i_1 
       (.I0(m_axi_arready),
        .I1(\scanstate_reg_n_0_[0] ),
        .I2(\scanstate_reg_n_0_[2] ),
        .I3(\scanstate_reg_n_0_[1] ),
        .O(\scanstate[2]_i_1_n_0 ));
  FDRE \scanstate_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\scanstate[0]_i_1_n_0 ),
        .Q(\scanstate_reg_n_0_[0] ),
        .R(vpucommandinterface_n_32));
  FDRE \scanstate_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\scanstate[1]_i_1_n_0 ),
        .Q(\scanstate_reg_n_0_[1] ),
        .R(vpucommandinterface_n_32));
  FDRE \scanstate_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\scanstate[2]_i_1_n_0 ),
        .Q(\scanstate_reg_n_0_[2] ),
        .R(vpucommandinterface_n_32));
  FDRE scanwidth_reg
       (.C(aclk),
        .CE(vpucommandinterface_n_45),
        .D(vpufifodout[1]),
        .Q(scanwidth),
        .R(vpucommandinterface_n_32));
  FDRE \vpucmd_reg[0] 
       (.C(aclk),
        .CE(vpucommandinterface_n_46),
        .D(vpufifodout[0]),
        .Q(vpucmd[0]),
        .R(vpucommandinterface_n_32));
  FDRE \vpucmd_reg[1] 
       (.C(aclk),
        .CE(vpucommandinterface_n_46),
        .D(vpufifodout[1]),
        .Q(vpucmd[1]),
        .R(vpucommandinterface_n_32));
  FDRE \vpucmd_reg[2] 
       (.C(aclk),
        .CE(vpucommandinterface_n_46),
        .D(vpufifodout[2]),
        .Q(vpucmd__0[2]),
        .R(vpucommandinterface_n_32));
  FDRE \vpucmd_reg[3] 
       (.C(aclk),
        .CE(vpucommandinterface_n_46),
        .D(vpufifodout[3]),
        .Q(vpucmd__0[3]),
        .R(vpucommandinterface_n_32));
  FDRE \vpucmd_reg[4] 
       (.C(aclk),
        .CE(vpucommandinterface_n_46),
        .D(vpufifodout[4]),
        .Q(vpucmd__0[4]),
        .R(vpucommandinterface_n_32));
  FDRE \vpucmd_reg[5] 
       (.C(aclk),
        .CE(vpucommandinterface_n_46),
        .D(vpufifodout[5]),
        .Q(vpucmd__0[5]),
        .R(vpucommandinterface_n_32));
  FDRE \vpucmd_reg[6] 
       (.C(aclk),
        .CE(vpucommandinterface_n_46),
        .D(vpufifodout[6]),
        .Q(vpucmd__0[6]),
        .R(vpucommandinterface_n_32));
  FDRE \vpucmd_reg[7] 
       (.C(aclk),
        .CE(vpucommandinterface_n_46),
        .D(vpufifodout[7]),
        .Q(vpucmd__0[7]),
        .R(vpucommandinterface_n_32));
  blockone_videomodule_0_0_commandqueue vpucommandinterface
       (.D(vpufifodout),
        .E(vpucommandinterface_n_42),
        .Q(vpucmd[1]),
        .SR(vpucommandinterface_n_32),
        .aclk(aclk),
        .\bbstub_dout[2] ({p_2_in[5],p_2_in[3]}),
        .cmdmode(cmdmode),
        .\cmdmode_reg[0] (vpucommandinterface_n_43),
        .\cmdmode_reg[0]_0 (vpucommandinterface_n_44),
        .\cmdmode_reg[0]_1 (vpucommandinterface_n_45),
        .\cmdmode_reg[0]_2 (vpucommandinterface_n_46),
        .\cmdmode_reg[0]_3 (\cmdmode[0]_i_2_n_0 ),
        .\cmdmode_reg[1] (\cmdmode[1]_i_2_n_0 ),
        .\cmdmode_reg[2] (vpucommandinterface_n_40),
        .\cmdmode_reg[2]_0 (vpucommandinterface_n_41),
        .\cmdmode_reg[2]_1 (\cmdmode[2]_i_2_n_0 ),
        .lastscanline0(lastscanline0),
        .\m_axi_rdata_reg[42]_0 ({scanline,blanktoggle}),
        .out(aresetn),
        .rd_en(cmdre),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid),
        .\vpucmd_reg[1] (vpucommandinterface_n_39));
endmodule

(* ORIG_REF_NAME = "videomodule" *) 
module blockone_videomodule_0_0_videomodule
   (aclk,
    pixelClock,
    pixelClockx5,
    audiosampleclk,
    aresetn,
    HDMI_CLK_p,
    HDMI_CLK_n,
    HDMI_TMDS_p,
    HDMI_TMDS_n,
    s_axi_arready,
    s_axi_awready,
    s_axi_bvalid,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_rresp,
    s_axi_bid,
    s_axi_rid,
    s_axi_rdata,
    s_axi_arvalid,
    s_axi_awvalid,
    s_axi_bready,
    s_axi_rready,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awsize,
    s_axi_arprot,
    s_axi_awprot,
    s_axi_araddr,
    s_axi_awaddr,
    s_axi_arcache,
    s_axi_arlen,
    s_axi_arqos,
    s_axi_awcache,
    s_axi_awlen,
    s_axi_awqos,
    s_axi_arid,
    s_axi_awid,
    s_axi_wid,
    s_axi_wdata,
    s_axi_wstrb,
    m_axi_arready,
    m_axi_awready,
    m_axi_bvalid,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_rresp,
    m_axi_bid,
    m_axi_rid,
    m_axi_rdata,
    m_axi_arvalid,
    m_axi_awvalid,
    m_axi_bready,
    m_axi_rready,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awsize,
    m_axi_arprot,
    m_axi_awprot,
    m_axi_araddr,
    m_axi_awaddr,
    m_axi_arcache,
    m_axi_arlen,
    m_axi_arqos,
    m_axi_awcache,
    m_axi_awlen,
    m_axi_awqos,
    m_axi_arid,
    m_axi_awid,
    m_axi_wid,
    m_axi_wdata,
    m_axi_wstrb,
    audioSampleInputLR);
  input aclk;
  input pixelClock;
  input pixelClockx5;
  input audiosampleclk;
  input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 HDMI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "FREQ_HZ 125000000 " *) output HDMI_CLK_p;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 HDMI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "FREQ_HZ 125000000 " *) output HDMI_CLK_n;
  output [2:0]HDMI_TMDS_p;
  output [2:0]HDMI_TMDS_n;
  output s_axi_arready;
  output s_axi_awready;
  output s_axi_bvalid;
  output s_axi_rlast;
  output s_axi_rvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output [1:0]s_axi_rresp;
  output [5:0]s_axi_bid;
  output [5:0]s_axi_rid;
  output [63:0]s_axi_rdata;
  input s_axi_arvalid;
  input s_axi_awvalid;
  input s_axi_bready;
  input s_axi_rready;
  input s_axi_wlast;
  input s_axi_wvalid;
  input [1:0]s_axi_arburst;
  input [1:0]s_axi_arlock;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_awburst;
  input [1:0]s_axi_awlock;
  input [2:0]s_axi_awsize;
  input [2:0]s_axi_arprot;
  input [2:0]s_axi_awprot;
  input [31:0]s_axi_araddr;
  input [31:0]s_axi_awaddr;
  input [3:0]s_axi_arcache;
  input [3:0]s_axi_arlen;
  input [3:0]s_axi_arqos;
  input [3:0]s_axi_awcache;
  input [3:0]s_axi_awlen;
  input [3:0]s_axi_awqos;
  input [5:0]s_axi_arid;
  input [5:0]s_axi_awid;
  input [5:0]s_axi_wid;
  input [63:0]s_axi_wdata;
  input [7:0]s_axi_wstrb;
  input m_axi_arready;
  input m_axi_awready;
  input m_axi_bvalid;
  input m_axi_rlast;
  input m_axi_rvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input [1:0]m_axi_rresp;
  input [5:0]m_axi_bid;
  input [5:0]m_axi_rid;
  input [63:0]m_axi_rdata;
  output m_axi_arvalid;
  output m_axi_awvalid;
  output m_axi_bready;
  output m_axi_rready;
  output m_axi_wlast;
  output m_axi_wvalid;
  output [1:0]m_axi_arburst;
  output [1:0]m_axi_arlock;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_awburst;
  output [1:0]m_axi_awlock;
  output [2:0]m_axi_awsize;
  output [2:0]m_axi_arprot;
  output [2:0]m_axi_awprot;
  output [31:0]m_axi_araddr;
  output [31:0]m_axi_awaddr;
  output [3:0]m_axi_arcache;
  output [3:0]m_axi_arlen;
  output [3:0]m_axi_arqos;
  output [3:0]m_axi_awcache;
  output [3:0]m_axi_awlen;
  output [3:0]m_axi_awqos;
  output [5:0]m_axi_arid;
  output [5:0]m_axi_awid;
  output [5:0]m_axi_wid;
  output [63:0]m_axi_wdata;
  output [7:0]m_axi_wstrb;
  input [31:0]audioSampleInputLR;

  wire \<const0> ;
  wire HDMI_CLK_n;
  wire HDMI_CLK_p;
  wire [2:0]HDMI_TMDS_n;
  wire [2:0]HDMI_TMDS_p;
  wire aclk;
  wire aresetn;
  wire [31:0]audioSampleInputLR;
  wire audiosampleclk;
  wire [31:0]m_axi_araddr;
  wire [3:3]\^m_axi_arlen ;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire [63:0]m_axi_rdata;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire m_axi_rvalid;
  wire pixelClock;
  wire pixelClockx5;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [42:32]\^s_axi_rdata ;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [63:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;

  assign m_axi_arburst[1] = \<const0> ;
  assign m_axi_arburst[0] = \<const0> ;
  assign m_axi_arcache[3] = \<const0> ;
  assign m_axi_arcache[2] = \<const0> ;
  assign m_axi_arcache[1] = \<const0> ;
  assign m_axi_arcache[0] = \<const0> ;
  assign m_axi_arid[5] = \<const0> ;
  assign m_axi_arid[4] = \<const0> ;
  assign m_axi_arid[3] = \<const0> ;
  assign m_axi_arid[2] = \<const0> ;
  assign m_axi_arid[1] = \<const0> ;
  assign m_axi_arid[0] = \<const0> ;
  assign m_axi_arlen[3] = \^m_axi_arlen [3];
  assign m_axi_arlen[2] = \^m_axi_arlen [3];
  assign m_axi_arlen[1] = \^m_axi_arlen [3];
  assign m_axi_arlen[0] = \^m_axi_arlen [3];
  assign m_axi_arlock[1] = \<const0> ;
  assign m_axi_arlock[0] = \<const0> ;
  assign m_axi_arprot[2] = \<const0> ;
  assign m_axi_arprot[1] = \<const0> ;
  assign m_axi_arprot[0] = \<const0> ;
  assign m_axi_arqos[3] = \<const0> ;
  assign m_axi_arqos[2] = \<const0> ;
  assign m_axi_arqos[1] = \<const0> ;
  assign m_axi_arqos[0] = \<const0> ;
  assign m_axi_arsize[2] = \<const0> ;
  assign m_axi_arsize[1] = \<const0> ;
  assign m_axi_arsize[0] = \<const0> ;
  assign m_axi_awaddr[31] = \<const0> ;
  assign m_axi_awaddr[30] = \<const0> ;
  assign m_axi_awaddr[29] = \<const0> ;
  assign m_axi_awaddr[28] = \<const0> ;
  assign m_axi_awaddr[27] = \<const0> ;
  assign m_axi_awaddr[26] = \<const0> ;
  assign m_axi_awaddr[25] = \<const0> ;
  assign m_axi_awaddr[24] = \<const0> ;
  assign m_axi_awaddr[23] = \<const0> ;
  assign m_axi_awaddr[22] = \<const0> ;
  assign m_axi_awaddr[21] = \<const0> ;
  assign m_axi_awaddr[20] = \<const0> ;
  assign m_axi_awaddr[19] = \<const0> ;
  assign m_axi_awaddr[18] = \<const0> ;
  assign m_axi_awaddr[17] = \<const0> ;
  assign m_axi_awaddr[16] = \<const0> ;
  assign m_axi_awaddr[15] = \<const0> ;
  assign m_axi_awaddr[14] = \<const0> ;
  assign m_axi_awaddr[13] = \<const0> ;
  assign m_axi_awaddr[12] = \<const0> ;
  assign m_axi_awaddr[11] = \<const0> ;
  assign m_axi_awaddr[10] = \<const0> ;
  assign m_axi_awaddr[9] = \<const0> ;
  assign m_axi_awaddr[8] = \<const0> ;
  assign m_axi_awaddr[7] = \<const0> ;
  assign m_axi_awaddr[6] = \<const0> ;
  assign m_axi_awaddr[5] = \<const0> ;
  assign m_axi_awaddr[4] = \<const0> ;
  assign m_axi_awaddr[3] = \<const0> ;
  assign m_axi_awaddr[2] = \<const0> ;
  assign m_axi_awaddr[1] = \<const0> ;
  assign m_axi_awaddr[0] = \<const0> ;
  assign m_axi_awburst[1] = \<const0> ;
  assign m_axi_awburst[0] = \<const0> ;
  assign m_axi_awcache[3] = \<const0> ;
  assign m_axi_awcache[2] = \<const0> ;
  assign m_axi_awcache[1] = \<const0> ;
  assign m_axi_awcache[0] = \<const0> ;
  assign m_axi_awid[5] = \<const0> ;
  assign m_axi_awid[4] = \<const0> ;
  assign m_axi_awid[3] = \<const0> ;
  assign m_axi_awid[2] = \<const0> ;
  assign m_axi_awid[1] = \<const0> ;
  assign m_axi_awid[0] = \<const0> ;
  assign m_axi_awlen[3] = \<const0> ;
  assign m_axi_awlen[2] = \<const0> ;
  assign m_axi_awlen[1] = \<const0> ;
  assign m_axi_awlen[0] = \<const0> ;
  assign m_axi_awlock[1] = \<const0> ;
  assign m_axi_awlock[0] = \<const0> ;
  assign m_axi_awprot[2] = \<const0> ;
  assign m_axi_awprot[1] = \<const0> ;
  assign m_axi_awprot[0] = \<const0> ;
  assign m_axi_awqos[3] = \<const0> ;
  assign m_axi_awqos[2] = \<const0> ;
  assign m_axi_awqos[1] = \<const0> ;
  assign m_axi_awqos[0] = \<const0> ;
  assign m_axi_awsize[2] = \<const0> ;
  assign m_axi_awsize[1] = \<const0> ;
  assign m_axi_awsize[0] = \<const0> ;
  assign m_axi_awvalid = \<const0> ;
  assign m_axi_bready = \<const0> ;
  assign m_axi_wdata[63] = \<const0> ;
  assign m_axi_wdata[62] = \<const0> ;
  assign m_axi_wdata[61] = \<const0> ;
  assign m_axi_wdata[60] = \<const0> ;
  assign m_axi_wdata[59] = \<const0> ;
  assign m_axi_wdata[58] = \<const0> ;
  assign m_axi_wdata[57] = \<const0> ;
  assign m_axi_wdata[56] = \<const0> ;
  assign m_axi_wdata[55] = \<const0> ;
  assign m_axi_wdata[54] = \<const0> ;
  assign m_axi_wdata[53] = \<const0> ;
  assign m_axi_wdata[52] = \<const0> ;
  assign m_axi_wdata[51] = \<const0> ;
  assign m_axi_wdata[50] = \<const0> ;
  assign m_axi_wdata[49] = \<const0> ;
  assign m_axi_wdata[48] = \<const0> ;
  assign m_axi_wdata[47] = \<const0> ;
  assign m_axi_wdata[46] = \<const0> ;
  assign m_axi_wdata[45] = \<const0> ;
  assign m_axi_wdata[44] = \<const0> ;
  assign m_axi_wdata[43] = \<const0> ;
  assign m_axi_wdata[42] = \<const0> ;
  assign m_axi_wdata[41] = \<const0> ;
  assign m_axi_wdata[40] = \<const0> ;
  assign m_axi_wdata[39] = \<const0> ;
  assign m_axi_wdata[38] = \<const0> ;
  assign m_axi_wdata[37] = \<const0> ;
  assign m_axi_wdata[36] = \<const0> ;
  assign m_axi_wdata[35] = \<const0> ;
  assign m_axi_wdata[34] = \<const0> ;
  assign m_axi_wdata[33] = \<const0> ;
  assign m_axi_wdata[32] = \<const0> ;
  assign m_axi_wdata[31] = \<const0> ;
  assign m_axi_wdata[30] = \<const0> ;
  assign m_axi_wdata[29] = \<const0> ;
  assign m_axi_wdata[28] = \<const0> ;
  assign m_axi_wdata[27] = \<const0> ;
  assign m_axi_wdata[26] = \<const0> ;
  assign m_axi_wdata[25] = \<const0> ;
  assign m_axi_wdata[24] = \<const0> ;
  assign m_axi_wdata[23] = \<const0> ;
  assign m_axi_wdata[22] = \<const0> ;
  assign m_axi_wdata[21] = \<const0> ;
  assign m_axi_wdata[20] = \<const0> ;
  assign m_axi_wdata[19] = \<const0> ;
  assign m_axi_wdata[18] = \<const0> ;
  assign m_axi_wdata[17] = \<const0> ;
  assign m_axi_wdata[16] = \<const0> ;
  assign m_axi_wdata[15] = \<const0> ;
  assign m_axi_wdata[14] = \<const0> ;
  assign m_axi_wdata[13] = \<const0> ;
  assign m_axi_wdata[12] = \<const0> ;
  assign m_axi_wdata[11] = \<const0> ;
  assign m_axi_wdata[10] = \<const0> ;
  assign m_axi_wdata[9] = \<const0> ;
  assign m_axi_wdata[8] = \<const0> ;
  assign m_axi_wdata[7] = \<const0> ;
  assign m_axi_wdata[6] = \<const0> ;
  assign m_axi_wdata[5] = \<const0> ;
  assign m_axi_wdata[4] = \<const0> ;
  assign m_axi_wdata[3] = \<const0> ;
  assign m_axi_wdata[2] = \<const0> ;
  assign m_axi_wdata[1] = \<const0> ;
  assign m_axi_wdata[0] = \<const0> ;
  assign m_axi_wid[5] = \<const0> ;
  assign m_axi_wid[4] = \<const0> ;
  assign m_axi_wid[3] = \<const0> ;
  assign m_axi_wid[2] = \<const0> ;
  assign m_axi_wid[1] = \<const0> ;
  assign m_axi_wid[0] = \<const0> ;
  assign m_axi_wlast = \<const0> ;
  assign m_axi_wstrb[7] = \<const0> ;
  assign m_axi_wstrb[6] = \<const0> ;
  assign m_axi_wstrb[5] = \<const0> ;
  assign m_axi_wstrb[4] = \<const0> ;
  assign m_axi_wstrb[3] = \<const0> ;
  assign m_axi_wstrb[2] = \<const0> ;
  assign m_axi_wstrb[1] = \<const0> ;
  assign m_axi_wstrb[0] = \<const0> ;
  assign m_axi_wvalid = \<const0> ;
  assign s_axi_bid[5] = \<const0> ;
  assign s_axi_bid[4] = \<const0> ;
  assign s_axi_bid[3] = \<const0> ;
  assign s_axi_bid[2] = \<const0> ;
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rdata[63] = \<const0> ;
  assign s_axi_rdata[62] = \<const0> ;
  assign s_axi_rdata[61] = \<const0> ;
  assign s_axi_rdata[60] = \<const0> ;
  assign s_axi_rdata[59] = \<const0> ;
  assign s_axi_rdata[58] = \<const0> ;
  assign s_axi_rdata[57] = \<const0> ;
  assign s_axi_rdata[56] = \<const0> ;
  assign s_axi_rdata[55] = \<const0> ;
  assign s_axi_rdata[54] = \<const0> ;
  assign s_axi_rdata[53] = \<const0> ;
  assign s_axi_rdata[52] = \<const0> ;
  assign s_axi_rdata[51] = \<const0> ;
  assign s_axi_rdata[50] = \<const0> ;
  assign s_axi_rdata[49] = \<const0> ;
  assign s_axi_rdata[48] = \<const0> ;
  assign s_axi_rdata[47] = \<const0> ;
  assign s_axi_rdata[46] = \<const0> ;
  assign s_axi_rdata[45] = \<const0> ;
  assign s_axi_rdata[44] = \<const0> ;
  assign s_axi_rdata[43] = \<const0> ;
  assign s_axi_rdata[42:32] = \^s_axi_rdata [42:32];
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10:0] = \^s_axi_rdata [42:32];
  assign s_axi_rid[5] = \<const0> ;
  assign s_axi_rid[4] = \<const0> ;
  assign s_axi_rid[3] = \<const0> ;
  assign s_axi_rid[2] = \<const0> ;
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  blockone_videomodule_0_0_videocore videocoreInst
       (.HDMI_CLK_n(HDMI_CLK_n),
        .HDMI_CLK_p(HDMI_CLK_p),
        .HDMI_TMDS_n(HDMI_TMDS_n),
        .HDMI_TMDS_p(HDMI_TMDS_p),
        .aclk(aclk),
        .aresetn(aresetn),
        .audioSampleInputLR(audioSampleInputLR),
        .audiosampleclk(audiosampleclk),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arlen(\^m_axi_arlen ),
        .m_axi_arready(m_axi_arready),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rvalid(m_axi_rvalid),
        .pixelClock(pixelClock),
        .pixelClockx5(pixelClockx5),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(\^s_axi_rdata ),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata[31:0]),
        .s_axi_wready(s_axi_wready),
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
