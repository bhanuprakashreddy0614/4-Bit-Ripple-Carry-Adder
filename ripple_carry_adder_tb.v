`timescale 1ns/1ps

module ripple_carry_adder_tb;

reg [3:0] A, B;
reg Cin;
wire [3:0] Sum;
wire Cout;

ripple_carry_adder uut (
    .A(A),
    .B(B),
    .Cin(Cin),
    .Sum(Sum),
    .Cout(Cout)
);

initial begin
    A = 4'b0011;
    B = 4'b0101;
    Cin = 0;
    #10;

    A = 4'b1111;
    B = 4'b0001;
    Cin = 0;
    #10;

    $finish;
end

endmodule
