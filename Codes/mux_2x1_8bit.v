`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module mux_2x1_8bit(in_0, in_1, select, out);

	input	select;
	input [7:0]in_0; 
	input [7:0]in_1;
	
	output reg [7:0]out;

	always@(select, in_0, in_1)
		begin
			case(select)
				1'b0:
					begin
						out = in_0;
					end
				1'b1:
					begin
						out = in_1;
					end
			endcase
		end
	
	

endmodule
