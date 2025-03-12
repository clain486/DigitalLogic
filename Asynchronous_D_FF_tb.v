`timescale 1ns / 1ns

module Asynchronous_D_FF_tb;
reg CLK;
reg D, RST_n;
wire Q1,Q2;

initial CLK = 0;
always #5 CLK = ~CLK;

initial 
begin
     D = 1;
     RST_n = 1;
     #11 D = 0;
     #12 D = 1;
     #13 
     RST_n = 0;
     #11 D = 0;
     #12 D = 1; 
     #13
     RST_n = 1;
     #11 D = 0;
     #12 D = 1;
     #13 
     RST_n = 0;
     #11 D = 0;
     #12 D = 1;
     
     #20 $stop;

end

Asynchronous_D_FF
Asynchronous_D_FF_init(
.CLK(CLK),
.D(D),
.RST_n(RST_n),
.Q1(Q1),
.Q2(Q2)
);
endmodule
