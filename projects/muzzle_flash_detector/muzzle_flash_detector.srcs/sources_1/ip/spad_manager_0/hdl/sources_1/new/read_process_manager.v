`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.05.2017 15:21:15
// Design Name: 
// Module Name: read_process_manager
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


module read_process_manager(
    input clk,
    input reset,
    input ReadData,
    output ReadEnable,
    output [2:0] RowSelect,
    output [5:0] ColSelect,
    output HighLowRows
    );
    
    // ------------------- Internal Parameters
    localparam STATE_SPAD_AND_MUX_DELAY = 1;
    localparam STATE_READ_1ST_ROW_GROUP = 2;
    localparam STATE_MUX_DELAY = 4;
    localparam STATE_READ_2ND_ROW_GROUP = 8;
    localparam STATE_SIZE_BITS = 4;
    localparam STATE_FIRST_STATE = STATE_SPAD_AND_MUX_DELAY ;
    localparam STATE_LAST_STATE = STATE_READ_2ND_ROW_GROUP;
    localparam STATEBIT_SPAD_AND_MUX_DELAY = 0;
    localparam STATEBIT_READ_1ST_ROW_GROUP = 1;
    localparam STATEBIT_MUX_DELAY = 2;
    localparam STATEBIT_READ_2ND_ROW_GROUP = 3;
    
        // ---------------- wires and regs
    
    wire [STATE_SIZE_BITS - 1 : 0] state; 
    reg [STATE_SIZE_BITS - 1 : 0] prev_state;
    
    wire [13 : 0] state_counter;
    reg [13 : 0] prev_state_counter;
    
    reg [13 : 0] state_durations [STATE_FIRST_STATE : STATE_LAST_STATE];
    
    wire [8 : 0] requested_address;
    reg [8 : 0] prev_requested_address;
    
    wire state_time_expired;
    
    wire inc_address;
    wire zeroize;
    
    reg prev_read_data;
  
    function [STATE_SIZE_BITS - 1 : 0] get_next_state;
        input [STATE_SIZE_BITS - 1 : 0] current_state;
        begin
            get_next_state = {current_state[STATE_SIZE_BITS - 2 : 0], current_state[STATE_SIZE_BITS - 1]};
        end
    endfunction
    
    always @(posedge clk) begin
		if (reset) begin
			state_durations[STATE_SPAD_AND_MUX_DELAY] <= 6;
			state_durations[STATE_READ_1ST_ROW_GROUP] <= 2;
			state_durations[STATE_MUX_DELAY] <= 3;
			state_durations[STATE_READ_2ND_ROW_GROUP] <= 2;    
		end
    end
    
    assign state_time_expired = (prev_state_counter + 1 >= state_durations[prev_state]);
    assign zeroize = (reset | ~ReadData | (~prev_read_data & ReadData)); 
    assign state = zeroize ? STATE_FIRST_STATE : 
					(prev_state == STATE_LAST_STATE && prev_requested_address == 9'b111111111) ? prev_state :
					(state_time_expired ? get_next_state(prev_state) : prev_state);
    assign state_counter = (zeroize | state_time_expired) ? 0 : prev_state_counter + 1;
    assign inc_address = ~zeroize & (prev_requested_address != 9'b111111111) & (state_counter == 0) & (state == STATE_FIRST_STATE);
    assign requested_address = (zeroize) ? 0 : ((inc_address) ? prev_requested_address + 1 : prev_requested_address);
    
    assign ReadEnable = state[STATEBIT_READ_1ST_ROW_GROUP] | state[STATEBIT_READ_2ND_ROW_GROUP];
    assign HighLowRows = state[STATEBIT_MUX_DELAY] | state[STATEBIT_READ_2ND_ROW_GROUP];
    assign RowSelect = requested_address[8 : 6];
    assign ColSelect = requested_address[5 : 0];
    
    always @(posedge clk) begin
        prev_state <= state;
        prev_state_counter <= state_counter;
        prev_requested_address <= requested_address;  
        prev_read_data <= ReadData;      
    end  
    

endmodule
