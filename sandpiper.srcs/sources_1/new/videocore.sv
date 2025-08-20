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
// 1: 640x480x60 @25.2MHz
// 4: 1280x720x60 @74.25MHz
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
logic [31:0] scanaddrsecondary;
logic [31:0] scanoffset;
logic scanenable;
logic syncmode;
logic swapmode;

// --------------------------------------------------
// Common
// --------------------------------------------------

logic cmdre;
assign vpufifore = cmdre;

(* async_reg = "true" *) logic [9:0] scanlinepre;
(* async_reg = "true" *) logic [9:0] scanline;
(* async_reg = "true" *) logic [9:0] scanpixelpre;
(* async_reg = "true" *) logic [9:0] scanpixel;
(* async_reg = "true" *) logic blanktogglepre;
(* async_reg = "true" *) logic blanktoggle;
(* async_reg = "true" *) logic displayingpre;
(* async_reg = "true" *) logic displaying;

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
logic [7:0] scanlinewa_offset;
logic [7:0] scanlinera;
logic [7:0] scanlinera_offset;
logic [7:0] rdata_cnt;
logic [3:0] pixel_offset;

always @(posedge aclk) begin
	if (scanlinewe)
		scanlinecache[scanlinewa + scanlinewa_offset] <= scanlinedin;
end
assign scanlinedout = scanlinecache[scanlinera + scanlinera_offset];

// --------------------------------------------------
// Output address selection
// --------------------------------------------------

logic [3:0] pixelscanaddr;
wire [9:0] video_x_shifted = video_x + pixel_offset;

always_comb begin
	unique case ({scanwidth, colormode})
		2'b00: begin pixelscanaddr = video_x_shifted[4:1];			scanlinera = {2'b0, video_x_shifted[9:4]}; end	// 320*240 8bpp,  5x64byte blocks, index = 1*(x/2)/8
		2'b01: begin pixelscanaddr = {1'b0,video_x_shifted[3:1]};	scanlinera = {1'b0, video_x_shifted[9:3]}; end	// 320*240 16bpp 10x64byte blocks, index = 2*(x/2)/8
		2'b10: begin pixelscanaddr = video_x_shifted[3:0];			scanlinera = {1'b0, video_x_shifted[9:3]}; end	// 640*480 8bpp  10x64byte blocks, index = 1*(x/1)/8
		2'b11: begin pixelscanaddr = {1'b0,video_x_shifted[2:0]};	scanlinera = video_x_shifted[9:2]; end			// 640*480 16bpp 20x64byte blocks, index = 2*(x/1)/8
	endcase
end

// --------------------------------------------------
// Output color
// --------------------------------------------------

logic [15:0] rgbcolor;
logic [7:0] paletteindex;

// 4x 16bit pixels
always_comb begin
	// Pixel data is 16 bits
	unique case (pixelscanaddr[1:0])
		//                   R:G:B
		2'b00: rgbcolor = { scanlinedout[15:0]     };
		2'b01: rgbcolor = { scanlinedout[31:16]    };
		2'b10: rgbcolor = { scanlinedout[47:32]    };
		2'b11: rgbcolor = { scanlinedout[63:48]    };
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

logic [23:0] palettedin;
logic [7:0] palettewa;
logic palettewe;

logic [23:0] paletteentries[0:255];

initial begin
	$readmemh("colorpalette.mem", paletteentries);
end

// Write port
always @(posedge aclk) begin
	if (palettewe)
		paletteentries[palettewa] <= palettedin;
end

// Read port
logic [23:0] paletteout;
always @(posedge clk25) begin
	if (~rst25n) begin
		paletteout <= 24'd0;
	end else begin
		case ({displaying, scanenable, colormode})
			3'b110: paletteout <= paletteentries[paletteindex];
			3'b111: paletteout <= {rgbcolor[15:11], 3'b0, rgbcolor[10:5], 2'b0, rgbcolor[4:0], 3'b0}; // Expand from 16 to 24 bits
			3'b100,
			3'b101: paletteout <= 24'h333333;
			default: paletteout <= 24'h000000;
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
	SHIFTCACHE,
	SHIFTSCANOUT,
	SHIFTPIXEL,
	SETSECONDBUFFER,
	SYNCSWAP,
	WCONTROLREG,
	WPROG, WPROGADDRS, WPROGDATA,
	FINALIZE } vpucmdmodetype;
