module display_hexadecimal(input logic[3:0] data,
                            output logic[6:0] seg);

    always_comb begin
        case(data)
							//g f e d c b a
            4'h0: seg = 7'b100_0000; // 0
            4'h1: seg = 7'b111_1001; // 1
            4'h2: seg = 7'b010_0100; // 2
            4'h3: seg = 7'b011_0000; // 3
            4'h4: seg = 7'b001_1001; // 4
            4'h5: seg = 7'b001_0010; // 5
            4'h6: seg = 7'b000_0010; // 6
            4'h7: seg = 7'b111_1000; // 7
            4'h8: seg = 7'b000_0000; // 8
            4'h9: seg = 7'b001_0000; // 9
            4'ha: seg = 7'b000_1000; // A
            4'hb: seg = 7'b000_0011; // B
            4'hc: seg = 7'b010_0111; // C
            4'hd: seg = 7'b010_0001; // D
            4'he: seg = 7'b000_0110; // E
            4'hf: seg = 7'b000_1110; // F
            default: seg = 7'b111_1111;
        endcase
    end
endmodule