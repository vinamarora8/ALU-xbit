module brent_kung_adder(inA, inB, Cin, Sum, Cout
	);

	// Assign ports as in/out
	input [7:0] inA, inB;
	input Cin;
	output [7:0] Sum;
	output Cout;

	// Logic Connections
	wire [7:0] P, G, C;

	pg_array8b a1(inA, inB, P, G);
	brent_kung_carry a2({G[6:0], Cin}, {P[6:0], 1'b1}, C);

	sum8b a3(P, G, C, Sum, Cout);

endmodule
