`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////:
// 
////////////////////////////////////////////////////////////////////////////////

module contvtf;

	// Inputs
	reg clk;
	reg reset;

	// Outputs
	wire InstrRAMenable;
	wire InstrRAMread_en;
	wire PCounterIncb_in;
	wire PCounterInccontrol_in;
	wire StageRegld_str;

	// Instantiate the Unit Under Test (UUT)
	cont uut (
		.clk(clk), 
		.reset(reset), 
		.InstrRAMenable(InstrRAMenable), 
		.InstrRAMread_en(InstrRAMread_en), 
		.PCounterIncb_in(PCounterIncb_in), 
		.PCounterInccontrol_in(PCounterInccontrol_in), 
		.StageRegld_str(StageRegld_str)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
		#100; 
		reset=1;
		#40;
		reset=0;
        
		// Add stimulus here

	end
	
	always begin
	#20 clk =~clk;
	end
      
endmodule

