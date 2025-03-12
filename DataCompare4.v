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
