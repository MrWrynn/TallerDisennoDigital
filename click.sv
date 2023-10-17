module click(
input clk,
input rst,
input select,
input flag,
input [2:0] pos_x,
input [2:0] pos_y,
output logic [7:0][7:0][3:0] matrizJuego
);

always @(posedge flag or posedge rst or posedge select) begin


	if(rst) begin
		matrizJuego <= {8'h00};
	end
	
	else begin
		if(flag) begin
			if(matrizJuego[pos_x][pos_y]==2)
				matrizJuego[pos_x][pos_y]<=0;
			else if (matrizJuego[pos_x][pos_y]==0)
				matrizJuego[pos_x][pos_y]<=2;
				
		end
		else if(select) begin
			if(matrizJuego[pos_x][pos_y]!=2)
				matrizJuego[pos_x][pos_y]<=1;
		end
	end

end


endmodule