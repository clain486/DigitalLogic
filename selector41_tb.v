`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/23 14:57:05
// Design Name: 
// Module Name: selector41_tb
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

module selector41_tb;
reg iC0;
reg iC1;
reg iC2;
reg iC3;
reg iS1;
reg iS0;
wire oZ;
selector41 uut(
.iC0(iC0),
.iC1(iC1),
.iC2(iC2),
.iC3(iC3),
.iS1(iS1),
.iS0(iS0),
.oZ(oZ)
);
initial 
begin 
iC0=0;
iC1=0;
iC2=0;
iC3=0;
iS1 = 0;
iS0 = 0;
#40 iS1 = 1; 
#40 iS0 = 1;
#40 iS1 = 0;
#40 iS0 = 0;
iC0=1;
#40 iS1 = 1; 
#40 iS0 = 1;
#40 iS1 = 0;
#40 iS0 = 0;
iC1=1;
iC0=0;
#40 iS1 = 1; 
#40 iS0 = 1;
#40 iS1 = 0;
#40 iS0 = 0;
iC0=1;
#40 iS1 = 1; 
#40 iS0 = 1;
#40 iS1 = 0;
#40 iS0 = 0;
iC3=1;
iC0=0;
iC1=0;
#40 iS1 = 1; 
#40 iS0 = 1;
#40 iS1 = 0;
#40 iS0 = 0;
iC0=1;
#40 iS1 = 1; 
#40 iS0 = 1;
#40 iS1 = 0;
#40 iS0 = 0;
iC0=0;
iC1=1;
#40 iS1 = 1; 
#40 iS0 = 1;
#40 iS1 = 0;
#40 iS0 = 0;
iC0=1;
#40 iS1 = 1; 
#40 iS0 = 1;
#40 iS1 = 0;
#40 iS0 = 0;
iC0=0;
iC1=0;
iC2=0;
iC3=1;
#40 iS1 = 1; 
#40 iS0 = 1;
#40 iS1 = 0;
#40 iS0 = 0;
iC0=1;
#40 iS1 = 1; 
#40 iS0 = 1;
#40 iS1 = 0;
#40 iS0 = 0;
iC0=0;
iC1=1;
#40 iS1 = 1; 
#40 iS0 = 1;
#40 iS1 = 0;
#40 iS0 = 0;
iC0=1;
#40 iS1 = 1; 
#40 iS0 = 1;
#40 iS1 = 0;
#40 iS0 = 0;
iC0=0;
iC1=0;
iC2=1;
#40 iS1 = 1; 
#40 iS0 = 1;
#40 iS1 = 0;
#40 iS0 = 0;
iC0=1;
iC1=0;
#40 iS1 = 1; 
#40 iS0 = 1;
#40 iS1 = 0;
#40 iS0 = 0;
iC0=0;
iC1=1;
#40 iS1 = 1; 
#40 iS0 = 1;
#40 iS1 = 0;
#40 iS0 = 0;
iC0=1;
#40 iS1 = 1; 
#40 iS0 = 1;
#40 iS1 = 0;
#40 iS0 = 0;
end
//selector41
//selector41_init(
//.oZ(oZ)
//); 
endmodule
