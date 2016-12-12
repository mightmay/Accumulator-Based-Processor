`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company:
////////////////////////////////////////////////////////////////////////////////

module cpu2vtf;

	// Inputs
	reg [4:0] StageRegInstr_out;
	reg [2:0] StageRegAddrMode_out;
	reg [7:0] StageRegData_out;
reg [7:0]StageRegPCtr_out;
	reg clk;
	reg reset;
wire coutRegout,zeroRegout,overflowRegout;
	// Outputs
	wire [7:0] ACCout;

wire [7:0]NextPctr;	
wire StageComplete;
reg [7:0]InteruptAdrReg;

	// Instantiate the Unit Under Test (UUT)
	CPU2 uut (
		.StageRegInstr_out(StageRegInstr_out), 
		.StageRegAddrMode_out(StageRegAddrMode_out), 
		.StageRegData_out(StageRegData_out), .StageRegPCtr_out(StageRegPCtr_out),
		.clk(clk), 
		.reset(reset), 
		.ACCout(ACCout),
		.coutRegout(coutRegout),.zeroRegout(zeroRegout),.overflowRegout(overflowRegout),
		.NextPctr(NextPctr),
		.StageComplete(StageComplete),.InteruptAdrReg(InteruptAdrReg)
   
	);

	initial begin
		// Initialize Inputs
		StageRegInstr_out = 01000;
		StageRegAddrMode_out = 0;
		StageRegData_out = 20;
		clk = 0;
		reset = 0;
		StageRegPCtr_out=8'b00000001;
		InteruptAdrReg=8'b11000001;

		// Wait 100 ns for global reset to finish
		#100;
		reset =1;
      #50;
      reset =0;		
		// Add stimulus here
		

	end
	
	always begin
	#20 clk =~clk;
	end
	
initial  begin
	#380;
	reset =1;

		StageRegInstr_out = 5'b11010;
		StageRegAddrMode_out = 0;
		StageRegData_out = 4;
		
			#50 reset =0;
   end
		


initial  begin
	#1400;
	reset =1;

		StageRegInstr_out = 5'b11100;
		StageRegAddrMode_out = 0;
		StageRegData_out = 43;
		
			#50 reset =0;
   end


initial  begin
	#2000;
	reset =1;

		StageRegInstr_out = 5'b01000;
		StageRegAddrMode_out = 0;
		StageRegData_out = 8;
		
		#50 reset =0;
   end
	
initial  begin
	#2400;
	reset =1;

		StageRegInstr_out = 5'b11101;
		StageRegAddrMode_out = 1;
		StageRegData_out = 39;
		#50 reset =0;
   end	
	
initial  begin
	#3000;
	reset =1;

		StageRegInstr_out = 5'b11110;
		StageRegAddrMode_out = 2;
		StageRegData_out = 38;
		
		#50 reset =0;
   end
	
initial  begin
	#3300;
	reset =1;

		StageRegInstr_out = 5'b11101;
		StageRegAddrMode_out = 0;
		StageRegData_out = 8;
		
		#50 reset =0;
   end	
	
endmodule

