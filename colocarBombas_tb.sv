module colocarBombas_tb;
  reg clk;          // Señal de reloj
  reg rst;          // Señal de reinicio
  wire [5:0] randomValue; // Valor aleatorio de 16 bits

  // Instancia del generador de números aleatorios
  colocarBombas uut (
    .clk(clk),
    .rst(rst),
	 .enable_random(enable_random),
    .randomValue(randomValue)
  );

  // Simulación del reloj
  always begin
    #5 clk = ~clk;
  end

  // Inicialización de señales
  initial begin
    clk = 0;
    rst = 0;
    #10 rst = 1; // Activa el reinicio después de 10 unidades de tiempo
	 #10 rst = 0; // Activa el reinicio después de 10 unidades de tiempo
    #100; // Espera un tiempo para observar los valores aleatorios generados

    // Mostrar los valores aleatorios generados
    //$display("Valores aleatorios generados:");
    for (int i = 0; i < 23; i = i + 1) begin
      #10; // Espera un tiempo entre muestras
      $display("RandomValue[%0d]: %h", i, randomValue);
		//$display("enable_random %d", enable_random);
    end
		
    $finish; // Finaliza la simulación
  end
endmodule






