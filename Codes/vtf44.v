`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: ts:
// 
////////////////////////////////////////////////////////////////////////////////

module vtf44;

	// Inputs
	reg clk;
	reg StartEverything;

	// Outputs
	wire [7:0] ACCout;
	wire coutRegout;
	wire zeroRegout;
	wire overflowRegout;
	wire StageComplete;
	reg interrupt;

	// Instantiate the Unit Under Test (UUT)
	topMod uut (
		.clk(clk), 
		.ACCout(ACCout), 
		.coutRegout(coutRegout), 
		.zeroRegout(zeroRegout), 
		.overflowRegout(overflowRegout),  
		.StageComplete(StageComplete), 
		.StartEverything(StartEverything),.interrupt(interrupt)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		StartEverything = 0;

		// Wait 100 ns for global reset to finish
		#100;
		StartEverything = 1;
		#30;
		StartEverything = 0;
		#200;
		#1960;
		interrupt =1;
		#30;
		interrupt =0;
		
	end
      
		always begin
		#10 clk =~clk;
		end
		
endmodule

