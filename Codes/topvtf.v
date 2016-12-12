`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////

module topvtf;

	// Inputs
	reg StartEverything;
	reg clk;
	reg interrupt;

	// Outputs
	wire [7:0] ACCout;
	wire coutRegout;
	wire zeroRegout;
	wire overflowRegout;
	reg secondstagereset;

	// Instantiate the Unit Under Test (UUT)
	TOP uut (
		.StartEverything(StartEverything), 
		.clk(clk), 
		.interrupt(interrupt), 
		.ACCout(ACCout), 
		.coutRegout(coutRegout), 
		.zeroRegout(zeroRegout), 
		.overflowRegout(overflowRegout),.secondstagereset(secondstagereset)
	);

	initial begin
		// Initialize Inputs
		StartEverything = 0;
		clk = 0;
		interrupt = 0;

		// Wait 100 ns for global reset to finish
		#100;
		StartEverything = 1;
		#30;
		StartEverything = 0;
		#100;
		secondstagereset=1;
		#40;
		secondstagereset=0;
        
		// Add stimulus here

	end
      
	always begin
		#20 clk=~clk;
		end
		
endmodule

