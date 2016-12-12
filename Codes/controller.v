`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module controller(
StageRegAddrMode_out,StageRegInstr_out,reset,clk,
InstrRAMenable, InstrRAMread_en, PCounterIncb_in, PCounterInccontrol_in,
StageRegld_str, DataRAMenable, DRAMaddrMUXselect, DataRAMread_en, IndirectAddrRegld_str,
ACCld_str,ACCinMUXselect,shiftercontrol,ALUinMUXselect, ALUcontrol_in
    );


input [4:0]StageRegInstr_out;
input [2:0]StageRegAddrMode_out;
input reset,clk;
output reg InstrRAMenable, InstrRAMread_en, PCounterIncb_in, PCounterInccontrol_in; 
output reg StageRegld_str;
output reg DataRAMenable, DRAMaddrMUXselect, DataRAMread_en, IndirectAddrRegld_str;
output reg ACCld_str,ACCinMUXselect,shiftercontrol,ALUinMUXselect, ALUcontrol_in;



reg [20:0] yp,yp2,Y,Y2;

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


parameter tt0=0;
parameter tt1=1;
parameter tt2=2;
parameter tt3=3;
parameter tt4=4;
parameter tt5=5;




always
begin
case (yp)
tt0: Y=tt1;
tt1: Y=tt2;
tt2: Y=tt0;
default: Y=tt0;
endcase
end

always @(posedge clk)
begin if(reset ==1'b1) yp=tt0;
	else if (clk ==1'b1) yp=Y;
	end

always @(yp)
begin
case (yp)
tt0: begin
	 InstrRAMenable=1;
	 InstrRAMread_en=1;
	 PCounterIncb_in=1; 
	 PCounterInccontrol_in=0;
	 end
tt1: StageRegld_str=0;
tt2: StageRegld_str=1;

default:InstrRAMenable=1;
endcase
end





endmodule
