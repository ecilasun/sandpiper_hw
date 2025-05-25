`timescale 1ns / 1ps
`default_nettype none

module videocore(
	input wire aclk,
	input wire clk25,
	input wire clk125,
	input wire aresetn,

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

	output wire HDMI_CLK_p,
	output wire HDMI_CLK_n,
	output wire [2:0] HDMI_TMDS_p,
	output wire [2:0] HDMI_TMDS_n,
	//input wire HDMI_CEC,
	//inout wire HDMI_SDA,
	//inout wire HDMI_SCL,
	//input wire HDMI_HPD,
	input wire audiosampleclk,
	input wire [31:0] audiosampleLR);

// ------------------------------------------------------------------------------------
// Reset CDC
// ------------------------------------------------------------------------------------

(* async_reg = "true" *) logic rst25n;
(* async_reg = "true" *) logic aresetnA;
(* async_reg = "true" *) logic aresetnB;
always @(posedge clk25) begin
	aresetnA <= aresetn;
	aresetnB <= aresetnA;
	rst25n <= aresetnB;
end

// --------------------------------------------------
// VPU command interface
// --------------------------------------------------

wire vpufifoempty;
wire [31:0] vpufifodout;
wire vpufifore;
wire vpufifovalid;
wire [31:0] vpustate;

commandqueue vpucommandinterface(
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
	.fifoempty(vpufifoempty),
	.fifodout(vpufifodout),
	.fifore(vpufifore),
	.fifovalid(vpufifovalid),
    .devicestateLow(vpustate),
    .devicestateHigh(32'd0));

// --------------------------------------------------
// HDMI video output 640x480 @ 60Hz
// --------------------------------------------------

wire [9:0] video_x;
wire [9:0] video_y;
wire notblank = (video_x < 10'd640) && (video_y < 10'd480);

wire [23:0] rgbdat;
wire [2:0] tmds;
wire tmds_clock;

// "SndPipe" "FPGA" "Game" 60Hz 640x480 44.1KHz 16bit
hdmi #(.VIDEO_ID_CODE(1), .IT_CONTENT(1'b1), .VIDEO_REFRESH_RATE(60.0), .VENDOR_NAME({"SndPipe", 8'd0}), .PRODUCT_DESCRIPTION({"FPGA", 96'd0}), .SOURCE_DEVICE_INFORMATION(8), .AUDIO_RATE(44100), .AUDIO_BIT_WIDTH(16)) HDMIInst(
    .clk_pixel_x5(clk125),
    .clk_pixel(clk25),
    .clk_audio(audiosampleclk),
    .reset(~rst25n),
    .rgb(rgbdat),
    .audio_sample_word( {audiosampleLR[31:16], audiosampleLR[15:0]} ),
	// HDMI data out
    .tmds(tmds),
    .tmds_clock(tmds_clock),
	// Current pixel position
	.cx(video_x),
    .cy(video_y));

genvar i;
generate
    for (i = 0; i < 3; i++)
    begin: obufds_gen
        OBUFDS #(.IOSTANDARD("TMDS_33")) obufds (.I(tmds[i]), .O(HDMI_TMDS_p[i]), .OB(HDMI_TMDS_n[i]));
    end
    OBUFDS #(.IOSTANDARD("TMDS_33")) obufds_clock(.I(tmds_clock), .O(HDMI_CLK_p), .OB(HDMI_CLK_n));
endgenerate

// --------------------------------------------------
// Scan setup
// --------------------------------------------------

// NOTE: First, set up the scanout address, then enable video scanout
logic [31:0] scanaddr;
logic [31:0] scanoffset;
logic [10:0] scaninc;
logic scanenable;

// --------------------------------------------------
// Common
// --------------------------------------------------

logic cmdre;
assign vpufifore = cmdre;

// --------------------------------------------------
// Setup
// --------------------------------------------------

logic [9:0] lastscanline;
logic [9:0] burstmask;
logic scanwidth;			// 0:320 pixel wide, 1:640 pixel wide
logic colormode;			// 0:indexed color, 1:16bit color


// --------------------------------------------------
// Scanline cache
// --------------------------------------------------

// Sufficient space for 2048x8bit pixels
logic [63:0] scanlinecache [0:255];

initial begin
	for (int i=0; i<256; i=i+1) begin
		scanlinecache[i] = {i[7:0],i[7:0],i[7:0],i[7:0],i[7:0],i[7:0],i[7:0],i[7:0]};
	end
end

wire [63:0] scanlinedout;
logic [63:0] scanlinedin;
logic scanlinewe;
logic [7:0] scanlinewa;
logic [7:0] scanlinera;
logic [7:0] rdata_cnt;

always @(posedge aclk) begin
	/*if (~aresetn) begin
		
	end else begin*/
		if (scanlinewe)
			scanlinecache[scanlinewa] <= scanlinedin;
	/*end*/
end
assign scanlinedout = scanlinecache[scanlinera];

// --------------------------------------------------
// Output address selection
// --------------------------------------------------

logic [3:0] pixelscanaddr;

always_comb begin
	unique case ({scanwidth, colormode})
		2'b00: begin pixelscanaddr = video_x[4:1];			scanlinera = {2'b0, video_x[9:4]}; end	// 320*240 8bpp,  5x64byte blocks, index = 1*(x/2)/8
		2'b01: begin pixelscanaddr = {1'b0,video_x[3:1]};	scanlinera = {1'b0, video_x[9:3]}; end	// 320*240 16bpp 10x64byte blocks, index = 2*(x/2)/8
		2'b10: begin pixelscanaddr = video_x[3:0];			scanlinera = {1'b0, video_x[9:3]}; end	// 640*480 8bpp  10x64byte blocks, index = 1*(x/1)/8
		2'b11: begin pixelscanaddr = {1'b0,video_x[2:0]};	scanlinera = video_x[9:2]; end			// 640*480 16bpp 20x64byte blocks, index = 2*(x/1)/8
	endcase
