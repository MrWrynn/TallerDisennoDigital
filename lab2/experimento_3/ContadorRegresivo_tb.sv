`timescale 10ns/1ns
module ContadorRegresivo_tb();
logic clk, reset;
logic [1:0] count;

ContadorRegresivo #(2) test (clk,reset,count);

initial begin
clk = 1;
reset=1;
#5;
reset=0;
#5;
reset=1;
#5;
forever begin
	clk=!clk;
	#5;
	end
end



endmodule


