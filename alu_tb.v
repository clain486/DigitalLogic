`timescale 1ns / 1ns
module alu_tb;

    reg [3:0] aluc;
    reg [31:0] a,b;
    wire [31:0] r;
    wire carry,overflow,zero,negative;
    alu alu_init(a,b,aluc,r,zero,carry,negative,overflow);
    initial
    begin
            //add
            aluc=4'b0010;
            a=32'h4321fedc;
            b=32'h9321fedc;
            #20
            a=32'hf321fedc;
            b=32'hf321fedc;
            #20
            //addu
            aluc=4'b0000;
            a=32'h4321fedc;
            b=32'h9321fedc;
            #20
            a=32'hf321fedc;
            b=32'hf321fedc;
            #20
            //sub
            aluc=4'b0011;
            a=32'h4321fedc;
            b=32'h9321fedc;
            #20
            a=32'hf321fedc;
            b=32'ha321fedc;
            #20
            //subu
            aluc=4'b0001;
            a=32'h4321fedc;
            b=32'h9321fedc;
            #20
            a=32'hf321fedc;
            b=32'ha321fedc;
            #20
            //and
            aluc=4'b0100;
            a=32'h4320fed0;
            b=32'h4020f0d0;
            #20
            a=32'h11111111;
            b=32'h11111111;
            #20
            a=32'h11111111;
            b=32'h00000000;
            #20
            //or
            aluc=4'b0101;
            a=32'h4320fed0;
            b=32'h4020f0d0;
            #20
            a=32'h11111111;
            b=32'h00000000;
            #20
            a=32'h00000000;
            b=32'h00000000;
            #20
            //xor
            aluc=4'b0110;
            a=32'h4320fed0;
            b=32'h4020f0d0;
            #20
            a=32'h11111111;
            b=32'h00000000;
            #20
            a=32'h11111111;
            b=32'h11111111;
            #20
            //nor
            aluc=4'b0111;
            a=32'h4320fed0;
            b=32'h4020f0d0;
            #20
            a=32'h11111111;
            b=32'h00000000;
            #20
            a=32'h11111111;
            b=32'h11111111;
            #20
            //slt
            aluc=4'b1011;
            a=32'h4320fed0;
            b=32'h4020f0d0;
            #20
            a=32'hf0000000;
            b=32'h00000000;
            #20
            a=32'h00000000;
            b=32'h0f000000;
            #20
            //sltu
            aluc=4'b1010;
            a=32'h4320fed0;
            b=32'h4020f0d0;
            #20
            a=32'hf0000000;
            b=32'h00000000;
            #20
            a=32'h00000000;
            b=32'h0f000000;
            #20
            //sll/slr
            aluc=4'b1111;
            a=1;
            b=32'h4020f0d0;
            #20
            aluc=4'b1110;
            a=2;
            b=32'b10110111011110111110111111011111;
            #20
            a=3;
            b=32'b10110111011110111110111111011111;
            #20
            //srl
            aluc=4'b1101;
            a=1;
            b=32'h4020f0d0;
            #20
            a=2;
            b=32'b10110111011110111110111111011111;
            #20
            a=3;
            b=32'b10110111011110111110111111011111;
            #20
            //sra
            aluc=4'b1100;
            a=1;
            b=32'h4020f0d0;
            #20
            a=2;
            b=32'b10110111011110111110111111011111;
            #20
            a=3;
            b=32'b10110111011110111110111111011111;
            #20
            //lui
            aluc=4'b1001;
            b=32'b10110111011110111110111111011111;
            #20
            aluc=4'b1000;
            b=32'b00110111011110111110111111011111;
            #20
            b=32'b10110111011110111110111111011110;
            #20
            $stop;
    end
endmodule
