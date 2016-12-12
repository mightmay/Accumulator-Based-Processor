`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
//
//////////////////////////////////////////////////////////////////////////////////
module Bus(
input [7:0] BusInput,
input CPUreceived,
input CPUsent,
output reg[7:0] BusData,
output reg Busreceived,
output reg Bussent, 
input clk

    );

reg [7:0] bp, B;

parameter b0=0;
parameter b1=1;
parameter b2=2;
parameter b3=3;
parameter b4=4;

parameter b5=5;
parameter b6=6;
parameter b7=7;
parameter b8=8;
parameter b9=9;

initial begin

BusData=8'b00000000; 

end

always @(bp)
begin
case(bp)
b0: begin B=b1; BusData=BusInput; Busreceived=1;end
b1: begin B=b2; end
b2: B=b3;
b3: Busreceived=0;
b4: begin B=b5; Bussent=1; end
b5: if(CPUreceived==1) B=b6;
b6: begin end
endcase
end

always @(posedge clk)
begin 
	if(CPUsent ==1'b1) bp=b0;
	else if (CPUreceived==1'b0) bp=b4;
	else bp=B;
end


endmodule
