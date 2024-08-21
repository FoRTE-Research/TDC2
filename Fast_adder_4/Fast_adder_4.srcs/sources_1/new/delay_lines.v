`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Description : Using BUF elements to create a delay chain
// Changes required - Add necessary ports to constraint file
//////////////////////////////////////////////////////////////////////////////////


module delay_lines(
input CLK,
output clkin,
input BUTTON,
output out
);

wire button;
assign clkin = button;

debouncer u1(.clk(CLK),.IN(BUTTON),.OUT(button));
parameter g_INITAL = 15;
(* KEEP = "true", DONT_TOUCH="true" *)wire [g_INITAL-1:0]carryDelay;

genvar i;
assign clkin = CLK;
generate
for (i=0; i<g_INITAL; i=i+1) begin
            if(i==0) begin
                (* ALLOW_COMBINATORIAL_LOOPS = "true", KEEP = "true", DONT_TOUCH="true" *)BUF CARRY4_delay(
                    .I(button),
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
endgenerate

assign out = carryDelay[g_INITAL-1];

endmodule
