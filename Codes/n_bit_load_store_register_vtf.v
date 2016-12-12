`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:18:10 02/14/2013
// Design Name:   load_store_register_bitslice
// Module Name:   C:/Users/bhfr222/Downloads/480/Xilinx/Project_1/n_bit_load_store_register_vtf.v
// Project Name:  Project_1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: load_store_register_bitslice
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module n_bit_load_store_register_vtf;

	parameter n = 8;
	// Inputs
	reg clock;
	reg set;
	reg reset;
	reg do_nothing;
	reg [n-1:0] d;

	reg [n-1+1+1+1+1:0] counter;
	reg error;
	reg [n-1:0] q_correct;
	
	integer i;

	// Outputs
	wire [n-1:0] q;

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
		counter = 0;
		error = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	
	always
	begin
		#20;
		counter = counter + 1;
		
		clock = counter[0];
		set = counter[1];
		reset = counter[2];
		do_nothing = counter[3];
	
		for (i = 4; i < n+1+1+1+1+1; i = i + 1)
			d[i-4] = counter[i];
	end
	
	always@(posedge(clock))
	begin
		#1;
		if (reset == 0)
			for (i = 0; i < n; i = i + 1)
				q_correct[i] = 0;
		else if (set == 0)
			for (i = 0; i < n; i = i + 1)
				q_correct[i] = 1;
		else
			for (i = 0; i < n; i = i + 1)
				if (do_nothing == 0)
					q_correct[i] = d[i];
		#1;
		error = 0;
		for (i = 0; i < n; i = i + 1)
			if (q_correct[i] != q[i])
				error = 1;
	end
      
endmodule

