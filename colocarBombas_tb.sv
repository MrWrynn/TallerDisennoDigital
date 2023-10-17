module colocarBombas_tb;
  reg clk;          // Señal de reloj
  reg rst;          // Señal de reinicio
  logic [5:0] numero_bombas;
  logic Q; // Valor aleatorio de 16 bits
  logic [7:0][7:0][3:0] matrizBombastic = {8'h00};

  // Instancia del generador de números aleatorios
  colocarBombas uut (
    clk,
    rst,
	 numero_bombas,
	 matrizBombastic,
	 Q
  );

  // Simulación del reloj
  always begin
    #5 clk = ~clk;
  end

  // Inicialización de señales
  initial begin
    clk = 0;
    rst = 0;
	 #10;
	 rst = 1;
	 #10;
	 rst = 0;
	 numero_bombas=10;
	 #10;
	 repeat(100)
	 #10;
		for (int i = 0; i < 8; i = i + 1) begin
				for (int j = 0; j < 8; j = j + 1) begin
				  $write("%0h ", matrizBombastic[i][j]);
				end
				$display(" ");
		end
	end
endmodule






