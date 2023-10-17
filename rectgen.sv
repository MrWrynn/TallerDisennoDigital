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
				if (mJ[i][j] == 1)
					case (mNum[i][j])
					4'h0: color <= 24'h227e53;
					4'h1: color <= 24'h09ff00;
					4'h2: color <= 24'ha2ff00;
					4'h3: color <= 24'hffa200;
					4'h4: color <= 24'h5200f7;
					4'h5: color <= 24'hbd00f7;
					4'h6: color <= 24'hf700b1;
					4'h7: color <= 24'hf70036;
					4'h8: color <= 24'h4a270d;
					4'hf: color <= 24'hff0000;
					default: color <= 24'hff0000;
					endcase
				else
					color <= 24'h4a004a;
			end
				
			end
		end		 
	end
	
endmodule