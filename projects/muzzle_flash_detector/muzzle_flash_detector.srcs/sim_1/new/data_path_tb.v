`timescale 1ns / 100ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2017 07:45:39 AM
// Design Name: 
// Module Name: data_path_tb
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


module data_path_tb(

    );
    
	reg clk_100MHz, reset;
    reg clk_156MHz;
    reg is_emulated;
    
    initial begin
        clk_100MHz = 1;
        clk_156MHz = 1;
        reset = 1;
        reset = #10 0;
        is_emulated = 0;
        is_emulated = #100000 1;
        
    end
    
    always #5 clk_100MHz = ~clk_100MHz;
    always #3.205 clk_156MHz = ~clk_156MHz;
    
	 
    
    wire spad_ss_reset = reset;
    wire eth_ss_reset = reset;
    
    wire latch_spad;
    wire reset_spad;
    wire [5:0] col_select;
    wire [2:0] row_select;
    wire row_group;
    wire [7:0] PixelSpad0;
    wire [7:0] PixelSpad1;
    wire [7:0] PixelSpad2;
    wire [7:0] PixelSpad3;
    
    // interface to frames data MAC
    wire [63:0] tx_axis_frame_eth_tdata;
    wire [7:0]  tx_axis_frame_eth_tkeep;
    wire tx_axis_frame_eth_tvalid;
    wire tx_axis_frame_eth_tlast;
    wire tx_axis_frame_eth_tready;// = 1'b1;
    
    // interface to control MAC 
    wire [63 : 0]	tx_axis_control_tdata;
    wire [7 : 0] 	tx_axis_control_tkeep;
    wire 			tx_axis_control_tvalid;
    wire 			tx_axis_control_tlast;
    wire			tx_axis_control_tready = 1'b1;
    
    wire [63 : 0]	rx_axis_control_tdata;
    wire [7 : 0] 	rx_axis_control_tkeep;
    wire 			rx_axis_control_tvalid;
    wire 			rx_axis_control_tlast;
    wire			rx_axis_control_tready;
    
    data_path data_path_i_sim(
    	// Clock inputs
    	/* input */			.clk_156MHz(clk_156MHz),
    	/* input */			.clk_100MHz(clk_100MHz),
    	/* input */			.spad_ss_reset(spad_ss_reset),
    	/* input */			.eth_ss_reset(eth_ss_reset), // ethernet subsystem reset
    	
    	// SPAD control subsystem
    	/* input */			.is_emulated(is_emulated),
    	// interface to SPAD
    	/* output 		*/ 	.latch_spad(latch_spad),
    	/* output 		*/ 	.reset_spad(reset_spad),
    	/* output [5:0] */ 	.col_select(col_select),
    	/* output [2:0] */ 	.row_select(row_select),
    	/* output 		*/ 	.row_group(row_group),
    	/* input [7:0] 	*/ 	.PixelSpad0(PixelSpad0),
    	/* input [7:0] 	*/ 	.PixelSpad1(PixelSpad1),
    	/* input [7:0] 	*/ 	.PixelSpad2(PixelSpad2),
    	/* input [7:0] 	*/ 	.PixelSpad3(PixelSpad3),
    	
    	// interface to frames data MAC
    	/* output [63:0] */ .tx_axis_frame_eth_tdata(tx_axis_frame_eth_tdata),
    	/* output [7:0]  */ .tx_axis_frame_eth_tkeep(tx_axis_frame_eth_tkeep),
    	/* output 		 */ .tx_axis_frame_eth_tvalid(tx_axis_frame_eth_tvalid),
    	/* output 		 */ .tx_axis_frame_eth_tlast(tx_axis_frame_eth_tlast),
    	/* input 		 */ .tx_axis_frame_eth_tready(tx_axis_frame_eth_tready),
    	
    	// interface to control MAC 
    	/* output [63:0]*/ 	.tx_axis_control_tdata(tx_axis_control_tdata),
    	/* output [7:0]	*/ 	.tx_axis_control_tkeep(tx_axis_control_tkeep),
    	/* output 		*/ 	.tx_axis_control_tvalid(tx_axis_control_tvalid),
    	/* output 		*/ 	.tx_axis_control_tlast(tx_axis_control_tlast),
    	/* input		*/ 	.tx_axis_control_tready(tx_axis_control_tready),
    	
    	/* input [63:0]	*/ 	.rx_axis_control_tdata(rx_axis_control_tdata),
    	/* input [7:0] 	*/ 	.rx_axis_control_tkeep(rx_axis_control_tkeep),
    	/* input 		*/ 	.rx_axis_control_tvalid(rx_axis_control_tvalid),
    	/* input 		*/ 	.rx_axis_control_tlast(rx_axis_control_tlast),
    	/* output		*/ 	.rx_axis_control_tready(rx_axis_control_tready) 
    );
    
    save_eth_to_file save_eth_to_file_i(
    	.clk(clk_156MHz),
    	.reset(eth_ss_reset),
    	/* input [63:0] */ .tx_axis_frame_eth_tdata(tx_axis_frame_eth_tdata),
    	/* input [7:0]  */ .tx_axis_frame_eth_tkeep(tx_axis_frame_eth_tkeep),
    	/* input 		 */ .tx_axis_frame_eth_tvalid(tx_axis_frame_eth_tvalid),
    	/* input 		 */ .tx_axis_frame_eth_tlast(tx_axis_frame_eth_tlast),
    	/* output 		 */ .tx_axis_frame_eth_tready(tx_axis_frame_eth_tready)    	
    );
endmodule
