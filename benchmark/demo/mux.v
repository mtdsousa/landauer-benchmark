module mux(a, b, c, s, out);
    input a, b, c, s;
    wire w1;
    output out;

    assign w1 = a & b;
    assign out = (w1 & ~s) | (c & s);
endmodule