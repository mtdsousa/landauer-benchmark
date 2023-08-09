module demo(input1, input2, output1, output2, output3);
    input input1, input2;
    output output1, output2, output3;
    wire and3;
    wire and4;
    assign and3 = input1 & input2;
    assign and4 = input1 & input2;
    assign output3 = input1 & and3;
    assign output2 = and3 & and4;
    assign output1 = and4;
endmodule
