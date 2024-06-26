`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.02.2024 23:09:17
// Design Name: 
// Module Name: piso
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


module piso(clk,reset,pi,so );
input clk,reset;
input [3:0]pi;
output reg so;
reg [3:0]temp;
always@(posedge clk or posedge reset)
begin
if(reset)
begin
temp<=4'b0000;
so<=1'b0;
end
else
begin
temp<={temp[2:0],pi[0]};
so<=temp[3];
end
end





endmodule
