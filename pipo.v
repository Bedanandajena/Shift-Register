`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.02.2024 00:43:44
// Design Name: 
// Module Name: pipo
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


module pipo( clk,reset,pi,po );
input clk,reset;
input [3:0]pi;
output reg [3:0]po;
always@(posedge clk or posedge reset)
begin
if(reset)
begin
po<=4'b0000;
end

else
begin
po<=pi;
end
end

endmodule
