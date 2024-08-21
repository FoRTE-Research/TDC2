`timescale 1ns / 1ps

module debouncer(
    input clk,
    input IN,
    output OUT
    );

    reg [7:0] shift=8'h00;
    
    assign OUT = (shift==8'hFF) ? 1'b1 : 1'b0;

    //shift: wait for stable
    always @ (posedge clk) 
    begin
        shift <= {shift[6:0],IN}; // N shift register
    end
endmodule