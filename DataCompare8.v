
module DataCompare4(iData_a,iData_b,iData,oData);
input [3:0] iData_a,iData_b;
input [2:0] iData;
output reg [2:0] oData;
always@(iData_a or iData_b or iData)
begin
    if(iData_a>iData_b) begin oData=3'b100; end
    if(iData_a<iData_b) begin oData=3'b010; end
    if(iData_a==iData_b) begin oData=iData; end
end
endmodule

module DataCompare8(iData_a,iData_b,oData);
    input wire [7:0] iData_a; // 比较数
    input wire [7:0] iData_b; // 比较数
    output reg [2:0] oData; // 比较结果
// 行为描述

    always @(iData_a or iData_b) 
    begin
        if(iData_a == iData_b)
            begin oData = 1;end
        else if(iData_a < iData_b)
            begin oData = 2;end
        else if(iData_a > iData_b)
            begin oData = 4;end
                
    end   
    
endmodule