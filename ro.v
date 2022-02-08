`timescale 1ns / 1ps

module RO #(parameter g_INV=100)(
    input  ring_en,
    output ring_out
    );
    
    (* ALLOW_COMBINATORIAL_LOOPS = "true", KEEP = "true", DONT_TOUCH="true" *)
    wire [g_INV-1:0] inv_wire;
    wire and_wire;

    (* ALLOW_COMBINATORIAL_LOOPS = "true", KEEP = "true", DONT_TOUCH="true" *)my_nand nand_1(
        .a(ring_en),
        .b(inv_wire[g_INV-1]),
        .o(inv_wire[0])
    );
    
    genvar i;
    generate
        for (i=0; i<g_INV-1; i=i+1)
        begin
            (* ALLOW_COMBINATORIAL_LOOPS = "true", KEEP = "true", DONT_TOUCH="true" *)my_not g_inv( 
                .a(inv_wire[i]),
                .o(inv_wire[i+1])
            );
        end
    endgenerate
    
    (* ALLOW_COMBINATORIAL_LOOPS = "true", KEEP = "true", DONT_TOUCH="true" *)BUF out_buff(
        .I(inv_wire[g_INV-1]),
        .O(ring_out)
    );
    
endmodule
