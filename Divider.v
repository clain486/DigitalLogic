
module Divider(I_CLK,rst,O_CLK);
input I_CLK,rst;
output reg O_CLK;

reg [31:0] cnt;

parameter N=20;
//parameter N=100000000;

always @ (posedge I_CLK or negedge rst)
begin
     if(rst)
	      begin
          cnt <= 32'd0;
          O_CLK<= 0;
          end
     else if(cnt < N/2-1)  
          begin 
	      cnt <= cnt + 1'b1;
		  end
     else
          begin
          cnt <= 32'b0;
          O_CLK <= ~O_CLK;
          end
 end

endmodule
