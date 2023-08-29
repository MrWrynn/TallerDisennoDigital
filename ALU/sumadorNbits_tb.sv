`timescale 10ns/1ns
module sumadorNbits_tb();
	logic [3:0] a, b;
	logic cIn;
	logic [3:0] c;
	logic cOut;
	sumadorNbits #(4) test (a, b, cIn, c, cOut);
	
	initial begin
	a = 0000;
	b = 0000;
	cIn = 0;
	#5;
	repeat(10) begin
		
		a = a + 1;
		#5;
		b = b + 1;
		#5;
		cIn = ~cIn;
		#5;
		
	end
	
	end
endmodule