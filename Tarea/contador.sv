module contador(
		input logic clk,
		input logic signal,
		input logic rst,
		output reg [7:0] count
);

always @(posedge clk or negedge rst) begin
	if (!rst) begin
		count <= 8'b00000000;
	end else begin
		if (signal) 
			count <= count + 1;
		else
			count <= count;
	end
end

endmodule