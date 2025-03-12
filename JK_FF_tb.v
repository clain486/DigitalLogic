`timescale 1ns / 1ns

module JK_FF_tb;
reg CLK;
reg J, K, RST_n;
wire Q1,Q2;

initial CLK = 0;
always #5 CLK = ~CLK;

initial 
begin
     J = 0;K = 1;
     RST_n = 1;
     #11 J = 0;K = 0;
     #12 J = 1;K = 0;
     #13 J = 1;K = 1;
     #14
     RST_n = 0;
     #11 J = 0;K = 0;
     #12 J = 1;K = 0;
     #13 J = 1;K = 1;
     #14
     RST_n = 1;
     #11 J = 0;K = 0;
     #12 J = 1;K = 0;
     #13 J = 1;K = 1;
     #14
     RST_n = 0;
     #11 J = 0;K = 0;
     #12 J = 1;K = 0;
     #13 J = 1;K = 1;
     #14
     $stop;
     
end

JK_FF
JK_FF_init(
.CLK(CLK),
.J(J),
.K(K),
.RST_n(RST_n),
.Q1(Q1),
.Q2(Q2)
);
endmodule
