`timescale 1ns / 1ps
//////////////////////////////////////////////
//   DIRECT MAP CAHCHE, WRITE THROUGH
//////////////////////////////////////////////////////////////////////////////////
module CacheData(clk,addr,enable,clear,datain,dataout,read_en, write_en,MFC,MFCreset );

input [7:0]addr;
input enable,clear,read_en,write_en,clk;
input [7:0]datain;
output reg [7:0]dataout;
reg [7:0]CacheReg[7:0];
reg [4:0]CacheTag[7:0];
output MFC;//memeory fetch complete 
input MFCreset;
wire [7:0]DRAMdataout;
reg MFC;

reg[7:0] F,fp;
parameter f00=100;
parameter f01=101;
parameter f02=102;
parameter f03=103;
parameter f04=104;
parameter f05=105;
parameter f0=0;
parameter f1=1;
parameter f2=2;
parameter f3=3;
parameter f4=4;
parameter f5=5;
parameter f6=6;
parameter f7=7;
parameter f8=8;
parameter f9=9;
parameter f10=10;
parameter f11=11;
parameter f12=12;
parameter f13=13;
parameter f14=14;



DataRAMRAM DRAM( clk,addr,enable,clear,datain,DRAMdataout,read_en, write_en);


always @(fp)
begin
case(fp)
f00: F=f01;
f01: F=f02;
f02: F=f03;
f03: F=f04;
f04: F=f0;
f0: if((read_en==1)&&(write_en==0)) F=f1;
		else if((read_en==0)&&(write_en==1))F=f9;
		else if (read_en==1'b1 && (write_en==1'b1)) F = f12;
		else if (read_en==1'b0 && (write_en==1'b0)) F = f12;
f1: if(CacheTag[(addr[2:0])]==addr[7:3]) F=f2;
	 else F=f5;
f2: F=f3;
f3: F=f4;
f4: begin F=f13; end
f5: F=f6;
f6: F=f7;
f7: F=f8;
f8: begin F=f13; end
f9: F=f10;
f10: F=f11;
f11: begin end
f12: begin end
default:F=f00;

endcase
end

always @(posedge clk)
begin 
	if(MFCreset ==1'b1) fp=f00;
	else if (clk==1'b1) fp=F;
end

always @(fp)
begin
case (fp)
f00: MFC=0;
f0: begin end
f1: begin end
f2: 	begin
		dataout=CacheReg[(addr[2:0])];
		end
f3: begin end
f4: MFC=1;
f5: 	begin CacheReg[(addr[2:0])]=DRAMdataout[7:0];
		CacheTag[(addr[2:0])]=addr[7:3]; end
f6: begin CacheReg[(addr[2:0])]=DRAMdataout[7:0]; end
f7: dataout=DRAMdataout[7:0];
f8: begin MFC=1; end
f9:	begin	CacheReg[(addr[2:0])]=datain[7:0];
		CacheTag[(addr[2:0])]=addr[7:3]; end
f10: begin end
f11: MFC=1;
f12: begin dataout=0; MFC=1; end
f13: MFC=0;
default:MFC=0;

endcase
end 
endmodule
