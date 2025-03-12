`timescale 1ns / 1ns
module Regfiles_tb();
reg clk;
reg rst;
reg we;
reg [4:0]raddr1;
reg [4:0]raddr2;
reg [4:0]waddr;
reg [31:0]wdata;
wire [31:0]rdata1;
wire [31:0]rdata2;
always
begin
#2 clk=~clk;
end
initial
begin
clk=0;we=1;rst=0;
raddr1=5'b00000;
raddr2=5'b11111;
waddr=5'b00000;
wdata=32'h180174FA;//��00000д��180174FA
#4 wdata=32'hFA180174; waddr=5'b11111;//��11111д��FA180174
#4 we=0; //�Ѹո�д����λ������
#10 rst=1;//��λ����
#20
$stop;
end
Regfiles rf(clk,rst,we,raddr1,raddr2,waddr,wdata,rdata1,rdata2);
endmodule
