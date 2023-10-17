module colocarBombas (
	input logic clock,
	input logic reset,
	input logic [5:0] numero_bombas,
	output logic [7:0][7:0][3:0] matrizBombastic,
	output logic Q
);

logic [2:0] pos_x;
logic [2:0] pos_y;
logic rnd;
logic [5:0] count = 0;

random ram(
		.clock(clock),
		.reset(reset),
		.rnd(rnd)
	);

always @(posedge clock or posedge reset) begin

	if(reset) begin
		Q <= 1;
		matrizBombastic <= {8'h00};
		pos_x = 3'b000;
		pos_y = 3'b000;
	end
	else begin
		
		if(numero_bombas == count)
			Q<=0;
		else
		if(!rnd && matrizBombastic[pos_x][pos_y]!=4'hF && Q) begin
			matrizBombastic[pos_x][pos_y]<=4'hF;
			count = count + 1;
		end
		
		if(pos_x == 7 && pos_y != 7) begin
			pos_y<=pos_y+1;
			pos_x<=0;
		end
		else
		if(pos_y == 7 && pos_x == 7) begin
			pos_y<=0;
			pos_x<=0;
		end
		else
			pos_x<=pos_x + 1;
	end
end

endmodule




