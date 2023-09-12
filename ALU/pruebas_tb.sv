`timescale 10ns/1ns
module pruebas_tb();
	logic [3:0] a, b, c;
	pruebas #(4) test (a, b, c);
	
	initial begin
	a = 4'b0000;
	b = 4'b0010;
	#5;
	repeat(11) begin
		
		a = a + 1;
		#5;
		
	end
	
	end
endmodule