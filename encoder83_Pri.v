`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/24 12:52:59
// Design Name: 
// Module Name: encoder83_Pri
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
module encoder83_Pri(iData,iEI,oData,oEO);
input [7:0] iData; //八位输入??7~??0,低电平有效
input iEI; //选通输入信号 EI,低电平有效
output reg [2:0] oData; //三位编码输出?
output reg oEO; //扩展输出信号 EO,高电平有效
integer i=0;
always@(iEI or iData)
begin
oData=3'b111;
oEO=0;
    if(iEI == 0)
    begin
    for(i=0;i<=7;i=i+1)
        begin
        if(iData[i]==0)
            begin
            oData[0]=!(i%2);
            oData[2]=!(i/4);
            oData[1]=!((i-(!oData[2]*4))/2);
            oEO=1;
            end
        end
    end
end
endmodule

