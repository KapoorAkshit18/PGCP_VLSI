// my first formal verification code 

// rtl synchronous dff
module dff (
    input  logic clk,
    input  logic rst_n,
    input  logic d,
    output logic q
);

    always_ff @(posedge clk) begin
        if (!rst_n) 
            q <= 1'b0;
        else
            q <= d;
    end

endmodule

// what we want to prove? 

assert property ( 
		@(posedge clk)
		disable iff (!rst_n)
		q == $past(d)   // past is ago which is old val of d or at prev clk cycle
);

// rest check 
assert property (
		@(posedge clk)
		!rst_nn |-> q == 1'b0;
);

// format testbench

module dff_formal;
	logic clk;
	logic rst_n;
	logic d;
	logic q;

dff dut (
	.clk(clk),
	.rst_n(rst_n),
	.d(d),
	.q(q)
);

assert property ( 
		@(posedge clk)
		disable iff (!rst_n)
		q == $past(d)   // past is ago which is old val of d or at prev clk cycle bcz of timing
);

// rest check 
assert property (
		@(posedge clk)
		!rst_nn |-> q == 1'b0;
);

endmodule


// next we will do assume 