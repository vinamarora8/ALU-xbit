`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:42:51 12/04/2016 
// Design Name: 	8-bit Carry Skip Adder
// Module Name:    cska8b 
// Project Name: 	cska8b.v
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
module cska8b(inA, inB, cin, sum, cout
    );

	// Assigning ports as in/out
	input [7:0] inA, inB;
	input cin;
	output [7:0] sum;
	output cout;
	
	// Logic
	
	// Connecting all the 2-bit RCAs (with Skip)
	wire c2, c4, c6;
	rca2b_wsk a1(inA[1:0], inB[1:0], cin, sum[1:0], c2);
	rca2b_wsk a2(inA[3:2], inB[3:2], c2, sum[3:2], c4);
	rca2b_wsk a3(inA[5:4], inB[5:4], c4, sum[5:4], c6);
	rca2b_wsk a4(inA[7:6], inB[7:6], c6, sum[7:6], cout);

endmodule
