`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/23/2024 01:22:07 AM
// Design Name: 
// Module Name: top_tb
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


module top_tb();
reg clk;
reg [3:0]button;
//reg [3:0]switch;

top u1 (.CLK(clk),.BUTTON(button));
initial begin
clk = 0;
forever begin
#5 clk = ~clk;
end
end

initial begin
button = 4'b0000;
//switch = 4'b0000;
#10 button = 4'b1011;
//switch = 4'b0011;
#10 button = 4'b0000; 
//switch = 4'b0000;
#10 button = 4'b1000;
$finish;
end
endmodule
