`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////
module cont(clk,reset,InstrRAMenable,InstrRAMread_en,PCounterIncb_in,
PCounterInccontrol_in,StageRegld_str,InstrRAMwrite_en,
PCounterControl,PCounterclr,PCounterin);

input clk,reset;
output InstrRAMenable,InstrRAMread_en,InstrRAMwrite_en,PCounterIncb_in,PCounterInccontrol_in,StageRegld_str ;
reg InstrRAMenable,InstrRAMread_en,InstrRAMwrite_en,PCounterIncb_in,PCounterInccontrol_in,StageRegld_str;
output PCounterControl,PCounterclr,PCounterin;
reg PCounterControl,PCounterclr,PCounterin;

reg [4:0] yp,Y;

parameter t0=0;
parameter t1=1;
parameter t2=2;


always @(yp)
begin
case (yp)
t0: Y=t1;
t1: Y=t2;
t2: Y=t0;
default: Y=t0;
endcase
end

always @(posedge clk)
begin 
	if(reset ==1'b1) yp=t0;
	else if (clk==1'b1) yp=Y;
end

always @(yp)
begin
case (yp)
t0: begin
	 InstrRAMenable=1;
	 InstrRAMread_en=1;
	 InstrRAMwrite_en=0;
	 PCounterIncb_in=1; 
	 PCounterInccontrol_in=0;
	 StageRegld_str=0;
	 PCounterControl=0;
	 PCounterclr=1;
	 PCounterin=0;
	 end
t1: StageRegld_str=0;
t2: StageRegld_str=1;

default:InstrRAMenable=1;
endcase
end

endmodule
