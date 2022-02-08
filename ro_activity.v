`timescale 1ns / 1ps

module ROActivity #(parameter g_ACTIVITY_INV=100)(
    input activity_en
);

    (* ALLOW_COMBINATORIAL_LOOPS = "true", KEEP = "true", DONT_TOUCH="true" *)
    wire [(g_ACTIVITY_INV)-1:0] inv_wire;

    genvar i;
    generate
        for (i=0; i<g_ACTIVITY_INV; i=i+1)
        begin

            (* ALLOW_COMBINATORIAL_LOOPS = "true", KEEP = "true", DONT_TOUCH="true" *)my_nand nand_1(
                .a(activity_en),
                .b(inv_wire[i]),
                .o(inv_wire[i])
            );
        end
    endgenerate
    
endmodule
