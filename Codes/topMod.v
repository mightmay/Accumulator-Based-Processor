`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
 
//
//////////////////////////////////////////////////////////////////////////////////
module topMod(

input clk,
output [7:0]ACCout,
output coutRegout,zeroRegout,overflowRegout,
output StageComplete,//this signal will be 1 when the instruction execution completed
input StartEverything,interrupt,
output [7:0]BusData
);

reg BothStageNextCycle;
wire [4:0]StageRegInstr_out;
wire [2:0]StageRegAddrMode_out;
wire [7:0]StageRegData_out;
wire [7:0]StageRegPCtr_out;
wire [7:0]InteruptAdrReg;
wire FirstStageComplete;
wire [7:0]NextPctr;


wire CPUreceived,CPUsent,Busreceived;

wire BadInstr,badaddr,DanielITR;
wire [3:0]HVPIReg;

always @(posedge(clk))
begin
BothStageNextCycle = FirstStageComplete && StageComplete;
end

CPU1 firststage(clk,
NextPctr,StageRegInstr_out,
StageRegAddrMode_out,StageRegData_out,StageRegPCtr_out,	
overflowRegout,FirstStageComplete,BothStageNextCycle,InteruptAdrReg,StartEverything
,overflowRegout,BadInstr,badaddr,DanielITR,HVPIReg);	
	 
	 
CPU2 secondstage(StageRegInstr_out, StageRegAddrMode_out, StageRegData_out, StageRegPCtr_out,
clk,BothStageNextCycle, ACCout, coutRegout,zeroRegout,overflowRegout,
NextPctr,	
StageComplete,
InteruptAdrReg,StartEverything,BusData,CPUreceived,CPUsent,Busreceived,BadInstr,
badaddr,DanielITR,HVPIReg
);


// Bus(BusInput,CPUreceived, CPUsent,BusData,Busreceived,Bussent   );
Bus busline(ACCout,CPUreceived, CPUsent,BusData,Busreceived,Bussent ,clk  );
endmodule
