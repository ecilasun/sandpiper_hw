`timescale 1ns / 1ps

module audiocore(
	input wire aclk,
	input wire aresetn,
    input wire audioclock,				// 22.591MHz master clock

	// Command fifo
	output wire m_axi_arready,
	output wire m_axi_awready,
	output wire m_axi_bvalid,
	output wire m_axi_rlast,
	output wire m_axi_rvalid,
	output wire m_axi_wready,
	output wire [1:0] m_axi_bresp,
	output wire [1:0] m_axi_rresp,
	output wire [5:0] m_axi_bid,
	output wire [5:0] m_axi_rid,
	output wire [63:0] m_axi_rdata,
	input wire m_axi_arvalid,
	input wire m_axi_awvalid,
	input wire m_axi_bready,
	input wire m_axi_rready,
	input wire m_axi_wlast,
	input wire m_axi_wvalid,
	input wire [1:0] m_axi_arburst,
	input wire [1:0] m_axi_arlock,
	input wire [2:0] m_axi_arsize,
	input wire [1:0] m_axi_awburst,
	input wire [1:0] m_axi_awlock,
	input wire [2:0] m_axi_awsize,
	input wire [2:0] m_axi_arprot,
	input wire [2:0] m_axi_awprot,
	input wire [31:0] m_axi_araddr,
	input wire [31:0] m_axi_awaddr,
	input wire [3:0] m_axi_arcache,
	input wire [3:0] m_axi_arlen,
	input wire [3:0] m_axi_arqos,
	input wire [3:0] m_axi_awcache,
	input wire [3:0] m_axi_awlen,
	input wire [3:0] m_axi_awqos,
	input wire [5:0] m_axi_arid,
	input wire [5:0] m_axi_awid,
	input wire [5:0] m_axi_wid,
	input wire [63:0] m_axi_wdata,
	input wire [7:0] m_axi_wstrb,

	// DDR
	input wire s_axi_arready,
	input wire s_axi_awready,
	input wire s_axi_bvalid,
	input wire s_axi_rlast,
	input wire s_axi_rvalid,
	input wire s_axi_wready,
	input wire [1:0] s_axi_bresp,
	input wire [1:0] s_axi_rresp,
	input wire [5:0] s_axi_bid,
	input wire [5:0] s_axi_rid,
	input wire [63:0] s_axi_rdata,
	output logic s_axi_arvalid,
	output logic s_axi_awvalid,
	output logic s_axi_bready,
	output logic s_axi_rready,
	output logic s_axi_wlast,
	output logic s_axi_wvalid,
	output logic [1:0] s_axi_arburst,
	output logic [1:0] s_axi_arlock,
	output logic [2:0] s_axi_arsize,
	output logic [1:0] s_axi_awburst,
	output logic [1:0] s_axi_awlock,
	output logic [2:0] s_axi_awsize,
	output logic [2:0] s_axi_arprot,
	output logic [2:0] s_axi_awprot,
	output logic [31:0] s_axi_araddr,
	output logic [31:0] s_axi_awaddr,
	output logic [3:0] s_axi_arcache,
	output logic [3:0] s_axi_arlen,
	output logic [3:0] s_axi_arqos,
	output logic [3:0] s_axi_awcache,
	output logic [3:0] s_axi_awlen,
	output logic [3:0] s_axi_awqos,
	output logic [5:0] s_axi_arid,
	output logic [5:0] s_axi_awid,
	output logic [5:0] s_axi_wid,
	output logic [63:0] s_axi_wdata,
	output logic [7:0] s_axi_wstrb,

	// Output
	output wire audiosampleclk,			// Audio clock
    output wire [31:0] tx_sdout );		// Stream out

// ------------------------------------------------------------------------------------
// Reset CDC
// ------------------------------------------------------------------------------------

(* async_reg = "true" *) logic rstaudion;
(* async_reg = "true" *) logic aresetnA;
(* async_reg = "true" *) logic aresetnB;
always @(posedge audioclock) begin
	aresetnA <= aresetn;
	aresetnB <= aresetnA;
	rstaudion <= aresetnB;
end

// --------------------------------------------------
// Misc
// --------------------------------------------------

wire [31:0] swapcount;

// --------------------------------------------------
// APU command interface
// --------------------------------------------------

wire apufifoempty;
wire [31:0] apufifodout;
wire apufifore;
wire apufifovalid;

commandqueue apucommandinterface(
	.aclk(aclk),
	.aresetn(aresetn),
	.m_axi_araddr(m_axi_araddr),
	.m_axi_arvalid(m_axi_arvalid),
	.m_axi_arready(m_axi_arready),
	.m_axi_arlen(m_axi_arlen),
	.m_axi_arsize(m_axi_arsize),
	.m_axi_arburst(m_axi_arburst),
	.m_axi_rdata(m_axi_rdata),
	.m_axi_rresp(m_axi_rresp),
	.m_axi_rvalid(m_axi_rvalid),
	.m_axi_rready(m_axi_rready),
	.m_axi_rlast(m_axi_rlast),
	.m_axi_awaddr(m_axi_awaddr),
	.m_axi_awvalid(m_axi_awvalid),
	.m_axi_awready(m_axi_awready),
	.m_axi_awlen(m_axi_awlen),
	.m_axi_awsize(m_axi_awsize),
	.m_axi_awburst(m_axi_awburst),
	.m_axi_wdata(m_axi_wdata),
	.m_axi_wstrb(m_axi_wstrb),
	.m_axi_wvalid(m_axi_wvalid),
	.m_axi_wready(m_axi_wready),
	.m_axi_wlast(m_axi_wlast),
	.m_axi_bresp(m_axi_bresp),
	.m_axi_bvalid(m_axi_bvalid),
	.m_axi_bready(m_axi_bready),
	.fifoempty(apufifoempty),
	.fifodout(apufifodout),
	.fifore(apufifore),
	.fifovalid(apufifovalid),
    .devicestate(swapcount));

// ------------------------------------------------------------------------------------
// Clock divider
// ------------------------------------------------------------------------------------

// Counter for generating other divided clocks
bit [8:0] count;
bit asampleclk;
always @(posedge audioclock) begin
	if (~rstaudion) begin
		count <= 9'd0;
		asampleclk <= 1'b0;
	end else begin
		count <= count + 9'd1;
		asampleclk <= count[8];
	end
end

// 44.1KHz output clock for audio
BUFG audioclockbuffer (.O(audiosampleclk), .I(asampleclk));

// ------------------------------------------------------------------------------------
// Command dispatch
// ------------------------------------------------------------------------------------

typedef enum bit [3:0] {
	INIT,
	WCMD, DISPATCH,
	APUSTART,
	APUBUFFERSIZE,
	APUSETRATE,
	STARTDMA, WAITREADADDR, READLOOP,
	FINALIZE } apucmdmodetype;
apucmdmodetype cmdmode = INIT;

bit [3:0] apucmd;			// Command code
bit [3:0] apuburstcount;	// Number of 128 byte DMA bursts
bit [3:0] burstsleft;		// Counter
bit [9:0] apuwordcount;		// Number of words to playback, minus one
bit [31:0] apusourceaddr;	// Memory address to DMA the audio samples from

// Buffer address high bit to control DMA write page
bit writeBufferSelect;

// Internal sample buffers with up to 1K 32 bit(L/R) samples each (2x4096 bytes)
// This means each buffer has: 1024 stereo samples max, 256 bursts to read max
// e.g. for 512x16bit stereo samples  we have 512 pairs to read, 128 bursts to make
// Read and Write regions always alternate between offset 0 and offset 256
bit samplewe;
bit samplere;
bit [1:0] readLowbits;
bit [7:0] writeCursor;
bit [9:0] readCursor;
bit [63:0] sampleIn;
wire [31:0] sampleOut;

wire [8:0] inaddr = {writeBufferSelect, writeCursor};
wire [10:0] outaddr = {~writeBufferSelect, readCursor};

// Internal L/R copies to stream out
bit [31:0] tx_data_lr;
bit re;
assign apufifore = re;
assign tx_sdout = tx_data_lr;

// Internal sample memory
samplemem samplememinst (
  .clka(aclk),
  .wea(samplewe),
  .addra(inaddr),
  .dina(sampleIn),
  .clkb(audioclock),
  .addrb(outaddr),
  .enb(samplere),
  .doutb(sampleOut) );

// Number of buffer swaps so far (CDC from audio clock to bus clock)
bit bufferSwap;
(* async_reg = "true" *) bit bufferSwapCDC1;
(* async_reg = "true" *) bit bufferSwapCDC2;

bit [3:0] sampleoutputrateselector;

always_ff @(posedge aclk) begin
	if (~aresetn) begin
		bufferSwapCDC1 <= 1'b0;
		bufferSwapCDC2 <= 1'b0;
	end else begin
		bufferSwapCDC1 <= bufferSwap;
		bufferSwapCDC2 <= bufferSwapCDC1;
	end
end

// CPU can access this
assign swapcount = {31'd0, bufferSwapCDC2};

localparam SIZE_8_BYTE   = 3'b011;
localparam SIZE_16_BYTE  = 3'b100;

localparam BURST_FIXED = 2'b00;
localparam BURST_INCR  = 2'b01;
localparam BURST_WRAP  = 2'b10;

assign s_axi_arsize = SIZE_8_BYTE;
assign s_axi_arburst = BURST_INCR;

assign s_axi_awsize = SIZE_8_BYTE;
assign s_axi_awburst = BURST_FIXED;

assign s_axi_awaddr = 0;
assign s_axi_awlen = 0;
assign s_axi_wdata = 0;

assign s_axi_awvalid = 0;
assign s_axi_wvalid = 0;
assign s_axi_wstrb = 16'h0000;
assign s_axi_wlast = 0;
assign s_axi_bready = 0;

always_ff @(posedge aclk) begin
	if (~aresetn) begin
		re <= 1'b0;
		samplewe <= 1'b0;
		writeCursor <= 8'd0;
		sampleoutputrateselector <= 4'b0000;
		apuwordcount <= 10'd1023;
		apuburstcount <= 4'd0;
		burstsleft <= 4'd0;
		apucmd <= 4'd0;
		cmdmode <= INIT;
	end else begin
		re <= 1'b0;
		samplewe <= 1'b0;

		case (cmdmode)
			INIT: begin
				s_axi_arvalid <= 0;
				s_axi_rready <= 0;
				cmdmode <= WCMD;
			end

			WCMD: begin
				if (apufifovalid && ~apufifoempty) begin
					apucmd <= apufifodout[3:0];
					// Advance FIFO
					re <= 1'b1;
					// Dispatch cmd
					cmdmode <= DISPATCH;
				end
			end

			DISPATCH: begin
				case (apucmd)
					4'h0:		cmdmode <= APUBUFFERSIZE;	// Set up size of DMA copies and playback range, in words
					4'h1:		cmdmode <= APUSTART;		// Start DMA into write page
					//4'h2:		cmdmode <= APUSETVOL;		// Spare command, unused
					//4'h3:		cmdmode <= APUSWAPCHANNELS;	// Spare command, unused
					4'h4:		cmdmode <= APUSETRATE;		// TODO: Set sample duplication count to x1 (44.1KHz), x2(22.05KHz) or x4(11.025KHz)
					default:	cmdmode <= FINALIZE;		// Invalid command, wait one clock and try next
				endcase
			end

			APUSTART: begin
				if (apufifovalid && ~apufifoempty) begin
					burstsleft <= apuburstcount;
					apusourceaddr <= apufifodout;
					// Advance FIFO
					re <= 1'b1;
					writeCursor <= 8'h00;
					cmdmode <= STARTDMA;
				end
			end

			APUBUFFERSIZE: begin
				if (apufifovalid && ~apufifoempty) begin
					apuwordcount <= apufifodout[9:0];	// Number of buffered words minus one, bytecount/4-1 (0..1023)
					apuburstcount <= apufifodout[10:2];	// Number of 128 byte bursts, burstcount = bytecount/128
					// Advance FIFO
					re <= 1'b1;
					cmdmode <= FINALIZE;
				end
			end

			APUSETRATE: begin
				if (apufifovalid && ~apufifoempty) begin
					// 2'b00:x1, 2'b01:x2, 2'b10:x4, 2'b11:quiet
					unique case(apufifodout[1:0])
						2'b00: sampleoutputrateselector <= 4'b0100;
						2'b01: sampleoutputrateselector <= 4'b0010;
						2'b10: sampleoutputrateselector <= 4'b0001;
						2'b11: sampleoutputrateselector <= 4'b0000;
					endcase
					// Advance FIFO
					re <= 1'b1;
					cmdmode <= FINALIZE;
				end
			end

			STARTDMA: begin
				burstsleft <= burstsleft - 4'd1;
				s_axi_arlen <= 4'hF;
				s_axi_arvalid <= 1;
				s_axi_araddr <= apusourceaddr;
				cmdmode <= WAITREADADDR;
			end

			WAITREADADDR: begin
				if (s_axi_arready) begin
					s_axi_arvalid <= 0;
					s_axi_rready <= 1;
					cmdmode <= READLOOP;
				end
			end

			READLOOP: begin
				if (s_axi_rvalid) begin
					s_axi_rready <= ~s_axi_rlast;
					sampleIn <= s_axi_rdata;
					samplewe <= 1'b1;
					writeCursor <= writeCursor + 8'd1;
					cmdmode <= ~s_axi_rlast ? READLOOP : FINALIZE;
				end
			end

			FINALIZE: begin
				apusourceaddr <= apusourceaddr + 32'd128;
				cmdmode <= burstsleft == 4'd0 ? WCMD : STARTDMA;
			end
		endcase
	end
end

// ------------------------------------------------------------------------------------
// I2S output
// ------------------------------------------------------------------------------------

always@(posedge audioclock) begin
	if (~rstaudion) begin
		tx_data_lr <= 0;
		readCursor <= 10'd0;
		readLowbits <= 2'd0;
		bufferSwap <= 1'd0;
		writeBufferSelect <= 1'b0;
		samplere <= 1'b0;
	end else begin

		samplere <= 1'b0;

		if (count==9'h0ff) begin
			// Step cursor based on playback rate
			{readCursor, readLowbits} <= {readCursor, readLowbits} + {8'd0, sampleoutputrateselector};

			// New sample and read enable control
			tx_data_lr <= sampleoutputrateselector == 4'd0 ? 32'd0 : sampleOut;
			samplere <= sampleoutputrateselector == 4'd0 ? 1'b0 : 1'b1;
		end

		// Read next pair of stereo samples
		tx_data_lr <= sampleoutputrateselector == 4'd0 ? 32'd0 : sampleOut;
		samplere <= sampleoutputrateselector == 4'd0 ? 1'b0 : 1'b1;

		// Increment swap count at end of buffer
		if (readCursor == apuwordcount) begin
			// Switch playback buffer and also swap CPU side r/w page ID
			bufferSwap <= ~bufferSwap;
			writeBufferSelect <= ~writeBufferSelect;
			readCursor <= 10'd0;
			readLowbits <= 2'd0;
		end
	end
end

endmodule
