

module Adder1Bit (
    // Declare input and output ports
    input  a,
    input  b, 
    input  cin,
    output cout,
    output sum
);

    wire link1,link2,link3;

	 
    // Instantiate gates to calculate sum output
    xor(link1,a,b);
    xor(sum,link1,cin);

    // Instantiate gates to calculate carry (cout) output
    and(link2,a,b);
    and(link3,cin,link1);
    or (cout,link2,link3);

endmodule
