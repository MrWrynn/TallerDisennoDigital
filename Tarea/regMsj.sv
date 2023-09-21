module regMsj(
		input logic clk,
		input logic rst,
		input logic [7:0] msj
		output logic [7:0] outMsj
);

always @(posedge clk or negedge rst) begin
	if (!rst)
		outMsj <= 8'b00000000;
	else
		outMsj <= msj;
end

endmodule