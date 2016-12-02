`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:15:31 12/02/2016 
// Design Name: 
// Module Name:    rca4b 
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
module rca4b(inA, inB, cin, sum
    );

	// Assigning ports as in/out
	input [3:0] inA, inB;
	input cin;
	output [4:0] sum;
	
	// Logic for ripple carry 
	//// Wires for ripple-carrying the carries
	wire c1, c2, c3;
	
	//// The adders
	full_adder fa1(inA[0], inB[0], cin, sum[0], c1);
	full_adder fa2(inA[1], inB[1], c1, sum[1], c2);
	full_adder fa3(inA[2], inB[2], c2, sum[2], c3);
	full_adder fa4(inA[3], inB[3], c3, sum[3], sum[4]);

endmodule
