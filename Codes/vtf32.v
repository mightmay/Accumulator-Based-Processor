`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
// 
////////////////////////////////////////////////////////////////////////////////

module vtf32;

	// Inputs
	reg clk;
	reg [7:0]addrin;
	reg InstrRAMenable;
	reg InstrRAMclear;
	wire [15:0]IRAM_data_out;
	reg InstrRAMread_en;
	reg InstrRAMwrite_en;
	reg  [7:0]ProCounterin;

	// Instantiate the Unit Under Test (UUT)
	CPU1 uut (
		.clk(clk), 
		.addrin(addrin), 
		.InstrRAMenable(InstrRAMenable), 
		.InstrRAMclear(InstrRAMclear), 
		.IRAM_data_out(IRAM_data_out), 
		.InstrRAMread_en(InstrRAMread_en), 
		.InstrRAMwrite_en(InstrRAMwrite_en),
		.ProCounterin(ProCounterin)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		addrin = 1;
		InstrRAMenable = 1;
		InstrRAMclear = 1;
		InstrRAMread_en = 1;
		InstrRAMwrite_en = 0;
	ProCounterin =0;
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
		
		always begin
		#20 clk =~clk;
		end
		
endmodule

