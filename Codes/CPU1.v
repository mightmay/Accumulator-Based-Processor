`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module CPU1(clk,
ProCounterin,StageRegInstr_out,
StageRegAddrMode_out,StageRegData_out,StageRegPCtr_out,	
interruptnotuse,FirstStageComplete,reset,InteruptAdrReg,StartEverything
,ovinterrupt,badinstruction,badaddr,DanielITR,HVPIReg

);
input interruptnotuse;
input ovinterrupt,badinstruction,badaddr,DanielITR;
reg ovinterruptReg,badinstructionReg,badaddrReg,DanielITRReg;
output reg FirstStageComplete;
input reset,StartEverything;
input clk;
wire [15:0]IRAM_data_out;
input [7:0]ProCounterin;
wire [7:0]ProCounterout;
output reg [7:0]InteruptAdrReg;
parameter ProCounterControl=2'b01;
parameter ProCounterclr=1'b1;

reg StageRegld_str;
parameter StageRegset=1'b1;
parameter StageRegclr=1'b1;
parameter InstrRAMenable=1;
parameter InstrRAMclear=1;
parameter InstrRAMread_en=1;

parameter InstrRAMwrite_en=0;
parameter AddressZero=8'b00000000;

wire [4:0] StageRegInstr_in;
wire [2:0] StageRegAddrMode_in;
wire [7:0] StageRegPCtr_in;

output [4:0]StageRegInstr_out;
output [2:0]StageRegAddrMode_out;
output  [7:0]StageRegData_out;
output [7:0]StageRegPCtr_out;
input [3:0]HVPIReg;
reg [7:0]sp,S;
parameter s00=100;
parameter s01=101;
parameter s0=0;
parameter s1=1;
parameter s2=2;
parameter s3=3;
parameter s4=4;
parameter s4a=41;
parameter s4b=42;
parameter s4c=43;
parameter s4d=44;
parameter s4e=45;
parameter s4f=46;

parameter s5=5;
parameter s6=6;
parameter s7=7;
parameter s8=8;
parameter s9=9;
parameter s10=10;
parameter s98=98;

parameter s99=99;

reg [7:0]interruptAddr;//interrupt program start at addr 100
reg [1:0]PCtrInMUXselect;
wire [7:0]PCtrInMUXout;
 //RAM IRAM( clk,addr,enable,clear,datain,dataout,read_en, write_en);
RAM IRAM( clk,ProCounterout,InstrRAMenable,InstrRAMclear,datain,IRAM_data_out,
InstrRAMread_en, InstrRAMwrite_en);

// mux4x1(in_0, in_1, in_2, in_3, select, out);
mux4x1 PCtrInMUX(ProCounterin,interruptAddr, AddressZero, PCtrInMUXin_3, PCtrInMUXselect, PCtrInMUXout);

//progct_nbit( pcc,clr,in,out,clk);
progct_nbit ProCounter( ProCounterControl,ProCounterclr,PCtrInMUXout,ProCounterout,clk);

// n_bit_load_store_register(clock, d, set, reset, ld_str, q);
n_bit_load_store_register StageRegInstr(clk, IRAM_data_out[15:11], StageRegset, StageRegclr, StageRegld_str, StageRegInstr_out);
n_bit_load_store_register StageRegAddrMode(clk, IRAM_data_out[10:8], StageRegset, StageRegclr, StageRegld_str, StageRegAddrMode_out);
n_bit_load_store_register StageRegData(clk, IRAM_data_out[7:0], StageRegset, StageRegclr, StageRegld_str, StageRegData_out);
n_bit_load_store_register StageRegPCtr(clk, ProCounterout[7:0], StageRegset, StageRegclr, StageRegld_str, StageRegPCtr_out);



//================Controller-finite state machine==============



always @(sp)
begin
case(sp)
s00: S=s2;
s0: if (ovinterrupt==1) S=s4a;
	else if (badinstruction==1) S=s4a;
	else if (badaddr==1) S=s4a;
	else if (DanielITR==1) S=s4a;
	else S=s1;
s1: S=s2;
s2: S=s3;
s3: S=s98;

s4a: if(HVPIReg==4'b0000) S=s4b;
		else if((HVPIReg==4'b0001)&&(ovinterruptReg==1)) S=s4c;
		else if((HVPIReg==4'b0010)&&(badinstructionReg==1)) S=s4d;
		else if((HVPIReg==4'b0100)&&(badaddrReg==1)) S=s4e;
		else if((HVPIReg==4'b1000)&&(DanielITRReg==1)) S=s4f;
		

s4b: if(ovinterruptReg==1) S=s4c;
		else if(badinstructionReg==1) S=s4d;
		else if(badaddrReg==1) S=s4e;
		else if(DanielITRReg==1) S=s4f;


s4c: S=s4;
s4d: S=s4;
s4e: S=s4;
s4f: S=s4;

s4: S=s5;
s5: S=s2;
s98: S=s99;
s99: begin end //End End

default:S=s0;

endcase
end


always @(posedge clk)
begin 
	if(reset ==1'b1) sp=s0;
	else if (StartEverything==1'b1) sp=s00;
	else if (clk==1'b1) sp=S;
end


always @(sp)
begin
case (sp)

s00: begin PCtrInMUXselect=2; FirstStageComplete=0; end
s0: begin  StageRegld_str=0; PCtrInMUXselect=0; FirstStageComplete=0; 
ovinterruptReg=ovinterrupt;
badinstructionReg=badinstruction;
badaddrReg=badaddr;
DanielITRReg=DanielITR;
end

s1: begin StageRegld_str=1; PCtrInMUXselect=0; end
s2: begin StageRegld_str=1;end
s3: begin end

s4a: begin end
s4b: begin end

s4c: interruptAddr=8'b01100100; //ovflow interrupt program start at addr 100
s4d: interruptAddr=8'b01101110; //bad opcode interrupt program start at addr 110
s4e: interruptAddr=8'b01111000;  //bad addrmode interrupt program start at addr 120
s4f: interruptAddr=8'b10000010; ////Daniel interrupt program start at addr 130


s4: begin InteruptAdrReg[7:0]=ProCounterout[7:0]; end
s5: begin PCtrInMUXselect=1; end
s98: begin StageRegld_str=1; end
s99: begin FirstStageComplete=1;

ovinterruptReg=0;
badinstructionReg=0;
badaddrReg=0;
DanielITRReg=0;
 end

default: begin end
endcase
end

endmodule
