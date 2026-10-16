module ones_compliment(
    
    input [3:0]A,[3:0]B, 

    output [3:0]OC
    
);

genvar i;
wire [3:0]carry1;
wire [2:0]carry2;
wire [3:0]s1;
wire [3:0]led;
generate 
full_adder msb(
    .A(A[0]),
    .B(B[0]),
    .Cin(1'b0),
    .Cout(carry1[0]),
    .Sum(s1[0])
); 

for(i = 1; i <= 3; i = i + 1) begin
    full_adder add(
        .A(A[i]),
        .B(B[i]),
        .Cin(carry1[i-1]),
        .Cout(carry1[i]),
        .Sum(s1[i])
        );

end

full_adder abc(
    .A(s1[0]),
    .B(1'b0),
    .Cin(carry1[3]),
    .Cout(carry2[0]),
    .Sum(led[0])
    
);
assign OC[0] = led[0];
for(i = 1; i <= 3; i = i + 1) begin
    full_adder add(
        .A(s1[i]),
        .B(1'b0),
        .Cin(carry2[i-1]),
        .Cout(carry2[i]),
        .Sum(OC[i])
        );
//      display("text", led[i]);
      //assign OC[i] = led[i];

end

endgenerate

endmodule