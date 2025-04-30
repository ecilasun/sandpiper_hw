// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2.2 (win64) Build 6060944 Thu Mar 06 19:10:01 MST 2025
// Date        : Sun Apr 27 19:59:19 2025
// Host        : fastturtle running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/repos/testzor/testzor.gen/sources_1/bd/blockone/ip/blockone_audiomodule_0_0/blockone_audiomodule_0_0_sim_netlist.v
// Design      : blockone_audiomodule_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blockone_audiomodule_0_0,audiomodule,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "audiomodule,Vivado 2024.2.2" *) 
(* NotValidForBitStream *)
module blockone_audiomodule_0_0
   (aclk,
    audioclock,
    aresetn,
    audiosampleclk,
    audioSampleOutputLR,
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
    m_axi_wstrb);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axi:s_axi, ASSOCIATED_RESET aresetn, FREQ_HZ 166666672, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN blockone_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input aclk;
  input audioclock;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  output audiosampleclk;
  output [31:0]audioSampleOutputLR;
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

  wire \<const0> ;
  wire \<const1> ;
  wire aclk;
  wire aresetn;
  wire [31:0]audioSampleOutputLR;
  wire audioclock;
  wire audiosampleclk;
  wire [31:0]m_axi_araddr;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire [63:0]m_axi_rdata;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire m_axi_rvalid;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [32:0]\^s_axi_rdata ;
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
  wire [3:0]NLW_inst_m_axi_arlen_UNCONNECTED;
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
  wire [63:1]NLW_inst_s_axi_rdata_UNCONNECTED;
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
  assign m_axi_arlen[3] = \<const1> ;
  assign m_axi_arlen[2] = \<const1> ;
  assign m_axi_arlen[1] = \<const1> ;
  assign m_axi_arlen[0] = \<const1> ;
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
  assign m_axi_awsize[1] = \<const1> ;
  assign m_axi_awsize[0] = \<const1> ;
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
  assign s_axi_rdata[42] = \<const0> ;
  assign s_axi_rdata[41] = \<const0> ;
  assign s_axi_rdata[40] = \<const0> ;
  assign s_axi_rdata[39] = \<const0> ;
  assign s_axi_rdata[38] = \<const0> ;
  assign s_axi_rdata[37] = \<const0> ;
  assign s_axi_rdata[36] = \<const0> ;
  assign s_axi_rdata[35] = \<const0> ;
  assign s_axi_rdata[34] = \<const0> ;
  assign s_axi_rdata[33] = \<const0> ;
  assign s_axi_rdata[32] = \^s_axi_rdata [32];
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
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \^s_axi_rdata [0];
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
  blockone_audiomodule_0_0_audiomodule inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .audioSampleOutputLR(audioSampleOutputLR),
        .audioclock(audioclock),
        .audiosampleclk(audiosampleclk),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arburst(NLW_inst_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_inst_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_inst_m_axi_arid_UNCONNECTED[5:0]),
        .m_axi_arlen(NLW_inst_m_axi_arlen_UNCONNECTED[3:0]),
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
        .s_axi_rdata({NLW_inst_s_axi_rdata_UNCONNECTED[63:33],\^s_axi_rdata }),
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

