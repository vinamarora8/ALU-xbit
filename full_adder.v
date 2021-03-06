`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:06:57 12/02/2016 
// Design Name: 
// Module Name:    full_adder 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module full_adder(inA, inB, cin, sum, cout, p, g
    );
	
	// Assigning ports as in/out
	input inA, inB, cin;
	output sum, cout, p, g;

	// Logic for p (propagate carry)
	// p = a^b
	xor propagator(p, inA, inB);
	
	// Logic for g (generate carry)
	// g = ab
	and generator(g, inA, inB);
	// Logic for sum
	// sum = a^b^c = p^c
	xor g1(sum, p, cin);
	
	// Logic for carry-out
	// cout = ab + bc + ca
	wire w1, w2, w3;
	and g2(w1, inA, inB);
	and g3(w2, inB, cin);
	and g4(w3, cin, inA);
	or g5(cout, w1, w2, w3);
	
	// 
	
endmodule
