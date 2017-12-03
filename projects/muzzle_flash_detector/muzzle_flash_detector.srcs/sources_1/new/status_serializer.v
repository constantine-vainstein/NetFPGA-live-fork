`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2017 09:22:52 PM
// Design Name: 
// Module Name: status_serializer
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


module status_serializer(
    input clk,
	input reset,
	input start_ser,
	input [47 : 0] source_address,
	input [47 : 0] dest_address,
	input [7 : 0] type_length,
	input [7:0] message_id,
	input [7:0] frame_rate,
	input [7:0] clock_sync,
	input [7:0] detection_algo,
	input [7:0] valid_cmd,
	
	output [63 : 0] tx_axis_tdata,
	output [7 : 0] tx_axis_tkeep,
	output tx_axis_tvalid,
	output tx_axis_tlast,
	input tx_axis_tready	
    );
    
    localparam STATE_IDLE = 0;
    localparam STATE_SEND_1 = 1;
    localparam STATE_SEND_2 = 2;
    localparam STATE_SEND_3 = 4;
    localparam STATE_SIZE_ = 4;
    
    reg [STATE_SIZE_ - 1 : 0] state = STATE_IDLE;
    reg [18 * 8 - 1 : 0] dataToSend;
    
    always @ (posedge clk) begin
    	if (reset) begin
    		state <= STATE_IDLE;
    	end else begin
    		case (state)
    			STATE_IDLE: begin
    				if (start_ser) begin
    					dataToSend <= {valid_cmd, detection_algo, clock_sync, frame_rate, message_id, type_length, dest_address, source_address};
    					state <= STATE_SEND_1;
    				end
    			end
    			
    			STATE_SEND_1: begin
    				
    				if(tx_axis_tready) begin
    					state <= STATE_SEND_2;
					end
    			end
    			
    			STATE_SEND_2: begin
					if(tx_axis_tready) begin
						state <= STATE_SEND_3;
					end
    			end
    			
    			STATE_SEND_3: begin
					if(tx_axis_tready) begin
						state <= STATE_IDLE;
					end
    			end
    		endcase
    	end
    end
    
    assign tx_axis_tdata = 	(state == STATE_SEND_1) ? dataToSend[63 : 0] : 
    						(state == STATE_SEND_2) ? dataToSend[128 : 64] :
    						(state == STATE_SEND_3) ? {48'b0, dataToSend[143 : 128]} :
    						/* (state == STATE_IDLE) */ 64'b0;
    
    assign tx_axis_tkeep = 	((state == STATE_SEND_1) || (STATE_SEND_2)) ? 8'b11111111 : 
    						(state == STATE_SEND_3) ? 8'b00000011 : 
    						/* (state == STATE_IDLE) */ 8'b0;
    						
	assign tx_axis_tvalid = (state != STATE_IDLE);
	
	assign tx_axis_tlast = 	((state == STATE_SEND_1) || (STATE_SEND_2)) ? 1'b0 : 
	    					(state == STATE_SEND_3) ? 1'b1 : 
	    					/* (state == STATE_IDLE) */ 1'b0;
    
endmodule
