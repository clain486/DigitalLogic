module pcreg(
input clk,
input rst,
input ena,
input [31:0] data_in,
output [31:0] data_out
    );
    ASynchronous_D_FF T0(clk, rst, ena, data_in[0], data_out[0]);
    ASynchronous_D_FF T1(clk, rst, ena, data_in[1], data_out[1]);
    ASynchronous_D_FF T2(clk, rst, ena, data_in[2], data_out[2]);   
    ASynchronous_D_FF T3(clk, rst, ena, data_in[3], data_out[3]);   
    ASynchronous_D_FF T4(clk, rst, ena, data_in[4], data_out[4]);   
    ASynchronous_D_FF T5(clk, rst, ena, data_in[5], data_out[5]);   
    ASynchronous_D_FF T6(clk, rst, ena, data_in[6], data_out[6]);   
    ASynchronous_D_FF T7(clk, rst, ena, data_in[7], data_out[7]);   
    ASynchronous_D_FF T8(clk, rst, ena, data_in[8], data_out[8]);   
    ASynchronous_D_FF T9(clk, rst, ena, data_in[9], data_out[9]);   
    ASynchronous_D_FF T10(clk, rst, ena, data_in[10], data_out[10]);
    ASynchronous_D_FF T11(clk, rst, ena, data_in[11], data_out[11]);
    ASynchronous_D_FF T12(clk, rst, ena, data_in[12], data_out[12]);
    ASynchronous_D_FF T13(clk, rst, ena, data_in[13], data_out[13]);
    ASynchronous_D_FF T14(clk, rst, ena, data_in[14], data_out[14]);
    ASynchronous_D_FF T15(clk, rst, ena, data_in[15], data_out[15]);
    ASynchronous_D_FF T16(clk, rst, ena, data_in[16], data_out[16]);
    ASynchronous_D_FF T17(clk, rst, ena, data_in[17], data_out[17]);
    ASynchronous_D_FF T18(clk, rst, ena, data_in[18], data_out[18]);
    ASynchronous_D_FF T19(clk, rst, ena, data_in[19], data_out[19]);
    ASynchronous_D_FF T20(clk, rst, ena, data_in[20], data_out[20]);
    ASynchronous_D_FF T21(clk, rst, ena, data_in[21], data_out[21]);
    ASynchronous_D_FF T22(clk, rst, ena, data_in[22], data_out[22]);
    ASynchronous_D_FF T23(clk, rst, ena, data_in[23], data_out[23]);
    ASynchronous_D_FF T24(clk, rst, ena, data_in[24], data_out[24]);
    ASynchronous_D_FF T25(clk, rst, ena, data_in[25], data_out[25]);
    ASynchronous_D_FF T26(clk, rst, ena, data_in[26], data_out[26]);
    ASynchronous_D_FF T27(clk, rst, ena, data_in[27], data_out[27]);
    ASynchronous_D_FF T28(clk, rst, ena, data_in[28], data_out[28]);
    ASynchronous_D_FF T29(clk, rst, ena, data_in[29], data_out[29]);
    ASynchronous_D_FF T30(clk, rst, ena, data_in[30], data_out[30]);
    ASynchronous_D_FF T31(clk, rst, ena, data_in[31], data_out[31]);
endmodule