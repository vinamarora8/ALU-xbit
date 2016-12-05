`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:37:09 12/05/2016 
// Design Name: 	Reduced full adder (without cout functionality)
// Module Name:    full_adder_reduced 
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
module full_adder_reduced(inA, inB, cin, sum, p, g
    );
	
	// Initialize ports as in/out
	input inA, inB, cin;
	output sum, p, g;
	
	// Logic for g
	// g = ab
	and generator(g, inA, inB);
	
	// Logic for p
	// p = a^b
	xor propagator(p, inA, inB);
	
	// Logic for sum
	// sum = a^b^c = p^c
	xor g0(sum, p, cin);
	
endmodule
