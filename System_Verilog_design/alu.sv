package definitions;
    typedef enum logic [2:0] {ADD,SUB,MULT,DIV,SL,SR} opcode_t;
    typedef enum logic {UNSIGNED, SIGNED} operand_type_t;
    typedef union packed {
    logic [23:0]
    u_data;
    logic signed [23:0] s_data;
    } data_t;

    typedef struct packed {
    opcode_t opc;
    operand_type_t op_type;
    data_t op_a;
    data_t op_b;
} instruction_t;   //what are its types?

endpackage

import definitions::*; // import package into $unit space 

module alu (input instruction_t instr, output data_t alu_out);

always_comb begin
if (instr.op_type == SIGNED) begin
    alu_out.s_data = instr.op_a.s_data;
    unique case (instr.opc)

ADD: alu_out.s_data += instr.op_b.s_data;
SUB: alu_out.s_data -= instr.op_b.s_data;
MULT: alu_out.s_data *= instr.op_b.s_data;
DIV: alu_out.s_data /= instr.op_b.s_data;
SL: alu_out.s_data <<<= 2;
SR: alu_out.s_data >>>= 2;

endcase

end

else begin

    alu_out.u_data = instr.op_a.u_data;

unique case (instr.opc)
    ADD: alu_out.u_data += instr.op_b.u_data;
    SUB: alu_out.u_data -= instr.op_b.u_data;
    MULT: alu_out.u_data *= instr.op_b.u_data;
    DIV: alu_out.u_data /= instr.op_b.u_data;
    SL: alu_out.u_data <<= 2;
    SR: alu_out.u_data >>= 2;
endcase
end
end
endmodule


// Create testbench for the above code and use coverage assertion everything from scratch.






