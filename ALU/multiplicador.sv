module multiplicador #(N=4) (
			input logic [N-1:0] aIn,
			input logic [N-1:0] bIn,
			output logic [N-1:0] cOut,
			output logic OFlag,
			output logic CFlag
			);
			
logic [N-2:0] temp;
logic [2*N-1:0] result;
logic [N-1:0] [N-1:0] andOutput;
logic [N-1:0] [N:0] sumConnectors;

genvar i, j;
generate
	for(i = 0; i < N; i++) begin : andOuput_filling_a
		for(j = 0; j < N; j++) begin : andOuput_filling_b
	
			assign andOutput[i][j] = aIn[i] & bIn[j];
	
		end
	end
endgenerate

assign sumConnectors[0] = {{1'b0}, andOutput[0]};

genvar k;
generate
	for(k = 0; k < N-1; k++) begin : sums_generator
		
		sumadorNbits #(N) sum (sumConnectors[k][N:1], andOutput[k+1], 1'b0, sumConnectors[k+1][N-1:0], sumConnectors[k+1][N]);
		
	end
endgenerate

genvar p;
generate
	for(p = 0; p < N-1; p++) begin : temp_assigner
		
		assign temp[p] = sumConnectors[p][0];
		
	end
endgenerate

assign result = {sumConnectors[N-1], temp};
assign cOut = result[N-1:0];
assign CFlag = result[N];
assign OFlag = (result[2*N-1:N+1] > 0) ? 1 : 0;

endmodule