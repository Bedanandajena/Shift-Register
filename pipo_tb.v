`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.02.2024 00:44:05
// Design Name: 
// Module Name: pipo_tb
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


module pipo_tb( );
reg clk,reset;
reg [3:0]pi;
wire [3:0]po;
pipo p1(clk,reset,pi,po);
always #20 clk=~clk;
initial
begin
clk=0;reset=1;pi=4'b0001;#40;
reset=1;pi=4'b1100;#40;
reset=1;pi=4'b1100;#40;
reset=0;pi=4'b1010;#40;
reset=0;pi=4'b0101;#40;
reset=0;pi=4'b1001;#40;
end
endmodule
