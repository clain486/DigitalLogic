`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/24 07:39:32
// Design Name: 
// Module Name: decoder_tb
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
module decoder_tb;
reg [2:0]iData;
reg [1:0]iEna;
wire  [7:0]oData;
initial 
begin
iEna[0]=0;
iEna[1]=1;
    iData=3'b000;
#40 iData=3'b001;
#40 iData=3'b010;
#40 iData=3'b011;
#40 iData=3'b100;
#40 iData=3'b101;
#40 iData=3'b110;
#40 iData=3'b111;
#40 iEna[0]=1;
    iData=3'b000;
#40 iEna[0]=0;
#40 iEna[1]=0;
end
decoder
decoder_init(
.iData(iData),
.iEna(iEna),
.oData(oData)
);
endmodule

