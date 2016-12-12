`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:26:15 01/28/2013 
// Design Name: 
// Module Name:    bfa_gl 
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
module bfa_gl(in_0, in_1, carry_in, result, carry_out);
	input in_0, in_1, carry_in;
	output result, carry_out;
	wire w_xor, w_and_0, w_and_1;
	
	xor X0(w_xor, in_0, in_1);
	xor X1(result, w_xor, carry_in);
	and A0(w_and_0, w_xor, carry_in);
	and A1(w_and_1, in_0, in_1);
	or O1(carry_out, w_and_0, w_and_1);

endmodule
