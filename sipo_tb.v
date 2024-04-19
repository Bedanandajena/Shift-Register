`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.02.2024 22:27:11
// Design Name: 
// Module Name: sipo_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module sipo_tb( );
reg si,clk,clr;
wire [3:0]po;
sipo s1(si,clk,clr,po);
always #15 clk=~clk;
initial
begin
si=0;clk=0;clr=1;#40;
si=1;clr=0;#40;
si=0;clr=0;#40;
si=1;clr=0;#40;
si=0;clr=0;#40;
si=1;clr=0;#40;

end
endmodule
