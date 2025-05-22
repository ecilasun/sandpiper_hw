//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2.2 (win64) Build 6060944 Thu Mar 06 19:10:01 MST 2025
//Date        : Wed May 21 20:34:36 2025
//Host        : fastturtle running 64-bit major release  (build 9200)
//Command     : generate_target blockone.bd
//Design      : blockone
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "blockone,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=blockone,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=8,numReposBlks=8,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,da_ps7_cnt=3,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "blockone.hwdef" *) 
module blockone
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    GPIO_0_0_tri_i,
    GPIO_0_0_tri_o,
    GPIO_0_0_tri_t,
    HDMI_CLK_n_0,
    HDMI_CLK_p_0,
    HDMI_TMDS_n_0,
    HDMI_TMDS_p_0,
    MDIO_PHY_0_mdc,
    MDIO_PHY_0_mdio_i,
    MDIO_PHY_0_mdio_o,
    MDIO_PHY_0_mdio_t,
    RGMII_0_rd,
    RGMII_0_rx_ctl,
    RGMII_0_rxc,
    RGMII_0_td,
    RGMII_0_tx_ctl,
    RGMII_0_txc,
    UART_0_0_rxd,
    UART_0_0_txd);
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ADDR" *) (* X_INTERFACE_MODE = "Master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250" *) inout [14:0]DDR_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR BA" *) inout [2:0]DDR_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CAS_N" *) inout DDR_cas_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_N" *) inout DDR_ck_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_P" *) inout DDR_ck_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CKE" *) inout DDR_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CS_N" *) inout DDR_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DM" *) inout [3:0]DDR_dm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQ" *) inout [31:0]DDR_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_N" *) inout [3:0]DDR_dqs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_P" *) inout [3:0]DDR_dqs_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ODT" *) inout DDR_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RAS_N" *) inout DDR_ras_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RESET_N" *) inout DDR_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR WE_N" *) inout DDR_we_n;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRN" *) (* X_INTERFACE_MODE = "Master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false" *) inout FIXED_IO_ddr_vrn;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRP" *) inout FIXED_IO_ddr_vrp;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO" *) inout [53:0]FIXED_IO_mio;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK" *) inout FIXED_IO_ps_clk;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB" *) inout FIXED_IO_ps_porb;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB" *) inout FIXED_IO_ps_srstb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO_0_0 TRI_I" *) (* X_INTERFACE_MODE = "Master" *) input [3:0]GPIO_0_0_tri_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO_0_0 TRI_O" *) output [3:0]GPIO_0_0_tri_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO_0_0 TRI_T" *) output [3:0]GPIO_0_0_tri_t;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.HDMI_CLK_N_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.HDMI_CLK_N_0, CLK_DOMAIN blockone_videomodule_0_0_HDMI_CLK_n, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output HDMI_CLK_n_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.HDMI_CLK_P_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.HDMI_CLK_P_0, CLK_DOMAIN blockone_videomodule_0_0_HDMI_CLK_p, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output HDMI_CLK_p_0;
  output [2:0]HDMI_TMDS_n_0;
  output [2:0]HDMI_TMDS_p_0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 MDIO_PHY_0 MDC" *) (* X_INTERFACE_MODE = "Master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME MDIO_PHY_0, CAN_DEBUG false" *) output MDIO_PHY_0_mdc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 MDIO_PHY_0 MDIO_I" *) input MDIO_PHY_0_mdio_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 MDIO_PHY_0 MDIO_O" *) output MDIO_PHY_0_mdio_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 MDIO_PHY_0 MDIO_T" *) output MDIO_PHY_0_mdio_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 RGMII_0 RD" *) (* X_INTERFACE_MODE = "Master" *) input [3:0]RGMII_0_rd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 RGMII_0 RX_CTL" *) input RGMII_0_rx_ctl;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 RGMII_0 RXC" *) input RGMII_0_rxc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 RGMII_0 TD" *) output [3:0]RGMII_0_td;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 RGMII_0 TX_CTL" *) output RGMII_0_tx_ctl;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rgmii:1.0 RGMII_0 TXC" *) output RGMII_0_txc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 UART_0_0 RxD" *) (* X_INTERFACE_MODE = "Master" *) input UART_0_0_rxd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 UART_0_0 TxD" *) output UART_0_0_txd;

  wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;
  wire [3:0]GPIO_0_0_tri_i;
  wire [3:0]GPIO_0_0_tri_o;
  wire [3:0]GPIO_0_0_tri_t;
  wire HDMI_CLK_n_0;
  wire HDMI_CLK_p_0;
  wire [2:0]HDMI_TMDS_n_0;
  wire [2:0]HDMI_TMDS_p_0;
  wire MDIO_PHY_0_mdc;
  wire MDIO_PHY_0_mdio_i;
  wire MDIO_PHY_0_mdio_o;
  wire MDIO_PHY_0_mdio_t;
  wire Net;
  wire [3:0]RGMII_0_rd;
  wire RGMII_0_rx_ctl;
  wire RGMII_0_rxc;
  wire [3:0]RGMII_0_td;
  wire RGMII_0_tx_ctl;
  wire RGMII_0_txc;
  wire UART_0_0_rxd;
  wire UART_0_0_txd;
  wire [31:0]audiomodule_0_audioSampleOutputLR;
  wire audiomodule_0_audiosampleclk;
  wire [31:0]audiomodule_0_m_axi_ARADDR;
  wire [1:0]audiomodule_0_m_axi_ARBURST;
  wire [3:0]audiomodule_0_m_axi_ARCACHE;
  wire [5:0]audiomodule_0_m_axi_ARID;
  wire [3:0]audiomodule_0_m_axi_ARLEN;
  wire [1:0]audiomodule_0_m_axi_ARLOCK;
  wire [2:0]audiomodule_0_m_axi_ARPROT;
  wire [3:0]audiomodule_0_m_axi_ARQOS;
  wire audiomodule_0_m_axi_ARREADY;
  wire [2:0]audiomodule_0_m_axi_ARSIZE;
  wire audiomodule_0_m_axi_ARVALID;
  wire [31:0]audiomodule_0_m_axi_AWADDR;
  wire [1:0]audiomodule_0_m_axi_AWBURST;
  wire [3:0]audiomodule_0_m_axi_AWCACHE;
  wire [5:0]audiomodule_0_m_axi_AWID;
  wire [3:0]audiomodule_0_m_axi_AWLEN;
  wire [1:0]audiomodule_0_m_axi_AWLOCK;
  wire [2:0]audiomodule_0_m_axi_AWPROT;
  wire [3:0]audiomodule_0_m_axi_AWQOS;
  wire audiomodule_0_m_axi_AWREADY;
  wire [2:0]audiomodule_0_m_axi_AWSIZE;
  wire audiomodule_0_m_axi_AWVALID;
  wire [5:0]audiomodule_0_m_axi_BID;
  wire audiomodule_0_m_axi_BREADY;
  wire [1:0]audiomodule_0_m_axi_BRESP;
  wire audiomodule_0_m_axi_BVALID;
  wire [63:0]audiomodule_0_m_axi_RDATA;
  wire [5:0]audiomodule_0_m_axi_RID;
  wire audiomodule_0_m_axi_RLAST;
  wire audiomodule_0_m_axi_RREADY;
  wire [1:0]audiomodule_0_m_axi_RRESP;
  wire audiomodule_0_m_axi_RVALID;
  wire [63:0]audiomodule_0_m_axi_WDATA;
  wire [5:0]audiomodule_0_m_axi_WID;
  wire audiomodule_0_m_axi_WLAST;
  wire audiomodule_0_m_axi_WREADY;
  wire [7:0]audiomodule_0_m_axi_WSTRB;
  wire audiomodule_0_m_axi_WVALID;
  wire clk_wiz_0_audioclk;
  wire clk_wiz_0_pixelclk;
  wire clk_wiz_0_serdesclk;
  wire [0:0]proc_sys_reset_0_interconnect_aresetn;
  wire [0:0]proc_sys_reset_0_peripheral_aresetn;
  wire [0:0]proc_sys_reset_0_peripheral_reset;
  wire processing_system7_0_FCLK_CLK1;
  wire processing_system7_0_FCLK_CLK2;
  wire processing_system7_0_FCLK_RESET0_N;
  wire processing_system7_0_GMII_ETHERNET_0_COL;
  wire processing_system7_0_GMII_ETHERNET_0_CRS;
  wire [7:0]processing_system7_0_GMII_ETHERNET_0_RXD;
  wire processing_system7_0_GMII_ETHERNET_0_RX_CLK;
  wire processing_system7_0_GMII_ETHERNET_0_RX_DV;
  wire processing_system7_0_GMII_ETHERNET_0_RX_ER;
  wire [7:0]processing_system7_0_GMII_ETHERNET_0_TXD;
  wire processing_system7_0_GMII_ETHERNET_0_TX_CLK;
  wire [0:0]processing_system7_0_GMII_ETHERNET_0_TX_EN;
  wire [0:0]processing_system7_0_GMII_ETHERNET_0_TX_ER;
  wire processing_system7_0_MDIO_ETHERNET_0_MDC;
  wire processing_system7_0_MDIO_ETHERNET_0_MDIO_I;
  wire processing_system7_0_MDIO_ETHERNET_0_MDIO_O;
  wire processing_system7_0_MDIO_ETHERNET_0_MDIO_T;
  wire [31:0]processing_system7_0_M_AXI_GP0_ARADDR;
  wire [1:0]processing_system7_0_M_AXI_GP0_ARBURST;
  wire [3:0]processing_system7_0_M_AXI_GP0_ARCACHE;
  wire [11:0]processing_system7_0_M_AXI_GP0_ARID;
  wire [3:0]processing_system7_0_M_AXI_GP0_ARLEN;
  wire [1:0]processing_system7_0_M_AXI_GP0_ARLOCK;
  wire [2:0]processing_system7_0_M_AXI_GP0_ARPROT;
  wire [3:0]processing_system7_0_M_AXI_GP0_ARQOS;
  wire processing_system7_0_M_AXI_GP0_ARREADY;
  wire [2:0]processing_system7_0_M_AXI_GP0_ARSIZE;
  wire processing_system7_0_M_AXI_GP0_ARVALID;
  wire [31:0]processing_system7_0_M_AXI_GP0_AWADDR;
  wire [1:0]processing_system7_0_M_AXI_GP0_AWBURST;
  wire [3:0]processing_system7_0_M_AXI_GP0_AWCACHE;
  wire [11:0]processing_system7_0_M_AXI_GP0_AWID;
  wire [3:0]processing_system7_0_M_AXI_GP0_AWLEN;
  wire [1:0]processing_system7_0_M_AXI_GP0_AWLOCK;
  wire [2:0]processing_system7_0_M_AXI_GP0_AWPROT;
  wire [3:0]processing_system7_0_M_AXI_GP0_AWQOS;
  wire processing_system7_0_M_AXI_GP0_AWREADY;
  wire [2:0]processing_system7_0_M_AXI_GP0_AWSIZE;
  wire processing_system7_0_M_AXI_GP0_AWVALID;
  wire [11:0]processing_system7_0_M_AXI_GP0_BID;
  wire processing_system7_0_M_AXI_GP0_BREADY;
  wire [1:0]processing_system7_0_M_AXI_GP0_BRESP;
  wire processing_system7_0_M_AXI_GP0_BVALID;
  wire [31:0]processing_system7_0_M_AXI_GP0_RDATA;
  wire [11:0]processing_system7_0_M_AXI_GP0_RID;
  wire processing_system7_0_M_AXI_GP0_RLAST;
  wire processing_system7_0_M_AXI_GP0_RREADY;
  wire [1:0]processing_system7_0_M_AXI_GP0_RRESP;
  wire processing_system7_0_M_AXI_GP0_RVALID;
  wire [31:0]processing_system7_0_M_AXI_GP0_WDATA;
  wire [11:0]processing_system7_0_M_AXI_GP0_WID;
  wire processing_system7_0_M_AXI_GP0_WLAST;
  wire processing_system7_0_M_AXI_GP0_WREADY;
  wire [3:0]processing_system7_0_M_AXI_GP0_WSTRB;
  wire processing_system7_0_M_AXI_GP0_WVALID;
  wire [31:0]smartconnect_0_M00_AXI_ARADDR;
  wire [1:0]smartconnect_0_M00_AXI_ARBURST;
  wire [3:0]smartconnect_0_M00_AXI_ARCACHE;
  wire [3:0]smartconnect_0_M00_AXI_ARLEN;
  wire [1:0]smartconnect_0_M00_AXI_ARLOCK;
  wire [2:0]smartconnect_0_M00_AXI_ARPROT;
  wire [3:0]smartconnect_0_M00_AXI_ARQOS;
  wire smartconnect_0_M00_AXI_ARREADY;
  wire [2:0]smartconnect_0_M00_AXI_ARSIZE;
  wire smartconnect_0_M00_AXI_ARVALID;
  wire [31:0]smartconnect_0_M00_AXI_AWADDR;
  wire [1:0]smartconnect_0_M00_AXI_AWBURST;
  wire [3:0]smartconnect_0_M00_AXI_AWCACHE;
  wire [3:0]smartconnect_0_M00_AXI_AWLEN;
  wire [1:0]smartconnect_0_M00_AXI_AWLOCK;
  wire [2:0]smartconnect_0_M00_AXI_AWPROT;
  wire [3:0]smartconnect_0_M00_AXI_AWQOS;
  wire smartconnect_0_M00_AXI_AWREADY;
  wire [2:0]smartconnect_0_M00_AXI_AWSIZE;
  wire smartconnect_0_M00_AXI_AWVALID;
  wire smartconnect_0_M00_AXI_BREADY;
  wire [1:0]smartconnect_0_M00_AXI_BRESP;
  wire smartconnect_0_M00_AXI_BVALID;
  wire [63:0]smartconnect_0_M00_AXI_RDATA;
  wire smartconnect_0_M00_AXI_RLAST;
  wire smartconnect_0_M00_AXI_RREADY;
  wire [1:0]smartconnect_0_M00_AXI_RRESP;
  wire smartconnect_0_M00_AXI_RVALID;
  wire [63:0]smartconnect_0_M00_AXI_WDATA;
  wire smartconnect_0_M00_AXI_WLAST;
  wire smartconnect_0_M00_AXI_WREADY;
  wire [7:0]smartconnect_0_M00_AXI_WSTRB;
  wire smartconnect_0_M00_AXI_WVALID;
  wire [31:0]smartconnect_0_M01_AXI_ARADDR;
  wire [1:0]smartconnect_0_M01_AXI_ARBURST;
  wire [3:0]smartconnect_0_M01_AXI_ARCACHE;
  wire [3:0]smartconnect_0_M01_AXI_ARLEN;
  wire [1:0]smartconnect_0_M01_AXI_ARLOCK;
  wire [2:0]smartconnect_0_M01_AXI_ARPROT;
  wire [3:0]smartconnect_0_M01_AXI_ARQOS;
  wire smartconnect_0_M01_AXI_ARREADY;
  wire [2:0]smartconnect_0_M01_AXI_ARSIZE;
  wire smartconnect_0_M01_AXI_ARVALID;
  wire [31:0]smartconnect_0_M01_AXI_AWADDR;
  wire [1:0]smartconnect_0_M01_AXI_AWBURST;
  wire [3:0]smartconnect_0_M01_AXI_AWCACHE;
  wire [3:0]smartconnect_0_M01_AXI_AWLEN;
  wire [1:0]smartconnect_0_M01_AXI_AWLOCK;
  wire [2:0]smartconnect_0_M01_AXI_AWPROT;
  wire [3:0]smartconnect_0_M01_AXI_AWQOS;
  wire smartconnect_0_M01_AXI_AWREADY;
  wire [2:0]smartconnect_0_M01_AXI_AWSIZE;
  wire smartconnect_0_M01_AXI_AWVALID;
  wire smartconnect_0_M01_AXI_BREADY;
  wire [1:0]smartconnect_0_M01_AXI_BRESP;
  wire smartconnect_0_M01_AXI_BVALID;
  wire [63:0]smartconnect_0_M01_AXI_RDATA;
  wire smartconnect_0_M01_AXI_RLAST;
  wire smartconnect_0_M01_AXI_RREADY;
  wire [1:0]smartconnect_0_M01_AXI_RRESP;
  wire smartconnect_0_M01_AXI_RVALID;
  wire [63:0]smartconnect_0_M01_AXI_WDATA;
  wire smartconnect_0_M01_AXI_WLAST;
  wire smartconnect_0_M01_AXI_WREADY;
  wire [7:0]smartconnect_0_M01_AXI_WSTRB;
  wire smartconnect_0_M01_AXI_WVALID;
  wire [0:0]util_vector_logic_0_Res;
  wire [31:0]videomodule_0_m_axi_ARADDR;
  wire [1:0]videomodule_0_m_axi_ARBURST;
  wire [3:0]videomodule_0_m_axi_ARCACHE;
  wire [5:0]videomodule_0_m_axi_ARID;
  wire [3:0]videomodule_0_m_axi_ARLEN;
  wire [1:0]videomodule_0_m_axi_ARLOCK;
  wire [2:0]videomodule_0_m_axi_ARPROT;
  wire [3:0]videomodule_0_m_axi_ARQOS;
  wire videomodule_0_m_axi_ARREADY;
  wire [2:0]videomodule_0_m_axi_ARSIZE;
  wire videomodule_0_m_axi_ARVALID;
  wire [31:0]videomodule_0_m_axi_AWADDR;
  wire [1:0]videomodule_0_m_axi_AWBURST;
  wire [3:0]videomodule_0_m_axi_AWCACHE;
  wire [5:0]videomodule_0_m_axi_AWID;
  wire [3:0]videomodule_0_m_axi_AWLEN;
  wire [1:0]videomodule_0_m_axi_AWLOCK;
  wire [2:0]videomodule_0_m_axi_AWPROT;
  wire [3:0]videomodule_0_m_axi_AWQOS;
  wire videomodule_0_m_axi_AWREADY;
  wire [2:0]videomodule_0_m_axi_AWSIZE;
  wire videomodule_0_m_axi_AWVALID;
  wire [5:0]videomodule_0_m_axi_BID;
  wire videomodule_0_m_axi_BREADY;
  wire [1:0]videomodule_0_m_axi_BRESP;
  wire videomodule_0_m_axi_BVALID;
  wire [63:0]videomodule_0_m_axi_RDATA;
  wire [5:0]videomodule_0_m_axi_RID;
  wire videomodule_0_m_axi_RLAST;
  wire videomodule_0_m_axi_RREADY;
  wire [1:0]videomodule_0_m_axi_RRESP;
  wire videomodule_0_m_axi_RVALID;
  wire [63:0]videomodule_0_m_axi_WDATA;
  wire [5:0]videomodule_0_m_axi_WID;
  wire videomodule_0_m_axi_WLAST;
  wire videomodule_0_m_axi_WREADY;
  wire [7:0]videomodule_0_m_axi_WSTRB;
  wire videomodule_0_m_axi_WVALID;

  blockone_audiomodule_0_0 audiomodule_0
       (.aclk(Net),
        .aresetn(proc_sys_reset_0_peripheral_aresetn),
        .audioSampleOutputLR(audiomodule_0_audioSampleOutputLR),
        .audioclock(clk_wiz_0_audioclk),
        .audiosampleclk(audiomodule_0_audiosampleclk),
        .m_axi_araddr(audiomodule_0_m_axi_ARADDR),
        .m_axi_arburst(audiomodule_0_m_axi_ARBURST),
        .m_axi_arcache(audiomodule_0_m_axi_ARCACHE),
        .m_axi_arid(audiomodule_0_m_axi_ARID),
        .m_axi_arlen(audiomodule_0_m_axi_ARLEN),
        .m_axi_arlock(audiomodule_0_m_axi_ARLOCK),
        .m_axi_arprot(audiomodule_0_m_axi_ARPROT),
        .m_axi_arqos(audiomodule_0_m_axi_ARQOS),
        .m_axi_arready(audiomodule_0_m_axi_ARREADY),
        .m_axi_arsize(audiomodule_0_m_axi_ARSIZE),
        .m_axi_arvalid(audiomodule_0_m_axi_ARVALID),
        .m_axi_awaddr(audiomodule_0_m_axi_AWADDR),
        .m_axi_awburst(audiomodule_0_m_axi_AWBURST),
        .m_axi_awcache(audiomodule_0_m_axi_AWCACHE),
        .m_axi_awid(audiomodule_0_m_axi_AWID),
        .m_axi_awlen(audiomodule_0_m_axi_AWLEN),
        .m_axi_awlock(audiomodule_0_m_axi_AWLOCK),
        .m_axi_awprot(audiomodule_0_m_axi_AWPROT),
        .m_axi_awqos(audiomodule_0_m_axi_AWQOS),
        .m_axi_awready(audiomodule_0_m_axi_AWREADY),
        .m_axi_awsize(audiomodule_0_m_axi_AWSIZE),
        .m_axi_awvalid(audiomodule_0_m_axi_AWVALID),
        .m_axi_bid(audiomodule_0_m_axi_BID),
        .m_axi_bready(audiomodule_0_m_axi_BREADY),
        .m_axi_bresp(audiomodule_0_m_axi_BRESP),
        .m_axi_bvalid(audiomodule_0_m_axi_BVALID),
        .m_axi_rdata(audiomodule_0_m_axi_RDATA),
        .m_axi_rid(audiomodule_0_m_axi_RID),
        .m_axi_rlast(audiomodule_0_m_axi_RLAST),
        .m_axi_rready(audiomodule_0_m_axi_RREADY),
        .m_axi_rresp(audiomodule_0_m_axi_RRESP),
        .m_axi_rvalid(audiomodule_0_m_axi_RVALID),
        .m_axi_wdata(audiomodule_0_m_axi_WDATA),
        .m_axi_wid(audiomodule_0_m_axi_WID),
        .m_axi_wlast(audiomodule_0_m_axi_WLAST),
        .m_axi_wready(audiomodule_0_m_axi_WREADY),
        .m_axi_wstrb(audiomodule_0_m_axi_WSTRB),
        .m_axi_wvalid(audiomodule_0_m_axi_WVALID),
        .s_axi_araddr(smartconnect_0_M01_AXI_ARADDR),
        .s_axi_arburst(smartconnect_0_M01_AXI_ARBURST),
        .s_axi_arcache(smartconnect_0_M01_AXI_ARCACHE),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen(smartconnect_0_M01_AXI_ARLEN),
        .s_axi_arlock(smartconnect_0_M01_AXI_ARLOCK),
        .s_axi_arprot(smartconnect_0_M01_AXI_ARPROT),
        .s_axi_arqos(smartconnect_0_M01_AXI_ARQOS),
        .s_axi_arready(smartconnect_0_M01_AXI_ARREADY),
        .s_axi_arsize(smartconnect_0_M01_AXI_ARSIZE),
        .s_axi_arvalid(smartconnect_0_M01_AXI_ARVALID),
        .s_axi_awaddr(smartconnect_0_M01_AXI_AWADDR),
        .s_axi_awburst(smartconnect_0_M01_AXI_AWBURST),
        .s_axi_awcache(smartconnect_0_M01_AXI_AWCACHE),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen(smartconnect_0_M01_AXI_AWLEN),
        .s_axi_awlock(smartconnect_0_M01_AXI_AWLOCK),
        .s_axi_awprot(smartconnect_0_M01_AXI_AWPROT),
        .s_axi_awqos(smartconnect_0_M01_AXI_AWQOS),
        .s_axi_awready(smartconnect_0_M01_AXI_AWREADY),
        .s_axi_awsize(smartconnect_0_M01_AXI_AWSIZE),
        .s_axi_awvalid(smartconnect_0_M01_AXI_AWVALID),
        .s_axi_bready(smartconnect_0_M01_AXI_BREADY),
        .s_axi_bresp(smartconnect_0_M01_AXI_BRESP),
        .s_axi_bvalid(smartconnect_0_M01_AXI_BVALID),
        .s_axi_rdata(smartconnect_0_M01_AXI_RDATA),
        .s_axi_rlast(smartconnect_0_M01_AXI_RLAST),
        .s_axi_rready(smartconnect_0_M01_AXI_RREADY),
        .s_axi_rresp(smartconnect_0_M01_AXI_RRESP),
        .s_axi_rvalid(smartconnect_0_M01_AXI_RVALID),
        .s_axi_wdata(smartconnect_0_M01_AXI_WDATA),
        .s_axi_wid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(smartconnect_0_M01_AXI_WLAST),
        .s_axi_wready(smartconnect_0_M01_AXI_WREADY),
        .s_axi_wstrb(smartconnect_0_M01_AXI_WSTRB),
        .s_axi_wvalid(smartconnect_0_M01_AXI_WVALID));
  blockone_clk_wiz_0_0 clk_wiz_0
       (.audioclk(clk_wiz_0_audioclk),
        .clk_in1(processing_system7_0_FCLK_CLK2),
        .pixelclk(clk_wiz_0_pixelclk),
        .reset(proc_sys_reset_0_peripheral_reset),
        .serdesclk(clk_wiz_0_serdesclk));
  blockone_gmii_to_rgmii_0_1 gmii_to_rgmii_0
       (.clkin(processing_system7_0_FCLK_CLK1),
        .gmii_col(processing_system7_0_GMII_ETHERNET_0_COL),
        .gmii_crs(processing_system7_0_GMII_ETHERNET_0_CRS),
        .gmii_rx_clk(processing_system7_0_GMII_ETHERNET_0_RX_CLK),
        .gmii_rx_dv(processing_system7_0_GMII_ETHERNET_0_RX_DV),
        .gmii_rx_er(processing_system7_0_GMII_ETHERNET_0_RX_ER),
        .gmii_rxd(processing_system7_0_GMII_ETHERNET_0_RXD),
        .gmii_tx_clk(processing_system7_0_GMII_ETHERNET_0_TX_CLK),
        .gmii_tx_en(processing_system7_0_GMII_ETHERNET_0_TX_EN),
        .gmii_tx_er(processing_system7_0_GMII_ETHERNET_0_TX_ER),
        .gmii_txd(processing_system7_0_GMII_ETHERNET_0_TXD),
        .mdio_gem_i(processing_system7_0_MDIO_ETHERNET_0_MDIO_I),
        .mdio_gem_mdc(processing_system7_0_MDIO_ETHERNET_0_MDC),
        .mdio_gem_o(processing_system7_0_MDIO_ETHERNET_0_MDIO_O),
        .mdio_gem_t(processing_system7_0_MDIO_ETHERNET_0_MDIO_T),
        .mdio_phy_i(MDIO_PHY_0_mdio_i),
        .mdio_phy_mdc(MDIO_PHY_0_mdc),
        .mdio_phy_o(MDIO_PHY_0_mdio_o),
        .mdio_phy_t(MDIO_PHY_0_mdio_t),
        .rgmii_rx_ctl(RGMII_0_rx_ctl),
        .rgmii_rxc(RGMII_0_rxc),
        .rgmii_rxd(RGMII_0_rd),
        .rgmii_tx_ctl(RGMII_0_tx_ctl),
        .rgmii_txc(RGMII_0_txc),
        .rgmii_txd(RGMII_0_td),
        .rx_reset(util_vector_logic_0_Res),
        .tx_reset(util_vector_logic_0_Res));
  blockone_proc_sys_reset_0_1 proc_sys_reset_0
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(processing_system7_0_FCLK_RESET0_N),
        .interconnect_aresetn(proc_sys_reset_0_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .peripheral_reset(proc_sys_reset_0_peripheral_reset),
        .slowest_sync_clk(Net));
  blockone_processing_system7_0_1 processing_system7_0
       (.DDR_Addr(DDR_addr),
        .DDR_BankAddr(DDR_ba),
        .DDR_CAS_n(DDR_cas_n),
        .DDR_CKE(DDR_cke),
        .DDR_CS_n(DDR_cs_n),
        .DDR_Clk(DDR_ck_p),
        .DDR_Clk_n(DDR_ck_n),
        .DDR_DM(DDR_dm),
        .DDR_DQ(DDR_dq),
        .DDR_DQS(DDR_dqs_p),
        .DDR_DQS_n(DDR_dqs_n),
        .DDR_DRSTB(DDR_reset_n),
        .DDR_ODT(DDR_odt),
        .DDR_RAS_n(DDR_ras_n),
        .DDR_VRN(FIXED_IO_ddr_vrn),
        .DDR_VRP(FIXED_IO_ddr_vrp),
        .DDR_WEB(DDR_we_n),
        .ENET0_EXT_INTIN(1'b0),
        .ENET0_GMII_COL(processing_system7_0_GMII_ETHERNET_0_COL),
        .ENET0_GMII_CRS(processing_system7_0_GMII_ETHERNET_0_CRS),
        .ENET0_GMII_RXD(processing_system7_0_GMII_ETHERNET_0_RXD),
        .ENET0_GMII_RX_CLK(processing_system7_0_GMII_ETHERNET_0_RX_CLK),
        .ENET0_GMII_RX_DV(processing_system7_0_GMII_ETHERNET_0_RX_DV),
        .ENET0_GMII_RX_ER(processing_system7_0_GMII_ETHERNET_0_RX_ER),
        .ENET0_GMII_TXD(processing_system7_0_GMII_ETHERNET_0_TXD),
        .ENET0_GMII_TX_CLK(processing_system7_0_GMII_ETHERNET_0_TX_CLK),
        .ENET0_GMII_TX_EN(processing_system7_0_GMII_ETHERNET_0_TX_EN),
        .ENET0_GMII_TX_ER(processing_system7_0_GMII_ETHERNET_0_TX_ER),
        .ENET0_MDIO_I(processing_system7_0_MDIO_ETHERNET_0_MDIO_I),
        .ENET0_MDIO_MDC(processing_system7_0_MDIO_ETHERNET_0_MDC),
        .ENET0_MDIO_O(processing_system7_0_MDIO_ETHERNET_0_MDIO_O),
        .ENET0_MDIO_T(processing_system7_0_MDIO_ETHERNET_0_MDIO_T),
        .FCLK_CLK0(Net),
        .FCLK_CLK1(processing_system7_0_FCLK_CLK1),
        .FCLK_CLK2(processing_system7_0_FCLK_CLK2),
        .FCLK_RESET0_N(processing_system7_0_FCLK_RESET0_N),
        .GPIO_I(GPIO_0_0_tri_i),
        .GPIO_O(GPIO_0_0_tri_o),
        .GPIO_T(GPIO_0_0_tri_t),
        .MIO(FIXED_IO_mio),
        .M_AXI_GP0_ACLK(Net),
        .M_AXI_GP0_ARADDR(processing_system7_0_M_AXI_GP0_ARADDR),
        .M_AXI_GP0_ARBURST(processing_system7_0_M_AXI_GP0_ARBURST),
        .M_AXI_GP0_ARCACHE(processing_system7_0_M_AXI_GP0_ARCACHE),
        .M_AXI_GP0_ARID(processing_system7_0_M_AXI_GP0_ARID),
        .M_AXI_GP0_ARLEN(processing_system7_0_M_AXI_GP0_ARLEN),
        .M_AXI_GP0_ARLOCK(processing_system7_0_M_AXI_GP0_ARLOCK),
        .M_AXI_GP0_ARPROT(processing_system7_0_M_AXI_GP0_ARPROT),
        .M_AXI_GP0_ARQOS(processing_system7_0_M_AXI_GP0_ARQOS),
        .M_AXI_GP0_ARREADY(processing_system7_0_M_AXI_GP0_ARREADY),
        .M_AXI_GP0_ARSIZE(processing_system7_0_M_AXI_GP0_ARSIZE),
        .M_AXI_GP0_ARVALID(processing_system7_0_M_AXI_GP0_ARVALID),
        .M_AXI_GP0_AWADDR(processing_system7_0_M_AXI_GP0_AWADDR),
        .M_AXI_GP0_AWBURST(processing_system7_0_M_AXI_GP0_AWBURST),
        .M_AXI_GP0_AWCACHE(processing_system7_0_M_AXI_GP0_AWCACHE),
        .M_AXI_GP0_AWID(processing_system7_0_M_AXI_GP0_AWID),
        .M_AXI_GP0_AWLEN(processing_system7_0_M_AXI_GP0_AWLEN),
        .M_AXI_GP0_AWLOCK(processing_system7_0_M_AXI_GP0_AWLOCK),
        .M_AXI_GP0_AWPROT(processing_system7_0_M_AXI_GP0_AWPROT),
        .M_AXI_GP0_AWQOS(processing_system7_0_M_AXI_GP0_AWQOS),
        .M_AXI_GP0_AWREADY(processing_system7_0_M_AXI_GP0_AWREADY),
        .M_AXI_GP0_AWSIZE(processing_system7_0_M_AXI_GP0_AWSIZE),
        .M_AXI_GP0_AWVALID(processing_system7_0_M_AXI_GP0_AWVALID),
        .M_AXI_GP0_BID(processing_system7_0_M_AXI_GP0_BID),
        .M_AXI_GP0_BREADY(processing_system7_0_M_AXI_GP0_BREADY),
        .M_AXI_GP0_BRESP(processing_system7_0_M_AXI_GP0_BRESP),
        .M_AXI_GP0_BVALID(processing_system7_0_M_AXI_GP0_BVALID),
        .M_AXI_GP0_RDATA(processing_system7_0_M_AXI_GP0_RDATA),
        .M_AXI_GP0_RID(processing_system7_0_M_AXI_GP0_RID),
        .M_AXI_GP0_RLAST(processing_system7_0_M_AXI_GP0_RLAST),
        .M_AXI_GP0_RREADY(processing_system7_0_M_AXI_GP0_RREADY),
        .M_AXI_GP0_RRESP(processing_system7_0_M_AXI_GP0_RRESP),
        .M_AXI_GP0_RVALID(processing_system7_0_M_AXI_GP0_RVALID),
        .M_AXI_GP0_WDATA(processing_system7_0_M_AXI_GP0_WDATA),
        .M_AXI_GP0_WID(processing_system7_0_M_AXI_GP0_WID),
        .M_AXI_GP0_WLAST(processing_system7_0_M_AXI_GP0_WLAST),
        .M_AXI_GP0_WREADY(processing_system7_0_M_AXI_GP0_WREADY),
        .M_AXI_GP0_WSTRB(processing_system7_0_M_AXI_GP0_WSTRB),
        .M_AXI_GP0_WVALID(processing_system7_0_M_AXI_GP0_WVALID),
        .PS_CLK(FIXED_IO_ps_clk),
        .PS_PORB(FIXED_IO_ps_porb),
        .PS_SRSTB(FIXED_IO_ps_srstb),
        .S_AXI_HP0_ACLK(Net),
        .S_AXI_HP0_ARADDR(videomodule_0_m_axi_ARADDR),
        .S_AXI_HP0_ARBURST(videomodule_0_m_axi_ARBURST),
        .S_AXI_HP0_ARCACHE(videomodule_0_m_axi_ARCACHE),
        .S_AXI_HP0_ARID(videomodule_0_m_axi_ARID),
        .S_AXI_HP0_ARLEN(videomodule_0_m_axi_ARLEN),
        .S_AXI_HP0_ARLOCK(videomodule_0_m_axi_ARLOCK),
        .S_AXI_HP0_ARPROT(videomodule_0_m_axi_ARPROT),
        .S_AXI_HP0_ARQOS(videomodule_0_m_axi_ARQOS),
        .S_AXI_HP0_ARREADY(videomodule_0_m_axi_ARREADY),
        .S_AXI_HP0_ARSIZE(videomodule_0_m_axi_ARSIZE),
        .S_AXI_HP0_ARVALID(videomodule_0_m_axi_ARVALID),
        .S_AXI_HP0_AWADDR(videomodule_0_m_axi_AWADDR),
        .S_AXI_HP0_AWBURST(videomodule_0_m_axi_AWBURST),
        .S_AXI_HP0_AWCACHE(videomodule_0_m_axi_AWCACHE),
        .S_AXI_HP0_AWID(videomodule_0_m_axi_AWID),
        .S_AXI_HP0_AWLEN(videomodule_0_m_axi_AWLEN),
        .S_AXI_HP0_AWLOCK(videomodule_0_m_axi_AWLOCK),
        .S_AXI_HP0_AWPROT(videomodule_0_m_axi_AWPROT),
        .S_AXI_HP0_AWQOS(videomodule_0_m_axi_AWQOS),
        .S_AXI_HP0_AWREADY(videomodule_0_m_axi_AWREADY),
        .S_AXI_HP0_AWSIZE(videomodule_0_m_axi_AWSIZE),
        .S_AXI_HP0_AWVALID(videomodule_0_m_axi_AWVALID),
        .S_AXI_HP0_BID(videomodule_0_m_axi_BID),
        .S_AXI_HP0_BREADY(videomodule_0_m_axi_BREADY),
        .S_AXI_HP0_BRESP(videomodule_0_m_axi_BRESP),
        .S_AXI_HP0_BVALID(videomodule_0_m_axi_BVALID),
        .S_AXI_HP0_RDATA(videomodule_0_m_axi_RDATA),
        .S_AXI_HP0_RDISSUECAP1_EN(1'b0),
        .S_AXI_HP0_RID(videomodule_0_m_axi_RID),
        .S_AXI_HP0_RLAST(videomodule_0_m_axi_RLAST),
        .S_AXI_HP0_RREADY(videomodule_0_m_axi_RREADY),
        .S_AXI_HP0_RRESP(videomodule_0_m_axi_RRESP),
        .S_AXI_HP0_RVALID(videomodule_0_m_axi_RVALID),
        .S_AXI_HP0_WDATA(videomodule_0_m_axi_WDATA),
        .S_AXI_HP0_WID(videomodule_0_m_axi_WID),
        .S_AXI_HP0_WLAST(videomodule_0_m_axi_WLAST),
        .S_AXI_HP0_WREADY(videomodule_0_m_axi_WREADY),
        .S_AXI_HP0_WRISSUECAP1_EN(1'b0),
        .S_AXI_HP0_WSTRB(videomodule_0_m_axi_WSTRB),
        .S_AXI_HP0_WVALID(videomodule_0_m_axi_WVALID),
        .S_AXI_HP1_ACLK(Net),
        .S_AXI_HP1_ARADDR(audiomodule_0_m_axi_ARADDR),
        .S_AXI_HP1_ARBURST(audiomodule_0_m_axi_ARBURST),
        .S_AXI_HP1_ARCACHE(audiomodule_0_m_axi_ARCACHE),
        .S_AXI_HP1_ARID(audiomodule_0_m_axi_ARID),
        .S_AXI_HP1_ARLEN(audiomodule_0_m_axi_ARLEN),
        .S_AXI_HP1_ARLOCK(audiomodule_0_m_axi_ARLOCK),
        .S_AXI_HP1_ARPROT(audiomodule_0_m_axi_ARPROT),
        .S_AXI_HP1_ARQOS(audiomodule_0_m_axi_ARQOS),
        .S_AXI_HP1_ARREADY(audiomodule_0_m_axi_ARREADY),
        .S_AXI_HP1_ARSIZE(audiomodule_0_m_axi_ARSIZE),
        .S_AXI_HP1_ARVALID(audiomodule_0_m_axi_ARVALID),
        .S_AXI_HP1_AWADDR(audiomodule_0_m_axi_AWADDR),
        .S_AXI_HP1_AWBURST(audiomodule_0_m_axi_AWBURST),
        .S_AXI_HP1_AWCACHE(audiomodule_0_m_axi_AWCACHE),
        .S_AXI_HP1_AWID(audiomodule_0_m_axi_AWID),
        .S_AXI_HP1_AWLEN(audiomodule_0_m_axi_AWLEN),
        .S_AXI_HP1_AWLOCK(audiomodule_0_m_axi_AWLOCK),
        .S_AXI_HP1_AWPROT(audiomodule_0_m_axi_AWPROT),
        .S_AXI_HP1_AWQOS(audiomodule_0_m_axi_AWQOS),
        .S_AXI_HP1_AWREADY(audiomodule_0_m_axi_AWREADY),
        .S_AXI_HP1_AWSIZE(audiomodule_0_m_axi_AWSIZE),
        .S_AXI_HP1_AWVALID(audiomodule_0_m_axi_AWVALID),
        .S_AXI_HP1_BID(audiomodule_0_m_axi_BID),
        .S_AXI_HP1_BREADY(audiomodule_0_m_axi_BREADY),
        .S_AXI_HP1_BRESP(audiomodule_0_m_axi_BRESP),
        .S_AXI_HP1_BVALID(audiomodule_0_m_axi_BVALID),
        .S_AXI_HP1_RDATA(audiomodule_0_m_axi_RDATA),
        .S_AXI_HP1_RDISSUECAP1_EN(1'b0),
        .S_AXI_HP1_RID(audiomodule_0_m_axi_RID),
        .S_AXI_HP1_RLAST(audiomodule_0_m_axi_RLAST),
        .S_AXI_HP1_RREADY(audiomodule_0_m_axi_RREADY),
        .S_AXI_HP1_RRESP(audiomodule_0_m_axi_RRESP),
        .S_AXI_HP1_RVALID(audiomodule_0_m_axi_RVALID),
        .S_AXI_HP1_WDATA(audiomodule_0_m_axi_WDATA),
        .S_AXI_HP1_WID(audiomodule_0_m_axi_WID),
        .S_AXI_HP1_WLAST(audiomodule_0_m_axi_WLAST),
        .S_AXI_HP1_WREADY(audiomodule_0_m_axi_WREADY),
        .S_AXI_HP1_WRISSUECAP1_EN(1'b0),
        .S_AXI_HP1_WSTRB(audiomodule_0_m_axi_WSTRB),
        .S_AXI_HP1_WVALID(audiomodule_0_m_axi_WVALID),
        .UART0_RX(UART_0_0_rxd),
        .UART0_TX(UART_0_0_txd),
        .USB0_VBUS_PWRFAULT(1'b0));
  blockone_smartconnect_0_0 smartconnect_0
       (.M00_AXI_araddr(smartconnect_0_M00_AXI_ARADDR),
        .M00_AXI_arburst(smartconnect_0_M00_AXI_ARBURST),
        .M00_AXI_arcache(smartconnect_0_M00_AXI_ARCACHE),
        .M00_AXI_arlen(smartconnect_0_M00_AXI_ARLEN),
        .M00_AXI_arlock(smartconnect_0_M00_AXI_ARLOCK),
        .M00_AXI_arprot(smartconnect_0_M00_AXI_ARPROT),
        .M00_AXI_arqos(smartconnect_0_M00_AXI_ARQOS),
        .M00_AXI_arready(smartconnect_0_M00_AXI_ARREADY),
        .M00_AXI_arsize(smartconnect_0_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(smartconnect_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(smartconnect_0_M00_AXI_AWADDR),
        .M00_AXI_awburst(smartconnect_0_M00_AXI_AWBURST),
        .M00_AXI_awcache(smartconnect_0_M00_AXI_AWCACHE),
        .M00_AXI_awlen(smartconnect_0_M00_AXI_AWLEN),
        .M00_AXI_awlock(smartconnect_0_M00_AXI_AWLOCK),
        .M00_AXI_awprot(smartconnect_0_M00_AXI_AWPROT),
        .M00_AXI_awqos(smartconnect_0_M00_AXI_AWQOS),
        .M00_AXI_awready(smartconnect_0_M00_AXI_AWREADY),
        .M00_AXI_awsize(smartconnect_0_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(smartconnect_0_M00_AXI_AWVALID),
        .M00_AXI_bready(smartconnect_0_M00_AXI_BREADY),
        .M00_AXI_bresp(smartconnect_0_M00_AXI_BRESP),
        .M00_AXI_bvalid(smartconnect_0_M00_AXI_BVALID),
        .M00_AXI_rdata(smartconnect_0_M00_AXI_RDATA),
        .M00_AXI_rlast(smartconnect_0_M00_AXI_RLAST),
        .M00_AXI_rready(smartconnect_0_M00_AXI_RREADY),
        .M00_AXI_rresp(smartconnect_0_M00_AXI_RRESP),
        .M00_AXI_rvalid(smartconnect_0_M00_AXI_RVALID),
        .M00_AXI_wdata(smartconnect_0_M00_AXI_WDATA),
        .M00_AXI_wlast(smartconnect_0_M00_AXI_WLAST),
        .M00_AXI_wready(smartconnect_0_M00_AXI_WREADY),
        .M00_AXI_wstrb(smartconnect_0_M00_AXI_WSTRB),
        .M00_AXI_wvalid(smartconnect_0_M00_AXI_WVALID),
        .M01_AXI_araddr(smartconnect_0_M01_AXI_ARADDR),
        .M01_AXI_arburst(smartconnect_0_M01_AXI_ARBURST),
        .M01_AXI_arcache(smartconnect_0_M01_AXI_ARCACHE),
        .M01_AXI_arlen(smartconnect_0_M01_AXI_ARLEN),
        .M01_AXI_arlock(smartconnect_0_M01_AXI_ARLOCK),
        .M01_AXI_arprot(smartconnect_0_M01_AXI_ARPROT),
        .M01_AXI_arqos(smartconnect_0_M01_AXI_ARQOS),
        .M01_AXI_arready(smartconnect_0_M01_AXI_ARREADY),
        .M01_AXI_arsize(smartconnect_0_M01_AXI_ARSIZE),
        .M01_AXI_arvalid(smartconnect_0_M01_AXI_ARVALID),
        .M01_AXI_awaddr(smartconnect_0_M01_AXI_AWADDR),
        .M01_AXI_awburst(smartconnect_0_M01_AXI_AWBURST),
        .M01_AXI_awcache(smartconnect_0_M01_AXI_AWCACHE),
        .M01_AXI_awlen(smartconnect_0_M01_AXI_AWLEN),
        .M01_AXI_awlock(smartconnect_0_M01_AXI_AWLOCK),
        .M01_AXI_awprot(smartconnect_0_M01_AXI_AWPROT),
        .M01_AXI_awqos(smartconnect_0_M01_AXI_AWQOS),
        .M01_AXI_awready(smartconnect_0_M01_AXI_AWREADY),
        .M01_AXI_awsize(smartconnect_0_M01_AXI_AWSIZE),
        .M01_AXI_awvalid(smartconnect_0_M01_AXI_AWVALID),
        .M01_AXI_bready(smartconnect_0_M01_AXI_BREADY),
        .M01_AXI_bresp(smartconnect_0_M01_AXI_BRESP),
        .M01_AXI_bvalid(smartconnect_0_M01_AXI_BVALID),
        .M01_AXI_rdata(smartconnect_0_M01_AXI_RDATA),
        .M01_AXI_rlast(smartconnect_0_M01_AXI_RLAST),
        .M01_AXI_rready(smartconnect_0_M01_AXI_RREADY),
        .M01_AXI_rresp(smartconnect_0_M01_AXI_RRESP),
        .M01_AXI_rvalid(smartconnect_0_M01_AXI_RVALID),
        .M01_AXI_wdata(smartconnect_0_M01_AXI_WDATA),
        .M01_AXI_wlast(smartconnect_0_M01_AXI_WLAST),
        .M01_AXI_wready(smartconnect_0_M01_AXI_WREADY),
        .M01_AXI_wstrb(smartconnect_0_M01_AXI_WSTRB),
        .M01_AXI_wvalid(smartconnect_0_M01_AXI_WVALID),
        .S00_AXI_araddr(processing_system7_0_M_AXI_GP0_ARADDR),
        .S00_AXI_arburst(processing_system7_0_M_AXI_GP0_ARBURST),
        .S00_AXI_arcache(processing_system7_0_M_AXI_GP0_ARCACHE),
        .S00_AXI_arid(processing_system7_0_M_AXI_GP0_ARID),
        .S00_AXI_arlen(processing_system7_0_M_AXI_GP0_ARLEN),
        .S00_AXI_arlock(processing_system7_0_M_AXI_GP0_ARLOCK),
        .S00_AXI_arprot(processing_system7_0_M_AXI_GP0_ARPROT),
        .S00_AXI_arqos(processing_system7_0_M_AXI_GP0_ARQOS),
        .S00_AXI_arready(processing_system7_0_M_AXI_GP0_ARREADY),
        .S00_AXI_arsize(processing_system7_0_M_AXI_GP0_ARSIZE),
        .S00_AXI_arvalid(processing_system7_0_M_AXI_GP0_ARVALID),
        .S00_AXI_awaddr(processing_system7_0_M_AXI_GP0_AWADDR),
        .S00_AXI_awburst(processing_system7_0_M_AXI_GP0_AWBURST),
        .S00_AXI_awcache(processing_system7_0_M_AXI_GP0_AWCACHE),
        .S00_AXI_awid(processing_system7_0_M_AXI_GP0_AWID),
        .S00_AXI_awlen(processing_system7_0_M_AXI_GP0_AWLEN),
        .S00_AXI_awlock(processing_system7_0_M_AXI_GP0_AWLOCK),
        .S00_AXI_awprot(processing_system7_0_M_AXI_GP0_AWPROT),
        .S00_AXI_awqos(processing_system7_0_M_AXI_GP0_AWQOS),
        .S00_AXI_awready(processing_system7_0_M_AXI_GP0_AWREADY),
        .S00_AXI_awsize(processing_system7_0_M_AXI_GP0_AWSIZE),
        .S00_AXI_awvalid(processing_system7_0_M_AXI_GP0_AWVALID),
        .S00_AXI_bid(processing_system7_0_M_AXI_GP0_BID),
        .S00_AXI_bready(processing_system7_0_M_AXI_GP0_BREADY),
        .S00_AXI_bresp(processing_system7_0_M_AXI_GP0_BRESP),
        .S00_AXI_bvalid(processing_system7_0_M_AXI_GP0_BVALID),
        .S00_AXI_rdata(processing_system7_0_M_AXI_GP0_RDATA),
        .S00_AXI_rid(processing_system7_0_M_AXI_GP0_RID),
        .S00_AXI_rlast(processing_system7_0_M_AXI_GP0_RLAST),
        .S00_AXI_rready(processing_system7_0_M_AXI_GP0_RREADY),
        .S00_AXI_rresp(processing_system7_0_M_AXI_GP0_RRESP),
        .S00_AXI_rvalid(processing_system7_0_M_AXI_GP0_RVALID),
        .S00_AXI_wdata(processing_system7_0_M_AXI_GP0_WDATA),
        .S00_AXI_wid(processing_system7_0_M_AXI_GP0_WID),
        .S00_AXI_wlast(processing_system7_0_M_AXI_GP0_WLAST),
        .S00_AXI_wready(processing_system7_0_M_AXI_GP0_WREADY),
        .S00_AXI_wstrb(processing_system7_0_M_AXI_GP0_WSTRB),
        .S00_AXI_wvalid(processing_system7_0_M_AXI_GP0_WVALID),
        .aclk(Net),
        .aresetn(proc_sys_reset_0_interconnect_aresetn));
  blockone_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(processing_system7_0_FCLK_RESET0_N),
        .Res(util_vector_logic_0_Res));
  blockone_videomodule_0_0 videomodule_0
       (.HDMI_CLK_n(HDMI_CLK_n_0),
        .HDMI_CLK_p(HDMI_CLK_p_0),
        .HDMI_TMDS_n(HDMI_TMDS_n_0),
        .HDMI_TMDS_p(HDMI_TMDS_p_0),
        .aclk(Net),
        .aresetn(proc_sys_reset_0_peripheral_aresetn),
        .audioSampleInputLR(audiomodule_0_audioSampleOutputLR),
        .audiosampleclk(audiomodule_0_audiosampleclk),
        .m_axi_araddr(videomodule_0_m_axi_ARADDR),
        .m_axi_arburst(videomodule_0_m_axi_ARBURST),
        .m_axi_arcache(videomodule_0_m_axi_ARCACHE),
        .m_axi_arid(videomodule_0_m_axi_ARID),
        .m_axi_arlen(videomodule_0_m_axi_ARLEN),
        .m_axi_arlock(videomodule_0_m_axi_ARLOCK),
        .m_axi_arprot(videomodule_0_m_axi_ARPROT),
        .m_axi_arqos(videomodule_0_m_axi_ARQOS),
        .m_axi_arready(videomodule_0_m_axi_ARREADY),
        .m_axi_arsize(videomodule_0_m_axi_ARSIZE),
        .m_axi_arvalid(videomodule_0_m_axi_ARVALID),
        .m_axi_awaddr(videomodule_0_m_axi_AWADDR),
        .m_axi_awburst(videomodule_0_m_axi_AWBURST),
        .m_axi_awcache(videomodule_0_m_axi_AWCACHE),
        .m_axi_awid(videomodule_0_m_axi_AWID),
        .m_axi_awlen(videomodule_0_m_axi_AWLEN),
        .m_axi_awlock(videomodule_0_m_axi_AWLOCK),
        .m_axi_awprot(videomodule_0_m_axi_AWPROT),
        .m_axi_awqos(videomodule_0_m_axi_AWQOS),
        .m_axi_awready(videomodule_0_m_axi_AWREADY),
        .m_axi_awsize(videomodule_0_m_axi_AWSIZE),
        .m_axi_awvalid(videomodule_0_m_axi_AWVALID),
        .m_axi_bid(videomodule_0_m_axi_BID),
        .m_axi_bready(videomodule_0_m_axi_BREADY),
        .m_axi_bresp(videomodule_0_m_axi_BRESP),
        .m_axi_bvalid(videomodule_0_m_axi_BVALID),
        .m_axi_rdata(videomodule_0_m_axi_RDATA),
        .m_axi_rid(videomodule_0_m_axi_RID),
        .m_axi_rlast(videomodule_0_m_axi_RLAST),
        .m_axi_rready(videomodule_0_m_axi_RREADY),
        .m_axi_rresp(videomodule_0_m_axi_RRESP),
        .m_axi_rvalid(videomodule_0_m_axi_RVALID),
        .m_axi_wdata(videomodule_0_m_axi_WDATA),
        .m_axi_wid(videomodule_0_m_axi_WID),
        .m_axi_wlast(videomodule_0_m_axi_WLAST),
        .m_axi_wready(videomodule_0_m_axi_WREADY),
        .m_axi_wstrb(videomodule_0_m_axi_WSTRB),
        .m_axi_wvalid(videomodule_0_m_axi_WVALID),
        .pixelClock(clk_wiz_0_pixelclk),
        .pixelClockx5(clk_wiz_0_serdesclk),
        .s_axi_araddr(smartconnect_0_M00_AXI_ARADDR),
        .s_axi_arburst(smartconnect_0_M00_AXI_ARBURST),
        .s_axi_arcache(smartconnect_0_M00_AXI_ARCACHE),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen(smartconnect_0_M00_AXI_ARLEN),
        .s_axi_arlock(smartconnect_0_M00_AXI_ARLOCK),
        .s_axi_arprot(smartconnect_0_M00_AXI_ARPROT),
        .s_axi_arqos(smartconnect_0_M00_AXI_ARQOS),
        .s_axi_arready(smartconnect_0_M00_AXI_ARREADY),
        .s_axi_arsize(smartconnect_0_M00_AXI_ARSIZE),
        .s_axi_arvalid(smartconnect_0_M00_AXI_ARVALID),
        .s_axi_awaddr(smartconnect_0_M00_AXI_AWADDR),
        .s_axi_awburst(smartconnect_0_M00_AXI_AWBURST),
        .s_axi_awcache(smartconnect_0_M00_AXI_AWCACHE),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen(smartconnect_0_M00_AXI_AWLEN),
        .s_axi_awlock(smartconnect_0_M00_AXI_AWLOCK),
        .s_axi_awprot(smartconnect_0_M00_AXI_AWPROT),
        .s_axi_awqos(smartconnect_0_M00_AXI_AWQOS),
        .s_axi_awready(smartconnect_0_M00_AXI_AWREADY),
        .s_axi_awsize(smartconnect_0_M00_AXI_AWSIZE),
        .s_axi_awvalid(smartconnect_0_M00_AXI_AWVALID),
        .s_axi_bready(smartconnect_0_M00_AXI_BREADY),
        .s_axi_bresp(smartconnect_0_M00_AXI_BRESP),
        .s_axi_bvalid(smartconnect_0_M00_AXI_BVALID),
        .s_axi_rdata(smartconnect_0_M00_AXI_RDATA),
        .s_axi_rlast(smartconnect_0_M00_AXI_RLAST),
        .s_axi_rready(smartconnect_0_M00_AXI_RREADY),
        .s_axi_rresp(smartconnect_0_M00_AXI_RRESP),
        .s_axi_rvalid(smartconnect_0_M00_AXI_RVALID),
        .s_axi_wdata(smartconnect_0_M00_AXI_WDATA),
        .s_axi_wid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(smartconnect_0_M00_AXI_WLAST),
        .s_axi_wready(smartconnect_0_M00_AXI_WREADY),
        .s_axi_wstrb(smartconnect_0_M00_AXI_WSTRB),
        .s_axi_wvalid(smartconnect_0_M00_AXI_WVALID));
endmodule
