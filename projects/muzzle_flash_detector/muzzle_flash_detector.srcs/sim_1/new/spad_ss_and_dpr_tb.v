`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/12/2017 03:38:59 AM
// Design Name: 
// Module Name: spad_ss_and_dpr_tb
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


module spad_ss_and_dpr_tb(
);
    // variables
reg clk_100MHz, reset;
reg clk_156MHz;

wire [31:0] FrameId;



wire read_enable;
wire [7:0] to_dpr_pixel_out0;
wire [7:0] to_dpr_pixel_out1;
wire [7:0] to_dpr_pixel_out2;
wire [7:0] to_dpr_pixel_out3;

wire [63:0] tx_axis_frame_tdata;
wire [7:0]  tx_axis_frame_tkeep;
wire 		 tx_axis_frame_tvalid;
wire 		 tx_axis_frame_tlast;
wire		 tx_axis_frame_tready;


initial begin
    clk = 1;
    reset <= 1;
    reset <= #10 0;
    clk_156MHz = 1;
    
end

always #5 clk_100MHz = ~clk_100MHz;
always #3.205 clk_156MHz = ~clk_156MHz;

    spad_control_subsystem spad_control_ss (
        /* input */         .clk(clk_100MHz),
        /* input */         .reset(btn[0]),
        /* output [31:0] */ .FrameId(to_dpr_frame_id),
        /* output [3:0] */  .RowSet(to_dpr_row_set),
        /* output [5:0] */  .ColSet(to_dpr_col_set),
        /* output */        .ReadEnable(to_dpr_read_enable),
        /* output [7:0] */  .PixelOut0(to_dpr_pixel_out0),
        /* output [7:0] */  .PixelOut1(to_dpr_pixel_out1),
        /* output [7:0] */  .PixelOut2(to_dpr_pixel_out2),
        /* output [7:0] */  .PixelOut3(to_dpr_pixel_out3)      
    );
    
    frame_dpr frm_buffer (
		/* input 		*/ .reset(btn[0]),
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
		/* input 		*/ .tx_axis_frame_tready(tx_axis_frame_tready)
    );
endmodule
