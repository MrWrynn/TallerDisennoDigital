module regMant(
		input logic clk,
		input logic rst,
		input logic enable_mant,
		output logic [7:0] ciclos
);


contador cont (clk, enable_mant, rst, ciclos);

endmodule