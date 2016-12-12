`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////

module sad;

	// Inputs
	reg reset;
	reg [7:0] CPUinput;
	reg clk;
	reg ACCld_str;
	reg ACCinMUXselect;
	reg shiftercontrol;
	reg ALUinMUXselect;
	reg ALUcontrol_in;
	reg DataRAMenable;
	reg DRAMaddrMUXselect;
	reg DataRAMread_en;
	reg IndirectAddrRegld_str;
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

	// Outputs
	wire [7:0] CPUoutput;
	wire [4:0] StageRegInstr_out;
	wire [2:0] StageRegAddrMode_out;
	wire [8:0] StageRegData_out;
	wire [15:0] IRAM_data_out;

	// Instantiate the Unit Under Test (UUT)
	CPU uut (
		.reset(reset), 
		.CPUinput(CPUinput), 
		.CPUoutput(CPUoutput), 
		.clk(clk), 
		.ACCld_str(ACCld_str), 
		.ACCinMUXselect(ACCinMUXselect), 
		.shiftercontrol(shiftercontrol), 
		.ALUinMUXselect(ALUinMUXselect), 
		.ALUcontrol_in(ALUcontrol_in), 
		.DataRAMenable(DataRAMenable), 
		.DRAMaddrMUXselect(DRAMaddrMUXselect), 
		.DataRAMread_en(DataRAMread_en), 
		.IndirectAddrRegld_str(IndirectAddrRegld_str), 
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

	initial begin
		// Initialize Inputs
		reset = 0;
		CPUinput = 0;
		clk = 0;
		ACCld_str = 0;
		ACCinMUXselect = 0;
		shiftercontrol = 0;
		ALUinMUXselect = 0;
		ALUcontrol_in = 0;
		DataRAMenable = 0;
		DRAMaddrMUXselect = 0;
		DataRAMread_en = 0;
		IndirectAddrRegld_str = 0;
		InstrRAMenable = 0;
		InstrRAMread_en = 0;
		PCounterIncb_in = 0;
		PCounterInccontrol_in = 0;
		StageRegld_str = 0;
		InstrRAMclear = 0;
		StageRegclr = 0;
		InstrRAMwrite_en = 0;
		PCounterControl = 0;
		PCounterclr = 0;
		PCounterin = 0;
		addrin = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

