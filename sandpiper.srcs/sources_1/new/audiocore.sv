`timescale 1ns / 1ps

module audiocore(
	input wire aclk,
	input wire aresetn,
    input wire audioclock,				// 22.579200MHz master clock (/512 is ~44.1 KHz)

	// Command fifo
	output wire m_axi_arready,
	output wire m_axi_awready,
	output wire m_axi_bvalid,
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
	input wire m_axi_wvalid,
	input wire [1:0] m_axi_arlock,
	input wire [1:0] m_axi_awlock,
	input wire [2:0] m_axi_arprot,
	input wire [2:0] m_axi_awprot,
	input wire [31:0] m_axi_araddr,
	input wire [31:0] m_axi_awaddr,
	input wire [3:0] m_axi_arcache,
	input wire [3:0] m_axi_arqos,
	input wire [3:0] m_axi_awcache,
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
    output bit [31:0] tx_sdout );		// Stream out

// ------------------------------------------------------------------------------------
// Reset CDC
// ------------------------------------------------------------------------------------

(* async_reg = "true" *) logic rstaudion;
(* async_reg = "true" *) logic aresetnA;
always @(posedge audioclock) begin
	aresetnA <= aresetn;
	rstaudion <= aresetnA;
end

// --------------------------------------------------
// Misc
// --------------------------------------------------

wire [31:0] swapcount;
wire [31:0] apustate;

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
	.m_axi_rdata(m_axi_rdata),
	.m_axi_rresp(m_axi_rresp),
	.m_axi_rvalid(m_axi_rvalid),
	.m_axi_rready(m_axi_rready),
	.m_axi_awaddr(m_axi_awaddr),
	.m_axi_awvalid(m_axi_awvalid),
	.m_axi_awready(m_axi_awready),
	.m_axi_wdata(m_axi_wdata),
	.m_axi_wstrb(m_axi_wstrb),
	.m_axi_wvalid(m_axi_wvalid),
	.m_axi_wready(m_axi_wready),
	.m_axi_bresp(m_axi_bresp),
	.m_axi_bvalid(m_axi_bvalid),
	.m_axi_bready(m_axi_bready),
	.fifoempty(apufifoempty),
	.fifodout(apufifodout),
	.fifore(apufifore),
	.fifovalid(apufifovalid),
    .devicestateLow(swapcount),
    .devicestateHigh(apustate));

// ------------------------------------------------------------------------------------
// Clock divider
// ------------------------------------------------------------------------------------

// Counter for generating other divided clocks
bit [8:0] count;
bit counterenabled;

COUNTER_LOAD_MACRO #(
	.COUNT_BY(48'd1),		// Count by 1
	.DEVICE("7SERIES"), 
	.WIDTH_DATA(9) ) counterinst (
	.Q(count),
	.CLK(audioclock), // Assuming this is 22579200Hz, a divide by 512 yields 44100Hz
	.CE(counterenabled),
	.DIRECTION(1'b1),
	.LOAD(~rstaudion),
	.LOAD_DATA(9'd0),
	.RST(1'b0) );

// Rising edge of 44.1KHz clock
BUFG BUFG_inst ( .O(audiosampleclk), .I(count[8]));

// ------------------------------------------------------------------------------------
// Command dispatch
// ------------------------------------------------------------------------------------

typedef enum bit [3:0] {
	INIT,
	WCMD, DISPATCH,
	APUSTART,
	APUSWAPCHANNELS,
	APUBUFFERSIZE,
	APUSETRATE,
	STARTDMA, WAITREADADDR, READLOOP, ADVANCEADDRESS,
	FINALIZE } apucmdmodetype;
apucmdmodetype cmdmode = INIT;

bit [3:0] apucmd;			// Command code
bit [9:0] apuwordcount;		// Number of words to play back
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
bit [8:0] writeCursor;
bit [9:0] readCursor;
bit [63:0] sampleIn;
wire [31:0] sampleOut; // Each sample is a stereo pair

wire [9:0] inaddr = {writeBufferSelect, writeCursor};
wire [10:0] outaddr = {~writeBufferSelect, readCursor};

// Internal L/R copies to stream out
bit [31:0] tx_data_lr;
bit re;
assign apufifore = re;

bit channelSwap;
always_comb begin : channelSwapBlock
	if (channelSwap) begin
		tx_sdout = {tx_data_lr[15:0], tx_data_lr[31:16]};
	end else begin
		tx_sdout = tx_data_lr;
	end
end

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
assign swapcount = {21'd0, apuwordcount, bufferSwapCDC2};
assign apustate = {21'd0, writeBufferSelect, readCursor};

localparam SIZE_4_BYTE   = 3'b010; // 2^2
localparam SIZE_8_BYTE   = 3'b011; // 2^3
localparam SIZE_16_BYTE  = 3'b100; // 2^4

localparam BURST_FIXED = 2'b00;
localparam BURST_INCR  = 2'b01;
localparam BURST_WRAP  = 2'b10;

logic [31:0] burstmask;
logic [31:0] burststate;

always_ff @(posedge aclk) begin
	if (~aresetn) begin
		re <= 1'b0;
		channelSwap <= 1'b0;
		samplewe <= 1'b0;
		writeCursor <= 9'd0;
		sampleoutputrateselector <= 4'b0000;
		apuwordcount <= 10'd0;
		apucmd <= 4'd0;
		burstmask <= 32'h00000000;
		burststate <= 16'h0000;
		counterenabled <= 1'b0;
		s_axi_arvalid <= 0;
		s_axi_rready <= 0;
		s_axi_araddr <= 32'd0;
		s_axi_awlen <= 0;
		s_axi_awsize <= SIZE_4_BYTE;
		s_axi_awburst <= BURST_FIXED;
		s_axi_awvalid <= 0;
		s_axi_awaddr <= 'd0;
		s_axi_wvalid <= 0;
		s_axi_wstrb <= 16'h0000;
		s_axi_wlast <= 0;
		s_axi_wdata <= 'd0;
		s_axi_bready <= 0;
		s_axi_arlen <= 0;
		s_axi_arburst <= BURST_INCR;
		s_axi_arsize <= SIZE_8_BYTE; // 64bit read bus
		cmdmode <= INIT;
	end else begin
		re <= 1'b0;
		samplewe <= 1'b0;

		case (cmdmode)
			INIT: begin
				counterenabled <= 1'b1;
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
					//4'h2:		cmdmode <= APUSETVOLUME;	// Set output volume (0-255)
					4'h3:		cmdmode <= APUSWAPCHANNELS;	// Swap L/R channels
					4'h4:		cmdmode <= APUSETRATE;		// TODO: Set sample duplication count to x1 (44.1KHz), x2(22.05KHz) or x4(11.025KHz)
					default:	cmdmode <= FINALIZE;		// Invalid command, wait one clock and try next
				endcase
			end

			APUSWAPCHANNELS: begin
				if (apufifovalid && ~apufifoempty) begin
					// Swap channels: 1=swap, 0=normal
					channelSwap <= apufifodout[0];
					// Advance FIFO
					re <= 1'b1;
					cmdmode <= FINALIZE;
				end
			end

			APUBUFFERSIZE: begin
				if (apufifovalid && ~apufifoempty) begin

					// Set number of 16byte bursts for each word count (each word is a single stereo pair)
					unique case (apufifodout[2:0])
						3'b000: begin burstmask <= 32'b00000000000000000000000000000011; apuwordcount <= 10'h03F;	end	//  x2,   64 stereo samples (256 bytes)
						3'b001: begin burstmask <= 32'b00000000000000000000000000001111; apuwordcount <= 10'h07F;	end	//  x4,  128 stereo samples (512 bytes)
						3'b010: begin burstmask <= 32'b00000000000000000000000011111111; apuwordcount <= 10'h0FF;	end	//  x8,  256 stereo samples (1 Kbyte)
						3'b011: begin burstmask <= 32'b00000000000000001111111111111111; apuwordcount <= 10'h1FF;	end	// x16,  512 stereo samples (2 Kbytes)
						3'b100: begin burstmask <= 32'b11111111111111111111111111111111; apuwordcount <= 10'h3FF;	end	// x32, 1024 stereo samples (4 Kbytes)
						3'b101: begin burstmask <= 32'b00000000000000000000000000000001; apuwordcount <= 10'h001;   end //  x1,   32 stereo samples (128 bytes
						default begin burstmask <= 32'b00000000000000000000000000000000; apuwordcount <= 0;			end // nothing
					endcase

					// Advance FIFO
					re <= 1'b1;
					cmdmode <= FINALIZE;
				end
			end

			APUSETRATE: begin
				if (apufifovalid && ~apufifoempty) begin
					// Speed: 2'b00:/1, 2'b01:/2, 2'b10:/4, 2'b11:0 (quiet)
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

			APUSTART: begin
				if (apufifovalid && ~apufifoempty) begin
					apusourceaddr <= apufifodout;
					// Advance FIFO
					re <= 1'b1;
					writeCursor <= 9'h1FF;
					burststate <= burstmask;
					cmdmode <= STARTDMA;
				end
			end

			STARTDMA: begin
				s_axi_arvalid <= 1;
				s_axi_araddr <= apusourceaddr;
				s_axi_arlen <= 4'hF;
				// Shift to next burst count
				burststate <= {1'b0, burststate[31:1]};
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
					samplewe <= 1'b1;
					sampleIn <= s_axi_rdata;
					writeCursor <= writeCursor + 9'd1;
					s_axi_rready <= ~s_axi_rlast;
					cmdmode <= s_axi_rlast ? ADVANCEADDRESS : READLOOP;
				end
			end

			ADVANCEADDRESS: begin
				// Are we done?
				if (burststate[0] == 1'b0) begin
					cmdmode <= FINALIZE;
				end else begin
					// Next burst
					cmdmode <= STARTDMA;
				end
				// Next burst always starts 128 bytes away from current one
				apusourceaddr <= apusourceaddr + 128;
			end

			FINALIZE: begin
				cmdmode <= WCMD;
			end
		endcase
	end
end

// ------------------------------------------------------------------------------------
// Audio output
// ------------------------------------------------------------------------------------

// Next clock is end of 44.1KHz cycle, advance read cursor and prepare to read next sample
always@(posedge audioclock) begin
	if (~rstaudion) begin
		tx_data_lr <= 0;
		readCursor <= 10'd0;
		readLowbits <= 2'd0;
		bufferSwap <= 1'd0;
		writeBufferSelect <= 1'b0;
		samplere <= 1'b0;

	end else begin	

		// Increment cursor on rising edge of sample clock
		if (count==9'h0ff) begin
			// Step cursor based on playback rate (+1.0, +0.5, +0.25 or +0.0)
			{readCursor, readLowbits} <= {readCursor, readLowbits} + {8'd0, sampleoutputrateselector};
		end

		// Next pair of stereo samples
		tx_data_lr <= sampleoutputrateselector == 4'd0 ? 32'd0 : sampleOut;
		samplere <= sampleoutputrateselector == 4'd0 ? 1'b0 : 1'b1;

		// Did we reach the last stereo sample?
		if (readCursor == apuwordcount) begin
			// Switch playback buffers
			bufferSwap <= ~bufferSwap;
			// Swap CPU side r/w page ID
			writeBufferSelect <= ~writeBufferSelect;
			// Rewind read cursor (final read address is pageindex:readcursor)
			readCursor <= 10'd0;
			readLowbits <= 2'd0;
		end
	end
end

endmodule
