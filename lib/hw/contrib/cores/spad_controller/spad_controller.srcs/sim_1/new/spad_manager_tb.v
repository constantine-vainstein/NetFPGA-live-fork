`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.05.2017 21:51:06
// Design Name: 
// Module Name: spad_ctrl_tb
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


module spad_manager_tb(
    
    );
    reg clk, reset;
    wire latch_spad;
    wire reset_spad;
    
    wire [2:0] row_select;
    wire [5:0] col_select;
    wire second_half_of_rows;
    wire read_data;
    
    wire [7:0] pixel_in_0;
    wire [7:0] pixel_in_1;
    wire [7:0] pixel_in_2;
    wire [7:0] pixel_in_3;
    
    wire read_enable;
    wire [7:0] pixel_out_0;
    wire [7:0] pixel_out_1;
    wire [7:0] pixel_out_2;
    wire [7:0] pixel_out_3;

    
    spad_manager spad_manager(
        .clk(clk),
        .reset(reset),
        .LatchSpad(latch_spad),
        .ResetSpad(reset_spad),
        .RowSelect(row_select),
        .ColSelect(col_select),
        .isSecondHalfOfRows(second_half_of_rows),
        .PixelIn0(pixel_in_0),
        .PixelIn1(pixel_in_1),
        .PixelIn2(pixel_in_2),
        .PixelIn3(pixel_in_3),

        .PixelOut0(pixel_out_0),
        .PixelOut1(pixel_out_1),
        .PixelOut2(pixel_out_2),
        .PixelOut3(pixel_out_3),
        
        .ReadEnable(read_enable)
        );
    
    initial begin
        clk = 1;
        reset <= 1;
        reset <= #10 0;
    end
    
    always #2.5 clk = ~clk;
endmodule
