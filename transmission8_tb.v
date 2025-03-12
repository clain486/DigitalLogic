`timescale 1ns / 1ps

module transmission8_tb;
reg [7:0] iData; 
reg A,B,C;
wire [7:0] oData;
initial 
begin 
iData = 8'b00000000; 
    {A,B,C} = 3'b000;
#40 {A,B,C} = 3'b001; 
#40 {A,B,C} = 3'b010; 
#40 {A,B,C} = 3'b011; 
#40 {A,B,C} = 3'b100; 
#40 {A,B,C} = 3'b101; 
#40 {A,B,C} = 3'b110; 
#40 {A,B,C} = 3'b111; 
end
transmission8
transmission8_init(
 .iData(iData),
 .A(A),
 .B(B),
 .C(C),
 .oData(oData)
); 
endmodule