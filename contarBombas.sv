module contarBombas(
						input logic clock, rst,
						input logic [7:0][7:0][3:0] matrizBombastic,
						output logic [7:0][7:0][3:0] matrizNumeros
);

	reg [7:0] arriba, abajo, izquierda, derecha;
	reg [7:0] diagonal_izq_arriba, diagonal_izq_abajo, diagonal_der_arriba, diagonal_der_abajo;

	always @(posedge clock or posedge rst) begin
		if (rst) begin
		matrizNumeros<={8'h00};
		end
		else
		for (int i = 0; i < 8; i = i + 1) begin
			for (int j = 0; j < 8; j = j + 1) begin
				arriba = i > 0 ? (matrizBombastic[i-1][j] === 15 ? 1 : 0) : 0;
				abajo = i < 7 ? (matrizBombastic[i+1][j] === 15 ? 1 : 0) : 0;
				izquierda = j > 0 ? (matrizBombastic[i][j-1] === 15 ? 1 : 0) : 0;
				derecha = j < 7 ? (matrizBombastic[i][j+1] === 15 ? 1 : 0) : 0;
				
				diagonal_izq_arriba = (i > 0 && j > 0) ? (matrizBombastic[i-1][j-1] === 15 ? 1 : 0) : 0;
				diagonal_izq_abajo = (i < 7 && j > 0) ? (matrizBombastic[i+1][j-1] === 15 ? 1 : 0) : 0;
				diagonal_der_arriba = (i > 0 && j < 7) ? (matrizBombastic[i-1][j+1] === 15 ? 1 : 0) : 0;
				diagonal_der_abajo = (i < 7 && j < 7) ? (matrizBombastic[i+1][j+1] === 15 ? 1 : 0) : 0;
				
				
				matrizNumeros[i][j] <= matrizBombastic[i][j] == 15 ? 15 : arriba + abajo + izquierda + derecha +
											 diagonal_izq_arriba + diagonal_izq_abajo +
											 diagonal_der_arriba + diagonal_der_abajo;
											 
			 end
		 end
	 end

endmodule