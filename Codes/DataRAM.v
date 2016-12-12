`timescale 1ns / 1ps

module DataRAMRAM( clk,addr,enable,clear,datain,dataout,read_en, write_en
    );
parameter a=8;
parameter w=8;
input clk,enable,clear,read_en, write_en;
input [a-1:0]addr;
input [w-1:0]datain;
output [w-1:0]dataout;
reg [w-1:0]dataout;
reg [w-1:0] reg_array [((2**a)-1):0];
integer i;
integer j;

	initial begin
for(i=16;i<((2**a));i=i+1) reg_array[i] = 0;
	reg_array[23]=8'b00011110;
	end


always @(posedge(clk))

	begin	
	
	if(clear==1'b0)
	begin
	for(i=0;i<((2**a));i=i+1) reg_array[i] = 0;
	end
	else if(enable==1'b0)
	begin
	for(j=0;j<w;j=j+1) dataout[j] = 1'bZ;
	end
	
	
	else if((read_en==1'b1) && (write_en==1'b0))
	dataout = reg_array[addr];
	
	else if((read_en==1'b0) && (write_en==1'b1))
	reg_array[addr] = datain[w-1:0];
	
	else if (read_en==1'b1 && (write_en==1'b1))
	dataout = 0;
	
	else if (read_en==1'b0 && (write_en==1'b0))
	dataout = 0;
	
	end



endmodule
