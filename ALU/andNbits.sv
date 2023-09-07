module andNbits #(N=4) (
			input logic [N-1:0] aIn,
			input logic [N-1:0] bIn,
			output logic [N-1:0] cOut);
			
assign cOut = aIn & bIn;
			
endmodule