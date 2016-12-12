`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// THIS IS THE TOPPEST MODULE. IT CONTAIN THE 1ST AND 2ND STAGE OF THE PROCESSOR
//////////////////////////////////////////////////////////////////////////////////
module TOP(
input StartEverything,//this signal is used to power on the processor 
								//and start executing instruction at addr 0

input clk,
input interrupt,

output [7:0]ACCout,
output coutRegout,zeroRegout,overflowRegout,
input secondstagereset);


wire [4:0]StageRegInstr_out;
wire [2:0]StageRegAddrMode_out;
wire [7:0]StageRegData_out;
wire [7:0]StageRegPCtr_out;


wire [7:0]NextPctr;//this signal will go into PCtr in stage 1	
wire SecondStageComplete;//this signal will be 1 when the instruction execution completed
wire FirstStageComplete;//this signal will be 1 when the instruction execution completed

wire [7:0]InteruptAdrReg;

parameter reset=1;
parameter instr=5'b10000;
parameter data=8'b00000010;
parameter addrmode=3'b000;
parameter pctrrr=8'b00001110;

CPU1 stage1(clk,NextPctr,StageRegInstr_out,
StageRegAddrMode_out,StageRegData_out,StageRegPCtr_out,	
interrupt,FirstStageComplete,SecondStageComplete,InteruptAdrReg,StartEverything
);

CPU2 stage2(instr,addrmode,data,pctrrr,
clk,secondstagereset,
ACCout,
coutRegout,zeroRegout,overflowRegout,
NextPctr,//this signal will go into PCtr in stage 1	
SecondStageComplete,//this signal will be 1 when the instruction execution completed
InteruptAdrReg// used to get saved address, so we can return from interrupt service
);



endmodule
