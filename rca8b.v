`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:20:53 12/03/2016 
// Design Name: 
// Module Name:    rca8b 
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
module rca8b(inA, inB, cin, sum, cout
    );
	
	// Assigning ports as in/out
	input [7:0] inA, inB;
	input cin;
	output [7:0] sum;
	output cout;
	
	// Logic for ripple carry 
	//// Wires for ripple-carrying the carries
	wire c1, c2, c3, c4, c5, c6, c7;
	
	//// The adders
	full_adder fa1(inA[0], inB[0], cin, sum[0], c1);
	full_adder fa2(inA[1], inB[1], c1, sum[1], c2);
	full_adder fa3(inA[2], inB[2], c2, sum[2], c3);
	full_adder fa4(inA[3], inB[3], c3, sum[3], c4);
	full_adder fa5(inA[4], inB[4], c4, sum[4], c5);
	full_adder fa6(inA[5], inB[5], c5, sum[5], c6);
	full_adder fa7(inA[6], inB[6], c6, sum[6], c7);
	full_adder fa8(inA[7], inB[7], c7, sum[7], cout);

endmodule
