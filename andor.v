module andor(input a, b, c, output w);
    assign w = a & b | c & ~b;
endmodule