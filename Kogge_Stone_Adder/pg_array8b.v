module pg_array8b(inA, inB, P, G
	);

	// Assign ports as in/out
	input [7:0] inA, inB;
	output [7:0] G, P;

	// Logic
	half_adder ha1(inA[0], inB[0], P[0], G[0]);
	half_adder ha2(inA[1], inB[1], P[1], G[1]);
	half_adder ha3(inA[2], inB[2], P[2], G[2]);
	half_adder ha4(inA[3], inB[3], P[3], G[3]);
	half_adder ha5(inA[4], inB[4], P[4], G[4]);
	half_adder ha6(inA[5], inB[5], P[5], G[5]);
	half_adder ha7(inA[6], inB[6], P[6], G[6]);
	half_adder ha8(inA[7], inB[7], P[7], G[7]);

endmodule
