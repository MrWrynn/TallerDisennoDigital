module FPGAInterface (
				input logic [3:0] aIn,
				input logic [3:0] bIn,
				input logic [5:0] sel,
				output logic [6:0] hex,
				output logic [3:0] flags);  // [ O, C, Z, N ]

logic [3:0] aluSel, cOut;
fpgaMux fpgaMuxi (sel, aluSel);
alu #(4) fpgaAlu (aluSel, aIn, bIn, cOut, flags);
display_hexadecimal hexSeg (cOut, hex);
endmodule