`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////// 
//
//////////////////////////////////////////////////////////////////////////////////
module mux4x1(in_0, in_1, in_2, in_3, select, out);

	input [7:0]in_0;
	input [7:0]in_1;
	input [7:0]in_2;
	input [7:0]in_3;
	
	input [1:0] select;
	output reg[7:0]out;
	

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

