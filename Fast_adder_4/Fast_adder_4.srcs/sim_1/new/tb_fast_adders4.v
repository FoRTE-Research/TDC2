`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/07/2024 10:06:31 PM
// Design Name: 
// Module Name: tb_fast_adders4
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

module tb_clocks;

    // Constants for clock periods and simulation duration
   localparam SIM_TIME = 220;    // Simulation time in ps

    // Declare signals for clock and reset
    reg clkin1;
    reg rst;
    
    // Declare signals for clock outputs
    wire clkSample;
    wire clkActivity;

    // Instantiate the clock generator module
    clocks uut (
        .clkin1(clkin1),
        .rst(rst),
        .clkSample(clkSample),
        .clkActivity(clkActivity)
    );

    // Clock generation process
    //--------------------------------
    initial begin
        clkin1 = 0;
        forever #2.5 clkin1 = ~clkin1;  // 250 MHz clock, period = 4 ns
    end

    // Reset initialization
    //--------------------------------
    // Apply reset initially and de-assert after some time
    initial begin
        rst = 1;
        #5;   // Hold reset for 100 ps
        rst = 0;
    end

    initial begin
        #SIM_TIME;
        $finish;
    end

endmodule
