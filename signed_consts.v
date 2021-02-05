`timescale 1ns/100ps

module NumberTest;
    reg [11:0] a = -'shA6; initial $displayb("a=", a);  // a=000001011010
    reg [11:0] b = -'hA6;  initial $displayb("b=", b);  // b=111101011010
    reg [11:0] c =  'shA6; initial $displayb("c=", c);  // c=111110100110
endmodule
