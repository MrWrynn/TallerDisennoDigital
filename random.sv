module random (
  input wire clock,      // Señal de reloj
  input wire reset,      // Señal de reinicio
  output wire rnd // Valor aleatorio de 6 bits (0-63)
);

	logic [12:0] random = 0;
	logic [12:0] random_next = 0;
	logic [3:0] count = 0, count_next = 0; //to keep track of the shifts
	wire feedback = random[12] ^ random[3] ^ random[2] ^ random[0]; 

	always @ (posedge clock or posedge reset) begin
		if (reset) begin
			random <= 13'b0010010111010; //An LFSR cannot have an all 0 state, thus reset to FF
			random_next <= 13'hF;
		end
		else begin
			
			random <= random_next;
		  
			random_next <= {random[11:0], feedback}; //shift left the xor'd every posedge clock

		end
	end
	assign rnd = feedback;
endmodule
