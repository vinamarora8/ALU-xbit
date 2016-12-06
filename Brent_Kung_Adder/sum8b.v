module sum8b(inP, inG, inC, Sum, Cout
	);

	// Assign ports as in/out
	input [7:0] inP, inG, inC;
	output [7:0] Sum;
	output Cout;

	// Logic
	xor(Sum[0], inP[0], inC[0]);
	xor(Sum[1], inP[1], inC[1]);
	xor(Sum[2], inP[2], inC[2]);
	xor(Sum[3], inP[3], inC[3]);
	xor(Sum[4], inP[4], inC[4]);
	xor(Sum[5], inP[5], inC[5]);
	xor(Sum[6], inP[6], inC[6]);
	xor(Sum[7], inP[7], inC[7]);

	// Carry out logic
	// Cout = G[7] | (P[7]*inC[7]);
	assign Cout = inG[7] | (inP[7]*inC[7]);

endmodule
	
