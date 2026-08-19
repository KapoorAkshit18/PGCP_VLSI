//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_fa77_wrapper.bd
//Design : bd_fa77_wrapper
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_fa77_wrapper
   (clk,
    probe0,
    probe1,
    probe2,
    probe3,
    probe4);
  input clk;
  input [0:0]probe0;
  input [4:0]probe1;
  input [0:0]probe2;
  input [0:0]probe3;
  input [19:0]probe4;

  wire clk;
  wire [0:0]probe0;
  wire [4:0]probe1;
  wire [0:0]probe2;
  wire [0:0]probe3;
  wire [19:0]probe4;

  bd_fa77 bd_fa77_i
       (.clk(clk),
        .probe0(probe0),
        .probe1(probe1),
        .probe2(probe2),
        .probe3(probe3),
        .probe4(probe4));
endmodule
