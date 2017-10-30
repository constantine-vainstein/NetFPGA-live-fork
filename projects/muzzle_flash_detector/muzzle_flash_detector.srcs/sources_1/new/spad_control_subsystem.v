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
       input isEmulated,
	   
	   // interface to SPAD
       output latch_spad,
       output reset_spad,
       output [5:0] col_select,
       output [2:0] row_select,
       output row_group,
       
       input [7:0] PixelSpad0,
       input [7:0] PixelSpad1,
       input [7:0] PixelSpad2,
       input [7:0] PixelSpad3,
       
       
       // interface to Core
       output [31:0] FrameId,
       output [3:0] RowSet,
       output [5:0] ColSet,
       output ReadEnable,
       output [7:0] PixelOut0,
       output [7:0] PixelOut1,
       output [7:0] PixelOut2,
       output [7:0] PixelOut3
        
    );
   
    wire [7:0] pixel_in_0;
    wire [7:0] pixel_in_1;
    wire [7:0] pixel_in_2;
    wire [7:0] pixel_in_3;
    
    wire [7:0] emulated_pixel_in_0;
    wire [7:0] emulated_pixel_in_1;
    wire [7:0] emulated_pixel_in_2;
    wire [7:0] emulated_pixel_in_3;
    
    wire FrameDurationChangeEnable;
    wire [`MAXIMAL_STATE_DURATION_CLKS_BITS - 1 : 0] frame_duration_current_clks;
    
    wire mgr_read_enable;

    assign pixel_in_0 = emulated_pixel_in_0;
    assign pixel_in_1 = emulated_pixel_in_1;
    assign pixel_in_2 = emulated_pixel_in_2;
    assign pixel_in_3 = emulated_pixel_in_3;
    
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
        
        .ReadEnable(mgr_read_enable),

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
        .pixel_out_0(emulated_pixel_in_0),
        .pixel_out_1(emulated_pixel_in_1),
        .pixel_out_2(emulated_pixel_in_2),
        .pixel_out_3(emulated_pixel_in_3)
        );
        
    assign RowSet = {row_select, row_group};
    assign ColSet = col_select;
    
    reg [1:0] emulated_mem_delay_count;
    reg [10:0] prev_exact_address;
    wire [10:0] exact_address;
    
    assign exact_address = {row_group, row_select, col_select};
    
    always @(posedge clk) begin
    	
    	if(reset) begin
    		emulated_mem_delay_count <= 0;
    		prev_exact_address <= 0;
		end else begin
			prev_exact_address <= exact_address;
			if(prev_exact_address != exact_address) begin
				emulated_mem_delay_count <= 0;
			end else begin
				emulated_mem_delay_count <= (emulated_mem_delay_count < 3) ? (emulated_mem_delay_count + 1) : 3;
			end
		end
    end
    
    assign ReadEnable = (isEmulated) ? ((emulated_mem_delay_count >= 1) & mgr_read_enable) : mgr_read_enable;
    
    
    
endmodule

