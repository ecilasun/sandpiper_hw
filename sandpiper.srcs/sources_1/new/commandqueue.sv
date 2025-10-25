module commandqueue #(
	parameter C_S_AXI_DATA_WIDTH = 64,
	parameter C_S_AXI_ADDR_WIDTH = 32
) (
	// Global signals
	input wire  aclk,
	input wire  aresetn,

	// Write address channel
	input wire  m_axi_awvalid,
	output wire m_axi_awready,
	input wire  [C_S_AXI_ADDR_WIDTH-1:0] m_axi_awaddr,

	// Write data channel
	input wire  m_axi_wvalid,
	output wire m_axi_wready,
	input wire  [C_S_AXI_DATA_WIDTH-1:0] m_axi_wdata,
	input wire  [(C_S_AXI_DATA_WIDTH/8)-1:0] m_axi_wstrb,

	// Write response channel
	output wire m_axi_bvalid,
	input wire  m_axi_bready,
	output wire [1:0] m_axi_bresp,

	// Read address channel
	input wire  m_axi_arvalid,
	output wire m_axi_arready,
	input wire  [C_S_AXI_ADDR_WIDTH-1:0] m_axi_araddr,

	// Read data channel
	output wire m_axi_rvalid,
	input wire  m_axi_rready,
	output wire [C_S_AXI_DATA_WIDTH-1:0] m_axi_rdata,
	output wire [1:0] m_axi_rresp,

	// Fifo interface
	output wire fifoempty,
	output wire [31:0] fifodout,
	input wire fifore,
	output wire fifovalid,

	// Low/High device state words (status bit flags / counters etc)
	input wire [31:0] devicestateLow,
	input wire [31:0] devicestateHigh);

	// --- State machine and internal registers ---
	reg awready_reg;
	reg wready_reg;
	reg bvalid_reg;
	reg [1:0] bresp_reg;
	reg arready_reg;
	reg rvalid_reg;
	reg [C_S_AXI_DATA_WIDTH-1:0] rdata_reg;
	reg [1:0] rresp_reg;

	reg [C_S_AXI_ADDR_WIDTH-1:0] awaddr_reg;
	reg [C_S_AXI_ADDR_WIDTH-1:0] araddr_reg;

	// AXI4-Lite handshake logic
	assign m_axi_awready = awready_reg;
	assign m_axi_wready = wready_reg;
	assign m_axi_bvalid = bvalid_reg;
	assign m_axi_bresp = bresp_reg;
	assign m_axi_arready = arready_reg;
	assign m_axi_rvalid = rvalid_reg;
	assign m_axi_rdata = rdata_reg;
	assign m_axi_rresp = rresp_reg;

	wire fifofull;
	logic fifowe;
	logic [31:0] fifodin;

	cmdfifo cmdfifoinst(
		.full(fifofull),
		.din(fifodin),
		.wr_en(fifowe),
		.empty(fifoempty),
		.dout(fifodout),
		.rd_en(fifore),
		.valid(fifovalid),
		.clk(aclk),
		.rst(~aresetn) );

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
			fifowe <= 1'b0;
			fifodin <= 32'd0;
		end else begin
			fifowe <= 1'b0;
			// Write channel logic
			case (write_state)
				WRITE_IDLE: begin
					awready_reg <= 1'b1;
					if (m_axi_awvalid) begin
						awaddr_reg <= m_axi_awaddr;
						awready_reg <= 1'b0;
						write_state <= WRITE_DATA;
					end
				end
				WRITE_DATA: begin
					wready_reg <= 1'b1;
					if (m_axi_wvalid && ~fifofull) begin
						fifowe <= 1'b1;
						fifodin <= m_axi_wdata[31:0]; // Assuming we're always allowed to do 32-bit writes
						wready_reg <= 1'b0;
						write_state <= WRITE_RESP;
					end
				end
				WRITE_RESP: begin
					bvalid_reg <= 1'b1;
					bresp_reg <= 2'b00; // OKAY response
					if (m_axi_bready) begin
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
		end else begin
			case (read_state)
				READ_IDLE: begin
					arready_reg <= 1'b1;
					if (m_axi_arvalid) begin
						araddr_reg <= m_axi_araddr;
						arready_reg <= 1'b0;
						read_state <= READ_DATA;
					end
				end
				READ_DATA: begin
					unique case (araddr_reg[2])
						1'b0: rdata_reg <= {devicestateLow, devicestateLow};
						1'b1: rdata_reg <= {devicestateHigh, devicestateHigh};
					endcase
					rvalid_reg <= 1'b1;
					rresp_reg <= 2'b00; // OKAY response
					if (m_axi_rready) begin
						rvalid_reg <= 1'b0;
						read_state <= READ_IDLE;
					end
				end
				default: read_state <= READ_IDLE;
			endcase
		end
	end
endmodule
