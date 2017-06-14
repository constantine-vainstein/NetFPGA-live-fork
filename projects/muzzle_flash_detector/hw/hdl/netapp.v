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
    output s_axis_tready,
    input s_axis_tlast,
    
    // output (master) interface
    output [C_M_AXIS_DATA_WIDTH - 1 : 0] m_axis_tdata,
    output [C_M_AXIS_DATA_WIDTH / 8 - 1 : 0] m_axis_tkeep,
    output [C_M_AXIS_TUSER_WIDTH - 1 : 0] m_axis_tuser,
    output m_axis_tvalid,
    input m_axis_tready,
    output m_axis_tlast
    );
    
    localparam ETHERTYPE_ARP = 16'h0806;
    
    wire [47:0] dst_mac;
    wire [47:0] src_mac;   
    wire [15:0] ethertype;
    wire eth_data_valid;
   
    
    eth_parser
    #(.C_S_AXIS_DATA_WIDTH (C_S_AXIS_DATA_WIDTH),
    .C_S_AXIS_TUSER_WIDTH (C_S_AXIS_TUSER_WIDTH))
    eth_parser
      (.tdata (s_axis_tdata),
       .tuser (s_axis_tuser),
       .valid (s_axis_tvalid & s_axis_tready),
       .tlast (s_axis_tlast),
       
       .dst_mac (dst_mac),
       .src_mac (src_mac),
       .ethertype (ethertype),
       .eth_data_valid (eth_data_valid),
       .reset (~axis_resetn),
       
       .clk      (axis_aclk));
    
    arp_handler arp_handler_inst(
        .axis_aclk(axis_aclk),
        .axis_resetn(axis_resetn),
            
            // input (slave) interface
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tkeep(s_axis_tkeep),
        .s_axis_tuser(s_axis_tuser),
        .s_axis_tvalid(s_axis_tvalid & eth_data_valid & (ethertype == ETHERTYPE_ARP)),
        .s_axis_tready(s_axis_tready),
        .s_axis_tlast(s_axis_tlast),
            
            // output (master) interface
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tkeep(m_axis_tkeep),
        .m_axis_tuser(m_axis_tuser),
        .m_axis_tvalid(m_axis_tvalid),
        .m_axis_tready(m_axis_tready),
        .m_axis_tlast(m_axis_tlast)
    );
    
    assign m_axis_tdata = s_axis_tdata;
    assign m_axis_tkeep = s_axis_tkeep;
    assign m_axis_tuser = s_axis_tuser;
    assign m_axis_tvalid = s_axis_tvalid;
    assign s_axis_tready = 1;
    assign m_axis_tlast = s_axis_tlast;
endmodule
