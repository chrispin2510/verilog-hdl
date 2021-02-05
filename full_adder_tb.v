`include "full_adder.v"
`timescale 1ns/1ns

module full_adder_tb;
    reg a = 0, b = 0, ci = 0;
    wire co, s;
    full_adder uut(a, b, ci, co, s);
    initial begin
        $dumpfile("full_adder_tb.vcd");
        $dumpvars(0, full_adder_tb);
        #17;
        a <= ~a;
        #13;
        ci <= ~ci;
        #19;
        b = ~b;  
        $display("test is complete.");
    end
endmodule

