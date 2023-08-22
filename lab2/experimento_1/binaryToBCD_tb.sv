`timescale 10ns/1ns
module binaryToBCD_tb();
logic [3:0] binario;
logic [6:0] bcd;

binaryToBCD test(binario, bcd);
initial begin
binario=4'b0000;
#5;
binario=4'b0001;
#5;
binario=4'b0010;
#5;
binario=4'b0011;
#5;
binario=4'b0100;
#5;
binario=4'b0101;
#5;
binario=4'b0110;
#5;
binario=4'b0111;
#5;
binario=4'b1000;
#5;
binario=4'b1001;
#5;
end

endmodule