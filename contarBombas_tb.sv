module contarBombas_tb;
  logic clk;          // Señal de reloj 
  logic [7:0][7:0][3:0] matrizNumeros = {8'h00};
  logic [7:0][7:0][3:0] matrizBombastic = {8'h00};
  
  // Instancia del generador de números aleatorios
  contarBombas uut (
	clk,
	matrizBombastic,
	matrizNumeros
  );
  
   always begin
    #5 clk = ~clk;
  end
  
  initial begin
		clk = 0;
		matrizBombastic[0][0]=15;
		matrizBombastic[1][2]=15;
		matrizBombastic[2][1]=15;
		matrizBombastic[6][4]=15;
		#15;

	  
		for (int i = 0; i < 8; i = i + 1) begin
				for (int j = 0; j < 8; j = j + 1) begin
				  $write("%0h ", matrizNumeros[i][j]);
				end
				$display(" ");
		end
		$finish;
	end
  
endmodule
