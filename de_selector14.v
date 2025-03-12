`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/24 01:09:52
// Design Name: 
// Module Name: de_selector14
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module de_selector14(iC,iS1,iS0,oZ0,oZ1,oZ2,oZ3);
input iC; //输入信号 c
input iS1; //选择信号 s1 
input iS0; //选择信号 s0
output oZ0; //输出信号 z0
output oZ1; //输出信号 z1
output oZ2; //输出信号 z2
output oZ3; //输出信号 z3
      assign oZ0= (iS1==0&&iS0==0)?iC:1;
      assign oZ1= (iS1==0&&iS0==1)?iC:1;
      assign oZ2= (iS1==1&&iS0==0)?iC:1;
      assign oZ3= (iS1==1&&iS0==1)?iC:1;
endmodule
