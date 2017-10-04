`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/18/2017 02:17:02 AM
// Design Name: 
// Module Name: port_wrapper
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


`timescale 1ps / 1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module port_wraper
  (
   // Clock inputs
   input             xphy_refclk_p,
   input             xphy_refclk_n,
   input 			 clk_100MHz,

   // Example design control inputs
   //unused port input             pcs_loopback,
   input             [1:0] btn,
   //unused port input             reset_error,
   //unused port input             insert_error,
   //unused port input             enable_pat_gen,
   //unused port input             enable_pat_check,
   //unused port output            serialized_stats,
   //unused port input             sim_speedup_control,
   //unused port input             enable_custom_preamble,
   
   input             sfp0_tx_fault,
   input             sfp0_tx_abs,

   // Example design status outputs
   //unused port output            frame_error,
   //unused port output            gen_active_flash,
   //unused port output            check_active_flash,
   //unused port output            block_lock,
   //unused port output            qplllock_out,
   output            sfp0_tx_disable,

   // Serial I/O from/to transceiver
   input            ETH1_TX_P,
   input            ETH1_TX_N,
   output             ETH1_RX_P,
   output             ETH1_RX_N,
   
   // leds
   output sfp0_tx_led,
   output sfp0_rx_led,
   
   // debug
   output [1:0] leds
   );
   
   wire resetdone;
   
   wire clk_156MHz;
   
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
   
   wire [63:0] tx_axis_frame_eth_tdata;
   wire [7:0]  tx_axis_frame_eth_tkeep;
   wire tx_axis_frame_eth_tvalid;
   wire tx_axis_frame_eth_tlast;
   wire tx_axis_frame_eth_tready;
   
   axi_10g_ethernet_0_example_design  example_design (
    /* input */            .xphy_refclk_p(xphy_refclk_p),
    /* input */            .xphy_refclk_n(xphy_refclk_n),
    /* output*/			   .clk156_out(clk_156MHz),
    /* input */            .pcs_loopback(0),
    /* input */            .reset(btn[0]),
    /* input */            .reset_error(btn[1]),
    /* input */            .insert_error(0),
    /* input  */           .enable_pat_gen(1),
    /* input  */           .enable_pat_check(0),
    /* output */           .serialized_stats(),
    /* input  */           .sim_speedup_control(0),
    /* input  */           .enable_custom_preamble(0),
    /*        */           .tx_fault(sfp0_tx_fault),
    /* input  */           .tx_abs(sfp0_tx_abs),
    /*        */           
    /* output */           .frame_error(leds[1]),
    /* output */           .gen_active_flash(leds[0]),
    /* output */           .check_active_flash(), //indicates a non-dropped data has been received
    /* output */           .block_lock(),
    /* output */           .qplllock_out(),
    /* output */           .tx_disable(sfp0_tx_disable),
    /* output */           .resetdone(resetdone),
    /*        */           
    /*        */           
    /* output */           .txp(ETH1_RX_P),
    /* output */           .txn(ETH1_RX_N),
    /* input  */           .rxp(ETH1_TX_P),
    /* input  */           .rxn(ETH1_TX_N),
       // Axi for input frame
	/* input [63:0] 	*/ .tx_axis_frame_tdata(tx_axis_frame_eth_tdata),
    /* input [7:0] 	*/ 	   .tx_axis_frame_tkeep(tx_axis_frame_eth_tkeep),
    /* input 		*/ 	   .tx_axis_frame_tvalid(tx_axis_frame_eth_tvalid),
    /* input 		*/ 	   .tx_axis_frame_tlast(tx_axis_frame_eth_tlast),
    /* output 		*/ 	   .tx_axis_frame_tready(tx_axis_frame_eth_tready)
    );
    
    //assign leds[0] = gen_active_flash;
    
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
        /* output [7:0] */  .PixelOut3(to_dpr_pixel_out3),
        					.isEmulated(1)      
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
    
    ethernet_wrapper eth_wrap(
    /* input */	.clk(clk_156MHz),
    /* input */	.reset(btn[0]),
	/*       */
	/* input */	.dest_address(48'hffffffffffff),
    /* input */	.source_address(48'h28cf013e1800),
    /* input */	.type_length(16'h0008),
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
    
    assign sfp0_tx_led = resetdone;
    assign sfp0_rx_led = resetdone;
    
    my_ila your_instance_name (
    	.clk(clk_156MHz), // input wire clk
    
    
    	.probe0(clk_156MHz), // input wire [0:0]  probe0  
    	.probe1(tx_axis_frame_eth_tdata), // input wire [63:0]  probe1 
    	.probe2(tx_axis_frame_eth_tkeep), // input wire [7:0]  probe2 
    	.probe3(tx_axis_frame_eth_tvalid), // input wire [0:0]  probe3 
    	.probe4(tx_axis_frame_eth_tlast), // input wire [0:0]  probe4 
    	.probe5(tx_axis_frame_eth_tready) // input wire [0:0]  probe5
    );
endmodule