`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////

module cpuvtf;

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
	reg StageRegclr;

reg [7:0]addrin;
	wire InstrRAMenable;
	wire InstrRAMread_en;
	wire InstrRAMwrite_en;
	wire PCounterIncb_in;
	wire PCounterInccontrol_in;
	wire StageRegld_str;
	reg InstrRAMclear;

wire PCounterControl,PCounterclr,PCounterin;
	// Outputs
	wire [7:0] CPUoutput;
	wire [4:0] StageRegInstr_out;
	wire [2:0] StageRegAddrMode_out;
	wire [7:0] StageRegData_out;
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


	cont uut2 (
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
		InstrRAMclear=1;
		StageRegclr=1;
		addrin=1;

		// Wait 100 ns for global reset to finish
		#100;
		reset =1;
		#60;
		reset =0;
        
		// Add stimulus here

	end
	
	always
	begin
	#40 clk =~clk;
	end
      
endmodule

