`timescale 1ns / 1ps

module load_store_register_bitslice(clock, d, set, reset, ld_str, q);

	input clock, d, set, reset, ld_str;
	wire w_mux_to_d;
	output q;
	
	mux_2x1_rtl mux_2x1(d, q, ld_str, w_mux_to_d); 
	
	positive_edge_triggered_d_flipflop flipflop(clock, w_mux_to_d, set, reset, q);
	

endmodule
