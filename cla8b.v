`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:18:48 12/05/2016 
// Design Name: 	Carry Look Ahead Adder
// Module Name:    cla8b 
// Project Name: 	cla8b.v
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
module cla8b(inA, inB, cin, sum, cout
    );

	// Assigning ports as in/out
	input [7:0] inA, inB;
	input cin;
	output [7:0] sum;
	output cout;
	
	// Logic

	//// Getting all the generates and propapgates
	wire g0, g1, g2, g3, g4, g5, g6, g7;
	wire p0, p1, p2, p3, p4, p5, p6, p7;
	wire c1, c2, c3, c4, c5, c6, c7;
	full_adder_reduced fa1(inA[0], inB[0], cin, sum[0], p0, g0);
	full_adder_reduced fa2(inA[1], inB[1], c1, sum[1], p1, g1);
	full_adder_reduced fa3(inA[2], inB[2], c2, sum[2], p2, g2);
	full_adder_reduced fa4(inA[3], inB[3], c3, sum[3], p3, g3);
	full_adder_reduced fa5(inA[4], inB[4], c4, sum[4], p4, g4);
	full_adder_reduced fa6(inA[5], inB[5], c5, sum[5], p5, g5);
	full_adder_reduced fa7(inA[6], inB[6], c6, sum[6], p6, g6);
	full_adder_reduced fa8(inA[7], inB[7], c7, sum[7], p7, g7);
	
	//// Carry Generation Logic
	assign c1 	= g0 + (p0*cin);
	assign c2 	= g1 + (p1*g0) + (p1*p0*cin);
	assign c3 	= g2 + (p2*g1) + (p2*p1*g0) + (p2*p1*p0*cin);
	assign c4 	= g3 + (p3*g2) + (p3*p2*g1) + (p3*p2*p1*g0) + (p3*p2*p1*p0*cin);
	assign c5 	= g4 + (p4*g3) + (p4*p3*g2) + (p4*p3*p2*g1) + (p4*p3*p2*p1*g0) + (p4*p3*p2*p1*p0*cin);
	assign c6 	= g5 + (p5*g4) + (p5*p4*g3) + (p5*p4*p3*g2) + (p5*p4*p3*p2*g1) + (p5*p4*p3*p2*p1*g0) + (p5*p4*p3*p2*p1*p0*cin);
	assign c7 	= g6 + (p6*g5) + (p6*p5*g4) + (p6*p5*p4*g3) + (p6*p5*p4*p3*g2) + (p6*p5*p4*p3*p2*g1) + (p6*p5*p4*p3*p2*p1*g0) + (p6*p5*p4*p3*p2*p1*p0*cin);
	assign cout = g7 + (p7*g6) + (p7*p6*g5) + (p7*p6*p5*g4) + (p7*p6*p5*p4*g3) + (p7*p6*p5*p4*p3*g2) + (p7*p6*p5*p4*p3*p2*g1) + (p7*p6*p5*p4*p3*p2*p1*g0) + (p7*p6*p5*p4*p3*p2*p1*p0*cin);

endmodule
