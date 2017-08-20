`timescale 1ns / 1ps
`include "../../sources_1/new/spad_controller_definitions.vh"
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


module spad_emulator_tb(
    
    );
    // variables
    reg clk, reset;
    wire latch_spad;
    wire reset_spad;
    
    wire [31:0] FrameId;
    wire [2:0] row_select;
    wire [5:0] col_select;
    wire row_group;
   
    wire [7:0] pixel_in_0;
    wire [7:0] pixel_in_1;
    wire [7:0] pixel_in_2;
    wire [7:0] pixel_in_3;
    
    wire read_enable;
    wire [7:0] pixel_out_0;
    wire [7:0] pixel_out_1;
    wire [7:0] pixel_out_2;
    wire [7:0] pixel_out_3;
    
    reg [`MAXIMAL_STATE_DURATION_CLKS_BITS - 1 : 0] frame_duration_requested_clks;
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

        .PixelOut0(pixel_out_0),
        .PixelOut1(pixel_out_1),
        .PixelOut2(pixel_out_2),
        .PixelOut3(pixel_out_3),
        
        .ReadEnable(read_enable),

        .FrameDurationRequestedClks(frame_duration_requested_clks),
        .FrameDurationChangeEnable(FrameDurationChangeEnable),
        .FrameDurationCurrentClks(frame_duration_current_clks)
        );
    
    initial begin
        clk = 1;
        reset <= 1;
        reset <= #10 0;
        
        frame_duration_requested_clks <= 0;
        frame_duration_requested_clks <= #60 5000;
        frame_duration_requested_clks <= #(`MINIMAL_FRAME_DURATION_CLKS*10) 5001;
        frame_duration_requested_clks <= #(`MINIMAL_FRAME_DURATION_CLKS*10+10) 5002;
        frame_duration_requested_clks <= #(`MINIMAL_FRAME_DURATION_CLKS*10+20) 5003;
        frame_duration_requested_clks <= #(`MINIMAL_FRAME_DURATION_CLKS*10+30) 5004;
        frame_duration_requested_clks <= #(`MINIMAL_FRAME_DURATION_CLKS*10+40) 5005;
        frame_duration_requested_clks <= #(`MINIMAL_FRAME_DURATION_CLKS*10+50) 5006;
        frame_duration_requested_clks <= #(`MINIMAL_FRAME_DURATION_CLKS*10+60) 5007;
    end
    
    always #5 clk = ~clk;
    
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
endmodule
