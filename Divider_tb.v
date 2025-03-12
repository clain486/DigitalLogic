`timescale 1ns / 1ns
module Divider_tb;

    reg I_CLK;
    reg rst;
    // Outputs
    wire O_CLK;
 
    // Instantiate the Unit Under Test (UUT)
    always #5 I_CLK = ~I_CLK;
 
    initial begin
        // Initialize Inputs
        I_CLK = 0;
        rst = 0;
        #50;
        rst = 1;
        #50;
        rst = 0;
        #500
        rst = 1;
        #400
        $stop;
    end

Divider
Divider_init(
    .I_CLK(I_CLK), 
    .rst(rst), 
    .O_CLK(O_CLK)
);

endmodule
