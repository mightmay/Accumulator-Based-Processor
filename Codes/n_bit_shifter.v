`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:50:59 04/24/2013 
// Design Name: 
// Module Name:    n_bit_shifter 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module n_bit_shifter(d, control, q);

	parameter n = 8;
	
	input [7:0]d;
	input control;
	
	wire [7:0]right_shift;
	wire [7:0]left_shift;
	
	assign right_shift[7] = 0;
	assign left_shift[0] = 0;
	
	assign right_shift[6:0] = d[7:1];
	assign left_shift[7:1] = d[6:0];
	
	output [7:0]q;
	
   ////(in_0, in_1, select, out)
	mux_2x1_8bit mux(left_shift, right_shift, control, q);
	
	
	
endmodule
