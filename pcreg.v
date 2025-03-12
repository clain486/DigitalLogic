
module pcreg(clk,rst,ena,data_in,data_out);
input clk, rst, ena;
input [31:0] data_in;
output [31:0] data_out;

reg [31:0] data = 32'b0;
    
always @(posedge clk or posedge rst)
    begin
        if(rst) 
            begin 
                data <= 32'h0000_0000;       //reset key 
            end        
        else
            begin
                if(ena) begin data <= data_in; end        //enable ,input 
            end
    end
    
assign data_out = data;

endmodule
