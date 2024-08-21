`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/18/2024 03:29:38 PM
// Design Name: 
// Module Name: adder_tb
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


`timescale 1ns / 1ps

module tb_bit_adder;

    // Inputs
    reg CLK;

    // Outputs
    wire [7:0] LED;
    wire clkin;
    // Instantiate the Unit Under Test (UUT)
    bit_adder uut (
        .CLK(CLK),
        .LED(LED),
        .clkin(clkin)
    );
    initial begin
        CLK = 0;
        forever #5 CLK = ~CLK;  // 250 MHz clock, period = 4 ns
    end
    // Clock generation
    initial begin
    #100 $finish;
    end

endmodule
