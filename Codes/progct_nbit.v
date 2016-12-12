`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
module progct_nbit( pcc,clr,in,out,clk);

parameter n=8;
parameter m=2;//increment value, when pcc=4

input [1:0]pcc;
input	[n-1:0] in;
input clr;
input clk;
output [n-1:0] out;
reg [n-1:0] out;

integer i;

initial begin
out=0;
end

always @ (posedge clk)
begin

	if(clr==0) 
	begin
		for(i=0; i<n; i=i+1)
		begin
		out[i]=1'b0;
		end
	end
	
	else
	begin
	case(pcc)
	0: out=out;
	1: out=in;
	2: out=out+1;
	3: out=out+m;
	default:out=out;
	endcase
	end
end	
endmodule
