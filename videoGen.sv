module videoGen(input logic [9:0] x, y, input logic [2:0] pos_x, pos_y, output logic [7:0] r, g, b,
input logic [7:0][7:0][3:0] mNum,
input logic [7:0][7:0][3:0] mJ);

logic [23:0] color;
// Given y position, choose a character to display
// then look up the pixel value from the character ROM
// and display it in red or blue.Also draw a green rectangle.
//chargenrom chargenromb(y[8:3] + 8'd65, x[2:0], y[2:0], pixel);
rectgen rectgen(x, y, pos_x, pos_y, mNum, mJ, color);


assign r = color[23:16];
assign g = color[15:8];
assign b = color[7:0];
endmodule

