module gameLogic(input logic clk, rst_1,rst_2,
output logic vgaclk, hsync, vsync, sync_b, blank_b,
output logic [7:0] r, g, b,
input logic arriba,
input logic abajo,
input logic derecha,
input logic izquierda,
input logic [5:0] numero_bombas,
input logic select,
input logic flag
);


logic [2:0] pos_x;
logic [2:0] pos_y;

logic [7:0][7:0][3:0] matrizBombas = 0;
logic Q; // Valor aleatorio de 16 bits
logic [7:0][7:0][3:0] matrizBombastic = {8'h00};
logic [7:0][7:0][3:0] matrizNumeros = {8'h00};
logic [7:0][7:0][3:0] matrizJuego = {8'h00};

  // Instancia del generador de números aleatorios
 colocarBombas bomb1 (
    clk,
    rst_1,
	 numero_bombas,
	 matrizBombastic,
	 Q
  );
  
  contarBombas nums (
	clk,
	rst_1,
	matrizBombastic,
	matrizNumeros
  );
  


moverse mov (
        .clk(clk),
        .reset(rst_2),
        .arriba(arriba),
        .abajo(abajo),
        .derecha(derecha),
        .izquierda(izquierda),
        .pos_x(pos_x),
        .pos_y(pos_y)
    );
	 
click cl (clk,
rst_1,
select,
flag,
pos_x,
pos_y,
matrizJuego);

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
			.b(b),
			.mNum(matrizNumeros),
			.mJ(matrizJuego)
		);


endmodule