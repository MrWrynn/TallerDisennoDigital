module binaryToBCD (input logic [3:0] binario, output logic [0:6] bcd);

always @(binario) begin
	case(binario)
	4'b0000:bcd=7'b0000001;
	4'b0001:bcd=7'b1001111;
	4'b0010:bcd=7'b0010010;
	4'b0011:bcd=7'b0000110;
	4'b0100:bcd=7'b1001100;
	4'b0101:bcd=7'b0100100;
	4'b0110:bcd=7'b0100000;
	4'b0111:bcd=7'b0001111;
	4'b1000:bcd=7'b0000000;
	4'b1001:bcd=7'b0000100;
	default:bcd=7'b0000001;
	endcase
end

endmodule