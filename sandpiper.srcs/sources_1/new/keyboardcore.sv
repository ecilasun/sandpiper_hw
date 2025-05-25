`timescale 1ns / 1ps

module keyboardcore(
	input wire aclk,
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

	output logic [13:0] keyboardcolumns,
	input wire [4:0] keyboardrows);

// --------------------------------------------------
// Internal
// --------------------------------------------------

bit [13:0] scanenablerow;	// Current scan row bit states (0: disable 1: enable), mutually exclusive

// --------------------------------------------------
// KPU command interface
// --------------------------------------------------

wire kpufifoempty;
wire [31:0] kpufifodout;
wire kpufifore;
wire kpufifovalid;

// Current state of scanned keys
bit [4:0] keymatrix[14:0]; // One spare (unused) for unknown scan combinations
wire [63:0] keystate;

assign keystate = {1'b0, keymatrix[13], keymatrix[12], keymatrix[11], keymatrix[10], keymatrix[9], keymatrix[8], keymatrix[7], keymatrix[6], keymatrix[5], keymatrix[4], keymatrix[3], keymatrix[2], keymatrix[1], keymatrix[0]};

commandqueue kpucommandinterface(
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
	.fifoempty(kpufifoempty),
	.fifodout(kpufifodout),
	.fifore(kpufifore),
	.fifovalid(kpufifovalid),
    .devicestateLow(keystate[31:0]),
    .devicestateHigh(keystate[63:32]));

// ------------------------------------------------------------------------------------
// Command dispatch
// ------------------------------------------------------------------------------------

typedef enum bit [3:0] {
	INIT,
	WCMD, DISPATCH,
	SCANMATRIX,
	DOSCAN, NEXTROW, FINISHSCAN,
	FINALIZE } kpucmdmodetype;
kpucmdmodetype cmdmode = INIT;

bit [3:0] kpucmd;			// Command code
bit cmdre;

assign kpufifore = cmdre;

// To enable a line we pull it up to high which allows a current through the diodes if a key is held down 
assign keyboardcolumns[ 0] = scanenablerow[ 0] ? 1'b1 : 1'b0;
assign keyboardcolumns[ 1] = scanenablerow[ 1] ? 1'b1 : 1'b0;
assign keyboardcolumns[ 2] = scanenablerow[ 2] ? 1'b1 : 1'b0;
assign keyboardcolumns[ 3] = scanenablerow[ 3] ? 1'b1 : 1'b0;
assign keyboardcolumns[ 4] = scanenablerow[ 4] ? 1'b1 : 1'b0;
assign keyboardcolumns[ 5] = scanenablerow[ 5] ? 1'b1 : 1'b0;
assign keyboardcolumns[ 6] = scanenablerow[ 6] ? 1'b1 : 1'b0;
assign keyboardcolumns[ 7] = scanenablerow[ 7] ? 1'b1 : 1'b0;
assign keyboardcolumns[ 8] = scanenablerow[ 8] ? 1'b1 : 1'b0;
assign keyboardcolumns[ 9] = scanenablerow[ 9] ? 1'b1 : 1'b0;
assign keyboardcolumns[10] = scanenablerow[10] ? 1'b1 : 1'b0;
assign keyboardcolumns[11] = scanenablerow[11] ? 1'b1 : 1'b0;
assign keyboardcolumns[12] = scanenablerow[12] ? 1'b1 : 1'b0;
assign keyboardcolumns[13] = scanenablerow[13] ? 1'b1 : 1'b0;

always_ff @(posedge aclk) begin
	if (~aresetn) begin
		cmdre <= 1'b0;
		kpucmd <= 4'd0;
		scanenablerow <= 14'd0;
		cmdmode <= INIT;
	end else begin
		cmdre <= 1'b0;

		case (cmdmode)
			INIT: begin
				cmdmode <= WCMD;
			end

			WCMD: begin
				if (kpufifovalid && ~kpufifoempty) begin
					kpucmd <= kpufifodout[3:0];
					// Advance FIFO
					cmdre <= 1'b1;
					// Dispatch cmd
					cmdmode <= DISPATCH;
				end
			end

			DISPATCH: begin
				case (kpucmd)
					4'h0:		cmdmode <= SCANMATRIX;	// Scan each row in succession snd write to internal registers
					default:	cmdmode <= FINALIZE;	// Invalid command, wait one clock and try next
				endcase
			end

			SCANMATRIX: begin
				// Start from first row
				scanenablerow <= 14'b00000000000001;
				cmdmode <= DOSCAN;
			end

			DOSCAN: begin
				// Scan current row
				priority case (1'b1)
					scanenablerow[ 0] :	keymatrix[ 0] <= keyboardrows;
					scanenablerow[ 1] :	keymatrix[ 1] <= keyboardrows;
					scanenablerow[ 2] :	keymatrix[ 2] <= keyboardrows;
					scanenablerow[ 3] :	keymatrix[ 3] <= keyboardrows;
					scanenablerow[ 4] :	keymatrix[ 4] <= keyboardrows;
					scanenablerow[ 5] :	keymatrix[ 5] <= keyboardrows;
					scanenablerow[ 6] :	keymatrix[ 6] <= keyboardrows;
					scanenablerow[ 7] :	keymatrix[ 7] <= keyboardrows;
					scanenablerow[ 8] :	keymatrix[ 8] <= keyboardrows;
					scanenablerow[ 9] :	keymatrix[ 9] <= keyboardrows;
					scanenablerow[10] :	keymatrix[10] <= keyboardrows;
					scanenablerow[11] :	keymatrix[11] <= keyboardrows;
					scanenablerow[12] :	keymatrix[12] <= keyboardrows;
					scanenablerow[13] :	keymatrix[13] <= keyboardrows;
					default :			keymatrix[14] <= keyboardrows; // Unknown combinations
				endcase
				cmdmode <= NEXTROW;
			end

			NEXTROW: begin
				scanenablerow <= {scanenablerow[12:0], 1'b0};
				cmdmode <= FINISHSCAN;
			end

			FINISHSCAN: begin
				// Stop if we ran out of rows to scan
				cmdmode <= scanenablerow == 14'd0 ? FINALIZE : DOSCAN;
			end

			FINALIZE: begin
				cmdmode <= WCMD;
			end
		endcase
	end
end

endmodule
