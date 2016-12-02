`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:32:52 12/02/2016 
// Design Name: 
// Module Name:    incrementer5b 
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
module incrementer5b(in, enable, out);
	 
	 // Assigning ports as in/out
	 // If enable is set to 1, then out = in + 1, otherwise out = in
	 input [4:0] in;
	 input enable;
	 output [4:0] out;
	 
	 // Logic for out_ifen
	 // Wire which gives the output for the case of enable = 1
	 wire [4:0] out_ifen;
	 
	 //// out_ifen[0] = ~in[0]
	 not g1(out_ifen[0], in[0]);
	 
	 //// out_ifen[1] = in[0]^in[1]
	 xor g2(out_ifen[1], in[0], in[1]);
	 
	 //// out_ifen[2] = (in[0]*in[1])^in[2]
	 wire w1;
	 and g3(w1, in[0], in[1]);
	 xor g4(out_ifen[2], w1, in[2]);
	 
	 //// out_ifen[3] = (in[0]*in[1]*in[2])^in[3]
	 wire w2;
	 and g5(w2, w1, in[2]);
	 xor g6(out_ifen[3], w2, in[3]);
	 
	 //// out_ifen[4] = (in[0]*in[1]*in[2]*in[3])^in[4]
	 wire w3;
	 and g7(w3, w2, in[3]);
	 xor g8(out_ifen[4], w3, in[4]);
	 //
	 
	 // Logic for selecting the output
	 assign out = (enable) ? out_ifen : in;

endmodule
