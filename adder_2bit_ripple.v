module full_adder (input  A, B, Cin, output Sum, Cout);
     wire w1, w2, w3;
     xor g1 (w1, A, B);
     xor g2 (Sum, w1, Cin);
     and g3 (w2, w1, Cin);
     and g4 (w3, A, B);
     or  g5 (Cout, w2, w3);
endmodule


module adder_2bit (
   input  wire [1:0] a,
   input  wire [1:0] b,
   input  wire cin,output wire [1:0] sum,output wire cout);

   wire w1;

     // FA1: bit 0
     full_adder FA1 (
        .A    (a[0]),
        .B    (b[0]),
        .Cin  (cin),
        .Sum  (sum[0]),
        .Cout (w1));

     // FA2: bit 1
     full_adder FA2 (
        .A    (a[1]),
        .B    (b[1]),
        .Cin  (w1),
        .Sum  (sum[1]),
        .Cout (cout));

endmodule
