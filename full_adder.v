`timescale 1ns/1ns

module full_adder (input a, b, ci, output co, s);
    assign #4 co = a & b | a & ci | b & ci;
    assign #3 s  = a ^ b ^ ci;
endmodule