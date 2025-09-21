module vcpcore(
	input wire aclk,
	input wire aresetn,
	input wire execena,
	input wire [9:0] scanline,
	input wire [9:0] scanpixel,
	output wire vcpre,
	output wire [3:0] vcpwe,
	output wire [11:0] vcpaddr,
	output wire [31:0] vcpdin,
	input wire [31:0] vcpdout,
	// Palette RAM direct access
	output wire [7:0] paladdr,
	output wire [23:0] paldout,
	output wire palwe,
	// AXI4 wires for memory access
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
	output logic [7:0] m_axi_wstrb);

logic vcpre_r;
logic [3:0] vcpwe_r;
logic [11:0] vcpaddr_r;
logic [31:0] vcpdin_r;

assign vcpre = vcpre_r;
assign vcpwe = vcpwe_r;
assign vcpaddr = vcpaddr_r;
assign vcpdin = vcpdin_r;

// Instructions (up to 7 bits wide)
`define VCP_HALT			8'h00
`define VCP_NOOP			8'h01
`define VCP_WAITLINE		8'h02
`define VCP_WAITCOLUMN		8'h03
`define VCP_SETPIXOFF		8'h04
`define VCP_SETCACHEROFF	8'h05
`define VCP_SETCACHEWOFF	8'h06
`define VCP_SETACC			8'h07
`define VCP_SETPAL			8'h08
`define VCP_COPYREG			8'h09
`define VCP_ADD				8'h0A
`define VCP_COMPARE			8'h0B
`define VCP_BRANCH			8'h0C
`define VCP_JUMP			8'h0D
`define VCP_RESERVED1		8'h0E
`define VCP_RESERVED2		8'h0F
`define VCP_AND				8'h10
`define VCP_OR				8'h11
`define VCP_XOR				8'h12
`define VCP_NOT				8'h13
`define VCP_SHL				8'h14
`define VCP_SHR				8'h15
`define VCP_LOAD			8'h16
`define VCP_STORE			8'h17

`define COND_EQ				8'h01	// or NE if inverted
`define COND_LT				8'h02 	// or GE if inverted
`define COND_LE				8'h04 	// or GT if inverted
`define COND_ZERO			8'h08	// or NZ if inverted
`define COND_INV			8'h10	// invert the condition code

// State
typedef enum logic [4:0] {
	VIDLE,
	FETCH, DECODE, EXEC, MATHEXEC, MATHWAIT, 
	WAITH, WAITV,
	SETUPPAL,
	SETUPCACHEROFF, SETUPCACHEWOFF,
	LOADFINALIZE,
	STOREPRE, STOREWREADY, STOREFINALIZE,
	VHALT } vpuprogstatetype;
vpuprogstatetype vpuprgstate;

logic [23:0] vpuconst24;
logic [7:0] flags8;
logic [7:0] vpuconst8;
logic [9:0] vpuwaitline;
logic [9:0] vpuwaitpixel;
logic [7:0] vpuinstr;
logic [3:0] src1;
logic [3:0] src2;
logic [3:0] dest;

logic [7:0] paladdr_r;
logic [23:0] paldout_r;
logic palwe_r;

assign paladdr = paladdr_r;
assign paldout = paldout_r;
assign palwe = palwe_r;

// VPU register file
// R0 ->  ACC
wire [23:0] vpudout;
wire [23:0] vpudout2;
logic [23:0] vpudin;
logic vpurwe;

vcpregisterfile VCPGPR(
	.clock(aclk),
	.rs1(src1),
	.rs2(src2),
	.rd(dest),
	.wren(vpurwe), 
	.din(vpudin),
	.rval1(vpudout),
	.rval2(vpudout2) );

wire iseq = vpudout2 == vpudout;
wire islt = vpudout2 < vpudout;
wire isle = vpudout2 <= vpudout;
wire iszero = vpudout2 == 24'd0;

localparam SIZE_4_BYTE   = 3'b010; // 2^2
localparam SIZE_8_BYTE   = 3'b011; // 2^3
localparam SIZE_16_BYTE  = 3'b100; // 2^4

localparam BURST_FIXED = 2'b00;
localparam BURST_INCR  = 2'b01;
localparam BURST_WRAP  = 2'b10;

// AXI4 signal defaults
assign m_axi_awprot = 3'b0;
assign m_axi_arprot = 3'b0;
assign m_axi_awqos = 4'd0;
assign m_axi_arqos = 4'd0;			// priority of access from 0x0 to 0xF (0x0 is lowest)
assign m_axi_awcache = 4'b0010;
assign m_axi_arcache = 4'b0010;		// not allocated, modifiable, not bufferable
assign m_axi_arid = 0;
assign m_axi_awid = 0;
assign m_axi_wid = 0;
assign m_axi_awlock = 0;
assign m_axi_arlock = 0;
assign m_axi_awlen = 4'd0;
assign m_axi_awsize = SIZE_8_BYTE;	// Data bus size is 8 bytes, unused bytes are masked off by wstrb to generate 32-bit accesses
assign m_axi_awburst = BURST_FIXED;	// single address only
assign m_axi_arlen = 0;
assign m_axi_arburst = BURST_FIXED;
assign m_axi_arsize = SIZE_4_BYTE;	// Bus address size is 4 bytes

logic mathena;
logic mathready;
logic [23:0] A;
logic [23:0] B;
logic [23:0] mathout;

always @(posedge aclk) begin
	if (~aresetn) begin
		mathout <= 0;
		mathready <= 0;
	end else begin
		mathready <= 0;
		if (mathena) begin
			case (vpuinstr)
				`VCP_ADD: begin
					mathout <= A + B;
					mathready <= 1;
				end
				`VCP_AND: begin
					mathout <= A & B;
					mathready <= 1;
				end
				`VCP_OR: begin
					mathout <= A | B;
					mathready <= 1;
				end
				`VCP_XOR: begin
					mathout <= A ^ B;
					mathready <= 1;
				end
				`VCP_NOT: begin
					mathout <= ~A;
					mathready <= 1;
				end
				`VCP_SHL: begin
					mathout <= A << B[5:0];
					mathready <= 1;
				end
				`VCP_SHR: begin
					mathout <= A >> B[5:0];
					mathready <= 1;
				end
				default: begin
					// Illegal math ops return zero
					mathout <= 24'd0;
					mathready <= 1;
				end
			endcase
		end
	end
