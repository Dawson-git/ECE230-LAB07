module full_adder(

    input A,B,Cin,
    output Sum,Cout
);

wire xab;

assign xab = A^B;
assign Sum = xab^Cin;
assign Cout = (Cin&xab)|(A&B);

endmodule