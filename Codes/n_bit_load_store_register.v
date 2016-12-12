`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
//////////////////////////////////////////////////////////////////////////////////
module n_bit_load_store_register(clock, d, set, reset, ld_str, q);

	parameter n = 8;
	input clock, set, reset, ld_str;
	input [n-1:0] d;
	
	output [n-1:0] q;
	
	genvar i;
	
	generate 
		for (i = 0; i < n; i = i + 1)
			begin: bitreg
				load_store_register_bitslice register_bitslice(clock, d[i], set, reset, ld_str, q[i]);
			end
	endgenerate


endmodule
