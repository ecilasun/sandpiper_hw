`timescale 1ns / 1ps

module colorpalettemodule (
	input wire aclk,
	input wire aresetn,

	// Palette RAM direct access
	input wire [7:0] paladdr,
	input wire [23:0] paldout,
	input wire palwe,

	// Write address channel
	input wire  s_axi_awvalid,
	output wire s_axi_awready,
	input wire  [31:0] s_axi_awaddr,

	// Write data channel
	input wire  s_axi_wvalid,
	output wire s_axi_wready,
	input wire  [31:0] s_axi_wdata,
	input wire  [3:0] s_axi_wstrb,

	// Write response channel
	output wire s_axi_bvalid,
	input wire  s_axi_bready,
	output wire [1:0] s_axi_bresp,

	// Read address channel
	input wire  s_axi_arvalid,
	output wire s_axi_arready,
	input wire  [31:0] s_axi_araddr,

	// Read data channel
	output wire s_axi_rvalid,
	input wire  s_axi_rready,
	output wire [31:0] s_axi_rdata,
	output wire [1:0] s_axi_rresp,

	// Internal bus for video output reads
	input wire clk25,
	input wire rst25n,
	input wire [2:0] scanmode, // {displaying, scanenable, colormode}
	input wire [15:0] passthroughrgb,
	input wire [7:0] paletteindex,
	output wire [23:0] colordata);

// --- State machine and internal registers ---
reg awready_reg;
reg wready_reg;
reg bvalid_reg;
reg [1:0] bresp_reg;
reg arready_reg;
reg rvalid_reg;
reg [31:0] rdata_reg;
reg [1:0] rresp_reg;

// AXI4-Lite handshake logic
assign s_axi_awready = awready_reg;
assign s_axi_wready = wready_reg;
assign s_axi_bvalid = bvalid_reg;
assign s_axi_bresp = bresp_reg;
assign s_axi_arready = arready_reg;
assign s_axi_rvalid = rvalid_reg;
assign s_axi_rdata = rdata_reg;
assign s_axi_rresp = rresp_reg;

// VPU bus
reg [23:0] paletteentries[0:255];
reg [23:0] paletteout;
reg [7:0] palwaddr;
reg [7:0] palraddr;

initial begin
	$readmemh("colorpalette.mem", paletteentries);
end

// Dual-port RAM style access for palette entries
always @(posedge aclk) begin
	if (~aresetn) begin
		// Do nothing, handled via initial block
	end else begin
		// Handle both AXI and direct writes from VCP core
		// Priority to AXI writes if both happen in same cycle
		case ({s_axi_wvalid, palwe})
			2'b10: paletteentries[palwaddr] <= s_axi_wdata[23:0];
			2'b01: paletteentries[paladdr] <= paldout;
			default: ;
		endcase
	end
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

// --- Write state machine ---
localparam [1:0] WRITE_IDLE = 2'b00;
localparam [1:0] WRITE_ADDR = 2'b01;
localparam [1:0] WRITE_DATA = 2'b10;
localparam [1:0] WRITE_RESP = 2'b11;
reg [1:0] write_state;

always @(posedge aclk or negedge aresetn) begin
	if (!aresetn) begin
		// Reset state
		awready_reg <= 1'b0;
		wready_reg <= 1'b0;
		bvalid_reg <= 1'b0;
		bresp_reg <= 2'b0;
		write_state <= WRITE_IDLE;
		palwaddr <= 8'd0;
	end else begin
		// Write channel logic
		case (write_state)
			WRITE_IDLE: begin
				awready_reg <= 1'b1;
				if (s_axi_awvalid) begin
					palwaddr <= s_axi_awaddr[9:2];
					awready_reg <= 1'b0;
					write_state <= WRITE_DATA;
				end
			end
			WRITE_DATA: begin
				wready_reg <= 1'b1;
				if (s_axi_wvalid) begin
					// Writes from s_axi_wdata[] are handled in the palette RAM always block
					wready_reg <= 1'b0;
					write_state <= WRITE_RESP;
				end
			end
			WRITE_RESP: begin
				bvalid_reg <= 1'b1;
				bresp_reg <= 2'b00; // OKAY response
				if (s_axi_bready) begin
					bvalid_reg <= 1'b0;
					write_state <= WRITE_IDLE;
				end
			end
			default: write_state <= WRITE_IDLE;
		endcase
	end
end

// --- Read state machine ---
localparam [1:0] READ_IDLE = 2'b00;
localparam [1:0] READ_ADDR = 2'b01;
localparam [1:0] READ_DATA = 2'b10;
reg [1:0] read_state;

always @(posedge aclk or negedge aresetn) begin
	if (!aresetn) begin
		// Reset state
		arready_reg <= 1'b0;
		rvalid_reg <= 1'b0;
		rdata_reg <= 0;
		rresp_reg <= 2'b0;
		read_state <= READ_IDLE;
		palraddr <= 8'd0;
	end else begin
		case (read_state)
			READ_IDLE: begin
				arready_reg <= 1'b1;
				if (s_axi_arvalid) begin
					palraddr <= s_axi_araddr[9:2];
					arready_reg <= 1'b0;
					read_state <= READ_DATA;
				end
			end
			READ_DATA: begin
				rdata_reg <= {8'd0, paletteentries[palraddr]};
				rvalid_reg <= 1'b1;
				rresp_reg <= 2'b00; // OKAY response
				if (s_axi_rready) begin
					rvalid_reg <= 1'b0;
					read_state <= READ_IDLE;
				end
			end
			default: read_state <= READ_IDLE;
		endcase
	end
end

endmodule
