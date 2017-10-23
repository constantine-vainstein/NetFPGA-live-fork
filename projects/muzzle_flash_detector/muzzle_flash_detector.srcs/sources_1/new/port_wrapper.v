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
   input 			 fpga_sysclk_n,
   input 			 fpga_sysclk_p,

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
   wire [15 : 0] payload_length;
   
   wire clk_100MHz;
   wire clk_100MHz_locked;
   
   wire frame_error;
   wire gen_active_flash;
   wire check_active_flash;
   
   wire reset;
   wire spad_ss_reset;
   wire eth_ss_reset; // ethernet subsystem reset
   
   wire block_lock;
   
  
   axi_clocking axi_clocking_i (
       .clk_in_p               (fpga_sysclk_p),
       .clk_in_n               (fpga_sysclk_n),
       .clk_100                (clk_100MHz),       // generates 100MHz clk
       .locked                 (clk_100MHz_locked),
       .reset                 (btn[0])
     );
     
   all_reset sys_rst_i (
	   /* input  */ .clk_spad(clk_100MHz),
	   /* input  */ .clk_eth(clk_156MHz),
	   /* input  */ .reset(btn[0]),
	   /* input  */ .block_lock(block_lock),
	   /* output */ .reset_spad(spad_ss_reset),
	   /* output */ .reset_eth(eth_ss_reset)
   );
     
   axi_10g_ethernet_0_example_design  example_design (
    /* input */            .xphy_refclk_p(xphy_refclk_p),
    /* input */            .xphy_refclk_n(xphy_refclk_n),
    /* output*/			   .clk156_out(clk_156MHz),
    /* input */            .pcs_loopback(0),
    /* input */            .reset(eth_ss_reset),
    /* input */            .reset_error(btn[1]),
    /* input */            .insert_error(0),
    /* input  */           .enable_pat_gen(0),
    /* input  */           .enable_pat_check(0),
    /* output */           .serialized_stats(),
    /* input  */           .sim_speedup_control(0),
    /* input  */           .enable_custom_preamble(0),
    /*        */           .tx_fault(sfp0_tx_fault),
    /* input  */           .tx_abs(sfp0_tx_abs),
    /*        */           
    /* output */           .frame_error(frame_error),
    /* output */           .gen_active_flash(gen_active_flash),
    /* output */           .check_active_flash(check_active_flash), //indicates a non-dropped data has been received
    /* output */           .block_lock(block_lock),
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
        /* input */         .reset(spad_ss_reset),
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
    
    ila_0 input_to_frm_buffer (
    	.clk(clk_100MHz), // input wire clk
    
    
    	.probe0(0), // input wire [0:0]  probe0  
    	.probe1(to_dpr_frame_id), // input wire [31:0]  probe1 
    	.probe2(to_dpr_row_set), // input wire [3:0]  probe2 
    	.probe3(to_dpr_col_set), // input wire [5:0]  probe3 
    	.probe4(to_dpr_read_enable), // input wire [0:0]  probe4 
    	.probe5(to_dpr_pixel_out0), // input wire [7:0]  probe5 
    	.probe6(to_dpr_pixel_out1), // input wire [7:0]  probe6 
    	.probe7(to_dpr_pixel_out2), // input wire [7:0]  probe7 
    	.probe8(to_dpr_pixel_out3) // input wire [7:0]  probe8
    );
    
    frame_dpr frm_buffer (
		/* input 		*/ .spad_reset(spad_ss_reset),//!!!!!!!!!!!
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
    
    assign sfp0_tx_led = resetdone | gen_active_flash;
    assign sfp0_rx_led = (~frame_error) & check_active_flash;
    
    my_ila input_to_example_design (
    	.clk(clk_156MHz), // input wire clk 
    
    	.probe0(clk_156MHz), // input wire [0:0]  probe0  
    	.probe1(tx_axis_frame_eth_tdata), // input wire [63:0]  probe1 
    	.probe2(tx_axis_frame_eth_tkeep), // input wire [7:0]  probe2 
    	.probe3(tx_axis_frame_eth_tvalid), // input wire [0:0]  probe3 
    	.probe4(tx_axis_frame_eth_tlast), // input wire [0:0]  probe4 
    	.probe5(tx_axis_frame_eth_tready) // input wire [0:0]  probe5
    );
    
    my_ila input_to_eth_wrapper (
     	.clk(clk_156MHz), // input wire clk 
    
		.probe0(clk_156MHz), // input wire [0:0]  probe0  
		.probe1(tx_axis_frame_tdata), // input wire [63:0]  probe1 
		.probe2(tx_axis_frame_tkeep), // input wire [7:0]  probe2 
		.probe3(tx_axis_frame_tvalid), // input wire [0:0]  probe3 
		.probe4(tx_axis_frame_tlast), // input wire [0:0]  probe4 
		.probe5(tx_axis_frame_tready) // input wire [0:0]  probe5   
    );



	
	///////////////////////////// DEBUG ONLY ///////////////////////////
	// system clk heartbeat 
	reg [27:0]                                 sfp_clk156_count;
	reg [27:0]                                 clk100_count;  
	reg [1:0]                                  led;

	//////////////////////// DEBUG ONLY ////////////////////////////////
	// 100MHz PCIe clk heartbeat ~ every 1.5 seconds
	
	
	always @ (posedge clk_100MHz) begin
		if (spad_ss_reset) begin
			led[1] <= 0;
		end else begin
			clk100_count <= clk100_count + 1'b1;
			if (clk100_count == 0) begin
				led[1] <= ~led[1];
			end
		end
	end
	  
	// 156MHz sfp clock heartbeat ~ every second
	
	
	always @ (posedge clk_156MHz) begin
		if(eth_ss_reset) begin
			led[0] <= 0;
		end else begin
			sfp_clk156_count <= sfp_clk156_count + 1'b1;
			if (sfp_clk156_count == 0) begin
				led[0] <= ~led[0];
			end  
	   	end
	end
	

// Debug LEDs  
	// 156MHz clk heartbeat ~ every second
	OBUF led_0_obuf (
	   .O                       (leds[0]), 
	   .I                       (led[0])
	  );
	
	// 100MHz clk heartbeat ~ every 1.5 seconds  
	OBUF led_1_obuf (
	   .O                       (leds[1]), 
	   .I                       (led[1])
	  );
    
endmodule
