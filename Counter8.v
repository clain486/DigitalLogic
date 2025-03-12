module Counter8(CLK,rst_n,oQ,oDisplay);
input CLK,rst_n;

output [2:0] oQ;
output [6:0] oDisplay;
reg cin = 1;

/*wire O_CLK;
Divider DIV(CLK,~rst_n,O_CLK);
JK_FF JK0(O_CLK,cin,cin,rst_n,oQ[0],);
JK_FF JK1(O_CLK,oQ[0],oQ[0],rst_n,oQ[1],);
JK_FF JK2(O_CLK,oQ[0] && oQ[1],oQ[0] && oQ[1],rst_n,oQ[2],);
display7 DIS({1'b0,oQ},{oDisplay});*/

JK_FF JK0(CLK,cin,cin,rst_n,oQ[0],);
JK_FF JK1(CLK,oQ[0],oQ[0],rst_n,oQ[1],);
JK_FF JK2(CLK,oQ[0] && oQ[1],oQ[0] && oQ[1],rst_n,oQ[2],);
display7 DIS({1'b0,oQ},{oDisplay});

endmodule