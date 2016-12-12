`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:36:16 02/12/2013 
// Design Name: 
// Module Name:    positive_edge_triggered_d_flipflop 
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
module positive_edge_triggered_d_flipflop(clock, d, set, reset, q);

	input clock, d, set, reset;

	output reg q;
	
	always@(posedge(clock))
	begin
		if (reset == 0)
			q <= 0;
		else if (set == 0)
			q <= 1;
		else
			q <= d;
	
	end
	
	initial
		begin
			q = 0;
		end

endmodule
