`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module n_bit_alu(a_in, b_in, control_in, sum_out, carry_out, overflow_out, zero_out);

	parameter n = 8;
	//input [n-1:0] a_in, b_in;
	input [7:0] a_in;
	input [7:0] b_in;
	
	input [2:0] control_in;
	
	//output [n-1:0] sum_out;
	output [7:0] sum_out; 
	output carry_out, overflow_out, zero_out;
	
	//wire [n:0] carry;
	wire [8:0] carry;
	wire is_zero_out;
	
	and is_zero(is_zero_out, ~sum_out[0], ~sum_out[1], ~sum_out[2], ~sum_out[3], ~sum_out[4], ~sum_out[5], ~sum_out[6], ~sum_out[7]);
	
	genvar i;
	assign carry_out = carry[n];
	assign overflow_out = carry[n - 1] ^ carry[n];
	assign zero_out = is_zero_out;
	assign carry[0] = control_in[0];
	
	alu_bitslice adder(a_in[0], b_in[0], carry[0], control_in, carry[1], sum_out[0]); 
	
	generate 
		for (i = 1; i < n; i = i + 1)
			begin: alugen
				alu_bitslice adder(a_in[i], b_in[i], carry[i], control_in, carry[i+1], sum_out[i]);
			end
	endgenerate

endmodule
