`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/23/2017 10:33:41 AM
// Design Name: 
// Module Name: test_flatener
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


module test_flatener(
    input clk,
    input reset

    );
    

    
    logic [3:0] cycle;
    logic [7:0] intensity;
    wire we;
    wire [7:0] sig [0:1][0:1];
    
    /*initial begin
        cycle <= 0;
        intensity <= 0;
    end*/
    
    always_ff @(posedge clk) begin
        if (reset) begin
            cycle <= 0;
            intensity <= 0;
        end else begin
            cycle <= cycle + 1;  
            intensity <= intensity + 1;
        end
    end
    
    assign we = cycle[1];
    assign reset = 0;
    
    assign sig[0][0] = intensity;
    assign sig[0][1] = intensity + 1;
    assign sig[1][0] = intensity + 2;
    assign sig[1][1] = intensity + 3;
    
    signal_flatener #(
        .WIDTH_PIXELS(2),
        .HEIGHT_PIXELS(2),
        .PIXEL_SIZE_BITS(8),
        .NUM_OF_SAMPLES(4),
        .DEFAULT_INTENSITY(0)) flaten(sig, clk, we, reset);    
endmodule
