`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2017 08:20:25 PM
// Design Name: 
// Module Name: status_register_file
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


module status_register_file(
    input clk,
    input reset,
    output reg [7:0] message_id,
    output reg [7:0] frame_rate,
    output reg [7:0] clock_sync,
    output reg [7:0] detection_algo,
    output reg [7:0] valid_cmd,
    input [7:0] in_message_id,
    input in_message_id_valid,
    input [7:0] in_frame_rate,
    input in_frame_rate_valid,
    input [7:0] in_clock_sync,
    input in_clock_sync_valid,
    input [7:0] in_detection_algo,
    input in_detection_algo_valid,
    input [7:0] in_valid_cmd,
    input in_valid_cmd_valid
    );
    
    localparam FRAME_RATE_15KFPS = 8'd0;
    localparam FRAME_RATE_7_5KFPS = 8'd1;
    localparam FRAME_RATE_3_75KFPS = 8'd2;
    localparam FRAME_RATE_1_875KFPS = 8'd4;
    localparam FRAME_RATE_0_9375KFPS = 8'd5;
    localparam FRAME_RATE_30FPS = 8'd15;
    localparam FRAME_RATE_480FPS = 8'd16;
    
    localparam CLOCK_SYNC_INTERNAL = 8'd0;
    localparam CLOCK_SYNC_EXTERNAL_30HZ = 8'd1;
    
    localparam DETECTION_ALGO_OFF = 8'd0;
    localparam DETECTION_ALGO_OPER = 8'd1;
    localparam DETECTION_ALGO_LAB = 8'd2;
    
    localparam VALID_CMD_INVALID = 8'd0;
    localparam VALID_CMD_VALID = 8'd1;
    
    
    always @(posedge clk) begin
    	if (reset) begin
    		message_id <= 0;
    		frame_rate <= FRAME_RATE_15KFPS;
    		clock_sync <= CLOCK_SYNC_INTERNAL;
    		detection_algo <= DETECTION_ALGO_OFF;
    		valid_cmd <= VALID_CMD_INVALID;
    	end else begin
    		if (in_message_id_valid) begin
    			message_id <= in_message_id;
		 	end
		 	
		 	if (in_frame_rate_valid) begin
		 		 frame_rate <= in_frame_rate;
			end
			
			if (in_clock_sync_valid) begin
				clock_sync <= in_clock_sync;
			end
			
			if (in_detection_algo_valid) begin
				detection_algo <= in_detection_algo;
			end
			
			if (in_valid_cmd_valid) begin
				valid_cmd <= in_valid_cmd;
			end
    	end
    	
    end
    
endmodule
