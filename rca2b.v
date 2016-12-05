module rca2b(inA, inB, cin, sum, cout
	);

	// Assigning ports to in/out
	input [1:0] inA, inB;
	input cin;
	output [1:0] sum;
	output cout;

	// Logic
	wire c1;
	full_adder fa1(inA[0], inB[0], cin, sum[0], c1);
	full_adder fa2(inA[1], inB[1], c1, sum[1], cout);

endmodule
