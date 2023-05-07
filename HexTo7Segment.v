module HexTo7Segment(
	input [3:0] Hex,
	input [1:0] button,
	output reg[6:0] Seg,
	output reg[6:0] HEX5,
	output reg[6:0] HEX4,
	output reg[6:0] HEX3,
	output reg[6:0] HEX2
	
);
//reg [6:0]Seg;
always @(Hex)
case(Hex)
		4'b0000:Seg<=7'b1000000;
		4'b0001:Seg<=7'b1111001;
		4'b0010:Seg<=7'b0100100;
		4'b0011:Seg<=7'b0110000;
		4'b0100:Seg<=7'b0011001;
		4'b0101:Seg<=7'b0010010;
		4'b0110:Seg<=7'b0000010;
		4'b0111:Seg<=7'b1111000;
		4'b1000:Seg<=7'b0000000;
		4'b1001:Seg<=7'b0010000;
		4'b1010:Seg<=7'b0001000;
		4'b1011:Seg<=7'b0000011;
		4'b1100:Seg<=7'b1000110;
		4'b1101:Seg<=7'b0100001;
		4'b1110:Seg<=7'b0000110;
		4'b1111:Seg<=7'b0001110;
endcase
always @(button)
case(button)
		2'b00:begin HEX5<=7'b0111111;HEX4<=7'b0110110;HEX3<=7'b0110110;HEX2<=7'b0111111;end
		2'b01:begin HEX5<=7'b0111111;HEX4<=7'b0110110;end
		2'b10:begin HEX3<=7'b0110110;HEX2<=7'b0111111;end
		2'b11:begin HEX5<=7'b1111111;HEX4<=7'b1111111;HEX3<=7'b1111111;HEX2<=7'b1111111;end

endcase
//	case(Hex)
//		4'b0000:Seg<=7'b0111111;
//		4'b0001:Seg<=7'b0000110;
//		4'b0010:Seg<=7'b1011011;
//		4'b0011:Seg<=7'b1001111;
//		4'b0100:Seg<=7'b1100110;
//		4'b0101:Seg<=7'b1101101;
//		4'b0110:Seg<=7'b1111101;
//		4'b0111:Seg<=7'b0000111;
//		4'b1000:Seg<=7'b1111111;
//		4'b1001:Seg<=7'b1101111;
//		4'b1010:Seg<=7'b1110111;
//		4'b1011:Seg<=7'b1111100;
//		4'b1100:Seg<=7'b0111001;
//		4'b1101:Seg<=7'b1011110;
//		4'b1110:Seg<=7'b1111001;
//		4'b1111:Seg<=7'b1110001;
//	endcase
//	case(Hex)
//		4'h003F:Seg<=7'b0111111;
//		4'h0006:Seg<=7'b0000110;
//		4'h005B:Seg<=7'b1011011;
//		4'h004F:Seg<=7'b1001111;
//		4'h0066:Seg<=7'b1100110;
//		4'h006D:Seg<=7'b1101101;
//		4'h007D:Seg<=7'b1111101;
//		4'h0007:Seg<=7'b0000111;
//		4'h007F:Seg<=7'b1111111;
//		4'h006F:Seg<=7'b1101111;
//		4'h0077:Seg<=7'b1110111;
//		4'h007C:Seg<=7'b1111100;
//		4'h0039:Seg<=7'b0111001;
//		4'h005E:Seg<=7'b1011110;
//		4'h0079:Seg<=7'b1111001;
//		4'h0071:Seg<=7'b1110001;
//	endcase
endmodule