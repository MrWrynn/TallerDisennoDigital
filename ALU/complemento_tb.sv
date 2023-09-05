`timescale 10ns/1ns
module complemento_tb();

logic [3:0] a, b;

complemento #(4) test(a,b);

initial begin

a=0000;

repeat(10) begin
		
		a = a + 1;
		#5;
end

end

endmodule