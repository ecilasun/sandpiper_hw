`timescale 1ns / 1ps

module commandqueue(
	input wire aclk,
	input wire aresetn,
	output logic m_axi_arready,
	output logic m_axi_awready,
	output logic m_axi_bvalid,
	output logic m_axi_rlast,
	output logic m_axi_rvalid,
	output logic m_axi_wready,
	output logic [1:0] m_axi_bresp,
	output logic [1:0] m_axi_rresp,
	output logic [5:0] m_axi_bid,
	output logic [5:0] m_axi_rid,
	output logic [63:0] m_axi_rdata,
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
	// Internal comms channel for device
	output wire fifoempty,
	output wire [31:0] fifodout,
	input wire fifore,
	output wire fifovalid,
	// Device state such as bit flags / counters
    input wire [31:0] devicestateLow,
    // Upper device state
    input wire [31:0] devicestateHigh);

assign m_axi_bresp = 2'b00;
assign m_axi_rresp = 2'b00;
assign m_axi_bid = 6'd0;
assign m_axi_rid = 6'd0;

// --------------------------------------------------
// Device command FIFO
// --------------------------------------------------

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

logic [1:0] waddrstate;
logic [1:0] writestate;
logic [1:0] raddrstate;

always @(posedge aclk) begin
	if (~aresetn) begin
		waddrstate <= 2'b00;
	end else begin
		unique case (waddrstate)
			2'b00: begin
				m_axi_awready <= 1'b0;
				waddrstate <= 2'b01;
			end
			2'b01: begin
				if (m_axi_awvalid) begin
					m_axi_awready <= 1'b1;
					waddrstate <= 2'b10;
				end
			end
			2'b10: begin
				m_axi_awready <= 1'b0;
				waddrstate <= 2'b01;
			end
		endcase
	end
end

always @(posedge aclk) begin
	if (~aresetn) begin
		fifowe <= 1'b0;
		writestate <= 2'b00;
		fifodin <= 32'd0;
	end else begin
		fifowe <= 1'b0;
		m_axi_wready <= 1'b0;
		m_axi_bvalid <= 1'b0;
	
		unique case (writestate)
			2'b00: begin
				m_axi_bvalid <= 1'b0;
				m_axi_wready <= 1'b0;
				writestate <= 2'b01;
			end
			2'b01: begin
				if (m_axi_wvalid && ~fifofull) begin
					fifodin <= m_axi_wdata[31:0];
					fifowe <= 1'b1;
					writestate <= 2'b10;
					m_axi_wready <= 1'b1;
				end
			end
			2'b10: begin
				if (m_axi_bready) begin
					m_axi_bvalid <= 1'b1;
					writestate <= 2'b01;
				end
			end
		endcase
	end
end

always @(posedge aclk) begin
	if (~aresetn) begin
		raddrstate <= 2'b00;
		m_axi_rlast <= 1'b0;
	end else begin
		m_axi_rvalid <= 1'b0;
		m_axi_arready <= 1'b0;
		m_axi_rlast <= 1'b0;

		unique case (raddrstate)
			2'b00: begin
				m_axi_arready <= 1'b0;
				m_axi_rvalid <= 1'b0;
				raddrstate <= 2'b01;
			end
			2'b01: begin
				if (m_axi_arvalid) begin
					m_axi_arready <= 1'b1;
					case (m_axi_araddr[3:0])
						4'b0000: raddrstate <=  2'b10; // =0x_0 low device state
						default: raddrstate <=  2'b11; // !0x_0 high device state
					endcase
				end
			end
			2'b10: begin
				if (m_axi_rready) begin
					m_axi_rdata <= {devicestateLow, devicestateLow};
					m_axi_rvalid <= 1'b1;
					m_axi_rlast <= 1'b1;
					raddrstate <= 2'b01;
				end
			end
			2'b11: begin
				if (m_axi_rready) begin
					m_axi_rdata <= {devicestateHigh, devicestateHigh};
					m_axi_rvalid <= 1'b1;
					m_axi_rlast <= 1'b1;
					raddrstate <= 2'b01;
				end
			end
		endcase
	end
end

endmodule
