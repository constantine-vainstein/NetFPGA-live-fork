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
// Title      : Support level for AXI 10 Gigabit Ethernet MAC
// Project    : AXI 10 Gigabit Ethernet Core
//-----------------------------------------------------------------------------
// File       : axi_10g_ethernet_0_support.v
// Author     : Xilinx Inc.
//-----------------------------------------------------------------------------
// Description: This is the Support level code for the AXI 10 Gigabit Ethernet Core
//              It contains the block level instance and shareable clocking and
//              reset circuitry
//-----------------------------------------------------------------------------

`timescale 1ps / 1ps

module axi_10g_ethernet_0_support (
   // Port declarations
   input                               refclk_p,
   input                               refclk_n,
   input                               dclk,
   output                              core_clk156_out,
   output 							   areset_clk156,
   input                               reset,
   output                              qplloutclk_out,
   output                              qplloutrefclk_out,
   output                              qplllock_out,
   output                              resetdone,
   output                              txusrclk_out,
   output                              txusrclk2_out,
   output                              gttxreset_out,
   output                              gtrxreset_out,
   output                              txuserrdy_out,
   output                              reset_counter_done_out,

   input       [79 : 0]                mac_tx_configuration_vector,
   input       [79 : 0]                mac_rx_configuration_vector,
   output      [1 : 0]                 mac_status_vector,
   input       [535 : 0]               pcs_pma_configuration_vector,
   output      [447 : 0]               pcs_pma_status_vector,

   input       [7:0]                   tx_ifg_delay,

   output      [25:0]                  tx_statistics_vector,
   output      [29:0]                  rx_statistics_vector,
   output                              tx_statistics_valid,
   output                              rx_statistics_valid,

   input                               tx_axis_aresetn,
   input      [63:0]                   s_axis_tx_tdata,
   input                               s_axis_tx_tvalid,
   input                               s_axis_tx_tlast,
   input                               s_axis_tx_tuser,
   input       [7:0]                   s_axis_tx_tkeep,
   output                              s_axis_tx_tready,

   input                               rx_axis_aresetn,
   output      [63:0]                  m_axis_rx_tdata,
   output      [7:0]                   m_axis_rx_tkeep,
   output                              m_axis_rx_tvalid,
   output                              m_axis_rx_tuser,
   output                              m_axis_rx_tlast,



   //Pause axis
   input      [15:0]                   s_axis_pause_tdata,
   input                               s_axis_pause_tvalid,

   output                              txp,
   output                              txn,
   input                               rxp,
   input                               rxn,
   output                              tx_disable,
   output                              is_eval,
   input wire                          training_enable,
   input wire [20:0]                   training_addr,
   input wire                          training_rnw,
   input wire [15:0]                   training_wrdata,
   input wire                          training_ipif_cs,
   input wire                          training_drp_cs,
   output wire [15:0]                  training_rddata,
   output wire                         training_rdack,
   output wire                         training_wrack,
   input                               signal_detect,
   input                               sim_speedup_control,
   input                               tx_fault,
   output      [7:0]                   pcspma_status
   );

/*-------------------------------------------------------------------------*/

  // Signal declarations
  wire clk156;
  wire txoutclk;
  wire txclk322;
  wire qplloutclk;
  wire qplloutrefclk;
  wire qplllock;
  wire tx_resetdone_int;
  wire rx_resetdone_int;
  wire gttxreset;
  wire gtrxreset;
  wire qpllreset;
  wire txuserrdy;
  wire reset_counter_done;
  wire txusrclk;
  wire txusrclk2;


  assign core_clk156_out        = clk156;
  assign resetdone              = tx_resetdone_int && rx_resetdone_int;

  assign qplloutclk_out         = qplloutclk;
  assign qplloutrefclk_out      = qplloutrefclk;
  assign qplllock_out           = qplllock;
  assign txusrclk_out           = txusrclk;
  assign txusrclk2_out          = txusrclk2;
  assign gttxreset_out          = gttxreset;
  assign gtrxreset_out          = gtrxreset;
  assign txuserrdy_out          = txuserrdy;
  assign reset_counter_done_out = reset_counter_done;


  //---------------------------------------------------------------------------
  // Instantiate the 10GBASER/KR GT Common block
  //---------------------------------------------------------------------------
  axi_10g_ethernet_0_gt_common # (
      .WRAPPER_SIM_GTRESET_SPEEDUP("TRUE") ) //Does not affect hardware
  axi_10g_ethernet_gt_common_block
    (
     .refclk                           (refclk),
     .qpllreset                        (qpllreset),
     .qplllock                         (qplllock),
     .qplloutclk                       (qplloutclk),
     .qplloutrefclk                    (qplloutrefclk)
    );


  //---------------------------------------------------------------------------
  // Instantiate the 10GBASER/KR shared clock/reset block
  //---------------------------------------------------------------------------
  axi_10g_ethernet_0_shared_clock_and_reset axi_10g_ethernet_shared_clock_reset_block
    (
     .areset                           (reset),
     .refclk_p                         (refclk_p),
     .refclk_n                         (refclk_n),
     .refclk                           (refclk),
     .clk156                           (clk156),
     .txclk322                         (txclk322),
     .dclk                             (dclk),
     .qplllock                         (qplllock),
     .areset_clk156                    (areset_clk156),
     .gttxreset                        (gttxreset),
     .gtrxreset                        (gtrxreset),
     .txuserrdy                        (txuserrdy),
     .txusrclk                         (txusrclk),
     .txusrclk2                        (txusrclk2),
     .qpllreset                        (qpllreset),
     .reset_counter_done               (reset_counter_done)
    );

  //---------------------------------------------------------------------------
  // Instantiate the AXI 10G Ethernet core
  //---------------------------------------------------------------------------
  axi_10g_ethernet_0 axi_10g_ethernet_i (
      .dclk                            (dclk),
      .clk156                          (clk156),
      .txusrclk                        (txusrclk),
      .txusrclk2                       (txusrclk2),
      .txclk322                        (txclk322),
      .areset_clk156                   (areset_clk156),
      .txuserrdy                       (txuserrdy),
      .areset                          (reset),
      .tx_resetdone                    (tx_resetdone_int),
      .rx_resetdone                    (rx_resetdone_int),
      .reset_counter_done              (reset_counter_done),
      .gttxreset                       (gttxreset),
      .gtrxreset                       (gtrxreset),
      .qplllock                        (qplllock),
      .qplloutclk                      (qplloutclk),
      .qplloutrefclk                   (qplloutrefclk),

      .tx_ifg_delay                    (tx_ifg_delay),
      .tx_statistics_vector            (tx_statistics_vector),
      .tx_statistics_valid             (tx_statistics_valid),
      .rx_statistics_vector            (rx_statistics_vector),
      .rx_statistics_valid             (rx_statistics_valid),
      .s_axis_pause_tdata              (s_axis_pause_tdata),
      .s_axis_pause_tvalid             (s_axis_pause_tvalid),

      .tx_axis_aresetn                 (tx_axis_aresetn),
      .s_axis_tx_tdata                 (s_axis_tx_tdata),
      .s_axis_tx_tvalid                (s_axis_tx_tvalid),
      .s_axis_tx_tlast                 (s_axis_tx_tlast),
      .s_axis_tx_tuser                 (s_axis_tx_tuser),
      .s_axis_tx_tkeep                 (s_axis_tx_tkeep),
      .s_axis_tx_tready                (s_axis_tx_tready),

      .rx_axis_aresetn                 (rx_axis_aresetn),
      .m_axis_rx_tdata                 (m_axis_rx_tdata),
      .m_axis_rx_tkeep                 (m_axis_rx_tkeep),
      .m_axis_rx_tvalid                (m_axis_rx_tvalid),
      .m_axis_rx_tuser                 (m_axis_rx_tuser),
      .m_axis_rx_tlast                 (m_axis_rx_tlast),
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
      .is_eval                         (is_eval),
      .training_enable                 (training_enable),
      .training_addr                   (training_addr),
      .training_rnw                    (training_rnw),
      .training_wrdata                 (training_wrdata),
      .training_ipif_cs                (training_ipif_cs),
      .training_drp_cs                 (training_drp_cs),
      .training_rddata                 (training_rddata),
      .training_rdack                  (training_rdack),
      .training_wrack                  (training_wrack),
      .pcspma_status                   (pcspma_status)
   );


endmodule
