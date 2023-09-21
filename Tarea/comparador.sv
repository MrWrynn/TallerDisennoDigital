module comparador (
			input logic [7:0] aIn,
			input logic [7:0] bIn,
			output logic cOut
);

assign cOut = (aIn >= bIn) ? 1 : 0;
		
endmodule