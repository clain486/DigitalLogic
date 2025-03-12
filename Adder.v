

module FA(oS,oC,iA,iB,iC);
	input iA,iB,iC;
	output oS,oC;
    assign oS = iA ^ iB ^ iC;
    assign oC = iA & iB | iA & iC | iB & iC;
endmodule

module Adder(oData,oData_C,iData_a,iData_b,iC);
input[7:0]iData_a,iData_b;
input iC;
output[7:0]oData;
output oData_C;
wire [6 : 0] carry;

    FA m0(oData[0], carry[0], iData_a[0], iData_b[0], iC);
	FA m1(oData[1], carry[1], iData_a[1], iData_b[1], carry[0]);
	FA m2(oData[2], carry[2], iData_a[2], iData_b[2], carry[1]);
	FA m3(oData[3], carry[3], iData_a[3], iData_b[3], carry[2]);
	FA m4(oData[4], carry[4], iData_a[4], iData_b[4], carry[3]);
	FA m5(oData[5], carry[5], iData_a[5], iData_b[5], carry[4]);
	FA m6(oData[6], carry[6], iData_a[6], iData_b[6], carry[5]);
	FA m7(oData[7], oData_C, iData_a[7], iData_b[7], carry[6]);

endmodule
