`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Description : different Methods for testing clock phase shit
// Changes required - Add necessary ports to constraint file
//////////////////////////////////////////////////////////////////////////////////


module Clock_test(input CLK,
output clkSample,
output clkin,
input BUTTON
    );
    
    assign clkin = CLK;
    wire rst;
debouncer u1(.clk(CLK),.IN(BUTTON),.OUT(rst));
clocks u2(.clkin1(CLK),.rst(rst),.clkSample(clkSample));

// Using delay elements
//parameter g_INITAL = 15;
//(* KEEP = "true", DONT_TOUCH="true" *)wire [g_INITAL-1:0]carryDelay;
//genvar i;
//assign clkin = CLK;
//generate
//for (i=0; i<g_INITAL; i=i+1) begin
//            if(i==0) begin
//                (* ALLOW_COMBINATORIAL_LOOPS = "true", KEEP = "true", DONT_TOUCH="true" *)BUF CARRY4_delay(
//                    .I(CLK),
//                    .O(carryDelay[i])
//                );
                
//            end
//            else begin
//                (* ALLOW_COMBINATORIAL_LOOPS = "true", KEEP = "true", DONT_TOUCH="true" *)BUF CARRY4_delay(
//                    .I(carryDelay[i-1]),
//                    .O(carryDelay[i])
//                );
                
//            end
//        end
//endgenerate
//assign clkSample = carryDelay[g_INITAL-1];

endmodule
