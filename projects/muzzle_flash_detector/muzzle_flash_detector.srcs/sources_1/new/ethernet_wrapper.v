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
    
    output reg [63:0] tx_axis_eth_tdata,
    output reg [7:0] tx_axis_eth_tkeep,
    output reg tx_axis_eth_tvalid,
    output reg tx_axis_eth_tlast,
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
    reg tx_axis_fifo_out_tready;
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
		
	ila_2 eth_wrapper_internals (
		.clk(clk), // input wire clk
	
	
		.probe0(state), // input wire [3:0]  probe0  
		.probe1(axis_fifo_data_count), // input wire [31:0]  probe1 
		.probe2(tx_axis_fifo_out_tvalid), // input wire [0:0]  probe2 
		.probe3(tx_axis_fifo_out_tready), // input wire [0:0]  probe3 
		.probe4(tx_axis_fifo_out_tdata), // input wire [63:0]  probe4 
		.probe5(tx_axis_fifo_out_tkeep), // input wire [7:0]  probe5 
		.probe6(tx_axis_fifo_out_tlast), // input wire [0:0]  probe6 
		.probe7(tx_axis_frame_tready) // input wire [0:0]  probe7
	);
	
    
    always @(posedge clk) begin
    	if(reset) begin
    		state <= STATE_WAIT_FOR_START;
    		
    		tx_axis_fifo_out_tready <= 0;
    		tx_axis_eth_tdata <= 64'hcccccccccccccccc;
    		tx_axis_eth_tkeep <= 64'h0;
    		tx_axis_eth_tlast <= 1'b0;
    		tx_axis_eth_tvalid <= 1'b0;
		end else begin
			case(state)
				STATE_WAIT_FOR_START: begin
					if(tx_axis_fifo_out_tvalid) begin
						state <= STATE_SEND_ETH_HEADER1;
					end
					tx_axis_fifo_out_tready <= 0;
					tx_axis_eth_tdata <= 64'hcccccccccccccccc;
					tx_axis_eth_tkeep <= 64'h0;
					tx_axis_eth_tlast <= 1'b0;
					tx_axis_eth_tvalid <= 1'b0;
				end
				STATE_SEND_ETH_HEADER1: begin
					if(tx_axis_eth_tready) begin
						state <= STATE_SEND_ETH_HEADER2;
					end
					tx_axis_fifo_out_tready <= 0;
					tx_axis_eth_tdata <= {dest_address[15:0], source_address};
					tx_axis_eth_tkeep <= 8'b11111111;
					tx_axis_eth_tlast <= 1'b0;
					tx_axis_eth_tvalid <= 1'b1;
				end
				STATE_SEND_ETH_HEADER2: begin
					if(tx_axis_eth_tready) begin
						state <= STATE_SEND_DATA;
					end
					tx_axis_fifo_out_tready <= 0;
					tx_axis_eth_tdata <= {16'h0000 ,type_length, dest_address[47:16]};
					tx_axis_eth_tkeep <= 8'b11111111;
					tx_axis_eth_tlast <= 1'b0;
					tx_axis_eth_tvalid <= 1'b1;
				end
				STATE_SEND_DATA: begin
					if(tx_axis_fifo_out_tlast && tx_axis_eth_tready) begin
						state <= STATE_WAIT_FOR_START;
					end
					tx_axis_fifo_out_tready <= tx_axis_eth_tready;
					tx_axis_eth_tdata <= tx_axis_fifo_out_tdata;
					tx_axis_eth_tkeep <= tx_axis_fifo_out_tkeep;
					tx_axis_eth_tlast <= tx_axis_fifo_out_tlast;
					tx_axis_eth_tvalid <= tx_axis_fifo_out_tvalid;
				end
			endcase
		end
    end
    

endmodule
