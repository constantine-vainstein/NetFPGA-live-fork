// (c) Copyright 1995-2017 Xilinx, Inc. All rights reserved.
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
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:ip:axi_10g_ethernet:2.0
// IP Revision: 1

(* X_CORE_INFO = "bd_1,Vivado 2014.4" *)
(* CHECK_LICENSE_TYPE = "axi_10g_ethernet_0,bd_1,{ten_gig_eth_mac=bought,ten_gig_eth_pcs_pma_basekr=bought}" *)
(* CORE_GENERATION_INFO = "axi_10g_ethernet_0,bd_1,{x_ipProduct=Vivado 2014.4,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=axi_10g_ethernet,x_ipVersion=2.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,x_ipLicense=ten_gig_eth_mac@2014.10(bought),x_ipLicense=ten_gig_eth_pcs_pma_basekr@2014.10(bought)}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module axi_10g_ethernet_0 (
  tx_axis_aresetn,
  rx_axis_aresetn,
  tx_ifg_delay,
  dclk,
  txp,
  txn,
  rxp,
  rxn,
  signal_detect,
  tx_fault,
  tx_disable,
  pcspma_status,
  sim_speedup_control,
  is_eval,
  mac_tx_configuration_vector,
  mac_rx_configuration_vector,
  mac_status_vector,
  pcs_pma_configuration_vector,
  pcs_pma_status_vector,
  areset_clk156,
  txusrclk,
  txusrclk2,
  txclk322,
  txuserrdy,
  tx_resetdone,
  rx_resetdone,
  clk156,
  areset,
  gttxreset,
  gtrxreset,
  qplllock,
  qplloutclk,
  qplloutrefclk,
  reset_counter_done,
  training_addr,
  training_drp_cs,
  training_enable,
  training_ipif_cs,
  training_rdack,
  training_rddata,
  training_rnw,
  training_wrack,
  training_wrdata,
  s_axis_tx_tdata,
  s_axis_tx_tkeep,
  s_axis_tx_tlast,
  s_axis_tx_tready,
  s_axis_tx_tuser,
  s_axis_tx_tvalid,
  s_axis_pause_tdata,
  s_axis_pause_tvalid,
  m_axis_rx_tdata,
  m_axis_rx_tkeep,
  m_axis_rx_tlast,
  m_axis_rx_tuser,
  m_axis_rx_tvalid,
  tx_statistics_valid,
  tx_statistics_vector,
  rx_statistics_valid,
  rx_statistics_vector
);