end

// --------------------------------------------------
// Output color
// --------------------------------------------------

logic [11:0] rgbcolor;
logic [7:0] paletteindex;

// 4x 16bit pixels
always_comb begin
	// Pixel data is 12 bits but stored as 16 bits (the spare 4 bits are unused for now, could be utilized as alpha etc
	unique case (pixelscanaddr[1:0])
		//                   R:G:B                    TODO: Use as dual-plane blend factor
		2'b00: rgbcolor = { scanlinedout[11:0]     }; // scanlinedout[15:12]
		2'b01: rgbcolor = { scanlinedout[27:16]    }; // scanlinedout[31:28]
		2'b10: rgbcolor = { scanlinedout[43:32]    }; // scanlinedout[47:44]
		2'b11: rgbcolor = { scanlinedout[59:48]    }; // scanlinedout[63:60]
	endcase
end

// 8x 8bit pixels
always_comb begin
	unique case (pixelscanaddr[2:0])
		3'b000: paletteindex = scanlinedout[7:0];
		3'b001: paletteindex = scanlinedout[15:8];
		3'b010: paletteindex = scanlinedout[23:16];
		3'b011: paletteindex = scanlinedout[31:24];
		3'b100: paletteindex = scanlinedout[39:32];
		3'b101: paletteindex = scanlinedout[47:40];
		3'b110: paletteindex = scanlinedout[55:48];
		3'b111: paletteindex = scanlinedout[63:56];
	endcase
end

// --------------------------------------------------
// Palette RAM
// --------------------------------------------------

logic [11:0] palettedin;
logic [7:0] palettewa;
logic palettewe;

logic [11:0] paletteentries[0:255];

initial begin
	$readmemh("colorpalette.mem", paletteentries);
end

// Write port
always @(posedge aclk) begin
	if (palettewe)
		paletteentries[palettewa] <= palettedin;
end

// Read port
logic [11:0] paletteout;
always @(posedge clk25) begin
	if (~rst25n) begin
		paletteout <= 12'd0;
	end else begin
		case ({notblank, scanenable, colormode})
			3'b110: paletteout <= paletteentries[paletteindex];
			3'b111: paletteout <= rgbcolor;
			3'b100,
			3'b101: paletteout <= 12'h334;
			default: paletteout <= 12'h000;
		endcase
	end
end

// --------------------------------------------------
// AXI4 defaults
// --------------------------------------------------

localparam SIZE_8_BYTE   = 3'b011;
localparam SIZE_16_BYTE  = 3'b100;

localparam BURST_FIXED = 2'b00;
localparam BURST_INCR  = 2'b01;
localparam BURST_WRAP  = 2'b10;

// --------------------------------------------------
// Command FIFO
// --------------------------------------------------

typedef enum logic [3:0] {
	WCMD, DISPATCH,
	SETVPAGE,
	SETPAL,
	VMODE,
	VSCANSIZE,
	FINALIZE } vpucmdmodetype;
vpucmdmodetype cmdmode = WCMD;

logic [31:0] vpucmd;

