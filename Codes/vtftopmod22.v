`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Enginee
// 
////////////////////////////////////////////////////////////////////////////////

module vtftopmod22;

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

		// Wait 100 ns for global reset to fin
		#100;
		reset=1;
		      StageRegInstr_out=5'b01000;
		StageRegAddrMode_out=3'b000;
		StageRegData_out=4;
		StageRegPCtr_out=6;
		InteruptAdrReg=9;  
		  
		#30;
		reset=0;
		  
		  
		// Add stimulus here
		
		

	end
      
		
		always begin
		#20 clk=~clk;
		end
		
endmodule

