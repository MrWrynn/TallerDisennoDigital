module sumadorNbits #(N=4) (
	input logic [N-1:0] aIn, bIn,
	input logic cIn,
	output logic [N-1:0] c,
	output logic cOut
	);
	
	logic [N:0] carr;
	assign carr[0] = cIn;
	
	sumador1bit sum (.a(aIn[0]),
					  .b(bIn[0]), 
					  .carryIn(carr[0]), 
					  .c(c[0]), 
					  .carryOut(carr[1]));
	genvar i;
	generate
		for (i = 1; i < N; i++)  begin : sum_creator
			sumador1bit sum (.a(aIn[i]),
								  .b(bIn[i]), 
								  .carryIn(carr[i]), 
								  .c(c[i]), 
								  .carryOut(carr[i+1]));
		end
	endgenerate
	
	assign cOut = carr[N];
	
endmodule