`timescale 1ns / 1ps

module top_level(
    //input  clk_p,
    //input  clk_n,
    input CLK,
    (* mark_debug = "true" *) input [3:0] BUTTON,
    (* mark_debug = "true" *) input [3:0] SWITCH
);
    
    wire clkSrc, clkSample, clkActivity, rst;
    //reg [24:0] trig=25'h00000000;
    reg [15:0] trig = 16'h00000000;
    wire [31:0] clkProp;
    //wire [24:0] en;
    wire [15:0] en;

    // Input Clk buffer
    /*IBUFGDS clkin1_buf(
        .O  (clkSrc),
        .I  (clk_p),
        .IB (clk_n)
    );*/
    
    //Input Clk buffer
    IBUF clkin1_buf(
        .O  (clkSrc),
        .I  (CLK)
    );
    
    //Instantiate Modules
    clocks clk_div(
        .clkin1(clkSrc),
        .rst(rst),
        .clkSample(clkSample),
        .clkActivity(clkActivity)
    );

    //Input Button buffer
    debouncer instdb_rst(
        .clk(clkSrc),
        .IN(BUTTON[0]),
        .OUT(rst)
    );

    //Input Button buffer
    debouncer instdb_trig(
        .clk(clkSrc),
        .IN(BUTTON[3]),
        .OUT(Btrig)
    );

    always @(posedge clkActivity)
        if(Btrig==1'b1) begin
            trig[0]  <= !trig[0] &en[0]; 
            trig[1]  <= !trig[1] &en[1]; 
            trig[2]  <= !trig[2] &en[2]; 
            trig[3]  <= !trig[3] &en[3]; 
            trig[4]  <= !trig[4] &en[4]; 
            trig[5]  <= !trig[5] &en[5]; 
            trig[6]  <= !trig[6] &en[6]; 
            trig[7]  <= !trig[7] &en[7]; 
            trig[8]  <= !trig[8] &en[8]; 
            trig[9]  <= !trig[9] &en[9]; 
            trig[10] <= !trig[10]&en[10]; 
            trig[11] <= !trig[11]&en[11]; 
            trig[12] <= !trig[12]&en[12]; 
            trig[13] <= !trig[13]&en[13]; 
            trig[14] <= !trig[14]&en[14]; 
            trig[15] <= !trig[15]&en[15]; 
         end

    TDC #(
       //.g_INITAL(245),
       //.g_LEN(80)
       .g_INITAL(83),
       .g_LEN(32)
    ) sensor (
        .clkSample(clkSample),
        .clkProp(clkProp)
    );

    ila_0 ILA(
        .clk(clkSample),
        .probe0(clkProp),
        .probe1(Btrig)
    );
    
    assign en = (SWITCH == 4'h01) ? 25'b0000000000000000000000001 :
                (SWITCH == 4'h02) ? 25'b0000000000000000000000011 :
                (SWITCH == 4'h03) ? 25'b0000000000000000000000111 :
                (SWITCH == 4'h04) ? 25'b0000000000000000000001111 :
                (SWITCH == 4'h05) ? 25'b0000000000000000000011111 :
                (SWITCH == 4'h06) ? 25'b0000000000000000000111111 :
                (SWITCH == 4'h07) ? 25'b0000000000000000001111111 :
                (SWITCH == 4'h08) ? 25'b0000000000000000011111111 :
                (SWITCH == 4'h09) ? 25'b0000000000000000111111111 :
                (SWITCH == 4'h0A) ? 25'b0000000000000001111111111 :
                (SWITCH == 4'h0B) ? 25'b0000000000000011111111111 :
                (SWITCH == 4'h0C) ? 25'b0000000000000111111111111 :
                (SWITCH == 4'h0D) ? 25'b0000000000001111111111111 :
                (SWITCH == 4'h0E) ? 25'b0000000000011111111111111 :
                (SWITCH == 4'h0F) ? 25'b0000000000111111111111111 :
                                    25'b0000000000000000000000000;

    RISCVActivity #(.g_ACTIVITY(200), .g_STAGE(7)) RISCVActivity_0 (.activity_trig(trig[0]));
    RISCVActivity #(.g_ACTIVITY(200), .g_STAGE(7)) RISCVActivity_1 (.activity_trig(trig[1]));
    RISCVActivity #(.g_ACTIVITY(200), .g_STAGE(7)) RISCVActivity_2 (.activity_trig(trig[2]));
    RISCVActivity #(.g_ACTIVITY(200), .g_STAGE(7)) RISCVActivity_3 (.activity_trig(trig[3]));
    RISCVActivity #(.g_ACTIVITY(200), .g_STAGE(7)) RISCVActivity_4 (.activity_trig(trig[4]));
    RISCVActivity #(.g_ACTIVITY(200), .g_STAGE(7)) RISCVActivity_5 (.activity_trig(trig[5]));
    RISCVActivity #(.g_ACTIVITY(200), .g_STAGE(7)) RISCVActivity_6 (.activity_trig(trig[6]));
    RISCVActivity #(.g_ACTIVITY(200), .g_STAGE(7)) RISCVActivity_7 (.activity_trig(trig[7]));
    RISCVActivity #(.g_ACTIVITY(200), .g_STAGE(7)) RISCVActivity_8 (.activity_trig(trig[8]));
    RISCVActivity #(.g_ACTIVITY(200), .g_STAGE(7)) RISCVActivity_9 (.activity_trig(trig[9]));
    RISCVActivity #(.g_ACTIVITY(200), .g_STAGE(7)) RISCVActivity_10 (.activity_trig(trig[10]));
    RISCVActivity #(.g_ACTIVITY(200), .g_STAGE(7)) RISCVActivity_11 (.activity_trig(trig[11]));
    RISCVActivity #(.g_ACTIVITY(200), .g_STAGE(7)) RISCVActivity_12 (.activity_trig(trig[12]));
    RISCVActivity #(.g_ACTIVITY(200), .g_STAGE(7)) RISCVActivity_13 (.activity_trig(trig[13]));
    RISCVActivity #(.g_ACTIVITY(200), .g_STAGE(7)) RISCVActivity_14 (.activity_trig(trig[14]));
    RISCVActivity #(.g_ACTIVITY(200), .g_STAGE(7)) RISCVActivity_15 (.activity_trig(trig[15]));


endmodule
