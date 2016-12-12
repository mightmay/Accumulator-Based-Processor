`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:15:22 01/28/2013 
// Design Name: 
// Module Name:    mux_4x1_behavioral 
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
module mux_4x1_behavioral(in_0, in_1, in_2, in_3, select, out);

	input in_0;
	input in_1;
	input in_2;
	input in_3;
	
	input [1:0] select;
	output out;
	reg out;

	always@(select, in_0, in_1, in_2, in_3)
	begin
		case(select)
			2'b00: out = in_0;
			2'b01: out = in_1;
			2'b10: out = in_2;
			2'b11: out = in_3;
		endcase
	end
	
endmodule
