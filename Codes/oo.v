`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////

module oo;

	// Inputs
	reg reset;
	reg [7:0] CPUinput;
	reg clk;
	reg InstrRAMclear;
	reg StageRegclr;
	reg [7:0] addrin;

	// Outputs
	wire [7:0] CPUoutput;
	wire [4:0] StageRegInstr_out;
	wire [2:0] StageRegAddrMode_out;
	wire [8:0] StageRegData_out;
	wire [15:0] IRAM_data_out;
	
	
	wire InstrRAMenable,InstrRAMread_en,InstrRAMwrite_en,PCounterIncb_in,PCounterInccontrol_in,StageRegld_str ;
	wire PCounterControl,PCounterclr,PCounterin;

	// Instantiate the Unit Under Test (UUT)
	CPU uut (
		.reset(reset), 
		.CPUinput(CPUinput), 
		.CPUoutput(CPUoutput), 
		.clk(clk), 
		.InstrRAMenable(InstrRAMenable), 
		.InstrRAMread_en(InstrRAMread_en), 
		.PCounterIncb_in(PCounterIncb_in), 
		.PCounterInccontrol_in(PCounterInccontrol_in), 
		.StageRegld_str(StageRegld_str), 
		.StageRegInstr_out(StageRegInstr_out), 
		.StageRegAddrMode_out(StageRegAddrMode_out), 
		.InstrRAMclear(InstrRAMclear), 
		.StageRegclr(StageRegclr), 
		.StageRegData_out(StageRegData_out), 
		.IRAM_data_out(IRAM_data_out), 
		.InstrRAMwrite_en(InstrRAMwrite_en), 
		.PCounterControl(PCounterControl), 
		.PCounterclr(PCounterclr), 
		.PCounterin(PCounterin), 
		.addrin(addrin)
	);
	
	
	cont uutt (
		.clk(clk), 
		.reset(reset), 
		.InstrRAMenable(InstrRAMenable), 
		.InstrRAMread_en(InstrRAMread_en), 
		.PCounterIncb_in(PCounterIncb_in), 
		.PCounterInccontrol_in(PCounterInccontrol_in), 
		.StageRegld_str(StageRegld_str),
		.InstrRAMwrite_en(InstrRAMwrite_en),
			.PCounterControl(PCounterControl),.PCounterclr(PCounterclr),.PCounterin(PCounterin)
	);


	initial begin
		// Initialize Inputs
		reset = 1;
		CPUinput = 0;
		clk = 0;
		InstrRAMclear = 1;
		StageRegclr = 1;
		addrin = 1;

		// Wait 100 ns for global reset to finish
		#100;
		reset =0;
		// Add stimulus here

	end
      
		
		always
		begin
		#20 clk =~clk;
		end
		
endmodule

