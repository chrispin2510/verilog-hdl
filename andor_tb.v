`include "andor.v"
`timescale 1ns/1ns

module andor_tb;
    reg a, b, c;
    wire w;
    andor uut(a, b, c, w);
    initial begin
        $dumpfile("andor_tb.vcd");
        $dumpvars(0, andor_tb);

        {a, b, c} = 3'b111;
        #20;
        {a, b, c} = 3'b101;
        #20;
    end
endmodule