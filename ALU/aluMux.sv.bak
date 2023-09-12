module mod_mux16 #(parameter width = 4) (
  input logic[width-1:0] d0,d1,d2,d3,d4,d5,d6,d7,d8,d9,
  input logic[3:0] sel, // selector de entrada de 4 bits
  output logic[width-1:0] result // salida de datos
);

always @(*) begin
  case (sel)
    4'b0000: result <= d0;
    4'b0001: result <= d1;
    4'b0010: result <= d2;
    4'b0011: result <= d3;
    4'b0100: result <= d4;
    4'b0101: result <= d5;
    4'b0110: result <= d6;
    4'b0111: result <= d7;
    4'b1000: result <= d8;
    4'b1001: result <= d9;
    4'b1010: result <= 4'b0000;
    4'b1011: result <= 4'b0000;
    4'b1100: result <= 4'b0000;
    4'b1101: result <= 4'b0000;
    4'b1110: result <= 4'b0000;
    4'b1111: result <= 4'b0000;
    default: result <= 16'hxxxx;
  endcase
end

endmodule