always_ff @(posedge aclk) begin
	if (~aresetn) begin
		vpucmd <= 32'd0;
		scanaddr <= 32'h18000000; // Default scan-out address if the OS has not set up anything else
		burstmask <= 10'b0000000111;
		lastscanline <= 10'd523;
		palettedin <= 12'd0;
		scanenable <= 1'b0;
		cmdre <= 1'b0;
		scanwidth <= 1'b0;
		colormode <= 1'b0;
		palettewe <= 1'b0;
		cmdmode <= WCMD;
		palettewa <= 8'd0;
		scaninc <= 11'd320;
	end else begin
		cmdre <= 1'b0;
		palettewe <= 1'b0;

		case (cmdmode)
			WCMD: begin
				if (vpufifovalid && ~vpufifoempty) begin
					vpucmd <= vpufifodout;
					// Advance FIFO
					cmdre <= 1'b1;
					// Dispatch cmd
					cmdmode <= DISPATCH;
				end
			end

			DISPATCH: begin
				case (vpucmd[7:0])
					8'h00:		cmdmode <= SETVPAGE;	// Set the scanout start address (followed by 32bit cached memory address, 64 byte cache aligned)
					8'h01:		cmdmode <= SETPAL;		// Set 24 bit color palette entry (followed by 8bit address+24bit color in next word)
					8'h02:		cmdmode <= VMODE;		// Set up video mode or turn off scan logic (default is 320x240*8bit paletted)
					default:	cmdmode <= FINALIZE;	// Invalid command, wait one clock and try next
				endcase
			end

			SETVPAGE: begin
				if (vpufifovalid && ~vpufifoempty) begin
					scanaddr <= vpufifodout;	// Set new video scanout address (64 byte cache aligned, as we read in bursts)
					// Advance FIFO
					cmdre <= 1'b1;
					cmdmode <= FINALIZE;
				end
			end

			SETPAL: begin
				if (vpufifovalid && ~vpufifoempty) begin
					palettewe <= 1'b1;					// NOTE: This can change anywhere on a scanline as with older machines
					palettewa <= vpufifodout[31:24];	// 8 bit palette index
					//??? <= vpufifodout[23:16];		// 8 bit extra data, unused
					//??? <= vpufifodout[15:11];		// 4 bit extra data, alpha perhaps?
					palettedin <= vpufifodout[11:0];	// 12 bit color
					// Advance FIFO
					cmdre <= 1'b1;
					cmdmode <= FINALIZE;
				end
			end

			VMODE: begin
				if (vpufifovalid && ~vpufifoempty) begin
					scanenable <= vpufifodout[0];	// 0:video output disabled, 1:video output enabled
					scanwidth <= vpufifodout[1];	// 0:320-wide, 1:640-wide
					colormode <= vpufifodout[2];	// 0:8bit indexed, 1:16bit rgb
					lastscanline <= vpufifodout[1] ? 10'd524 : 10'd523;
					// ? <= vpufifodout[31:3] unused for now

					// Set up burst count depending on video width and bit depth
					// Upper 4 bits contain whole burst count (i.e. N * 4'hF)
					// Lower 4 bits contain partial burst length
					unique case (vpufifodout[2:1])
						2'b00: burstmask <= 10'b0000000111; // 320*240 8bpp, 3*128
						2'b01: burstmask <= 10'b0000011111; // 640*480 8bpp, 5*128
						2'b10: burstmask <= 10'b0000011111; // 320*240 16bpp, 5*128
						2'b11: burstmask <= 10'b1111111111; // 640*480 16bpp, 10*128
					endcase

					// Advance FIFO
					cmdre <= 1'b1;
					cmdmode <= VSCANSIZE;
				end
			end

			VSCANSIZE: begin
				// Number of bytes per scanline for each video mode  
				unique case (vpufifodout[2:1])
					2'b00: scaninc <= 11'd320;	// 320*240 8bpp
					2'b01: scaninc <= 11'd640;	// 640*480 8bpp
					2'b10: scaninc <= 11'd640;	// 320*240 16bpp
					2'b11: scaninc <= 11'd1280;	// 640*480 16bpp
				endcase
				cmdmode <= FINALIZE;
			end

			FINALIZE: begin
				cmdmode <= WCMD;
			end
		endcase

	end
end

// --------------------------------------------------
// Scan-out logic
// --------------------------------------------------

wire startofrowp = video_x == 10'd0;
wire endofcolumnp = video_y == 10'd490;
wire vsyncnow = startofrowp && endofcolumnp;

logic blankt;
always_ff @(posedge clk25) begin
	if (~rst25n) begin
		blankt <= 1'b0;
	end else begin
		blankt <= vsyncnow ? ~blankt : blankt;
	end
end

(* async_reg = "true" *) logic [9:0] scanlinepre;
(* async_reg = "true" *) logic [9:0] scanline;
(* async_reg = "true" *) logic [9:0] scanpixelpre;
(* async_reg = "true" *) logic [9:0] scanpixel;
(* async_reg = "true" *) logic blanktogglepre;
(* async_reg = "true" *) logic blanktoggle;

