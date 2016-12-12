`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Compa
////////////////////////////////////////////////////////////////////////////////

module nbldstr;

	// Inputs
	reg clock;
	reg [7:0] d;
	reg set;
	reg reset;
	reg do_nothing;

	// Outputs
	wire [7:0] q;

	// Instantiate the Unit Under Test (UUT)
	n_bit_load_store_register uut (
		.clock(clock), 
		.d(d), 
		.set(set), 
		.reset(reset), 
		.do_nothing(do_nothing), 
		.q(q)
	);

	initial begin
		// Initialize Inputs
		clock = 0;
		d = 0;
		set = 0;
		reset = 0;
		do_nothing = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

