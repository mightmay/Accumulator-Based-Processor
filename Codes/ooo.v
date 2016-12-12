`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////

module ooo;

	// Inputs
	reg reset;
	reg [7:0] CPUinput;
	reg clk;
	reg InstrRAMenable;
	reg InstrRAMread_en;
	reg PCounterIncb_in;
	reg PCounterInccontrol_in;
	reg StageRegld_str;
	reg InstrRAMclear;
	reg StageRegclr;
	reg InstrRAMwrite_en;
	reg PCounterControl;
	reg PCounterclr;
	reg PCounterin;
	reg [7:0] addrin;
reg datain;
	// Outputs
	wire [7:0] CPUoutput;
	wire [4:0] StageRegInstr_out;
	wire [2:0] StageRegAddrMode_out;
	wire [8:0] StageRegData_out;
	wire [15:0] IRAM_data_out;
	wire [15:0] IRAM_data_out2;
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


	RAM uutram (
		.clk(clk), 
		.addr(addrin), 
		.enable(InstrRAMenable), 
		.clear(InstrRAMclear), 
		.datain(datain), 
		.dataout(IRAM_data_out2), 
		.read_en(InstrRAMread_en), 
		.write_en(InstrRAMwrite_en)
	);

	initial begin
		// Initialize Inputs
		reset = 0;
		CPUinput = 0;
		clk = 0;
		InstrRAMenable = 1;
		InstrRAMread_en = 1;
		PCounterIncb_in = 0;
		PCounterInccontrol_in = 0;
		StageRegld_str = 0;
		InstrRAMclear = 1;
		StageRegclr = 1;
		InstrRAMwrite_en = 0;
		PCounterControl = 0;
		PCounterclr = 0;
		PCounterin = 0;
		addrin = 1;
		// Wait 100 ns for global reset to finish
		#100;
		reset =1;
		#20;
		reset=0;
        
		// Add stimulus here

	end
	
	always begin
	#20 clk =~clk;
	end
	
      
endmodule

