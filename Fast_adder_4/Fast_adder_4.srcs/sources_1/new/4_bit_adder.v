`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// File : This Module is uses CARRY_4 and button as trigger to determine the propogation delay
// Changes required - Add necessary ports to constraint file
//////////////////////////////////////////////////////////////////////////////////


module bit_adder(
input CLK,
input BUTTON,
output clkin,
output out
);

wire button;
assign clkin = button;

debouncer u1(.clk(CLK),.IN(BUTTON),.OUT(button));
parameter g_LEN = 800;
(* KEEP = "true", DONT_TOUCH="true" *)wire [g_LEN-1:0]carryChain;
//wire clkSample, rst;
   
genvar i;
//assign clkin = CLK;
generate
for (i=0; i<(g_LEN/4); i=i+1) begin
            if(i==0) begin
                (* KEEP = "true", DONT_TOUCH="true" *)CARRY4 CARRY4_inst (
//                (* LOC="SLICE_X4Y57", KEEP = "true", DONT_TOUCH="true" *)CARRY4 CARRY4_inst (
                    .CO(carryChain[4*(i+1)-1:4*i]),           // 4-bit carry out
                    .O(),                           // 4-bit carry chain XOR data out
                    .CI(1'b0),                      // 1-bit carry cascade input
                    .CYINIT(button),                // 1-bit carry initialization
                    .DI(4'b0000),                   // 4-bit carry-MUX data in
                    .S(4'b1111)                     // 4-bit carry-MUX select input
                );
            end
            else begin
                (* KEEP = "true", DONT_TOUCH="true" *)CARRY4 CARRY4_inst (
                    .CO(carryChain[4*(i+1)-1:4*i]), // 4-bit carry out
                    .O(),                           // 4-bit carry chain XOR data out
                    .CI(carryChain[4*i-1]),         // 1-bit carry cascade input
                    .CYINIT(1'b0),                  // 1-bit carry initialization
                    .DI(4'b0000),                   // 4-bit carry-MUX data in
                    .S(4'b1111)                     // 4-bit carry-MUX select input
                );
            end
        end    
endgenerate

//using MCM module for Clock Phase shift 
//clocks phaseshifter
//(.clkin1(CLK),
//.rst(rst),
//.clkSample(clkSample)
//);

assign out = carryChain[g_LEN-1];

endmodule
