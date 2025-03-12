module decoder(iData,iEna,oData);
    input [2:0] iData; //三位输入 D2,D1,D0
    input [1:0] iEna; //使能信号 G1,G2
    output reg [7:0] oData;//八位译码输出?7 ~?0 ,低电平有效
always@(iData or iEna)
begin
    if(iEna==2'b10)
        begin
         oData=8'b1111_1111;
        oData[iData[0]+iData[1]*2+iData[2]*4]=0;
        end
    else
      oData=8'b1111_1111;
end
endmodule

