`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////

module iramvtf;

	// Inputs
	reg clk;
	reg [7:0] addr;
	reg enable;
	reg clear;
	reg [15:0] datain;
	reg read_en;
	reg write_en;

	// Outputs
	wire [15:0] dataout;

	// Instantiate the Unit Under Test (UUT)
	RAM uut (
		.clk(clk), 
		.addr(addr), 
		.enable(enable), 
		.clear(clear), 
		.datain(datain), 
		.dataout(dataout), 
		.read_en(read_en), 
		.write_en(write_en)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		addr = 0;
		enable = 0;
		clear = 1;
		//datain = 0;
		read_en = 0;
		write_en=0;


		// Wait 100 ns for global reset to finish
		#100;
			read_en = 1;
				enable = 1;
        
		// Add stimulus here

	end
	
	
	always
	begin
	#20 clk =~clk;
	end
   

	always begin
   #100 addr =1;
	end

	
endmodule

