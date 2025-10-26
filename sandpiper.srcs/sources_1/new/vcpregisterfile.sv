`timescale 1ns / 1ps
`default_nettype none

module vcpregisterfile(
	input wire clock,			// Writes are clocked, reads are not
	input wire [3:0] rs1,		// Source register 1
	input wire [3:0] rs2,		// Source register 2
	input wire [3:0] rd,		// Destination register
	input wire wren,			// Write enable bit for writing to register rd 
	input wire [23:0] din,		// Data to write to register rd
	output wire [23:0] rval1,	// Register values for rs1 and rs2
	output wire [23:0] rval2 );

logic [23:0] registers[0:15];

// The whole register file is zero at boot
initial begin
	int ri;
	for (ri=0; ri<32; ri=ri+1) begin
		registers[ri]  = 24'h000000;
	end
end

always @(posedge clock) begin
	if (wren && (rd != 4'd0)) // R0 is hardwired to zero so ignore writes to it
		registers[rd] <= din;
end

assign rval1 = registers[rs1];
assign rval2 = registers[rs2];

endmodule
