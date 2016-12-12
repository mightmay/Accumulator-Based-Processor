`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module regi;

	// Inputs
	reg ld_str;
	reg [7:0] in;
	reg clk;
	reg set;
	reg clr;

	// Outputs
	wire [7:0] out;

	// Instantiate the Unit Under Test (UUT)
	nBit_ld_st_reg_gen uut (
		.ld_str(ld_str), 
		.in(in), 
		.out(out), 
		.clk(clk), 
		.set(set), 
		.clr(clr)
	);

	initial begin
		// Initialize Inputs
		ld_str = 0;
		in = 2;
		clk = 0;
		set = 1;
		clr = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	
	always
	begin
	#20 clk = ~clk;
end	
	
	
	
      
endmodule

