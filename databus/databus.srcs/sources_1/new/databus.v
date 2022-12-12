`timescale 1ns / 1ps
module databus(
    input clk,rst,inc1,dec1,inc2,dec2,load1,load2,
    input inc3,dec3,inc4,dec4,load3,load4,
    input [1:0] slc,
    input [15:0] data1,data2,data3,data4,
    input tasma1,tasma2,tasma3,tasma4,
    input clr1,clr2,clr3,clr4,
    output [15:0] dataout
    );
    
    wire [15:0] R1out,R2out,R3out,R4out;
    
    register R1(
        .clk(clk),
        .clr(clr1),
        .data_i(data1),
        .inc_i(inc1),
        .dec_i(dec1),
        .load_i(load1),
        .out(R1out),
        .tasma(tasma1)
           );
           
     register R2(
        .clk(clk),
        .clr(clr2),
        .data_i(data2),
        .inc_i(inc2),
        .dec_i(dec2),
        .load_i(load2),
        .out(R2out),
        .tasma(tasma2)
           );
      register R3(
        .clk(clk),
        .clr(clr3),
        .data_i(data3),
        .inc_i(inc3),
        .dec_i(dec3),
        .load_i(load3),
        .out(R3out),
        .tasma(tasma3)
           );
           
     register R4(
        .clk(clk),
        .clr(clr4),
        .data_i(data4),
        .inc_i(inc4),
        .dec_i(dec4),
        .load_i(load4),
        .out(R4out),
        .tasma(tasma4)
           );

           
    muxbus kontrolmux(
    .clk(clk),
    .in0(R1out),
    .in1(R2out),
    .in0(R3out),
    .in1(R4out),
    .sel(slc),
    .out(dataout));
    
endmodule
