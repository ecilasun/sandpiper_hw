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
	input wire [7:0] vpucontrolregister,
	// System memory AXI master (read/write)
	output logic        sysmem_arvalid,
	input  wire         sysmem_arready,
	output logic [31:0] sysmem_araddr,
	output logic [3:0]  sysmem_arlen,
	output logic [2:0]  sysmem_arsize,
	output logic [1:0]  sysmem_arburst,
	input  wire         sysmem_rvalid,
	output logic        sysmem_rready,
	input  wire  [63:0] sysmem_rdata,
	input  wire  [1:0]  sysmem_rresp,
	input  wire         sysmem_rlast,
	output logic        sysmem_awvalid,
	input  wire         sysmem_awready,
	output logic [31:0] sysmem_awaddr,
	output logic [3:0]  sysmem_awlen,
	output logic [2:0]  sysmem_awsize,
	output logic [1:0]  sysmem_awburst,
	output logic        sysmem_wvalid,
	input  wire         sysmem_wready,
	output logic [63:0] sysmem_wdata,
	output logic [7:0]  sysmem_wstrb,
	output logic        sysmem_wlast,
	input  wire  [1:0]  sysmem_bresp,
	input  wire         sysmem_bvalid,
	output logic        sysmem_bready,
	// Debug outputs
	output wire [3:0] runstate,
	output wire [12:0] debug_pc,
	output wire [3:0] debugopcode);

// --------------------------------------------------
// Register file
// --------------------------------------------------

reg cmpreg; // Compare result register
reg [3:0] rs1;
reg [3:0] rs2;
reg [3:0] rd;
reg rwren;
reg [31:0] rdin;
reg [7:0] imm8;
reg [15:0] imm16;
reg [23:0] imm24;
wire [31:0] rval1;
wire [31:0] rval2;

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

// Latched values for multi-cycle sysmem transactions
reg        sysmem_addr2_latch;   // bit[2] of address, selects 32-bit half of 64-bit AXI bus
reg [63:0] sysmem_wdata_latch;   // precomputed write data (64-bit bus, value in correct half)
reg [7:0]  sysmem_wstrb_latch;   // precomputed write strobe

localparam SYSMEM_SIZE_4_BYTE = 3'b010; // 4 bytes per beat
localparam SYSMEM_BURST_INCR  = 2'b01;

typedef enum bit [3:0] {
	FETCH,
	WAIT_FETCH,
	DECODE,
	EXEC,
	WAIT_READ,
	FINALIZE_READ,
	FINALIZE_COMPARE,
	WAIT_SYSMEM_WRITE_ADDR,
	WAIT_SYSMEM_WRITE_DATA,
	WAIT_SYSMEM_WRITE_RESP,
	WAIT_SYSMEM_READ_ADDR,
	WAIT_SYSMEM_READ_DATA,
	HALT} execmodetyper;
execmodetyper execmode;

assign runstate = execmode;
assign debug_pc = PC;
assign debugopcode = opcode;

reg [31:0] logicout;
always @(imm8, rval1, rval2) begin
	unique case (imm8)
		8'h00: logicout = rval1 & rval2;				// AND  - bit AND
		8'h01: logicout = rval1 | rval2;				// OR   - inclusive OR
		8'h02: logicout = rval1 ^ rval2;				// XOR  - exclusive OR
		8'h03: logicout = rval1 >>> rval2[4:0];			// ASR  - arithmetic shift right
		8'h04: logicout = rval1 >> rval2[4:0];			// SHR  - bit shift right
		8'h05: logicout = rval1 << rval2[4:0];			// SHL  - bit shift left
		8'h06: logicout = ~rval1;						// NEG  - bit NOT
		8'h07: logicout = {31'd0, cmpreg};				// RCMP - compare flag readout
		8'h08: logicout = {24'd0, vpucontrolregister};	// RCTL - VPU control register readout 
		default: logicout = 24'd0;						// zero in all other cases
	endcase
end

reg [31:0] aluout;
always @(imm8, rval1, rval2) begin
	unique case (imm8)
		8'd00: aluout = rval1 + rval2;		// ADD
		8'd01: aluout = rval1 - rval2;		// SUB
		8'd02: aluout = rval1 + 32'd1;		// INC
		8'd03: aluout = rval1 - 32'd1;		// DEC
		default: aluout = 24'd0;			// zero in all other cases
	endcase
