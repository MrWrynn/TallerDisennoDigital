module VGA
(input logic clk,
output logic vgaclk, hsync, vsync, sync_b, blank_b,
output logic [7:0] r, g, b);

logic[9:0] x, y;

pll vgapll(.inclk0(clk), .c0(vgaclk));
vgaController vgaCont(vgaclk, hsync, vsync, sync_b, blank_b,x,y);
videoGen videoGen(x, y, r, g, b);

endmodule