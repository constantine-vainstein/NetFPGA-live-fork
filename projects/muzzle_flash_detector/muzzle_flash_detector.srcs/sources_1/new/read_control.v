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
	output valid
    );
    
    localparam STATE_INIT = 1;
    localparam STATE_WAIT = 2;
    localparam STATE_READ_PROCESS = 4;
    localparam STATE_READ_BITS = 3;
    
    localparam READ_DELAY = 2;
    
    reg [STATE_READ_BITS - 1 : 0] state;
    reg [2:0] read_delay_cnt;
    reg [10 : 0] addr_of_current_data;
    reg [10 : 0] requested_addr;
    
    wire read_parameters_changed;
    wire read_process_interrupted;
    
    assign read_parameters_changed = en && (addr_of_current_data != addr);
    assign read_process_interrupted = en && (addr != requested_addr);
    
    always @(posedge clk) begin
    	if(reset) begin
    		state <= STATE_INIT;
    		read_delay_cnt <= READ_DELAY;
    		requested_addr <= 0;
    		addr_of_current_data <= 0;
		end else begin

			case (state)
				STATE_INIT: begin
					if(en) begin
						state <= STATE_READ_PROCESS;
						read_delay_cnt <= READ_DELAY - 1;
						requested_addr <= addr;
					end
				end
				
				STATE_WAIT: begin
					if (read_parameters_changed) begin
						state <= STATE_READ_PROCESS;
						read_delay_cnt <= READ_DELAY - 1;
						requested_addr <= addr;
					end				
				end
				
				STATE_READ_PROCESS: begin
					if (read_process_interrupted) begin
						state <= STATE_WAIT;
					end else begin
						if (read_delay_cnt == 0) begin
							state <= STATE_WAIT;
							addr_of_current_data <= addr;
						end else begin
							read_delay_cnt <= read_delay_cnt - 1;
						end
					end
				end

			endcase
		end
    end

	assign valid =  (state != STATE_INIT) && (read_delay_cnt == 0) &&
					(
						((state == STATE_READ_PROCESS) && !read_process_interrupted) ||
					 	((state == STATE_WAIT) && !read_parameters_changed)
					);    
endmodule
