module ASynchronous_D_FF(
input CLK,
input RST_n,
input ena,
input D,
output reg Q1
    );
    always@(posedge CLK or RST_n or ena)
    if(RST_n==1'b1)
    Q1=1'b0;
    else
    if(ena==1'b1)
    Q1=D;
endmodule