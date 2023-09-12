module complemento #(N=4) (
		input logic [N-1:0] aIn,
		output logic [N-1:0] bOut);
		
assign bOut = ~(aIn);
		
		
endmodule