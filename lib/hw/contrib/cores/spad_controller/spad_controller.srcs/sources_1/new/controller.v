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
    
    // ---------------- wires and regs
    
    reg [STATE_SIZE_BITS - 1 : 0] state; 
    reg [STATE_SIZE_BITS - 1 : 0] state_next;
    
    reg [3 : 0] state_counter;
    
    //begin
       assign LatchSpad = state_next[0];
       assign ResetSpad = state_next[2];
    //end
   
    always @(posedge clk) begin
        state_next = state; // by default, if there was no reason to change the state, it will remain the same.
        
        if (reset) begin
            state_counter = 0;
            state_next = STATE_LATCH;
        end else begin
        
            case(state)
                STATE_LATCH: begin
                    // external effect
                    // internal effect
                    state_counter = state_counter + 1;
                    // next state
                    if (state_counter >= 2) begin
                        state_next = STATE_PAUSE_LATCH_RESET;
                        state_counter = 0;
                    end                    
                end
                
                STATE_PAUSE_LATCH_RESET: begin
                    // external effect
                    // internal effect
                    state_counter = state_counter + 1;
                    // next state
                    if (state_counter >= 1) begin
                        state_next = STATE_RESET;
                        state_counter = 0;
                    end                    
                end
                
                STATE_RESET: begin
                    // external effect
                    // internal effect
                    state_counter = state_counter + 1;
                    // next state
                    if (state_counter >= 2) begin
                        state_next = STATE_READDATA;
                        state_counter = 0;
                    end   
                end
                
                STATE_READDATA: begin
                    // external effect
                    // internal effect
                    state_counter = state_counter + 1;
                    // next state
                    if (state_counter >= 1) begin
                        state_next = STATE_RESET;
                        state_counter = 0;
                    end 
                end
                
            endcase
        end
        state <= state_next;
    end

endmodule
