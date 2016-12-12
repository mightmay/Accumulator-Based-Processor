`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
// 
////////////////////////////////////////////////////////////////////////////////

module vtf6;

	// Inputs
	reg clk;
	reg [7:0] ProCounterin;

	// Outputs
	wire [4:0] StageRegInstr_out;
	wire [2:0] StageRegAddrMode_out;
	wire [7:0] StageRegData_out;
	reg reset;
reg interrupt;
wire FirstStageComplete;
reg StartEverything;
	// Instantiate the Unit Under Test (UUT)
	CPU1 uut (
		.clk(clk), 
		.ProCounterin(ProCounterin), 
		.StageRegInstr_out(StageRegInstr_out), 
		.StageRegAddrMode_out(StageRegAddrMode_out), 
		.StageRegData_out(StageRegData_out),
		.interrupt(interrupt),
		.FirstStageComplete(FirstStageComplete),.reset(reset),.StartEverything(StartEverything)
	);

	initial begin
		// Initialize Inputs
		StartEverything=0;
		clk = 0;
		interrupt =1;
		ProCounterin=2;

reset=0;
		// Wait 100 ns for global reset to finish
		#100;
		StartEverything=1;
		#30;
		StartEverything=0;
		// Add stimulus here
		
		#300;
		reset=1;
		#33
		reset=0;
	end
      
		always 
		begin
		#20 clk =~clk;
		end
		
endmodule

