`timescale 1ns / 1ps
`include "spad_controller_definitions.vh"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.05.2017 00:01:15
// Design Name: 
// Module Name: spad_manager
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


module spad_manager(
    input clk,
    input reset,
    
    output LatchSpad,
    output ResetSpad,
    output [2:0] RowSelect,
    output [5:0] ColSelect,
    output RowGroup,
    output [31:0] FrameId,
    input [7:0] PixelIn0,
    input [7:0] PixelIn1,
    input [7:0] PixelIn2,
    input [7:0] PixelIn3,
    
    output [7:0] PixelOut0,
    output [7:0] PixelOut1,
    output [7:0] PixelOut2,
    output [7:0] PixelOut3,
    output ReadEnable,
    
    input [`MAXIMAL_STATE_DURATION_CLKS_BITS - 1 : 0] FrameDurationRequestedClks,
    output FrameDurationChangeEnable,
    output [`MAXIMAL_STATE_DURATION_CLKS_BITS - 1 : 0] FrameDurationCurrentClks
    );
    
  
    controller controller(
        .clk(clk),
        .reset(reset),
        .LatchSpad(LatchSpad),
        .ResetSpad(ResetSpad),
        .FrameId(FrameId),
        .RowSelect(RowSelect),
        .ColSelect(ColSelect),
        .HighLowRows(RowGroup),
        .ReadEnable(ReadEnable),
        .FrameDurationRequestedClks(FrameDurationRequestedClks),
        .FrameDurationChangeEnable(FrameDurationChangeEnable),
        .FrameDurationCurrentClks(FrameDurationCurrentClks)
    );
    
    assign PixelOut0 = PixelIn0;
    assign PixelOut1 = PixelIn1;
    assign PixelOut2 = PixelIn2;
    assign PixelOut3 = PixelIn3;
    

endmodule
