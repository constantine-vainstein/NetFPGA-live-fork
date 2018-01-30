`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2017 04:43:37 AM
// Design Name: 
// Module Name: data_path
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
`define debug_dpr

module data_path(
	// Clock inputs
	input clk_156MHz,
	input clk_100MHz,
	input spad_ss_reset,
	input eth_ss_reset, // ethernet subsystem reset
	
	// SPAD control subsystem
	input is_emulated,
	// interface to SPAD
	output latch_spad,
	output reset_spad,
	output [5:0] col_select,
	output [2:0] row_select,
	output row_group,
	input [7:0] PixelSpad0,
	input [7:0] PixelSpad1,
	input [7:0] PixelSpad2,
	input [7:0] PixelSpad3,
	
	// interface to frames data MAC
	output [63:0] tx_axis_frame_eth_tdata,
	output [7:0]  tx_axis_frame_eth_tkeep,
	output tx_axis_frame_eth_tvalid,
	output tx_axis_frame_eth_tlast,
	input tx_axis_frame_eth_tready,
	
	// interface to control MAC 
	output [63 : 0]	tx_axis_control_tdata,
	output [7 : 0] 	tx_axis_control_tkeep,
	output 			tx_axis_control_tvalid,
	output 			tx_axis_control_tlast,
	input			tx_axis_control_tready,
	
	input [63 : 0]	rx_axis_control_tdata,
	input [7 : 0] 	rx_axis_control_tkeep,
	input 			rx_axis_control_tvalid,
	input 			rx_axis_control_tlast,
	output			rx_axis_control_tready  
);



wire [31:0]  to_dpr_frame_id;
wire [3:0]   to_dpr_row_set;
wire [5:0]   to_dpr_col_set;
wire         to_dpr_read_enable;
wire [7:0]   to_dpr_pixel_out0;
wire [7:0]   to_dpr_pixel_out1;
wire [7:0]   to_dpr_pixel_out2;
wire [7:0]   to_dpr_pixel_out3;

wire [63:0] tx_axis_frame_tdata;
wire [7:0]  tx_axis_frame_tkeep;
wire tx_axis_frame_tvalid;
wire tx_axis_frame_tlast;
wire tx_axis_frame_tready;


wire [15 : 0] payload_length;


 spad_control_subsystem spad_control_ss (
     /* input */         .clk(clk_100MHz),
     /* input */         .reset(spad_ss_reset),
     /* output [31:0] */ .FrameId(to_dpr_frame_id),
     /* output [3:0] */  .RowSet(to_dpr_row_set),
     /* output [5:0] */  .ColSet(to_dpr_col_set),
     /* output */        .ReadEnable(to_dpr_read_enable),
     /* output [7:0] */  .PixelOut0(to_dpr_pixel_out0),
     /* output [7:0] */  .PixelOut1(to_dpr_pixel_out1),
     /* output [7:0] */  .PixelOut2(to_dpr_pixel_out2),
     /* output [7:0] */  .PixelOut3(to_dpr_pixel_out3),
     					.isEmulated(is_emulated),
	   // interface to SPAD
    /* output */		.latch_spad(latch_spad),
    /* output */ 		.reset_spad(reset_spad),
    /* output [5:0] */ 	.col_select(col_select),
    /* output [2:0] */ 	.row_select(row_select),
    /* output */ 		.row_group_select(row_group),
    
    /* input [7:0] */ 	.PixelSpad0(PixelSpad0),
    /* input [7:0] */ 	.PixelSpad1(PixelSpad1),
    /* input [7:0] */ 	.PixelSpad2(PixelSpad2),
    /* input [7:0] */ 	.PixelSpad3(PixelSpad3)    
 );
 
