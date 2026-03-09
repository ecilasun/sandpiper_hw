module vcpcore(
	input wire aclk,
	input wire aresetn,
	input wire [9:0] scanline,
	input wire [9:0] scanpixel,
	// Palette RAM direct access
	output wire [7:0] paladdr,
	output wire [23:0] paldout,
	output wire palwe,
	input wire [7:0] vpucontrolregister,
	// Command fifo
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
	output logic m_axi_arvalid,
	output logic m_axi_awvalid,
	output logic m_axi_bready,
	output logic m_axi_rready,
	output logic m_axi_wlast,
	output logic m_axi_wvalid,
	output logic [1:0] m_axi_arburst,
	output logic [1:0] m_axi_arlock,
	output logic [2:0] m_axi_arsize,
	output logic [1:0] m_axi_awburst,
	output logic [1:0] m_axi_awlock,
	output logic [2:0] m_axi_awsize,
	output logic [2:0] m_axi_arprot,
	output logic [2:0] m_axi_awprot,
	output logic [31:0] m_axi_araddr,
	output logic [31:0] m_axi_awaddr,
	output logic [3:0] m_axi_arcache,
	output logic [3:0] m_axi_arlen,
	output logic [3:0] m_axi_arqos,
	output logic [3:0] m_axi_awcache,
	output logic [3:0] m_axi_awlen,
	output logic [3:0] m_axi_awqos,
	output logic [5:0] m_axi_arid,
	output logic [5:0] m_axi_awid,
	output logic [5:0] m_axi_wid,
	output logic [63:0] m_axi_wdata,
	output logic [7:0] m_axi_wstrb,
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
	output logic [7:0] s_axi_wstrb);

// --------------------------------------------------
// VCP command interface
// --------------------------------------------------

wire vcpfifoempty;
wire [31:0] vcpfifodout;
wire vcpfifore;
wire vcpfifovalid;
wire [31:0] vcpstate;

