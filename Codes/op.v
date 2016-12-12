`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// 
////////////////////////////////////////////////////////////////////////////////

module op;

	// Inputs
	reg clock;
	reg [7:0] d;
	reg set;
	reg reset;
	reg ld_str;

	// Outputs
	wire [7:0] q;

	// Instantiate the Unit Under Test (UUT)
	n_bit_load_store_register uut (
		.clock(clock), 
		.d(d), 
		.set(set), 
		.reset(reset), 
		.ld_str(ld_str), 
		.q(q)
	);

	initial begin
		// Initialize Inputs
		clock = 0;
		d = 3;
		set = 1;
		reset = 1;
		ld_str = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	
	always
	begin
	#20 clock = ~clock;
	end
      
endmodule

