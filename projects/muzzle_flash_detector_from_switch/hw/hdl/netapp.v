`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/14/2017 09:40:15 AM
// Design Name: 
// Module Name: netapp
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


module netapp #(    
    // AXI Stream Data Width
    parameter C_M_AXIS_DATA_WIDTH=256,
    parameter C_S_AXIS_DATA_WIDTH=256,
    parameter C_M_AXIS_TUSER_WIDTH=128,
    parameter C_S_AXIS_TUSER_WIDTH=128
    )
    (

    input axis_aclk,
    input axis_resetn,
    
    // input (slave) interface
    input [C_S_AXIS_DATA_WIDTH - 1 : 0] s_axis_tdata,
    input [C_S_AXIS_DATA_WIDTH / 8 - 1 : 0] s_axis_tkeep,
    input [C_S_AXIS_TUSER_WIDTH - 1 : 0] s_axis_tuser,
    input s_axis_tvalid,
    output reg s_axis_tready,
    input s_axis_tlast,
    
    // output (master) interface
    output reg [C_M_AXIS_DATA_WIDTH - 1 : 0] m_axis_tdata,
    output reg [C_M_AXIS_DATA_WIDTH / 8 - 1 : 0] m_axis_tkeep,
    output reg [C_M_AXIS_TUSER_WIDTH - 1 : 0] m_axis_tuser,
    output reg m_axis_tvalid,
    input m_axis_tready,
    output reg m_axis_tlast
    );
    
    localparam STATE_1ST_PORTION = 1;
    localparam STATE_2ND_PORTION = 2;
    localparam STATE_NUM_OF_STATES = 2;
    
    wire [47:0] dst_mac;
    wire [47:0] src_mac;   
    wire [15:0] ethertype;
    wire eth_data_valid;
    
    reg [STATE_NUM_OF_STATES - 1 : 0] next_state;
    reg [STATE_NUM_OF_STATES - 1 : 0] state;
    reg [399 : 0] sample_frame;
   
    
    always @(posedge axis_aclk) begin
        sample_frame = 400'h4941564154534F43_0000_1600_D007_D007_0200A8C0_0100A8C0_be2e_11_0A_0000_c000_1c00_00_45_0008_010000feca00_b62d2cede000;
        if(~axis_resetn) begin
            next_state = STATE_1ST_PORTION;            
            m_axis_tvalid = 0;
            m_axis_tlast = 0;
        end 
        else begin

            m_axis_tvalid = 1;
            case (state)
            STATE_1ST_PORTION: begin
                m_axis_tdata = sample_frame [255 : 0];
                m_axis_tlast = 0;
                m_axis_tkeep = 32'hffffffff;
                if(m_axis_tready) begin
                    next_state = STATE_2ND_PORTION; 
                end
            end
            
            STATE_2ND_PORTION: begin
                m_axis_tdata = {176'b0, sample_frame [335 : 256]};
                m_axis_tlast = 1;
                m_axis_tkeep = 32'h0002ffff;
                if(m_axis_tready) begin
                    next_state = STATE_1ST_PORTION; 
                end
            
            end
            endcase
        end
        
        state = next_state;
    end
    
endmodule
