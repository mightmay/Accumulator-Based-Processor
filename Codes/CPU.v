`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module CPU(reset,CPUinput,CPUoutput,clk,
InstrRAMenable, InstrRAMread_en, PCounterIncb_in, PCounterInccontrol_in,StageRegld_str,
StageRegInstr_out,StageRegAddrMode_out,InstrRAMclear,StageRegclr,StageRegData_out,IRAM_data_out,
InstrRAMwrite_en,PCounterControl,PCounterclr,PCounterin,addrin);

input reset,clk;
input [7:0]CPUinput;
input StageRegclr;
input PCounterControl,PCounterclr,PCounterin;
input InstrRAMenable,InstrRAMclear, InstrRAMread_en,InstrRAMwrite_en, PCounterIncb_in, PCounterInccontrol_in; 
input StageRegld_str;


input [7:0]addrin;

output [7:0]CPUoutput;
output [4:0]StageRegInstr_out;
output [2:0]StageRegAddrMode_out;
output [8:0]StageRegData_out;

output [15:0]IRAM_data_out;

wire [7:0]PCtoIRAM;
wire [15:0] IRAM_data_out;
wire [7:0]PCincrement_to_StageReg;



wire [4:0] StageRegInstr_in;
wire [2:0] StageRegAddrMode_in;
wire [7:0] StageRegData_in;
wire [7:0] StageRegPCtr_in;




//===========FIRST STAGE=============================================================

//module RAM( clk,addr,enable,clear,datain,dataout,read_en, write_en);
RAM InstrRAM( clk,addrin,InstrRAMenable,InstrRAMclear,InstrRAMdatain,InstrRAMdataout,InstrRAMread_en, InstrRAMwrite_en);

assign StageRegData_in[7:0] = IRAM_data_out[7:0];
assign StageRegAddrMode_in[2:0] = IRAM_data_out[10:8];
assign StageRegInstr_in[4:0] = IRAM_data_out[15:11];
assign StageRegPCtr_in[7:0] = PCincrement_to_StageReg[7:0];


//module progct_nbit( pcc,clr,in,out,clk);
progct_nbit PCounter( PCounterControl,PCounterclr,PCounterin,PCtoIRAM,clk);


//n_bit_alu(a_in, b_in, control_in, sum_out, carry_out, overflow_out, zero_out);
n_bit_alu PCounterIncrement(PCtoIRAM, PCounterIncb_in, PCounterInccontrol_in, PCounterIncsum_out, PCounterInccarry_out, PCounterIncoverflow_out, PCounterInczero_out);


//===========STAGE REG=============================================================

//nBit_ld_st_reg_gen( ld_str, in, out,clk,set,clr   ); 0=load
nBit_ld_st_reg_gen StageRegInstr( StageRegld_str, StageRegInstr_in, StageRegInstr_out,clk,StageRegset,StageRegclr);
nBit_ld_st_reg_gen StageRegAddrMode( StageRegld_str, StageRegAddrMode_in, StageRegAddrMode_out,clk,StageRegset,StageRegclr);
nBit_ld_st_reg_gen StageRegData( StageRegld_str, StageRegData_in, StageRegData_out,clk,StageRegset,StageRegclr);
nBit_ld_st_reg_gen StageRegPCtr( StageRegld_str, StageRegPCtr_in,  StageRegPCtr_out,clk, StageRegset, StageRegset);


endmodule
