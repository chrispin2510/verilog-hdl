`include "andor_delay.v"
`timescale 1ns/1ns

module andor_delay_tb;
    reg a, b, c;
    wire w1, w2;
    andor1 wod(a, b, c, w1);
    andor2 wd(a, b, c, w2);
    initial begin
        $dumpfile("andor_delay_tb.vcd");
        $dumpvars(0, andor_delay_tb);
        {a, b, c} <= 3'b111;
        #20;
        {a, b, c} <= 3'b101;
        #20;
        $display("End of test.");
    end
endmodule
