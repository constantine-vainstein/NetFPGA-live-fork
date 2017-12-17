`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2017 11:38:29 PM
// Design Name: 
// Module Name: fifo_tb
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


module fifo_tb(
	input wire s_axis_aresetn,
	input wire s_axis_aclk,
	input wire s_axis_tvalid,
	output wire s_axis_tready,
	input wire [63 : 0] s_axis_tdata,
	input wire [7 : 0] s_axis_tkeep,
	input wire s_axis_tlast,
	output wire m_axis_tvalid,
	input wire m_axis_tready,
	output wire [63 : 0] m_axis_tdata,
	output wire [7 : 0] m_axis_tkeep,
	output wire m_axis_tlast,
	output wire [31 : 0] axis_data_count,
	output wire [31 : 0] axis_wr_data_count,
	output wire [31 : 0] axis_rd_data_count
    );
    
    axis_data_fifo_0 fifo_for_test(
    .s_axis_aresetn(s_axis_aresetn),          // input wire s_axis_aresetn
    .s_axis_aclk(s_axis_aclk),                // input wire s_axis_aclk
    .s_axis_tvalid(s_axis_tvalid),            // input wire s_axis_tvalid
    .s_axis_tready(s_axis_tready),            // output wire s_axis_tready
    .s_axis_tdata(s_axis_tdata),              // input wire [63 : 0] s_axis_tdata
    .s_axis_tkeep(s_axis_tkeep),              // input wire [7 : 0] s_axis_tkeep
    .s_axis_tlast(s_axis_tlast),              // input wire s_axis_tlast
    .m_axis_tvalid(m_axis_tvalid),            // output wire m_axis_tvalid
    .m_axis_tready(m_axis_tready),            // input wire m_axis_tready
    .m_axis_tdata(m_axis_tdata),              // output wire [63 : 0] m_axis_tdata
    .m_axis_tkeep(m_axis_tkeep),              // output wire [7 : 0] m_axis_tkeep
    .m_axis_tlast(m_axis_tlast),              // output wire m_axis_tlast
    .axis_data_count(axis_data_count),        // output wire [31 : 0] axis_data_count
    .axis_wr_data_count(axis_wr_data_count),  // output wire [31 : 0] axis_wr_data_count
    .axis_rd_data_count(axis_rd_data_count)  // output wire [31 : 0] axis_rd_data_count
    );
    
    
endmodule
