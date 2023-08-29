module sumadorNbits #(N=4) (
	input logic [N-1:0] a, b,
	input logic cIn,
	output logic [N-1:0] c,
	output logic cOut
	);
	
	logic [N:0] carr;
	assign carr[0] = cIn;
	always @(*) begin
		for (int i = 0; i < N; i++)  begin
			sumador1bit sum (a[i], b[i], carr[i], c[i], carr[i+1]);
		end
	end
	assign cOut = carr[N];
	
	
endmodule