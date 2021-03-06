`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
//////////////////////////////////////////////////////////////////////////////////
module mux_2x1_rtl(in_0, in_1, select, out);

	input	select;
	input in_0; 
	input in_1;
	
	output out;

	assign out = (in_0 && ~select) || (in_1 && select);

endmodule
