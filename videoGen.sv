module videoGen(input logic [9:0] x, y, output logic [7:0] r, g, b);

logic pixel, inrect;
// Given y position, choose a character to display
// then look up the pixel value from the character ROM
// and display it in red or blue.Also draw a green rectangle.
//chargenrom chargenromb(y[8:3] + 8'd65, x[2:0], y[2:0], pixel);
assign pixel = 0;
rectgen rectgen(x, y, 10'd120, 10'd150, 10'd200, 10'd230, inrect);
//assign {r, g} = (y[3]==0) ? {{8{pixel}},8'h00} : {8'h00,{8{pixel}}};
assign r = 8'h00;
assign g = 8'h00;
assign b = inrect ? 8'hFF : 8'h00;
endmodule

