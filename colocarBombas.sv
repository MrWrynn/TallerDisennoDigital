module colocarBombas (
						  input logic [7:0] numBombas, 
						  input logic [7:0] matriz[7:0][7:0],
						  output logic [7:0] matrizBombas[7:0][7:0]
							);

	always @(*) begin
		matrizBombas = matriz;
	end
	
	initial begin
		bomba = $urandom_range(2);
	end

endmodule