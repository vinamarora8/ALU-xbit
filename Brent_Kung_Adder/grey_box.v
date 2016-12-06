module grey_box(Gik, Pik, Gk1j, Gij
	);

	// Assigning ports as in/out
	input Gik, Pik, Gk1j;
	output Gij;

	// Logic
	// Gij = Gik + (Pik*Gk1j)
	wire w1;
	and g1(w1, Pik, Gk1j);
	or g2(Gij, Gik, w1);

endmodule
