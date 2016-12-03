`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:52:37 12/02/2016 
// Design Name: 
// Module Name:    half_adder 
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
module half_adder(
	inA, inB, sum, cout
    );
	 
	 // Assigning ports as in/out
	 input inA, intB;
	 output sum, cout;
	 
	// Logic
	and g1(cout, a, b);
	xor g2(sum, a, b);

endmodule
