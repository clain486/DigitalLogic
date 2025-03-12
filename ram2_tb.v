`timescale 1ns / 1ns
module ram2_tb;
reg clk, ena, wena;
reg [4:0] addr;
wire [31:0] data_wire;

reg [31:0] data_reg;

integer i;

initial clk = 0;
always #5 clk = ~clk;

initial
begin
    data_reg = 32'b0;
    ena = 1;
    wena = 1;
    //Ð´
    for (i = 0; i < 32; i = i + 1) 
    begin
	@(posedge clk) 
        begin
	    addr = i;
	    data_reg = data_reg  + 1;
	    end
    end
    
    //¶Á
    ena = 1;
    wena = 0;
    for (i = 0; i < 32; i = i + 1) 
    begin
    @(posedge clk)
    addr = i;
    end
    
        ena = 0;
        wena = 1;
        //Ð´
        for (i = 0; i < 32; i = i + 1) 
        begin
        @(posedge clk) 
            begin
            addr = i;
            data_reg = data_reg  + 1;
            end
        end
        
        //¶Á
        ena = 0;
        wena = 0;
        for (i = 0; i < 32; i = i + 1) 
        begin
        @(posedge clk)
        addr = i;
        end
end

assign data_wire = wena ? data_reg:32'bz;

ram2
ram2_init(
.clk(clk),
.ena(ena),
.wena(wena),
.addr(addr),
.data(data_wire)
);

endmodule
