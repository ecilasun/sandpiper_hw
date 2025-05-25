`timescale 1ns / 1ps

module keyboardmodule(
	input wire aclk,
	input wire aresetn,

	output wire s_axi_arready,
	output wire s_axi_awready,
	output wire s_axi_bvalid,
	output wire s_axi_rlast,
	output wire s_axi_rvalid,
	output wire s_axi_wready,
	output wire [1:0] s_axi_bresp,
	output wire [1:0] s_axi_rresp,
	output wire [5:0] s_axi_bid,
	output wire [5:0] s_axi_rid,
	output wire [63:0] s_axi_rdata,
	input wire s_axi_arvalid,
	input wire s_axi_awvalid,
	input wire s_axi_bready,
	input wire s_axi_rready,
	input wire s_axi_wlast,
	input wire s_axi_wvalid,
	input wire [1:0] s_axi_arburst,
	input wire [1:0] s_axi_arlock,
	input wire [2:0] s_axi_arsize,
	input wire [1:0] s_axi_awburst,
	input wire [1:0] s_axi_awlock,
	input wire [2:0] s_axi_awsize,
	input wire [2:0] s_axi_arprot,
	input wire [2:0] s_axi_awprot,
	input wire [31:0] s_axi_araddr,
	input wire [31:0] s_axi_awaddr,
	input wire [3:0] s_axi_arcache,
	input wire [3:0] s_axi_arlen,
	input wire [3:0] s_axi_arqos,
	input wire [3:0] s_axi_awcache,
	input wire [3:0] s_axi_awlen,
	input wire [3:0] s_axi_awqos,
	input wire [5:0] s_axi_arid,
	input wire [5:0] s_axi_awid,
	input wire [5:0] s_axi_wid,
	input wire [63:0] s_axi_wdata,
	input wire [7:0] s_axi_wstrb,

	// Keyboard scan wires
	output wire [13:0] keyboardcolumns,
	input wire [4:0] keyboardrows );

// NOTE: We have exactly 63 keys on the keyboard so it'll nicely fit into a 64 bit register

keyboardcore keyboardcoreInst(
	.aclk(aclk),
	.aresetn(aresetn),

	// Command FIFO
	.m_axi_araddr(s_axi_araddr),
	.m_axi_arvalid(s_axi_arvalid),
	.m_axi_arready(s_axi_arready),
	.m_axi_arlen(s_axi_arlen),
	.m_axi_arsize(s_axi_arsize),
	.m_axi_arburst(s_axi_arburst),
	.m_axi_rdata(s_axi_rdata),
	.m_axi_rresp(s_axi_rresp),
	.m_axi_rvalid(s_axi_rvalid),
	.m_axi_rready(s_axi_rready),
	.m_axi_rlast(s_axi_rlast),
	.m_axi_awaddr(s_axi_awaddr),
	.m_axi_awvalid(s_axi_awvalid),
	.m_axi_awready(s_axi_awready),
	.m_axi_awlen(s_axi_awlen),
	.m_axi_awsize(s_axi_awsize),
	.m_axi_awburst(s_axi_awburst),
	.m_axi_wdata(s_axi_wdata),
	.m_axi_wstrb(s_axi_wstrb),
	.m_axi_wvalid(s_axi_wvalid),
	.m_axi_wready(s_axi_wready),
	.m_axi_wlast(s_axi_wlast),
	.m_axi_bresp(s_axi_bresp),
	.m_axi_bvalid(s_axi_bvalid),
	.m_axi_bready(s_axi_bready),

	.keyboardcolumns(keyboardcolumns),
	.keyboardrows(keyboardrows));

endmodule