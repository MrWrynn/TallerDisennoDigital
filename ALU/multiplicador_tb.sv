`timescale 10ns/1ns
module multiplicador_tb();

logic [3:0] aIn;
logic [3:0] bIn;
logic [3:0] cOut;
logic OFlag;
logic CFlag;

multiplicador #(4) test (
			aIn,
			bIn,
			cOut,
			OFlag,
			CFlag
			);
			
initial begin
aIn = 0;
bIn = 0;
repeat (16) begin
	#5;
	aIn++;
	repeat (16) begin
	#5;
	bIn++;
	end
end
#5;
end

endmodule