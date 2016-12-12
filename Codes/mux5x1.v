`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////// 
//
//////////////////////////////////////////////////////////////////////////////////
module mux5x1(in_0, in_1, in_2, in_3,in_4, select, out);

	input [7:0]in_0;
	input [7:0]in_1;
	input [7:0]in_2;
	input [7:0]in_3;
	input [7:0]in_4;
	input [2:0] select;
	output reg[7:0]out;
	

	always@(select, in_0, in_1, in_2, in_3,in_4)
	begin
		case(select)
			3'b000: out = in_0;
			3'b001: out = in_1;
			3'b010: out = in_2;
			3'b011: out = in_3;
			3'b100: out = in_4;
		endcase
	end
	
endmodule

