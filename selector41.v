    module selector41 (iC0,iC1,iC2,iC3,iS1,iS0,oZ);
        input [3:0] iC0;
        input [3:0] iC1;
        input [3:0] iC2;
        input [3:0] iC3;
        input iS1;
        input iS0;
        output reg [3:0] oZ;
        
        always @ (*)
        begin
            case ({iS1,iS0})
                0: oZ = iC0;
                1: oZ = iC1;
                2: oZ = iC2;
                3: oZ = iC3;
            endcase
         end
         
    /*assign oZ= (iS1==0&&iS0==0)?iC0:0;
    assign oZ= (iS1==0&&iS0==1)?iC1:0;
    assign oZ= (iS1==1&&iS0==0)?iC2:0;
    assign oZ= (iS1==1&&iS0==1)?iC3:0;*/
    
    endmodule