(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.tx_axis_aresetn RST" *)
input wire tx_axis_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.rx_axis_aresetn RST" *)
input wire rx_axis_aresetn;
input wire [7 : 0] tx_ifg_delay;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.dclk CLK" *)
input wire dclk;
output wire txp;
output wire txn;
input wire rxp;
input wire rxn;
input wire signal_detect;
input wire tx_fault;
output wire tx_disable;
output wire [7 : 0] pcspma_status;
input wire sim_speedup_control;
output wire is_eval;
input wire [79 : 0] mac_tx_configuration_vector;
input wire [79 : 0] mac_rx_configuration_vector;
output wire [1 : 0] mac_status_vector;
input wire [535 : 0] pcs_pma_configuration_vector;
output wire [447 : 0] pcs_pma_status_vector;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.areset_clk156 RST" *)
input wire areset_clk156;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.txusrclk CLK" *)
input wire txusrclk;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.txusrclk2 CLK" *)
input wire txusrclk2;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.txclk322 CLK" *)
output wire txclk322;
input wire txuserrdy;
output wire tx_resetdone;
output wire rx_resetdone;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.clk156 CLK" *)
input wire clk156;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.areset RST" *)
input wire areset;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.gttxreset RST" *)
input wire gttxreset;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.gtrxreset RST" *)
input wire gtrxreset;
input wire qplllock;
input wire qplloutclk;
input wire qplloutrefclk;
input wire reset_counter_done;
(* X_INTERFACE_INFO = "xilinx.com:display_ten_gig_eth_pcs_pma:training:2.0 training addr" *)
input wire [20 : 0] training_addr;
(* X_INTERFACE_INFO = "xilinx.com:display_ten_gig_eth_pcs_pma:training:2.0 training drp_cs" *)
input wire training_drp_cs;
(* X_INTERFACE_INFO = "xilinx.com:display_ten_gig_eth_pcs_pma:training:2.0 training enable" *)
input wire training_enable;
(* X_INTERFACE_INFO = "xilinx.com:display_ten_gig_eth_pcs_pma:training:2.0 training ipif_cs" *)
input wire training_ipif_cs;
(* X_INTERFACE_INFO = "xilinx.com:display_ten_gig_eth_pcs_pma:training:2.0 training rdack" *)
output wire training_rdack;
(* X_INTERFACE_INFO = "xilinx.com:display_ten_gig_eth_pcs_pma:training:2.0 training rddata" *)
output wire [15 : 0] training_rddata;
(* X_INTERFACE_INFO = "xilinx.com:display_ten_gig_eth_pcs_pma:training:2.0 training rnw" *)
input wire training_rnw;
(* X_INTERFACE_INFO = "xilinx.com:display_ten_gig_eth_pcs_pma:training:2.0 training wrack" *)
output wire training_wrack;
(* X_INTERFACE_INFO = "xilinx.com:display_ten_gig_eth_pcs_pma:training:2.0 training wrdata" *)
input wire [15 : 0] training_wrdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_tx TDATA" *)
input wire [63 : 0] s_axis_tx_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_tx TKEEP" *)
input wire [7 : 0] s_axis_tx_tkeep;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_tx TLAST" *)
input wire s_axis_tx_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_tx TREADY" *)
output wire s_axis_tx_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_tx TUSER" *)
input wire [0 : 0] s_axis_tx_tuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_tx TVALID" *)
input wire s_axis_tx_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_pause TDATA" *)
input wire [15 : 0] s_axis_pause_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_pause TVALID" *)
input wire s_axis_pause_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rx TDATA" *)
output wire [63 : 0] m_axis_rx_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rx TKEEP" *)
output wire [7 : 0] m_axis_rx_tkeep;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rx TLAST" *)
output wire m_axis_rx_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rx TUSER" *)
output wire m_axis_rx_tuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rx TVALID" *)
output wire m_axis_rx_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:display_ten_gig_eth_mac:statistics:2.0 tx_statistics valid" *)
output wire tx_statistics_valid;
(* X_INTERFACE_INFO = "xilinx.com:display_ten_gig_eth_mac:statistics:2.0 tx_statistics vector" *)
output wire [25 : 0] tx_statistics_vector;
(* X_INTERFACE_INFO = "xilinx.com:display_ten_gig_eth_mac:statistics:2.0 rx_statistics valid" *)
output wire rx_statistics_valid;
(* X_INTERFACE_INFO = "xilinx.com:display_ten_gig_eth_mac:statistics:2.0 rx_statistics vector" *)
output wire [29 : 0] rx_statistics_vector;

  bd_1 inst (
    .tx_axis_aresetn(tx_axis_aresetn),
    .rx_axis_aresetn(rx_axis_aresetn),
    .tx_ifg_delay(tx_ifg_delay),
    .dclk(dclk),
    .txp(txp),
    .txn(txn),
    .rxp(rxp),
    .rxn(rxn),
    .signal_detect(signal_detect),
    .tx_fault(tx_fault),
    .tx_disable(tx_disable),
    .pcspma_status(pcspma_status),
    .sim_speedup_control(sim_speedup_control),
    .is_eval(is_eval),
    .mac_tx_configuration_vector(mac_tx_configuration_vector),
    .mac_rx_configuration_vector(mac_rx_configuration_vector),
    .mac_status_vector(mac_status_vector),
    .pcs_pma_configuration_vector(pcs_pma_configuration_vector),
    .pcs_pma_status_vector(pcs_pma_status_vector),
    .areset_clk156(areset_clk156),
    .txusrclk(txusrclk),
    .txusrclk2(txusrclk2),
    .txclk322(txclk322),
    .txuserrdy(txuserrdy),
    .tx_resetdone(tx_resetdone),
    .rx_resetdone(rx_resetdone),
    .clk156(clk156),
    .areset(areset),
    .gttxreset(gttxreset),
    .gtrxreset(gtrxreset),
    .qplllock(qplllock),
    .qplloutclk(qplloutclk),
    .qplloutrefclk(qplloutrefclk),
    .reset_counter_done(reset_counter_done),
    .training_addr(training_addr),
    .training_drp_cs(training_drp_cs),
    .training_enable(training_enable),
    .training_ipif_cs(training_ipif_cs),
    .training_rdack(training_rdack),
    .training_rddata(training_rddata),
    .training_rnw(training_rnw),
    .training_wrack(training_wrack),
    .training_wrdata(training_wrdata),
    .s_axis_tx_tdata(s_axis_tx_tdata),
    .s_axis_tx_tkeep(s_axis_tx_tkeep),
    .s_axis_tx_tlast(s_axis_tx_tlast),
    .s_axis_tx_tready(s_axis_tx_tready),
    .s_axis_tx_tuser(s_axis_tx_tuser),
    .s_axis_tx_tvalid(s_axis_tx_tvalid),
    .s_axis_pause_tdata(s_axis_pause_tdata),
    .s_axis_pause_tvalid(s_axis_pause_tvalid),
    .m_axis_rx_tdata(m_axis_rx_tdata),
    .m_axis_rx_tkeep(m_axis_rx_tkeep),
    .m_axis_rx_tlast(m_axis_rx_tlast),
    .m_axis_rx_tuser(m_axis_rx_tuser),
    .m_axis_rx_tvalid(m_axis_rx_tvalid),
    .tx_statistics_valid(tx_statistics_valid),
    .tx_statistics_vector(tx_statistics_vector),
    .rx_statistics_valid(rx_statistics_valid),
    .rx_statistics_vector(rx_statistics_vector)
  );
endmodule