module HardwareAdder (
	 input        cin,
    input  [3:0] a,
    input  [3:0] b,
//	 input  [3:0] Hex,
	 output [3:0] sum,
    output       cout,
//	 output reg[6:0] Seg
//    input [3:0] switches,
    output  [6:0] HEX0,
//    output  [6:0] HEX1,
//    output  [6:0] HEX2,
//    output  [6:0] HEX3,
    output  [6:0] HEX4,
	 output  [6:0] HEX5
);
//integer cin=0;

Adder4Bit Adder4Bit0 (
        .cin (cin     ),
        .a   (a    [3:0]),
        .b   (b    [3:0]),
        .sum (sum  [3:0]),
        .cout(cout)
    );

//wire [6:0] a_hex, b_hex, cin_hex, cout_hex, sum_hex;

HexTo7Segment a_hex_to_7seg(
			.Hex(    a[3:0]),
			.Seg(HEX5)
		);
HexTo7Segment b_hex_to_7seg(
			.Hex(    b[3:0]),
			.Seg(HEX4)
		);
HexTo7Segment sum_to_7seg(
			.Hex(    sum[3:0]),
			.Seg(HEX0)
		);

//HexTo7Segment a_hex_to_7seg(
//			.Hex(    a[3:0]),
//			.Seg(a_hex[6:0])
//		);
//HexTo7Segment b_hex_to_7seg(
//			.Hex(    b[3:0]),
//			.Seg(b_hex[6:0])
//		);
//HexTo7Segment sum_to_7seg(
//			.Hex(    sum[3:0]),
//			.Seg(sum_hex[6:0])
//		);
//HexTo7Segment a_hex_to_7seg(a_hex);
//HexTo7Segment b_hex_to_7seg(b_hex);
//HexTo7Segment cin_hex_to_7seg(cin_hex);
//HexTo7Segment cout_hex_to_7seg(cout_hex);
//HexTo7Segment sum_hex_to_7seg(sum_hex);

//always @(a|b)
//begin

//assign HEX1 = {4'b0000, cout_hex};
//assign HEX2 = 7'b1000000; // displays an '=' sign
//assign HEX0 = sum_hex;
//assign HEX5 = a_hex;
//assign HEX4 = b_hex;
//end
endmodule
