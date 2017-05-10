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
    output ReadEnable,
    output [2:0] RowSelect,
    output [5:0] ColSelect,
    output HighLowRows,
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
    
    reg [13 : 0] state_counter;
    
    reg [13 : 0] state_durations [STATE_FIRST_STATE : STATE_LAST_STATE];
    
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
  
    always @(posedge clk) begin
        
        if (reset) begin
            state_counter = 0;
            state = STATE_LATCH;
        end else begin
            commandToSpad(state_time_expired); 
        end
        
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
