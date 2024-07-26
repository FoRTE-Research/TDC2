`timescale 1ns / 1ps

module top_level(
    //input  clk_p,
    //input  clk_n,
    input CLK,
    (* mark_debug = "true" *) input [3:0] BUTTON,
    (* mark_debug = "true" *) input [3:0] SWITCH,
    output reg [7:0]LED
);
    
//    wire [1:0]sw;
    wire clkSrc, clkSample, clkActivity, rst,Btrig,start;
    reg Btrig_last;
    (* mark_debug = "true" *)reg [31:0] buffer;
    //reg [24:0] trig=25'h00000000;
//    reg [15:0] trig = 16'h00000000;
    (* mark_debug = "true" *) wire [31:0] clkProp;
    //wire [24:0] en;
    wire [15:0] en;

    //Input Clk buffer
    IBUF clkin1_buf(
        .O  (clkSrc),
        .I  (CLK)
    );
    
//    debouncer u1(.clk(clkSrc),
//    .IN(SWITCH[0]),
//    .OUT(sw[0])
//    );
    
//    debouncer u2(.clk(clkSrc),
//    .IN(SWITCH[1]),
//    .OUT(sw[1])
//    );
    
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

assign start = (~Btrig_last & Btrig);
    always @(posedge clkSrc)
    begin
        Btrig_last <= Btrig;
    end
    
    TDC #(
       //.g_INITAL(245),
       //.g_LEN(80)
       .g_INITAL(0),
       .g_LEN(32)
    ) sensor (
        .clkSrc(clkSrc),
        .clkSample(clkSample),
        .clkProp(clkProp)     //output reg with manual control
    );
   always @(posedge clkSample)
   begin
   if(start)
   begin
   buffer <= clkProp;
   end
   end
   
   always @(posedge clkSrc)
    begin
    case(SWITCH[1:0])
    2'b00 : LED <= buffer[7:0];
    2'b01 : LED <= buffer[15:8];
    2'b10 : LED <= buffer[23:16];
    2'b11 : LED <= buffer[31:24];
    endcase
    end
    ila_0 ILA(
        .clk(clkSrc),
        .probe0(clkProp),
        .probe1(buffer),
        .probe2(start),
        .probe3(clkSample),
        .probe4(clkActivity)
    );
endmodule
