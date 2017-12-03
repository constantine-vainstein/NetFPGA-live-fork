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
`define debug_spad_interface

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
   
   // **** MAC2 ****
   input             sfp1_tx_fault,
   input             sfp1_tx_abs,

   output            sfp1_tx_disable,

   // Serial I/O from/to transceiver
   input            ETH2_TX_P,
   input            ETH2_TX_N,
   output             ETH2_RX_P,
   output             ETH2_RX_N,
   
   // leds
   output sfp1_tx_led,
   output sfp1_rx_led,
   
   // debug
   output [1:0] leds,
   
   // interface to SPAD
   output latch_spad,
   output reset_spad,
   output [5:0] col_select,
   output [2:0] row_select,
   output row_group,
   
   input [7:0] PixelSpad0,
   input [7:0] PixelSpad1,
   input [7:0] PixelSpad2,
   input [7:0] PixelSpad3
   );
   
   wire resetdone;
   
   wire clk_156MHz;
   
   
   
   wire [63:0] tx_axis_frame_eth_tdata;
   wire [7:0]  tx_axis_frame_eth_tkeep;
   wire tx_axis_frame_eth_tvalid;
   wire tx_axis_frame_eth_tlast;
   wire tx_axis_frame_eth_tready;
   wire [15 : 0] payload_length;
   
   wire [1 : 0] stable_btn;
   
   wire clk_100MHz;
   wire clk_100MHz_locked;
   
   wire frame_error;
   wire gen_active_flash;
   wire check_active_flash;
   
   wire reset;
   wire spad_ss_reset;
   wire eth_ss_reset; // ethernet subsystem reset
   
   wire block_lock1;
   wire block_lock2;
   
   wire block_lock = block_lock1 & block_lock2;
   
   wire is_emulated;
   
   // Shared logic from MAC interface
   wire areset_clk156;
   wire qplloutclk;
   wire qplloutrefclk;
   wire qplllock;
   wire txusrclk;
   wire txusrclk2;
   wire gttxreset;
   wire gtrxreset;
   wire txuserrdy;
   wire reset_counter_done;
   
   wire [63 : 0]	tx_axis_control_tdata;
   wire [7 : 0] 	tx_axis_control_tkeep;
   wire 			tx_axis_control_tvalid;
   wire 			tx_axis_control_tlast;
   wire			tx_axis_control_tready;
   
   wire [63 : 0]	rx_axis_control_tdata;
   wire [7 : 0] 	rx_axis_control_tkeep;
   wire 			rx_axis_control_tvalid;
   wire 			rx_axis_control_tlast;
   wire			rx_axis_control_tready; 
   
   button_stabilizer button_stabilizer_0(
   		.clk(clk_100MHz),
   		.isPressed(btn[0]),
   		.isStablePressed(stable_btn[0])
   		);
   		
   button_stabilizer button_stabilizer_1(
   		   		.clk(clk_100MHz),
   		   		.isPressed(btn[1]),
   		   		.isStablePressed(stable_btn[1])
   		   		);
   
   btn_release_count emulation_button_i (
   	.clk(clk_100MHz),
   	.reset(spad_ss_reset),
   	.button_pressed(stable_btn[1]),
   	.count(is_emulated)
	);
   	
   
  
   axi_clocking axi_clocking_i (
       .clk_in_p               (fpga_sysclk_p),
       .clk_in_n               (fpga_sysclk_n),
       .clk_100                (clk_100MHz),       // generates 100MHz clk
       .locked                 (clk_100MHz_locked),
       .reset                 (stable_btn[0])
     );
     
   all_reset sys_rst_i (
	   /* input  */ .clk_spad(clk_100MHz),
	   /* input  */ .clk_eth(clk_156MHz),
	   /* input  */ .reset(stable_btn[0]),
	   /* input  */ .block_lock(block_lock),
	   /* output */ .reset_spad(spad_ss_reset),
	   /* output */ .reset_eth(eth_ss_reset)
   );
   
   
   
   data_path data_path_i(
   	// Clock inputs
   	/* input */ .clk_156MHz(clk_156MHz),
   	/* input */ .clk_100MHz(clk_100MHz),
   	/* input */ .spad_ss_reset(spad_ss_reset),
   	/* input */ .eth_ss_reset(eth_ss_reset), // ethernet subsystem reset
   	
   	// SPAD control subsystem
   	/* input */ .is_emulated(is_emulated),
   	// interface to SPAD
   	/* output */ .latch_spad(latch_spad),
   	/* output */ .reset_spad(reset_spad),
   	/*output [5:0] */ .col_select(col_select),
   	/* output [2:0] */ .row_select(row_select),
   	/* output */ .row_group(row_group),
   	/* input [7:0] */ .PixelSpad0(PixelSpad0),
   	/* input [7:0] */ .PixelSpad1(PixelSpad1),
   	/* input [7:0] */ .PixelSpad2(PixelSpad2),
   	/* input [7:0] */ .PixelSpad3(PixelSpad3),
   	
   	// interface to frames data MAC
   	/* output [63:0] */ .tx_axis_frame_eth_tdata(tx_axis_frame_eth_tdata),
   	/* output [7:0]  */ .tx_axis_frame_eth_tkeep(tx_axis_frame_eth_tkeep),
   	/* output */ .tx_axis_frame_eth_tvalid(tx_axis_frame_eth_tvalid),
   	/* output */ .tx_axis_frame_eth_tlast(tx_axis_frame_eth_tlast),
   	/* input */ .tx_axis_frame_eth_tready(tx_axis_frame_eth_tready),
   	
   	// interface to control MAC 
   	/* output [63 : 0]	*/ .tx_axis_control_tdata(tx_axis_control_tdata),
   	/* output [7 : 0] 	*/ .tx_axis_control_tkeep(tx_axis_control_tkeep),
   	/* output 			*/ .tx_axis_control_tvalid(tx_axis_control_tvalid),
   	/* output 			*/ .tx_axis_control_tlast(tx_axis_control_tlast),
   	/* input			*/ .tx_axis_control_tready(tx_axis_control_tready),
   	
   	/* input [63 : 0]	*/ .rx_axis_control_tdata(rx_axis_control_tdata),
   	/* input [7 : 0] 	*/ .rx_axis_control_tkeep(rx_axis_control_tkeep),
   	/* input 			*/ .rx_axis_control_tvalid(rx_axis_control_tvalid),
   	/* input 			*/ .rx_axis_control_tlast(rx_axis_control_tlast),
   	/* output			*/ .rx_axis_control_tready(rx_axis_control_tready)
   );

     
   axi_10g_ethernet_0_example_design  example_design (
    /* input */            .xphy_refclk_p(xphy_refclk_p),
    /* input */            .xphy_refclk_n(xphy_refclk_n),
    /* output*/			   .clk156_out(clk_156MHz),
    /* input */            .pcs_loopback(0),
    /* input */            .reset(eth_ss_reset),
    /* input */            .reset_error(stable_btn[1]),
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
    /* output */           .block_lock(block_lock1),
    /* output */           .qplllock_out(qplllock),
    /* output */           .tx_disable(sfp0_tx_disable),
    /* output */           .resetdone(resetdone),
    /* output */		   .areset_clk156(areset_clk156),
						   .qplloutclk_out                  (qplloutclk),
						   .qplloutrefclk_out               (qplloutrefclk),
						   .txusrclk_out                    (txusrclk),
						   .txusrclk2_out                   (txusrclk2),
						   .gttxreset_out                   (gttxreset),
						   .gtrxreset_out                   (gtrxreset),
						   .txuserrdy_out                   (txuserrdy),
						   .reset_counter_done_out			(reset_counter_done),
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
    

    
 
`ifdef debug_spad_interface    
    interface_to_spad interface_to_spad_i (
    	.clk(clk_100MHz), // input wire clk
    
    
    	.probe0(latch_spad), // input wire [0:0]  probe0  
    	.probe1(reset_spad), // input wire [0:0]  probe1 
    	.probe2(col_select), // input wire [5:0]  probe2 
    	.probe3(row_select), // input wire [2:0]  probe3 
    	.probe4(row_group), // input wire [0:0]  probe4 
    	.probe5(PixelSpad0), // input wire [7:0]  probe5 
    	.probe6(PixelSpad1), // input wire [7:0]  probe6 
    	.probe7(PixelSpad2), // input wire [7:0]  probe7 
    	.probe8(PixelSpad3) // input wire [7:0]  probe8
    );
