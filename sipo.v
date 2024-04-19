`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.02.2024 20:50:40
// Design Name: 
// Module Name: sipo
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


module sipo(si,clk,clr,po );
input si,clk,clr;
output reg [3:0]po;
reg [3:0]temp;
always@(posedge clk)
begin
if(clr)
temp<=4'b00000;
else
temp<= temp<<1;
temp[0]<=si;
po=temp;
end

endmodule
