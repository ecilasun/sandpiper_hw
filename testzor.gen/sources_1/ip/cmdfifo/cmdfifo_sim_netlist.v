// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2.2 (win64) Build 6060944 Thu Mar 06 19:10:01 MST 2025
// Date        : Sun Apr 27 18:00:06 2025
// Host        : fastturtle running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim d:/repos/testzor/testzor.gen/sources_1/ip/cmdfifo/cmdfifo_sim_netlist.v
// Design      : cmdfifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "cmdfifo,fifo_generator_v13_2_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_12,Vivado 2024.2.2" *) 
(* NotValidForBitStream *)
module cmdfifo
   (clk,
    rst,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty,
    valid);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 core_clk CLK" *) (* x_interface_mode = "slave core_clk" *) (* x_interface_parameter = "XIL_INTERFACENAME core_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  input rst;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) (* x_interface_mode = "slave FIFO_WRITE" *) input [31:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) (* x_interface_mode = "slave FIFO_READ" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [31:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output valid;

  wire clk;
  wire [31:0]din;
  wire [31:0]dout;
  wire empty;
  wire full;
  wire rd_en;
  wire rst;
  wire valid;
  wire wr_en;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [9:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [9:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [9:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "1" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "10" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "32" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "32" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "1" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "6" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "4" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "0" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "4" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "5" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "1022" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "10" *) 
  (* C_RD_DEPTH = "1024" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "10" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "10" *) 
  (* C_WR_DEPTH = "1024" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "10" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  cmdfifo_fifo_generator_v13_2_12 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(clk),
        .data_count(NLW_U0_data_count_UNCONNECTED[9:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(1'b0),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[9:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(rst),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(valid),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(1'b0),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[9:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.2.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
pMIkX5BxsfS7Ovn5pjQ/UEdrfw3hj7l7b1+RF1KWatNouDBTEXI2FTrNi3QXoe60LYk1LfJl4IHI
Gab8pHfNvYQNt0vjSBSYzpCYrw4zyWQzb+tgGzsddr1Z0lk1S4erEauTTER4H5DmyD8KCLykzQlq
w4VJjfkP8l3Um5LWBoo=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YQRY87Uyu8CA27kY2xcJkiU6X+NbnIGn4YrpTmrt7VTvY4BboUarkFejkVsyszbNRtUNAxOlN3At
6l4iOMNo+zqNNxkrDNVo8xMNmPbEEM09TMxy2oY3zVsDed84fZ8iEr2COI05ivZlYW9L8sLGRNi4
0hb6BoNQ/e1NHmz1dxtVZlVMUeHxWuiD7dCzxdgIkuSQNs49o3hC1zDC+Pd8XmrRO8M6rUaYgagD
5YNKDImD0K781HWWzvDcJHWfSFc3IanASdiG6TuCj6AO6e9Hy3hR8LrV0fee935swGEq+5bPSM3r
ngiZrxiNWZVsFcEUbchX2Q4SBsf/XV9SmnK7CQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
qozW0bQ1R1ZPeJBWXGufIlYyKZ3Gv+D5uvz/eBwm1lhw2KgxP+Xo7RqIgQrMEy6iRIcqqFtaz9IM
OBVj9wuwZmn2LIzTzDET3fAVSGMP77Kex/pKwlbXRyXKE3x6M9RSZghDkjEGE41SNZr+tSKxgWzK
5vie3NHWtHbo+5JsNHQ=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
p6LCpJao7RbTNFYKjudTtzNSk/jqp0TmUJGR5OoMyhUx/2kSiLaHhFXi1bS7OTEAdN0teRmmdlSe
oIxfb4GLq0/RASrpNZXH3ixrd8352u3H+hBWm+1iNr3qrg0S4W6rP6+g8juSmh+Kp6HHDXP4hqOk
3XMAQXWsALDV838sj480Tn/Ifqh/0OicLp8ntXd0uEi25Y4ChBkCBti8oxT3RpMpTOHK8EnrqDJu
y170/KuZ4t1RzBBx3/Udi0yUDrj8fJKhxWFZFBHZMSd2JXrPM/HkAkQX530IMG5p6U2TYOlu1xX7
DxwSQL2Dc5ZY2af4EiZEXXTU82v/ki8rsf/e6Q==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DnuhgON9fyCq88Esdp/sRsM4CJn6Har7lgyWawZbgSTV9rx15srMthU/DTzyCoXRIoM6BFhwDqD0
/viup+QsSwZnddnoxiQySLxul6LnN6fccwbj9CsA3I7Qzvtf7wphaObsVjTh+1xndMT84Hnwt048
XIdDt1jn4q1pKACtl2SvaKgtv4eqQlcclj0kvWaVYQkhAYHbqOyteBrXJMdeTG3T/qcEJkGB2W7k
r29wgwlweqdZ2m7O6OpgfmfXOZYDriU+gNz/G9mHL4RPJY5/XUxTkGCXwkJPCe31sahtIl+et6bp
fdFlBG8PXiW48Hf+M/378YGU8/tEC3i9P6J05w==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
pg4KTs2Ff1jfMs1r4Iy+S4PZC9GMHywN3HzGnMdQC8XYfrJXvzK7ZTUt1OtSafXYiHEzjACFVSyG
NKu3kSjwPAGsttNunlkPRneDqeuaT5QMqvrGWsVToZVVvs0U+WuG0oHJ1jg4WtTRqUiiNZNoR8zc
mhiXRhOEvWwJehzR672qo/cSnOgw2hw5pxJueiUSWzaqLcgeNJaH3NdE/c3J7N9niAM2M70bzeTC
NRnXX2JqnGF8l+bIu/wkHGGz/hQHDVvgdLc2FdD0OELkCK6baPo2Zzt7nRsAbRXzzP9CnurmjCQn
ks6OV73JRG5ntJ63y+LXGJRyyU3eveu/DXTqHg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
B76XTXXPDKL/X8wImzy9vkrynzWNn2sGNV/Rmt3p0azbCKIdrxW6J8AqVw4p0IUxCehRS8akagv3
uFfe2NiUqxcz9RrCzrNdYqJDO666kS3Wmyqlp11CV0LdzUs2Gz84R2y8ZPFWYiHGR5QVUtH+zjhf
6SHkC0yKmjYHDCTSijQNX9+I3cg8gASJlQvdtDqOkrDIXQwTORFKvn/fdT8hAFSUWhgF/Njv0IGO
C402U0ma2cbIPlk+cTjQQyAFbs/puyj0nmJFW69pIhJxEWYogPO4rX5lazsK+eCYRJvTuIFEY1AQ
WsACrViDBz/7gYt+PrXoMdklrX/NQC8Oz2QUvA==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
ntpHLfDwQtAPje/cBR38yFIc94+DcJUOzyFA/yKmvpM5Ud7IwdcM7zM+gRfTZAQJEkk+TPJUeb4f
2tAWQpDYB/fb/1zJYDx2K6meG034maYqlwc6EDwfzy99t9bzumh72wRi8x/HaAnqjCMLHCrONF6x
pU3s6+yx/BF/ZkB0ApWaPtOft72waanGS6sWv+rLC7W/Y7B4+l5COj7PFtRSMkHx4pEU/YsRmLeD
fl51Ewt0dmQW1xF+aoTxP5FvXzsRhIx7IrtgxRzEjngRAQHgwaastI3axnL9KaAsvumYvCfbd2QY
6rjJHqv7F1I1IVhDjkRel40UKec94LCpR4Xif++Ncr3Wg6Z8DmH1LoXFZhhbAZo2u+oUwZHqPuvY
m1JMXCWO6OfGionbHetUCeDYPqMu6wwb+lKzOCsz7bN6aKMDqQOQHIJHi3ARkk57CcClWjsRBP1s
pe9PU49Xk2WQuSxi5tMVsPv63MbCHN/7cxiiMY4usR0zGnk8SHWhpEBb

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
a47+6msQVDLHiwX+KMbTVsRl8Lef8M8tae4dICFk1c5Wp38TPtjstNe4sVFpsPFedAX9Rc2kRli8
bbL+O/qTcdVwalcmaaRQ3TDj+bD6+bm79K4rLJKTGikA0aBlAV18D+DIZqRDgPiFA0asl4A4dJak
OC5hSJRUqekf4pcW370sa7Y7IAcqM/ABilAfs42woCasoM/rwqHoe7c4+Rlooqc5Ol3GJeYuc0Pc
YTPfR6Ks+op7tnNPZXELxnpImyV5Y27EAibnma2fAw/ObrkHEaNAUspwBS6Yzi5zUhwiHT/aVhqH
HHSi1RYDSWxpXYva3Ddikx5DGjSjCZ0mZy1stg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FB1BGsvXsORVA8EaQfx5c81lcAz0UUUKhQ3vCXsTEGwLe6VH5+iXlUI9KZTuwv0Lx8jozPomobRT
M06Zjf+QnMOgI2bbDMqSLpRLY8ytn2g8SQ4iVLQ77MJ1XDHmjhIZcbwp3yM/B+Nnk/kFHtdAIief
IKnm+k2UD8PA+C/Ceds0kXhgIri16gGqiZkbhcOXFHJDt6UoRn94Pki11f0cXNo5wIpsspEuiNlr
CYAHPvx0J5g3+/VjPJgI7jbhKweAJjGJG5xaGKlER/jL8ffHNr4Sy7tx78ocKiahucmT+ziwMJD7
IxIPK2ndqroprlCbgQMdvTePJpyB4vekUA0+Lw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QT99XrN5BcDiszKoVFVRLEkGsDFUMdV0bEFQGPOpjQjbpQogfFYiDVcpBVKFLnQbs7+5F6jPuglR
YuJFvnI8ypPAsbbbPrGSvw8nCfHFJdAUCzm7qyWwEB5qrPcARmcnPuCfFsfME7wQJDTHwZXKCPXb
knoy3xGnjgTB2t8mOtcjVoXuDGvzX3H5xVd4N0YF9yTVcZeZFRTIZeiBWQH0M3/36a4RmgiYUahE
4EFtTIpn3n1Sk5P6QJEwMBwQbjH0Ztwyh9isiZxX0OjzUY3KCjXnm6dOyZySuskwGLQJrLbZ2Kzk
Kd2/QNbp2YJAGHyDXIGpWPWPjqKUAUpksJlwSA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 53648)
`pragma protect data_block
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
D6Il4S2AFADFV/E=
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
