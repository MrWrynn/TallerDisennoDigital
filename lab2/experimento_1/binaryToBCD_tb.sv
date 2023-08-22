`timescale 10ns/1ns
module binaryToBCD_tb();
logic [3:0] binario;
logic [6:0] bcd;

binaryToBCD test(binario, bcd);
initial begin
binario=4'b0000;
#40;
binario=4'b0001;
#40;
binario=4'b0010;
#40;
binario=4'b0011;
#40;
binario=4'b0100;
#40;
binario=4'b0101;
#40;
binario=4'b0110;
#40;
binario=4'b0111;
#40;
binario=4'b1000;
#40;
binario=4'b1001;
#40;
end

endmodule