vpucmdmodetype cmdmode = WCMD;

logic [31:0] vpucmd;
logic [7:0] vpuctl;
logic blankt;

logic [1:0] blankshift;
logic blanktrigger;

logic [31:0] progdin;
logic [9:0] progaddr;
logic [3:0] progwe;
logic [3:0] prgwmask;

logic [3:0] vpuprgwe;
logic [9:0] vpuprgPC;
logic [31:0] vpuprgdin;
wire [31:0] vpuprgdout;

blk_mem_gen_0 VPUProgmem4K (
  // command buffer side
  .clka(aclk),
  .ena(1'b1),
  .wea(progwe),
  .addra(progaddr),
  .dina(progdin),
  .douta(),
  // VPU side
  .clkb(aclk),
  .enb(vpuctl[0]), // Program enable
  .web(vpuprgwe),
  .addrb(vpuprgPC),
  .dinb(vpuprgdin),
  .doutb(vpuprgdout) );

always_ff @(posedge aclk) begin
	if (~aresetn) begin
		progwe <= 4'd0;
		prgwmask <= 4'd0;
		progaddr <= 10'd0;
		progdin <= 32'd0;
		vpucmd <= 32'd0;
		vpuctl <= 8'd0;
		scanaddr <= 32'h18000000;			// Default scan-out address is placed at 32 mbytes before the end of memory (which is 0x1FFFFFFF)
		scanaddrsecondary <= 32'h18000000;	// Secondary buffer to use for swap
		burstmask <= 10'b1111111111;		// 640x2 bytes
		lastscanline <= 10'd523;
		palettedin <= 24'd0;
		scanenable <= 1'b1;					// Video output is enabled by default
		cmdre <= 1'b0;
		scanwidth <= 1'b1;					// 640-wide by default
		colormode <= 1'b1;					// 16 bit color by default
		palettewe <= 1'b0;
		scanlinewa_offset <= 8'd0;
		scanlinera_offset <= 8'd0;
		pixel_offset <= 4'd0;
		cmdmode <= WCMD;
		palettewa <= 8'd0;
		syncmode <= 1'b0;
		swapmode <= 1'b0;
		blankshift <= 2'b00;
		blanktrigger <= 1'b0;
	end else begin
		cmdre <= 1'b0;
		palettewe <= 1'b0;
		progwe <= 4'd0;

		// Shift blanking state, we've just entered vblank if
		// this shows 2'b01
		blankshift <= {blankshift[0], blankt};
		// Latch vblank entry until it's handled
		if (blankshift == 2'b01)
			blanktrigger <= 1'b1;

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
					8'h00:		cmdmode <= SETVPAGE;		// Set the scanout start address (followed by 32bit cached memory address, 64 byte cache aligned)
					8'h01:		cmdmode <= SETPAL;			// Set 24 bit color palette entry (followed by 8bit address+24bit color in next word)
					8'h02:		cmdmode <= VMODE;			// Set up video mode or turn off scan logic (default is 320x240*8bit paletted)
					8'h03:		cmdmode <= SHIFTCACHE;		// Offset for scanline cache writes
					8'h04:		cmdmode <= SHIFTSCANOUT;	// Offset for scanline cache reads
					8'h05:		cmdmode <= SHIFTPIXEL;		// Offset at pixel level
					8'h06:		cmdmode <= SETSECONDBUFFER;	// Address of second buffer to use with SYNCSWAP
					8'h07:		cmdmode <= SYNCSWAP;		// Wait for vsync and spawn buffers on the hardware side
					8'h08:		cmdmode <= WCONTROLREG;		// Control register write
					8'h09:		cmdmode <= WPROG;			// Write program word to given address (WPROGWORD addr, command)
					default:	cmdmode <= FINALIZE;		// Invalid command, wait one clock and try next
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
					palettedin <= vpufifodout[23:0];	// 24 bit color
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
					cmdmode <= FINALIZE;
				end
			end

			SHIFTCACHE: begin
				if (vpufifovalid && ~vpufifoempty) begin
					// Scanline cache write address offset
					scanlinewa_offset <= vpufifodout[7:0];
					// Advance FIFO
					cmdre <= 1'b1;
					cmdmode <= FINALIZE;
				end
			end

			SHIFTSCANOUT: begin
				if (vpufifovalid && ~vpufifoempty) begin
					// Scanline cache read address offset
					scanlinera_offset <= vpufifodout[7:0];
					// Advance FIFO
					cmdre <= 1'b1;
					cmdmode <= FINALIZE;
				end
			end

			SHIFTPIXEL: begin
				if (vpufifovalid && ~vpufifoempty) begin
					// Pixel address offset
					pixel_offset <= vpufifodout[3:0];
					// Advance FIFO
					cmdre <= 1'b1;
					cmdmode <= FINALIZE;
				end
			end

			SETSECONDBUFFER: begin
				if (vpufifovalid && ~vpufifoempty) begin
					scanaddrsecondary <= vpufifodout;	// Set new video scanout address (64 byte cache aligned, as we read in bursts)
					// Advance FIFO
					cmdre <= 1'b1;
					cmdmode <= FINALIZE;
				end
			end

			SYNCSWAP: begin
				// Wait for vsync then swap buffers
				// or alternatively do not wait if bit 8 is set in the command
				// NOTE: This lets CPU request a synced swap which is more precise when done here,
				// however it still needs to check if there are any pending commands in the FIFO
				// before resuming submits (~vpufifoempty == 1'b1)
				// The advantage here is that the FIFO empty wait doesn't have to be that precise
				// and can start somewhere within the to 80%-ish of the frame
				if (blanktrigger || vpufifodout[8]) begin // wait/don't wait vsync
					// Reset vblank trigger since we caught it
					blanktrigger <= 1'b0;
					scanaddrsecondary <= scanaddr;
					scanaddr <= scanaddrsecondary;
					cmdmode <= FINALIZE;
				end
			end

			WCONTROLREG: begin
				// Set or clear VPU control register bits
				// ...  7    6    5    4    3    2    1    0
				// -    -    -    -    -    -    -    -    VRUN
				// VRUN: Run VPU program when high
				if (vpufifodout[8]) // Set mask
					vpuctl <= vpuctl | vpufifodout[16:9];
				else // Clear mask
					vpuctl <= vpuctl & (~vpufifodout[16:9]);
				cmdmode <= FINALIZE;
			end

			WPROG: begin
				prgwmask <= vpufifodout[11:8]; // write strobe
				cmdmode <= WPROGADDRS;
			end

			WPROGADDRS: begin
				if (vpufifovalid && ~vpufifoempty) begin
					progaddr <= vpufifodout; // Address at which the command goes to
					// Advance FIFO
					cmdre <= 1'b1;
					cmdmode <= WPROGDATA;
				end
			end

			WPROGDATA: begin
				if (vpufifovalid && ~vpufifoempty) begin
					progdin <= vpufifodout; // Program word
					progwe <= prgwmask;
					// Advance FIFO
					cmdre <= 1'b1;
					cmdmode <= FINALIZE;
				end
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

always_ff @(posedge clk25) begin
	if (~rst25n) begin
		blankt <= 1'b0;
	end else begin
		blankt <= vsyncnow ? ~blankt : blankt;
	end
end

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
		displayingpre <= notblank;
		displaying <= displayingpre;
	end
end

wire endofline = (scanpixel == 10'd640) ? 1'b1 : 1'b0;
wire endofframe = (scanline == 10'd479) ? 1'b1 : 1'b0;

// {0,!fifoempty,scanline[9:0],vsynctoggle[0:0]}
assign vpustate = {12'd0, vpuctl, ~vpufifoempty, scanline, blanktoggle};

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
				// Next burst or done
				scanstate <= burststate[0] ? STARTSCANOUT : STARTLOAD;

				// Next burst or scanline always starts 128 bytes away from current one to make hardware simpler
				// i.e. once we're at the last burst of a scanline, next one is same distance as this one's to previous
				scanoffset <= scanoffset + 128;
			end

		endcase
	end
end

// --------------------------------------------------
// VPU state machine
// --------------------------------------------------

// Instructions
`define NOOP	4'h0
`define WHORZ	4'h1
`define WVERT	4'h2
`define SPAL	4'h3
`define SHFTPIX	4'h4
`define BRANCH	4'h5

// State
typedef enum logic [3:0] {
	VIDLE,
	FETCH, EXEC,
	READPARAM,
	SETUPWAITH, WAITH, SETUPWAITV, WAITV,
	SETUPPAL,
	SETUPHSHIFT,
	SETUPBRANCH,
	VHALT } vpuprogstatetype;
vpuprogstatetype vpuprgstate;
vpuprogstatetype followupstate;

logic [9:0] vpuwaitline;
logic [9:0] vpuwaitpixel;
logic [31:0] vpuinstr;
logic [31:0] vpuparam;

// TODO: VPU register file

always_ff @(posedge clk25) begin
	if (~rst25n) begin
		vpuprgstate <= VIDLE;
		followupstate <= VIDLE;
		vpuprgwe <= 4'd0;
		vpuprgPC <= 10'd0;
		vpuprgdin <= 32'd0;
		vpuinstr <= 32'd0;
		vpuparam <= 32'd0;
		vpuwaitline <= 10'd0;
		vpuwaitpixel <= 10'd0;
	end else begin
		case ({vpuctl[0], vpuprgstate})
			{1'b1, FETCH}: begin
				// Read instruction that was already selected with previous vpuprgPC
				vpuinstr <= vpuprgdout;
				vpuprgstate <= EXEC;
			end

			{1'b1, EXEC}: begin
				vpuprgstate <= FETCH;
				case (vpuinstr[3:0])
					`NOOP: begin
						// Nothing, just wastes one instruction slot
					end
					`WHORZ: begin
						// Wait for scanline (can be outside screen up to scanline 525)
						// NOTE: Passing an impossible line (>525) here will stop program execution 
						followupstate <= SETUPWAITH;
						vpuprgstate <= READPARAM;
					end
					`WVERT: begin
						// Wait for pixel (can be outside screen up to pixel 800)
						// NOTE: Passing an impossible pixel (>800) here will stop program execution
						followupstate <= SETUPWAITV;
						vpuprgstate <= READPARAM;
					end
					`SPAL: begin
						// Set single palette color
						followupstate <= SETUPPAL;
						vpuprgstate <= READPARAM;
					end
					`SHFTPIX: begin
						// Set shift amount for this scanline and any following ones
						followupstate <= SETUPHSHIFT;
						vpuprgstate <= READPARAM;
					end
					`BRANCH: begin
						// TODO: conditional branch
						followupstate <= SETUPBRANCH;
						vpuprgstate <= READPARAM;				
					end
				endcase

				// Step to next instruction (TODO: branch / loop)
				vpuprgPC <= vpuprgPC + 'd4;
			end

			{1'b1, READPARAM}: begin
				vpuparam <= vpuprgdout;
				vpuprgPC <= vpuprgPC + 'd4;
				vpuprgstate <= followupstate;
			end

			{1'b1, SETUPWAITH}: begin
				vpuwaitpixel <= vpuparam;
				vpuprgstate <= WAITH;
			end

			{1'b1, WAITH}: begin
				vpuprgstate <= scanpixel == vpuwaitpixel ? FETCH : WAITH;
			end

			{1'b1, SETUPWAITV}: begin
				vpuwaitline <= vpuparam;
				vpuprgstate <= WAITV;
			end

			{1'b1, WAITV}: begin
				vpuprgstate <= scanline == vpuwaitline ? FETCH : WAITV;
			end
			
			{1'b1, SETUPPAL}: begin
				// TODO: We need a way to circumvent the command input palette writes here or use a write override flag
				// vpuparam is palette index + color (8+24 bits)
				vpuprgstate <= FETCH;
			end
			
			{1'b1, SETUPHSHIFT}: begin
				// TODO: We need a way to circumvent the command input shifts here or use a write override flag
				//pixel_offset <= vpuparam[3:0];
				//scanlinewa_offset <= vpufifodout[11:4];
				//scanlinera_offset <= vpufifodout[19:12];
				vpuprgstate <= FETCH;
			end
			
			{1'b1, SETUPBRANCH}: begin
				// Set new program counter
				vpuprgPC <= vpuparam;
				vpuprgstate <= FETCH;
			end

			// Idle, unknown, or exec mode off
			default: begin
				vpuprgstate <= vpuctl[0] ? FETCH : VIDLE;
				// Idle/unknown/execoff modes reset PC to zero
				vpuprgPC <= 10'd0;
			end
		endcase
	end
end

// --------------------------------------------------
// Final output
// --------------------------------------------------

assign rgbdat = paletteout;

endmodule
