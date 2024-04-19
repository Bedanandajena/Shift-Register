`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.02.2024 23:09:41
// Design Name: 
// Module Name: piso_tb
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


module piso_tb();
reg clk,reset;
reg [3:0]pi;
wire so;
piso p1(clk,reset,pi,so);
always #15 clk=~clk;
initial
begin
clk=0;reset=1;pi=4'b0010;#40
reset=1;pi=4'b0001;#40;
reset=0;pi=4'b0100;#40;
reset=0;pi=4'b0101;#40;
reset=0;pi=4'b1000;#40;
reset=0;pi=4'b1100;#40;
end
endmodule
