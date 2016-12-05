module rca2b_wsel(inA, inB, cin, sum, cout
	);

	// Assigning ports as in/out
	input [1:0] inA, inB;
	input cin;
	output [1:0] sum;
	output cout;

	// Logic connections

	// The RCA2bs
	wire [2:0] w1, w2;
	rca2b rca1(inA, inB, 1'b0, w1[1:0], w1[2]);
	rca2b rca2(inA, inB, 1'b1, w2[1:0], w2[2]);

	// MUX (Selector)
	assign sum = (cin) ? w2[1:0] : w1[1:0];
	assign cout = (cin) ? w2[2] : w1[2];

endmodule
