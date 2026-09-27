module adder_2bit_tb;
     reg  [1:0] a;
     reg  [1:0] b;
     reg        cin;
     wire [1:0] sum;
     wire       cout;

     adder_2bit dut (.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));

     initial begin
        $display("a  b  cin | sum cout");
        $display("__________________");
        $monitor("a=%b  b=%b  cin=%b  |  sum=%b  cout=%b", a, b, cin, sum, cout);

        a = 2'b00; b = 2'b00; cin = 0; #10;
        a = 2'b00; b = 2'b00; cin = 1; #10;
        a = 2'b00; b = 2'b01; cin = 0; #10;
        a = 2'b00; b = 2'b01; cin = 1; #10;
        a = 2'b00; b = 2'b10; cin = 0; #10;
        a = 2'b00; b = 2'b10; cin = 1; #10;
        a = 2'b00; b = 2'b11; cin = 0; #10;
        a = 2'b00; b = 2'b11; cin = 1; #10;

        a = 2'b01; b = 2'b00; cin = 0; #10;
        a = 2'b01; b = 2'b01; cin = 0; #10;
        a = 2'b01; b = 2'b10; cin = 0; #10;
        a = 2'b01; b = 2'b11; cin = 1; #10;

        a = 2'b10; b = 2'b01; cin = 0; #10;
        a = 2'b10; b = 2'b10; cin = 1; #10;
        a = 2'b10; b = 2'b11; cin = 0; #10;

        a = 2'b11; b = 2'b11; cin = 1; #10;

        $display("adder_2bit output-----done");

        $finish;
     end
endmodule
