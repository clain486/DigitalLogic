`timescale 1ns / 1ps

module FA_tb;
reg iA,iB,iC;
wire oS,oC;

initial
begin
iC=0;
iA=0;iB=0;
#50
iA=0;iB=1;
#50
iA=1;iB=1;
#50
iC=1;
iA=0;iB=0;
#50
iA=0;iB=1;
#50
iA=1;iB=0;
#50
iA=1;iB=1;
#50
$stop;
end

FA
FA_init(
.iA(iA),
.iB(iB),
.iC(iC),
.oS(oS),
.oC(oC)
);
endmodule
