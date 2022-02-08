`timescale 1ns / 1ps

module TDC #(
    parameter g_INITAL=0,
    parameter g_LEN=64)(
    input clkSample,
    output reg [g_LEN-1:0] clkProp
);
    
    (* KEEP = "true", DONT_TOUCH="true" *)
    wire [g_INITAL-1:0] carryDelay;
    wire [g_LEN-1:0] carryChain;
    
    genvar i;
    generate
        for (i=0; i<g_INITAL; i=i+1) begin
            if(i==0) begin
                (* ALLOW_COMBINATORIAL_LOOPS = "true", KEEP = "true", DONT_TOUCH="true" *)BUF CARRY4_delay(
                    .I(clkSample),
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
            if(i==0 & g_INITAL==0) begin
                (* KEEP = "true", DONT_TOUCH="true" *)CARRY4 CARRY4_inst (
//                (* LOC="SLICE_X4Y57", KEEP = "true", DONT_TOUCH="true" *)CARRY4 CARRY4_inst (
                    .CO(carryChain[3:0]),           // 4-bit carry out
                    .O(),                           // 4-bit carry chain XOR data out
                    .CI(1'b0),                      // 1-bit carry cascade input
                    .CYINIT(clkSample),                // 1-bit carry initialization
                    .DI(4'b0000),                   // 4-bit carry-MUX data in
                    .S(4'b1111)                     // 4-bit carry-MUX select input
                );
            end
            else if(i==0) begin
                (* KEEP = "true", DONT_TOUCH="true" *)CARRY4 CARRY4_inst (
//                (* LOC="SLICE_X4Y57", KEEP = "true", DONT_TOUCH="true" *)CARRY4 CARRY4_inst (
                    .CO(carryChain[3:0]),           // 4-bit carry out
                    .O(),                           // 4-bit carry chain XOR data out
                    .CI(1'b0),                      // 1-bit carry cascade input
                    .CYINIT(carryDelay[g_INITAL-1]),                // 1-bit carry initialization
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

  
    always @(posedge clkSample)
    begin
        clkProp <= carryChain[g_LEN-1:0];
    end

endmodule
