
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/24 01:25:13
// Design Name: 
// Module Name: transmission8
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

module transmission8(iData,A,B,C,oData);
    input [7:0] iData;
    input A;
    input B;
    input C;
    output [7:0] oData;
    assign oData[0] = ({A, B, C} == 3'b000) ? iData[0] : 1;
    assign oData[1] = ({A, B, C} == 3'b001) ? iData[1] : 1;
    assign oData[2] = ({A, B, C} == 3'b010) ? iData[2] : 1;
    assign oData[3] = ({A, B, C} == 3'b011) ? iData[3] : 1;
    assign oData[4] = ({A, B, C} == 3'b100) ? iData[4] : 1;
    assign oData[5] = ({A, B, C} == 3'b101) ? iData[5] : 1;
    assign oData[6] = ({A, B, C} == 3'b110) ? iData[6] : 1;
    assign oData[7] = ({A, B, C} == 3'b111) ? iData[7] : 1;
endmodule
