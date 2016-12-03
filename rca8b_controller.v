`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: IIT-Roorkee	
// Engineer: Vinam Arora
// 
// Create Date:    16:12:56 12/03/2016 
// Design Name: 	Carry Ripple Adder 8 bit - Controller
// Module Name:    rca8b_controller 
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
module rca8b_controller(in, cin, store_A, out, cout
    );
	
	// Assigning pins as in/out
	input [7:0] in;
	input store_A, cin;
	output [7:0] out;
	output cout;
	
	// Registers needed to store A
	reg [7:0] numA;
	initial numA = 8'b00000000;
	
	// Logic connections
	// RCA adds the register and the RT input
	rca8b rca1(numA, in, cin, out, cout);
	
	// Update register when button is pressed
	always @(store_A)
		numA <= in;

endmodule