// Vertical blanking and pixel tracking
always_ff @(posedge aclk) begin
	if (~aresetn) begin
		scanline <= 10'd0;
		scanlinepre <= 10'd0;
		scanpixelpre <= 10'd0;
		scanpixel <= 10'd0;
		blanktogglepre <= 1'b0;
		blanktoggle <= 1'b0;
	end else begin
		scanlinepre <= video_y;
		scanline <= scanlinepre;
		scanpixelpre <= video_x;
		scanpixel <= scanpixelpre;
		blanktogglepre <= blankt;
		blanktoggle <= blanktogglepre;
	end
end

wire endofline = (scanpixel == 10'd640) ? 1'b1 : 1'b0;
wire endofframe = (scanline == 10'd479) ? 1'b1 : 1'b0;

// {0,scanline[9:0],vsynctoggle[0:0]}
assign vpustate = {21'd0, scanline, blanktoggle};

typedef enum logic [2:0] {DETECTFRAMESTART, STARTLOAD, STARTSCANOUT, WAITADDR, DATABURST, ADVANCESCANLINEADDRESS} scanstatetype;
scanstatetype scanstate;

logic [9:0] burststate;
always_ff @(posedge aclk) begin
	if (~aresetn) begin
		scanlinewe <= 1'b0;
		s_axi_arvalid <= 0;
		s_axi_rready <= 0;
		s_axi_araddr <= 32'd0;
		s_axi_awlen <= 0;
		s_axi_awsize <= 0;
		s_axi_awburst <= 2'b00;
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
		scanoffset <= 32'd0;
		scanlinewa <= 8'd0;
		rdata_cnt <= 8'd0;
		burststate <= 10'd0;
		scanstate <= DETECTFRAMESTART;
	end else begin
		scanlinewe <= 1'b0;
		case (scanstate)
			DETECTFRAMESTART: begin
				// When we reach the last odd scanline, start loading the cache
				if (scanenable && (scanline == lastscanline)) begin
					// Video width and framebuffer address can only be changed on last scanline
					scanoffset <= scanaddr;
					scanstate <= STARTLOAD;
				end else begin
					scanstate <= DETECTFRAMESTART;
				end
			end

			STARTLOAD: begin
				// Only read on odd lines in 320-wide, or every other line in 640-wide mode
				// The trick here: we'll initially hit odd-even-even-odd sequence which means
				// the cache line we loaded on line 523 will only reload on line 1 after it's been displayed twice in 320 mode
				if (endofline && (scanline[0] || scanwidth)) begin
					rdata_cnt <= 8'd0;
					burststate <= burstmask;
					scanstate <= endofframe ? DETECTFRAMESTART : STARTSCANOUT;
				end else begin
					scanstate <= STARTLOAD;
				end
			end
			
			STARTSCANOUT: begin
				s_axi_arvalid <= 1'b1;
				s_axi_araddr <= scanoffset;
				s_axi_arlen <= 4'hF;
				// Shift to next burst count
				burststate <= {1'b0, burststate[9:1]};
				scanstate <= WAITADDR;
			end

			WAITADDR: begin
				if (/*s_axi_arvalid && */s_axi_arready) begin
					s_axi_arvalid <= 0;
					s_axi_rready <= 1;
					scanstate <= DATABURST;
				end else begin
					scanstate <= WAITADDR;
				end
			end

			DATABURST: begin
				if (s_axi_rvalid  /*&& s_axi_rready*/) begin
					// Load data into scanline cache in 64bit chunks (8 pixels at 8bpp, 40 of them and so on)
					// NOTE: video mode control sets up burst length
					scanlinewe <= 1'b1;
					scanlinewa <= rdata_cnt;
					scanlinedin <= s_axi_rdata;
					rdata_cnt <= rdata_cnt + 8'd1;
					s_axi_rready <= ~s_axi_rlast;
					scanstate <= s_axi_rlast ? ADVANCESCANLINEADDRESS : DATABURST;
				end else begin
					scanstate <= DATABURST;
				end
			end

			ADVANCESCANLINEADDRESS: begin
				// Are we done?
				if (burststate[0] == 1'b0) begin
					scanstate <= STARTLOAD;
				end else begin
					// Next burst
					scanstate <= STARTSCANOUT;
				end
				// Next burst or scanline always starts 128 bytes away from current one to make hardware simpler
				// i.e. once we're at the last burst of a scanline, next one is same distance as this one's to previous
				scanoffset <= scanoffset + 128;
			end

		endcase
	end
end

// --------------------------------------------------
// Final output
// --------------------------------------------------

// 12 bit RGB output expanded to 24 bit (using top 4 bits per component only)
assign rgbdat = {paletteout[11:8], 4'h0, paletteout[7:4], 4'h0, paletteout[3:0], 4'h0};

endmodule
