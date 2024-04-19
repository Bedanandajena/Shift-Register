`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.02.2024 20:23:48
// Design Name: 
// Module Name: siso
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


module dff(clk,d,q);
input clk,d;
output reg q;
always@(posedge clk)
begin
q<=d;
end

endmodule
module siso(clk,si,so);
input clk,si;
output  so;
wire w1,w2,w3;

dff u1(clk,si,w1);
dff u2(clk,w1,w2);
dff u3(clk,w2,w3);
dff u4(clk,w3,so);
endmodule


