`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:42:51 12/05/2016 
// Design Name:  CLA-8bit-Controller
// Module Name:    cla8b_controller 
// Project Name:  cla8b_controller.v
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
module sklansky_adder_controller(in, store_A, cin, out, cout
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
	sklansky_adder a1(numA, in, cin, out, cout);
	
	// Update register when button is pressed
	always @(*)
	begin
		if (store_A == 1) numA = in;
	end
	
endmodule
