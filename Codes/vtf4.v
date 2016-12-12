`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:56:44 05/02/2014
// Design Name:   topMod
// Module Name:   C:/Users/Computer/Desktop/verlilog/5-2/controller-final/vtf4.v
// Project Name:  controller-final
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: topMod
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module vtf4;

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

	// Instantiate the Unit Under Test (UUT)
	topMod uut (
		.clk(clk), 
		.ACCout(ACCout), 
		.coutRegout(coutRegout), 
		.zeroRegout(zeroRegout), 
		.overflowRegout(overflowRegout), 
		.StageComplete(StageComplete), 
		.StartEverything(StartEverything), 
		.interrupt(interrupt)
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
		#1960;
		interrupt =1;
		#30;
		interrupt =0;
		
	end
      
		always begin
		#10 clk =~clk;
		end
		
endmodule

