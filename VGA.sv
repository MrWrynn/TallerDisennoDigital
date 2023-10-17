module VGA
(input logic clk,
input logic [2:0] pos_x, pos_y,
output logic vgaclk, hsync, vsync, sync_b, blank_b,
output logic [7:0] r, g, b,
input logic [7:0][7:0][3:0] mNum,
input logic [7:0][7:0][3:0] mJ);

logic[9:0] x, y;

pll vgapll(.inclk0(clk), .c0(vgaclk));
vgaController vgaCont(vgaclk, hsync, vsync, sync_b, blank_b,x,y);
videoGen videoGen(x, y, pos_x, pos_y, r, g, b, mNum, mJ);

endmodule