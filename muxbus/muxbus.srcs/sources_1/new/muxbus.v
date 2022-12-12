`timescale 1ns / 1ps
module muxbus(
        input clk,
        input[15:0] in0,in1,in2,in3,
        input [1:0] sel,
        output reg [15:0] out
    );
        always @ (posedge (clk))
            begin
                case(sel) 
                    0: out <= in0;
                    1: out <= in1;
                    2: out <= in2;
                    3: out <= in3;
                endcase
            end
endmodule

