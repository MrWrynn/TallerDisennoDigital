module rectgen(input logic [9:0] x, y, input logic [2:0] pos_x, pos_y, 
input logic [7:0][7:0][3:0] mNum,
input logic [7:0][7:0][3:0] mJ,
output logic [23:0] color);
	
	logic [7:0][7:0]cuadros;
	always @(x, y) begin
		color <= 24'hffffff;
		for(int i = 0; i < 8; i++) begin
			for(int j = 0; j < 8; j++) begin
			if ((x > (60*i + 10) && x < (60*i + 60)) && (y > (60*j + 5) && y < (60*j + 55))) begin
				if (pos_x==i && pos_y ==j)
					color <= 24'h025e33;
				else
				if (mJ[i][j] == 2)
					color <= 24'h0000ff;
				else
					color <= 24'h4a004a;
			end
				
			end
		end		 
	end
	
endmodule