`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
module nBitArithShifterGen(in, out, control
    );
	 parameter n=8;
	 input 	[n-1:0] in;
	 output 	[n-1:0] out;
	 reg 		[n-1:0] out;
	 input [2:0]control;
	 integer i;

always @ (control or in)
	begin	
		case (control)
		0: out = in<<1;
		1: out = in>>1;
		2: out = in;
		3: out = in*4;
		4: out = in/4;
		5: out = 0;
		6: begin
			for(i=0; i<n; i=i+1)
			begin
			out[i]=1'b1;
			end
			end
			
		7:	begin
			for(i=0; i<n; i=i+1)
			begin
			out[i]=1'bZ;
			end
			end
		default: out=0;
		endcase
	end

endmodule
