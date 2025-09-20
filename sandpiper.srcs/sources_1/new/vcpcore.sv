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
`define VPU_HALT			8'h00
`define VPU_NOOP			8'h01
`define VPU_WAITLINE		8'h02
`define VPU_WAITCOLUMN		8'h03
`define VPU_SETPIXOFF		8'h04
`define VPU_SETCACHEROFF	8'h05
`define VPU_SETCACHEWOFF	8'h06
`define VPU_SETACC			8'h07
`define VPU_SETPAL			8'h08
`define VPU_COPYREG			8'h09
`define VPU_COMPARE			8'h0A
`define VPU_BRANCH			8'h0B
`define VPU_LOAD			8'h0C
`define VPU_STORE			8'h0D
`define VPU_UNUSED0			8'h0E
`define VPU_UNUSED1			8'h0F
`define VPU_ADD				8'h10
`define VPU_MUL				8'h11
`define VPU_DIV				8'h12
`define VPU_MOD				8'h13
`define VPU_AND				8'h14
`define VPU_OR				8'h15
`define VPU_XOR				8'h16
`define VPU_NOT				8'h17
`define VPU_SHL				8'h18
`define VPU_SHR				8'h19

`define COND_EQ				8'h01	// or NE if inverted
`define COND_LT				8'h02 	// or GE if inverted
`define COND_LE				8'h04 	// or GT if inverted
`define COND_ZERO			8'h08	// or NZ if inverted
`define COND_INV			8'h10	// invert the condition code

// State
typedef enum logic [4:0] {
	VIDLE,
	FETCH, DECODE, EXEC, MATHEXEC, MATHWAIT, WRITEREG,
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
logic [4:0] ccond;

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

assign m_axi_awprot = 3'b0;
assign m_axi_arprot = 3'b0;
assign m_axi_awqos = 4'd0;
assign m_axi_arqos = 4'd0;		// priority of access from 0x0 to 0xF (0x0 is lowest)
assign m_axi_awcache = 4'b0010;
assign m_axi_arcache = 4'b0010;	// not allocated, modifiable, not bufferable
assign m_axi_arid = 0;
assign m_axi_awid = 0;
assign m_axi_wid = 0;
assign m_axi_awlock = 0;
assign m_axi_arlock = 0;

localparam SIZE_4_BYTE   = 3'b010; // 2^2
localparam SIZE_8_BYTE   = 3'b011; // 2^3
localparam SIZE_16_BYTE  = 3'b100; // 2^4

localparam BURST_FIXED = 2'b00;
localparam BURST_INCR  = 2'b01;
localparam BURST_WRAP  = 2'b10;

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
				`VPU_ADD: begin
					mathout <= A + B;
					mathready <= 1;
				end
				/*`VPU_MUL: begin
					mathout <= A * B;
					mathready <= 1;
				end
				`VPU_DIV: begin
					mathout <= A / B;
					mathready <= 1;
				end
				`VPU_MOD: begin
					mathout <= A % B;
					mathready <= 1;
				end*/
				`VPU_AND: begin
					mathout <= A & B;
					mathready <= 1;
				end
				`VPU_OR: begin
					mathout <= A | B;
					mathready <= 1;
				end
				`VPU_XOR: begin
					mathout <= A ^ B;
					mathready <= 1;
				end
				`VPU_NOT: begin
					mathout <= ~A;
					mathready <= 1;
				end
				`VPU_SHL: begin
					mathout <= A << B[5:0];
					mathready <= 1;
				end
				`VPU_SHR: begin
					mathout <= A >> B[5:0];
					mathready <= 1;
				end
				default: begin
					mathout <= 24'd0;
					mathready <= 1;
				end
			endcase
		end
	end
end

