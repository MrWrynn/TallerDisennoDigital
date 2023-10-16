module colocarBombas (
  input wire clk,      // Señal de reloj
  input wire rst,      // Señal de reinicio
  output wire enable_random,
  output wire [5:0] randomValue // Valor aleatorio de 6 bits (0-63)
);
  reg [5:0] lfsr;    // Registro de cambio lineal

  initial begin
    lfsr <= 6'b111111; // Valor inicial arbitrario
  end

  always @(posedge clk && enable_random) begin
    if (!rst) begin
      // Implementación de LFSR solo cuando enable_random es 1
      lfsr[0] <= lfsr[0] ^ lfsr[1] ^ lfsr[2] ^ lfsr[4];
      lfsr[5:1] <= lfsr[4:0];
    end
  end

  // Puedes asignar enable_random a 1 o 0 según tus necesidades
  //assign enable_random = 1'b1;
  assign randomValue = lfsr; // El valor del registro es el número aleatorio
endmodule