end

wire isAcc = (vcpdout[7:0] == `VCP_SETACC);
wire isCmp = (vcpdout[7:0] == `VCP_COMPARE);
logic execlatch;

always @(posedge aclk) begin
	if(~aresetn) begin
		m_axi_arvalid <= 0;
		m_axi_rready <= 0;
		m_axi_araddr <= 32'd0;
		m_axi_awaddr <= 'd0;
		m_axi_wvalid <= 0;
		m_axi_wstrb <= 8'h00;
		m_axi_wlast <= 0;
		m_axi_wdata <= 64'd0;
		m_axi_bready <= 0;
		m_axi_awvalid <= 0;

		vcpre_r <= 1'b0;
		vcpwe_r <= 4'd0;
		vcpaddr_r <= 12'd0;
		vcpdin_r <= 32'd0;

		paladdr_r <= 8'd0;
		paldout_r <= 24'd0;
		palwe_r <= 1'b0;

		vpuprgstate <= VIDLE;
		vpuconst24 <= 24'd0;
		vpuconst8 <= 8'd0;
		flags8 <= 8'd0;
		vpuwaitline <= 10'd0;
		vpuwaitpixel <= 10'd0;
		vpuinstr <= 8'd0;
		src1 <= 4'd0;
		src2 <= 4'd0;
		dest <= 4'd0;
		vpudin <= 24'd0;
		vpurwe <= 1'b0;
		mathena <= 1'b0;
		execlatch <= 1'b0;
	end else begin
		vpurwe <= 1'b0;
		vcpre_r <= 1'b0;
		vcpwe_r <= 4'd0;
		mathena <= 1'b0;
		palwe_r <= 1'b0;

		// Allow execution to be started
		if (execena)
			execlatch <= 1'b1;

		unique case (vpuprgstate)
			VIDLE: begin
				vpuprgstate <= execlatch ? FETCH : VIDLE;
				// Idle/unknown/execoff modes reset PC to zero
				vcpaddr_r <= 12'd0;
			end

			FETCH: begin
				// Trigger instruction read
				vcpre_r <= 1'b1;
				vpuprgstate <= execlatch ? DECODE : VIDLE;
				// If execena goes low here, we finish the current instruction and then stop execution on next one
				execlatch <= execena;
			end

			DECODE: begin
				// Decode the instruction that was already selected with previous vcpaddr_r
				vpuconst24 <= vcpdout[31:8];						// 24-bit constant
				vpuconst8 <= vcpdout[31:24];						// write strobe
				flags8 <= vcpdout[23:16];							// compare condition or 8 bit index
				src2 <= vcpdout[15:12]; 							// srcreg (default source)
				dest <= (isAcc | isCmp) ? 4'd0 : vcpdout[11:8];		// setacc always aims 24 bit immed at R0 (ACC register), compare always stores in ACC
				src1 <= vcpdout[11:8];								// same as dest
				vpuinstr <= vcpdout[7:0];							// instruction opcode
				vpuprgstate <= vcpdout[4] ? MATHEXEC : EXEC;		// bit 4 indicates math instruction
			end

			EXEC: begin
				// Ideally we resume at next instruction
				// unless it's a branch instruction
				vcpaddr_r <= vcpaddr_r + 12'd4;

				case (vpuinstr)
					`VCP_HALT: begin
						// Stop execution
						execlatch <= 1'b0;
						vpuprgstate <= VIDLE;
					end
					`VCP_NOOP: begin
						// Waste one clock
						vpuprgstate <= FETCH;
					end
					`VCP_WAITLINE: begin
						vpuwaitpixel <= 2;
						vpuprgstate <= WAITH;
					end
					`VCP_WAITCOLUMN: begin
						vpuwaitline <= vpudout2;
						vpuprgstate <= WAITV;
					end
					`VCP_SETPIXOFF: begin
						// TODO: move pixle offset register here and let VPU share them
						//pixel_offset <= vpudout2[3:0];
						vpuprgstate <= FETCH;
					end
					`VCP_SETCACHEROFF: begin
						// TODO: move cache read offset register here and let VPU share them
						//scanlinea_offset <= vpudout2[7:0];
						vpuprgstate <= FETCH;
					end
					`VCP_SETCACHEWOFF: begin
						// TODO: move cache write offset register here and let VPU share them
						//scanlinewa_offset <= vpudout2[7:0];
						vpuprgstate <= FETCH;
					end
					`VCP_SETACC: begin
						vpudin <= vpuconst24;
						vpurwe <= 1'b1;
						vpuprgstate <= FETCH;
					end
					`VCP_SETPAL: begin
						// Single cycle palette write
						// flags8 = palette index 0-255
						// vpuconst24 = RGB color
						paladdr_r <= flags8;
						paldout_r <= vpudout2;
						palwe_r <= 1'b1;
						vpuprgstate <= FETCH;
					end
					`VCP_COPYREG: begin
						vpudin <= vpudout2;
						vpurwe <= 1'b1;
						vpuprgstate <= FETCH;
					end
					`VCP_COMPARE: begin
						// Compare result goes into ACC (see DECODE)
						priority case (1'b1)
							flags8[3]:	vpudin <= {23'd0, (flags8[4] ^ iszero)};
							flags8[2]:	vpudin <= {23'd0, (flags8[4] ^ isle)};
							flags8[1]:	vpudin <= {23'd0, (flags8[4] ^ islt)};
							flags8[0]:	vpudin <= {23'd0, (flags8[4] ^ iseq)};
							default:	vpudin <= 24'd0;
						endcase
						vpurwe <= 1'b1;
						vpuprgstate <= FETCH;
					end
					`VCP_BRANCH: begin
						// Branch to target based on zero or nonzero ACC (src==0)
						vcpaddr_r <= vpudout[0] ? vpudout2 : (vcpaddr_r + 'd4);
						vpuprgstate <= FETCH;
					end
					`VCP_JUMP: begin
						vcpaddr_r <= vpudout2;
						vpuprgstate <= FETCH;
					end
					`VCP_LOAD: begin
						// Load data from shared memory at 0x1800_0000 + offset
						// This allows for communication and data sharing with the CPU
						m_axi_araddr <= {8'h18, vpudout2[23:0]}; // 0x1800_0000 .. 0x18FF_FFFF
						m_axi_arvalid <= 1'b1;
						m_axi_rready <= 1'b1;
						vpuprgstate <= LOADFINALIZE;
					end
					`VCP_STORE: begin
						// Store data in shared memory at 0x1800_0000 + offset
						// This allows for communication and data sharing with the CPU
						m_axi_awvalid <= 1'b1;
						m_axi_awaddr <= {8'h18, vpudout[23:0]}; // 0x1800_0000 .. 0x18FF_FFFF
						vpuprgstate <= STOREPRE;
					end
					default: begin
						// Illegal instruction - stop execution
						execlatch <= 1'b0;
						vpuprgstate <= VIDLE;
					end
				endcase
			end

			MATHEXEC: begin
				A <= vpudout2;
				B <= vpudout;
				mathena <= 1'b1;
				vpuprgstate <= MATHWAIT;
			end

			MATHWAIT: begin
				if (mathready) begin
					vpudin <= mathout;
					vpurwe <= 1'b1;
					vpuprgstate <= FETCH;
				end
			end

			LOADFINALIZE: begin
				if (m_axi_rvalid) begin
					m_axi_arvalid <= 1'b0;
					m_axi_rready <= 1'b0;
					vpudin <= m_axi_rdata[23:0];
					vpurwe <= 1'b1;
					vpuprgstate <= FETCH;
				end
			end

			STOREPRE: begin
				if (m_axi_awready) begin // && m_axi.awvalid
					m_axi_awvalid <= 1'b0;
					m_axi_wvalid <= 1'b1;
					m_axi_wstrb <= vpuconst8;
					m_axi_wdata <= {40'd0, vpudout2}; // 24-bit data in lower bits of 64-bit word
					m_axi_wlast <= 1'b1;
					vpuprgstate <= STOREWREADY;
				end
			end

			STOREWREADY: begin
				if (m_axi_wready) begin // && m_axi.wvalid
					m_axi_wvalid <= 1'b0;
					m_axi_wstrb <= 8'h00;
					m_axi_wlast <= 1'b0;
					m_axi_bready <= 1'b1;
					vpuprgstate <= STOREFINALIZE;
				end
			end

			STOREFINALIZE: begin
				if (m_axi_bvalid) begin
					m_axi_bready <= 1'b0;
					vpuprgstate <= FETCH;
				end
			end

			WAITH: begin
				vpuprgstate <= scanpixel == vpuwaitpixel ? FETCH : WAITH;
			end

			WAITV: begin
				vpuprgstate <= scanline == vpuwaitline ? FETCH : WAITV;
			end
		endcase
	end
end

endmodule
