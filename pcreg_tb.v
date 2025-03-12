`timescale 1ns / 1ns
module pcreg_tb;
reg [31:0] data_in;
reg clk, rst, ena;
wire [31:0] data_out;

initial clk = 0;
always #5 clk = ~clk;

initial 
begin 
     rst = 0;ena = 1;
     data_in = 32'b10101010_10101010_10101010_10101010;
     #13 rst = 1; ena = 1;
     #13 
     data_in = 32'b10111010_10111010_10111010_10111010;
     #13 rst = 0; ena = 0;
     #13 rst = 0; ena = 1;
     #13 rst = 1; ena = 0;
     #13
     $stop;   
end

pcreg
pcreg_init(
.clk(clk),
.rst(rst),
.ena(ena),
.data_in(data_in),
.data_out(data_out)
);
endmodule
