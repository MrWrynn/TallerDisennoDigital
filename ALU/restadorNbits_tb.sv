`timescale 10ns/1ns
module restadorNbits_tb();
	logic [3:0] a, b;
	logic [3:0] c;
	logic NegFlag;
	restadorNbits #(4) test (a, b, c, cOut);
	
	initial begin
	a = 0000;
	b = 0000;
	#5;
	repeat(16) begin
		
		a = a + 1;
		#5;
		b = b + 1;
		#5;
		
	end
	
	end
endmodule