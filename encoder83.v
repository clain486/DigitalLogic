

module encoder83(iData,oData);
input [7:0] iData; //八位输入 D7~D0,高电平有效
output reg [2:0] oData; //三位编码输出 Y2~Y0
    integer i;
    always@(iData)
    begin
    for(i=0;i<=7;i=i+1)
    if(iData[i]==1)
    oData=i;
    end
endmodule
