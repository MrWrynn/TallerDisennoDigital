module ContadorRegresivo #(parameter N = 4) (
    input logic clk,      // Entrada de reloj
    input logic reset,    // Entrada de reset asincrónico activo bajo
    output logic [N-1:0] count // Salida del contador
);

always @(posedge clk or negedge reset) begin
    if (!reset) begin
        count <= {N{1'b1}}; // Reset cuando reset es bajo
    end else begin
        if (count == 0) begin
            count <= {N{1'b1}}; // Reiniciar el contador al valor máximo
        end else begin
            count <= count - 1; // Contar hacia abajo
        end
    end
end

endmodule