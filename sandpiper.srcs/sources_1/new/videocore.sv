`timescale 1ns / 1ps
`default_nettype none

module videocore(
	input wire aclk,
	input wire clk25,
	input wire clk125,
	input wire aresetn,

	output wire rst25n_o,
	output wire [3:0] scanmode, // {scandouble, displaying, scanenable, colormode}
	output wire [15:0] passthroughrgb,
	output wire [7:0] paletteindex_o,
	input wire [23:0] colordata,
	output wire [9:0] scanline_o,
	output wire [9:0] scanpixel_o,

	output wire [7:0] vpucontrolregister, // For the vcpexec module

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
// List of videomodes supported:
// ------------------------------------------------------------------------------------

// 320x240x8bpp
// 320x240x16bpp
// 320x480x8bpp
// 320x480x16bpp
// 640x240x8bpp
// 640x240x16bpp
// 640x480x8bpp
// 640x480x16bpp

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
assign rst25n_o = rst25n;

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
	.s_axi_araddr(m_axi_araddr),
	.s_axi_arvalid(m_axi_arvalid),
	.s_axi_arready(m_axi_arready),
	.s_axi_arlen(m_axi_arlen),
	.s_axi_arsize(m_axi_arsize),
	.s_axi_arburst(m_axi_arburst),
	.s_axi_rdata(m_axi_rdata),
	.s_axi_rresp(m_axi_rresp),
	.s_axi_rvalid(m_axi_rvalid),
	.s_axi_rready(m_axi_rready),
	.s_axi_rlast(m_axi_rlast),
	.s_axi_awaddr(m_axi_awaddr),
	.s_axi_awvalid(m_axi_awvalid),
	.s_axi_awready(m_axi_awready),
	.s_axi_awlen(m_axi_awlen),
	.s_axi_awsize(m_axi_awsize),
	.s_axi_awburst(m_axi_awburst),
	.s_axi_wdata(m_axi_wdata),
	.s_axi_wstrb(m_axi_wstrb),
	.s_axi_wvalid(m_axi_wvalid),
	.s_axi_wready(m_axi_wready),
	.s_axi_wlast(m_axi_wlast),
	.s_axi_bresp(m_axi_bresp),
	.s_axi_bvalid(m_axi_bvalid),
	.s_axi_bready(m_axi_bready),
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

// Layer B
logic [31:0] scanaddr_b;
logic [31:0] scanaddrsecondary_b;
logic [31:0] scanoffset_b;
logic layerb_enable;       // 1: dual-layer mode active
logic [2:0] mixmode;       // 0:A-only, 1:B-over-A-keycolor, 2:50/50-blend, 3:add-saturate, 4:B-only
logic [15:0] keycolor;     // Transparent color for layer B in key mode

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
(* async_reg = "true" *) logic endoflinepre;
(* async_reg = "true" *) logic endofline;
(* async_reg = "true" *) logic endofvisibleframepre;
(* async_reg = "true" *) logic endofvisibleframe;

// --------------------------------------------------
// Setup
// --------------------------------------------------

logic [9:0] burstmask;
logic scanwidth;			// 0:320 pixel wide, 1:640 pixel wide
logic colormode;			// 0:indexed color, 1:16bit color
logic scandouble;			// 0:no scanline doubling, 1:scanline doubling

// --------------------------------------------------
// Scanline cache - Simple Dual-Port BRAM (xpm_memory_sdpram)
// --------------------------------------------------
// Port A (write): aclk domain - AXI DMA fills one scanline
// Port B (read):  clk25 domain - pixel output to HDMI
//
// BRAM has 1-cycle read latency on port B. To keep pixel output
// aligned with video_x without shifting the image, we present
// the address for the NEXT pixel (video_x+1) so that when the
// data emerges one clk25 later, video_x has advanced to match.

logic [63:0] scanlinedin;
logic scanlinewe;
logic [7:0] scanlinewa;
logic [7:0] scanlinewa_offset;
logic [7:0] scanlinera;
logic [7:0] scanlinera_offset;
logic [7:0] rdata_cnt;
logic [3:0] pixel_offset;

// Layer B write port signals
logic scanlinewe_b;

// CDC: synchronize slowly-changing aclk-domain controls into clk25.
// These only change on VPU commands (rare), so 2-flop sync is safe.
(* async_reg = "true" *) logic [7:0] scanlinera_offset_sync, scanlinera_offset_c25;
(* async_reg = "true" *) logic [3:0] pixel_offset_sync, pixel_offset_c25;
(* async_reg = "true" *) logic scanwidth_sync, scanwidth_c25;
(* async_reg = "true" *) logic colormode_sync, colormode_c25;
(* async_reg = "true" *) logic layerb_enable_sync, layerb_enable_c25;
(* async_reg = "true" *) logic [2:0] mixmode_sync, mixmode_c25;
(* async_reg = "true" *) logic [15:0] keycolor_sync, keycolor_c25;

always_ff @(posedge clk25) begin
	scanlinera_offset_sync <= scanlinera_offset;
	scanlinera_offset_c25  <= scanlinera_offset_sync;
	pixel_offset_sync      <= pixel_offset;
	pixel_offset_c25       <= pixel_offset_sync;
	scanwidth_sync         <= scanwidth;
	scanwidth_c25          <= scanwidth_sync;
	colormode_sync         <= colormode;
	colormode_c25          <= colormode_sync;
	layerb_enable_sync     <= layerb_enable;
	layerb_enable_c25      <= layerb_enable_sync;
	mixmode_sync           <= mixmode;
	mixmode_c25            <= mixmode_sync;
	keycolor_sync          <= keycolor;
	keycolor_c25           <= keycolor_sync;
end

// BRAM read-side signals
wire [63:0] scanlinedout;
wire [7:0] bram_rdaddr = scanlinera + scanlinera_offset_c25;

logic [3:0] pixelscanaddr;
logic [3:0] pixelscanaddr_d; // 1-cycle delayed to match BRAM output

always_ff @(posedge clk25) begin
	pixelscanaddr_d <= pixelscanaddr;
end

xpm_memory_sdpram #(
	.ADDR_WIDTH_A          (8),
	.ADDR_WIDTH_B          (8),
	.AUTO_SLEEP_TIME       (0),
	.BYTE_WRITE_WIDTH_A    (64),
	.CASCADE_HEIGHT        (0),
	.CLOCKING_MODE         ("independent_clock"),
	.ECC_MODE              ("no_ecc"),
	.MEMORY_INIT_FILE      ("none"),
	.MEMORY_INIT_PARAM     ("0"),
	.MEMORY_OPTIMIZATION   ("true"),
	.MEMORY_PRIMITIVE      ("block"),       // Guaranteed BRAM
	.MEMORY_SIZE           (16384),         // 256 entries x 64 bits
	.MESSAGE_CONTROL       (0),
	.READ_DATA_WIDTH_B     (64),
	.READ_LATENCY_B        (1),
	.READ_RESET_VALUE_B    ("0"),
	.RST_MODE_A            ("SYNC"),
	.RST_MODE_B            ("SYNC"),
	.SIM_ASSERT_CHK        (0),
	.USE_EMBEDDED_CONSTRAINT(0),
	.USE_MEM_INIT          (0),
	.WAKEUP_TIME           ("disable_sleep"),
	.WRITE_DATA_WIDTH_A    (64),
	.WRITE_MODE_B          ("no_change"),
	.WRITE_PROTECT         (1)
) scanlinecache_inst (
	// Write port (aclk domain)
	.clka              (aclk),
	.ena               (1'b1),
	.wea               (scanlinewe),
	.addra             (scanlinewa + scanlinewa_offset),
	.dina              (scanlinedin),
	// Read port (clk25 domain)
	.clkb              (clk25),
	.rstb              (~rst25n),
	.enb               (1'b1),
	.regceb            (1'b1),
	.addrb             (bram_rdaddr),
	.doutb             (scanlinedout),
	// Unused ECC / sleep
	.sleep             (1'b0),
	.injectsbiterra    (1'b0),
	.injectdbiterra    (1'b0),
	.sbiterrb          (),
	.dbiterrb          ()
);

// --------------------------------------------------
// Layer B scanline cache - identical BRAM, same read address
// --------------------------------------------------

wire [63:0] scanlinedout_b;

xpm_memory_sdpram #(
	.ADDR_WIDTH_A          (8),
	.ADDR_WIDTH_B          (8),
	.AUTO_SLEEP_TIME       (0),
	.BYTE_WRITE_WIDTH_A    (64),
	.CASCADE_HEIGHT        (0),
	.CLOCKING_MODE         ("independent_clock"),
	.ECC_MODE              ("no_ecc"),
	.MEMORY_INIT_FILE      ("none"),
	.MEMORY_INIT_PARAM     ("0"),
	.MEMORY_OPTIMIZATION   ("true"),
	.MEMORY_PRIMITIVE      ("block"),
	.MEMORY_SIZE           (16384),
	.MESSAGE_CONTROL       (0),
	.READ_DATA_WIDTH_B     (64),
	.READ_LATENCY_B        (1),
	.READ_RESET_VALUE_B    ("0"),
	.RST_MODE_A            ("SYNC"),
	.RST_MODE_B            ("SYNC"),
	.SIM_ASSERT_CHK        (0),
	.USE_EMBEDDED_CONSTRAINT(0),
	.USE_MEM_INIT          (0),
	.WAKEUP_TIME           ("disable_sleep"),
	.WRITE_DATA_WIDTH_A    (64),
	.WRITE_MODE_B          ("no_change"),
	.WRITE_PROTECT         (1)
) scanlinecache_b_inst (
	// Write port (aclk domain)
	.clka              (aclk),
	.ena               (1'b1),
	.wea               (scanlinewe_b),
	.addra             (scanlinewa + scanlinewa_offset),
	.dina              (scanlinedin),
	// Read port (clk25 domain) - same address as layer A
	.clkb              (clk25),
	.rstb              (~rst25n),
	.enb               (1'b1),
	.regceb            (1'b1),
	.addrb             (bram_rdaddr),
	.doutb             (scanlinedout_b),
	// Unused ECC / sleep
	.sleep             (1'b0),
	.injectsbiterra    (1'b0),
	.injectdbiterra    (1'b0),
	.sbiterrb          (),
	.dbiterrb          ()
);

// --------------------------------------------------
// Output address selection (1-pixel look-ahead)
// --------------------------------------------------

// Compute address for the NEXT pixel so that after the BRAM's
// 1-cycle read latency, data is aligned with the current video_x.
// Wrap 799->0 to handle the end-of-line boundary correctly.
wire [9:0] video_x_next = (video_x == 10'd799) ? 10'd0 : (video_x + 10'd1);
wire [9:0] video_x_lookahead = video_x_next + pixel_offset_c25;

always_comb begin
	unique case ({scanwidth_c25, colormode_c25})
		2'b00: begin pixelscanaddr = video_x_lookahead[4:1];         scanlinera = {2'b0, video_x_lookahead[9:4]}; end // 320*240 8bpp
		2'b01: begin pixelscanaddr = {1'b0,video_x_lookahead[3:1]};  scanlinera = {1'b0, video_x_lookahead[9:3]}; end // 320*240 16bpp
		2'b10: begin pixelscanaddr = video_x_lookahead[3:0];         scanlinera = {1'b0, video_x_lookahead[9:3]}; end // 640*480 8bpp
		2'b11: begin pixelscanaddr = {1'b0,video_x_lookahead[2:0]};  scanlinera = video_x_lookahead[9:2]; end         // 640*480 16bpp
	endcase
end

// --------------------------------------------------
// Output color - Layer A (uses BRAM output + delayed pixel selector)
// --------------------------------------------------

logic [15:0] rgbcolor_a;
logic [7:0] paletteindex_a;

// 4x 16bit pixels - Layer A
always_comb begin
	unique case (pixelscanaddr_d[1:0])
		2'b00: rgbcolor_a = scanlinedout[15:0];
		2'b01: rgbcolor_a = scanlinedout[31:16];
		2'b10: rgbcolor_a = scanlinedout[47:32];
		2'b11: rgbcolor_a = scanlinedout[63:48];
	endcase
end

// 8x 8bit pixels - Layer A
always_comb begin
	unique case (pixelscanaddr_d[2:0])
		3'b000: paletteindex_a = scanlinedout[7:0];
		3'b001: paletteindex_a = scanlinedout[15:8];
		3'b010: paletteindex_a = scanlinedout[23:16];
		3'b011: paletteindex_a = scanlinedout[31:24];
		3'b100: paletteindex_a = scanlinedout[39:32];
		3'b101: paletteindex_a = scanlinedout[47:40];
		3'b110: paletteindex_a = scanlinedout[55:48];
		3'b111: paletteindex_a = scanlinedout[63:56];
	endcase
end

// --------------------------------------------------
// Output color - Layer B (same address pipeline, different BRAM)
// --------------------------------------------------

logic [15:0] rgbcolor_b;
logic [7:0] paletteindex_b;

// 4x 16bit pixels - Layer B
always_comb begin
	unique case (pixelscanaddr_d[1:0])
		2'b00: rgbcolor_b = scanlinedout_b[15:0];
		2'b01: rgbcolor_b = scanlinedout_b[31:16];
		2'b10: rgbcolor_b = scanlinedout_b[47:32];
		2'b11: rgbcolor_b = scanlinedout_b[63:48];
	endcase
end

// 8x 8bit pixels - Layer B
always_comb begin
	unique case (pixelscanaddr_d[2:0])
		3'b000: paletteindex_b = scanlinedout_b[7:0];
		3'b001: paletteindex_b = scanlinedout_b[15:8];
		3'b010: paletteindex_b = scanlinedout_b[23:16];
		3'b011: paletteindex_b = scanlinedout_b[31:24];
		3'b100: paletteindex_b = scanlinedout_b[39:32];
		3'b101: paletteindex_b = scanlinedout_b[47:40];
		3'b110: paletteindex_b = scanlinedout_b[55:48];
		3'b111: paletteindex_b = scanlinedout_b[63:56];
	endcase
end

// --------------------------------------------------
// Layer mixer (16bpp RGB565 mix modes, clk25 domain)
// --------------------------------------------------
// mixmode: 0=A-only, 1=B-over-A (keycolor transparency), 2=50/50 blend, 3=add-saturate, 4=B-only

logic [15:0] rgbcolor;
logic [7:0] paletteindex;

// Saturating add helper for 5/6-bit color channels
wire [4:0] r_a = rgbcolor_a[15:11], r_b = rgbcolor_b[15:11];
wire [5:0] g_a = rgbcolor_a[10:5],  g_b = rgbcolor_b[10:5];
wire [4:0] b_a = rgbcolor_a[4:0],   b_b = rgbcolor_b[4:0];

wire [5:0] r_add = {1'b0, r_a} + {1'b0, r_b};
wire [6:0] g_add = {1'b0, g_a} + {1'b0, g_b};
wire [5:0] b_add = {1'b0, b_a} + {1'b0, b_b};

wire [4:0] r_sat = r_add[5] ? 5'h1F : r_add[4:0];
wire [5:0] g_sat = g_add[6] ? 6'h3F : g_add[5:0];
wire [4:0] b_sat = b_add[5] ? 5'h1F : b_add[4:0];

// 50/50 blend: (A + B) >> 1
wire [4:0] r_avg = ({1'b0, r_a} + {1'b0, r_b}) >> 1;
wire [5:0] g_avg = ({1'b0, g_a} + {1'b0, g_b}) >> 1;
wire [4:0] b_avg = ({1'b0, b_a} + {1'b0, b_b}) >> 1;

// 25/75 blend: (A + 3*B) >> 2   i.e. 25% A, 75% B
wire [4:0] r_25a = ({2'b0, r_a} + {2'b0, r_b} + {1'b0, r_b, 1'b0}) >> 2;
wire [5:0] g_25a = ({2'b0, g_a} + {2'b0, g_b} + {1'b0, g_b, 1'b0}) >> 2;
wire [4:0] b_25a = ({2'b0, b_a} + {2'b0, b_b} + {1'b0, b_b, 1'b0}) >> 2;

// 75/25 blend: (3*A + B) >> 2   i.e. 75% A, 25% B
wire [4:0] r_75a = ({2'b0, r_a} + {1'b0, r_a, 1'b0} + {2'b0, r_b}) >> 2;
wire [5:0] g_75a = ({2'b0, g_a} + {1'b0, g_a, 1'b0} + {2'b0, g_b}) >> 2;
wire [4:0] b_75a = ({2'b0, b_a} + {1'b0, b_a, 1'b0} + {2'b0, b_b}) >> 2;

always_comb begin
	if (~layerb_enable_c25) begin
		// Single layer mode - pass through A directly
		rgbcolor = rgbcolor_a;
		paletteindex = paletteindex_a;
	end else begin
		// Dual layer mode - palette index comes from A (background)
		paletteindex = paletteindex_a;
		unique case (mixmode_c25)
			3'd0: rgbcolor = {r_75a, g_75a, b_75a};                                                        // 75% A, 25% B
			3'd1: rgbcolor = (rgbcolor_b == keycolor_c25) ? rgbcolor_a : rgbcolor_b;                        // B over A, keycolor = transparent
			3'd2: rgbcolor = {r_avg, g_avg, b_avg};                                                        // 50/50 blend
			3'd3: rgbcolor = {r_sat, g_sat, b_sat};                                                        // Additive saturate
			3'd4: rgbcolor = {r_25a, g_25a, b_25a};                                                        // 25% A, 75% B
			default: rgbcolor = rgbcolor_a;
		endcase
	end
end

assign scanmode = {scandouble, displaying, scanenable, colormode};
assign passthroughrgb = rgbcolor;
assign paletteindex_o = paletteindex;

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

typedef enum logic [4:0] {
	WCMD, DISPATCH,
	SETVPAGE,
	VMODE,
	SHIFTCACHE,
	SHIFTSCANOUT,
	SHIFTPIXEL,
	SETSECONDBUFFER,
	SYNCSWAP,
	WCONTROLREG,
	SETVPAGE_B,
	SETSECONDBUFFER_B,
	SYNCSWAP_B,
	SETMIXMODE,
	FINALIZE } vpucmdmodetype;
vpucmdmodetype cmdmode = WCMD;

logic [31:0] vpucmd;
logic [7:0] vpuctl;
logic blankt;

logic blanktracker;
logic blanktrigger;

assign vpucontrolregister = vpuctl;

always_ff @(posedge aclk) begin
	if (~aresetn) begin
		vpucmd <= 32'd0;
		vpuctl <= 8'd0;
		scanaddr <= 32'h18000000;			// Default scan-out address is placed at 32 mbytes before the end of memory (which is 0x1FFFFFFF)
		scanaddrsecondary <= 32'h18000000;	// Secondary buffer to use for swap
		scanaddr_b <= 32'h18000000;			// Layer B default address
		scanaddrsecondary_b <= 32'h18000000;
		layerb_enable <= 1'b0;				// Single layer by default
		mixmode <= 3'd0;					// A-only by default
		keycolor <= 16'h0000;				// Default key color = black
		burstmask <= 10'b1111111111;		// 640x2 bytes
		scanenable <= 1'b1;					// Video output is enabled by default
		cmdre <= 1'b0;
		scanwidth <= 1'b1;					// 640-wide by default
		colormode <= 1'b1;					// 16 bit color by default
		scandouble <= 1'b0;					// No scanline doubling by default
		scanlinewa_offset <= 8'd0;
		scanlinera_offset <= 8'd0;
		pixel_offset <= 4'd0;
		cmdmode <= WCMD;
		syncmode <= 1'b0;
		swapmode <= 1'b0;
		blanktracker <= 1'b0;
		blanktrigger <= 1'b0;
	end else begin
		cmdre <= 1'b0;

		// Latch vblank entry until it's handled
		if (blanktracker != blanktoggle) begin
			blanktracker <= blanktoggle;
			blanktrigger <= 1'b1;
		end

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
					8'h00:		cmdmode <= SETVPAGE;			// Set the scanout start address (followed by 32bit cached memory address, 64 byte cache aligned)
					8'h01:		cmdmode <= FINALIZE;			// Reserved for future
					8'h02:		cmdmode <= VMODE;				// Set up video mode or turn off scan logic (default is 320x240*8bit paletted)
					8'h03:		cmdmode <= SHIFTCACHE;			// Offset for scanline cache writes
					8'h04:		cmdmode <= SHIFTSCANOUT;		// Offset for scanline cache reads
					8'h05:		cmdmode <= SHIFTPIXEL;			// Offset at pixel level
					8'h06:		cmdmode <= SETSECONDBUFFER;		// Address of second buffer to use with SYNCSWAP
					8'h07:		cmdmode <= SYNCSWAP;			// Wait for vsync and swap buffers on the hardware side
					8'h08:		cmdmode <= WCONTROLREG;			// Control register write
					8'h09:		cmdmode <= SETVPAGE_B;			// Set layer B scanout address
					8'h0A:		cmdmode <= SETSECONDBUFFER_B;	// Address of layer B second buffer
					8'h0B:		cmdmode <= SYNCSWAP_B;			// Swap layer B buffers
					8'h0C:		cmdmode <= SETMIXMODE;			// Set mix mode + key color + layer enable
					default:	cmdmode <= FINALIZE;			// Invalid command, wait one clock and try next
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

			VMODE: begin
				if (vpufifovalid && ~vpufifoempty) begin
					scanenable <= vpufifodout[0];	// 0:video output disabled, 1:video output enabled
					scanwidth <= vpufifodout[1];	// 0:320-wide, 1:640-wide
					colormode <= vpufifodout[2];	// 0:8bit indexed, 1:16bit rgb
					scandouble <= vpufifodout[3];	// 0:no scanline doubling 1:scanline doubling 
					// ? <= vpufifodout[31:4] unused for now

					// Set up burst count depending on video width and bit depth
					// Upper 4 bits contain whole burst count (i.e. N * 4'hF)
					// Lower 4 bits contain partial burst length
					unique case (vpufifodout[2:1])
						2'b00: burstmask <= 10'b0000000111; // 320*240 8bpp, 3*128 (384 bytes)
						2'b01: burstmask <= 10'b0000011111; // 640*480 8bpp, 5*128 (640 bytes)
						2'b10: burstmask <= 10'b0000011111; // 320*240 16bpp, 5*128 (640 bytes)
						2'b11: burstmask <= 10'b1111111111; // 640*480 16bpp, 10*128 (1280 bytes)
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
				if (blanktrigger || vpucmd[8]) begin // wait/don't wait vsync
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
				if (vpucmd[8]) // Set mask
					vpuctl <= vpuctl | vpucmd[16:9];
				else // Clear mask
					vpuctl <= vpuctl & (~vpucmd[16:9]);
				cmdmode <= FINALIZE;
			end

			SETVPAGE_B: begin
				if (vpufifovalid && ~vpufifoempty) begin
					scanaddr_b <= vpufifodout;
					cmdre <= 1'b1;
					cmdmode <= FINALIZE;
				end
			end

			SETSECONDBUFFER_B: begin
				if (vpufifovalid && ~vpufifoempty) begin
					scanaddrsecondary_b <= vpufifodout;
					cmdre <= 1'b1;
					cmdmode <= FINALIZE;
				end
			end

			SYNCSWAP_B: begin
				// Wait for vsync then swap layer B buffers
				if (blanktrigger || vpucmd[8]) begin
					blanktrigger <= 1'b0;
					scanaddrsecondary_b <= scanaddr_b;
					scanaddr_b <= scanaddrsecondary_b;
					cmdmode <= FINALIZE;
				end
			end

			SETMIXMODE: begin
				// vpucmd[8]    = layerb_enable
				// vpucmd[11:9] = mixmode (0=A-only, 1=B-over-A-key, 2=50/50, 3=add-sat, 4=B-only)
				// vpucmd[27:12] = keycolor (RGB565)
				layerb_enable <= vpucmd[8];
				mixmode <= vpucmd[11:9];
				keycolor <= vpucmd[27:12];
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
wire endofvisibleframep = video_y == 10'd480;
wire endoflinep = video_x == 10'd640;

wire vsyncnow = startofrowp && endofvisibleframep;

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
		scanlinepre <= 10'd0;
		scanline <= 10'd0;
		scanpixelpre <= 10'd0;
		scanpixel <= 10'd0;
		blanktogglepre <= 1'b0;
		blanktoggle <= 1'b0;
		displayingpre <= 1'b0;
		displaying <= 1'b0;
		endoflinepre <= 1'b0;
		endofline <= 1'b0;
		endofvisibleframepre <= 1'b0;
		endofvisibleframe <= 1'b0;
	end else begin
		scanlinepre <= video_y;
		scanline <= scanlinepre;
		scanpixelpre <= video_x;
		scanpixel <= scanpixelpre;
		blanktogglepre <= blankt;
		blanktoggle <= blanktogglepre;
		displayingpre <= notblank;
		displaying <= displayingpre;
		endoflinepre <= endoflinep;
		endofline <= endoflinepre;
		endofvisibleframepre <= endofvisibleframep;
		endofvisibleframe <= endofvisibleframepre;
	end
end

assign scanline_o = scanline;
assign scanpixel_o = scanpixel;

// {0,!fifoempty,scanline[9:0],vsynctoggle[0:0]}
assign vpustate = {12'd0, vpuctl, ~vpufifoempty, scanline, blanktoggle};

typedef enum logic [2:0] {DETECTFRAMESTART, STARTLOAD, STARTSCANOUT, WAITADDR, DATABURST, ADVANCESCANLINEADDRESS, STARTLOAD_B} scanstatetype;
scanstatetype scanstate;

logic [9:0] burststate;
logic [9:0] burststate_b;
logic onFirstScanline;
logic fetchlayer;  // 0=layer A, 1=layer B
always_ff @(posedge aclk) begin
	if (~aresetn) begin
		scanlinewe <= 1'b0;
		scanlinewe_b <= 1'b0;
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
		scanoffset_b <= 32'd0;
		scanlinewa <= 8'd0;
		rdata_cnt <= 8'd0;
		burststate <= 10'd0;
		burststate_b <= 10'd0;
		onFirstScanline <= 1'b0;
		fetchlayer <= 1'b0;
		scanstate <= DETECTFRAMESTART;
	end else begin
		scanlinewe <= 1'b0;
		scanlinewe_b <= 1'b0;
		case (scanstate)
			DETECTFRAMESTART: begin
				// We will be hitting visible portion of the frame on next line
				// Video width and framebuffer address can only be changed at this point
				if (scanenable && (scanline == 10'd524)) begin
					// NOTE: VCP will be able to do this at per-scanline resolution
					// so we can implement effects like split-screen / sliding screens etc.
					scanoffset <= scanaddr;
					scanoffset_b <= scanaddr_b;
					onFirstScanline <= 1'b1;
					fetchlayer <= 1'b0;
					scanstate <= STARTLOAD;
				end else begin
					scanstate <= DETECTFRAMESTART;
				end
			end

			STARTLOAD: begin
				rdata_cnt <= 8'd0;
				burststate <= burstmask;
				fetchlayer <= 1'b0;
				// Start loading next scanline based on scanline doubling and end of frame
				if (endofline) begin
					if (endofvisibleframe) // At line 480
						scanstate <= DETECTFRAMESTART; // All done for this frame, wait for next frame
					else if (scandouble)
						scanstate <= (onFirstScanline || scanline[0]) ? STARTSCANOUT : STARTLOAD; // Scanline doubling, only start loading on odd lines or if we're working on the first scanline
					else
						scanstate <= STARTSCANOUT; // No scanline doubling and wide mode, load every line (first load on 524)
				end else begin
					scanstate <= STARTLOAD;
				end
			end

			STARTSCANOUT: begin
				onFirstScanline <= 1'b0;
				// Start read burst for current layer
				s_axi_arvalid <= 1'b1;
				s_axi_araddr <= fetchlayer ? scanoffset_b : scanoffset;
				s_axi_arlen <= 4'hF;
				// Shift to next burst count
				if (fetchlayer)
					burststate_b <= {1'b0, burststate_b[9:1]};
				else
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
					// Load data into appropriate scanline cache
					if (fetchlayer)
						scanlinewe_b <= 1'b1;
					else
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
				// Advance the address for whichever layer we just fetched
				if (fetchlayer) begin
					scanoffset_b <= scanoffset_b + 128;
					// Layer B burst done? Go back to STARTLOAD (both layers fetched for this line)
					scanstate <= burststate_b[0] ? STARTSCANOUT : STARTLOAD;
				end else begin
					scanoffset <= scanoffset + 128;
					if (burststate[0]) begin
						// More layer A bursts remaining
						scanstate <= STARTSCANOUT;
					end else if (layerb_enable) begin
						// Layer A done, start layer B
						scanstate <= STARTLOAD_B;
					end else begin
						// Single layer, done
						scanstate <= STARTLOAD;
					end
				end
			end

			STARTLOAD_B: begin
				// Transition to layer B fetch
				rdata_cnt <= 8'd0;
				burststate_b <= burstmask;
				fetchlayer <= 1'b1;
				scanstate <= STARTSCANOUT;
			end

			default: scanstate <= DETECTFRAMESTART;

		endcase
	end
end

// --------------------------------------------------
// Final output
// --------------------------------------------------

assign rgbdat = colordata;

endmodule
