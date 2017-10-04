`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/13/2017 03:15:06 PM
// Design Name: 
// Module Name: read_control
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


module read_control(
	input wire clk,
	input wire reset,
	input wire en,
	input wire [10 : 0] addr,
	/*output wire [63 : 0] dout,*/
	output wire valid,
	output wire end_of_read_process // raised for a full clock cycle
    );
    
    localparam STATE_WAIT = 1;
    localparam STATE_READ_PROCESS = 2;
    localparam STATE_READ_END = 4;
    localparam STATE_READ_BITS = 3;
    
    localparam READ_DELAY = 2;
    
    reg [STATE_READ_BITS - 1 : 0] state;
    reg [2:0] read_delay_cnt;
    reg prev_valid;
    reg [10 : 0] prev_addr;
    reg prev_en;
    
    wire read_parameters_changed;
    
    assign read_parameters_changed = (prev_en != en) || (en && (prev_addr != addr));
    
    always @(posedge clk) begin
    	if(reset) begin
    		state <= STATE_WAIT;
    		read_delay_cnt <= READ_DELAY;
    		prev_valid <= 0;
		end
		prev_addr <= addr;
		prev_valid <= valid;
		prev_en <= en;
		
		if (read_parameters_changed) begin
			state = STATE_WAIT;
		end
		
		case (state)
			STATE_WAIT: begin
				if (en) begin
					state <= STATE_READ_PROCESS;
					read_delay_cnt = READ_DELAY;
				end				
			end
			
			STATE_READ_PROCESS: begin
				if (read_delay_cnt == 0) begin
					state <= STATE_READ_END;
				end else begin
					read_delay_cnt <= read_delay_cnt - 1;
				end
			end
			
			STATE_READ_END: begin
				state <= STATE_WAIT;
			end
		endcase
    end
    
    assign valid = (read_delay_cnt == 0) && ~read_parameters_changed;
    assign end_of_read_process = (valid & (~prev_valid));
    
endmodule
