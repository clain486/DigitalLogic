`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/24 12:52:59
// Design Name: 
// Module Name: encoder83_Pri_tb
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
module encoder83_Pri_tb();
reg [7:0]iData;
reg iEI;
wire [2:0]oData;
wire oEO;
initial 
begin
    iEI=1'b1;
    iData=8'b11111111;
#40 iEI=1'b0;
#40 iData=8'b01111111;
#40 iData=8'b10111011;
#40 iData=8'b11001111;
#40 iData=8'b11101101;
#40 iData=8'b11110101;
#40 iData=8'b11111010;
#40 iData=8'b11111101;
#40 iData=8'b11111110;
#40 iData=8'b11111111;
#40 iEI=1'b0;
#40 iEI=1'b1;
end
encoder83_Pri
encoder83_Pri_init(
.iData(iData),
.iEI(iEI),
.oData(oData),
.oEO(oEO)
);
endmodule

