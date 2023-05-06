module HardwareAdder (
    input [3:0] switches,
    output reg [6:0] HEX0,
    output reg [6:0] HEX1,
    output reg [6:0] HEX2,
    output reg [6:0] HEX3,
    output reg [6:0] HEX4
);

wire [6:0] a_hex, b_hex, cin_hex, cout_hex, sum_hex;

HexTo7Segment a_hex_to_7seg(a_hex);
HexTo7Segment b_hex_to_7seg(b_hex);
HexTo7Segment cin_hex_to_7seg(cin_hex);
HexTo7Segment cout_hex_to_7seg(cout_hex);
HexTo7Segment sum_hex_to_7seg(sum_hex);

Adder4Bit adder(switches, cout_hex, sum_hex);
Adder1Bit adder1(switches[0], switches[1], switches[2], cin_hex, cout_hex[0], sum_hex[0]);
Adder1Bit adder2(switches[1], switches[2], switches[3], cin_hex[0], cout_hex[1], sum_hex[1]);
Adder1Bit adder3(switches[2], switches[3], 1'b0, cin_hex[1], cout_hex[2], sum_hex[2]);

assign HEX0 = sum_hex;
assign HEX1 = {4'b0000, cout_hex};
assign HEX2 = 7'b1000000; // displays an '=' sign
assign HEX3 = a_hex;
assign HEX4 = b_hex;

endmodule
