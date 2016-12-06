module sklansky_carry(inG, inP, Carry
	);

	// Assigning ports as in/out
	input [7:0] inG, inP;
	output [7:0] Carry;

	// Logic connections
	wire w1, w2, w3, w4, w5, w6, w7, w8, w9, w10;

	//// Cout0
	assign Carry[0] = inG[0];

	//// Cout1
	grey_box gb1(inG[1], inP[1], inG[0], Carry[1]);

	//// Cout2
	grey_box gb2(inG[2], inP[2], Carry[1], Carry[2]);

	//// Cout 3
	black_box bb1(inG[3], inP[3], inG[2], inP[2], w1, w2);
	grey_box gb3(w1, w2, Carry[1], Carry[3]);

	//// Carry 4
	grey_box gb4(inG[4], inP[4], Carry[3], Carry[4]);

	//// Carry 5
	black_box bb2(inG[5], inP[5], inG[4], inP[4], w3, w4);
	grey_box gb5(w3, w4, Carry[3], Carry[5]);

	//// Carry 6
	black_box bb3(inG[6], inP[6], w3, w4, w5, w6);
	grey_box gb6(w5, w6, Carry[3], Carry[6]);

	//// Carry 7
	black_box bb4(inG[7], inP[7], inG[6], inP[6], w7, w8);
	black_box bb5(w7, w8, w3, w4, w9, w10);
	grey_box gb7(w9, w10, Carry[3], Carry[7]);

endmodule
