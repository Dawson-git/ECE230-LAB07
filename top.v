module top(
    input[9:0] sw,
    output[13:0] led
);

//wire [2:0]FI;
//wire [1:0]FO;


half_sub h_s(
    .A(sw[0]),
    .B(sw[1]),
    .OA(led[0]),
    .OB(led[1])
);

ones_compliment o_c(
    .A(sw[5:2]),
    .B(sw[9:6]),
    .OC(led[5:2])
//    .Fin(FI[2:0])
//    .Fout(FO[1:0])
    
);

twos_compliment t_c(
    .A(sw[9:2]),
    .TC(led[13:6])
//    .Fin(FI[2:0])
//    .Fout(FO[1:0])
);

full_adder add(
//    .A(FI[0]),
//    .B(FI[1]),
//    .Cin(FI[2]),
//    .Cout(FO[0]),
//    .Sum(FO[1])
);


endmodule