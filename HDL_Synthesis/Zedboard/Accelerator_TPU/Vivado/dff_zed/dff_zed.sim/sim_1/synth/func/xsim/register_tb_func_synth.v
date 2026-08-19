// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Sun Jul 26 17:45:25 2026
// Host        : Envy running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/akshi/Downloads/nn_system_architecture/simulations_rema_modules/dff_zed/dff_zed.sim/sim_1/synth/func/xsim/register_tb_func_synth.v
// Design      : register
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* WIDTH = "4" *) 
(* NotValidForBitStream *)
module register
   (clk,
    rst_n,
    en,
    clr,
    d,
    q);
  input clk;
  input rst_n;
  input en;
  input clr;
  input [3:0]d;
  output [3:0]q;

  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire clr;
  wire clr_IBUF;
  wire [3:0]d;
  wire [3:0]d_IBUF;
  wire en;
  wire en_IBUF;
  wire [3:0]q;
  wire \q[3]_i_1_n_0 ;
  wire [3:0]q_OBUF;
  wire rst_n;
  wire rst_n_IBUF;

  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF clr_IBUF_inst
       (.I(clr),
        .O(clr_IBUF));
  IBUF \d_IBUF[0]_inst 
       (.I(d[0]),
        .O(d_IBUF[0]));
  IBUF \d_IBUF[1]_inst 
       (.I(d[1]),
        .O(d_IBUF[1]));
  IBUF \d_IBUF[2]_inst 
       (.I(d[2]),
        .O(d_IBUF[2]));
  IBUF \d_IBUF[3]_inst 
       (.I(d[3]),
        .O(d_IBUF[3]));
  IBUF en_IBUF_inst
       (.I(en),
        .O(en_IBUF));
  LUT2 #(
    .INIT(4'hB)) 
    \q[3]_i_1 
       (.I0(clr_IBUF),
        .I1(rst_n_IBUF),
        .O(\q[3]_i_1_n_0 ));
  OBUF \q_OBUF[0]_inst 
       (.I(q_OBUF[0]),
        .O(q[0]));
  OBUF \q_OBUF[1]_inst 
       (.I(q_OBUF[1]),
        .O(q[1]));
  OBUF \q_OBUF[2]_inst 
       (.I(q_OBUF[2]),
        .O(q[2]));
  OBUF \q_OBUF[3]_inst 
       (.I(q_OBUF[3]),
        .O(q[3]));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(en_IBUF),
        .D(d_IBUF[0]),
        .Q(q_OBUF[0]),
        .R(\q[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(en_IBUF),
        .D(d_IBUF[1]),
        .Q(q_OBUF[1]),
        .R(\q[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(en_IBUF),
        .D(d_IBUF[2]),
        .Q(q_OBUF[2]),
        .R(\q[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(en_IBUF),
        .D(d_IBUF[3]),
        .Q(q_OBUF[3]),
        .R(\q[3]_i_1_n_0 ));
  IBUF rst_n_IBUF_inst
       (.I(rst_n),
        .O(rst_n_IBUF));
endmodule
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
