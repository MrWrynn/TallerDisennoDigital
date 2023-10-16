module revisar_bomba (
    input logic [7:0][7:0] matriz,
    input logic [2:0] x_jugador,
    input logic [2:0] y_jugador,
    output logic game_over
);

reg bomba_detectada; // Registro para rastrear la detección de bomba

always @(x_jugador, y_jugador) begin
    // Lógica para verificar si el jugador está en una posición de bomba
    if (matriz[x_jugador][y_jugador] == -1) begin
        bomba_detectada = 1; // El jugador está en una posición de bomba
    end else begin
        bomba_detectada = 0; // El jugador no está en una posición de bomba
    end
end

assign game_over = bomba_detectada; // La salida "game over" se basa en la detección de bomba

endmodule
