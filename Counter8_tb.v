`timescale 1ns / 1ns
module Counter8_tb;
reg CLK,rst_n;
wire [2:0] oQ;
wire [6:0] oDisplay;

initial CLK = 0;
always #2 CLK = ~CLK;

initial 
begin 
     rst_n = 0;
     #13
     rst_n = 1;
     #13
     rst_n = 0;
     #13
     rst_n = 1;
     #13
     rst_n = 0;
     #13
     rst_n = 1;
     #113
     rst_n = 0;
     #113
     rst_n = 1;
     #113
     $stop;   
end

Counter8
Counter8_init(
.CLK(CLK),
.rst_n(rst_n),
.oQ(oQ),
.oDisplay(oDisplay)
);

endmodule
