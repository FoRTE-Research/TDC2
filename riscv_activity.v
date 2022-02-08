`timescale 1ns / 1ps

module RISCVActivity #(parameter g_ACTIVITY=100, parameter g_STAGE=7)(
    input activity_trig
    //input activity_en
);

    (* ALLOW_COMBINATORIAL_LOOPS = "true", KEEP = "true", DONT_TOUCH="true" *)
    wire [(g_STAGE)-1:0] activity_wire [(g_ACTIVITY)-1:0];

    genvar i,j;
    generate
        for (i=0; i<g_ACTIVITY; i=i+1)
        begin
            for (j=0; j<g_STAGE; j=j+1)
            begin
                if(j==0)
/*                
                    (* ALLOW_COMBINATORIAL_LOOPS = "true", KEEP = "true", DONT_TOUCH="true" *)my_and g_and( 
                        .a(activity_en),
                        .b(activity_trig),
                        .o(activity_wire[i][j])
                    );
*/
                    (* ALLOW_COMBINATORIAL_LOOPS = "true", KEEP = "true", DONT_TOUCH="true" *)my_not g_inv( 
                        .a(activity_trig),
                        .o(activity_wire[i][j])
                    );
                else
                    (* ALLOW_COMBINATORIAL_LOOPS = "true", KEEP = "true", DONT_TOUCH="true" *)my_not g_inv( 
                        .a(activity_wire[i][j-1]),
                        .o(activity_wire[i][j])
                    );
            end
        end
    endgenerate
    
endmodule
