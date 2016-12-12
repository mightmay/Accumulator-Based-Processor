`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module RAM( clk,addr,enable,clear,datain,dataout,read_en, write_en
    );


parameter a=8;
parameter w=16;

input clk,enable,clear,read_en, write_en;
input [a-1:0]addr;
input [w-1:0]datain;
output [w-1:0]dataout;
reg [w-1:0]dataout;
reg [w-1:0] reg_array [((2**a)-1):0];


integer i;
integer j;


	initial begin




	for(i=0;i<((2**a));i=i+1) reg_array[i] = 0;

reg_array[0]=16'b0100000001110011;
reg_array[1]=16'b0000100011010001;
reg_array[2]=16'b0000000000000000;
reg_array[3]=16'b0111100000000111;
reg_array[4]=16'b1111111101100000;
reg_array[5]=16'b0100000000000000;
reg_array[6]=16'b0111100000000100;
reg_array[7]=16'b1111111111100000;
reg_array[8]=16'b0100000000000000;
reg_array[9]=16'b0100000101011010;
reg_array[10]=16'b0110100000000000;
reg_array[11]=16'b0100000101011011;
reg_array[12]=16'b0110100000000000;
reg_array[13]=16'b0100000101011100;
reg_array[14]=16'b0110100000000000;


reg_array[100]=16'b0100000000000001;
reg_array[101]=16'b0100100001011010;
reg_array[102]=16'b0110100000000000;
reg_array[103]=16'b1111000000000000;


reg_array[110]=16'b0100000000000010;
reg_array[111]=16'b0100100001011011;
reg_array[112]=16'b0110100000000000;
reg_array[113]=16'b1111000000000000;

reg_array[120]=16'b0100000000000011;
reg_array[121]=16'b0100100001011100;
reg_array[122]=16'b0110100000000000;
reg_array[123]=16'b1111000000000000;
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
	reg_array[addr] = datain;
	
	else if (read_en==1'b1 && (write_en==1'b1))
	dataout = 0;
	
	else if (read_en==1'b0 && (write_en==1'b0))
	dataout = 0;
	
	end



endmodule
