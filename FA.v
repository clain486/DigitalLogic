
module FA(oS,oC,iA,iB,iC);
	input iA,iB,iC;
	output oS,oC;
    assign oS = iA ^ iB ^ iC;
    assign oC = iA & iB | iA & iC | iB & iC;
endmodule
