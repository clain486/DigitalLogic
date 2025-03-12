`timescale 1ns / 1ps

module DataCompare4_tb;
reg [3:0] iData_a,iData_b;
reg [2:0] iData;
wire [2:0] oData;
initial
begin
    iData=3'b100;iData_a=4'b0110;iData_b=4'b0111;//<>
	#50
	iData=3'b001;iData_a=4'b0101;iData_b=4'b1010;//<=
	#50
	iData=3'b010;iData_a=4'b1111;iData_b=4'b1101;//><
	#50	
	iData=3'b001;iData_a=4'b1111;iData_b=4'b1110;//>=
	#50
	iData=3'b100;iData_a=4'b0100;iData_b=4'b0010;//>>
	#50
	iData=3'b001;iData_a=4'b0001;iData_b=4'b0001;//==
	#50
    iData=3'b010;iData_a=4'b0101;iData_b=4'b0101;//=<
    #50
    iData=3'b100;iData_a=4'b0110;iData_b=4'b0110;//=>
	#50
	$stop;
end
DataCompare4
DataCompare4_init(
.iData(iData),
.iData_a(iData_a),
.iData_b(iData_b),
.oData(oData)
);
endmodule

