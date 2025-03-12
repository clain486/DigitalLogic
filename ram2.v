module ram2(clk,ena,wena,addr,data);
input clk, ena, wena;
input [4:0] addr;
inout [31:0] data;

reg [31:0] bram[31:0];
reg [31:0] Data;
  
integer i;   
    initial begin
    for(i=0;i<=31;i=i+1)
        bram[i] <= 32'b0;
    end

    always @(posedge clk)
    begin
     if (~ena)
       begin
         for(i=0;i<=31;i=i+1)
         Data <= 32'bz;
       end
     else
       begin
       if (wena) begin
            bram[addr] <= data;
       end
       else begin
            Data <= bram[addr];
       end
     end
    end
    
    //assign data = (~wena) ? bram[addr] : 32'bz; //三态门实现
assign data =(~wena)? Data : 32'bz;

endmodule
