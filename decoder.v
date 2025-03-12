module decoder(iData,iEna,oData);
    input [4:0] iData; //��λ���� D2,D1,D0
    input iEna; //ʹ���ź� G1,G2
    output reg [31:0] oData;//32λ�������?7 ~?0 ,�͵�ƽ��Ч
always@(iData or iEna)
begin
    if(iEna==2'b1)
        begin
         oData=32'hFFFFFFFF;
        oData[iData[0]+iData[1]*2+iData[2]*4+iData[3]*8+iData[4]*16]=0;
        end
    else
        oData=32'hFFFFFFFF;
end
endmodule