// ------------------------------------------------------------------------------
// (c) Copyright 2014 Xilinx, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// ------------------------------------------------------------------------------
//-----------------------------------------------------------------------------
// Title      : FIFO block level for AXI 10 Gigabit Ethernet MAC
// Project    : AXI 10 Gigabit Ethernet Core
//-----------------------------------------------------------------------------
// File       : axi_10g_ethernet_0_fifo_block.v
// Author     : Xilinx Inc.
//-----------------------------------------------------------------------------
// Description: This is the FIFO block level code for the
//              Ten Gigabit Ethernet MAC. It contains the block level instance and
//              AXI FIFOs.
//-----------------------------------------------------------------------------

`timescale 1ps / 1ps

module axi_10g_ethernet_0_fifo_block  #(
parameter                              FIFO_SIZE = 1024
) (
   // Port declarations
   input                               refclk_p,
   input                               refclk_n,
   input                               reset,
   output                              resetdone,
   output                              qplllock_out,
   output 							   qplloutclk_out,
   output 							   qplloutrefclk_out,
   output 							   txusrclk_out,
   output 							   txusrclk2_out,
   output 							   gttxreset_out,
   output 							   gtrxreset_out,
   output 							   txuserrdy_out,
   output                              clk156_out,
   output 							   areset_clk156,
   output							   reset_counter_done_out,

   input       [79 : 0]                mac_tx_configuration_vector,
   input       [79 : 0]                mac_rx_configuration_vector,
   output      [1 : 0]                 mac_status_vector,
   input       [535 : 0]               pcs_pma_configuration_vector,
   output      [447 : 0]               pcs_pma_status_vector,

   input       [7:0]                   tx_ifg_delay,
   output                              tx_disable,
   output      [25:0]                  tx_statistics_vector,
   output      [29:0]                  rx_statistics_vector,
   output                              tx_statistics_valid,
   output                              rx_statistics_valid,
   input                               tx_axis_mac_aresetn,
   input                               tx_axis_fifo_aresetn,
   input       [63:0]                  tx_axis_fifo_tdata,
   input       [7:0]                   tx_axis_fifo_tkeep,
   input                               tx_axis_fifo_tvalid,
   input                               tx_axis_fifo_tlast,
   output                              tx_axis_fifo_tready,

   input                               rx_axis_mac_aresetn,
   input                               rx_axis_fifo_aresetn,
   output      [63:0]                  rx_axis_fifo_tdata,
   output      [7:0]                   rx_axis_fifo_tkeep,
   output                              rx_axis_fifo_tvalid,
   output                              rx_axis_fifo_tlast,
   input                               rx_axis_fifo_tready,

   //Pause axis
   input      [15:0]                   pause_val,
   input                               pause_req,

   output                              txp,
   output                              txn,
   input                               rxp,
   input                               rxn,

   input                               signal_detect,
   input                               sim_speedup_control,
   input                               tx_fault,
   output      [7:0]                   pcspma_status
   );

/*-------------------------------------------------------------------------*/

   // Signal declarations

   wire rx_axis_mac_aresetn_i  = ~reset | rx_axis_mac_aresetn;
   wire rx_axis_fifo_aresetn_i = ~reset | rx_axis_fifo_aresetn;
   wire tx_axis_mac_aresetn_i  = ~reset | tx_axis_mac_aresetn;
   wire tx_axis_fifo_aresetn_i = ~reset | tx_axis_fifo_aresetn;

   wire         [63:0]                  tx_axis_mac_tdata;
   wire         [7:0]                   tx_axis_mac_tkeep;
   wire                                 tx_axis_mac_tvalid;
   wire                                 tx_axis_mac_tlast;
   wire                                 tx_axis_mac_tready;

   wire         [63:0]                  rx_axis_mac_tdata;
   wire         [7:0]                   rx_axis_mac_tkeep;
   wire                                 rx_axis_mac_tvalid;
   wire                                 rx_axis_mac_tuser;
   wire                                 rx_axis_mac_tlast;

   wire                                 clk156;   

   assign clk156_out = clk156;


   //----------------------------------------------------------------------------
   // Instantiate the AXI_10G_ETHERNET Support level
   //----------------------------------------------------------------------------
   axi_10g_ethernet_0_support axi_10g_ethernet_core_support_layer_i(
      .core_clk156_out                 (clk156),
      .dclk                            (clk156_out),
      .refclk_p                        (refclk_p),
      .refclk_n                        (refclk_n),
      .reset                           (reset),
      .resetdone                       (resetdone),
      .areset_clk156                   (areset_clk156),
      .reset_counter_done_out          (reset_counter_done_out),
      .qplllock_out                    (qplllock_out),
      .qplloutclk_out                  (qplloutclk_out),
      .qplloutrefclk_out               (qplloutrefclk_out),
      .txusrclk_out                    (txusrclk_out),
      .txusrclk2_out                   (txusrclk2_out),
      .gttxreset_out                   (gttxreset_out),
      .gtrxreset_out                   (gtrxreset_out),
      .txuserrdy_out                   (txuserrdy_out),
      .tx_ifg_delay                    (tx_ifg_delay),
      .tx_statistics_vector            (tx_statistics_vector),
      .tx_statistics_valid             (tx_statistics_valid),
      .rx_statistics_vector            (rx_statistics_vector),
      .rx_statistics_valid             (rx_statistics_valid),
      .s_axis_pause_tdata              (pause_val),
      .s_axis_pause_tvalid             (pause_req),

      .tx_axis_aresetn                 (tx_axis_mac_aresetn),
      .s_axis_tx_tdata                 (tx_axis_mac_tdata),
      .s_axis_tx_tvalid                (tx_axis_mac_tvalid),
      .s_axis_tx_tlast                 (tx_axis_mac_tlast),
      .s_axis_tx_tuser                 (1'b0),
      .s_axis_tx_tkeep                 (tx_axis_mac_tkeep),
      .s_axis_tx_tready                (tx_axis_mac_tready),

      .rx_axis_aresetn                 (rx_axis_mac_aresetn),
      .m_axis_rx_tdata                 (rx_axis_mac_tdata),
      .m_axis_rx_tkeep                 (rx_axis_mac_tkeep),
      .m_axis_rx_tvalid                (rx_axis_mac_tvalid),
      .m_axis_rx_tuser                 (rx_axis_mac_tuser),
      .m_axis_rx_tlast                 (rx_axis_mac_tlast),
      .mac_tx_configuration_vector     (mac_tx_configuration_vector),
      .mac_rx_configuration_vector     (mac_rx_configuration_vector),
      .mac_status_vector               (mac_status_vector),
      .pcs_pma_configuration_vector    (pcs_pma_configuration_vector),
      .pcs_pma_status_vector           (pcs_pma_status_vector),

      // Serial links
      .txp                             (txp),
      .txn                             (txn),
      .rxp                             (rxp),
      .rxn                             (rxn),
      .sim_speedup_control             (sim_speedup_control),
      .signal_detect                   (signal_detect),
      .tx_fault                        (tx_fault),
      .tx_disable                      (tx_disable),
      .is_eval                         (),
      .training_enable                 (1'b0),
      .training_addr                   (21'b0),
      .training_rnw                    (1'b0),
      .training_wrdata                 (16'b0),
      .training_ipif_cs                (1'b0),
      .training_drp_cs                 (1'b0),
      .training_rddata                 (),
      .training_rdack                  (),
      .training_wrack                  (),
      .pcspma_status                   (pcspma_status)
   );


   //----------------------------------------------------------------------------
   // Instantiate the example design FIFO
   //----------------------------------------------------------------------------
  axi_10g_ethernet_0_xgmac_fifo #(
      .TX_FIFO_SIZE                    (FIFO_SIZE),
      .RX_FIFO_SIZE                    (FIFO_SIZE)
   ) ten_gig_ethernet_mac_fifo  (
      .tx_axis_fifo_aresetn            (tx_axis_fifo_aresetn_i),
      .tx_axis_fifo_aclk               (clk156),
      .tx_axis_fifo_tdata              (tx_axis_fifo_tdata),
      .tx_axis_fifo_tkeep              (tx_axis_fifo_tkeep),
      .tx_axis_fifo_tvalid             (tx_axis_fifo_tvalid),
      .tx_axis_fifo_tlast              (tx_axis_fifo_tlast),
      .tx_axis_fifo_tready             (tx_axis_fifo_tready),
      .tx_fifo_full                    (),
      .tx_fifo_status                  (),
      .rx_axis_fifo_aresetn            (rx_axis_fifo_aresetn_i),
      .rx_axis_fifo_aclk               (clk156),
      .rx_axis_fifo_tdata              (rx_axis_fifo_tdata),
      .rx_axis_fifo_tkeep              (rx_axis_fifo_tkeep),
      .rx_axis_fifo_tvalid             (rx_axis_fifo_tvalid),
      .rx_axis_fifo_tlast              (rx_axis_fifo_tlast),
      .rx_axis_fifo_tready             (rx_axis_fifo_tready),
      .rx_fifo_status                  (),
      .tx_axis_mac_aresetn             (tx_axis_mac_aresetn_i),
      .tx_axis_mac_aclk                (clk156),
      .tx_axis_mac_tdata               (tx_axis_mac_tdata),
      .tx_axis_mac_tkeep               (tx_axis_mac_tkeep),
      .tx_axis_mac_tvalid              (tx_axis_mac_tvalid),
      .tx_axis_mac_tlast               (tx_axis_mac_tlast),
      .tx_axis_mac_tready              (tx_axis_mac_tready),
      .rx_axis_mac_aresetn             (rx_axis_mac_aresetn_i),
      .rx_axis_mac_aclk                (clk156),
      .rx_axis_mac_tdata               (rx_axis_mac_tdata),
      .rx_axis_mac_tkeep               (rx_axis_mac_tkeep),
      .rx_axis_mac_tvalid              (rx_axis_mac_tvalid),
      .rx_axis_mac_tlast               (rx_axis_mac_tlast),
      .rx_axis_mac_tuser               (rx_axis_mac_tuser),
      .rx_fifo_full                    ()
   );

endmodule
