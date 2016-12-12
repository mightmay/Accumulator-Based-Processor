`timescale 1ns / 1ps

// 
////////////////////////////////////////////////////////////////////////////////

module VTFlatest;

	// Inputs
	reg clk;
	reg StartEverything;
	reg interrupt;

	// Outputs
	wire [7:0] ACCout;
	wire coutRegout;
	wire zeroRegout;
	wire overflowRegout;
	wire StageComplete;
	wire [7:0] BusData;

	// Instantiate the Unit Under Test (UUT)
	topMod uut (
		.clk(clk), 
		.ACCout(ACCout), 
		.coutRegout(coutRegout), 
		.zeroRegout(zeroRegout), 
		.overflowRegout(overflowRegout), 
		.StageComplete(StageComplete), 
		.StartEverything(StartEverything), 
		.interrupt(interrupt), 
		.BusData(BusData)
	);

		initial begin
		// Initialize Inputs
		clk = 0;
		StartEverything = 0;
		interrupt = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		StartEverything = 1;
		#30;
		StartEverything = 0;
		#200;
		
	end
      
		always begin
		#10 clk =~clk;
		end
		
endmodule

