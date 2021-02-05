`timescale 1ns/1ns
module andor1(input a, b, c, output w1);
    wire w1;
    assign w1 = a & b | c & ~b;
endmodule

module andor2(input a, b, c, output w2);
    wire n, m, p;
    assign #2 w2 = m | p; 
    assign #3 m = a & b;
    assign #3 p = c & n;
    assign #6 n = ~b;
endmodule
