// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2.2 (win64) Build 6060944 Thu Mar 06 19:10:01 MST 2025
// Date        : Sun Apr 27 17:58:02 2025
// Host        : fastturtle running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/repos/testzor/testzor.gen/sources_1/ip/samplemem/samplemem_sim_netlist.v
// Design      : samplemem
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "samplemem,blk_mem_gen_v8_4_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_10,Vivado 2024.2.2" *) 
(* NotValidForBitStream *)
module samplemem
   (clka,
    wea,
    addra,
    dina,
    clkb,
    enb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [63:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_mode = "slave BRAM_PORTB" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [10:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;

  wire [9:0]addra;
  wire [10:0]addrb;
  wire clka;
  wire clkb;
  wire [63:0]dina;
  wire [31:0]doutb;
  wire enb;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [63:0]NLW_U0_douta_UNCONNECTED;
  wire [10:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [10:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "11" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     9.3307 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "samplemem.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "2048" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "64" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "2048" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "64" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  samplemem_blk_mem_gen_v8_4_10 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[63:0]),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[10:0]),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[10:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.2.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Vo/CdCry+4XqWyOAGIjJkQxiiFmxV56JJA9+DRAoA73w3PX/VB2Q5+hs51IJHJDQpfz8b+RkWiDc
wzwfz369ViGuppNv4dXlNznLJnJnC7EiskELf02DdJnWWoSZpu+OHK3OSBEQ/zsd9Jo2Fo1W/rmW
MGZUU/6yH18wHS4h1Ks=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
0wk1VmWYpT58dDId4XJkh8egEYIlbnZZOGeyGy5kRkRnXHqDOWQ+oylx90YDv9xCL7Hk4eMKPCF2
m4MOF7S4hVPD0/sWpEA8P8FAe8xJ87dKWSVL4jsUlHtRrOJgD7GALPmxmP7Si18wN1nhP/Em10F8
/dLfzgj1xP3Zf5H9fEp2GcwX2TuABOVnDWshUVbBokKz/60SbCSepujD00YwhBntPBKLjT63NlmT
RTSjuWX0rpXlxj6VOXIYSdG7RSLBcpnJy64tUezG1b35R+o5DxZXCqjet77d6quzpY0zZZt9Ulht
JmIAuDRf34NavmVAN7Mtd0cnmfoh7ogGicjKvQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
F/wTwmHmqba+ezt7048nG7m9PFcFX8+e1ugB8tNrzJbpZSuJRRd6CQfWgrFM6z3Lt+Xnv27fU91W
7UPwQzlK1jnTliJBxoAq1fE2EHH6Meu6+HJfRVpgJ7fg13fbfZIfHUvNXIsh98f9heu0jLNI6weE
/vvav4FblngbAAYUgd0=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PMW8encF5gzdNpDYeC/r8ImvAQhXqmTUs6jwRDNtn48A6Ujylle4R1SCnyZkY+FJKwRrbwQYM5xZ
q0WAIHjuqQu9pP4jSz77dIgvrGNt/Jq52Ez+a8pAE/wAoX0RiMsIeHFJYKfkmGjaCqeRtGDmk3BV
9+dy4HcmsDt9Uh4xvFjdpggdkLbiE5tjHgzwTlr5njpIBBM3Mc6IQE9aae7pv8wKGZh0ty66qFAn
4S9+ebhRZxOoWu/Dy19sbR1RkcJRag8MPJw9oRctKzduV4AF5TwH1waH32OTyX1p1716Vo25yin9
+rz315JRpqTLSkZJDH0UVGxiqyJ73W6GTzGjvQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Y9dtFDZe/9fosnZUVejOdy+XS5PuLJ0yXHKg9fuNlibvaa70MDgcUmFI1aUQMIXkh/nyrlAYhEOw
ZYwLUiCgGX9gv4rJdGQtx6W5YHqEqKc6ojSRxBAaLdRpzdYB0DpW8oIbjnXFf7e1yx+LS0ZeRvga
Fh2UzEgqmwMNRgmnJM4j2rvUiRrhCjtiaXlkc9pB80ojbMz6j5O0jOYRDx8scLtA39zyl6jlHXkZ
0NhLqQuJbbWjmec6JRtGnaM5QouDbk+MW/fNkDY31kIbegNsEOLQpMNJ83TJH5kTnsHlY9l+0XJ4
tN8eHqmH3rYC3OGyXe7Fa8ZFq6ms3GQKGeMfhA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cxjMtMSESPI2+yc8BX2YuZW6C3RMyKfgTvyd4r8Gx1wWxH8i+oZbwjGEFrD70y8NIz21xljoxFEk
JmtYWVokBQDW3gKLSJSvxmzp0T6nMPTGtNrpUDalO3XojGO7PY5zxMgZP7ntyQop50FaRZncfqcN
5w5hYNWywr3sHm14iUZQvYkjfpfI/X0gHmaRZTUBwZnVc3yZYPKpIi/5HdJ0+dh3SqEErHU3sVTy
bnAyZkhEZ9ZbLjELJ9twQdIRF4MiHKefy97m/3WdDg2YAmsDhwVJqEDSQRrhJ1qxyCHTjvccibuz
u7FvVmHfh6hk1tUEJgfJBY2OFz8zJE//prc5iA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ez5C57juA3+sjvTiTimQXL3ngWJqcGkQ5hv2jVBj+qRGyMllvIQOBQlpQ+bYLkOWnTv/S8+6PSxT
jUx6SYCJfbiumC5jC3z/QW4c0ZC4XzIFAgVdN4am8yXHRSI8ApBLYsSyfpVsI2zGpgVek+1s684p
Gx2VLV1Wwf3TcgyHHu6+yizJ+IJrkFjBOqaNptlbq1bdEtVxRkNyJiuKh3hzbPmt386lGeCpCmeS
Ci/w6goqagrSZZ7CwRDpp6J+IHjwRIUheUuNWzxQKdW+FCjw9qNPCND4sELBajCtfBQzY23j6RZD
kUanS7/EEh2ctRvZ6ckx/Y0zFNJYqHo8Lc56aA==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
HJCYSjhpgL6sqdTzuctiBLPlx6fhwuFI2l891REPcV2cKYvrbMCYI17hADRbvcxNH4paQ5/fmqeb
rE9BqB08LRASMx7jlAdSCYKA99cNcVMsByGT1l32kX7+Gtt27iKAIwVTu34+moPXqCCM4c6jUBzB
+UAJGBtS2wc0k+kTtXp6dCXiyjYXC2UFEDt8w9CU1qb2TXkPpgxXcfR4skit7umjdS0NxiP88l7x
PvAeoTea8Nw3NyDr9766x8Q1W1rRkuRmL+1VM37vp+BJsf6MNpeE5FNpkrhdCjc0D3dtRQVsCStO
scOhLAnzS45HjTjy9siiiNpJhXtCEr+5PWuEXVj4OC+yevy5VFcClOy11RiGXUho3zn1YnCjvFUJ
HO4BCq9TThOthuOExIiymQlqo0juTKNFELWCzlCbbJMDntY4twIW1uyY76cuBTeqq0r6SuzbelbH
iF1J/Ai1WoG1NEn6/Ld8lGm+aTPi/mRUvBbdYq6Xx0I1hJ/lrwpbbvpZ

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
i2BfTRuoHRFB8ZXhJCQrSS5Kh/ofOKU6mrd8mOrx1SgmsHKu6td+g6cqGS2nIDZbr1QjP33k7Zjp
xKd5lImYtNz1lFR34XzdVY1YY4Mz0QRDBjsP/kAJr7DZAqZjrJAO3md/zSG8f5SaAh8iTo+EBM+6
afCMZ6ich+nq02odtxrZ5Uhzoa2vt9DW4DcnXj+tuoKWUoRKcWxCrh31TNiwS2b4E/El43/B29XG
FxzmoEh4GH3ZaiuU113Ld+/xkQRsMLFn1JubodEkM9sNeTHfppPAGwjUgCzk8/2hXirRJu/XaML9
VWT5S7x5yGlmti7sQnP9kzJJRUcjTTJzgE5KOQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FexSVDj1WIebhRipXI5Gh3YLSX845WpAldeuElSHB0huSoXz+Np2tkseCkkF2eCCt8CNhVExuuEr
7/KHUlFqvHa9DLpKIOLmNFWiy8Ay2iuzmmxyL/MPPn/teKD2VjFeD6ssY8l2BwKbCD73MswOuiCc
spGmyJ2i3k6JMBpL+zswzmIpKJ3j76vYQF+o5HgmDtaakOUGTD1nQNPMyZ1ZBD9AvAC9J3eY8qZS
1Wdw7OXuMZ5CZutq7JXBHnLE0i4Zgcf2nWCg+gKKgvBZXlGpEkhs30/caJ4SGThuIkRNEUsnHcfp
jA52TVN8H4BdzJH3hCTxAhB1e5lNWlKwQ+gYEw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Lu5hRxSLFQyLllOA9u5s1HixJJG7j3i4H09yHKiH8Dp26PhhohxwUADFKakrM7CdHL8s7BqigcX0
gERo4eIo8tMf2dBC9mu7P36rm9gCwpvvyiCA52BzF7pay+3P1pMoTC4HhwPNE6jjh2wytbNC11dG
Vy58tmmu3wmLHagXe6TbdJpcYT31yQaqmU4KGKa1xKkiI3FyGRm/MzXZcSfTCQjCiqGXQH1Lnapo
2W3GdrN+nv+SFjJe5j5+T3lxn/fmOusE1hz0LsLbVXEY8ARKrO1m0K91l+AQO9q+hPuF5pSAyHKv
VzZ6TlJOmIhHrqSknN1Au5CIrbyauNSDELtQiw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 47760)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
