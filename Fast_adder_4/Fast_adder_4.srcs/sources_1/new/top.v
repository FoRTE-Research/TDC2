`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// File : This Module is uses CARRY_4 and BUF as delay elements for clock. one forms combinational cirucit and other forms delay element for clk shifting
// Changes required - Add necessary ports to constraint file
//////////////////////////////////////////////////////////////////////////////////

module top(
input CLK,
input BUTTON
//output reg [7:0]LED,
//input [1:0]SWITCH
    );
 
//reg cap_last;
parameter g_INITAL = 5; // no. of buffers for delay
parameter g_LEN = 320; //no. of bits = 4 * no. of CARRY_4
(* KEEP = "true", DONT_TOUCH="true" *)wire [g_INITAL-1:0]carryDelay;
(* KEEP = "true", DONT_TOUCH="true" *)wire [g_LEN-1:0]carryChain;
(* KEEP = "true", DONT_TOUCH="true" *)reg [g_LEN-1:0]prop;
wire button, start;
//assign clkin = CLK;
reg last;
debouncer u1(.clk(CLK),.IN(BUTTON),.OUT(button));
//clocks u2(.clkin1(CLK),.rst(rst),.clkSample(clkSample)); //phase offset clock generation using MCM module
assign start = (~last & button);

    always @(posedge CLK)
    begin
        last <= button;
    end  
genvar i;
generate
for (i=0; i<g_INITAL; i=i+1) begin
            if(i==0) begin
                (* ALLOW_COMBINATORIAL_LOOPS = "true", KEEP = "true", DONT_TOUCH="true" *)BUF CARRY4_delay(
                    .I(CLK),
                    .O(carryDelay[i])
                );
                
            end
            else begin
                (* ALLOW_COMBINATORIAL_LOOPS = "true", KEEP = "true", DONT_TOUCH="true" *)BUF CARRY4_delay(
                    .I(carryDelay[i-1]),
                    .O(carryDelay[i])
                );
                
            end
        end
for (i=0; i<(g_LEN/4); i=i+1) begin
            if(i==0) begin
                (* KEEP = "true", DONT_TOUCH="true" *)CARRY4 CARRY4_inst (
                    .CO(carryChain[3:0]),           // 4-bit carry out
                    .O(),                           // 4-bit carry chain XOR data out
                    .CI(1'b0),                      // 1-bit carry cascade input
                    .CYINIT(CLK),                // 1-bit carry initialization
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
always @(posedge carryDelay[g_INITAL-1])
begin
if(start)
begin
prop <= carryChain;
end
end

// To display using LED - below circuit is set to 32-bit display
//always @(posedge CLK)
//    begin
//    case(SWITCH[1:0])
//    2'b00 : LED <= prop[7:0];
//    2'b01 : LED <= prop[15:8];
//    2'b10 : LED <= prop[23:16];
//    2'b11 : LED <= prop[31:24];
//    endcase
//    end

// The signal and probe should have same number of bits
ila_0 ILA(
        .clk(CLK),
        .probe0(start),
        .probe1(carryChain),
        .probe2(prop)
    );
endmodule
