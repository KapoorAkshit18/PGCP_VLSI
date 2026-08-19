//module register
//    #( 
//        parameter WIDTH = 4
//    )
//    (
//        input wire                    clk,
//        input wire                    rst_n,
//        input wire                    en,
//        input wire                    clr,
//        input wire signed [WIDTH-1:0] d,
//        output reg signed [WIDTH-1:0] q
//    );
    
//    always @(posedge clk)
//    begin
//        if (!rst_n || clr)
//        begin
//            q <= 0;
//        end
//        else if (en)
//        begin
//            q <= d;
//        end
//    end
    
//endmodule

module RisingEdge_DFlipFlop(D,clk,Q);
input D; // Data input 
input clk; // clock input 
output reg Q; // output Q 
always @(posedge clk) 
begin
 Q <= D; 
end 
endmodule 
