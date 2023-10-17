module gameLogic(input logic clk, rst,
output logic vgaclk, hsync, vsync, sync_b, blank_b,
output logic [7:0] r, g, b,
input logic arriba,
input logic abajo,
input logic derecha,
input logic izquierda,
input logic [5:0] numero_bombas);


logic [2:0] pos_x;
logic [2:0] pos_y;

logic [7:0][7:0][3:0] matrizBombas = 0;
logic Q; // Valor aleatorio de 16 bits
logic [7:0][7:0][3:0] matrizBombastic = {8'h00};
logic [7:0][7:0][3:0] matrizNumeros = {8'h00};

  // Instancia del generador de números aleatorios
  colocarBombas bomb1 (
    clk,
    rst,
	 numero_bombas,
	 matrizBombastic,
	 Q
  );
  
  contarBombas nums (
	clk,
	matrizBombastic,
	matrizNumeros
  );

moverse mov (
        .clk(clk),
        .reset(rst),
        .arriba(arriba),
        .abajo(abajo),
        .derecha(derecha),
        .izquierda(izquierda),
        .pos_x(pos_x),
        .pos_y(pos_y)
    );
VGA vga(
			.clk(clk),
			.pos_x(pos_x),
			.pos_y(pos_y),
			.vgaclk(vgaclk), 
			.hsync(hsync), 
			.vsync(vsync), 
			.sync_b(sync_b), 
			.blank_b(blank_b),
			.r(r), 
			.g(g), 
			.b(b)
		);


endmodule