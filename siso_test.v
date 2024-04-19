`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.02.2024 20:36:38
// Design Name: 
// Module Name: siso_test
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


module siso_test(  );
reg si,clk;
wire so;
siso s1(clk,si,so);
always #15 clk=~clk;
initial
begin
clk=0;si=0;#20;
si=1;#40;
si=0;#40;
si=1;#40;
si=0;#40;
end
endmodule
