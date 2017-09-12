`timescale 1ns / 1ps
`include "../../sources_1/new/spad_controller_definitions.vh"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2017 01:33:50 AM
// Design Name: 
// Module Name: spad_control_subsystem
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


module spad_control_subsystem(
       input clk,
       input reset,
       output [31:0] FrameId,
       output [3:0] RowSet,
       output [5:0] ColSet,
       output ReadEnable,
       output [7:0] PixelOut0,
       output [7:0] PixelOut1,
       output [7:0] PixelOut2,
       output [7:0] PixelOut3
        
    );
    wire latch_spad;
    wire reset_spad;
    

    wire [2:0] row_select;
    wire [5:0] col_select;
    wire row_group;
   
    wire [7:0] pixel_in_0;
    wire [7:0] pixel_in_1;
    wire [7:0] pixel_in_2;
    wire [7:0] pixel_in_3;
    
    wire FrameDurationChangeEnable;
    wire [`MAXIMAL_STATE_DURATION_CLKS_BITS - 1 : 0] frame_duration_current_clks;

    
    spad_manager_0 spad_manager(
        .clk(clk),
        .reset(reset),
        .LatchSpad(latch_spad),
        .ResetSpad(reset_spad),
        .FrameId(FrameId),
        .RowSelect(row_select),
        .ColSelect(col_select),
        .RowGroup(row_group),
        .PixelIn0(pixel_in_0),
        .PixelIn1(pixel_in_1),
        .PixelIn2(pixel_in_2),
        .PixelIn3(pixel_in_3),

        .PixelOut0(PixelOut0),
        .PixelOut1(PixelOut1),
        .PixelOut2(PixelOut2),
        .PixelOut3(PixelOut3),
        
        .ReadEnable(ReadEnable),

        .FrameDurationRequestedClks(0), // default frame duration
        .FrameDurationChangeEnable(FrameDurationChangeEnable),
        .FrameDurationCurrentClks(frame_duration_current_clks)
        );
    
    
    spad_emulator spad_emulator(
        .clk(clk),
        .reset(reset),
        .Latch(latch_spad),
        .Reset(reset_spad),
        .row_select(row_select),
        .col_select(col_select),
        .second_half_rows(row_group),
        .pixel_out_0(pixel_in_0),
        .pixel_out_1(pixel_in_1),
        .pixel_out_2(pixel_in_2),
        .pixel_out_3(pixel_in_3)
        );
        
    assign RowSet = {row_select, row_group};
    assign ColSet = col_select;
endmodule

