`timescale 1ns / 1ns
module ram_tb;
reg clk, ena, wena;
reg [4:0] addr;
reg [31:0] data_in;
wire [31:0] data_out;

integer i;

initial clk = 0;
always #5 clk = ~clk;

initial
begin
    data_in = 32'b0;
    ena = 1;
    wena = 1;
    //Ð´
    for (i = 0; i < 32; i = i + 1) 
    begin
	@(posedge clk) 
        begin
	    addr = i;
	    data_in = data_in  + 1;
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
            data_in = data_in  + 1;
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

ram
ram_init(
.clk(clk),
.ena(ena),
.wena(wena),
.addr(addr),
.data_in(data_in),
.data_out(data_out)
);

endmodule
