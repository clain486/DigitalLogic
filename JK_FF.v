
module JK_FF(CLK,J,K,RST_n,Q1,Q2);
input CLK;
input J,K,RST_n;
output reg Q1,Q2;

always@(posedge CLK or negedge RST_n)
begin
if(RST_n)
    begin Q1 = (J && ~Q1 || ~K && Q1);
    Q2 = ~Q1; end
else
    begin Q1 = 1'b0;
    Q2 = ~Q1; end
     
end
endmodule
