module half_adder(a, b, sum, cout);
    input a, b;
    wire w1;
    output sum, cout;
    assign w1 = a & b;
    assign cout = w1;
    assign sum = ~w1 & ~(~a & ~b);
endmodule