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
    // Interface with SPAD
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
    // Interface with Core
    output reg [7:0] PixelOut0,
    output reg [7:0] PixelOut1,
    output reg [7:0] PixelOut2,
    output reg [7:0] PixelOut3,
    output reg ReadEnable,
    
    input [`MAXIMAL_STATE_DURATION_CLKS_BITS - 1 : 0] FrameDurationRequestedClks,
    output FrameDurationChangeEnable,
    output [`MAXIMAL_STATE_DURATION_CLKS_BITS - 1 : 0] FrameDurationCurrentClks
    );
    
    wire [31:0] controller_frame_id;
    wire controller_read_enable;
    
      
    controller controller(
        .clk(clk),
        .reset(reset),
        .LatchSpad(LatchSpad),
        .ResetSpad(ResetSpad),
        .FrameId(controller_frame_id),
        .RowSelect(RowSelect),
        .ColSelect(ColSelect),
        .HighLowRows(RowGroup),
        .ReadEnable(controller_read_enable),
        .FrameDurationRequestedClks(FrameDurationRequestedClks),
        .FrameDurationChangeEnable(FrameDurationChangeEnable),
        .FrameDurationCurrentClks(FrameDurationCurrentClks)
    );
    
    
	always @(posedge clk) begin
		if(reset) begin
			PixelOut0 <= 8'haaaa;
			PixelOut1 <= 8'haaaa;
			PixelOut2 <= 8'haaaa;
			PixelOut3 <= 8'haaaa;
		end else begin
			ReadEnable <= controller_read_enable;
			if(controller_read_enable) begin
				PixelOut0 <= PixelIn0;
				PixelOut1 <= PixelIn1;
				PixelOut2 <= PixelIn2;
				PixelOut3 <= PixelIn3;
			end
		end
	end
	
	assign FrameId = controller_frame_id;


endmodule
