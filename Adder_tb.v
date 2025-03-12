`timescale 1ns / 1ps

module Adder_tb;
    wire[7:0]oData;
    wire oData_C;
	reg [7:0] iData_a, iData_b;
	reg iC;
	
	initial
	begin
		iData_a = 8'b0000_0000; iData_b = 8'b0000_0000; iC = 1'b0; //0 + 0 + 0= 0
		#100 iData_a = 8'b0000_0001; iData_b = 8'b0000_0001; iC = 1'b1; //1 + 1 + 1 = 3
		#100 iData_a = 8'b0010_0000; iData_b = 8'b0010_0011; iC = 1'b1; //32 + 35 + 1 = 68
		#100 iData_a = 8'b1111_1100; iData_b = 8'b0000_0011; iC = 1'b0; //252 + 3 + 0 = 255
		#100 iData_a = 8'b1111_1100; iData_b = 8'b0000_0011; iC = 1'b1; //252 + 3 + 1 = 256
		#100 iData_a = 8'b1111_1100; iData_b = 8'b0000_1000; iC = 1'b0; //252 + 8 + 0 = 260 (Òç³ö´íÎó)
		#500 $stop;
	end
    
	Adder m0(.oData(oData), .oData_C(oData_C), .iData_a(iData_a), .iData_b(iData_b), .iC(iC));

endmodule
