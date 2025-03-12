module decoder(iData,iEna,oData);
    input [4:0] iData; //三位输入 D2,D1,D0
    input iEna; //使能信号 G1,G2
    output reg [31:0] oData;//32位译码输出?7 ~?0 ,低电平有效
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