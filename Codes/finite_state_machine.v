`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:38:52 03/19/2013 
// Design Name: 
// Module Name:    finite_state_machine 
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
module finite_state_machine(vz, clock, start, clear, controller_out);

	input [1:0] vz;
	input clock, start, clear;
		
	output [4:0] controller_out;
	reg [6:0] current_state;
	reg [6:0] next_state;
	reg [4:0] controller_out;
	
	parameter a = 7'b1000000, b = 7'b0100000, c = 7'b0010000, d = 7'b0001000, e = 7'b0000100, f = 7'b0000010, g = 7'b0000001;
	
	always@(vz or current_state)
	begin
		case(current_state)
			a: case(vz)
					2'b00: next_state = a;
					2'b01: next_state = c;
					2'b10: next_state = a;
					2'b11: next_state = g;
				endcase
			b: case(vz)
					2'b00: next_state = d;
					2'b01: next_state = a;
					2'b10: next_state = a;
					2'b11: next_state = f;
				endcase
			c: case(vz)
					2'b00: next_state = b;
					2'b01: next_state = c;
					2'b10: next_state = d;
					2'b11: next_state = e;
				endcase
			d: case(vz)
					2'b00: next_state = f;
					2'b01: next_state = g;
					2'b10: next_state = a;
					2'b11: next_state = f;
				endcase
			e: case(vz)
					2'b00: next_state = b;
					2'b01: next_state = e;
					2'b10: next_state = b;
					2'b11: next_state = g;
				endcase
			f: case(vz)
					2'b00: next_state = a;
					2'b01: next_state = b;
					2'b10: next_state = e;
					2'b11: next_state = d;
				endcase
			g: case(vz)
					2'b00: next_state = g;
					2'b01: next_state = f;
					2'b10: next_state = e;
					2'b11: next_state = c;
				endcase
			endcase
	end
	
	always@(posedge(clock))
	begin
		if (clear == 0)
			current_state = 0;
		else if (start == 1)
			current_state = a;
		else
			current_state = next_state;
	end
	
	always@(current_state)
	begin
		case(current_state)
			a: controller_out = 5'b00110;
			b: controller_out = 5'b10101;
			c: controller_out = 5'b01110;
			d: controller_out = 5'b11001;
			e: controller_out = 5'b01101;
			f: controller_out = 5'b01000;
			g: controller_out = 5'b10001;
			default: controller_out = 5'b00000;
		endcase
	end
	
endmodule
