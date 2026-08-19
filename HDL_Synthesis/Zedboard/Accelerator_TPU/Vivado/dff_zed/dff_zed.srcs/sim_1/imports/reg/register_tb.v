//`timescale 1ns / 1ps

//module register_tb();
//    localparam T = 10;
    
//    reg clk;
//    reg rst_n;
//    reg en;
//    reg clr;
//    reg [3:0] d;
//    wire [3:0] q;
    
//    register
//    #(4)
//    dut
//    (
//        .clk(clk),
//        .rst_n(rst_n),
//        .en(en),
//        .clr(clr),
//        .d(d),
//        .q(q)
//    );
//  always @(posedge dut.clk)
//    $display("%0t : posedge clk, rst_n=%b en=%b clr=%b d=%h q=%h",
//             $time, dut.rst_n, dut.en, dut.clr, dut.d, dut.q);  
//initial
//    clk = 0;

//always #(T/2)
//    clk = ~clk;
    
//initial begin
//    $monitor("Time=%0t d=%h q=%h dut.d=%h dut.q=%h",
//             $time,
//             d,
//             q,
//             dut.d,
//             dut.q);
//end
//initial begin
//    rst_n = 0;
//    en    = 1;
//    clr   = 0;
//    d     = 0;

//    repeat (2) @(posedge clk);
//    rst_n = 1;

//    @(negedge clk) d = 4'd8;
//    @(posedge clk);

//    @(negedge clk) d = 4'd15;
//    @(posedge clk);

//    @(negedge clk) clr = 1;
//    @(posedge clk);

//    $finish;
//end
    
//endmodule

module tb_DFF();
reg D;
reg clk;
//reg reset;
wire Q;

RisingEdge_DFlipFlop dut(D,clk,Q);

initial begin
  clk=0;
     forever #10 clk = ~clk;  
end 
initial begin 
// reset=1;
 D <= 0;
 #100;
// reset=0;
 D <= 1;
 #100;
 D <= 0;
 #100;
 D <= 1;
end 
endmodule 
