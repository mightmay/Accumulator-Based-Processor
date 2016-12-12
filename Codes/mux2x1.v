`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module mux2x1( I0, I1, S, Z );
	input I0, I1, S ;
	output Z;
	wire w0, w1 ;
	and a0 (w0,I0, ~S);
	and a1 (w1, I1, S);
	or o1 (Z, w0, w1);
endmodule
