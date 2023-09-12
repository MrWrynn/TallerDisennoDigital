module aluMux #(N = 4) (
  input logic[N-1:0] sumRes, resRes, mulRes, divRes, modRes,
							orRes, andRes, xorRes, slRes, srRes,
  input logic[3:0] sel,
  output logic[N-1:0] result
);

always @(*) begin
  case (sel)
    4'b0000: result <= sumRes;
    4'b0001: result <= resRes;
    4'b0010: result <= mulRes;
    4'b0011: result <= divRes;
    4'b0100: result <= modRes;
    4'b0101: result <= 4'b0000;
    4'b0110: result <= 4'b0000;
    4'b0111: result <= 4'b0000;
    4'b1000: result <= orRes;
    4'b1001: result <= andRes;
    4'b1010: result <= xorRes;
    4'b1011: result <= slRes;
    4'b1100: result <= srRes;
    4'b1101: result <= 4'b0000;
    4'b1110: result <= 4'b0000;
    4'b1111: result <= 4'b0000;
    default: result <= 16'hxxxx;
  endcase
end

endmodule