module moverse(
  input wire clk,
  input wire reset,
  input wire arriba,
  input wire abajo,
  input wire derecha,
  input wire izquierda,
  output reg [2:0] pos_x,
  output reg [2:0] pos_y
);

// Declaración de variables para almacenar el estado actual de los botones
reg arriba_prev;
reg abajo_prev;
reg derecha_prev;
reg izquierda_prev;

always @(posedge clk or posedge reset) begin
  if (reset) begin
    // Reiniciar las posiciones a (0,0) en caso de reset
    pos_x <= 3'b0;
    pos_y <= 3'b0;
  end else begin
    // Actualizar las variables de entrada previa
    arriba_prev <= arriba;
    abajo_prev <= abajo;
    derecha_prev <= derecha;
    izquierda_prev <= izquierda;
    
    // Lógica para mover el objeto en la matriz
    if (arriba && !arriba_prev) begin
      if (pos_y < 3'b111)
        pos_y <= pos_y + 1;
    end else if (abajo && !abajo_prev) begin
      if (pos_y > 3'b000)
        pos_y <= pos_y - 1;
    end else if (derecha && !derecha_prev) begin
      if (pos_x < 3'b111)
        pos_x <= pos_x + 1;
    end else if (izquierda && !izquierda_prev) begin
      if (pos_x > 3'b000)
        pos_x <= pos_x - 1;
    end
  end
end

endmodule

