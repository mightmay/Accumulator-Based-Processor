`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module register( ld_str,clr,set,din,dout,clk);

input ld_str;
// 0=load,1=store
input clr;
//low clr,set
input set;
input din;
input clk;
output dout;

wire dmuxtodff;


mux2x1 mux (  dout,din, ld_str, dmuxtodff );

DFF dff ( clk,dmuxtodff,set,clr,dout,q_cmp  );

endmodule