always @(posedge aclk) begin
	if(~aresetn) begin
		m_axi_arvalid <= 0;
		m_axi_rready <= 0;
		m_axi_araddr <= 32'd0;
		m_axi_awlen <= 4'd0;
		m_axi_awsize <= SIZE_8_BYTE;
		m_axi_awburst <= BURST_INCR;
		m_axi_awvalid <= 0;
		m_axi_awaddr <= 'd0;
		m_axi_wvalid <= 0;
		m_axi_wstrb <= 16'h0000;
		m_axi_wlast <= 0;
		m_axi_wdata <= 'd0;
		m_axi_bready <= 0;
		m_axi_arlen <= 0;
		m_axi_arburst <= BURST_FIXED;
		m_axi_arsize <= SIZE_4_BYTE;

		vcpre_r <= 1'b0;
		vcpwe_r <= 4'd0;
		vcpaddr_r <= 12'd0;
		vcpdin_r <= 32'd0;

		vpuprgstate <= VIDLE;
		vpuconst24 <= 24'd0;
		vpuconst8 <= 8'd0;
		flags8 <= 8'd0;
		vpuwaitline <= 10'd0;
		vpuwaitpixel <= 10'd0;
		vpuinstr <= 8'd0;
		ccond <= 5'd0;
		src1 <= 4'd0;
		src2 <= 4'd0;
		dest <= 4'd0;
		vpudin <= 24'd0;
		vpurwe <= 1'b0;
		mathena <= 1'b0;
	end else begin
		vpurwe <= 1'b0;
		vcpre_r <= 1'b0;
		vcpwe_r <= 4'd0;
		mathena <= 1'b0;

		case ({execena, vpuprgstate})
			{1'b1, FETCH}: begin
				// Trigger instruction read
				vcpre_r <= 1'b1;
				vpuprgstate <= DECODE;
			end

			{1'b1, DECODE}: begin
				// Decode the instruction that was already selected with previous vcpaddr_r
				vpuconst24 <= vcpdout[31:8];
				vpuconst8 <= (vcpdout[7:0] == `VPU_SETPAL) ? 8'h0F : vcpdout[31:24];
				flags8 <= vcpdout[23:16];		// extra flags or 8 bit index
				ccond <= vcpdout[26:24];		// compare condition
				src2 <= vcpdout[15:12]; 		// srcreg (default source)
				src1 <= vcpdout[11:8];			// same as dest
				dest <= (vcpdout[7:0] == `VPU_SETACC) ? 4'd0 : vcpdout[15:12]; // setacc always aims at R0 (ACC register)
				vpuinstr <= vcpdout[7:0];
				vpuprgstate <= vcpdout[4] ? MATHEXEC : EXEC;
			end

			{1'b1, EXEC}: begin
				// Ideally we resume at next instruction
				// unless it's a branch instruction
				vcpaddr_r <= vcpaddr_r + 'd4;

				case (vpuinstr)
					`VPU_HALT: begin
						// TODO: Stop PC increment
						vpuprgstate <= VIDLE;
					end
					`VPU_NOOP: begin
						// Waste one clock
						vpuprgstate <= VIDLE;
					end
					`VPU_WAITLINE: begin
						vpuwaitpixel <= 2;
						vpuprgstate <= WAITH;
					end
					`VPU_WAITCOLUMN: begin
						vpuwaitline <= vpudout2;
						vpuprgstate <= WAITV;
					end
					`VPU_SETPIXOFF: begin
						//pixel_offset <= vpudout2[3:0];
						vpuprgstate <= FETCH;
					end
					`VPU_SETCACHEROFF: begin
						//scanlinea_offset <= vpudout2[7:0];
						vpuprgstate <= FETCH;
					end
					`VPU_SETCACHEWOFF: begin
						//scanlinewa_offset <= vpudout2[7:0];
						vpuprgstate <= FETCH;
					end
					`VPU_SETACC: begin
						vpudin <= vpuconst24;
						vpuprgstate <= WRITEREG;
					end
					`VPU_SETPAL: begin
						// Directly poke the palette RAM over AXI
						// Palette RAM address is 0x4000_2000 + (index * 4)
						m_axi_awvalid <= 1'b1;
						m_axi_awaddr <= 32'h40002000 | (flags8 << 2);
						vpuprgstate <= STOREPRE;
					end
					`VPU_COPYREG: begin
						vpudin <= vpudout2;
						vpuprgstate <= WRITEREG;
					end
					`VPU_COMPARE: begin
						priority case (1'b1)
							ccond[3] & (ccond[4] ^ iszero):	begin vpudin <= 24'd1; end
							ccond[2] & (ccond[4] ^ isle):	begin vpudin <= 24'd1; end
							ccond[1] & (ccond[4] ^ islt):	begin vpudin <= 24'd1; end
							ccond[0] & (ccond[4] ^ iseq):	begin vpudin <= 24'd1; end
							default:						begin vpudin <= 24'd0; end
						endcase
						// Compare result goes into ACC
						dest <= 0;
						vpuprgstate <= WRITEREG;
					end
					`VPU_BRANCH: begin
						// Branch to target based on zero or nonzero ACC (src==0)
						vcpaddr_r <= vpudout[0] ? vpudout2 : (vcpaddr_r + 'd4);
						vpuprgstate <= FETCH;
					end
					`VPU_LOAD: begin
						m_axi_araddr <= vpudout2;
						m_axi_arvalid <= 1'b1;
						m_axi_rready <= 1'b1;
						vpuprgstate <= LOADFINALIZE;
					end
					`VPU_STORE: begin
						// Store data in VCP memory area 0x4000_3000
						m_axi_awvalid <= 1'b1;
						m_axi_awaddr <= 32'h40003000 | vpudout;
						vpuprgstate <= STOREPRE;
					end
					default: begin
						vpuprgstate <= FETCH;
					end
				endcase
			end

			{1'b1, MATHEXEC}: begin
				A <= vpudout2;
				B <= vpudout;
				mathena <= 1'b1;
				vpuprgstate <= MATHWAIT;
			end

			{1'b1, MATHWAIT}: begin
				if (mathready) begin
					vpudin <= mathout;
					vpuprgstate <= WRITEREG;
				end
			end

			{1'b1, LOADFINALIZE}: begin
				if (m_axi_rvalid) begin
					m_axi_arvalid <= 1'b0;
					m_axi_rready <= 1'b0;
					vpudin <= m_axi_rdata[23:0];
					vpuprgstate <= WRITEREG;
				end
			end

			{1'b1, STOREPRE}: begin
				if (m_axi_awready) begin // && m_axi.awvalid
					m_axi_awvalid <= 1'b0;
					m_axi_wvalid <= 1'b1;
					m_axi_wstrb <= vpuconst8;
					m_axi_wdata <= {40'd0, vpudout2}; // 24-bit data in lower bits
					m_axi_wlast <= 1'b1;
					vpuprgstate <= STOREWREADY;
				end
			end

			{1'b1, STOREWREADY}: begin
				if (m_axi_wready) begin // && m_axi.wvalid
					m_axi_wvalid <= 1'b0;
					m_axi_wstrb <= 8'h00;
					m_axi_wlast <= 1'b0;
					m_axi_bready <= 1'b1;
					vpuprgstate <= STOREFINALIZE;
				end
			end

			{1'b1, STOREFINALIZE}: begin
				if (m_axi_bvalid) begin
					m_axi_bready <= 1'b0;
					vpuprgstate <= FETCH;
				end
			end

			{1'b1, WRITEREG}: begin
				vpurwe <= 1'b1;
				vpuprgstate <= FETCH;
			end

			{1'b1, WAITH}: begin
				vpuprgstate <= scanpixel == vpuwaitpixel ? FETCH : WAITH;
			end
			
			{1'b1, WAITV}: begin
				vpuprgstate <= scanline == vpuwaitline ? FETCH : WAITV;
			end
			
			// Idle, unknown, or exec mode off
			default: begin
				vpuprgstate <= execena ? FETCH : VIDLE;
				// Idle/unknown/execoff modes reset PC to zero
				vcpaddr_r <= 12'd0;
				// Ensure AXI control signals are quiescent
				if (!execena) begin
                    m_axi_awvalid <= 1'b0;
                    m_axi_wvalid  <= 1'b0;
                    m_axi_bready  <= 1'b0;
                    m_axi_wstrb   <= 8'h00;
                end
			end
		endcase
	end
end

endmodule
