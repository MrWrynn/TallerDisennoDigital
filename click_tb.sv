module click_tb;
  reg clk;          // Señal de reloj
  reg rst;          // Señal de reinicio
  logic select;
  logic flag; // Valor aleatorio de 16 bits
  logic [2:0] pos_x;
  logic [2:0] pos_y;
  logic [7:0][7:0][3:0] matrizJuego = {8'h00};

  // Instancia del generador de números aleatorios
  click uut (
    clk,
    rst,
	 select,
	 flag,
	 pos_x,
	 pos_y,
	 matrizJuego
  );

  // Simulación del reloj
  always begin
    #5 clk = ~clk;
  end

  // Inicialización de señales
	initial begin
		clk = 0;
		rst = 0;
		pos_x = 3;
		pos_y = 4;
		select = 0;
		#10;
		rst = 1;
		#10;
		rst = 0;
		flag = 1;
		#10;
		flag = 0;
		#100;
		for (int i = 0; i < 8; i = i + 1) begin
			for (int j = 0; j < 8; j = j + 1) begin
				$write("%0h ", matrizJuego[i][j]);
			end
			$display(" ");
		end
		pos_x = pos_x + 1;
		pos_y = pos_y - 1;
		#10;
		flag = 1;
		#100;
		flag = 0;
		#100;
		for (int i = 0; i < 8; i = i + 1) begin
			for (int j = 0; j < 8; j = j + 1) begin
				$write("%0h ", matrizJuego[i][j]);
			end
			$display(" ");
		end
	end
endmodule