(* ORIG_REF_NAME = "audiocore" *) 
module blockone_audiomodule_0_0_audiocore
   (audiosampleclk,
    s_axi_arready,
    s_axi_bvalid,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_wready,
    s_axi_rdata,
    m_axi_araddr,
    audioSampleOutputLR,
    s_axi_awready,
    m_axi_arvalid,
    m_axi_rready,
    m_axi_rvalid,
    aclk,
    s_axi_arvalid,
    s_axi_rready,
    s_axi_awvalid,
    s_axi_wvalid,
    s_axi_bready,
    audioclock,
    aresetn,
    s_axi_wdata,
    m_axi_rdata,
    m_axi_arready,
    m_axi_rlast);
  output audiosampleclk;
  output s_axi_arready;
  output s_axi_bvalid;
  output s_axi_rlast;
  output s_axi_rvalid;
  output s_axi_wready;
  output [0:0]s_axi_rdata;
  output [31:0]m_axi_araddr;
  output [31:0]audioSampleOutputLR;
  output s_axi_awready;
  output m_axi_arvalid;
  output m_axi_rready;
  input m_axi_rvalid;
  input aclk;
  input s_axi_arvalid;
  input s_axi_rready;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input s_axi_bready;
  input audioclock;
  input aresetn;
  input [31:0]s_axi_wdata;
  input [63:0]m_axi_rdata;
  input m_axi_arready;
  input m_axi_rlast;

  wire \FSM_onehot_cmdmode[1]_i_1_n_0 ;
  wire \FSM_onehot_cmdmode[3]_i_1_n_0 ;
  wire \FSM_onehot_cmdmode[4]_i_1_n_0 ;
  wire \FSM_onehot_cmdmode[5]_i_1_n_0 ;
  wire \FSM_onehot_cmdmode[6]_i_1_n_0 ;
  wire \FSM_onehot_cmdmode[6]_i_2_n_0 ;
  wire \FSM_onehot_cmdmode[7]_i_1_n_0 ;
  wire \FSM_onehot_cmdmode[9]_i_2_n_0 ;
  wire \FSM_onehot_cmdmode[9]_i_3_n_0 ;
  wire \FSM_onehot_cmdmode_reg_n_0_[0] ;
  wire \FSM_onehot_cmdmode_reg_n_0_[1] ;
  wire \FSM_onehot_cmdmode_reg_n_0_[2] ;
  wire \FSM_onehot_cmdmode_reg_n_0_[3] ;
  wire \FSM_onehot_cmdmode_reg_n_0_[4] ;
  wire \FSM_onehot_cmdmode_reg_n_0_[5] ;
  wire \FSM_onehot_cmdmode_reg_n_0_[6] ;
  wire \FSM_onehot_cmdmode_reg_n_0_[7] ;
  wire \FSM_onehot_cmdmode_reg_n_0_[8] ;
  wire \FSM_onehot_cmdmode_reg_n_0_[9] ;
  wire aclk;
  wire [3:0]apuburstcount;
  wire [3:0]apucmd;
  wire apucmd_1;
  wire apucommandinterface_n_12;
  wire apucommandinterface_n_19;
  wire apucommandinterface_n_23;
  wire apucommandinterface_n_24;
  wire apucommandinterface_n_25;
  wire apucommandinterface_n_26;
  wire apucommandinterface_n_27;
  wire apucommandinterface_n_28;
  wire apucommandinterface_n_29;
  wire apucommandinterface_n_30;
  wire apucommandinterface_n_31;
  wire apucommandinterface_n_32;
  wire apucommandinterface_n_33;
  wire apucommandinterface_n_34;
  wire apucommandinterface_n_35;
  wire apucommandinterface_n_36;
  wire apucommandinterface_n_37;
  wire apucommandinterface_n_38;
  wire apucommandinterface_n_39;
  wire apucommandinterface_n_40;
  wire apucommandinterface_n_41;
  wire apucommandinterface_n_42;
  wire apucommandinterface_n_43;
  wire apucommandinterface_n_44;
  wire apucommandinterface_n_45;
  wire apucommandinterface_n_46;
  wire apucommandinterface_n_47;
  wire apucommandinterface_n_48;
  wire apucommandinterface_n_49;
  wire apucommandinterface_n_50;
  wire apucommandinterface_n_51;
  wire apucommandinterface_n_52;
  wire apucommandinterface_n_53;
  wire apucommandinterface_n_54;
  wire apucommandinterface_n_55;
  wire apucommandinterface_n_56;
  wire apucommandinterface_n_57;
  wire [9:0]apufifodout;
  wire apufifoempty;
  wire apufifovalid;
  wire [31:0]apusourceaddr;
  wire apusourceaddr0_carry__0_n_0;
  wire apusourceaddr0_carry__0_n_1;
  wire apusourceaddr0_carry__0_n_2;
  wire apusourceaddr0_carry__0_n_3;
  wire apusourceaddr0_carry__1_n_0;
  wire apusourceaddr0_carry__1_n_1;
  wire apusourceaddr0_carry__1_n_2;
  wire apusourceaddr0_carry__1_n_3;
  wire apusourceaddr0_carry__2_n_0;
  wire apusourceaddr0_carry__2_n_1;
  wire apusourceaddr0_carry__2_n_2;
  wire apusourceaddr0_carry__2_n_3;
  wire apusourceaddr0_carry__3_n_0;
  wire apusourceaddr0_carry__3_n_1;
  wire apusourceaddr0_carry__3_n_2;
  wire apusourceaddr0_carry__3_n_3;
  wire apusourceaddr0_carry__4_n_0;
  wire apusourceaddr0_carry__4_n_1;
  wire apusourceaddr0_carry__4_n_2;
  wire apusourceaddr0_carry__4_n_3;
  wire apusourceaddr0_carry__5_n_3;
  wire apusourceaddr0_carry_i_1_n_0;
  wire apusourceaddr0_carry_n_0;
  wire apusourceaddr0_carry_n_1;
  wire apusourceaddr0_carry_n_2;
  wire apusourceaddr0_carry_n_3;
  wire [9:0]apuwordcount;
  wire apuwordcount_2;
  wire aresetn;
  (* async_reg = "true" *) wire aresetnA;
  (* async_reg = "true" *) wire aresetnB;
  wire asampleclk;
  wire [31:0]audioSampleOutputLR;
  wire audioclock;
  wire audiosampleclk;
  wire bufferSwap;
  (* async_reg = "true" *) wire bufferSwapCDC1;
  (* async_reg = "true" *) wire bufferSwapCDC2;
  wire bufferSwap_i_1_n_0;
  wire [3:0]burstsleft;
  wire \burstsleft[3]_i_3_n_0 ;
  wire \burstsleft_reg_n_0_[0] ;
  wire \burstsleft_reg_n_0_[1] ;
  wire \burstsleft_reg_n_0_[2] ;
  wire \burstsleft_reg_n_0_[3] ;
  wire clear;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[2] ;
  wire \count_reg_n_0_[3] ;
  wire \count_reg_n_0_[4] ;
  wire \count_reg_n_0_[5] ;
  wire \count_reg_n_0_[6] ;
  wire \count_reg_n_0_[7] ;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire [31:6]in13;
  wire [8:0]inaddr;
  wire [31:0]m_axi_araddr;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire [63:0]m_axi_rdata;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire m_axi_rvalid;
  wire [10:0]outaddr;
  wire [8:0]p_0_in;
  wire p_1_in;
  wire re;
  wire re_reg_n_0;
  wire readCursor;
  wire [11:0]readCursor0;
  wire \readCursor0_inferred__0/i__carry_n_0 ;
  wire \readCursor0_inferred__0/i__carry_n_1 ;
  wire \readCursor0_inferred__0/i__carry_n_2 ;
  wire \readCursor0_inferred__0/i__carry_n_3 ;
  wire \readCursor_reg[5]_i_1_n_0 ;
  wire \readCursor_reg[5]_i_1_n_1 ;
  wire \readCursor_reg[5]_i_1_n_2 ;
  wire \readCursor_reg[5]_i_1_n_3 ;
  wire \readCursor_reg[9]_i_1_n_1 ;
  wire \readCursor_reg[9]_i_1_n_2 ;
  wire \readCursor_reg[9]_i_1_n_3 ;
  wire [1:0]readLowbits;
  wire \readLowbits[1]_i_1_n_0 ;
  wire \readLowbits[1]_i_4_n_0 ;
  wire \readLowbits[1]_i_5_n_0 ;
  wire \readLowbits[1]_i_6_n_0 ;
  wire \readLowbits[1]_i_7_n_0 ;
  wire \readLowbits_reg[1]_i_3_n_0 ;
  wire \readLowbits_reg[1]_i_3_n_1 ;
  wire \readLowbits_reg[1]_i_3_n_2 ;
  wire \readLowbits_reg[1]_i_3_n_3 ;
  (* async_reg = "true" *) wire rstaudion;
  wire \s_axi_araddr[31]_i_1_n_0 ;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire s_axi_arvalid_i_1_n_0;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [0:0]s_axi_rdata;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire s_axi_rready0_out;
  wire s_axi_rready_i_1_n_0;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire \sampleIn[63]_i_1_n_0 ;
  wire \sampleIn_reg_n_0_[0] ;
  wire \sampleIn_reg_n_0_[10] ;
  wire \sampleIn_reg_n_0_[11] ;
  wire \sampleIn_reg_n_0_[12] ;
  wire \sampleIn_reg_n_0_[13] ;
  wire \sampleIn_reg_n_0_[14] ;
  wire \sampleIn_reg_n_0_[15] ;
  wire \sampleIn_reg_n_0_[16] ;
  wire \sampleIn_reg_n_0_[17] ;
  wire \sampleIn_reg_n_0_[18] ;
  wire \sampleIn_reg_n_0_[19] ;
  wire \sampleIn_reg_n_0_[1] ;
  wire \sampleIn_reg_n_0_[20] ;
  wire \sampleIn_reg_n_0_[21] ;
  wire \sampleIn_reg_n_0_[22] ;
  wire \sampleIn_reg_n_0_[23] ;
  wire \sampleIn_reg_n_0_[24] ;
  wire \sampleIn_reg_n_0_[25] ;
  wire \sampleIn_reg_n_0_[26] ;
  wire \sampleIn_reg_n_0_[27] ;
  wire \sampleIn_reg_n_0_[28] ;
  wire \sampleIn_reg_n_0_[29] ;
  wire \sampleIn_reg_n_0_[2] ;
  wire \sampleIn_reg_n_0_[30] ;
  wire \sampleIn_reg_n_0_[31] ;
  wire \sampleIn_reg_n_0_[32] ;
  wire \sampleIn_reg_n_0_[33] ;
  wire \sampleIn_reg_n_0_[34] ;
  wire \sampleIn_reg_n_0_[35] ;
  wire \sampleIn_reg_n_0_[36] ;
  wire \sampleIn_reg_n_0_[37] ;
  wire \sampleIn_reg_n_0_[38] ;
  wire \sampleIn_reg_n_0_[39] ;
  wire \sampleIn_reg_n_0_[3] ;
  wire \sampleIn_reg_n_0_[40] ;
  wire \sampleIn_reg_n_0_[41] ;
  wire \sampleIn_reg_n_0_[42] ;
  wire \sampleIn_reg_n_0_[43] ;
  wire \sampleIn_reg_n_0_[44] ;
  wire \sampleIn_reg_n_0_[45] ;
  wire \sampleIn_reg_n_0_[46] ;
  wire \sampleIn_reg_n_0_[47] ;
  wire \sampleIn_reg_n_0_[48] ;
  wire \sampleIn_reg_n_0_[49] ;
  wire \sampleIn_reg_n_0_[4] ;
  wire \sampleIn_reg_n_0_[50] ;
  wire \sampleIn_reg_n_0_[51] ;
  wire \sampleIn_reg_n_0_[52] ;
  wire \sampleIn_reg_n_0_[53] ;
  wire \sampleIn_reg_n_0_[54] ;
  wire \sampleIn_reg_n_0_[55] ;
  wire \sampleIn_reg_n_0_[56] ;
  wire \sampleIn_reg_n_0_[57] ;
  wire \sampleIn_reg_n_0_[58] ;
  wire \sampleIn_reg_n_0_[59] ;
  wire \sampleIn_reg_n_0_[5] ;
  wire \sampleIn_reg_n_0_[60] ;
  wire \sampleIn_reg_n_0_[61] ;
  wire \sampleIn_reg_n_0_[62] ;
  wire \sampleIn_reg_n_0_[63] ;
  wire \sampleIn_reg_n_0_[6] ;
  wire \sampleIn_reg_n_0_[7] ;
  wire \sampleIn_reg_n_0_[8] ;
  wire \sampleIn_reg_n_0_[9] ;
  wire [31:0]sampleOut;
  wire \sampleoutputrateselector[0]_i_1_n_0 ;
  wire \sampleoutputrateselector[1]_i_1_n_0 ;
  wire \sampleoutputrateselector[2]_i_1_n_0 ;
  wire \sampleoutputrateselector_reg_n_0_[0] ;
  wire \sampleoutputrateselector_reg_n_0_[1] ;
  wire \sampleoutputrateselector_reg_n_0_[2] ;
  wire samplere;
  wire samplere_i_1_n_0;
  wire samplewe;
  wire samplewe_reg_n_0;
  wire \tx_data_lr[31]_i_1_n_0 ;
  wire writeBufferSelect_i_1_n_0;
  wire \writeCursor[0]_i_1_n_0 ;
  wire \writeCursor[1]_i_1_n_0 ;
  wire \writeCursor[2]_i_1_n_0 ;
  wire \writeCursor[3]_i_1_n_0 ;
  wire \writeCursor[4]_i_1_n_0 ;
  wire \writeCursor[5]_i_1_n_0 ;
  wire \writeCursor[5]_i_2_n_0 ;
  wire \writeCursor[6]_i_1_n_0 ;
  wire \writeCursor[7]_i_2_n_0 ;
  wire \writeCursor[7]_i_3_n_0 ;
  wire [3:1]NLW_apusourceaddr0_carry__5_CO_UNCONNECTED;
  wire [3:2]NLW_apusourceaddr0_carry__5_O_UNCONNECTED;
  wire [3:0]\NLW_readCursor0_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:3]\NLW_readCursor_reg[9]_i_1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAAA)) 
    \FSM_onehot_cmdmode[1]_i_1 
       (.I0(\FSM_onehot_cmdmode_reg_n_0_[0] ),
        .I1(\burstsleft_reg_n_0_[3] ),
        .I2(\burstsleft_reg_n_0_[0] ),
        .I3(\burstsleft_reg_n_0_[1] ),
        .I4(\burstsleft_reg_n_0_[2] ),
        .I5(\FSM_onehot_cmdmode_reg_n_0_[6] ),
        .O(\FSM_onehot_cmdmode[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \FSM_onehot_cmdmode[3]_i_1 
       (.I0(apucmd[1]),
        .I1(apucmd[0]),
        .I2(apucmd[3]),
        .I3(\FSM_onehot_cmdmode_reg_n_0_[2] ),
        .I4(apucmd[2]),
        .O(\FSM_onehot_cmdmode[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \FSM_onehot_cmdmode[4]_i_1 
       (.I0(apucmd[1]),
        .I1(apucmd[2]),
        .I2(apucmd[0]),
        .I3(apucmd[3]),
        .I4(\FSM_onehot_cmdmode_reg_n_0_[2] ),
        .O(\FSM_onehot_cmdmode[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \FSM_onehot_cmdmode[5]_i_1 
       (.I0(apucmd[1]),
        .I1(apucmd[0]),
        .I2(apucmd[2]),
        .I3(apucmd[3]),
        .I4(\FSM_onehot_cmdmode_reg_n_0_[2] ),
        .O(\FSM_onehot_cmdmode[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFEA)) 
    \FSM_onehot_cmdmode[6]_i_1 
       (.I0(\FSM_onehot_cmdmode[6]_i_2_n_0 ),
        .I1(m_axi_rlast),
        .I2(\FSM_onehot_cmdmode_reg_n_0_[9] ),
        .I3(\FSM_onehot_cmdmode_reg_n_0_[5] ),
        .I4(\FSM_onehot_cmdmode_reg_n_0_[3] ),
        .O(\FSM_onehot_cmdmode[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hAAA8AA88)) 
    \FSM_onehot_cmdmode[6]_i_2 
       (.I0(\FSM_onehot_cmdmode_reg_n_0_[2] ),
        .I1(apucmd[3]),
        .I2(apucmd[2]),
        .I3(apucmd[1]),
        .I4(apucmd[0]),
        .O(\FSM_onehot_cmdmode[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEAAAAAAAA)) 
    \FSM_onehot_cmdmode[7]_i_1 
       (.I0(\FSM_onehot_cmdmode_reg_n_0_[4] ),
        .I1(\burstsleft_reg_n_0_[3] ),
        .I2(\burstsleft_reg_n_0_[0] ),
        .I3(\burstsleft_reg_n_0_[1] ),
        .I4(\burstsleft_reg_n_0_[2] ),
        .I5(\FSM_onehot_cmdmode_reg_n_0_[6] ),
        .O(\FSM_onehot_cmdmode[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_cmdmode[9]_i_2 
       (.I0(\FSM_onehot_cmdmode_reg_n_0_[8] ),
        .I1(m_axi_rlast),
        .I2(\FSM_onehot_cmdmode_reg_n_0_[9] ),
        .O(\FSM_onehot_cmdmode[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \FSM_onehot_cmdmode[9]_i_3 
       (.I0(\FSM_onehot_cmdmode_reg_n_0_[8] ),
        .I1(m_axi_arready),
        .I2(\FSM_onehot_cmdmode_reg_n_0_[9] ),
        .I3(m_axi_rvalid),
        .O(\FSM_onehot_cmdmode[9]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "APUBUFFERSIZE:0000001000,APUSTART:0000010000,DISPATCH:0000000100,WCMD:0000000010,INIT:0000000001,WAITREADADDR:0100000000,FINALIZE:0001000000,READLOOP:1000000000,STARTDMA:0010000000,APUSETRATE:0000100000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_cmdmode_reg[0] 
       (.C(aclk),
        .CE(apucommandinterface_n_19),
        .D(1'b0),
        .Q(\FSM_onehot_cmdmode_reg_n_0_[0] ),
        .S(apucommandinterface_n_12));
  (* FSM_ENCODED_STATES = "APUBUFFERSIZE:0000001000,APUSTART:0000010000,DISPATCH:0000000100,WCMD:0000000010,INIT:0000000001,WAITREADADDR:0100000000,FINALIZE:0001000000,READLOOP:1000000000,STARTDMA:0010000000,APUSETRATE:0000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cmdmode_reg[1] 
       (.C(aclk),
        .CE(apucommandinterface_n_19),
        .D(\FSM_onehot_cmdmode[1]_i_1_n_0 ),
        .Q(\FSM_onehot_cmdmode_reg_n_0_[1] ),
        .R(apucommandinterface_n_12));
  (* FSM_ENCODED_STATES = "APUBUFFERSIZE:0000001000,APUSTART:0000010000,DISPATCH:0000000100,WCMD:0000000010,INIT:0000000001,WAITREADADDR:0100000000,FINALIZE:0001000000,READLOOP:1000000000,STARTDMA:0010000000,APUSETRATE:0000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cmdmode_reg[2] 
       (.C(aclk),
        .CE(apucommandinterface_n_19),
        .D(\FSM_onehot_cmdmode_reg_n_0_[1] ),
        .Q(\FSM_onehot_cmdmode_reg_n_0_[2] ),
        .R(apucommandinterface_n_12));
  (* FSM_ENCODED_STATES = "APUBUFFERSIZE:0000001000,APUSTART:0000010000,DISPATCH:0000000100,WCMD:0000000010,INIT:0000000001,WAITREADADDR:0100000000,FINALIZE:0001000000,READLOOP:1000000000,STARTDMA:0010000000,APUSETRATE:0000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cmdmode_reg[3] 
       (.C(aclk),
        .CE(apucommandinterface_n_19),
        .D(\FSM_onehot_cmdmode[3]_i_1_n_0 ),
        .Q(\FSM_onehot_cmdmode_reg_n_0_[3] ),
        .R(apucommandinterface_n_12));
  (* FSM_ENCODED_STATES = "APUBUFFERSIZE:0000001000,APUSTART:0000010000,DISPATCH:0000000100,WCMD:0000000010,INIT:0000000001,WAITREADADDR:0100000000,FINALIZE:0001000000,READLOOP:1000000000,STARTDMA:0010000000,APUSETRATE:0000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cmdmode_reg[4] 
       (.C(aclk),
        .CE(apucommandinterface_n_19),
        .D(\FSM_onehot_cmdmode[4]_i_1_n_0 ),
        .Q(\FSM_onehot_cmdmode_reg_n_0_[4] ),
        .R(apucommandinterface_n_12));
  (* FSM_ENCODED_STATES = "APUBUFFERSIZE:0000001000,APUSTART:0000010000,DISPATCH:0000000100,WCMD:0000000010,INIT:0000000001,WAITREADADDR:0100000000,FINALIZE:0001000000,READLOOP:1000000000,STARTDMA:0010000000,APUSETRATE:0000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cmdmode_reg[5] 
       (.C(aclk),
        .CE(apucommandinterface_n_19),
        .D(\FSM_onehot_cmdmode[5]_i_1_n_0 ),
        .Q(\FSM_onehot_cmdmode_reg_n_0_[5] ),
        .R(apucommandinterface_n_12));
  (* FSM_ENCODED_STATES = "APUBUFFERSIZE:0000001000,APUSTART:0000010000,DISPATCH:0000000100,WCMD:0000000010,INIT:0000000001,WAITREADADDR:0100000000,FINALIZE:0001000000,READLOOP:1000000000,STARTDMA:0010000000,APUSETRATE:0000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cmdmode_reg[6] 
       (.C(aclk),
        .CE(apucommandinterface_n_19),
        .D(\FSM_onehot_cmdmode[6]_i_1_n_0 ),
        .Q(\FSM_onehot_cmdmode_reg_n_0_[6] ),
        .R(apucommandinterface_n_12));
  (* FSM_ENCODED_STATES = "APUBUFFERSIZE:0000001000,APUSTART:0000010000,DISPATCH:0000000100,WCMD:0000000010,INIT:0000000001,WAITREADADDR:0100000000,FINALIZE:0001000000,READLOOP:1000000000,STARTDMA:0010000000,APUSETRATE:0000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cmdmode_reg[7] 
       (.C(aclk),
        .CE(apucommandinterface_n_19),
        .D(\FSM_onehot_cmdmode[7]_i_1_n_0 ),
        .Q(\FSM_onehot_cmdmode_reg_n_0_[7] ),
        .R(apucommandinterface_n_12));
  (* FSM_ENCODED_STATES = "APUBUFFERSIZE:0000001000,APUSTART:0000010000,DISPATCH:0000000100,WCMD:0000000010,INIT:0000000001,WAITREADADDR:0100000000,FINALIZE:0001000000,READLOOP:1000000000,STARTDMA:0010000000,APUSETRATE:0000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cmdmode_reg[8] 
       (.C(aclk),
        .CE(apucommandinterface_n_19),
        .D(\FSM_onehot_cmdmode_reg_n_0_[7] ),
        .Q(\FSM_onehot_cmdmode_reg_n_0_[8] ),
        .R(apucommandinterface_n_12));
  (* FSM_ENCODED_STATES = "APUBUFFERSIZE:0000001000,APUSTART:0000010000,DISPATCH:0000000100,WCMD:0000000010,INIT:0000000001,WAITREADADDR:0100000000,FINALIZE:0001000000,READLOOP:1000000000,STARTDMA:0010000000,APUSETRATE:0000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cmdmode_reg[9] 
       (.C(aclk),
        .CE(apucommandinterface_n_19),
        .D(\FSM_onehot_cmdmode[9]_i_2_n_0 ),
        .Q(\FSM_onehot_cmdmode_reg_n_0_[9] ),
        .R(apucommandinterface_n_12));
  FDRE \apuburstcount_reg[0] 
       (.C(aclk),
        .CE(apuwordcount_2),
        .D(apufifodout[2]),
        .Q(apuburstcount[0]),
        .R(apucommandinterface_n_12));
  FDRE \apuburstcount_reg[1] 
       (.C(aclk),
        .CE(apuwordcount_2),
        .D(apufifodout[3]),
        .Q(apuburstcount[1]),
        .R(apucommandinterface_n_12));
  FDRE \apuburstcount_reg[2] 
       (.C(aclk),
        .CE(apuwordcount_2),
        .D(apufifodout[4]),
        .Q(apuburstcount[2]),
        .R(apucommandinterface_n_12));
  FDRE \apuburstcount_reg[3] 
       (.C(aclk),
        .CE(apuwordcount_2),
        .D(apufifodout[5]),
        .Q(apuburstcount[3]),
        .R(apucommandinterface_n_12));
  FDRE \apucmd_reg[0] 
       (.C(aclk),
        .CE(apucmd_1),
        .D(apufifodout[0]),
        .Q(apucmd[0]),
        .R(apucommandinterface_n_12));
  FDRE \apucmd_reg[1] 
       (.C(aclk),
        .CE(apucmd_1),
        .D(apufifodout[1]),
        .Q(apucmd[1]),
        .R(apucommandinterface_n_12));
  FDRE \apucmd_reg[2] 
       (.C(aclk),
        .CE(apucmd_1),
        .D(apufifodout[2]),
        .Q(apucmd[2]),
        .R(apucommandinterface_n_12));
  FDRE \apucmd_reg[3] 
       (.C(aclk),
        .CE(apucmd_1),
        .D(apufifodout[3]),
        .Q(apucmd[3]),
        .R(apucommandinterface_n_12));
  blockone_audiomodule_0_0_commandqueue apucommandinterface
       (.D(apufifodout),
        .E(apucommandinterface_n_19),
        .\FSM_onehot_cmdmode_reg[0] (\FSM_onehot_cmdmode[9]_i_3_n_0 ),
        .\FSM_onehot_cmdmode_reg[1] (apucmd_1),
        .\FSM_onehot_cmdmode_reg[3] (apuwordcount_2),
        .\FSM_onehot_cmdmode_reg[4] (apucommandinterface_n_24),
        .\FSM_onehot_cmdmode_reg[6] ({apucommandinterface_n_26,apucommandinterface_n_27,apucommandinterface_n_28,apucommandinterface_n_29,apucommandinterface_n_30,apucommandinterface_n_31,apucommandinterface_n_32,apucommandinterface_n_33,apucommandinterface_n_34,apucommandinterface_n_35,apucommandinterface_n_36,apucommandinterface_n_37,apucommandinterface_n_38,apucommandinterface_n_39,apucommandinterface_n_40,apucommandinterface_n_41,apucommandinterface_n_42,apucommandinterface_n_43,apucommandinterface_n_44,apucommandinterface_n_45,apucommandinterface_n_46,apucommandinterface_n_47,apucommandinterface_n_48,apucommandinterface_n_49,apucommandinterface_n_50,apucommandinterface_n_51,apucommandinterface_n_52,apucommandinterface_n_53,apucommandinterface_n_54,apucommandinterface_n_55,apucommandinterface_n_56,apucommandinterface_n_57}),
        .\FSM_onehot_cmdmode_reg[7] (apucommandinterface_n_23),
        .Q({\FSM_onehot_cmdmode_reg_n_0_[9] ,\FSM_onehot_cmdmode_reg_n_0_[7] ,\FSM_onehot_cmdmode_reg_n_0_[6] ,\FSM_onehot_cmdmode_reg_n_0_[5] ,\FSM_onehot_cmdmode_reg_n_0_[4] ,\FSM_onehot_cmdmode_reg_n_0_[3] ,\FSM_onehot_cmdmode_reg_n_0_[2] ,\FSM_onehot_cmdmode_reg_n_0_[1] ,\FSM_onehot_cmdmode_reg_n_0_[0] }),
        .SR(apucommandinterface_n_12),
        .aclk(aclk),
        .\apusourceaddr_reg[5] (apusourceaddr[5:0]),
        .aresetn(apucommandinterface_n_25),
        .empty(apufifoempty),
        .in13(in13),
        .\m_axi_rdata_reg[32]_0 (bufferSwapCDC2),
        .m_axi_rvalid(m_axi_rvalid),
        .out(aresetn),
        .rd_en(re_reg_n_0),
        .re(re),
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
        .valid(apufifovalid));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 apusourceaddr0_carry
       (.CI(1'b0),
        .CO({apusourceaddr0_carry_n_0,apusourceaddr0_carry_n_1,apusourceaddr0_carry_n_2,apusourceaddr0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,apusourceaddr[7],1'b0}),
        .O(in13[9:6]),
        .S({apusourceaddr[9:8],apusourceaddr0_carry_i_1_n_0,apusourceaddr[6]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 apusourceaddr0_carry__0
       (.CI(apusourceaddr0_carry_n_0),
        .CO({apusourceaddr0_carry__0_n_0,apusourceaddr0_carry__0_n_1,apusourceaddr0_carry__0_n_2,apusourceaddr0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in13[13:10]),
        .S(apusourceaddr[13:10]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 apusourceaddr0_carry__1
       (.CI(apusourceaddr0_carry__0_n_0),
        .CO({apusourceaddr0_carry__1_n_0,apusourceaddr0_carry__1_n_1,apusourceaddr0_carry__1_n_2,apusourceaddr0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in13[17:14]),
        .S(apusourceaddr[17:14]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 apusourceaddr0_carry__2
       (.CI(apusourceaddr0_carry__1_n_0),
        .CO({apusourceaddr0_carry__2_n_0,apusourceaddr0_carry__2_n_1,apusourceaddr0_carry__2_n_2,apusourceaddr0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in13[21:18]),
        .S(apusourceaddr[21:18]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 apusourceaddr0_carry__3
       (.CI(apusourceaddr0_carry__2_n_0),
        .CO({apusourceaddr0_carry__3_n_0,apusourceaddr0_carry__3_n_1,apusourceaddr0_carry__3_n_2,apusourceaddr0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in13[25:22]),
        .S(apusourceaddr[25:22]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 apusourceaddr0_carry__4
       (.CI(apusourceaddr0_carry__3_n_0),
        .CO({apusourceaddr0_carry__4_n_0,apusourceaddr0_carry__4_n_1,apusourceaddr0_carry__4_n_2,apusourceaddr0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in13[29:26]),
        .S(apusourceaddr[29:26]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 apusourceaddr0_carry__5
       (.CI(apusourceaddr0_carry__4_n_0),
        .CO({NLW_apusourceaddr0_carry__5_CO_UNCONNECTED[3:1],apusourceaddr0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_apusourceaddr0_carry__5_O_UNCONNECTED[3:2],in13[31:30]}),
        .S({1'b0,1'b0,apusourceaddr[31:30]}));
  LUT1 #(
    .INIT(2'h1)) 
    apusourceaddr0_carry_i_1
       (.I0(apusourceaddr[7]),
        .O(apusourceaddr0_carry_i_1_n_0));
  FDRE \apusourceaddr_reg[0] 
       (.C(aclk),
        .CE(apucommandinterface_n_25),
        .D(apucommandinterface_n_57),
        .Q(apusourceaddr[0]),
        .R(1'b0));
  FDRE \apusourceaddr_reg[10] 
       (.C(aclk),
        .CE(apucommandinterface_n_25),
        .D(apucommandinterface_n_47),
        .Q(apusourceaddr[10]),
        .R(1'b0));
  FDRE \apusourceaddr_reg[11] 
       (.C(aclk),
        .CE(apucommandinterface_n_25),
        .D(apucommandinterface_n_46),
        .Q(apusourceaddr[11]),
        .R(1'b0));
  FDRE \apusourceaddr_reg[12] 
       (.C(aclk),
        .CE(apucommandinterface_n_25),
        .D(apucommandinterface_n_45),
        .Q(apusourceaddr[12]),
        .R(1'b0));
  FDRE \apusourceaddr_reg[13] 
       (.C(aclk),
        .CE(apucommandinterface_n_25),
        .D(apucommandinterface_n_44),
        .Q(apusourceaddr[13]),
        .R(1'b0));
  FDRE \apusourceaddr_reg[14] 
       (.C(aclk),
        .CE(apucommandinterface_n_25),
        .D(apucommandinterface_n_43),
        .Q(apusourceaddr[14]),
        .R(1'b0));
  FDRE \apusourceaddr_reg[15] 
       (.C(aclk),
        .CE(apucommandinterface_n_25),
        .D(apucommandinterface_n_42),
        .Q(apusourceaddr[15]),
        .R(1'b0));
  FDRE \apusourceaddr_reg[16] 
       (.C(aclk),
        .CE(apucommandinterface_n_25),
        .D(apucommandinterface_n_41),
        .Q(apusourceaddr[16]),
        .R(1'b0));
  FDRE \apusourceaddr_reg[17] 
       (.C(aclk),
        .CE(apucommandinterface_n_25),
        .D(apucommandinterface_n_40),
        .Q(apusourceaddr[17]),
        .R(1'b0));
  FDRE \apusourceaddr_reg[18] 
       (.C(aclk),
        .CE(apucommandinterface_n_25),
        .D(apucommandinterface_n_39),
        .Q(apusourceaddr[18]),
        .R(1'b0));
  FDRE \apusourceaddr_reg[19] 
       (.C(aclk),
        .CE(apucommandinterface_n_25),
        .D(apucommandinterface_n_38),
        .Q(apusourceaddr[19]),
        .R(1'b0));
  FDRE \apusourceaddr_reg[1] 
       (.C(aclk),
        .CE(apucommandinterface_n_25),
        .D(apucommandinterface_n_56),
        .Q(apusourceaddr[1]),
        .R(1'b0));
  FDRE \apusourceaddr_reg[20] 
       (.C(aclk),
        .CE(apucommandinterface_n_25),
        .D(apucommandinterface_n_37),
        .Q(apusourceaddr[20]),
        .R(1'b0));
  FDRE \apusourceaddr_reg[21] 
       (.C(aclk),
        .CE(apucommandinterface_n_25),
        .D(apucommandinterface_n_36),
        .Q(apusourceaddr[21]),
        .R(1'b0));
  FDRE \apusourceaddr_reg[22] 
       (.C(aclk),
        .CE(apucommandinterface_n_25),
        .D(apucommandinterface_n_35),
        .Q(apusourceaddr[22]),
        .R(1'b0));
  FDRE \apusourceaddr_reg[23] 
       (.C(aclk),
        .CE(apucommandinterface_n_25),
        .D(apucommandinterface_n_34),
        .Q(apusourceaddr[23]),
        .R(1'b0));
  FDRE \apusourceaddr_reg[24] 
       (.C(aclk),
        .CE(apucommandinterface_n_25),
        .D(apucommandinterface_n_33),
        .Q(apusourceaddr[24]),
        .R(1'b0));
  FDRE \apusourceaddr_reg[25] 
       (.C(aclk),
        .CE(apucommandinterface_n_25),
        .D(apucommandinterface_n_32),
        .Q(apusourceaddr[25]),
        .R(1'b0));
  FDRE \apusourceaddr_reg[26] 
       (.C(aclk),
        .CE(apucommandinterface_n_25),
        .D(apucommandinterface_n_31),
        .Q(apusourceaddr[26]),
        .R(1'b0));
  FDRE \apusourceaddr_reg[27] 
       (.C(aclk),
        .CE(apucommandinterface_n_25),
        .D(apucommandinterface_n_30),
        .Q(apusourceaddr[27]),
        .R(1'b0));
  FDRE \apusourceaddr_reg[28] 
       (.C(aclk),
        .CE(apucommandinterface_n_25),
        .D(apucommandinterface_n_29),
        .Q(apusourceaddr[28]),
        .R(1'b0));
  FDRE \apusourceaddr_reg[29] 
       (.C(aclk),
        .CE(apucommandinterface_n_25),
        .D(apucommandinterface_n_28),
        .Q(apusourceaddr[29]),
        .R(1'b0));
  FDRE \apusourceaddr_reg[2] 
       (.C(aclk),
        .CE(apucommandinterface_n_25),
        .D(apucommandinterface_n_55),
        .Q(apusourceaddr[2]),
        .R(1'b0));
  FDRE \apusourceaddr_reg[30] 
       (.C(aclk),
        .CE(apucommandinterface_n_25),
        .D(apucommandinterface_n_27),
        .Q(apusourceaddr[30]),
        .R(1'b0));
  FDRE \apusourceaddr_reg[31] 
       (.C(aclk),
        .CE(apucommandinterface_n_25),
        .D(apucommandinterface_n_26),
        .Q(apusourceaddr[31]),
        .R(1'b0));
  FDRE \apusourceaddr_reg[3] 
       (.C(aclk),
        .CE(apucommandinterface_n_25),
        .D(apucommandinterface_n_54),
        .Q(apusourceaddr[3]),
        .R(1'b0));
  FDRE \apusourceaddr_reg[4] 
       (.C(aclk),
        .CE(apucommandinterface_n_25),
        .D(apucommandinterface_n_53),
        .Q(apusourceaddr[4]),
        .R(1'b0));
  FDRE \apusourceaddr_reg[5] 
       (.C(aclk),
        .CE(apucommandinterface_n_25),
        .D(apucommandinterface_n_52),
        .Q(apusourceaddr[5]),
        .R(1'b0));
  FDRE \apusourceaddr_reg[6] 
       (.C(aclk),
        .CE(apucommandinterface_n_25),
        .D(apucommandinterface_n_51),
        .Q(apusourceaddr[6]),
        .R(1'b0));
  FDRE \apusourceaddr_reg[7] 
       (.C(aclk),
        .CE(apucommandinterface_n_25),
        .D(apucommandinterface_n_50),
        .Q(apusourceaddr[7]),
        .R(1'b0));
  FDRE \apusourceaddr_reg[8] 
       (.C(aclk),
        .CE(apucommandinterface_n_25),
        .D(apucommandinterface_n_49),
        .Q(apusourceaddr[8]),
        .R(1'b0));
  FDRE \apusourceaddr_reg[9] 
       (.C(aclk),
        .CE(apucommandinterface_n_25),
        .D(apucommandinterface_n_48),
        .Q(apusourceaddr[9]),
        .R(1'b0));
  FDSE \apuwordcount_reg[0] 
       (.C(aclk),
        .CE(apuwordcount_2),
        .D(apufifodout[0]),
        .Q(apuwordcount[0]),
        .S(apucommandinterface_n_12));
  FDSE \apuwordcount_reg[1] 
       (.C(aclk),
        .CE(apuwordcount_2),
        .D(apufifodout[1]),
        .Q(apuwordcount[1]),
        .S(apucommandinterface_n_12));
  FDSE \apuwordcount_reg[2] 
       (.C(aclk),
        .CE(apuwordcount_2),
        .D(apufifodout[2]),
        .Q(apuwordcount[2]),
        .S(apucommandinterface_n_12));
  FDSE \apuwordcount_reg[3] 
       (.C(aclk),
        .CE(apuwordcount_2),
        .D(apufifodout[3]),
        .Q(apuwordcount[3]),
        .S(apucommandinterface_n_12));
  FDSE \apuwordcount_reg[4] 
       (.C(aclk),
        .CE(apuwordcount_2),
        .D(apufifodout[4]),
        .Q(apuwordcount[4]),
        .S(apucommandinterface_n_12));
  FDSE \apuwordcount_reg[5] 
       (.C(aclk),
        .CE(apuwordcount_2),
        .D(apufifodout[5]),
        .Q(apuwordcount[5]),
        .S(apucommandinterface_n_12));
  FDSE \apuwordcount_reg[6] 
       (.C(aclk),
        .CE(apuwordcount_2),
        .D(apufifodout[6]),
        .Q(apuwordcount[6]),
        .S(apucommandinterface_n_12));
  FDSE \apuwordcount_reg[7] 
       (.C(aclk),
        .CE(apuwordcount_2),
        .D(apufifodout[7]),
        .Q(apuwordcount[7]),
        .S(apucommandinterface_n_12));
  FDSE \apuwordcount_reg[8] 
       (.C(aclk),
        .CE(apuwordcount_2),
        .D(apufifodout[8]),
        .Q(apuwordcount[8]),
        .S(apucommandinterface_n_12));
  FDSE \apuwordcount_reg[9] 
       (.C(aclk),
        .CE(apuwordcount_2),
        .D(apufifodout[9]),
        .Q(apuwordcount[9]),
        .S(apucommandinterface_n_12));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE aresetnA_reg
       (.C(audioclock),
        .CE(1'b1),
        .D(aresetn),
        .Q(aresetnA),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE aresetnB_reg
       (.C(audioclock),
        .CE(1'b1),
        .D(aresetnA),
        .Q(aresetnB),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    asampleclk_i_1
       (.I0(rstaudion),
        .O(clear));
  FDRE asampleclk_reg
       (.C(audioclock),
        .CE(1'b1),
        .D(p_1_in),
        .Q(asampleclk),
        .R(clear));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG audioclockbuffer
       (.I(asampleclk),
        .O(audiosampleclk));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE bufferSwapCDC1_reg
       (.C(aclk),
        .CE(1'b1),
        .D(bufferSwap),
        .Q(bufferSwapCDC1),
        .R(apucommandinterface_n_12));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE bufferSwapCDC2_reg
       (.C(aclk),
        .CE(1'b1),
        .D(bufferSwapCDC1),
        .Q(bufferSwapCDC2),
        .R(apucommandinterface_n_12));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    bufferSwap_i_1
       (.I0(\readCursor0_inferred__0/i__carry_n_0 ),
        .I1(bufferSwap),
        .O(bufferSwap_i_1_n_0));
  FDRE bufferSwap_reg
       (.C(audioclock),
        .CE(1'b1),
        .D(bufferSwap_i_1_n_0),
        .Q(bufferSwap),
        .R(clear));
  LUT4 #(
    .INIT(16'hF444)) 
    \burstsleft[0]_i_1 
       (.I0(\burstsleft_reg_n_0_[0] ),
        .I1(\FSM_onehot_cmdmode_reg_n_0_[7] ),
        .I2(apuburstcount[0]),
        .I3(\FSM_onehot_cmdmode_reg_n_0_[4] ),
        .O(burstsleft[0]));
  LUT5 #(
    .INIT(32'hFF909090)) 
    \burstsleft[1]_i_1 
       (.I0(\burstsleft_reg_n_0_[0] ),
        .I1(\burstsleft_reg_n_0_[1] ),
        .I2(\FSM_onehot_cmdmode_reg_n_0_[7] ),
        .I3(apuburstcount[1]),
        .I4(\FSM_onehot_cmdmode_reg_n_0_[4] ),
        .O(burstsleft[1]));
  LUT6 #(
    .INIT(64'hFFFFA900A900A900)) 
    \burstsleft[2]_i_1 
       (.I0(\burstsleft_reg_n_0_[2] ),
        .I1(\burstsleft_reg_n_0_[1] ),
        .I2(\burstsleft_reg_n_0_[0] ),
        .I3(\FSM_onehot_cmdmode_reg_n_0_[7] ),
        .I4(apuburstcount[2]),
        .I5(\FSM_onehot_cmdmode_reg_n_0_[4] ),
        .O(burstsleft[2]));
  LUT5 #(
    .INIT(32'hFF909090)) 
    \burstsleft[3]_i_2 
       (.I0(\burstsleft_reg_n_0_[3] ),
        .I1(\burstsleft[3]_i_3_n_0 ),
        .I2(\FSM_onehot_cmdmode_reg_n_0_[7] ),
        .I3(apuburstcount[3]),
        .I4(\FSM_onehot_cmdmode_reg_n_0_[4] ),
        .O(burstsleft[3]));
  LUT3 #(
    .INIT(8'hFE)) 
    \burstsleft[3]_i_3 
       (.I0(\burstsleft_reg_n_0_[2] ),
        .I1(\burstsleft_reg_n_0_[1] ),
        .I2(\burstsleft_reg_n_0_[0] ),
        .O(\burstsleft[3]_i_3_n_0 ));
  FDRE \burstsleft_reg[0] 
       (.C(aclk),
        .CE(apucommandinterface_n_23),
        .D(burstsleft[0]),
        .Q(\burstsleft_reg_n_0_[0] ),
        .R(apucommandinterface_n_12));
  FDRE \burstsleft_reg[1] 
       (.C(aclk),
        .CE(apucommandinterface_n_23),
        .D(burstsleft[1]),
        .Q(\burstsleft_reg_n_0_[1] ),
        .R(apucommandinterface_n_12));
  FDRE \burstsleft_reg[2] 
       (.C(aclk),
        .CE(apucommandinterface_n_23),
        .D(burstsleft[2]),
        .Q(\burstsleft_reg_n_0_[2] ),
        .R(apucommandinterface_n_12));
  FDRE \burstsleft_reg[3] 
       (.C(aclk),
        .CE(apucommandinterface_n_23),
        .D(burstsleft[3]),
        .Q(\burstsleft_reg_n_0_[3] ),
        .R(apucommandinterface_n_12));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(\count_reg_n_0_[0] ),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1 
       (.I0(\count_reg_n_0_[0] ),
        .I1(\count_reg_n_0_[1] ),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count[2]_i_1 
       (.I0(\count_reg_n_0_[1] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg_n_0_[2] ),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count[3]_i_1 
       (.I0(\count_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg_n_0_[1] ),
        .I3(\count_reg_n_0_[3] ),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count[4]_i_1 
       (.I0(\count_reg_n_0_[3] ),
        .I1(\count_reg_n_0_[1] ),
        .I2(\count_reg_n_0_[0] ),
        .I3(\count_reg_n_0_[2] ),
        .I4(\count_reg_n_0_[4] ),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count[5]_i_1 
       (.I0(\count_reg_n_0_[4] ),
        .I1(\count_reg_n_0_[2] ),
        .I2(\count_reg_n_0_[0] ),
        .I3(\count_reg_n_0_[1] ),
        .I4(\count_reg_n_0_[3] ),
        .I5(\count_reg_n_0_[5] ),
        .O(p_0_in[5]));
  LUT2 #(
    .INIT(4'h9)) 
    \count[6]_i_1 
       (.I0(\readLowbits[1]_i_4_n_0 ),
        .I1(\count_reg_n_0_[6] ),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \count[7]_i_1 
       (.I0(\count_reg_n_0_[6] ),
        .I1(\readLowbits[1]_i_4_n_0 ),
        .I2(\count_reg_n_0_[7] ),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \count[8]_i_1 
       (.I0(\count_reg_n_0_[7] ),
        .I1(\readLowbits[1]_i_4_n_0 ),
        .I2(\count_reg_n_0_[6] ),
        .I3(p_1_in),
        .O(p_0_in[8]));
  FDRE \count_reg[0] 
       (.C(audioclock),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(\count_reg_n_0_[0] ),
        .R(clear));
  FDRE \count_reg[1] 
       (.C(audioclock),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(\count_reg_n_0_[1] ),
        .R(clear));
  FDRE \count_reg[2] 
       (.C(audioclock),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(\count_reg_n_0_[2] ),
        .R(clear));
  FDRE \count_reg[3] 
       (.C(audioclock),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(\count_reg_n_0_[3] ),
        .R(clear));
  FDRE \count_reg[4] 
       (.C(audioclock),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(\count_reg_n_0_[4] ),
        .R(clear));
  FDRE \count_reg[5] 
       (.C(audioclock),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(\count_reg_n_0_[5] ),
        .R(clear));
  FDRE \count_reg[6] 
       (.C(audioclock),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(\count_reg_n_0_[6] ),
        .R(clear));
  FDRE \count_reg[7] 
       (.C(audioclock),
        .CE(1'b1),
        .D(p_0_in[7]),
        .Q(\count_reg_n_0_[7] ),
        .R(clear));
  FDRE \count_reg[8] 
       (.C(audioclock),
        .CE(1'b1),
        .D(p_0_in[8]),
        .Q(p_1_in),
        .R(clear));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_1
       (.I0(apuwordcount[9]),
        .I1(outaddr[9]),
        .O(i__carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_2
       (.I0(apuwordcount[8]),
        .I1(outaddr[8]),
        .I2(apuwordcount[7]),
        .I3(outaddr[7]),
        .I4(outaddr[6]),
        .I5(apuwordcount[6]),
        .O(i__carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_3
       (.I0(apuwordcount[5]),
        .I1(outaddr[5]),
        .I2(apuwordcount[4]),
        .I3(outaddr[4]),
        .I4(outaddr[3]),
        .I5(apuwordcount[3]),
        .O(i__carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_4
       (.I0(apuwordcount[2]),
        .I1(outaddr[2]),
        .I2(apuwordcount[1]),
        .I3(outaddr[1]),
        .I4(outaddr[0]),
        .I5(apuwordcount[0]),
        .O(i__carry_i_4_n_0));
  FDRE re_reg
       (.C(aclk),
        .CE(1'b1),
        .D(re),
        .Q(re_reg_n_0),
        .R(apucommandinterface_n_12));
  CARRY4 \readCursor0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\readCursor0_inferred__0/i__carry_n_0 ,\readCursor0_inferred__0/i__carry_n_1 ,\readCursor0_inferred__0/i__carry_n_2 ,\readCursor0_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_readCursor0_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}));
  FDRE \readCursor_reg[0] 
       (.C(audioclock),
        .CE(readCursor),
        .D(readCursor0[2]),
        .Q(outaddr[0]),
        .R(\readLowbits[1]_i_1_n_0 ));
  FDRE \readCursor_reg[1] 
       (.C(audioclock),
        .CE(readCursor),
        .D(readCursor0[3]),
        .Q(outaddr[1]),
        .R(\readLowbits[1]_i_1_n_0 ));
  FDRE \readCursor_reg[2] 
       (.C(audioclock),
        .CE(readCursor),
        .D(readCursor0[4]),
        .Q(outaddr[2]),
        .R(\readLowbits[1]_i_1_n_0 ));
  FDRE \readCursor_reg[3] 
       (.C(audioclock),
        .CE(readCursor),
        .D(readCursor0[5]),
        .Q(outaddr[3]),
        .R(\readLowbits[1]_i_1_n_0 ));
  FDRE \readCursor_reg[4] 
       (.C(audioclock),
        .CE(readCursor),
        .D(readCursor0[6]),
        .Q(outaddr[4]),
        .R(\readLowbits[1]_i_1_n_0 ));
  FDRE \readCursor_reg[5] 
       (.C(audioclock),
        .CE(readCursor),
        .D(readCursor0[7]),
        .Q(outaddr[5]),
        .R(\readLowbits[1]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \readCursor_reg[5]_i_1 
       (.CI(\readLowbits_reg[1]_i_3_n_0 ),
        .CO({\readCursor_reg[5]_i_1_n_0 ,\readCursor_reg[5]_i_1_n_1 ,\readCursor_reg[5]_i_1_n_2 ,\readCursor_reg[5]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(readCursor0[7:4]),
        .S(outaddr[5:2]));
  FDRE \readCursor_reg[6] 
       (.C(audioclock),
        .CE(readCursor),
        .D(readCursor0[8]),
        .Q(outaddr[6]),
        .R(\readLowbits[1]_i_1_n_0 ));
  FDRE \readCursor_reg[7] 
       (.C(audioclock),
        .CE(readCursor),
        .D(readCursor0[9]),
        .Q(outaddr[7]),
        .R(\readLowbits[1]_i_1_n_0 ));
  FDRE \readCursor_reg[8] 
       (.C(audioclock),
        .CE(readCursor),
        .D(readCursor0[10]),
        .Q(outaddr[8]),
        .R(\readLowbits[1]_i_1_n_0 ));
  FDRE \readCursor_reg[9] 
       (.C(audioclock),
        .CE(readCursor),
        .D(readCursor0[11]),
        .Q(outaddr[9]),
        .R(\readLowbits[1]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \readCursor_reg[9]_i_1 
       (.CI(\readCursor_reg[5]_i_1_n_0 ),
        .CO({\NLW_readCursor_reg[9]_i_1_CO_UNCONNECTED [3],\readCursor_reg[9]_i_1_n_1 ,\readCursor_reg[9]_i_1_n_2 ,\readCursor_reg[9]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(readCursor0[11:8]),
        .S(outaddr[9:6]));
  LUT2 #(
    .INIT(4'hB)) 
    \readLowbits[1]_i_1 
       (.I0(\readCursor0_inferred__0/i__carry_n_0 ),
        .I1(rstaudion),
        .O(\readLowbits[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0020)) 
    \readLowbits[1]_i_2 
       (.I0(\count_reg_n_0_[7] ),
        .I1(\readLowbits[1]_i_4_n_0 ),
        .I2(\count_reg_n_0_[6] ),
        .I3(p_1_in),
        .O(readCursor));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \readLowbits[1]_i_4 
       (.I0(\count_reg_n_0_[4] ),
        .I1(\count_reg_n_0_[2] ),
        .I2(\count_reg_n_0_[0] ),
        .I3(\count_reg_n_0_[1] ),
        .I4(\count_reg_n_0_[3] ),
        .I5(\count_reg_n_0_[5] ),
        .O(\readLowbits[1]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \readLowbits[1]_i_5 
       (.I0(outaddr[0]),
        .I1(\sampleoutputrateselector_reg_n_0_[2] ),
        .O(\readLowbits[1]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \readLowbits[1]_i_6 
       (.I0(readLowbits[1]),
        .I1(\sampleoutputrateselector_reg_n_0_[1] ),
        .O(\readLowbits[1]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \readLowbits[1]_i_7 
       (.I0(readLowbits[0]),
        .I1(\sampleoutputrateselector_reg_n_0_[0] ),
        .O(\readLowbits[1]_i_7_n_0 ));
  FDRE \readLowbits_reg[0] 
       (.C(audioclock),
        .CE(readCursor),
        .D(readCursor0[0]),
        .Q(readLowbits[0]),
        .R(\readLowbits[1]_i_1_n_0 ));
  FDRE \readLowbits_reg[1] 
       (.C(audioclock),
        .CE(readCursor),
        .D(readCursor0[1]),
        .Q(readLowbits[1]),
        .R(\readLowbits[1]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \readLowbits_reg[1]_i_3 
       (.CI(1'b0),
        .CO({\readLowbits_reg[1]_i_3_n_0 ,\readLowbits_reg[1]_i_3_n_1 ,\readLowbits_reg[1]_i_3_n_2 ,\readLowbits_reg[1]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,outaddr[0],readLowbits}),
        .O(readCursor0[3:0]),
        .S({outaddr[1],\readLowbits[1]_i_5_n_0 ,\readLowbits[1]_i_6_n_0 ,\readLowbits[1]_i_7_n_0 }));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE rstaudion_reg
       (.C(audioclock),
        .CE(1'b1),
        .D(aresetnB),
        .Q(rstaudion),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_araddr[31]_i_1 
       (.I0(aresetn),
        .I1(\FSM_onehot_cmdmode_reg_n_0_[7] ),
        .O(\s_axi_araddr[31]_i_1_n_0 ));
  FDRE \s_axi_araddr_reg[0] 
       (.C(aclk),
        .CE(\s_axi_araddr[31]_i_1_n_0 ),
        .D(apusourceaddr[0]),
        .Q(m_axi_araddr[0]),
        .R(1'b0));
  FDRE \s_axi_araddr_reg[10] 
       (.C(aclk),
        .CE(\s_axi_araddr[31]_i_1_n_0 ),
        .D(apusourceaddr[10]),
        .Q(m_axi_araddr[10]),
        .R(1'b0));
  FDRE \s_axi_araddr_reg[11] 
       (.C(aclk),
        .CE(\s_axi_araddr[31]_i_1_n_0 ),
        .D(apusourceaddr[11]),
        .Q(m_axi_araddr[11]),
        .R(1'b0));
  FDRE \s_axi_araddr_reg[12] 
       (.C(aclk),
        .CE(\s_axi_araddr[31]_i_1_n_0 ),
        .D(apusourceaddr[12]),
        .Q(m_axi_araddr[12]),
        .R(1'b0));
  FDRE \s_axi_araddr_reg[13] 
       (.C(aclk),
        .CE(\s_axi_araddr[31]_i_1_n_0 ),
        .D(apusourceaddr[13]),
        .Q(m_axi_araddr[13]),
        .R(1'b0));
  FDRE \s_axi_araddr_reg[14] 
       (.C(aclk),
        .CE(\s_axi_araddr[31]_i_1_n_0 ),
        .D(apusourceaddr[14]),
        .Q(m_axi_araddr[14]),
        .R(1'b0));
  FDRE \s_axi_araddr_reg[15] 
       (.C(aclk),
        .CE(\s_axi_araddr[31]_i_1_n_0 ),
        .D(apusourceaddr[15]),
        .Q(m_axi_araddr[15]),
        .R(1'b0));
  FDRE \s_axi_araddr_reg[16] 
       (.C(aclk),
        .CE(\s_axi_araddr[31]_i_1_n_0 ),
        .D(apusourceaddr[16]),
        .Q(m_axi_araddr[16]),
        .R(1'b0));
  FDRE \s_axi_araddr_reg[17] 
       (.C(aclk),
        .CE(\s_axi_araddr[31]_i_1_n_0 ),
        .D(apusourceaddr[17]),
        .Q(m_axi_araddr[17]),
        .R(1'b0));
  FDRE \s_axi_araddr_reg[18] 
       (.C(aclk),
        .CE(\s_axi_araddr[31]_i_1_n_0 ),
        .D(apusourceaddr[18]),
        .Q(m_axi_araddr[18]),
        .R(1'b0));
  FDRE \s_axi_araddr_reg[19] 
       (.C(aclk),
        .CE(\s_axi_araddr[31]_i_1_n_0 ),
        .D(apusourceaddr[19]),
        .Q(m_axi_araddr[19]),
        .R(1'b0));
  FDRE \s_axi_araddr_reg[1] 
       (.C(aclk),
        .CE(\s_axi_araddr[31]_i_1_n_0 ),
        .D(apusourceaddr[1]),
        .Q(m_axi_araddr[1]),
        .R(1'b0));
  FDRE \s_axi_araddr_reg[20] 
       (.C(aclk),
        .CE(\s_axi_araddr[31]_i_1_n_0 ),
        .D(apusourceaddr[20]),
        .Q(m_axi_araddr[20]),
        .R(1'b0));
  FDRE \s_axi_araddr_reg[21] 
       (.C(aclk),
        .CE(\s_axi_araddr[31]_i_1_n_0 ),
        .D(apusourceaddr[21]),
        .Q(m_axi_araddr[21]),
        .R(1'b0));
  FDRE \s_axi_araddr_reg[22] 
       (.C(aclk),
        .CE(\s_axi_araddr[31]_i_1_n_0 ),
        .D(apusourceaddr[22]),
        .Q(m_axi_araddr[22]),
        .R(1'b0));
  FDRE \s_axi_araddr_reg[23] 
       (.C(aclk),
        .CE(\s_axi_araddr[31]_i_1_n_0 ),
        .D(apusourceaddr[23]),
        .Q(m_axi_araddr[23]),
        .R(1'b0));
  FDRE \s_axi_araddr_reg[24] 
       (.C(aclk),
        .CE(\s_axi_araddr[31]_i_1_n_0 ),
        .D(apusourceaddr[24]),
        .Q(m_axi_araddr[24]),
        .R(1'b0));
  FDRE \s_axi_araddr_reg[25] 
       (.C(aclk),
        .CE(\s_axi_araddr[31]_i_1_n_0 ),
        .D(apusourceaddr[25]),
        .Q(m_axi_araddr[25]),
        .R(1'b0));
  FDRE \s_axi_araddr_reg[26] 
       (.C(aclk),
        .CE(\s_axi_araddr[31]_i_1_n_0 ),
        .D(apusourceaddr[26]),
        .Q(m_axi_araddr[26]),
        .R(1'b0));
  FDRE \s_axi_araddr_reg[27] 
       (.C(aclk),
        .CE(\s_axi_araddr[31]_i_1_n_0 ),
        .D(apusourceaddr[27]),
        .Q(m_axi_araddr[27]),
        .R(1'b0));
  FDRE \s_axi_araddr_reg[28] 
       (.C(aclk),
        .CE(\s_axi_araddr[31]_i_1_n_0 ),
        .D(apusourceaddr[28]),
        .Q(m_axi_araddr[28]),
        .R(1'b0));
  FDRE \s_axi_araddr_reg[29] 
       (.C(aclk),
        .CE(\s_axi_araddr[31]_i_1_n_0 ),
        .D(apusourceaddr[29]),
        .Q(m_axi_araddr[29]),
        .R(1'b0));
  FDRE \s_axi_araddr_reg[2] 
       (.C(aclk),
        .CE(\s_axi_araddr[31]_i_1_n_0 ),
        .D(apusourceaddr[2]),
        .Q(m_axi_araddr[2]),
        .R(1'b0));
  FDRE \s_axi_araddr_reg[30] 
       (.C(aclk),
        .CE(\s_axi_araddr[31]_i_1_n_0 ),
        .D(apusourceaddr[30]),
        .Q(m_axi_araddr[30]),
        .R(1'b0));
  FDRE \s_axi_araddr_reg[31] 
       (.C(aclk),
        .CE(\s_axi_araddr[31]_i_1_n_0 ),
        .D(apusourceaddr[31]),
        .Q(m_axi_araddr[31]),
        .R(1'b0));
  FDRE \s_axi_araddr_reg[3] 
       (.C(aclk),
        .CE(\s_axi_araddr[31]_i_1_n_0 ),
        .D(apusourceaddr[3]),
        .Q(m_axi_araddr[3]),
        .R(1'b0));
  FDRE \s_axi_araddr_reg[4] 
       (.C(aclk),
        .CE(\s_axi_araddr[31]_i_1_n_0 ),
        .D(apusourceaddr[4]),
        .Q(m_axi_araddr[4]),
        .R(1'b0));
  FDRE \s_axi_araddr_reg[5] 
       (.C(aclk),
        .CE(\s_axi_araddr[31]_i_1_n_0 ),
        .D(apusourceaddr[5]),
        .Q(m_axi_araddr[5]),
        .R(1'b0));
  FDRE \s_axi_araddr_reg[6] 
       (.C(aclk),
        .CE(\s_axi_araddr[31]_i_1_n_0 ),
        .D(apusourceaddr[6]),
        .Q(m_axi_araddr[6]),
        .R(1'b0));
  FDRE \s_axi_araddr_reg[7] 
       (.C(aclk),
        .CE(\s_axi_araddr[31]_i_1_n_0 ),
        .D(apusourceaddr[7]),
        .Q(m_axi_araddr[7]),
        .R(1'b0));
  FDRE \s_axi_araddr_reg[8] 
       (.C(aclk),
        .CE(\s_axi_araddr[31]_i_1_n_0 ),
        .D(apusourceaddr[8]),
        .Q(m_axi_araddr[8]),
        .R(1'b0));
  FDRE \s_axi_araddr_reg[9] 
       (.C(aclk),
        .CE(\s_axi_araddr[31]_i_1_n_0 ),
        .D(apusourceaddr[9]),
        .Q(m_axi_araddr[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hDDDFDFDF88888888)) 
    s_axi_arvalid_i_1
       (.I0(aresetn),
        .I1(\FSM_onehot_cmdmode_reg_n_0_[7] ),
        .I2(\FSM_onehot_cmdmode_reg_n_0_[0] ),
        .I3(m_axi_arready),
        .I4(\FSM_onehot_cmdmode_reg_n_0_[8] ),
        .I5(m_axi_arvalid),
        .O(s_axi_arvalid_i_1_n_0));
  FDRE s_axi_arvalid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_axi_arvalid_i_1_n_0),
        .Q(m_axi_arvalid),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8F88FFFF8F880000)) 
    s_axi_rready_i_1
       (.I0(\FSM_onehot_cmdmode_reg_n_0_[8] ),
        .I1(m_axi_arready),
        .I2(m_axi_rlast),
        .I3(\FSM_onehot_cmdmode_reg_n_0_[9] ),
        .I4(s_axi_rready0_out),
        .I5(m_axi_rready),
        .O(s_axi_rready_i_1_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA808080)) 
    s_axi_rready_i_2
       (.I0(aresetn),
        .I1(\FSM_onehot_cmdmode_reg_n_0_[8] ),
        .I2(m_axi_arready),
        .I3(\FSM_onehot_cmdmode_reg_n_0_[9] ),
        .I4(m_axi_rvalid),
        .I5(\FSM_onehot_cmdmode_reg_n_0_[0] ),
        .O(s_axi_rready0_out));
  FDRE s_axi_rready_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_axi_rready_i_1_n_0),
        .Q(m_axi_rready),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h80)) 
    \sampleIn[63]_i_1 
       (.I0(\FSM_onehot_cmdmode_reg_n_0_[9] ),
        .I1(m_axi_rvalid),
        .I2(aresetn),
        .O(\sampleIn[63]_i_1_n_0 ));
  FDRE \sampleIn_reg[0] 
       (.C(aclk),
        .CE(\sampleIn[63]_i_1_n_0 ),
        .D(m_axi_rdata[0]),
        .Q(\sampleIn_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \sampleIn_reg[10] 
       (.C(aclk),
        .CE(\sampleIn[63]_i_1_n_0 ),
        .D(m_axi_rdata[10]),
        .Q(\sampleIn_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \sampleIn_reg[11] 
       (.C(aclk),
        .CE(\sampleIn[63]_i_1_n_0 ),
        .D(m_axi_rdata[11]),
        .Q(\sampleIn_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \sampleIn_reg[12] 
       (.C(aclk),
        .CE(\sampleIn[63]_i_1_n_0 ),
        .D(m_axi_rdata[12]),
        .Q(\sampleIn_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \sampleIn_reg[13] 
       (.C(aclk),
        .CE(\sampleIn[63]_i_1_n_0 ),
        .D(m_axi_rdata[13]),
        .Q(\sampleIn_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \sampleIn_reg[14] 
       (.C(aclk),
        .CE(\sampleIn[63]_i_1_n_0 ),
        .D(m_axi_rdata[14]),
        .Q(\sampleIn_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \sampleIn_reg[15] 
       (.C(aclk),
        .CE(\sampleIn[63]_i_1_n_0 ),
        .D(m_axi_rdata[15]),
        .Q(\sampleIn_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \sampleIn_reg[16] 
       (.C(aclk),
        .CE(\sampleIn[63]_i_1_n_0 ),
        .D(m_axi_rdata[16]),
        .Q(\sampleIn_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \sampleIn_reg[17] 
       (.C(aclk),
        .CE(\sampleIn[63]_i_1_n_0 ),
        .D(m_axi_rdata[17]),
        .Q(\sampleIn_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \sampleIn_reg[18] 
       (.C(aclk),
        .CE(\sampleIn[63]_i_1_n_0 ),
        .D(m_axi_rdata[18]),
        .Q(\sampleIn_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \sampleIn_reg[19] 
       (.C(aclk),
        .CE(\sampleIn[63]_i_1_n_0 ),
        .D(m_axi_rdata[19]),
        .Q(\sampleIn_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \sampleIn_reg[1] 
       (.C(aclk),
        .CE(\sampleIn[63]_i_1_n_0 ),
        .D(m_axi_rdata[1]),
        .Q(\sampleIn_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \sampleIn_reg[20] 
       (.C(aclk),
        .CE(\sampleIn[63]_i_1_n_0 ),
        .D(m_axi_rdata[20]),
        .Q(\sampleIn_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \sampleIn_reg[21] 
       (.C(aclk),
        .CE(\sampleIn[63]_i_1_n_0 ),
        .D(m_axi_rdata[21]),
        .Q(\sampleIn_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \sampleIn_reg[22] 
       (.C(aclk),
        .CE(\sampleIn[63]_i_1_n_0 ),
        .D(m_axi_rdata[22]),
        .Q(\sampleIn_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \sampleIn_reg[23] 
       (.C(aclk),
        .CE(\sampleIn[63]_i_1_n_0 ),
        .D(m_axi_rdata[23]),
        .Q(\sampleIn_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \sampleIn_reg[24] 
       (.C(aclk),
        .CE(\sampleIn[63]_i_1_n_0 ),
        .D(m_axi_rdata[24]),
        .Q(\sampleIn_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \sampleIn_reg[25] 
       (.C(aclk),
        .CE(\sampleIn[63]_i_1_n_0 ),
        .D(m_axi_rdata[25]),
        .Q(\sampleIn_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \sampleIn_reg[26] 
       (.C(aclk),
        .CE(\sampleIn[63]_i_1_n_0 ),
        .D(m_axi_rdata[26]),
        .Q(\sampleIn_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \sampleIn_reg[27] 
       (.C(aclk),
        .CE(\sampleIn[63]_i_1_n_0 ),
        .D(m_axi_rdata[27]),
        .Q(\sampleIn_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \sampleIn_reg[28] 
       (.C(aclk),
        .CE(\sampleIn[63]_i_1_n_0 ),
        .D(m_axi_rdata[28]),
        .Q(\sampleIn_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \sampleIn_reg[29] 
       (.C(aclk),
        .CE(\sampleIn[63]_i_1_n_0 ),
        .D(m_axi_rdata[29]),
        .Q(\sampleIn_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \sampleIn_reg[2] 
       (.C(aclk),
        .CE(\sampleIn[63]_i_1_n_0 ),
        .D(m_axi_rdata[2]),
        .Q(\sampleIn_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \sampleIn_reg[30] 
       (.C(aclk),
        .CE(\sampleIn[63]_i_1_n_0 ),
        .D(m_axi_rdata[30]),
        .Q(\sampleIn_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \sampleIn_reg[31] 
       (.C(aclk),
        .CE(\sampleIn[63]_i_1_n_0 ),
        .D(m_axi_rdata[31]),
        .Q(\sampleIn_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \sampleIn_reg[32] 
       (.C(aclk),
        .CE(\sampleIn[63]_i_1_n_0 ),
        .D(m_axi_rdata[32]),
        .Q(\sampleIn_reg_n_0_[32] ),
        .R(1'b0));
  FDRE \sampleIn_reg[33] 
       (.C(aclk),
        .CE(\sampleIn[63]_i_1_n_0 ),
        .D(m_axi_rdata[33]),
        .Q(\sampleIn_reg_n_0_[33] ),
        .R(1'b0));
  FDRE \sampleIn_reg[34] 
       (.C(aclk),
        .CE(\sampleIn[63]_i_1_n_0 ),
        .D(m_axi_rdata[34]),
        .Q(\sampleIn_reg_n_0_[34] ),
        .R(1'b0));
  FDRE \sampleIn_reg[35] 
       (.C(aclk),
        .CE(\sampleIn[63]_i_1_n_0 ),
        .D(m_axi_rdata[35]),
        .Q(\sampleIn_reg_n_0_[35] ),
        .R(1'b0));
  FDRE \sampleIn_reg[36] 
       (.C(aclk),
        .CE(\sampleIn[63]_i_1_n_0 ),
        .D(m_axi_rdata[36]),
        .Q(\sampleIn_reg_n_0_[36] ),
        .R(1'b0));
  FDRE \sampleIn_reg[37] 
       (.C(aclk),
        .CE(\sampleIn[63]_i_1_n_0 ),
        .D(m_axi_rdata[37]),
        .Q(\sampleIn_reg_n_0_[37] ),
        .R(1'b0));
  FDRE \sampleIn_reg[38] 
       (.C(aclk),
        .CE(\sampleIn[63]_i_1_n_0 ),
        .D(m_axi_rdata[38]),
        .Q(\sampleIn_reg_n_0_[38] ),
        .R(1'b0));
  FDRE \sampleIn_reg[39] 
       (.C(aclk),
        .CE(\sampleIn[63]_i_1_n_0 ),
        .D(m_axi_rdata[39]),
        .Q(\sampleIn_reg_n_0_[39] ),
        .R(1'b0));
  FDRE \sampleIn_reg[3] 
       (.C(aclk),
        .CE(\sampleIn[63]_i_1_n_0 ),
        .D(m_axi_rdata[3]),
        .Q(\sampleIn_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \sampleIn_reg[40] 
       (.C(aclk),
        .CE(\sampleIn[63]_i_1_n_0 ),
        .D(m_axi_rdata[40]),
        .Q(\sampleIn_reg_n_0_[40] ),
        .R(1'b0));
  FDRE \sampleIn_reg[41] 
       (.C(aclk),
        .CE(\sampleIn[63]_i_1_n_0 ),
        .D(m_axi_rdata[41]),
        .Q(\sampleIn_reg_n_0_[41] ),
        .R(1'b0));
  FDRE \sampleIn_reg[42] 
       (.C(aclk),
        .CE(\sampleIn[63]_i_1_n_0 ),
        .D(m_axi_rdata[42]),
        .Q(\sampleIn_reg_n_0_[42] ),
        .R(1'b0));
  FDRE \sampleIn_reg[43] 
       (.C(aclk),
        .CE(\sampleIn[63]_i_1_n_0 ),
        .D(m_axi_rdata[43]),
        .Q(\sampleIn_reg_n_0_[43] ),
        .R(1'b0));
  FDRE \sampleIn_reg[44] 
       (.C(aclk),
        .CE(\sampleIn[63]_i_1_n_0 ),
        .D(m_axi_rdata[44]),
        .Q(\sampleIn_reg_n_0_[44] ),
        .R(1'b0));
  FDRE \sampleIn_reg[45] 
       (.C(aclk),
        .CE(\sampleIn[63]_i_1_n_0 ),
        .D(m_axi_rdata[45]),
        .Q(\sampleIn_reg_n_0_[45] ),
        .R(1'b0));
  FDRE \sampleIn_reg[46] 
       (.C(aclk),
        .CE(\sampleIn[63]_i_1_n_0 ),
        .D(m_axi_rdata[46]),
        .Q(\sampleIn_reg_n_0_[46] ),
        .R(1'b0));
  FDRE \sampleIn_reg[47] 
       (.C(aclk),
        .CE(\sampleIn[63]_i_1_n_0 ),
        .D(m_axi_rdata[47]),
        .Q(\sampleIn_reg_n_0_[47] ),
        .R(1'b0));
  FDRE \sampleIn_reg[48] 
       (.C(aclk),
        .CE(\sampleIn[63]_i_1_n_0 ),
        .D(m_axi_rdata[48]),
        .Q(\sampleIn_reg_n_0_[48] ),
        .R(1'b0));
  FDRE \sampleIn_reg[49] 
       (.C(aclk),
        .CE(\sampleIn[63]_i_1_n_0 ),
        .D(m_axi_rdata[49]),
        .Q(\sampleIn_reg_n_0_[49] ),
        .R(1'b0));
  FDRE \sampleIn_reg[4] 
       (.C(aclk),
        .CE(\sampleIn[63]_i_1_n_0 ),
        .D(m_axi_rdata[4]),
        .Q(\sampleIn_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \sampleIn_reg[50] 
       (.C(aclk),
        .CE(\sampleIn[63]_i_1_n_0 ),
        .D(m_axi_rdata[50]),
        .Q(\sampleIn_reg_n_0_[50] ),
        .R(1'b0));
  FDRE \sampleIn_reg[51] 
       (.C(aclk),
        .CE(\sampleIn[63]_i_1_n_0 ),
        .D(m_axi_rdata[51]),
        .Q(\sampleIn_reg_n_0_[51] ),
        .R(1'b0));
  FDRE \sampleIn_reg[52] 
       (.C(aclk),
        .CE(\sampleIn[63]_i_1_n_0 ),
        .D(m_axi_rdata[52]),
        .Q(\sampleIn_reg_n_0_[52] ),
        .R(1'b0));
  FDRE \sampleIn_reg[53] 
       (.C(aclk),
        .CE(\sampleIn[63]_i_1_n_0 ),
        .D(m_axi_rdata[53]),
        .Q(\sampleIn_reg_n_0_[53] ),
        .R(1'b0));
  FDRE \sampleIn_reg[54] 
       (.C(aclk),
        .CE(\sampleIn[63]_i_1_n_0 ),
        .D(m_axi_rdata[54]),
        .Q(\sampleIn_reg_n_0_[54] ),
        .R(1'b0));
  FDRE \sampleIn_reg[55] 
       (.C(aclk),
        .CE(\sampleIn[63]_i_1_n_0 ),
        .D(m_axi_rdata[55]),
        .Q(\sampleIn_reg_n_0_[55] ),
        .R(1'b0));
  FDRE \sampleIn_reg[56] 
       (.C(aclk),
        .CE(\sampleIn[63]_i_1_n_0 ),
        .D(m_axi_rdata[56]),
        .Q(\sampleIn_reg_n_0_[56] ),
        .R(1'b0));
  FDRE \sampleIn_reg[57] 
       (.C(aclk),
        .CE(\sampleIn[63]_i_1_n_0 ),
        .D(m_axi_rdata[57]),
        .Q(\sampleIn_reg_n_0_[57] ),
        .R(1'b0));
  FDRE \sampleIn_reg[58] 
       (.C(aclk),
        .CE(\sampleIn[63]_i_1_n_0 ),
        .D(m_axi_rdata[58]),
        .Q(\sampleIn_reg_n_0_[58] ),
        .R(1'b0));
  FDRE \sampleIn_reg[59] 
       (.C(aclk),
        .CE(\sampleIn[63]_i_1_n_0 ),
        .D(m_axi_rdata[59]),
        .Q(\sampleIn_reg_n_0_[59] ),
        .R(1'b0));
  FDRE \sampleIn_reg[5] 
       (.C(aclk),
        .CE(\sampleIn[63]_i_1_n_0 ),
        .D(m_axi_rdata[5]),
        .Q(\sampleIn_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \sampleIn_reg[60] 
       (.C(aclk),
        .CE(\sampleIn[63]_i_1_n_0 ),
        .D(m_axi_rdata[60]),
        .Q(\sampleIn_reg_n_0_[60] ),
        .R(1'b0));
  FDRE \sampleIn_reg[61] 
       (.C(aclk),
        .CE(\sampleIn[63]_i_1_n_0 ),
        .D(m_axi_rdata[61]),
        .Q(\sampleIn_reg_n_0_[61] ),
        .R(1'b0));
  FDRE \sampleIn_reg[62] 
       (.C(aclk),
        .CE(\sampleIn[63]_i_1_n_0 ),
        .D(m_axi_rdata[62]),
        .Q(\sampleIn_reg_n_0_[62] ),
        .R(1'b0));
  FDRE \sampleIn_reg[63] 
       (.C(aclk),
        .CE(\sampleIn[63]_i_1_n_0 ),
        .D(m_axi_rdata[63]),
        .Q(\sampleIn_reg_n_0_[63] ),
        .R(1'b0));
  FDRE \sampleIn_reg[6] 
       (.C(aclk),
        .CE(\sampleIn[63]_i_1_n_0 ),
        .D(m_axi_rdata[6]),
        .Q(\sampleIn_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \sampleIn_reg[7] 
       (.C(aclk),
        .CE(\sampleIn[63]_i_1_n_0 ),
        .D(m_axi_rdata[7]),
        .Q(\sampleIn_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \sampleIn_reg[8] 
       (.C(aclk),
        .CE(\sampleIn[63]_i_1_n_0 ),
        .D(m_axi_rdata[8]),
        .Q(\sampleIn_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \sampleIn_reg[9] 
       (.C(aclk),
        .CE(\sampleIn[63]_i_1_n_0 ),
        .D(m_axi_rdata[9]),
        .Q(\sampleIn_reg_n_0_[9] ),
        .R(1'b0));
  (* CHECK_LICENSE_TYPE = "samplemem,blk_mem_gen_v8_4_10,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "blk_mem_gen_v8_4_10,Vivado 2024.2.2" *) 
  blockone_audiomodule_0_0_samplemem samplememinst
       (.addra({1'b0,inaddr}),
        .addrb(outaddr),
        .clka(aclk),
        .clkb(audioclock),
        .dina({\sampleIn_reg_n_0_[63] ,\sampleIn_reg_n_0_[62] ,\sampleIn_reg_n_0_[61] ,\sampleIn_reg_n_0_[60] ,\sampleIn_reg_n_0_[59] ,\sampleIn_reg_n_0_[58] ,\sampleIn_reg_n_0_[57] ,\sampleIn_reg_n_0_[56] ,\sampleIn_reg_n_0_[55] ,\sampleIn_reg_n_0_[54] ,\sampleIn_reg_n_0_[53] ,\sampleIn_reg_n_0_[52] ,\sampleIn_reg_n_0_[51] ,\sampleIn_reg_n_0_[50] ,\sampleIn_reg_n_0_[49] ,\sampleIn_reg_n_0_[48] ,\sampleIn_reg_n_0_[47] ,\sampleIn_reg_n_0_[46] ,\sampleIn_reg_n_0_[45] ,\sampleIn_reg_n_0_[44] ,\sampleIn_reg_n_0_[43] ,\sampleIn_reg_n_0_[42] ,\sampleIn_reg_n_0_[41] ,\sampleIn_reg_n_0_[40] ,\sampleIn_reg_n_0_[39] ,\sampleIn_reg_n_0_[38] ,\sampleIn_reg_n_0_[37] ,\sampleIn_reg_n_0_[36] ,\sampleIn_reg_n_0_[35] ,\sampleIn_reg_n_0_[34] ,\sampleIn_reg_n_0_[33] ,\sampleIn_reg_n_0_[32] ,\sampleIn_reg_n_0_[31] ,\sampleIn_reg_n_0_[30] ,\sampleIn_reg_n_0_[29] ,\sampleIn_reg_n_0_[28] ,\sampleIn_reg_n_0_[27] ,\sampleIn_reg_n_0_[26] ,\sampleIn_reg_n_0_[25] ,\sampleIn_reg_n_0_[24] ,\sampleIn_reg_n_0_[23] ,\sampleIn_reg_n_0_[22] ,\sampleIn_reg_n_0_[21] ,\sampleIn_reg_n_0_[20] ,\sampleIn_reg_n_0_[19] ,\sampleIn_reg_n_0_[18] ,\sampleIn_reg_n_0_[17] ,\sampleIn_reg_n_0_[16] ,\sampleIn_reg_n_0_[15] ,\sampleIn_reg_n_0_[14] ,\sampleIn_reg_n_0_[13] ,\sampleIn_reg_n_0_[12] ,\sampleIn_reg_n_0_[11] ,\sampleIn_reg_n_0_[10] ,\sampleIn_reg_n_0_[9] ,\sampleIn_reg_n_0_[8] ,\sampleIn_reg_n_0_[7] ,\sampleIn_reg_n_0_[6] ,\sampleIn_reg_n_0_[5] ,\sampleIn_reg_n_0_[4] ,\sampleIn_reg_n_0_[3] ,\sampleIn_reg_n_0_[2] ,\sampleIn_reg_n_0_[1] ,\sampleIn_reg_n_0_[0] }),
        .doutb(sampleOut),
        .enb(samplere),
        .wea(samplewe_reg_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    samplememinst_i_1
       (.I0(inaddr[8]),
        .O(outaddr[10]));
  LUT6 #(
    .INIT(64'hFFFF2FFF00002000)) 
    \sampleoutputrateselector[0]_i_1 
       (.I0(apufifodout[1]),
        .I1(apufifodout[0]),
        .I2(\FSM_onehot_cmdmode_reg_n_0_[5] ),
        .I3(apufifovalid),
        .I4(apufifoempty),
        .I5(\sampleoutputrateselector_reg_n_0_[0] ),
        .O(\sampleoutputrateselector[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF2FFF00002000)) 
    \sampleoutputrateselector[1]_i_1 
       (.I0(apufifodout[0]),
        .I1(apufifodout[1]),
        .I2(\FSM_onehot_cmdmode_reg_n_0_[5] ),
        .I3(apufifovalid),
        .I4(apufifoempty),
        .I5(\sampleoutputrateselector_reg_n_0_[1] ),
        .O(\sampleoutputrateselector[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF1FFF00001000)) 
    \sampleoutputrateselector[2]_i_1 
       (.I0(apufifodout[1]),
        .I1(apufifodout[0]),
        .I2(\FSM_onehot_cmdmode_reg_n_0_[5] ),
        .I3(apufifovalid),
        .I4(apufifoempty),
        .I5(\sampleoutputrateselector_reg_n_0_[2] ),
        .O(\sampleoutputrateselector[2]_i_1_n_0 ));
  FDRE \sampleoutputrateselector_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\sampleoutputrateselector[0]_i_1_n_0 ),
        .Q(\sampleoutputrateselector_reg_n_0_[0] ),
        .R(apucommandinterface_n_12));
  FDRE \sampleoutputrateselector_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\sampleoutputrateselector[1]_i_1_n_0 ),
        .Q(\sampleoutputrateselector_reg_n_0_[1] ),
        .R(apucommandinterface_n_12));
  FDRE \sampleoutputrateselector_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\sampleoutputrateselector[2]_i_1_n_0 ),
        .Q(\sampleoutputrateselector_reg_n_0_[2] ),
        .R(apucommandinterface_n_12));
  LUT4 #(
    .INIT(16'hAAA8)) 
    samplere_i_1
       (.I0(rstaudion),
        .I1(\sampleoutputrateselector_reg_n_0_[2] ),
        .I2(\sampleoutputrateselector_reg_n_0_[1] ),
        .I3(\sampleoutputrateselector_reg_n_0_[0] ),
        .O(samplere_i_1_n_0));
  FDRE samplere_reg
       (.C(audioclock),
        .CE(1'b1),
        .D(samplere_i_1_n_0),
        .Q(samplere),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    samplewe_i_1
       (.I0(m_axi_rvalid),
        .I1(\FSM_onehot_cmdmode_reg_n_0_[9] ),
        .O(samplewe));
  FDRE samplewe_reg
       (.C(aclk),
        .CE(1'b1),
        .D(samplewe),
        .Q(samplewe_reg_n_0),
        .R(apucommandinterface_n_12));
  LUT4 #(
    .INIT(16'h01FF)) 
    \tx_data_lr[31]_i_1 
       (.I0(\sampleoutputrateselector_reg_n_0_[0] ),
        .I1(\sampleoutputrateselector_reg_n_0_[1] ),
        .I2(\sampleoutputrateselector_reg_n_0_[2] ),
        .I3(rstaudion),
        .O(\tx_data_lr[31]_i_1_n_0 ));
  FDRE \tx_data_lr_reg[0] 
       (.C(audioclock),
        .CE(1'b1),
        .D(sampleOut[0]),
        .Q(audioSampleOutputLR[0]),
        .R(\tx_data_lr[31]_i_1_n_0 ));
  FDRE \tx_data_lr_reg[10] 
       (.C(audioclock),
        .CE(1'b1),
        .D(sampleOut[10]),
        .Q(audioSampleOutputLR[10]),
        .R(\tx_data_lr[31]_i_1_n_0 ));
  FDRE \tx_data_lr_reg[11] 
       (.C(audioclock),
        .CE(1'b1),
        .D(sampleOut[11]),
        .Q(audioSampleOutputLR[11]),
        .R(\tx_data_lr[31]_i_1_n_0 ));
  FDRE \tx_data_lr_reg[12] 
       (.C(audioclock),
        .CE(1'b1),
        .D(sampleOut[12]),
        .Q(audioSampleOutputLR[12]),
        .R(\tx_data_lr[31]_i_1_n_0 ));
  FDRE \tx_data_lr_reg[13] 
       (.C(audioclock),
        .CE(1'b1),
        .D(sampleOut[13]),
        .Q(audioSampleOutputLR[13]),
        .R(\tx_data_lr[31]_i_1_n_0 ));
  FDRE \tx_data_lr_reg[14] 
       (.C(audioclock),
        .CE(1'b1),
        .D(sampleOut[14]),
        .Q(audioSampleOutputLR[14]),
        .R(\tx_data_lr[31]_i_1_n_0 ));
  FDRE \tx_data_lr_reg[15] 
       (.C(audioclock),
        .CE(1'b1),
        .D(sampleOut[15]),
        .Q(audioSampleOutputLR[15]),
        .R(\tx_data_lr[31]_i_1_n_0 ));
  FDRE \tx_data_lr_reg[16] 
       (.C(audioclock),
        .CE(1'b1),
        .D(sampleOut[16]),
        .Q(audioSampleOutputLR[16]),
        .R(\tx_data_lr[31]_i_1_n_0 ));
  FDRE \tx_data_lr_reg[17] 
       (.C(audioclock),
        .CE(1'b1),
        .D(sampleOut[17]),
        .Q(audioSampleOutputLR[17]),
        .R(\tx_data_lr[31]_i_1_n_0 ));
  FDRE \tx_data_lr_reg[18] 
       (.C(audioclock),
        .CE(1'b1),
        .D(sampleOut[18]),
        .Q(audioSampleOutputLR[18]),
        .R(\tx_data_lr[31]_i_1_n_0 ));
  FDRE \tx_data_lr_reg[19] 
       (.C(audioclock),
        .CE(1'b1),
        .D(sampleOut[19]),
        .Q(audioSampleOutputLR[19]),
        .R(\tx_data_lr[31]_i_1_n_0 ));
  FDRE \tx_data_lr_reg[1] 
       (.C(audioclock),
        .CE(1'b1),
        .D(sampleOut[1]),
        .Q(audioSampleOutputLR[1]),
        .R(\tx_data_lr[31]_i_1_n_0 ));
  FDRE \tx_data_lr_reg[20] 
       (.C(audioclock),
        .CE(1'b1),
        .D(sampleOut[20]),
        .Q(audioSampleOutputLR[20]),
        .R(\tx_data_lr[31]_i_1_n_0 ));
  FDRE \tx_data_lr_reg[21] 
       (.C(audioclock),
        .CE(1'b1),
        .D(sampleOut[21]),
        .Q(audioSampleOutputLR[21]),
        .R(\tx_data_lr[31]_i_1_n_0 ));
  FDRE \tx_data_lr_reg[22] 
       (.C(audioclock),
        .CE(1'b1),
        .D(sampleOut[22]),
        .Q(audioSampleOutputLR[22]),
        .R(\tx_data_lr[31]_i_1_n_0 ));
  FDRE \tx_data_lr_reg[23] 
       (.C(audioclock),
        .CE(1'b1),
        .D(sampleOut[23]),
        .Q(audioSampleOutputLR[23]),
        .R(\tx_data_lr[31]_i_1_n_0 ));
  FDRE \tx_data_lr_reg[24] 
       (.C(audioclock),
        .CE(1'b1),
        .D(sampleOut[24]),
        .Q(audioSampleOutputLR[24]),
        .R(\tx_data_lr[31]_i_1_n_0 ));
  FDRE \tx_data_lr_reg[25] 
       (.C(audioclock),
        .CE(1'b1),
        .D(sampleOut[25]),
        .Q(audioSampleOutputLR[25]),
        .R(\tx_data_lr[31]_i_1_n_0 ));
  FDRE \tx_data_lr_reg[26] 
       (.C(audioclock),
        .CE(1'b1),
        .D(sampleOut[26]),
        .Q(audioSampleOutputLR[26]),
        .R(\tx_data_lr[31]_i_1_n_0 ));
  FDRE \tx_data_lr_reg[27] 
       (.C(audioclock),
        .CE(1'b1),
        .D(sampleOut[27]),
        .Q(audioSampleOutputLR[27]),
        .R(\tx_data_lr[31]_i_1_n_0 ));
  FDRE \tx_data_lr_reg[28] 
       (.C(audioclock),
        .CE(1'b1),
        .D(sampleOut[28]),
        .Q(audioSampleOutputLR[28]),
        .R(\tx_data_lr[31]_i_1_n_0 ));
  FDRE \tx_data_lr_reg[29] 
       (.C(audioclock),
        .CE(1'b1),
        .D(sampleOut[29]),
        .Q(audioSampleOutputLR[29]),
        .R(\tx_data_lr[31]_i_1_n_0 ));
  FDRE \tx_data_lr_reg[2] 
       (.C(audioclock),
        .CE(1'b1),
        .D(sampleOut[2]),
        .Q(audioSampleOutputLR[2]),
        .R(\tx_data_lr[31]_i_1_n_0 ));
  FDRE \tx_data_lr_reg[30] 
       (.C(audioclock),
        .CE(1'b1),
        .D(sampleOut[30]),
        .Q(audioSampleOutputLR[30]),
        .R(\tx_data_lr[31]_i_1_n_0 ));
  FDRE \tx_data_lr_reg[31] 
       (.C(audioclock),
        .CE(1'b1),
        .D(sampleOut[31]),
        .Q(audioSampleOutputLR[31]),
        .R(\tx_data_lr[31]_i_1_n_0 ));
  FDRE \tx_data_lr_reg[3] 
       (.C(audioclock),
        .CE(1'b1),
        .D(sampleOut[3]),
        .Q(audioSampleOutputLR[3]),
        .R(\tx_data_lr[31]_i_1_n_0 ));
  FDRE \tx_data_lr_reg[4] 
       (.C(audioclock),
        .CE(1'b1),
        .D(sampleOut[4]),
        .Q(audioSampleOutputLR[4]),
        .R(\tx_data_lr[31]_i_1_n_0 ));
  FDRE \tx_data_lr_reg[5] 
       (.C(audioclock),
        .CE(1'b1),
        .D(sampleOut[5]),
        .Q(audioSampleOutputLR[5]),
        .R(\tx_data_lr[31]_i_1_n_0 ));
  FDRE \tx_data_lr_reg[6] 
       (.C(audioclock),
        .CE(1'b1),
        .D(sampleOut[6]),
        .Q(audioSampleOutputLR[6]),
        .R(\tx_data_lr[31]_i_1_n_0 ));
  FDRE \tx_data_lr_reg[7] 
       (.C(audioclock),
        .CE(1'b1),
        .D(sampleOut[7]),
        .Q(audioSampleOutputLR[7]),
        .R(\tx_data_lr[31]_i_1_n_0 ));
  FDRE \tx_data_lr_reg[8] 
       (.C(audioclock),
        .CE(1'b1),
        .D(sampleOut[8]),
        .Q(audioSampleOutputLR[8]),
        .R(\tx_data_lr[31]_i_1_n_0 ));
  FDRE \tx_data_lr_reg[9] 
       (.C(audioclock),
        .CE(1'b1),
        .D(sampleOut[9]),
        .Q(audioSampleOutputLR[9]),
        .R(\tx_data_lr[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    writeBufferSelect_i_1
       (.I0(\readCursor0_inferred__0/i__carry_n_0 ),
        .I1(inaddr[8]),
        .O(writeBufferSelect_i_1_n_0));
  FDRE writeBufferSelect_reg
       (.C(audioclock),
        .CE(1'b1),
        .D(writeBufferSelect_i_1_n_0),
        .Q(inaddr[8]),
        .R(clear));
  LUT2 #(
    .INIT(4'h2)) 
    \writeCursor[0]_i_1 
       (.I0(\FSM_onehot_cmdmode_reg_n_0_[9] ),
        .I1(inaddr[0]),
        .O(\writeCursor[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \writeCursor[1]_i_1 
       (.I0(inaddr[1]),
        .I1(inaddr[0]),
        .I2(\FSM_onehot_cmdmode_reg_n_0_[9] ),
        .O(\writeCursor[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \writeCursor[2]_i_1 
       (.I0(\FSM_onehot_cmdmode_reg_n_0_[9] ),
        .I1(inaddr[0]),
        .I2(inaddr[1]),
        .I3(inaddr[2]),
        .O(\writeCursor[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \writeCursor[3]_i_1 
       (.I0(\FSM_onehot_cmdmode_reg_n_0_[9] ),
        .I1(inaddr[1]),
        .I2(inaddr[0]),
        .I3(inaddr[2]),
        .I4(inaddr[3]),
        .O(\writeCursor[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \writeCursor[4]_i_1 
       (.I0(\FSM_onehot_cmdmode_reg_n_0_[9] ),
        .I1(inaddr[2]),
        .I2(inaddr[0]),
        .I3(inaddr[1]),
        .I4(inaddr[3]),
        .I5(inaddr[4]),
        .O(\writeCursor[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \writeCursor[5]_i_1 
       (.I0(\FSM_onehot_cmdmode_reg_n_0_[9] ),
        .I1(\writeCursor[5]_i_2_n_0 ),
        .I2(inaddr[5]),
        .O(\writeCursor[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \writeCursor[5]_i_2 
       (.I0(inaddr[3]),
        .I1(inaddr[1]),
        .I2(inaddr[0]),
        .I3(inaddr[2]),
        .I4(inaddr[4]),
        .O(\writeCursor[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \writeCursor[6]_i_1 
       (.I0(\FSM_onehot_cmdmode_reg_n_0_[9] ),
        .I1(\writeCursor[7]_i_3_n_0 ),
        .I2(inaddr[6]),
        .O(\writeCursor[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h7800)) 
    \writeCursor[7]_i_2 
       (.I0(\writeCursor[7]_i_3_n_0 ),
        .I1(inaddr[6]),
        .I2(inaddr[7]),
        .I3(\FSM_onehot_cmdmode_reg_n_0_[9] ),
        .O(\writeCursor[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \writeCursor[7]_i_3 
       (.I0(inaddr[5]),
        .I1(inaddr[4]),
        .I2(inaddr[2]),
        .I3(inaddr[0]),
        .I4(inaddr[1]),
        .I5(inaddr[3]),
        .O(\writeCursor[7]_i_3_n_0 ));
  FDRE \writeCursor_reg[0] 
       (.C(aclk),
        .CE(apucommandinterface_n_24),
        .D(\writeCursor[0]_i_1_n_0 ),
        .Q(inaddr[0]),
        .R(apucommandinterface_n_12));
  FDRE \writeCursor_reg[1] 
       (.C(aclk),
        .CE(apucommandinterface_n_24),
        .D(\writeCursor[1]_i_1_n_0 ),
        .Q(inaddr[1]),
        .R(apucommandinterface_n_12));
  FDRE \writeCursor_reg[2] 
       (.C(aclk),
        .CE(apucommandinterface_n_24),
        .D(\writeCursor[2]_i_1_n_0 ),
        .Q(inaddr[2]),
        .R(apucommandinterface_n_12));
  FDRE \writeCursor_reg[3] 
       (.C(aclk),
        .CE(apucommandinterface_n_24),
        .D(\writeCursor[3]_i_1_n_0 ),
        .Q(inaddr[3]),
        .R(apucommandinterface_n_12));
  FDRE \writeCursor_reg[4] 
       (.C(aclk),
        .CE(apucommandinterface_n_24),
        .D(\writeCursor[4]_i_1_n_0 ),
        .Q(inaddr[4]),
        .R(apucommandinterface_n_12));
  FDRE \writeCursor_reg[5] 
       (.C(aclk),
        .CE(apucommandinterface_n_24),
        .D(\writeCursor[5]_i_1_n_0 ),
        .Q(inaddr[5]),
        .R(apucommandinterface_n_12));
  FDRE \writeCursor_reg[6] 
       (.C(aclk),
        .CE(apucommandinterface_n_24),
        .D(\writeCursor[6]_i_1_n_0 ),
        .Q(inaddr[6]),
        .R(apucommandinterface_n_12));
  FDRE \writeCursor_reg[7] 
       (.C(aclk),
        .CE(apucommandinterface_n_24),
        .D(\writeCursor[7]_i_2_n_0 ),
        .Q(inaddr[7]),
        .R(apucommandinterface_n_12));
endmodule

(* ORIG_REF_NAME = "audiomodule" *) 
module blockone_audiomodule_0_0_audiomodule
   (aclk,
    audioclock,
    aresetn,
    audiosampleclk,
    audioSampleOutputLR,
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
    m_axi_wstrb);
  input aclk;
  input audioclock;
  input aresetn;
  output audiosampleclk;
  output [31:0]audioSampleOutputLR;
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

  wire \<const0> ;
  wire aclk;
  wire aresetn;
  wire [31:0]audioSampleOutputLR;
  wire audioclock;
  wire audiosampleclk;
  wire [31:0]m_axi_araddr;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire [63:0]m_axi_rdata;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire m_axi_rvalid;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [0:0]\^s_axi_rdata ;
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
  assign m_axi_arlen[3] = \<const0> ;
  assign m_axi_arlen[2] = \<const0> ;
  assign m_axi_arlen[1] = \<const0> ;
  assign m_axi_arlen[0] = \<const0> ;
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
  assign s_axi_rdata[42] = \<const0> ;
  assign s_axi_rdata[41] = \<const0> ;
  assign s_axi_rdata[40] = \<const0> ;
  assign s_axi_rdata[39] = \<const0> ;
  assign s_axi_rdata[38] = \<const0> ;
  assign s_axi_rdata[37] = \<const0> ;
  assign s_axi_rdata[36] = \<const0> ;
  assign s_axi_rdata[35] = \<const0> ;
  assign s_axi_rdata[34] = \<const0> ;
  assign s_axi_rdata[33] = \<const0> ;
  assign s_axi_rdata[32] = \^s_axi_rdata [0];
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
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \^s_axi_rdata [0];
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
  blockone_audiomodule_0_0_audiocore audiocoreInst
       (.aclk(aclk),
        .aresetn(aresetn),
        .audioSampleOutputLR(audioSampleOutputLR),
        .audioclock(audioclock),
        .audiosampleclk(audiosampleclk),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arready(m_axi_arready),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rvalid(m_axi_rvalid),
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

(* CHECK_LICENSE_TYPE = "cmdfifo,fifo_generator_v13_2_12,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "cmdfifo" *) 
(* X_CORE_INFO = "fifo_generator_v13_2_12,Vivado 2024.2.2" *) 
module blockone_audiomodule_0_0_cmdfifo
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
module blockone_audiomodule_0_0_commandqueue
   (D,
    empty,
    valid,
    SR,
    s_axi_arready,
    s_axi_bvalid,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_wready,
    s_axi_awready,
    E,
    re,
    \FSM_onehot_cmdmode_reg[1] ,
    \FSM_onehot_cmdmode_reg[3] ,
    \FSM_onehot_cmdmode_reg[7] ,
    \FSM_onehot_cmdmode_reg[4] ,
    aresetn,
    \FSM_onehot_cmdmode_reg[6] ,
    s_axi_rdata,
    aclk,
    rd_en,
    out,
    s_axi_arvalid,
    s_axi_rready,
    Q,
    \FSM_onehot_cmdmode_reg[0] ,
    m_axi_rvalid,
    in13,
    \apusourceaddr_reg[5] ,
    s_axi_awvalid,
    s_axi_wvalid,
    s_axi_bready,
    \m_axi_rdata_reg[32]_0 ,
    s_axi_wdata);
  output [9:0]D;
  output empty;
  output valid;
  output [0:0]SR;
  output s_axi_arready;
  output s_axi_bvalid;
  output s_axi_rlast;
  output s_axi_rvalid;
  output s_axi_wready;
  output s_axi_awready;
  output [0:0]E;
  output re;
  output [0:0]\FSM_onehot_cmdmode_reg[1] ;
  output [0:0]\FSM_onehot_cmdmode_reg[3] ;
  output [0:0]\FSM_onehot_cmdmode_reg[7] ;
  output [0:0]\FSM_onehot_cmdmode_reg[4] ;
  output [0:0]aresetn;
  output [31:0]\FSM_onehot_cmdmode_reg[6] ;
  output [0:0]s_axi_rdata;
  input aclk;
  input rd_en;
  input out;
  input s_axi_arvalid;
  input s_axi_rready;
  input [8:0]Q;
  input \FSM_onehot_cmdmode_reg[0] ;
  input m_axi_rvalid;
  input [25:0]in13;
  input [5:0]\apusourceaddr_reg[5] ;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input s_axi_bready;
  input \m_axi_rdata_reg[32]_0 ;
  input [31:0]s_axi_wdata;

  wire [9:0]D;
  wire [0:0]E;
  wire \FSM_onehot_cmdmode_reg[0] ;
  wire [0:0]\FSM_onehot_cmdmode_reg[1] ;
  wire [0:0]\FSM_onehot_cmdmode_reg[3] ;
  wire [0:0]\FSM_onehot_cmdmode_reg[4] ;
  wire [31:0]\FSM_onehot_cmdmode_reg[6] ;
  wire [0:0]\FSM_onehot_cmdmode_reg[7] ;
  wire \FSM_onehot_raddrstate[1]_i_1_n_0 ;
  wire \FSM_onehot_raddrstate[2]_i_1_n_0 ;
  wire \FSM_onehot_raddrstate_reg_n_0_[0] ;
  wire \FSM_onehot_raddrstate_reg_n_0_[1] ;
  wire \FSM_onehot_raddrstate_reg_n_0_[2] ;
  wire \FSM_sequential_waddrstate[0]_i_1_n_0 ;
  wire \FSM_sequential_waddrstate[1]_i_1_n_0 ;
  wire \FSM_sequential_writestate[0]_i_1_n_0 ;
  wire \FSM_sequential_writestate[1]_i_1_n_0 ;
  wire [8:0]Q;
  wire [0:0]SR;
  wire \__9/i__n_0 ;
  wire aclk;
  wire [31:10]apufifodout;
  wire [5:0]\apusourceaddr_reg[5] ;
  wire [0:0]aresetn;
  wire empty;
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
  wire [25:0]in13;
  wire m_axi_arready_i_1_n_0;
  wire m_axi_awready_i_1_n_0;
  wire \m_axi_rdata[32]_i_1_n_0 ;
  wire \m_axi_rdata_reg[32]_0 ;
  wire m_axi_rvalid;
  wire m_axi_rvalid_i_1_n_0;
  wire m_axi_wready_i_1_n_0;
  wire out;
  wire rd_en;
  wire re;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [0:0]s_axi_rdata;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire valid;
  wire [1:0]waddrstate;
  wire [1:0]writestate;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_cmdmode[9]_i_1 
       (.I0(re),
        .I1(Q[0]),
        .I2(Q[7]),
        .I3(Q[6]),
        .I4(Q[2]),
        .I5(\FSM_onehot_cmdmode_reg[0] ),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFA22)) 
    \FSM_onehot_raddrstate[1]_i_1 
       (.I0(\FSM_onehot_raddrstate_reg_n_0_[1] ),
        .I1(s_axi_arvalid),
        .I2(s_axi_rready),
        .I3(\FSM_onehot_raddrstate_reg_n_0_[2] ),
        .I4(\FSM_onehot_raddrstate_reg_n_0_[0] ),
        .O(\FSM_onehot_raddrstate[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \FSM_sequential_waddrstate[0]_i_1 
       (.I0(waddrstate[1]),
        .I1(s_axi_awvalid),
        .I2(waddrstate[0]),
        .O(\FSM_sequential_waddrstate[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFCFFBBBB)) 
    \FSM_sequential_writestate[0]_i_1 
       (.I0(s_axi_bready),
        .I1(writestate[1]),
        .I2(fifofull),
        .I3(s_axi_wvalid),
        .I4(writestate[0]),
        .O(\FSM_sequential_writestate[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \apucmd[3]_i_1 
       (.I0(Q[1]),
        .I1(valid),
        .I2(empty),
        .O(\FSM_onehot_cmdmode_reg[1] ));
  LUT4 #(
    .INIT(16'hF888)) 
    \apusourceaddr[0]_i_1 
       (.I0(\apusourceaddr_reg[5] [0]),
        .I1(Q[6]),
        .I2(D[0]),
        .I3(Q[4]),
        .O(\FSM_onehot_cmdmode_reg[6] [0]));
  LUT4 #(
    .INIT(16'hF888)) 
    \apusourceaddr[10]_i_1 
       (.I0(in13[4]),
        .I1(Q[6]),
        .I2(apufifodout[10]),
        .I3(Q[4]),
        .O(\FSM_onehot_cmdmode_reg[6] [10]));
  LUT4 #(
    .INIT(16'hF888)) 
    \apusourceaddr[11]_i_1 
       (.I0(in13[5]),
        .I1(Q[6]),
        .I2(apufifodout[11]),
        .I3(Q[4]),
        .O(\FSM_onehot_cmdmode_reg[6] [11]));
  LUT4 #(
    .INIT(16'hF888)) 
    \apusourceaddr[12]_i_1 
       (.I0(in13[6]),
        .I1(Q[6]),
        .I2(apufifodout[12]),
        .I3(Q[4]),
        .O(\FSM_onehot_cmdmode_reg[6] [12]));
  LUT4 #(
    .INIT(16'hF888)) 
    \apusourceaddr[13]_i_1 
       (.I0(in13[7]),
        .I1(Q[6]),
        .I2(apufifodout[13]),
        .I3(Q[4]),
        .O(\FSM_onehot_cmdmode_reg[6] [13]));
  LUT4 #(
    .INIT(16'hF888)) 
    \apusourceaddr[14]_i_1 
       (.I0(in13[8]),
        .I1(Q[6]),
        .I2(apufifodout[14]),
        .I3(Q[4]),
        .O(\FSM_onehot_cmdmode_reg[6] [14]));
  LUT4 #(
    .INIT(16'hF888)) 
    \apusourceaddr[15]_i_1 
       (.I0(in13[9]),
        .I1(Q[6]),
        .I2(apufifodout[15]),
        .I3(Q[4]),
        .O(\FSM_onehot_cmdmode_reg[6] [15]));
  LUT4 #(
    .INIT(16'hF888)) 
    \apusourceaddr[16]_i_1 
       (.I0(in13[10]),
        .I1(Q[6]),
        .I2(apufifodout[16]),
        .I3(Q[4]),
        .O(\FSM_onehot_cmdmode_reg[6] [16]));
  LUT4 #(
    .INIT(16'hF888)) 
    \apusourceaddr[17]_i_1 
       (.I0(in13[11]),
        .I1(Q[6]),
        .I2(apufifodout[17]),
        .I3(Q[4]),
        .O(\FSM_onehot_cmdmode_reg[6] [17]));
  LUT4 #(
    .INIT(16'hF888)) 
    \apusourceaddr[18]_i_1 
       (.I0(in13[12]),
        .I1(Q[6]),
        .I2(apufifodout[18]),
        .I3(Q[4]),
        .O(\FSM_onehot_cmdmode_reg[6] [18]));
  LUT4 #(
    .INIT(16'hF888)) 
    \apusourceaddr[19]_i_1 
       (.I0(in13[13]),
        .I1(Q[6]),
        .I2(apufifodout[19]),
        .I3(Q[4]),
        .O(\FSM_onehot_cmdmode_reg[6] [19]));
  LUT4 #(
    .INIT(16'hF888)) 
    \apusourceaddr[1]_i_1 
       (.I0(\apusourceaddr_reg[5] [1]),
        .I1(Q[6]),
        .I2(D[1]),
        .I3(Q[4]),
        .O(\FSM_onehot_cmdmode_reg[6] [1]));
  LUT4 #(
    .INIT(16'hF888)) 
    \apusourceaddr[20]_i_1 
       (.I0(in13[14]),
        .I1(Q[6]),
        .I2(apufifodout[20]),
        .I3(Q[4]),
        .O(\FSM_onehot_cmdmode_reg[6] [20]));
  LUT4 #(
    .INIT(16'hF888)) 
    \apusourceaddr[21]_i_1 
       (.I0(in13[15]),
        .I1(Q[6]),
        .I2(apufifodout[21]),
        .I3(Q[4]),
        .O(\FSM_onehot_cmdmode_reg[6] [21]));
  LUT4 #(
    .INIT(16'hF888)) 
    \apusourceaddr[22]_i_1 
       (.I0(in13[16]),
        .I1(Q[6]),
        .I2(apufifodout[22]),
        .I3(Q[4]),
        .O(\FSM_onehot_cmdmode_reg[6] [22]));
  LUT4 #(
    .INIT(16'hF888)) 
    \apusourceaddr[23]_i_1 
       (.I0(in13[17]),
        .I1(Q[6]),
        .I2(apufifodout[23]),
        .I3(Q[4]),
        .O(\FSM_onehot_cmdmode_reg[6] [23]));
  LUT4 #(
    .INIT(16'hF888)) 
    \apusourceaddr[24]_i_1 
       (.I0(in13[18]),
        .I1(Q[6]),
        .I2(apufifodout[24]),
        .I3(Q[4]),
        .O(\FSM_onehot_cmdmode_reg[6] [24]));
  LUT4 #(
    .INIT(16'hF888)) 
    \apusourceaddr[25]_i_1 
       (.I0(in13[19]),
        .I1(Q[6]),
        .I2(apufifodout[25]),
        .I3(Q[4]),
        .O(\FSM_onehot_cmdmode_reg[6] [25]));
  LUT4 #(
    .INIT(16'hF888)) 
    \apusourceaddr[26]_i_1 
       (.I0(in13[20]),
        .I1(Q[6]),
        .I2(apufifodout[26]),
        .I3(Q[4]),
        .O(\FSM_onehot_cmdmode_reg[6] [26]));
  LUT4 #(
    .INIT(16'hF888)) 
    \apusourceaddr[27]_i_1 
       (.I0(in13[21]),
        .I1(Q[6]),
        .I2(apufifodout[27]),
        .I3(Q[4]),
        .O(\FSM_onehot_cmdmode_reg[6] [27]));
  LUT4 #(
    .INIT(16'hF888)) 
    \apusourceaddr[28]_i_1 
       (.I0(in13[22]),
        .I1(Q[6]),
        .I2(apufifodout[28]),
        .I3(Q[4]),
        .O(\FSM_onehot_cmdmode_reg[6] [28]));
  LUT4 #(
    .INIT(16'hF888)) 
    \apusourceaddr[29]_i_1 
       (.I0(in13[23]),
        .I1(Q[6]),
        .I2(apufifodout[29]),
        .I3(Q[4]),
        .O(\FSM_onehot_cmdmode_reg[6] [29]));
  LUT4 #(
    .INIT(16'hF888)) 
    \apusourceaddr[2]_i_1 
       (.I0(\apusourceaddr_reg[5] [2]),
        .I1(Q[6]),
        .I2(D[2]),
        .I3(Q[4]),
        .O(\FSM_onehot_cmdmode_reg[6] [2]));
  LUT4 #(
    .INIT(16'hF888)) 
    \apusourceaddr[30]_i_1 
       (.I0(in13[24]),
        .I1(Q[6]),
        .I2(apufifodout[30]),
        .I3(Q[4]),
        .O(\FSM_onehot_cmdmode_reg[6] [30]));
  LUT5 #(
    .INIT(32'hAAAA0080)) 
    \apusourceaddr[31]_i_1 
       (.I0(out),
        .I1(Q[4]),
        .I2(valid),
        .I3(empty),
        .I4(Q[6]),
        .O(aresetn));
  LUT4 #(
    .INIT(16'hF888)) 
    \apusourceaddr[31]_i_2 
       (.I0(in13[25]),
        .I1(Q[6]),
        .I2(apufifodout[31]),
        .I3(Q[4]),
        .O(\FSM_onehot_cmdmode_reg[6] [31]));
  LUT4 #(
    .INIT(16'hF888)) 
    \apusourceaddr[3]_i_1 
       (.I0(\apusourceaddr_reg[5] [3]),
        .I1(Q[6]),
        .I2(D[3]),
        .I3(Q[4]),
        .O(\FSM_onehot_cmdmode_reg[6] [3]));
  LUT4 #(
    .INIT(16'hF888)) 
    \apusourceaddr[4]_i_1 
       (.I0(\apusourceaddr_reg[5] [4]),
        .I1(Q[6]),
        .I2(D[4]),
        .I3(Q[4]),
        .O(\FSM_onehot_cmdmode_reg[6] [4]));
  LUT4 #(
    .INIT(16'hF888)) 
    \apusourceaddr[5]_i_1 
       (.I0(\apusourceaddr_reg[5] [5]),
        .I1(Q[6]),
        .I2(D[5]),
        .I3(Q[4]),
        .O(\FSM_onehot_cmdmode_reg[6] [5]));
  LUT4 #(
    .INIT(16'hF888)) 
    \apusourceaddr[6]_i_1 
       (.I0(in13[0]),
        .I1(Q[6]),
        .I2(D[6]),
        .I3(Q[4]),
        .O(\FSM_onehot_cmdmode_reg[6] [6]));
  LUT4 #(
    .INIT(16'hF888)) 
    \apusourceaddr[7]_i_1 
       (.I0(in13[1]),
        .I1(Q[6]),
        .I2(D[7]),
        .I3(Q[4]),
        .O(\FSM_onehot_cmdmode_reg[6] [7]));
  LUT4 #(
    .INIT(16'hF888)) 
    \apusourceaddr[8]_i_1 
       (.I0(in13[2]),
        .I1(Q[6]),
        .I2(D[8]),
        .I3(Q[4]),
        .O(\FSM_onehot_cmdmode_reg[6] [8]));
  LUT4 #(
    .INIT(16'hF888)) 
    \apusourceaddr[9]_i_1 
       (.I0(in13[3]),
        .I1(Q[6]),
        .I2(D[9]),
        .I3(Q[4]),
        .O(\FSM_onehot_cmdmode_reg[6] [9]));
  LUT3 #(
    .INIT(8'h08)) 
    \apuwordcount[9]_i_1 
       (.I0(Q[3]),
        .I1(valid),
        .I2(empty),
        .O(\FSM_onehot_cmdmode_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hBAAA)) 
    \burstsleft[3]_i_1 
       (.I0(Q[7]),
        .I1(empty),
        .I2(valid),
        .I3(Q[4]),
        .O(\FSM_onehot_cmdmode_reg[7] ));
  (* CHECK_LICENSE_TYPE = "cmdfifo,fifo_generator_v13_2_12,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fifo_generator_v13_2_12,Vivado 2024.2.2" *) 
  blockone_audiomodule_0_0_cmdfifo cmdfifoinst
       (.clk(aclk),
        .din({\fifodin_reg_n_0_[31] ,\fifodin_reg_n_0_[30] ,\fifodin_reg_n_0_[29] ,\fifodin_reg_n_0_[28] ,\fifodin_reg_n_0_[27] ,\fifodin_reg_n_0_[26] ,\fifodin_reg_n_0_[25] ,\fifodin_reg_n_0_[24] ,\fifodin_reg_n_0_[23] ,\fifodin_reg_n_0_[22] ,\fifodin_reg_n_0_[21] ,\fifodin_reg_n_0_[20] ,\fifodin_reg_n_0_[19] ,\fifodin_reg_n_0_[18] ,\fifodin_reg_n_0_[17] ,\fifodin_reg_n_0_[16] ,\fifodin_reg_n_0_[15] ,\fifodin_reg_n_0_[14] ,\fifodin_reg_n_0_[13] ,\fifodin_reg_n_0_[12] ,\fifodin_reg_n_0_[11] ,\fifodin_reg_n_0_[10] ,\fifodin_reg_n_0_[9] ,\fifodin_reg_n_0_[8] ,\fifodin_reg_n_0_[7] ,\fifodin_reg_n_0_[6] ,\fifodin_reg_n_0_[5] ,\fifodin_reg_n_0_[4] ,\fifodin_reg_n_0_[3] ,\fifodin_reg_n_0_[2] ,\fifodin_reg_n_0_[1] ,\fifodin_reg_n_0_[0] }),
        .dout({apufifodout,D}),
        .empty(empty),
        .full(fifofull),
        .rd_en(rd_en),
        .rst(SR),
        .valid(valid),
        .wr_en(fifowe));
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
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \m_axi_rdata[32]_i_1 
       (.I0(\m_axi_rdata_reg[32]_0 ),
        .I1(\FSM_onehot_raddrstate_reg_n_0_[2] ),
        .I2(s_axi_rready),
        .I3(out),
        .I4(s_axi_rdata),
        .O(\m_axi_rdata[32]_i_1_n_0 ));
  FDRE \m_axi_rdata_reg[32] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_axi_rdata[32]_i_1_n_0 ),
        .Q(s_axi_rdata),
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
  LUT6 #(
    .INIT(64'h00000000FFFE0000)) 
    re_i_1
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[4]),
        .I4(valid),
        .I5(empty),
        .O(re));
  LUT5 #(
    .INIT(32'hFF404040)) 
    \writeCursor[7]_i_1 
       (.I0(empty),
        .I1(valid),
        .I2(Q[4]),
        .I3(Q[8]),
        .I4(m_axi_rvalid),
        .O(\FSM_onehot_cmdmode_reg[4] ));
endmodule

(* CHECK_LICENSE_TYPE = "samplemem,blk_mem_gen_v8_4_10,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "samplemem" *) 
(* X_CORE_INFO = "blk_mem_gen_v8_4_10,Vivado 2024.2.2" *) 
module blockone_audiomodule_0_0_samplemem
   (clka,
    wea,
    addra,
    dina,
    clkb,
    enb,
    addrb,
    doutb);
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* X_INTERFACE_MODE = "slave BRAM_PORTA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) 
  (* syn_isclock = "1" *) input clka;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [63:0]dina;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* X_INTERFACE_MODE = "slave BRAM_PORTB" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) 
  (* syn_isclock = "1" *) input clkb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [10:0]addrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;


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
