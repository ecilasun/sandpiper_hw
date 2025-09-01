`timescale 1ns / 1ps

// Video Coprocessor Module

module vcpmodule(
	input wire aclk,
	input wire aresetn,
	input wire [9:0] scanline,
	input wire [9:0] scanpixel,
	input wire execena,
	// AXI4 wires for command interface to the CPU
	output reg s_axi_arready,
	output reg s_axi_awready,
	output reg s_axi_bvalid,
	output reg s_axi_rlast,
	output reg s_axi_rvalid,
	output reg s_axi_wready,
	output wire [1:0] s_axi_bresp,
	output wire [1:0] s_axi_rresp,
	output wire [5:0] s_axi_bid,
	output wire [5:0] s_axi_rid,
	output reg [63:0] s_axi_rdata,
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
	// AXI4 wires for memory access
	input wire m_axi_arready,
	input wire m_axi_awready,
	input wire m_axi_bvalid,
	input wire m_axi_rlast,
	input wire m_axi_rvalid,
	input wire m_axi_wready,
	input wire [1:0] m_axi_bresp,
	input wire [1:0] m_axi_rresp,
	input wire [5:0] m_axi_bid,
	input wire [5:0] m_axi_rid,
	input wire [63:0] m_axi_rdata,
	output wire m_axi_arvalid,
	output wire m_axi_awvalid,
	output wire m_axi_bready,
	output wire m_axi_rready,
	output wire m_axi_wlast,
	output wire m_axi_wvalid,
	output wire [1:0] m_axi_arburst,
	output wire [1:0] m_axi_arlock,
	output wire [2:0] m_axi_arsize,
	output wire [1:0] m_axi_awburst,
	output wire [1:0] m_axi_awlock,
	output wire [2:0] m_axi_awsize,
	output wire [2:0] m_axi_arprot,
	output wire [2:0] m_axi_awprot,
	output wire [31:0] m_axi_araddr,
	output wire [31:0] m_axi_awaddr,
	output wire [3:0] m_axi_arcache,
	output wire [3:0] m_axi_arlen,
	output wire [3:0] m_axi_arqos,
	output wire [3:0] m_axi_awcache,
	output wire [3:0] m_axi_awlen,
	output wire [3:0] m_axi_awqos,
	output wire [5:0] m_axi_arid,
	output wire [5:0] m_axi_awid,
	output wire [5:0] m_axi_wid,
	output wire [63:0] m_axi_wdata,
	output wire [7:0] m_axi_wstrb);

assign s_axi_bresp = 2'b00;
assign s_axi_rresp = 2'b00;
assign s_axi_bid = 6'd0;
assign s_axi_rid = 6'd0;

reg [3:0] cpuwe;
reg [11:0] cpuaddr;
reg [31:0] cpudin;

// Program memory

wire vcpre;
wire [3:0] vcpwe;
wire [11:0] vcpaddr;
wire [31:0] vcpdin;
wire [31:0] vcpdout;

vcpmemory vcpInstruction (
  .clka(aclk),
  // CPU side - write only
  .ena(1'b0),
  .wea(cpuwe),
  .addra(cpuaddr),
  .dina(cpudin),
  .douta(),
  // VCP side - read / write
  .clkb(aclk),
  .enb(vcpre),
  .web(vcpwe),
  .addrb(vcpaddr),
  .dinb(vcpdin),
  .doutb(vcpdout) );

// CPU side control

// AXI
reg [1:0] waddrstate;
reg [1:0] writestate;

// AXI write
always @(posedge aclk) begin
	if (~aresetn) begin
		waddrstate <= 2'b00;
		cpuaddr <= 12'd0;
	end else begin
		case (waddrstate)
			2'b00: begin
				s_axi_awready <= 1'b0;
				waddrstate <= 2'b01;
			end
			2'b01: begin
				if (s_axi_awvalid) begin
					// TODO: Check address to see if we're writing to control registers or program memory
					cpuaddr <= s_axi_awaddr[13:2];
					s_axi_awready <= 1'b1;
					waddrstate <= 2'b10;
				end
			end
			2'b10: begin
				s_axi_awready <= 1'b0;
				waddrstate <= 2'b01;
			end
		endcase
	end
end

always @(posedge aclk) begin
	if (~aresetn) begin
		writestate <= 2'b00;
		cpuwe <= 4'd0;
		cpudin <= 32'd0;
	end else begin
		cpuwe <= 4'd0;
		s_axi_wready <= 1'b0;
		s_axi_bvalid <= 1'b0;
	
		case (writestate)
			2'b00: begin
				s_axi_bvalid <= 1'b0;
				s_axi_wready <= 1'b0;
				writestate <= 2'b01;
			end
			2'b01: begin
				if (s_axi_wvalid) begin
					cpuwe <= 4'hf;
					cpudin <= s_axi_wdata[31:0];
					writestate <= 2'b10;
					s_axi_wready <= 1'b1;
				end
			end
			2'b10: begin
				if (s_axi_bready) begin
					s_axi_bvalid <= 1'b1;
					writestate <= 2'b01;
				end
			end
		endcase
	end
end

// VCP core
vcpcore VCP(
	.aclk(aclk),
	.aresetn(aresetn),
	.execena(execena),
	.scanline(scanline),
	.scanpixel(scanpixel),
	.vcpre(vcpre),
	.vcpwe(vcpwe),
	.vcpaddr(vcpaddr),
	.vcpdin(vcpdin),
	.vcpdout(vcpdout),
	.m_axi_arready(m_axi_arready),
	.m_axi_awready(m_axi_awready),
	.m_axi_bvalid(m_axi_bvalid),
	.m_axi_rlast(m_axi_rlast),
	.m_axi_rvalid(m_axi_rvalid),
	.m_axi_wready(m_axi_wready),
	.m_axi_bresp(m_axi_bresp),
	.m_axi_rresp(m_axi_rresp),
	.m_axi_bid(m_axi_bid),
	.m_axi_rid(m_axi_rid),
	.m_axi_rdata(m_axi_rdata),
	.m_axi_arvalid(m_axi_arvalid),
	.m_axi_awvalid(m_axi_awvalid),
	.m_axi_bready(m_axi_bready),
	.m_axi_rready(m_axi_rready),
	.m_axi_wlast(m_axi_wlast),
	.m_axi_wvalid(m_axi_wvalid),
	.m_axi_arburst(m_axi_arburst),
	.m_axi_arlock(m_axi_arlock),
	.m_axi_arsize(m_axi_arsize),
	.m_axi_awburst(m_axi_awburst),
	.m_axi_awlock(m_axi_awlock),
	.m_axi_awsize(m_axi_awsize),
	.m_axi_arprot(m_axi_arprot),
	.m_axi_awprot(m_axi_awprot),
	.m_axi_araddr(m_axi_araddr),
	.m_axi_awaddr(m_axi_awaddr),
	.m_axi_arcache(m_axi_arcache),
	.m_axi_arlen(m_axi_arlen),
	.m_axi_arqos(m_axi_arqos),
	.m_axi_awcache(m_axi_awcache),
	.m_axi_awlen(m_axi_awlen),
	.m_axi_awqos(m_axi_awqos),
	.m_axi_arid(m_axi_arid),
	.m_axi_awid(m_axi_awid),
	.m_axi_wid(m_axi_wid),
	.m_axi_wdata(m_axi_wdata),
	.m_axi_wstrb(m_axi_wstrb));

endmodule
