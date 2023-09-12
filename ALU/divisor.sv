module divisor #(N=4) (
				input logic [N-1:0] aIn,
				input logic [N-1:0] bIn,
				output logic [N-1:0] cOut,
				output logic [N-1:0] mod);

logic [N-1:0] div, dvd, result, shamt, tempDiv, tempDvd;
logic [N:0] tempResult;
logic uno = 1, zero = 0;

always @(*) begin
	dvd <= aIn;
	div <= bIn;
	for (int i = 0; i < N; i++) begin
		if (div[N-1-i] == 1'b1) begin
			tempDiv <= div << 1;
			shamt++;
			break;
		end
	end
	for (int i = 0; i < N; i++) begin
		if (dvd > div) begin
			tempDvd <= dvd-div;
			tempResult <= {result, 1'b1};
		end else tempResult <= {result, 1'b0};
		result <= tempResult;
		tempDiv <= div >> 1;
		if (shamt == 0) break;
		shamt--;
	end
	cOut <= aIn / bIn;
	mod <= aIn % bIn;
end
endmodule