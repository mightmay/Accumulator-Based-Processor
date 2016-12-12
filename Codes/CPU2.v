`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module CPU2(StageRegInstr_out, StageRegAddrMode_out, StageRegData_out, StageRegPCtr_out,
clk,reset, ACCout, coutRegout,zeroRegout,overflowRegout,
NextPctr,//this signal will go into PCtr in stage 1	
StageComplete,//this signal will be 1 when the instruction execution completed
InteruptAdrReg,// used to get saved address, so we can return from interrupt service
StartEverything, InputFromBus,CPUreceived,CPUsent,Busreceived,BadInstr,
badaddr,DanielITR,HVPIReg
);


input Busreceived;
output reg CPUsent,CPUreceived;

output reg BadInstr;//signal used when there is illegal opcode
output reg badaddr,DanielITR;
output reg [3:0]HVPIReg;
input [7:0]InputFromBus;

input StartEverything;
input [4:0]StageRegInstr_out;
input [2:0]StageRegAddrMode_out;
input  [7:0]StageRegData_out;
input [7:0]StageRegPCtr_out;
input clk,reset;
output [7:0]ACCout;
output coutRegout,zeroRegout,overflowRegout;
output [7:0]NextPctr;//this signal will go into PCtr in stage 1	
output StageComplete;//this signal will be 1 when the instruction execution completed

input [7:0]InteruptAdrReg;// used to get saved address, so we can return from interrupt service

reg [7:0]NextPctr;//this signal will go into PCtr in stage 1	
reg StageComplete;

parameter CarryZeroOVset =1'b1;
parameter CarryZeroOVclear =1'b1;
reg CarryZeroOVld_str;

wire ALUcarry_out,ALUzero_out,ALUoverflow;
reg DRAMenable;
reg [2:0]ACCMUXselect;
reg DRAMread_en;
reg DRAMwrite_en;
reg ACCld_str;
reg [1:0]DRAMaddrMuxselect;
reg IndirectAddrRegld_str;

parameter DRAMclear=1'b1;
parameter ACCset=1'b1; 
parameter ACCreset=1'b1;

wire[7:0] ACCin;
wire[7:0] DRAMaddr;
wire[7:0] DRAMdataout;
reg [7:0] yp,Y;
wire [7:0]IndirectAddrRegout;
parameter IndirectAddrRegset=1'b1;
parameter IndirectAddrRegreset=1'b1;


reg [7:0]JSRaddrReg;
reg [1:0]ALUinMuxselect;
wire [7:0]ALUinMuxout;

wire [2:0]ALUcontrol;
reg [2:0]shiftercontrol;

wire [7:0] ALUout;
wire [7:0] shifterout; 

reg shifterInMUXselect;
wire [7:0]shifterInMUXout;
reg [7:0]MULreg;
reg [7:0]MULreg2;
reg [7:0]DIVreg;
parameter t0=0;
parameter t1=1;
parameter t2=2;
parameter t3=3;
parameter t4=4;
parameter t5=5;
parameter t6=6;
parameter t7=7;
parameter t8=8;
parameter t9=9;
parameter t10=10;
parameter t11=11;
parameter t12=12;
parameter t13=13;
parameter t14=14;
parameter t15=15;
parameter t16=16;
parameter t17=17;
parameter t18=18;
parameter t19=19;
parameter t20=20;
parameter t21=21;
parameter t22=22;
parameter t23=23;
parameter t24=24;
parameter t25=25;
parameter t26=26;
parameter t27=27;
parameter t28=28;
parameter t29=29;
parameter t30=30;
parameter t31=31;
parameter t32=32;
parameter t33=33;
parameter t34=34;
parameter t35=35;
parameter t36=36;
parameter t37=37;
parameter t38=38;
parameter t39=39;
parameter t40=40;
parameter t41=41;
parameter t42=42;
parameter t43=43;
parameter t44=44;
parameter t45=45;
parameter t46=46;
parameter t47=47;
parameter t48=48;
parameter t49=49;
parameter t98=98;
parameter t99=99;
parameter t00=100;
parameter t0a=111;
wire MFC;
reg MFCreset;
//DataRAMRAM( clk,addr,enable,clear,datain,dataout,read_en, write_en    );

// CacheData(clk,addr,enable,clear,datain,dataout,read_en, write_en,MFC,MFCreset );
CacheData CacheAndRAM(clk,DRAMaddr,DRAMenable,DRAMclear,ACCout,DRAMdataout,
DRAMread_en,DRAMwrite_en,MFC,reset );

mux4x1 DRAMaddrMux(StageRegData_out, IndirectAddrRegout, DRAMaddrMuxin_2, DRAMaddrMuxin_3, DRAMaddrMuxselect, DRAMaddr);

//n_bit_load_store_register(clock, d, set, reset, ld_str, q);
n_bit_load_store_register ACC(clk, ACCin, ACCset, ACCreset, ACCld_str, ACCout);

n_bit_load_store_register IndirectAddrReg(clk, DRAMdataout, 
IndirectAddrRegset, IndirectAddrRegreset, IndirectAddrRegld_str, IndirectAddrRegout);


//mux4x1(in_0, in_1, in_2, in_3, select, out);
mux5x1 ACCinMUX(StageRegData_out,DRAMdataout, shifterout, DIVreg, 
InputFromBus, ACCMUXselect, ACCin);
//mux5x1(in_0, in_1, in_2, in_3,in_4, select, out);


mux4x1ALUin ALUinMux(StageRegData_out, DRAMdataout, MULreg2, ALUinMuxin_3, ALUinMuxselect, ALUinMuxout);

//nBitALU(a_in, b_in, control_in, sum_out, carry_out, overflow_out, zero_out);
n_bit_alu ALU( ACCout, ALUinMuxout, StageRegInstr_out[2:0], ALUout, ALUcarry_out, 
ALUoverflow, ALUzero_out);
/*000 = a + b + cin
001 = a - b
010 = a or b
011 = a or ~b
100 = a and b
101 = a and ~b
110 = ~a
111 = ~b
*/



load_store_register_bitslice coutReg(clk, ALUcarry_out,CarryZeroOVset, CarryZeroOVclear, 
CarryZeroOVld_str, coutRegout);

load_store_register_bitslice zeroReg(clk, ALUzero_out, CarryZeroOVset, CarryZeroOVclear, 
CarryZeroOVld_str, zeroRegout);

load_store_register_bitslice overflowReg(clk, ALUoverflow, CarryZeroOVset, CarryZeroOVclear, 
CarryZeroOVld_str, overflowRegout);

mux_2x1_8bit shifterInMUX(ALUout, ACCout, shifterInMUXselect, shifterInMUXout);
nBitArithShifterGen shifter(shifterInMUXout, shifterout, shiftercontrol);
/*
		0: out = in<<1;
		1: out = in>>1;
		2: out = in;
		3: out = in*4;
		4: out = in/4;
		5: out = 0;
		6: out = 11111
		7:	out = zzzzz

*/





//==============================================================
// CONTROLLER-state machine


always @(yp,Busreceived,MFC)
begin
case(yp)
t00: Y=t99;
t0a: Y=t0;
t0: if(StageRegInstr_out==5'b01000) Y=t1; //instruction = load
else if(StageRegAddrMode_out==3'b101) Y=t46; // bad addr mode
	else if(StageRegInstr_out==5'b01001) Y=t30; //instr=str
	
	else if (StageRegInstr_out[4:3]==2'b00) Y=t9; // instruction = ALU
	else if(StageRegInstr_out[4:1]==4'b0101) Y=t18; // instr= right(01010)/left(01011) shift 
	else if(StageRegInstr_out[4:0]==5'b11000) Y=t20; // instr= mul
	else if(StageRegInstr_out[4:0]==5'b11001) Y=t24; // instr= div
		
		else if(StageRegInstr_out==5'b11010) Y=t32; //instr=branch
		else if(StageRegInstr_out==5'b11011) Y=t33; //instr=branch if zero
		else if(StageRegInstr_out==5'b11100) Y=t34; //instr=jump subroutine
		else if(StageRegInstr_out==5'b11101) Y=t35; //instr=return subroutine
		else if(StageRegInstr_out==5'b11110) Y=t36; //instr=return interupt subroutine
		else if(StageRegInstr_out==5'b01100) Y=t37; //instr=bus input
		else if(StageRegInstr_out==5'b01101) Y=t41; //instr=bus output
		else if(StageRegInstr_out==5'b01111) Y=t45; //instr=SET HVPI reg
		
		
		else if((StageRegInstr_out==5'b11111)&&(StageRegAddrMode_out==3'b111)) Y=t47;
		
		else if(StageRegInstr_out==5'b11111) Y=t44; //bad opcode

	
		

		
		
		

	
t1: if(StageRegAddrMode_out==0) Y=t2; //immediate
else if(StageRegAddrMode_out==1) Y=t3; //direct addr mode
else if(StageRegAddrMode_out==2) Y=t4; //indirect addr mode
t2: Y=t8; //immediate addr mode

t3: Y=t7; //direct addr mode

t4: Y=t5; //indirect addr mode
t5: if(MFC==1) Y=t6;
t6: Y=t7;
t7: if(MFC==1) Y=t8; 
t8: Y=t98;

t9: if(StageRegAddrMode_out==0) Y=t10; // ALU immediate
	else if(StageRegAddrMode_out==1) Y=t12; //ALU direct addr mode
	else if(StageRegAddrMode_out==2) Y=t15; //ALU indirect addr mode

t10: Y=t11;

t11: Y=t14;
t12: if(MFC==1) Y=t13;
t13: Y=t14;
t14: Y=t98;
t15: if(MFC==1) Y=t16;
t16: Y=t17;
t17: if(MFC==1) Y=t13;
t18: Y=t19;
t19: Y=t13;
t20: Y=t21;
t21: Y=t22;
t22: Y=t23;
t23: if(MULreg[7:0]==8'b00000001) Y=t14;
		else if(MULreg[7:0]!=8'b00000001) Y=t21;
t24: Y=t25;
t25: Y=t26;
t26: Y=t27;
t27: if(ACCout[7:0]==8'b00000000) Y =t28;
		else if (ACCout[7:0]!=8'b00000000) Y=25;
t28: Y=t29;
t29: Y=t98;
t30: Y=t31;
t31: Y=t98;
t32: Y=t99;  // branch
t33: if(zeroRegout==1)Y=t32; // branch if zero
		else Y=t98;
t34: Y=t32;//jump subroutine
t35: Y=t99;//return sub
t36: Y=t99;//return interupt service



t37: begin Y=t38;  end 
t38: begin  Y=t39; end
t39: begin Y=t40;  end
t40: begin Y=t98;  end



t41: begin Y=t42; end//bus output instr
t42: if(Busreceived==1) Y=t43; 
	else Y=t42;
t43: begin Y=t98; end 

t44: Y=t98; //bad opcode
t45: Y=t98;
t46: Y=t98;
t47: Y=t98;
t48: Y=t98;

t98: Y=t99; //Normal End

t99:begin end //End End

default:Y=t0;

endcase
end


always @(posedge clk)
begin 
	if(reset ==1'b1) begin yp=t0a; end
	else if(StartEverything==1'b1) yp=t00;
	else yp=Y;
end

always @(yp)
begin
case (yp)
t0a: begin DRAMenable=1; ACCld_str=1; StageComplete=0; end
t00: begin NextPctr[7:0]=8'b00000001; StageComplete=0; HVPIReg=4'b0000; end
t0: begin DRAMenable=1; ACCld_str=1; StageComplete=0; NextPctr=(StageRegPCtr_out[7:0]);
 BadInstr=0;
  DanielITR=0;
  badaddr=0;
 end

t1: begin DRAMenable=1; DRAMread_en=1; DRAMwrite_en=0;end
t2: begin ACCMUXselect=0;
ACCld_str=0;
end
t3: begin DRAMread_en=1;
   DRAMwrite_en=0;
   DRAMaddrMuxselect=0;
	ACCMUXselect=1;	
	ACCld_str=0; end
t4: begin DRAMread_en=1;
   DRAMwrite_en=0;
   DRAMaddrMuxselect=2'b00;	
	IndirectAddrRegld_str=0; 
	ACCld_str=1;
	end
t5: begin
	ACCld_str=0;
	end
t6:begin DRAMread_en=1;
   DRAMwrite_en=0;
	IndirectAddrRegld_str=1; 
	DRAMaddrMuxselect=2'b01;
	ACCMUXselect=1;	
	ACCld_str=0; MFCreset=1'b1;
	end

t7:	begin ACCld_str=0; end
t8:	begin ACCld_str=1; end

t9: begin shiftercontrol=3'b010; shifterInMUXselect=1'b0; ACCld_str=1; end

t10: begin ALUinMuxselect=0;end
t11: begin ACCMUXselect=3'b010;	
	ACCld_str=0; CarryZeroOVld_str=0; end
t12: begin DRAMread_en=1;
   DRAMwrite_en=0;
   DRAMaddrMuxselect=0;	
	ALUinMuxselect=2'b01;
	ACCld_str=1; end
t13: begin ACCMUXselect=3'b010;	
	ACCld_str=0; CarryZeroOVld_str=0; end
t14: begin ACCld_str=1; CarryZeroOVld_str=1; end
t15: begin DRAMread_en=1;
   DRAMwrite_en=0;
   DRAMaddrMuxselect=2'b00;	
	IndirectAddrRegld_str=0; 
	ACCld_str=1;
	end
t16: begin end
t17: begin	DRAMread_en=1;
   DRAMwrite_en=0;
   DRAMaddrMuxselect=2'b01;	
	ALUinMuxselect=2'b01;
	IndirectAddrRegld_str=1;
	ACCld_str=1;end

t18: begin ACCld_str=1; shiftercontrol[2:1]={1'b0,1'b0}; shiftercontrol[0]=StageRegInstr_out[0]; shifterInMUXselect=1'b1; end
t19: begin end
t20: begin shiftercontrol=3'b010; shifterInMUXselect=1'b0; ACCld_str=1; 
				MULreg=StageRegData_out; MULreg2=ACCout; end
t21: begin ALUinMuxselect=2'b10;end
t22: begin ACCMUXselect=3'b010; ACCld_str=0; CarryZeroOVld_str=0; MULreg=MULreg-1; end
t23: begin ACCld_str=1; end 


t24: begin shiftercontrol=3'b010; shifterInMUXselect=1'b0; ACCld_str=1; 
				DIVreg=-1; end
t25: begin ALUinMuxselect=2'b00;end
t26: begin ACCMUXselect=3'b010; ACCld_str=0; CarryZeroOVld_str=0; DIVreg=DIVreg+1; end
t27: begin ACCld_str=1; end 
t28: begin ACCMUXselect=3'b011; ACCld_str=0; end
t29: begin ACCld_str=1; end

t30: begin DRAMenable=1; ACCld_str=1; DRAMaddrMuxselect=2'b00; DRAMread_en=0; DRAMwrite_en=1; end
t31: begin end
t32: begin NextPctr[7:0] = StageRegData_out[7:0]; end
t33: begin end
t34: begin JSRaddrReg[7:0]=(NextPctr+1); end
t35: begin NextPctr[7:0]=JSRaddrReg[7:0]; end
t36: begin NextPctr[7:0]=InteruptAdrReg[7:0];end

t37: begin ACCMUXselect=4; CPUreceived=0; end 
t38: begin ACCMUXselect=4; ACCld_str=0; end
t39: begin ACCld_str=0; end
t40: begin CPUreceived=1; end



t41: begin ACCld_str=1; CPUsent=1; end
t43: begin ACCld_str=1; CPUsent=0;end 
t44: begin BadInstr=1; end
t45: begin HVPIReg=StageRegData_out[3:0];end
t46: begin badaddr=1; end
t47: begin BadInstr=1; badaddr=1; end
t48: begin DanielITR=1;end

t98: begin NextPctr=(NextPctr+1); end
t99: begin StageComplete=1; NextPctr=NextPctr; end		
default:DRAMenable=1;
endcase
end

endmodule
