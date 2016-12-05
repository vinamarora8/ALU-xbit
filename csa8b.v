module csa8b(inA, inB, cin, sum, cout
	);

	// Assigning ports as in/out
	input [7:0] inA, inB;
	input cin;
	output [7:0] sum;
	output cout;

	// Logic connections
	wire c2, c4, c6;
	
	rca2b a1(inA[1:0], inB[1:0], cin, sum[1:0], c2);
	rca2b_wsel a2(inA[3:2], inB[3:2], c2, sum[3:2], c4);
	rca2b_wsel a3(inA[5:4], inB[5:4], c4, sum[5:4], c6);
	rca2b_wsel a4(inA[7:6], inB[7:6], c6, sum[7:6], cout);

endmodule
