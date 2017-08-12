// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:29:27 MST 2014
// Date        : Wed Jun 14 23:21:27 2017
// Host        : DIGLABAPPS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               w:/projects/axi_10g_ethernet_0_example/axi_10g_ethernet_0_example.srcs/sources_1/ip/axi_10g_ethernet_0/axi_10g_ethernet_0_stub.v
// Design      : axi_10g_ethernet_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx690tffg1761-3
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bd_1,Vivado 2014.4" *)
module axi_10g_ethernet_0(tx_axis_aresetn, rx_axis_aresetn, tx_ifg_delay, dclk, txp, txn, rxp, rxn, signal_detect, tx_fault, tx_disable, pcspma_status, sim_speedup_control, is_eval, mac_tx_configuration_vector, mac_rx_configuration_vector, mac_status_vector, pcs_pma_configuration_vector, pcs_pma_status_vector, areset_clk156, txusrclk, txusrclk2, txclk322, txuserrdy, tx_resetdone, rx_resetdone, clk156, areset, gttxreset, gtrxreset, qplllock, qplloutclk, qplloutrefclk, reset_counter_done, training_addr, training_drp_cs, training_enable, training_ipif_cs, training_rdack, training_rddata, training_rnw, training_wrack, training_wrdata, s_axis_tx_tdata, s_axis_tx_tkeep, s_axis_tx_tlast, s_axis_tx_tready, s_axis_tx_tuser, s_axis_tx_tvalid, s_axis_pause_tdata, s_axis_pause_tvalid, m_axis_rx_tdata, m_axis_rx_tkeep, m_axis_rx_tlast, m_axis_rx_tuser, m_axis_rx_tvalid, tx_statistics_valid, tx_statistics_vector, rx_statistics_valid, rx_statistics_vector)
/* synthesis syn_black_box black_box_pad_pin="tx_axis_aresetn,rx_axis_aresetn,tx_ifg_delay[7:0],dclk,txp,txn,rxp,rxn,signal_detect,tx_fault,tx_disable,pcspma_status[7:0],sim_speedup_control,is_eval,mac_tx_configuration_vector[79:0],mac_rx_configuration_vector[79:0],mac_status_vector[1:0],pcs_pma_configuration_vector[535:0],pcs_pma_status_vector[447:0],areset_clk156,txusrclk,txusrclk2,txclk322,txuserrdy,tx_resetdone,rx_resetdone,clk156,areset,gttxreset,gtrxreset,qplllock,qplloutclk,qplloutrefclk,reset_counter_done,training_addr[20:0],training_drp_cs,training_enable,training_ipif_cs,training_rdack,training_rddata[15:0],training_rnw,training_wrack,training_wrdata[15:0],s_axis_tx_tdata[63:0],s_axis_tx_tkeep[7:0],s_axis_tx_tlast,s_axis_tx_tready,s_axis_tx_tuser[0:0],s_axis_tx_tvalid,s_axis_pause_tdata[15:0],s_axis_pause_tvalid,m_axis_rx_tdata[63:0],m_axis_rx_tkeep[7:0],m_axis_rx_tlast,m_axis_rx_tuser,m_axis_rx_tvalid,tx_statistics_valid,tx_statistics_vector[25:0],rx_statistics_valid,rx_statistics_vector[29:0]" */;
  input tx_axis_aresetn;
  input rx_axis_aresetn;
  input [7:0]tx_ifg_delay;
  input dclk;
  output txp;
  output txn;
  input rxp;
  input rxn;
  input signal_detect;
  input tx_fault;
  output tx_disable;
  output [7:0]pcspma_status;
  input sim_speedup_control;
  output is_eval;
  input [79:0]mac_tx_configuration_vector;
  input [79:0]mac_rx_configuration_vector;
  output [1:0]mac_status_vector;
  input [535:0]pcs_pma_configuration_vector;
  output [447:0]pcs_pma_status_vector;
  input areset_clk156;
  input txusrclk;
  input txusrclk2;
  output txclk322;
  input txuserrdy;
  output tx_resetdone;
  output rx_resetdone;
  input clk156;
  input areset;
  input gttxreset;
  input gtrxreset;
  input qplllock;
  input qplloutclk;
  input qplloutrefclk;
  input reset_counter_done;
  input [20:0]training_addr;
  input training_drp_cs;
  input training_enable;
  input training_ipif_cs;
  output training_rdack;
  output [15:0]training_rddata;
  input training_rnw;
  output training_wrack;
  input [15:0]training_wrdata;
  input [63:0]s_axis_tx_tdata;
  input [7:0]s_axis_tx_tkeep;
  input s_axis_tx_tlast;
  output s_axis_tx_tready;
  input [0:0]s_axis_tx_tuser;
  input s_axis_tx_tvalid;
  input [15:0]s_axis_pause_tdata;
  input s_axis_pause_tvalid;
  output [63:0]m_axis_rx_tdata;
  output [7:0]m_axis_rx_tkeep;
  output m_axis_rx_tlast;
  output m_axis_rx_tuser;
  output m_axis_rx_tvalid;
  output tx_statistics_valid;
  output [25:0]tx_statistics_vector;
  output rx_statistics_valid;
  output [29:0]rx_statistics_vector;
endmodule
