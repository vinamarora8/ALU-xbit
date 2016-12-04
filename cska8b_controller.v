`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:50:10 12/04/2016 
// Design Name: 
// Module Name:    cska8b_controller 
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
module cska8b_controller(in, cin, store_A, out, cout
    );

	// Assigning ports as in/out
	input [7:0] in;
	input cin, store_A;
	output [7:0] out;
	output cout;
	
	// Create a register vector to store input
	reg [7:0] num;
	initial num = 8'b00000000;
	
	// put in inside num @ posedge of store_A
	always @(*)
	begin
		if (store_A == 1)
			num = in;
	end

	// Make connections
	cska8b a1(in, num, cin, out, cout);
	
endmodule
