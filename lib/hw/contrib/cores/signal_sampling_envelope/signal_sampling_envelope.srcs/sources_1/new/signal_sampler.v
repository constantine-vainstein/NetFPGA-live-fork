`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/23/2017 08:11:50 AM
// Design Name: 
// Module Name: signal_sampler
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
`define ACCESS_2D_ARRAY(array,i,j,bit_offset)  array[i * WIDTH_PIXELS * PIXEL_SIZE_BITS + j * PIXEL_SIZE_BITS + bit_offset];
`define ACCESS_3D_ARRAY(array,i,j,bit_offset)  array[k * NUM_OF_SAMPLES * WIDTH_PIXELS * PIXEL_SIZE_BITS + i * WIDTH_PIXELS * PIXEL_SIZE_BITS + j * PIXEL_SIZE_BITS + bit_offset];

module signal_sampler
#(
    parameter WIDTH_PIXELS=64,
    parameter HEIGHT_PIXELS=64,
    parameter PIXEL_SIZE_BITS=8,
    parameter NUM_OF_SAMPLES=1000,
    parameter DEFAULT_INTENSITY=0
)
(
    input [HEIGHT_PIXELS * WIDTH_PIXELS * PIXEL_SIZE_BITS - 1:0] sampled_signal,
    input clk,
    input we,
    input reset,
    
    output [NUM_OF_SAMPLES * HEIGHT_PIXELS * WIDTH_PIXELS * PIXEL_SIZE_BITS - 1:0] sinal_time_area_cube
);    
    reg [PIXEL_SIZE_BITS - 1:0] signal_history [NUM_OF_SAMPLES-1 : 0][HEIGHT_PIXELS - 1:0][WIDTH_PIXELS - 1:0];
    
/*    initial begin
        for (int k=-NUM_OF_SAMPLES_BACKWARDS; k<=NUM_OF_SAMPLES_FOWRWARD; k++) begin
            for (int i=0; i<HEIGHT_PIXELS; i++) begin
                for (int j=0; j<WIDTH_PIXELS; j++) begin
                    signal_history[k][i][j] = 0;
                end
            end
        end
    end*/  
    
    always @(posedge clk) begin
        if (reset == 1) begin
            for (int k=0; k < NUM_OF_SAMPLES; k = k + 1) begin
                for (int i=0; i<HEIGHT_PIXELS; i = i + 1) begin
                    for (int j=0; j<WIDTH_PIXELS; j = j + 1) begin
                        signal_history[k][i][j] <= 0;
                    end
                end
            end
        end else begin
            for (int i = 0; i < HEIGHT_PIXELS; i = i + 1) begin
                for (int j = 0; j < WIDTH_PIXELS; j = j + 1) begin
                    signal_history[0][i][j] <= (we) ? sampled_signel[i][j] : 0;
                end
            end
            for (int k = 1; k < NUM_OF_SAMPLES; k = k + 1) begin
                for (int i = 0; i < HEIGHT_PIXELS; i = i + 1) begin
                    for (int j = 0; j < WIDTH_PIXELS; j = j + 1) begin
                        signal_history[k][i][j] <= signal_history[k-1][i][j];
                    end
                end
            end
        end        
    end
    
    always @(*) begin
        for (int k = 0; k < NUM_OF_SAMPLES; k = k + 1) begin
            for (int i = 0; i < HEIGHT_PIXELS; i = i + 1) begin
                for (int j = 0; j < WIDTH_PIXELS; j = j + 1) begin
                    sinal_time_area_cube[k][i][j] = signal_history[k][i][j];
                end
            end
        end
    end
endmodule
