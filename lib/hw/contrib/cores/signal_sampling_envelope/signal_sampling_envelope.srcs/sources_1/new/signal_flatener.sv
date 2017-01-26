`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/23/2017 09:28:43 AM
// Design Name: 
// Module Name: signal_flatener
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


module signal_flatener
#(
    parameter WIDTH_PIXELS=64,
    parameter HEIGHT_PIXELS=64,
    parameter PIXEL_SIZE_BITS=8,
    parameter NUM_OF_SAMPLES=500,
    parameter DEFAULT_INTENSITY=8'b0
)
(
    input [PIXEL_SIZE_BITS - 1:0] sampled_signal [0:HEIGHT_PIXELS - 1][0:WIDTH_PIXELS - 1],
    input clk,
    input we,
    input reset,
    
    output reg [PIXEL_SIZE_BITS - 1:0]  sinal_time_area_cube [0 : NUM_OF_SAMPLES][0 : HEIGHT_PIXELS - 1][0 : WIDTH_PIXELS - 1]
);    
    reg [PIXEL_SIZE_BITS - 1:0] signal_history [1 : NUM_OF_SAMPLES][0 : HEIGHT_PIXELS - 1][0 : WIDTH_PIXELS - 1];
    wire [PIXEL_SIZE_BITS - 1:0] sampled_or_default_signal [0:HEIGHT_PIXELS - 1][0:WIDTH_PIXELS - 1]; 
    
    genvar i,j;
    generate
        for (i=0; i<HEIGHT_PIXELS; i = i + 1) begin
            for (j=0; j<WIDTH_PIXELS; j = j + 1) begin
                assign sampled_or_default_signal[i][j] = (we & (~reset)) ? sampled_signal[i][j] : DEFAULT_INTENSITY;
            end
        end
    endgenerate
    
    always_ff @(posedge clk) begin
        if (reset == 1) begin
            for (int k=1; k <= NUM_OF_SAMPLES; k = k + 1) begin
                for (int i=0; i<HEIGHT_PIXELS; i = i + 1) begin
                    for (int j=0; j<WIDTH_PIXELS; j = j + 1) begin
                        signal_history[k][i][j] <= DEFAULT_INTENSITY;
                    end
                end
            end
        end else begin
            for (int i = 0; i < HEIGHT_PIXELS; i = i + 1) begin
                for (int j = 0; j < WIDTH_PIXELS; j = j + 1) begin
                    signal_history[1][i][j] <= sampled_or_default_signal[i][j];
                end
            end
            for (int k = 2; k <= NUM_OF_SAMPLES; k = k + 1) begin
                for (int i = 0; i < HEIGHT_PIXELS; i = i + 1) begin
                    for (int j = 0; j < WIDTH_PIXELS; j = j + 1) begin
                        signal_history[k][i][j] <= signal_history[k-1][i][j];
                    end
                end
            end
        end        
    end
    
    always_comb begin
        if (reset == 0) begin
            for (int i = 0; i < HEIGHT_PIXELS; i = i + 1) begin
                for (int j = 0; j < WIDTH_PIXELS; j = j + 1) begin
                    sinal_time_area_cube[0][i][j] <= sampled_or_default_signal[i][j];
                end        
            end
            for (int k = 1; k <= NUM_OF_SAMPLES; k = k + 1) begin
                for (int i = 0; i < HEIGHT_PIXELS; i = i + 1) begin
                    for (int j = 0; j < WIDTH_PIXELS; j = j + 1) begin
                        sinal_time_area_cube[k][i][j] <= signal_history[k][i][j];
                    end
                end
            end
        end
        else begin
            for (int k = 0; k <= NUM_OF_SAMPLES; k = k + 1) begin
                for (int i = 0; i < HEIGHT_PIXELS; i = i + 1) begin
                    for (int j = 0; j < WIDTH_PIXELS; j = j + 1) begin
                        sinal_time_area_cube[k][i][j] <= DEFAULT_INTENSITY;
                    end
                end
            end
        end
    end
endmodule

