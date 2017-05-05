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

`define DURATION_RESET_NS 20
`define DURATION_LATCH_NS 20

`define CLK_PERIOD_NS 10

`define DURATION_RESET_CLK (DURATION_RESET_NS / CLK_PERIOD_NS)
`define DURATION_LATCH_CLK 2
//(DURATION_LATCH_NS / CLK_PERIOD_NS)

module controller(
    output LatchSpad,
    output ResetSpad,
    output [2:0] RowSelect,
    output [5:0] ColSelect,
    input clk,
    input reset,
    input [63:0] FrameData_0,
    input [63:0] FrameData_1,
    input [63:0] FrameData_2,
    input [63:0] FrameData_3,
    input [63:0] FrameData_4,
    input [63:0] FrameData_5,
    input [63:0] FrameData_6,
    input [63:0] FrameData_7
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
    
    reg [3 : 0] state_counter;
    
    reg [3 : 0] state_durations [STATE_FIRST_STATE : STATE_LAST_STATE];
    
    reg [8 : 0] requested_address;
    
    task set_next_state;
        begin
            state = {state[STATE_SIZE_BITS - 2 : 0], state[STATE_SIZE_BITS - 1]};
        end
    endtask
    
    task commandToSpad;
        input [3 : 0] delay_clk ;
        begin
            state_counter = state_counter + 1;
            // next state
            if (state_counter >= delay_clk) begin
                set_next_state;
                state_counter = 0;
            end
        end
    endtask
    
    initial begin
        state_durations[STATE_LATCH] = 2;
        state_durations[STATE_PAUSE_LATCH_RESET] = 1;
        state_durations[STATE_RESET] = 2;
        state_durations[STATE_READDATA] = 1;        
    end
    
    assign LatchSpad = state[0];
    assign ResetSpad = state[2];
   
    always @(posedge clk) begin
        //state_next = state; // by default, if there was no reason to change the state, it will remain the same.
        
        if (reset) begin
            state_counter = 0;
            state = STATE_LATCH;
        end else begin
            commandToSpad(state_durations[state]);            
        end
        //state <= state_next;
    end

endmodule
