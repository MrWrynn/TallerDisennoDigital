module alu #(N=4) (
			input logic [3:0] sel,
			input logic [N-1:0] aIn,
			input logic [N-1:0] bIn,
			output logic [N-1:0] cOut,
			output logic [3:0] Flags); // [ O, C, Z, N ]

logic [N-1:0] orRes, andRes, xorRes, slRes, srRes;
logic [N-1:0] sumRes, resRes, mulRes, divRes, modRes;
logic [N-1:0] result;
logic NFlag, CFlagSum, CFlagMul, OFlag;

orNbits #(N) aluOr (aIn, bIn, orRes);
andNbits #(N) aluAnd (aIn, bIn, andRes);
xorNbits #(N) aluXor (aIn, bIn, xorRes);
shiftLeftNbits #(N) aluSl (aIn, bIn, slRes);
shiftRightNbits #(N) aluSr (aIn, bIn, srRes);
sumadorNbits #(N) aluSum (aIn, bIn, 1'b0, sumRes, CFlagSum);
restadorNbits #(N) aluRes (aIn, bIn, resRes, NFlag);
multiplicador #(N) aluMul (aIn, bIn, mulRes, OFlag, CFlagMul);
divisor #(N) aluDiv (aIn, bIn, divRes, modRes);
aluMux #(N) aluMuxInstance (sumRes, resRes, mulRes, divRes, modRes,
									orRes, andRes, xorRes, slRes, srRes,
									sel,
									result);
assign Flags[0] = (sel == 4'b0001) ? NFlag : 0;
assign Flags[1] = (result == 4'b0000) ? 1 : 0;
assign Flags[2] = (sel == 4'b0000) ? CFlagSum : (sel == 4'b0010) ? CFlagMul : 0;
assign Flags[3] = (sel == 4'b0010) ? OFlag : 0;
assign cOut = result; 
			
endmodule