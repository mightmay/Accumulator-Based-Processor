`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////

module nBit_ld_st_reg_gen( ld_str, in, out,clk,set,clr   );
parameter n=8;
input ld_str;
input  [n-1:0]in;
input clk;
input set;
input clr;
output [n-1:0]out;

genvar i;
generate
for(i=0; i<=n-1; i=i+1)
begin: registerbit
register bitreg( ld_str,clr,set,in[i],out[i],clk);
end

endgenerate

endmodule
