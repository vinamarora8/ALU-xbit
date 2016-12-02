`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:55:25 12/02/2016 
// Design Name: 
// Module Name:    cia8b 
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
module cia8b(inA, inB, cin, sum, cout
    );

	// Assigning ports as in/out
	input [7:0] inA, inB;
	input cin;
	output [8:0] sum;
	output cout;
	
	// Logic
	//// A wire which is containing the carry of first 4 bits
	wire carry4;
	
	//// sum[3:0] is just inA[3:0] and inB[3:0] passed through the RCA4b
	rca4b rca1(inA[3:0], inB[3:0], cin, {carry4, sum[3:0]});
	
	//// sum[8:4]  is inA[4:7] and inB[4:7] passed through RCA4b passed through
	//// an incrementer controlled by carry4
	wire [4:0] w1;
	rca4b rca2(inA[7:4], inB[7:4], 0, w1);
	incrementer5b inc1(w1, carry4, sum[8:4]);
	
endmodule
