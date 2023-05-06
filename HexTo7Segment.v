module HexTo7Segment #(
	parameter INVERT_OUTPUT=0
)(
	input [3:0] Hex,
	output reg[6:0] Seg
	
);
//reg [6:0]Seg;
always @(Hex)
	case(INVERT_OUTPUT)
		1'b0:case(Hex)
					4'h003F:Seg<=7'b0111111;
					4'h0006:Seg<=7'b0000110;
					4'h005B:Seg<=7'b1011011;
					4'h004F:Seg<=7'b1001111;
					4'h0066:Seg<=7'b1100110;
					4'h006D:Seg<=7'b1101101;
					4'h007D:Seg<=7'b1111101;
					4'h0007:Seg<=7'b0000111;
					4'h007F:Seg<=7'b1111111;
					4'h006F:Seg<=7'b1101111;
					4'h0077:Seg<=7'b1110111;
					4'h007C:Seg<=7'b1111100;
					4'h0039:Seg<=7'b0111001;
					4'h005E:Seg<=7'b1011110;
					4'h0079:Seg<=7'b1111001;
					4'h0071:Seg<=7'b1110001;
				endcase
		1'b1:case(Hex)
					4'h003F:Seg<=7'b1000000;
					4'h0006:Seg<=7'b1111001;
					4'h005B:Seg<=7'b0100100;
					4'h004F:Seg<=7'b0110000;
					4'h0066:Seg<=7'b0011001;
					4'h006D:Seg<=7'b0010010;
					4'h007D:Seg<=7'b0000010;
					4'h0007:Seg<=7'b1111000;
					4'h007F:Seg<=7'b0000000;
					4'h006F:Seg<=7'b0010000;
					4'h0077:Seg<=7'b0001000;
					4'h007C:Seg<=7'b0000011;
					4'h0039:Seg<=7'b1000110;
					4'h005E:Seg<=7'b0100001;
					4'h0079:Seg<=7'b0000110;
					4'h0071:Seg<=7'b0001110;
				endcase
	endcase
endmodule