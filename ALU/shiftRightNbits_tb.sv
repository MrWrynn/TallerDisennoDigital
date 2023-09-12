`timescale 10ns/1ns
module shiftRightNbits_tb();

logic [3:0] a, b, shamt;

shiftRightNbits #(4) test (a, shamt, b);

initial begin

a=4'b0001;
repeat (12) begin
shamt=1;
	repeat (6) begin
		
		#5;
		assert (b === a>>shamt) else $error("Error en shamt %d y a %d", shamt, a);
		shamt=shamt + 1;
	end
a=a + 1;
end
end

endmodule