module regCiclos(
		input logic clk,
		input logic rst,
		input logic rst_ciclos,
		output logic [7:0] ciclos
);

logic cnt_rst = rst && !rst_ciclos;

contador cont (clk, clk, cnt_rst, ciclos);

endmodule