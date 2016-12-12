`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////
/*
CONTROL:
000 = a + b + cin
001 = a - b
010 = a or b
011 = a or ~b
100 = a and b
101 = a and ~b
110 = ~a
111 = ~b
*/
module alu_bitslice(in_a, in_b, in_carry, in_control, out_carry, out_result);
	
	input in_a, in_b, in_carry;
	input [2:0] in_control;

	wire w_xor_b_c0, w_invert_a, w_and_a_b, w_or_a_b, w_sum, w_2x1;

	output out_result;
	output out_carry;
	
	xor (w_xor_b_c0, in_b, in_control[0]);
	or  (w_or_a_b, in_a, w_xor_b_c0);
	and (w_and_a_b, in_a, w_xor_b_c0);
	not (w_invert_a, in_a);
	
	bfa_gl bfa (in_a, w_xor_b_c0, in_carry, w_sum, out_carry);
	
	mux_2x1_rtl mux_2x1 (w_invert_a, w_xor_b_c0, in_control[0], w_2x1);
	
	mux_4x1_behavioral mux_4x1 (w_sum, w_or_a_b, w_and_a_b, w_2x1, in_control[2:1], out_result);

endmodule
