`timescale 1ns / 1ps

module register(
    input clk,rst,
    input [7:0] d,
    input inc,dec,
    output reg [7:0] out
    );
    
    always @(posedge (clk))
    begin
        if (rst)
             begin
                out=0;
            end
        else 
            begin 
                if (inc)
                    begin
                        out=d+1;
                    end
                else if (dec)
                    begin
                        out=d-1;
                    end  
                else
                    begin
                        out=d;
                    end  
            end
    end
endmodule
