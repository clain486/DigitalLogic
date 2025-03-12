`timescale 1ns / 1ps

module DataCompare8_tb;
reg [7:0] iData_a;
reg [7:0] iData_b;
wire [2:0] oData;

    initial 
    begin
         
         iData_a=8'b0000_0000;iData_b=8'b0000_0000;         
           
         #50 
         iData_a=8'b0010_0100;iData_b=8'b0001_0010;
         
         #50 
         iData_a=8'b0000_1000;iData_b=8'b0001_0000;
         
         #50 
         iData_a=8'b0001_0010;iData_b=8'b0001_0010;
         #50
    $stop;
    end
    
    DataCompare8 
    DataCompare8_init(
        .oData(oData),
        .iData_a(iData_a),
        .iData_b(iData_b)
    );

endmodule
