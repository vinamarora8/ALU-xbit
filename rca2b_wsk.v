`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: IIT-Guwahati
// Engineer: Vinam Arora
// 
// Create Date:    19:19:39 12/04/2016 
// Design Name: 	2-bit Ripple Carry Adder with Skip mechanism
// Module Name:    rca2b_wsk 
// Project Name: 	2-bit Ripple Carry Adder with Skip mechanism
// Target Devices: an ALU
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 1.0
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module rca2b_wsk(inA, inB, cin, sum, cout
    );
	
	// Assigning ports as in/out
	input [1:0] inA, inB;
	input cin;
	output [1:0] sum;
	output cout;
	
	// Logic
	//// Making necessary wires
	wire c1, c2, p0, p1, w1;
	//
	//// Connection of FA stages
	full_adder fa1(inA[0], inB[0], cin, sum[0], c1, p0);
	full_adder fa2(inA[1], inB[1], c1, sum[1], c2, p1);
	//
	//// Skip mechanism
	////// w1 = p0*p1
	and g1(w1, p0, p1);
	////
	////// cout = cin 	if w1 = 1
	//////		= c2 		if w1 = 0
	assign cout = (w1) ? cin : c2;
	
endmodule
