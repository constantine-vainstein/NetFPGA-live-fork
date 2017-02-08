`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/08/2017 11:55:24 AM
// Design Name: 
// Module Name: signal_collector
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module signal_collector
#(
    parameter WIDTH_PIXELS=64,
    parameter HEIGHT_PIXELS=64,
    parameter PIXEL_SIZE_BITS=8,
    parameter NUM_OF_SAMPLES=500,
    parameter DEFAULT_INTENSITY=8'b0
)
(
    input [PIXEL_SIZE_BITS - 1:0] sampled_pixel_line [0:HEIGHT_PIXELS - 1][0:WIDTH_PIXELS - 1],
    input clk,
    input we,
    input reset,
    );
endmodule
