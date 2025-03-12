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
input [7:0] iData; //��λ����??7~??0,�͵�ƽ��Ч
input iEI; //ѡͨ�����ź� EI,�͵�ƽ��Ч
output reg [2:0] oData; //��λ�������?
output reg oEO; //��չ����ź� EO,�ߵ�ƽ��Ч
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

