module csa8b_controller(in, store_A, cin, out, cout
    );
	
	// Assigning pins as in/out
	input [7:0] in;
	input store_A, cin;
	output [7:0] out;
	output cout;
	
	// Registers needed to store A
	reg [7:0] numA;
	initial numA = 8'b00000000;
	
	// Logic connections
	// RCA adds the register and the RT input
	csa8b cla1(numA, in, cin, out, cout);
	
	// Update register when button is pressed
	always @(*)
	begin
		if (store_A == 1) numA = in;
	end
	
endmodule
