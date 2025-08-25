`timescale 1ns / 1ps

module colorpalettemodule(
	input wire aclk,
	input wire aresetn,
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
	// Internal bus for video output reads
	input wire clk25,
	input wire rst25n,
	input wire [2:0] scanmode, // {displaying, scanenable, colormode}
	input wire [15:0] passthroughrgb,
	input wire [7:0] paletteindex,
	output wire [23:0] colordata);
	
assign s_axi_bresp = 2'b00;
assign s_axi_rresp = 2'b00;
assign s_axi_bid = 6'd0;
assign s_axi_rid = 6'd0;

// VPU bus
reg [23:0] paletteentries[0:255];
reg [23:0] paletteout;

initial begin
	$readmemh("colorpalette.mem", paletteentries);
end

// Read port for VPU
always @(posedge clk25) begin
	if (~rst25n) begin
		paletteout <= 24'd0;
	end else begin
		case (scanmode)
			3'b110: paletteout <= paletteentries[paletteindex];
			3'b111: paletteout <= {passthroughrgb[15:11], 3'b0, passthroughrgb[10:5], 2'b0, passthroughrgb[4:0], 3'b0}; // Expand from 16 to 24 bits
			3'b100,
			3'b101: paletteout <= 24'h333333;
			default: paletteout <= 24'h000000;
		endcase
	end
end

assign colordata = paletteout;

// AXI
reg [1:0] waddrstate;
reg [1:0] writestate;
reg [1:0] raddrstate;
reg [7:0] palwaddr;
reg [7:0] palraddr;

// AXI write
always @(posedge aclk) begin
	if (~aresetn) begin
		waddrstate <= 2'b00;
		palwaddr <= 8'd0;
	end else begin
		case (waddrstate)
			2'b00: begin
				s_axi_awready <= 1'b0;
				waddrstate <= 2'b01;
			end
			2'b01: begin
				if (s_axi_awvalid) begin
					palwaddr <= s_axi_awaddr[9:2];
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
	end else begin
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
					paletteentries[palwaddr] <= s_axi_wdata[23:0];
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

// AXI read
always @(posedge aclk) begin
	if (~aresetn) begin
		raddrstate <= 2'b00;
		s_axi_rlast <= 1'b0;
		palraddr <= 8'd0;
	end else begin
		s_axi_rvalid <= 1'b0;
		s_axi_arready <= 1'b0;
		s_axi_rlast <= 1'b0;

		case (raddrstate)
			2'b00: begin
				s_axi_arready <= 1'b0;
				s_axi_rvalid <= 1'b0;
				raddrstate <= 2'b01;
			end
			2'b01: begin
				if (s_axi_arvalid) begin
					s_axi_arready <= 1'b1;
					palraddr <= s_axi_araddr[9:2];
					raddrstate <=  2'b10; // =0x_0 low device state
				end
			end
			2'b10: begin
				if (s_axi_rready) begin
					s_axi_rdata <= {40'd0, paletteentries[palraddr]};
					s_axi_rvalid <= 1'b1;
					s_axi_rlast <= 1'b1;
					raddrstate <= 2'b01;
				end
			end
		endcase
	end
end

endmodule
