module half_sub(
    
    input A,B,
    output OA,OB
    
);


assign OA = A^B;
assign OB = !A*B;

endmodule