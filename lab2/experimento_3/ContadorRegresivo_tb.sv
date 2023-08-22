`timescale 10ns/1ns
module ContadorRegresivo_tb();
logic clk, reset;
logic [1:0] count2;
logic [3:0] count4;
logic [5:0] count6;

ContadorRegresivo #(2) test2 (clk,reset,count2);
ContadorRegresivo #(4) test4 (clk,reset,count4);
ContadorRegresivo #(6) test6 (clk,reset,count6);

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


