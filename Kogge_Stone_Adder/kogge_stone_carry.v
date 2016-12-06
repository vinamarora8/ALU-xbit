module kogge_stone_carry(inG, inP, Carry
	);

	//Assiging ports as in/out
	input [7:0] inG, inP;
	output [7:0] Carry;

	// Logic Connections
	wire w1, w2, w3, w4, w5, w6, w7, w8, w9, w10;
	wire e1, e2, e3, e4, e5, e6, e7, e8, e9, e10;

	//// Carry0
	assign Carry[0] = inG[0];

	//// Carry1
	grey_box 	gb1(inG[1], inP[1], inG[0], Carry[1]);

	//// Carry2
	black_box 	bb1(inG[2], inP[2], inG[1], inP[1], w1, w2);
	grey_box 	gb2(w1, w2, inG[0], Carry[2]);

	//// Carry 3	
	black_box	bb2(inG[3], inP[3], inG[2], inP[2], w3, w4);
	grey_box	gb3(w3, w4, Carry[1], Carry[3]);

	//// Carry 4
	black_box	bb3(inG[4], inP[4], inG[3], inP[3], w5, w6);
	black_box	bb4(w5, w6, w1, w2, w7, w8);
	grey_box	gb4(w7, w8, Carry[0], Carry[4]);

	///// Carry 5
	black_box	bb5(inG[5], inP[5], inG[4], inP[4], w9, w10);
	black_box	bb6(w9, w10, w3, w4, e1, e2);
	grey_box	gb5(e1, e2, Carry[1], Carry[5]);

	//// Carry 6
	black_box	bb7(inG[6], inP[6], inG[5], inP[5], e3, e4);
	black_box	bb8(e3, e4, w5, w6, e5, e6);
	grey_box	gb6(e5, e6, Carry[2], Carry[6]);

	//// Carry 7
	black_box	bb9(inG[7], inP[7], inG[6], inP[6], e7, e8);
	black_box	bb10(e7, e8, w9, w10, e9, e10);
	grey_box	gb7(e9, e10, Carry[3], Carry[7]);

endmodule
