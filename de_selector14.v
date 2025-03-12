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
input iC; //�����ź� c
input iS1; //ѡ���ź� s1 
input iS0; //ѡ���ź� s0
output oZ0; //����ź� z0
output oZ1; //����ź� z1
output oZ2; //����ź� z2
output oZ3; //����ź� z3
      assign oZ0= (iS1==0&&iS0==0)?iC:1;
      assign oZ1= (iS1==0&&iS0==1)?iC:1;
      assign oZ2= (iS1==1&&iS0==0)?iC:1;
      assign oZ3= (iS1==1&&iS0==1)?iC:1;
endmodule