commandqueue vcpcommandinterface(
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
	.fifoempty(vcpfifoempty),
	.fifodout(vcpfifodout),
	.fifore(vcpfifore),
	.fifovalid(vcpfifovalid),
    .devicestateLow(vcpstate),
    .devicestateHigh(32'd0));

// ------------------------------------------------------------------------------------
// Command dispatch
// ------------------------------------------------------------------------------------

typedef enum bit [3:0] {
	INIT,
	WCMD, DISPATCH,
	VCPBUFFERSIZE,
	VCPSTART,
	VCPEXEC,
	STARTDMA, WAITREADADDR, READLOOP, ADVANCEADDRESS,
	FINALIZE } apucmdmodetype;
apucmdmodetype cmdmode = INIT;

bit [3:0] vcpcmd;			// Command code
bit [3:0] vcpflags;         // Command flags
bit [9:0] vcpwordcount;     // Program word count
bit [31:0] vcpsourceaddr;	// Memory address to DMA the VCP program from
bit re;
assign vcpfifore = re;

logic [31:0] burstmask;
logic [31:0] burststate;

localparam SIZE_4_BYTE   = 3'b010; // 2^2
localparam SIZE_8_BYTE   = 3'b011; // 2^3
localparam SIZE_16_BYTE  = 3'b100; // 2^4

localparam BURST_FIXED = 2'b00;
localparam BURST_INCR  = 2'b01;
localparam BURST_WRAP  = 2'b10;

logic programwe;
logic [9:0] writeCursor;
logic [63:0] programDataIn;
logic [3:0] execstate;
logic copystate;

// Intermediate registers used by DMA on the DDR AXI read channel
// (the DMA never uses the write channel)
logic        dma_arvalid;
logic [31:0] dma_araddr;
logic [3:0]  dma_arlen;
logic        dma_rready;

// Wires bridging vcpexec's sysmem AXI outputs into this module
wire        vcpexec_sysmem_arvalid;
wire [31:0] vcpexec_sysmem_araddr;
wire [3:0]  vcpexec_sysmem_arlen;
wire [2:0]  vcpexec_sysmem_arsize;
wire [1:0]  vcpexec_sysmem_arburst;
wire        vcpexec_sysmem_rready;
wire        vcpexec_sysmem_awvalid;
wire [31:0] vcpexec_sysmem_awaddr;
wire [3:0]  vcpexec_sysmem_awlen;
wire [2:0]  vcpexec_sysmem_awsize;
wire [1:0]  vcpexec_sysmem_awburst;
wire        vcpexec_sysmem_wvalid;
wire [63:0] vcpexec_sysmem_wdata;
wire [7:0]  vcpexec_sysmem_wstrb;
wire        vcpexec_sysmem_wlast;
wire        vcpexec_sysmem_bready;

always_ff @(posedge aclk) begin
	if (~aresetn) begin
		re <= 1'b0;
		vcpsourceaddr <= 32'd0;
		vcpcmd <= 4'd0;
		vcpflags <= 4'd0;
		burstmask <= 32'h00000000;
		burststate <= 32'd0;
		dma_arvalid <= 1'b0;
		dma_rready  <= 1'b0;
		dma_araddr  <= 32'd0;
		dma_arlen   <= 4'd0;
		programDataIn <= 64'd0;
		writeCursor <= 10'd0;
		programwe <= 1'b0;
		execstate <= 4'd0;
		copystate <= 1'b0;
		cmdmode <= INIT;
	end else begin
		re <= 1'b0;
		programwe <= 1'b0;

		case (cmdmode)
			INIT: begin
				dma_arvalid <= 1'b0;
				dma_rready  <= 1'b0;
				cmdmode <= WCMD;
			end

			WCMD: begin
				if (vcpfifovalid && ~vcpfifoempty) begin
					vcpcmd <= vcpfifodout[3:0];
					vcpflags <= vcpfifodout[7:4];
					// Advance FIFO
					re <= 1'b1;
					// Dispatch cmd
					cmdmode <= DISPATCH;
				end
			end

			DISPATCH: begin
				case (vcpcmd)
					4'h0:		cmdmode <= VCPBUFFERSIZE;	// Set up size of program DMA
					4'h1:		cmdmode <= VCPSTART;		// Start DMA into program memory
					4'h2:		cmdmode <= VCPEXEC;         // Start or stop program execution
					default:	cmdmode <= FINALIZE;		// Invalid command, wait one clock and try next
				endcase
			end

			VCPBUFFERSIZE: begin
				if (vcpfifovalid && ~vcpfifoempty) begin

					// Set number of 16byte bursts for each word count (each word is a single stereo pair)
					unique case (vcpfifodout[2:0])
						3'b000: begin burstmask <= 32'b00000000000000000000000000000001; vcpwordcount <= 10'h01F;   end //  x1,   32 words (128 bytes
						3'b001: begin burstmask <= 32'b00000000000000000000000000000011; vcpwordcount <= 10'h03F;	end	//  x2,   64 words (256 bytes)
						3'b010: begin burstmask <= 32'b00000000000000000000000000001111; vcpwordcount <= 10'h07F;	end	//  x4,  128 words (512 bytes)
						3'b011: begin burstmask <= 32'b00000000000000000000000011111111; vcpwordcount <= 10'h0FF;	end	//  x8,  256 words (1 Kbyte)
						3'b100: begin burstmask <= 32'b00000000000000001111111111111111; vcpwordcount <= 10'h1FF;	end	// x16,  512 words (2 Kbytes)
						3'b101: begin burstmask <= 32'b11111111111111111111111111111111; vcpwordcount <= 10'h3FF;	end	// x32, 1024 words (4 Kbytes)
						default begin burstmask <= 32'b00000000000000000000000000000000; vcpwordcount <= 0;			end // nothing
					endcase

					// Advance FIFO
					re <= 1'b1;
					cmdmode <= FINALIZE;
				end
			end

			VCPSTART: begin
				if (vcpfifovalid && ~vcpfifoempty) begin
					vcpsourceaddr <= vcpfifodout;
					// Advance FIFO
					re <= 1'b1;
					writeCursor <= 10'h3FF;
					copystate <= 1'b1;
					burststate <= burstmask;
					cmdmode <= STARTDMA;
				end
			end

			VCPEXEC: begin
                // Control flags
                execstate <= vcpflags;
				cmdmode <= FINALIZE;
			end

			STARTDMA: begin
				dma_arvalid <= 1'b1;
				dma_araddr  <= vcpsourceaddr;
				dma_arlen   <= 4'hF;
				// Shift to next burst count
				burststate <= {1'b0, burststate[31:1]};
				cmdmode <= WAITREADADDR;
			end

			WAITREADADDR: begin
				if (s_axi_arready) begin
					dma_arvalid <= 1'b0;
					dma_rready  <= 1'b1;
					cmdmode <= READLOOP;
				end
			end

			READLOOP: begin
				if (s_axi_rvalid) begin
					programwe <= 1'b1;
					programDataIn <= s_axi_rdata; // 64 bits at a time
					writeCursor <= writeCursor + 10'd1;
					dma_rready <= ~s_axi_rlast;
					cmdmode <= s_axi_rlast ? ADVANCEADDRESS : READLOOP;
				end
			end

			ADVANCEADDRESS: begin
				// Are we done?
				if (burststate[0] == 1'b0) begin
					copystate <= 1'b0;
					cmdmode <= FINALIZE;
				end else begin
					// Next burst
					cmdmode <= STARTDMA;
				end
				// Next burst always starts 128 bytes away from current one
				vcpsourceaddr <= vcpsourceaddr + 128;
			end

			FINALIZE: begin
				cmdmode <= WCMD;
			end
		endcase
	end
end

// --------------------------------------------------
// VCP core logic
// --------------------------------------------------

wire [3:0] runstate;
wire [12:0] debug_pc;
wire [3:0] debugopcode;
vcpexec vcpexecInst(
    .aclk(aclk),
    .arstn(aresetn),
    .execstate(execstate),
    .prgaddr(writeCursor),
    .prgdin(programDataIn),
    .prgwe(programwe),
	.scanline(scanline),
	.scanpixel(scanpixel),
	.paladdr(paladdr),
	.paldout(paldout),
	.palwe(palwe),
	.vpucontrolregister(vpucontrolregister),
	// System memory AXI (read channel muxed with DMA in this module)
	.sysmem_arvalid(vcpexec_sysmem_arvalid),
	.sysmem_arready(copystate ? 1'b0 : s_axi_arready),
	.sysmem_araddr (vcpexec_sysmem_araddr),
	.sysmem_arlen  (vcpexec_sysmem_arlen),
	.sysmem_arsize (vcpexec_sysmem_arsize),
	.sysmem_arburst(vcpexec_sysmem_arburst),
	.sysmem_rvalid (copystate ? 1'b0        : s_axi_rvalid),
	.sysmem_rready (vcpexec_sysmem_rready),
	.sysmem_rdata  (s_axi_rdata),
	.sysmem_rresp  (s_axi_rresp),
	.sysmem_rlast  (copystate ? 1'b0        : s_axi_rlast),
	// System memory AXI write channel (DMA never writes, so no mux needed)
	.sysmem_awvalid(vcpexec_sysmem_awvalid),
	.sysmem_awready(copystate ? 1'b0 : s_axi_awready),
	.sysmem_awaddr (vcpexec_sysmem_awaddr),
	.sysmem_awlen  (vcpexec_sysmem_awlen),
	.sysmem_awsize (vcpexec_sysmem_awsize),
	.sysmem_awburst(vcpexec_sysmem_awburst),
	.sysmem_wvalid (vcpexec_sysmem_wvalid),
	.sysmem_wready (copystate ? 1'b0 : s_axi_wready),
	.sysmem_wdata  (vcpexec_sysmem_wdata),
	.sysmem_wstrb  (vcpexec_sysmem_wstrb),
	.sysmem_wlast  (vcpexec_sysmem_wlast),
	.sysmem_bresp  (s_axi_bresp),
	.sysmem_bvalid (copystate ? 1'b0 : s_axi_bvalid),
	.sysmem_bready (vcpexec_sysmem_bready),
	.runstate(runstate),
	.debug_pc(debug_pc),
	.debugopcode(debugopcode));

// --------------------------------------------------
// DDR AXI bus assignments
// --------------------------------------------------
// Read-address channel: mux DMA (copystate=1) vs VCP exec runtime (copystate=0)
assign s_axi_arvalid = copystate ? dma_arvalid           : vcpexec_sysmem_arvalid;
assign s_axi_araddr  = copystate ? dma_araddr            : vcpexec_sysmem_araddr;
assign s_axi_arlen   = copystate ? dma_arlen             : vcpexec_sysmem_arlen;
assign s_axi_arsize  = copystate ? SIZE_8_BYTE           : vcpexec_sysmem_arsize;
assign s_axi_arburst = copystate ? BURST_INCR            : vcpexec_sysmem_arburst;
assign s_axi_rready  = copystate ? dma_rready            : vcpexec_sysmem_rready;
// Unused read-address control fields
assign s_axi_arlock  = 2'b00;
assign s_axi_arprot  = 3'b000;
assign s_axi_arcache = 4'b0011; // bufferable, cacheable
assign s_axi_arqos   = 4'b0000;
assign s_axi_arid    = 6'd0;
// Write-address channel: routed entirely from VCP exec (DMA never writes)
assign s_axi_awvalid = copystate ? 1'b0 : vcpexec_sysmem_awvalid;
assign s_axi_awaddr  = vcpexec_sysmem_awaddr;
assign s_axi_awlen   = vcpexec_sysmem_awlen;
assign s_axi_awsize  = vcpexec_sysmem_awsize;
assign s_axi_awburst = vcpexec_sysmem_awburst;
assign s_axi_awlock  = 2'b00;
assign s_axi_awprot  = 3'b000;
assign s_axi_awcache = 4'b0011;
assign s_axi_awqos   = 4'b0000;
assign s_axi_awid    = 6'd0;
// Write-data channel
assign s_axi_wvalid  = copystate ? 1'b0 : vcpexec_sysmem_wvalid;
assign s_axi_wdata   = vcpexec_sysmem_wdata;
assign s_axi_wstrb   = vcpexec_sysmem_wstrb;
assign s_axi_wlast   = vcpexec_sysmem_wlast;
assign s_axi_wid     = 6'd0;
// Write-response channel
assign s_axi_bready  = copystate ? 1'b0 : vcpexec_sysmem_bready;

// --------------------------------------------------
// VCP state output
// --------------------------------------------------

// FEDC BA98 7654 3210 FEDC BA98 7654 3210
// ---- OOOO -CFP PPPP PPPP PPPP RRRR EEEE
assign vcpstate = {4'd0, debugopcode, 1'b0, copystate, ~vcpfifoempty, debug_pc, runstate, execstate};

endmodule