`endif    


    
    assign sfp0_tx_led = resetdone | gen_active_flash;
    assign sfp0_rx_led = (~frame_error) & check_active_flash;
    
   
    
    
    
    mac2_interface mac2_interface_i(
    	/* input 			*/ .reset(eth_ss_reset),
    	/* input 			*/ .clk156(clk_156MHz),
    	/* input 			*/ .areset_clk156(areset_clk156),
    	/*                  */ 
    	/* input [63 : 0] 	*/ .tx_axis_fifo_tdata(tx_axis_control_tdata),
    	/* input [7 : 0] 	*/ .tx_axis_fifo_tkeep(tx_axis_control_tkeep),
    	/* input 			*/ .tx_axis_fifo_tvalid(tx_axis_control_tvalid),
    	/* input 			*/ .tx_axis_fifo_tlast(tx_axis_control_tlast),
    	/* output 			*/ .tx_axis_fifo_tready(tx_axis_control_tready),
    	/*                  */ 
    	/* output [63 : 0] 	*/ .rx_axis_fifo_tdata(rx_axis_control_tdata),
    	/* output [7 : 0] 	*/ .rx_axis_fifo_tkeep(rx_axis_control_tkeep),
    	/* output 			*/ .rx_axis_fifo_tvalid(rx_axis_control_tvalid),
    	/* output 			*/ .rx_axis_fifo_tlast(rx_axis_control_tlast),
    	/* input 			*/ .rx_axis_fifo_tready(rx_axis_control_tready),
    	/*                  */ 
    	/* output 			*/ .txp(ETH2_RX_P),
    	/* output 			*/ .txn(ETH2_RX_N),
    	/* input 			*/ .rxp(ETH2_TX_P),
    	/* input 			*/ .rxn(ETH2_TX_N),
    	/*                  */ 
    	/* input 			*/ .tx_abs(sfp1_tx_abs),
    	/* input 			*/ .tx_fault(sfp1_tx_fault),
    	/* output 			*/ .tx_disable(sfp1_tx_disable),
    	/* output 			*/ .block_lock(block_lock2),
    	/*                  */ 
    	/* // Shared Logic   */ 
    	/* input 			*/ .qplloutclk(qplloutclk),
    	/* input 			*/ .qplloutrefclk(qplloutrefclk),
    	/* input			*/ .reset_counter_done(reset_counter_done),
    	/* input 			*/ .txusrclk(txusrclk),
    	/* input 			*/ .txusrclk2(txusrclk2),
    	/* input 			*/ .gttxreset(gttxreset),
    	/* input 			*/ .gtrxreset(gtrxreset),
    	/* input			*/ .qplllock(qplllock),
    	/* input 			*/ .txuserrdy(txuserrdy)
    
        );
`ifdef debug  
    my_ila input_to_example_design (
    	.clk(clk_156MHz), // input wire clk 
    
    	.probe0(clk_156MHz), // input wire [0:0]  probe0  
    	.probe1(tx_axis_frame_eth_tdata), // input wire [63:0]  probe1 
    	.probe2(tx_axis_frame_eth_tkeep), // input wire [7:0]  probe2 
    	.probe3(tx_axis_frame_eth_tvalid), // input wire [0:0]  probe3 
    	.probe4(tx_axis_frame_eth_tlast), // input wire [0:0]  probe4 
    	.probe5(tx_axis_frame_eth_tready) // input wire [0:0]  probe5
    );
`endif


	
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
