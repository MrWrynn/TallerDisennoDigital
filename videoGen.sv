module videoGen(input logic [9:0] x, y, input logic [2:0] pos_x, pos_y, output logic [7:0] r, g, b);

logic inrect, selrect;
// Given y position, choose a character to display
// then look up the pixel value from the character ROM
// and display it in red or blue.Also draw a green rectangle.
//chargenrom chargenromb(y[8:3] + 8'd65, x[2:0], y[2:0], pixel);
rectgen rectgen(x, y, pos_x, pos_y, inrect, selrect);
//assign {r, g} = (y[3]==0) ? {{8{pixel}},8'h00} : {8'h00,{8{pixel}}};
assign r = selrect ? 8'hff : inrect ? 8'h22 : 8'hff;
assign g = selrect ? 8'h00 : inrect ? 8'ha2 : 8'hff;
assign b = selrect ? 8'h00 : inrect ? 8'h9c : 8'hff;
endmodule

