module FSM1(input Ultima_casilla,D,S,B,HBO,HBA,clk, rst, output enable_mant,rst_cicles,mux_error);

logic [1:0] state, next_state;

//actual state logic
always_ff @(posedge clk or negedge rst)
	if (~rst) state = 2'b00;
	else
		state = next_state;

//next state logic
always_comb
	case(state)
		3'b000: if (ultima_casilla) next_state = 3'b001;
		3'b001: if(Q) next_state = 3'b000; else next_state = 3'b010;
		3'b010: if (B) next_state = 3'b100; else if(~B & ~C) next_state = 3'b010; else if(C) next_state = 3'b011;
		3'b011: if(F) next_state = 3'b010; else next_state = 3'b101;
		3'b100: next_state = 3'b010;
		3'b101: next_state = 3'b101;
		default: next_state = 3'b000;
	endcase

//output logic
assign next = (state == 3'b000);
assign bomba = (state == 3'b001);
assign revisar_siguiente = (state == 3'b010);
assign incremento = (state==3'b100);
assign ultima_casilla = (state==3'b101);

endmodule