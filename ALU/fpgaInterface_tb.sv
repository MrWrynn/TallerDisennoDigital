`timescale 10ns/1ns
module fpgaInterface_tb();
	
	logic [3:0] aIn;
	logic [3:0] bIn;
	logic [5:0] sel;
	logic [7:0] hex;
	logic [3:0] flags;
	FPGAInterface test (
				aIn,
				bIn,
				sel,
				hex,
				flags);
	
	initial begin
		aIn=6;
		bIn=3;
		sel = 6'b001111;
		#5;
		sel = 6'b011111;
		#5;
		sel = 6'b010111;
		#5;
		sel = 6'b011111;
		#5;
	end
endmodule