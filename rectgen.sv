module rectgen(input logic [9:0] x, y, input logic [2:0] pos_x, pos_y, output logic inrect, selrect);
	
	logic [7:0][7:0]cuadros;
	always @(*) begin
		for(int i = 0; i < 8; i++) begin
			for(int j = 0; j < 8; j++) begin
				cuadros[i][j] <= (x > (60*i + 10) && x < (60*i + 60)) && (y > (60*j + 5) && y < (60*j + 55));
			end
		end
		inrect <= cuadros[0][0] || cuadros[0][1] || cuadros[0][2] || cuadros[0][3] || cuadros[0][4] || cuadros[0][5] || cuadros[0][6] || cuadros[0][7] ||
		          cuadros[1][0] || cuadros[1][1] || cuadros[1][2] || cuadros[1][3] || cuadros[1][4] || cuadros[1][5] || cuadros[1][6] || cuadros[1][7] ||
					 cuadros[2][0] || cuadros[2][1] || cuadros[2][2] || cuadros[2][3] || cuadros[2][4] || cuadros[2][5] || cuadros[2][6] || cuadros[2][7] ||
					 cuadros[3][0] || cuadros[3][1] || cuadros[3][2] || cuadros[3][3] || cuadros[3][4] || cuadros[3][5] || cuadros[3][6] || cuadros[3][7] ||
					 cuadros[4][0] || cuadros[4][1] || cuadros[4][2] || cuadros[4][3] || cuadros[4][4] || cuadros[4][5] || cuadros[4][6] || cuadros[4][7] ||
					 cuadros[5][0] || cuadros[5][1] || cuadros[5][2] || cuadros[5][3] || cuadros[5][4] || cuadros[5][5] || cuadros[5][6] || cuadros[5][7] ||
					 cuadros[6][0] || cuadros[6][1] || cuadros[6][2] || cuadros[6][3] || cuadros[6][4] || cuadros[6][5] || cuadros[6][6] || cuadros[6][7] ||
					 cuadros[7][0] || cuadros[7][1] || cuadros[7][2] || cuadros[7][3] || cuadros[7][4] || cuadros[7][5] || cuadros[7][6] || cuadros[7][7];
		selrect <= cuadros[pos_x][pos_y];			 
	end
	
endmodule