`ifdef debug_dpr
 ila_0 input_to_frm_buffer (
 	.clk(clk_100MHz), // input wire clk
 
 
 	.probe0(to_dpr_frame_id), // input wire [31:0]  probe1 
 	.probe1(to_dpr_row_set), // input wire [3:0]  probe2 
 	.probe2(to_dpr_col_set), // input wire [5:0]  probe3 
 	.probe3(to_dpr_read_enable), // input wire [0:0]  probe4 
 	.probe4(to_dpr_pixel_out0), // input wire [7:0]  probe5 
 	.probe5(to_dpr_pixel_out1), // input wire [7:0]  probe6 
 	.probe6(to_dpr_pixel_out2), // input wire [7:0]  probe7 
 	.probe7(to_dpr_pixel_out3) // input wire [7:0]  probe8
 );
 
`endif    
 frame_dpr frm_buffer (
		/* input 		*/ .spad_reset(spad_ss_reset),
		/* input        */ .eth_reset(eth_ss_reset),
		/*              */ 
		/* input 		*/ .wrClk(clk_100MHz),
		/* input [31:0] */ .wrFrameId(to_dpr_frame_id),
		/* input [3:0] 	*/ .wrRowSet(to_dpr_row_set),
		/* input [5:0] 	*/ .wrColSet(to_dpr_col_set),
		/* input 		*/ .wrValid(to_dpr_read_enable),
		/* output 		*/ .wrEnable(),
		/* input [7:0] 	*/ .wrPixel0(to_dpr_pixel_out0),
		/* input [7:0] 	*/ .wrPixel1(to_dpr_pixel_out1),
		/* input [7:0] 	*/ .wrPixel2(to_dpr_pixel_out2),
		/* input [7:0] 	*/ .wrPixel3(to_dpr_pixel_out3),
		/*              */  
		/* input 		*/ .rdClk(clk_156MHz),
		/* output [63:0]*/ .tx_axis_frame_tdata(tx_axis_frame_tdata),
		/* output [7:0] */ .tx_axis_frame_tkeep(tx_axis_frame_tkeep),
		/* output 		*/ .tx_axis_frame_tvalid(tx_axis_frame_tvalid),
		/* output 		*/ .tx_axis_frame_tlast(tx_axis_frame_tlast),
		/* input 		*/ .tx_axis_frame_tready(tx_axis_frame_tready),
						   .payload_length(payload_length)
 );
 
 ethernet_wrapper eth_wrap(
 /* input */	.clk(clk_156MHz),
 /* input */	.reset(eth_ss_reset),
	/*       */
	/* input */	.dest_address(48'hffffffffffff),
 /* input */	.source_address(48'h28cf013e1800),
 /* input */	.type_length(payload_length), 
 /*       */
 /* input */	.tx_axis_frame_tdata(tx_axis_frame_tdata),
 /* input */	.tx_axis_frame_tkeep(tx_axis_frame_tkeep),
 /* input */	.tx_axis_frame_tvalid(tx_axis_frame_tvalid),
 /* input */	.tx_axis_frame_tlast(tx_axis_frame_tlast),
 /* output*/ .tx_axis_frame_tready(tx_axis_frame_tready),
 /*       */
 /* output*/ .tx_axis_eth_tdata(tx_axis_frame_eth_tdata),
 /* output*/ .tx_axis_eth_tkeep(tx_axis_frame_eth_tkeep),
 /* output*/ .tx_axis_eth_tvalid(tx_axis_frame_eth_tvalid),
 /* output*/ .tx_axis_eth_tlast(tx_axis_frame_eth_tlast),
 /* input */	.tx_axis_eth_tready(tx_axis_frame_eth_tready)
 );
 
 
 control_hub control_hub_i(
	/*input 			*/ .reset(eth_ss_reset),
 /*input 			*/ .clk156(clk_156MHz),
 /*                  */ 
 /*output [63 : 0]	*/ .tx_axis_control_tdata(tx_axis_control_tdata),
 /*output [7 : 0]	*/ .tx_axis_control_tkeep(tx_axis_control_tkeep),
 /*output 			*/ .tx_axis_control_tvalid(tx_axis_control_tvalid),
 /*output 			*/ .tx_axis_control_tlast(tx_axis_control_tlast),
 /*input 			*/ .tx_axis_control_tready(tx_axis_control_tready),
 /*                  */ 
 /*input [63 : 0] 	*/ .rx_axis_control_tdata(rx_axis_control_tdata),
 /*input [7 : 0] 	*/ .rx_axis_control_tkeep(rx_axis_control_tkeep),
 /*input 			*/ .rx_axis_control_tvalid(rx_axis_control_tvalid),
 /*input 			*/ .rx_axis_control_tlast(rx_axis_control_tlast),
 /*output 			*/ .rx_axis_control_tready(rx_axis_control_tready)
 );
 


 
 

`ifdef debug
 my_ila input_to_eth_wrapper (
  	.clk(clk_156MHz), // input wire clk 
 
		.probe0(clk_156MHz), // input wire [0:0]  probe0  
		.probe1(tx_axis_frame_tdata), // input wire [63:0]  probe1 
		.probe2(tx_axis_frame_tkeep), // input wire [7:0]  probe2 
		.probe3(tx_axis_frame_tvalid), // input wire [0:0]  probe3 
		.probe4(tx_axis_frame_tlast), // input wire [0:0]  probe4 
		.probe5(tx_axis_frame_tready) // input wire [0:0]  probe5   
 );
`endif



	

endmodule
