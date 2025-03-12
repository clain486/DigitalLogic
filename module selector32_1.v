module selector32_1( 
input [31:0] iC0 ,
input [31:0] iC1 ,
input [31:0] iC2 ,
input [31:0] iC3 ,
input [31:0] iC4 ,
input [31:0] iC5 ,
input [31:0] iC6 ,
input [31:0] iC7,
input [31:0] iC8,
input [31:0] iC9,
input [31:0] iC10,
input [31:0] iC11,
input [31:0] iC12,
input [31:0] iC13,
input [31:0] iC14,
input [31:0] iC15,
input [31:0] iC16,
input [31:0] iC17,
input [31:0] iC18,
input [31:0] iC19,
input [31:0] iC20,
input [31:0] iC21,
input [31:0] iC22,
input [31:0] iC23,
input [31:0] iC24,
input [31:0] iC25,
input [31:0] iC26,
input [31:0] iC27,
input [31:0] iC28,
input [31:0] iC29,
input [31:0] iC30,
input [31:0] iC31,
input [4:0] iS,
 input ena,
output [31:0] oZ);
    wire [31:0]iC_all[31:0];
assign iC_all[0] = iC0;
assign iC_all[1] = iC1;
assign iC_all[2] = iC2;
assign iC_all[3] = iC3;
assign iC_all[4] = iC4;
assign iC_all[5] = iC5;
assign iC_all[6] = iC6;
assign iC_all[7] = iC7;
assign iC_all[8] = iC8;
assign iC_all[9] = iC9;
assign iC_all[10] = iC10;
assign iC_all[11] = iC11;
assign iC_all[12] = iC12;
assign iC_all[13] = iC13;
assign iC_all[14] = iC14;
assign iC_all[15] = iC15;
assign iC_all[16] = iC16;
assign iC_all[17] = iC17;
assign iC_all[18] = iC18;
assign iC_all[19] = iC19;
assign iC_all[20] = iC20;
assign iC_all[21] = iC21;
assign iC_all[22] = iC22;
assign iC_all[23] = iC23;
assign iC_all[24] = iC24;
assign iC_all[25] = iC25;
assign iC_all[26] = iC26;
assign iC_all[27] = iC27;
assign iC_all[28] = iC28;
assign iC_all[29] = iC29;
assign iC_all[30] = iC30;
assign iC_all[31] = iC31;
    assign oZ=((ena==1'b1)?iC_all[iS]:32'bz);
endmodule