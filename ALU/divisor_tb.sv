`timescale 10ns/1ns
module divisor_tb();

logic [3:0] aIn, bIn, cOut, mod;

divisor #(4) test (aIn, bIn, cOut, mod);


initial begin

aIn = 0;
repeat (16) begin
	bIn=1;
	#5;
	aIn++;
	repeat (14) begin
	#5;
	bIn++;
	end
end
#5;

end



endmodule