module FSM2(input ultima_casilla,D,S,B,HBO,HBA,clk, rst, output enable_mant,rst_cicles,mux_error);

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
        3'b001: if(D) next_state = 3'b010; else if(S) next_state = 3'b100; else if(B) next_state=3'b011;
        3'b010: next_state = 3'b001;
        3'b011: next_state = 3'b001;
        3'b100: if(HBO & ~HBA) next_state = 3'b101; else if(~HBO & ~HBA) next_state=3'b110; else if(HBA) next_state=1111;
        3'b110: next_state = 3'b001;
        3'b111: next_state = 3'b001;
        default: next_state = 3'b000;
    endcase

//output logic
assign mover = (state == 3'b010);
assign bandera = (state == 3'b011);
assign game_over = (state == 3'b101);
assign limpia = (state==3'b110);

endmodule