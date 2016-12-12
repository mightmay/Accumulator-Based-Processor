`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:49:07 05/01/2014
// Design Name:   topMod
// Module Name:   C:/Users/Computer/Desktop/verlilog/controller-final/top2vtf.v
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

module top2vtf;

	// Inputs
	reg [4:0] StageRegInstr_out;
	reg [2:0] StageRegAddrMode_out;
	reg [7:0] StageRegData_out;
	reg [7:0] StageRegPCtr_out;
	reg clk;
	reg reset;
	reg [7:0] InteruptAdrReg;

	// Outputs
	wire [7:0] ACCout;
	wire coutRegout;
	wire zeroRegout;
	wire overflowRegout;
	wire [7:0] NextPctr;
	wire StageComplete;

	// Instantiate the Unit Under Test (UUT)
	topMod uut (
		.StageRegInstr_out(StageRegInstr_out), 
		.StageRegAddrMode_out(StageRegAddrMode_out), 
		.StageRegData_out(StageRegData_out), 
		.StageRegPCtr_out(StageRegPCtr_out), 
		.clk(clk), 
		.reset(reset), 
		.ACCout(ACCout), 
		.coutRegout(coutRegout), 
		.zeroRegout(zeroRegout), 
		.overflowRegout(overflowRegout), 
		.NextPctr(NextPctr), 
		.StageComplete(StageComplete), 
		.InteruptAdrReg(InteruptAdrReg)
	);

	initial begin
		// Initialize Inputs
		StageRegInstr_out = 0;
		StageRegAddrMode_out = 0;
		StageRegData_out = 0;
		StageRegPCtr_out = 0;
		clk = 0;
		reset = 0;
		InteruptAdrReg = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