end

always @(posedge aclk) begin
	if (!arstn) begin
		cmpreg <= 1'b0;
		opcode <= 4'd0;
		rs1 <= 4'd0;
		rs2 <= 4'd0;
		rd <= 4'd0;
		imm8 <= 8'd0;
		imm16 <= 16'd0;
		imm24 <= 24'd0;
		execmode <= FETCH;
		rwren <= 1'b0;
		rdin <= 32'd0;
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
		// System memory AXI reset
		sysmem_arvalid <= 1'b0;
		sysmem_araddr  <= 32'd0;
		sysmem_arlen   <= 4'd0;
		sysmem_arsize  <= SYSMEM_SIZE_4_BYTE;
		sysmem_arburst <= SYSMEM_BURST_INCR;
		sysmem_rready  <= 1'b0;
		sysmem_awvalid <= 1'b0;
		sysmem_awaddr  <= 32'd0;
		sysmem_awlen   <= 4'd0;
		sysmem_awsize  <= SYSMEM_SIZE_4_BYTE;
		sysmem_awburst <= SYSMEM_BURST_INCR;
		sysmem_wvalid  <= 1'b0;
		sysmem_wdata   <= 64'd0;
		sysmem_wstrb   <= 8'd0;
		sysmem_wlast   <= 1'b0;
		sysmem_bready  <= 1'b0;
		sysmem_addr2_latch  <= 1'b0;
		sysmem_wdata_latch  <= 64'd0;
		sysmem_wstrb_latch  <= 8'd0;
	end else begin
		palwe_reg <= 1'b0;
		rwren <= 1'b0;
		memwe <= 1'd0;

		unique case (execmode)
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
				imm16 <= instruction[31:16];
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
						rdin <= {8'd0, imm24}; // Load 24 bit immediate (zero-extended to 32 bits) into rd
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
							// Condition not met, stay in EXEC state and on same instruction
							execmode <= EXEC;
							nextPC <= PC; // Keep PC the same to re-execute this instruction
						end
					end

					4'h4: begin // SCANPIXEL_WAIT
						// Wait until scanpixel matches rs1
						if (scanpixel == rval1[9:0]) begin
							// Condition met, proceed
						end else begin
							// Condition not met, stay in EXEC state and on same instruction
							execmode <= EXEC;
							nextPC <= PC; // Keep PC the same to re-execute this instruction
						end
					end

					4'h5: begin // MATHOP
						rwren <= 1'b1;
						rdin <= aluout;
					end

					4'h6: begin // JMP
						// Jump to 13 bit address in rs1
						if (rd[0] == 1'b0) // Normal jump
							nextPC <= rval1[12:0];
						else // Indirect jump via immediate offset (2's complement signed)
							nextPC <= PC + signed'(imm16[12:0]);
					end

					4'h7: begin // CMP
						// Compare rs1 and rs2 and write flags to rd
						EQ <= (rval1 == rval2) ? 1'b1 : 1'b0;
						LT <= (rval1 < rval2) ? 1'b1 : 1'b0;
						LE <= (rval1 <= rval2) ? 1'b1 : 1'b0;
						execmode <= FINALIZE_COMPARE;
					end

					4'h8: begin // BRANCH
						// Take branch to address in rs1 if cmpreg is true from previous CMP instruction
						if (cmpreg) begin
							if (rd[0] == 1'b0) // Normal branch
								nextPC <= rval1[12:0];
							else // Indirect branch via immediate offset (2's complement signed)
								nextPC <= PC + signed'(imm16[12:0]);
						end
					end

					4'h9: begin // MEM_WRITE
						// Write rs2 to program memory at address in rs1
						memwe <= 1'b1;
						memdin <= rval2[31:0];
						// NOTE: We hijack the PC here to perform the write which will be overwritten with nextPC during fetch
						PC <= rval1[12:0];
					end

					4'hA: begin // MEM_READ
						// Read from program memory at address in rs1 into rd
						// NOTE: We hijack the PC here to perform the read which will be overwritten with nextPC during fetch
						PC <= rval1[12:0];
						execmode <= WAIT_READ;
					end

					4'hB: begin // READ_SCANINFO
						// Read current scanline or scan pixel into rd
						rwren <= 1'b1;
						if (rs1[0] == 1'b0)
						  rdin <= {22'd0, scanline};
						else
						  rdin <= {22'd0, scanpixel};
					end

					4'hC: begin // LOADPC
					   // Copy address of next instruction into a register (usualy link register, for return purposes)
					   rwren <= 1'b1;
					   rdin <= {19'd0, PC + 13'd4};
					end

					4'hD: begin // LOGICOP
						rwren <= 1'b1;
						rdin <= logicout;
					end

					4'hE: begin // SYSMEM_WRITE
						// Write rval2[31:0] to system memory at 32-bit address in rval1
						// Address must be 4-byte aligned; bit[2] selects the 32-bit lane on the 64-bit AXI bus
						sysmem_awvalid <= 1'b1;
						sysmem_awaddr  <= rval1;
						sysmem_awlen   <= 4'd0;               // single beat
						sysmem_awsize  <= SYSMEM_SIZE_4_BYTE;
						sysmem_awburst <= SYSMEM_BURST_INCR;
						// Pre-compute write data and strobe based on address bit[2]
						if (rval1[2] == 1'b0) begin
							sysmem_wdata_latch <= {32'd0, rval2[31:0]}; // bytes 0-3 of lower word
							sysmem_wstrb_latch <= 8'h0F;
						end else begin
							sysmem_wdata_latch <= {rval2[31:0], 32'd0}; // bytes 4-7 of upper word
							sysmem_wstrb_latch <= 8'hF0;
						end
						execmode <= WAIT_SYSMEM_WRITE_ADDR;
					end

					4'hF: begin // SYSMEM_READ
						// Read 32-bit word from system memory at 32-bit address in rval1, store into rd
						// Address must be 4-byte aligned; bit[2] selects the 32-bit lane on the 64-bit AXI bus
						sysmem_arvalid      <= 1'b1;
						sysmem_araddr       <= rval1;
						sysmem_arlen        <= 4'd0;               // single beat
						sysmem_arsize       <= SYSMEM_SIZE_4_BYTE;
						sysmem_arburst      <= SYSMEM_BURST_INCR;
						sysmem_addr2_latch  <= rval1[2]; // latch for finalize
						execmode <= WAIT_SYSMEM_READ_ADDR;
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
				rdin <= instruction[31:0];
				execmode <= FETCH;
			end

			FINALIZE_COMPARE: begin
				// First negate the test result then AND with the mask in imm8 to produce the final result
				cmpreg <= ((EQ ^ imm8[3]) & imm8[2]) | ((LT ^ imm8[3]) & imm8[1]) | ((LE ^ imm8[3]) & imm8[0]);
				execmode <= FETCH;
			end

			// ---- System memory write ----
			WAIT_SYSMEM_WRITE_ADDR: begin
				if (sysmem_awready) begin
					sysmem_awvalid <= 1'b0;
					sysmem_wvalid  <= 1'b1;
					sysmem_wdata   <= sysmem_wdata_latch;
					sysmem_wstrb   <= sysmem_wstrb_latch;
					sysmem_wlast   <= 1'b1;
					execmode <= WAIT_SYSMEM_WRITE_DATA;
				end
			end

			WAIT_SYSMEM_WRITE_DATA: begin
				if (sysmem_wready) begin
					sysmem_wvalid <= 1'b0;
					sysmem_wlast  <= 1'b0;
					sysmem_bready <= 1'b1;
					execmode <= WAIT_SYSMEM_WRITE_RESP;
				end
			end

			WAIT_SYSMEM_WRITE_RESP: begin
				if (sysmem_bvalid) begin
					sysmem_bready <= 1'b0;
					execmode <= FETCH;
				end
			end

			// ---- System memory read ----
			WAIT_SYSMEM_READ_ADDR: begin
				if (sysmem_arready) begin
					sysmem_arvalid <= 1'b0;
					sysmem_rready  <= 1'b1;
					execmode <= WAIT_SYSMEM_READ_DATA;
				end
			end

			WAIT_SYSMEM_READ_DATA: begin
				if (sysmem_rvalid) begin
					sysmem_rready <= 1'b0;
					rwren <= 1'b1;
					// Select the correct 32-bit lane and take lower 24 bits
						if (sysmem_addr2_latch == 1'b0)
						rdin <= sysmem_rdata[31:0];  // lower 32-bit word
					else
						rdin <= sysmem_rdata[63:32]; // upper 32-bit word
					execmode <= FETCH;
				end
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
