`timescale 1ns / 1ps

module vcpexec(
	input wire aclk,
	input wire arstn,
	// Execution flags (from VCP side)
	input wire [3:0] execstate,
	// Program memory write bus
	input wire [9:0] prgaddr,
	input wire [63:0] prgdin,
	input wire prgwe,
	// Scanline access for waits
	input wire [9:0] scanline,
	input wire [9:0] scanpixel,
	// Palette write access
	output wire [7:0] paladdr,
	output wire [23:0] paldout,
	output wire palwe,
	// Debug outputs
	output wire [3:0] runstate,
	output wire [12:0] debug_pc,
	output wire [3:0] debugopcode);

// --------------------------------------------------
// Register file
// --------------------------------------------------

reg [3:0] rs1;
reg [3:0] rs2;
reg [3:0] rd;
reg rwren;
reg [23:0] rdin;
reg [7:0] imm8;
reg [23:0] imm24;
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
reg memwe;
reg [31:0] memdin;
wire [31:0] instruction;

blk_mem_gen_0 vcpprogrammemory (
	.clka(aclk),
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
	.dinb(memdin),
	.doutb(instruction) );

// --------------------------------------------------
// Execution unit
// --------------------------------------------------

reg [9:0] scanlinecmp;
reg [9:0] scanpixelcmp;

reg [3:0] opcode;

reg EQ;
reg LT;
reg LE;

reg palwe_reg;
reg [7:0] paladdr_reg;
reg [23:0] paldout_reg;
assign paladdr = paladdr_reg;
assign paldout = paldout_reg;
assign palwe = palwe_reg;

typedef enum bit [3:0] {
	INIT,
	FETCH,
	WAIT_FETCH,
	DECODE,
	EXEC,
	WAIT_READ,
	FINALIZE_READ,
	FINALIZE_COMPARE,
	HALT} execmodetyper;
execmodetyper execmode;

assign runstate = execmode;
assign debug_pc = PC;
assign debugopcode = opcode;

always @(posedge aclk) begin
    if (!arstn) begin
		opcode <= 4'd0;
        rs1 <= 4'd0;
        rs2 <= 4'd0;
        rd <= 4'd0;
		imm8 <= 8'd0;
		imm24 <= 24'd0;
		execmode <= INIT;
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
        memwe <= 1'd0;
		EQ <= 1'b0;
		LT <= 1'b0;
		LE <= 1'b0;
    end else begin

		palwe_reg <= 1'b0;
		rwren <= 1'b0;
		memwe <= 1'd0;

		case (execmode)
			INIT: begin
				PC <= 13'd0;
				nextPC <= 13'd0;
				execmode <= FETCH;
			end

			FETCH: begin
				PC <= nextPC;
				// Next clock will have the instruction fetched or we'll halt if execstate[0] is low
				execmode <= execstate[0] ? WAIT_FETCH : HALT;
			end

			WAIT_FETCH: begin
				// Wait one cycle for memory fetch to complete
				execmode <= DECODE;
			end

			DECODE: begin
				opcode <= instruction[3:0];
				rd <= instruction[7:4];
				rs1 <= instruction[11:8];
				rs2 <= instruction[15:12];
				imm8 <= instruction[31:24];
				imm24 <= instruction[31:8];
				execmode <= EXEC;
			end

			EXEC: begin
				execmode <= FETCH;

				// Addresses are in bytes, so increment PC by 4 for next word
				nextPC <= PC + 13'd4;

				unique case (opcode)
					4'h0: begin // NOP
						// Do nothing
					end

					4'h1: begin // LOAD_IMM
						rwren <= 1'b1;
						rdin <= imm24; // Load 24 bit immediate value into rd
					end

					4'h2: begin // PAL_WRITE
						// rs1 is the palette address
						// rs2 is the write value
						palwe_reg <= 1'b1;
						paladdr_reg <= rval1[7:0];
						paldout_reg <= rval2[23:0];
					end

					4'h3: begin // SCANLINE_WAIT
						// Wait until scanline matches rs1
						if (scanline == rval1[9:0]) begin
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

					4'h7: begin // CMP
						// Compare rs1 and rs2 and write flags to rd
						EQ <= (rval1 == rval2) ? 1'b1 : 1'b0;
						LT <= (rval1 < rval2) ? 1'b1 : 1'b0;
						LE <= (rval1 <= rval2) ? 1'b1 : 1'b0;
						execmode <= FINALIZE_COMPARE;
					end

					4'h8: begin // BRANCH
						// If any of the enabled tests pass (via CMP instruction), branch to address in rs1
						if (rval2[2] | rval2[1] | rval2[0])
							nextPC <= rval1[12:0]; // rval2 contains the boolean results of the tests. If any are true, take the branch.
					end

					4'h9: begin // MEM_WRITE
						// Write rs2 to program memory at address in rs1
						memwe <= 1'b1;
						memdin <= {8'd0, rval2[23:0]};
						// NOTE: We hijack the PC here to perform the write which will be overwritten with nextPC during fetch
						PC <= rval1[12:0];
					end

					4'hA: begin // MEM_READ
						// Read from program memory at address in rs1 into rd
						// NOTE: We hijack the PC here to perform the read which will be overwritten with nextPC during fetch
						PC <= rval1[12:0];
						execmode <= WAIT_READ;
					end

					default: begin // ILLEGAL OPCODE
						// Unknown opcode - break the program
						execmode <= HALT;
					end
				endcase
			end

			WAIT_READ: begin
				// Wait one cycle for memory read to complete
				execmode <= FINALIZE_READ;
			end

			FINALIZE_READ: begin
				// Complete the MEM_READ operation
				rwren <= 1'b1;
				rdin <= instruction[23:0];
				execmode <= FETCH;
			end

			FINALIZE_COMPARE: begin
				rwren <= 1'b1;
				// First negate the test result then AND with the mask in imm8 to produce the final result
				rdin <= {21'd0, (EQ ^ imm8[3]) & imm8[2], (LT ^ imm8[3]) & imm8[1], (LE ^ imm8[3]) & imm8[0]};
				execmode <= FETCH;
			end

			HALT: begin
				// Do nothing, reset PC to start address and wait for execstate[0] (RUN) to go high
				PC <= 13'd0;
				nextPC <= 13'd0;
				execmode <= execstate[0] ? FETCH : HALT;
			end
		endcase
    end
end

endmodule
