module ram(clk,ena,wena,addr,data_in,data_out);
input clk, ena, wena;
input [4:0] addr;
input wire [31:0] data_in;
output reg [31:0] data_out;

reg [31:0] bram[31:0];    
integer i;
reg [31:0] data;
    
    initial begin
    for(i=0;i<=31;i=i+1)
        bram[i] <= 32'b0;
    end

    always @(posedge clk)
    begin
     if (~ena)
       begin
         for(i=0;i<=31;i=i+1)
         data_out <= 32'bz;
       end
     else
       begin
       if (wena) begin
            bram[addr] <= data_in;
       end
       else begin
            data_out <= bram[addr];
       end
     end
    end

endmodule