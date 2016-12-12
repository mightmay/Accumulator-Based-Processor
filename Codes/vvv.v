`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module vvv;

	// Inputs
	reg clk;
	reg [7:0] addrin;
	reg InstrRAMenable;
	reg InstrRAMclear;
	reg InstrRAMread_en;
	reg InstrRAMwrite_en;
	reg [7:0] ProCounterin;
	reg StageRegld_str;

	// Outputs
	wire [4:0] StageRegInstr_out;
	wire [2:0] StageRegAddrMode_out;
	wire [7:0] StageRegData_out;

	// Instantiate the Unit Under Test (UUT)
	CPU1 uut (
		.clk(clk), 
		.addrin(addrin), 
		.InstrRAMenable(InstrRAMenable), 
		.InstrRAMclear(InstrRAMclear), 
		.InstrRAMread_en(InstrRAMread_en), 
		.InstrRAMwrite_en(InstrRAMwrite_en), 
		.ProCounterin(ProCounterin), 
		.StageRegld_str(StageRegld_str), 
		.StageRegInstr_out(StageRegInstr_out), 
		.StageRegAddrMode_out(StageRegAddrMode_out), 
		.StageRegData_out(StageRegData_out)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		addrin = 0;
		InstrRAMenable = 1;
		InstrRAMclear = 1;
		InstrRAMread_en = 1;
		InstrRAMwrite_en = 0;
		ProCounterin =0;
		StageRegld_str = 0;

		// Wait 100 ns for global reset to finish
		#120;
		ProCounterin =1;
	end
      
		always begin
		#20 clk =~clk;
		end
		
		
endmodule

