module sumador1bit(
	input logic a,b, carryIn,
	output logic c, carryOut
	);
	
	assign c = carryIn^(a^b);
	assign carryOut = ((a^b)&carryIn)|(a&b);

endmodule