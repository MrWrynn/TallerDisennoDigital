module mux2a1 (
		input logic [7:0] aIn,
		input logic [7:0] bIn,
		input logic sel,
		output logic [7:0] cOut
);

assign cOut = (sel == 1) ? bIn : aIn;

endmodule