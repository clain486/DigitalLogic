

module encoder83(iData,oData);
input [7:0] iData; //��λ���� D7~D0,�ߵ�ƽ��Ч
output reg [2:0] oData; //��λ������� Y2~Y0
    integer i;
    always@(iData)
    begin
    for(i=0;i<=7;i=i+1)
    if(iData[i]==1)
    oData=i;
    end
endmodule
