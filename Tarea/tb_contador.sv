`timescale 10ns/1ns
module tb_contador();

logic clk, rst;
logic [7:0] count;

contador test (clk, clk, rst, count);

initial begin
clk = 0;
rst = 1;
#5;
rst = 0;
#5;
rst = 1;
#5;

repeat (400) begin

clk = ~clk;
#5;

end

assert (count == 200) $display("Exito"); else $error("Fallo por manco");

end

endmodule