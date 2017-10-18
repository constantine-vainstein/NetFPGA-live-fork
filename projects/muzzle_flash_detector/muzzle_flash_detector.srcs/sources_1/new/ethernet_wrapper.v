`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/23/2017 07:55:02 AM
// Design Name: 
// Module Name: ethernet_wrapper
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


module ethernet_wrapper(
    input clk,
	input reset,
		
	input [47:0] dest_address,
	input [47:0] source_address,
	input [15:0] type_length,
	
	input [63:0] tx_axis_frame_tdata,
	input [7:0] tx_axis_frame_tkeep,
	input tx_axis_frame_tvalid,
	input tx_axis_frame_tlast,
	output tx_axis_frame_tready,
	
	output [63:0] tx_axis_eth_tdata,
	output [7:0] tx_axis_eth_tkeep,
	output tx_axis_eth_tvalid,
	output tx_axis_eth_tlast,
	input tx_axis_eth_tready
	);
	
	localparam STATE_WAIT_FOR_START = 1;
	localparam STATE_SEND_ETH_HEADER1 = 2;
	localparam STATE_SEND_ETH_HEADER2 = 4;
	localparam STATE_SEND_DATA = 8;
	
	localparam STATE_SIZE_BITS_ = 4;
	
	reg [STATE_SIZE_BITS_ - 1 : 0] state;
	
	wire [31 : 0] axis_fifo_data_count;
	wire tx_axis_fifo_out_tvalid;
	wire tx_axis_fifo_out_tready;
	wire [63 : 0] tx_axis_fifo_out_tdata;
	wire [7 : 0] tx_axis_fifo_out_tkeep;
	wire tx_axis_fifo_out_tlast;
	
		axis_data_fifo_0 fifo (
			  .s_axis_aresetn(~reset),          // input wire s_axis_aresetn
			  .s_axis_aclk(clk),                // input wire s_axis_aclk
			  .s_axis_tvalid(tx_axis_frame_tvalid),            // input wire s_axis_tvalid
			  .s_axis_tready(tx_axis_frame_tready),            // output wire s_axis_tready
			  .s_axis_tdata(tx_axis_frame_tdata),              // input wire [63 : 0] s_axis_tdata
			  .s_axis_tkeep(tx_axis_frame_tkeep),              // input wire [7 : 0] s_axis_tkeep
			  .s_axis_tlast(tx_axis_frame_tlast),              // input wire s_axis_tlast
			  .m_axis_tvalid(tx_axis_fifo_out_tvalid),            // output wire m_axis_tvalid
			  .m_axis_tready(tx_axis_fifo_out_tready),            // input wire m_axis_tready
			  .m_axis_tdata(tx_axis_fifo_out_tdata),              // output wire [63 : 0] m_axis_tdata
			  .m_axis_tkeep(tx_axis_fifo_out_tkeep),              // output wire [7 : 0] m_axis_tkeep
			  .m_axis_tlast(tx_axis_fifo_out_tlast),              // output wire m_axis_tlast
			  .axis_data_count(axis_fifo_data_count),        // output wire [31 : 0] axis_data_count
			  .axis_wr_data_count(),
			  .axis_rd_data_count()
			);
	
	always @(posedge clk) begin
		if(reset) begin
			state <= STATE_WAIT_FOR_START;
		end else begin
			case(state)
				STATE_WAIT_FOR_START: begin
					if(tx_axis_fifo_out_tvalid) begin
						state <= STATE_SEND_ETH_HEADER1;
						end
					end
				STATE_SEND_ETH_HEADER1: begin
					if(tx_axis_eth_tready) begin
						state <= STATE_SEND_ETH_HEADER2;
					end
				end
				STATE_SEND_ETH_HEADER2: begin
					if(tx_axis_eth_tready) begin
						state <= STATE_SEND_DATA;
					end
				end
				STATE_SEND_DATA: begin
					if(tx_axis_fifo_out_tlast && tx_axis_eth_tready) begin
						state <= STATE_WAIT_FOR_START;
					end
				end
			endcase
		end
	end


	assign tx_axis_fifo_out_tready = (state == STATE_SEND_DATA) && tx_axis_eth_tready; // in all other cases don't output the data from the fifo.
	assign tx_axis_eth_tdata =  (state == STATE_WAIT_FOR_START) ? 64'hcccccccccccccccc : 
								(state == STATE_SEND_ETH_HEADER1) ? {dest_address[15:0], source_address} : 
								(state == STATE_SEND_ETH_HEADER2) ? {16'h0000 ,type_length, dest_address[47:16]} :
								/*(state == STATE_SEND_DATA)*/		tx_axis_fifo_out_tdata;
	assign tx_axis_eth_tkeep = 	(state == STATE_WAIT_FOR_START) ? 64'h0 :
								((state == STATE_SEND_ETH_HEADER1) || 
								 (state == STATE_SEND_ETH_HEADER2)) ? 8'b11111111 :
								/*(state == STATE_SEND_DATA)*/		tx_axis_fifo_out_tkeep;
	assign tx_axis_eth_tlast = 	(state == STATE_SEND_DATA) && tx_axis_fifo_out_tlast;
	assign tx_axis_eth_tvalid =	(state == STATE_SEND_ETH_HEADER1) || (state == STATE_SEND_ETH_HEADER2) ||
								((state == STATE_SEND_DATA) && tx_axis_fifo_out_tvalid);
    
	ila_2 eth_wrapper_internals (
		.clk(clk), // input wire clk
	
	
		.probe0(state), // input wire [3:0]  probe0  
		.probe1(axis_fifo_data_count), // input wire [31:0]  probe1 
		.probe2(tx_axis_fifo_out_tvalid), // input wire [0:0]  probe2 
		.probe3(tx_axis_fifo_out_tready), // input wire [0:0]  probe3 
		.probe4(tx_axis_fifo_out_tdata), // input wire [63:0]  probe4 
		.probe5(tx_axis_fifo_out_tkeep), // input wire [7:0]  probe5 
		.probe6(tx_axis_fifo_out_tlast), // input wire [0:0]  probe6 
		.probe7(tx_axis_frame_tready), // input wire [0:0]  probe7
		.probe8(tx_axis_eth_tdata),
		.probe9(tx_axis_eth_tkeep),
		.probe10(tx_axis_eth_tvalid),
		.probe11(tx_axis_eth_tlast),
		.probe12(tx_axis_eth_tready)
	);
endmodule
