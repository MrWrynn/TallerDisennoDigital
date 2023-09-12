module fpgaMux (
  input logic[5:0] sel,
  output logic[3:0] result
);

always @(*) begin
  case (sel)
    6'b001111: result <= 4'b0000;
    6'b010111: result <= 4'b0001;
	 6'b011011: result <= 4'b0010;
	 6'b011101: result <= 4'b0011;
	 6'b011110: result <= 4'b0100;
	 6'b101111: result <= 4'b1000;
    6'b110111: result <= 4'b1001;
	 6'b111011: result <= 4'b1010;
	 6'b111101: result <= 4'b1011;
	 6'b111110: result <= 4'b1100;
  endcase
end

endmodule