module restadorNbits #(N=4) (
			input logic [N-1:0] aIn,
			input logic [N-1:0] bIn,
			output logic [N-1:0] cOut,
			output logic NegFlag);

logic [N-1:0] bComp, cTemp1, cTemp2, cTempComp;
logic carrOut;

complemento #(N) comp2b (bIn, bComp);
sumadorNbits #(N) sum1 (aIn, bComp, 1'b0, cTemp1, carrOut);
sumadorNbits #(N) sum2 (cTemp1, {N{1'b0}}, carrOut, cTemp2);
complemento #(N) comp2c (cTemp2, cTempComp);

assign cOut = carrOut ? cTemp2 : cTempComp;
assign NegFlag = cTempComp ? ~carrOut : 1'b0;
					
endmodule
					
					