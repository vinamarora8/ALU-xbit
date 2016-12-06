module black_box(Gik, Pik, Gk1j, Pk1j, Gij, Pij
	);

	// Assigning ports as in/out
	input Gik, Pik, Gk1j, Pk1j;
	output Gij, Pij;

	// Logic
	grey_box gb1(Gik, Pik, Gk1j, Gij);
	and g1(Pij, Pik, Pk1j);

endmodule
