`timescale 10ns/1ns
module restadorNbits_tb();
	logic [3:0] a, b, c;
	logic NegFlag;
	restadorNbits #(4) test (a, b, c, NegFlag);
	
	initial begin
	a = 0000;
	b = 0100;
	#5;
	repeat(16) begin
		
		a = a + 1;
		#5;
		
		assert (c === (NegFlag ? (b-a) : (a-b)))else $error("Error en %b, a-b: %b", c, a-b);
		
	end
	
	end
endmodule