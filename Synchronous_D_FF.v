
module Synchronous_D_FF(CLK,D,RST_n,Q1,Q2);
input CLK;
input D,RST_n;
output reg Q1,Q2;

always@(posedge CLK)
begin
if (~RST_n) 
    begin Q1 = 1'b0;
    Q2 = !Q1; end
else 
    begin Q1 = D;
    Q2 = !Q1; end
end

endmodule
