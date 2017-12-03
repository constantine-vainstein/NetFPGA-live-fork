`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2017 06:17:41 PM
// Design Name: 
// Module Name: control_hub
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


module control_hub(
	input reset,
	input clk156,
	
	output [63 : 0] tx_axis_control_tdata,
	output [7 : 0] tx_axis_control_tkeep,
	output tx_axis_control_tvalid,
	output tx_axis_control_tlast,
	input tx_axis_control_tready,
	
	input [63 : 0] rx_axis_control_tdata,
	input [7 : 0] rx_axis_control_tkeep,
	input rx_axis_control_tvalid,
	input rx_axis_control_tlast,
	output rx_axis_control_tready
    );
    
    
    wire [7:0] tx_message_id;
    wire [7:0] tx_frame_rate;
    wire [7:0] tx_clock_sync;
    wire [7:0] tx_detection_algo;
    wire [7:0] tx_valid_cmd;
    
    status_register_file status_register_file_i(
    /* input 			*/ 	.clk(clk156),
    /* input 			*/ 	.reset(reset),
    /* output reg [7:0] */ 	.message_id(tx_message_id),
    /* output reg [7:0] */ 	.frame_rate(tx_frame_rate),
    /* output reg [7:0] */ 	.clock_sync(tx_clock_sync),
    /* output reg [7:0] */ 	.detection_algo(tx_detection_algo),
    /* output reg [7:0] */ 	.valid_cmd(tx_valid_cmd),
    /* input [7:0] 		*/ 	.in_message_id(),
    /* input 			*/ 	.in_message_id_valid(),
    /* input [7:0] 		*/ 	.in_frame_rate(),
    /* input 			*/ 	.in_frame_rate_valid(),
    /* input [7:0] 		*/ 	.in_clock_sync(),
    /* input 			*/ 	.in_clock_sync_valid(),
    /* input [7:0] 		*/ 	.in_detection_algo(),
    /* input 			*/ 	.in_detection_algo_valid(),
    /* input [7:0] 		*/ 	.in_valid_cmd(),
    /* input 			*/ 	.in_valid_cmd_valid()
    );
    
    status_serializer status_serializer_i(
    /*input 			*/ .clk(clk156),
	/*input 			*/ .reset(reset),
	/*input 			*/ .start_ser(),
	/*input [47 : 0] 	*/ .source_address(),
	/*input [47 : 0] 	*/ .dest_address(),
	/*input [7 : 0] 	*/ .type_length(),
	/*input [7:0] 		*/ .message_id(tx_message_id),
	/*input [7:0] 		*/ .frame_rate(tx_frame_rate),
	/*input [7:0] 		*/ .clock_sync(tx_clock_sync),
	/*input [7:0] 		*/ .detection_algo(tx_detection_algo),
	/*input [7:0] 		*/ .valid_cmd(tx_valid_cmd),
	/*                  */ 
	/*output [63 : 0] 	*/ .tx_axis_tdata(tx_axis_control_tdata),
	/*output [7 : 0] 	*/ .tx_axis_tkeep(tx_axis_control_tkeep),
	/*output 			*/ .tx_axis_tvalid(tx_axis_control_tvalid),
	/*output 			*/ .tx_axis_tlast(tx_axis_control_tlast),
	/*input 			*/ .tx_axis_tready(tx_axis_control_tready)
    );
    
endmodule
