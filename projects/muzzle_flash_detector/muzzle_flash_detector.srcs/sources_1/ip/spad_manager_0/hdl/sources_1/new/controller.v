`timescale 1ns / 1ps 
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.04.2017 18:59:16
// Design Name: 
// Module Name: controller
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

`include "spad_controller_definitions.vh" 

module controller(
    output LatchSpad,
    output ResetSpad,
    output ReadEnable,
    output [2:0] RowSelect,
    output [5:0] ColSelect,
    output HighLowRows,
    output reg [31:0] FrameId,
    input [`MAXIMAL_STATE_DURATION_CLKS_BITS - 1 : 0] FrameDurationRequestedClks,
    output FrameDurationChangeEnable,
    output [`MAXIMAL_STATE_DURATION_CLKS_BITS - 1 : 0] FrameDurationCurrentClks,
    input clk,
    input reset
    );
    
    // ------------------- Internal Parameters
    localparam STATE_LATCH = 1;
    localparam STATE_PAUSE_LATCH_RESET = 2;
    localparam STATE_RESET = 4;
    localparam STATE_READDATA = 8;
    localparam STATE_SIZE_BITS = 4;
    localparam STATE_FIRST_STATE = STATE_LATCH;
    localparam STATE_LAST_STATE = STATE_READDATA;
    
    // ---------------- wires and regs
    
    reg [STATE_SIZE_BITS - 1 : 0] state; 
    
    reg [STATE_SIZE_BITS - 1 : 0] prev_state;
    
    reg [`MAXIMAL_STATE_DURATION_CLKS_BITS : 0] state_counter;
    
    reg [`MAXIMAL_STATE_DURATION_CLKS_BITS : 0] state_durations [STATE_FIRST_STATE : STATE_LAST_STATE];
    
    wire state_time_expired;
    
    wire read_data;
    

    
    task set_next_state;
        begin
            state = {state[STATE_SIZE_BITS - 2 : 0], state[STATE_SIZE_BITS - 1]};
        end
    endtask
    
   
    task commandToSpad;
        input is_next_state_needed;
        begin
            state_counter = state_counter + 1;
            // next state
            if (is_next_state_needed) begin
                set_next_state;
                state_counter = 0;
            end
        end
    endtask
    
    initial begin
        state_durations[STATE_LATCH] = 2;
        state_durations[STATE_PAUSE_LATCH_RESET] = 1;
        state_durations[STATE_RESET] = 2;
        state_durations[STATE_READDATA] = 4608;   
    end
    
    assign LatchSpad = state[0];
    assign ResetSpad = state[2];
    assign read_data = state[3];
    assign state_time_expired = (state_counter + 1 >= state_durations[state]);
    
    assign FrameDurationChangeEnable = ~read_data;
    
    assign FrameDurationCurrentClks = state_durations[STATE_LATCH] + 
                                    state_durations[STATE_PAUSE_LATCH_RESET] +
                                    state_durations[STATE_RESET] +
                                    state_durations[STATE_READDATA];  
  
    always @(posedge clk) begin
        
        if (reset) begin
            state_counter = 0;
            FrameId = 0;
            state = STATE_LATCH;
            state_durations[STATE_READDATA] =   `MINIMAL_FRAME_DURATION_CLKS - 
                                                (state_durations[STATE_LATCH] + 
                                                state_durations[STATE_PAUSE_LATCH_RESET] + 
                                                state_durations[STATE_RESET]);
        end else begin
            commandToSpad(state_time_expired); 
            // increment frame counter
            if (state == STATE_LATCH & prev_state != STATE_LATCH) begin
                FrameId = FrameId + 1;
            end
            // Handle Frame duration  change
            if (FrameDurationChangeEnable &
                    (FrameDurationRequestedClks >= `MINIMAL_FRAME_DURATION_CLKS)) 
            begin
                if (FrameDurationRequestedClks != FrameDurationCurrentClks) begin
                    // Reset FrameId in case the read rate has changed.
                    FrameId = 0;
                end
                state_durations[STATE_READDATA] =   FrameDurationRequestedClks - 
                                                    (state_durations[STATE_LATCH] + 
                                                    state_durations[STATE_PAUSE_LATCH_RESET] + 
                                                    state_durations[STATE_RESET]); 
             
            end
            
        end
        
        prev_state <= state;
        
    end
    
    read_process_manager read_process_manager (
            .clk(clk),
            .reset(reset),
            .ReadData(read_data),
            .ReadEnable(ReadEnable),
            .RowSelect(RowSelect),
            .ColSelect(ColSelect),
            .HighLowRows(HighLowRows)
            );

endmodule
