`timescale 1ns / 1ps

module vcpexec(
    input wire aclk,
    input wire arstn,
    input wire execena,         // Execution enable (from VPU side)
    input wire [3:0] execstate, // Execution flags (from VCP side)
    // Program memory write bus
    input wire [9:0] prgaddr,
    input wire [63:0] prgdin,
    input wire [7:0] prgwe,
    // Scanline access for waits
	input wire [9:0] scanline,
	input wire [9:0] scanpixel,
	// Palette write access
	output wire [7:0] paladdr,
	output wire [23:0] paldout,
	output wire palwe);

// --------------------------------------------------
// Register file
// --------------------------------------------------

reg [3:0] rs1;
reg [3:0] rs2;
reg [3:0] rd;
reg rwren;
reg [23:0] rdin;
wire [23:0] rval1;
wire [23:0] rval2;

vcpregisterfile vcpregisterInst(
	.clock(aclk),
	.rs1(rs1),
	.rs2(rs2),
	.rd(rd),
	.wren(rwren), 
	.din(rdin),
	.rval1(rval1),
	.rval2(rval2) );

// --------------------------------------------------
// Program memory
// --------------------------------------------------

reg [12:0] PC;
reg [12:0] nextPC;
reg [3:0] memwe;
reg [31:0] memdin;
wire [31:0] instruction;

blk_mem_gen_0 vcpprogrammemory (
  .clka(aclk),
  .ena(1'b1),
  // Program upload bus
  .wea(prgwe),
  .addra(prgaddr),
  .dina(prgdin),
  .douta(), // unused
  // Program execute bus
  .clkb(aclk),
  .enb(1'b1),
  .web(memwe),
  .addrb(PC[12:2]), // use word aligned address
  .dinb(memdin), // unused
  .doutb(instruction) );

// --------------------------------------------------
// Execution unit
// --------------------------------------------------

reg [9:0] scanlinecmp;
reg [9:0] scanpixelcmp;

reg [3:0] opcode;

reg palwe_reg;
reg [7:0] paladdr_reg;
reg [23:0] paldout_reg;
assign paladdr = paladdr_reg;
assign paldout = paldout_reg;
assign palwe = palwe_reg;

typedef enum bit [2:0] {
	INIT,
	FETCH,
	DECODE,
	EXEC,
	FINALIZE_READ,
	HALT} execmodetyper;
execmodetyper execmode = INIT;

always @(posedge aclk) begin
    if (!arstn) begin
        rs1 <= 4'd0;
        rs2 <= 4'd0;
        rd <= 4'd0;
        rwren <= 1'b0;
        rdin <= 24'd0;
        scanlinecmp <= 10'd0;
        scanpixelcmp <= 10'd0;
		palwe_reg <= 1'b0;
		paladdr_reg <= 8'd0;
		paldout_reg <= 24'd0;
        PC <= 13'd0;
		nextPC <= 13'd0;
		memdin <= 32'd0;
        memwe <= 4'd0;
    end else begin

		palwe_reg <= 1'b0;
		rwren <= 1'b0;
		memwe <= 4'd0;

		case (execmode)
			INIT: begin
				PC <= 13'd0;
				nextPC <= 13'd0;
				execmode <= FETCH;
			end

			FETCH: begin
				PC <= nextPC;
				// Next clock will have the instruction fetched or we'll halt if execena is low
				execmode <= execena ? DECODE : HALT;
			end

			DECODE: begin
				opcode <= instruction[3:0];
				rd <= instruction[7:4];
				rs1 <= instruction[11:8];
				rs2 <= instruction[15:12];
				execmode <= EXEC;
			end

			EXEC: begin
				execmode <= FETCH;

				// Addresses are in bytes, so increment PC by 4 for next word
				nextPC <= PC + 13'd4;

				case (opcode)
					4'h0: begin // NOP
						// Do nothing
					end

					4'h1: begin // LOAD_IMM
						rwren <= 1'b1;
						rdin <= instruction[31:8]; // Load 24 bit immediate value into rd
					end

					4'h2: begin // PAL_WRITE
						// rs1 is the palette address
						// rs2 is the write value
						palwe_reg <= 1'b1;
						paladdr_reg <= rval1[7:0];
						paldout_reg <= rval2[23:0];
					end

					4'h3: begin // SCANLINE_WAIT
						// Wait until scanline matches rs1 and scanpixel matches rs2
						// If rs2 == 0 then this will always be zero i.e. top of the scanline
						if ((scanline == rval1[9:0]) && (scanpixel == rval2[9:0])) begin
							// Condition met, proceed
						end else begin
							// Condition not met, stay in EXEC state
							nextPC <= PC; // Keep PC the same to re-execute this instruction
						end
					end

					4'h4: begin // SCANPIXEL_WAIT
						// Wait until scanpixel matches rs1
						if (scanpixel == rval1[9:0]) begin
							// Condition met, proceed
						end else begin
							// Condition not met, stay in EXEC state
							nextPC <= PC; // Keep PC the same to re-execute this instruction
						end
					end

					4'h5: begin // ADD
						rwren <= 1'b1;
						rdin <= rval1 + rval2;
					end

					4'h6: begin // JMP
						// Jump to 13 bit address in rs1
						nextPC <= rval1[12:0];
					end

					/*4'h7: begin // CMP
						// Compare rs1 and rs2 and write flag to rd
					end

					4'h8: begin // BRANCH
						// Branch to address in rs1 if condition in rd is met
					end*/

					4'h9: begin // MEM_WRITE
						// Write rs2 to program memory at address in rs1
						memwe <= 4'b1111; // Enable all byte lanes for write
						memdin <= {8'd9, rval2[23:0]};
						// NOTE: We hijack the PC here to perform the write which will be overwritten with nextPC during fetch
						PC <= rval1[12:0];
					end

					4'd10: begin // MEM_READ
						// Read from program memory at address in rs1 into rd
						// NOTE: We hijack the PC here to perform the read which will be overwritten with nextPC during fetch
						PC <= rval1[12:0];
						execmode <= FINALIZE_READ;
					end

					default: begin
						// Unknown opcode - treat as NOP so we don't hang
					end
				endcase
			end

			FINALIZE_READ: begin
				// Complete the MEM_READ operation
				rwren <= 1'b1;
				rdin <= instruction[23:0];
				execmode <= FETCH;
			end

			HALT: begin
				// Do nothing, reset PC to start address and wait for execena to go high
				PC <= 13'd0;
				nextPC <= 13'd0;
				execmode <= execena ? FETCH : HALT;
			end
		endcase
    end
end

endmodule
