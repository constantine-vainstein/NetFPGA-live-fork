-- Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:29:27 MST 2014
-- Date        : Wed Jun 14 23:21:27 2017
-- Host        : DIGLABAPPS running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               w:/projects/axi_10g_ethernet_0_example/axi_10g_ethernet_0_example.srcs/sources_1/ip/axi_10g_ethernet_0/axi_10g_ethernet_0_stub.vhdl
-- Design      : axi_10g_ethernet_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7vx690tffg1761-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity axi_10g_ethernet_0 is
  Port ( 
    tx_axis_aresetn : in STD_LOGIC;
    rx_axis_aresetn : in STD_LOGIC;
    tx_ifg_delay : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dclk : in STD_LOGIC;
    txp : out STD_LOGIC;
    txn : out STD_LOGIC;
    rxp : in STD_LOGIC;
    rxn : in STD_LOGIC;
    signal_detect : in STD_LOGIC;
    tx_fault : in STD_LOGIC;
    tx_disable : out STD_LOGIC;
    pcspma_status : out STD_LOGIC_VECTOR ( 7 downto 0 );
    sim_speedup_control : in STD_LOGIC;
    is_eval : out STD_LOGIC;
    mac_tx_configuration_vector : in STD_LOGIC_VECTOR ( 79 downto 0 );
    mac_rx_configuration_vector : in STD_LOGIC_VECTOR ( 79 downto 0 );
    mac_status_vector : out STD_LOGIC_VECTOR ( 1 downto 0 );
    pcs_pma_configuration_vector : in STD_LOGIC_VECTOR ( 535 downto 0 );
    pcs_pma_status_vector : out STD_LOGIC_VECTOR ( 447 downto 0 );
    areset_clk156 : in STD_LOGIC;
    txusrclk : in STD_LOGIC;
    txusrclk2 : in STD_LOGIC;
    txclk322 : out STD_LOGIC;
    txuserrdy : in STD_LOGIC;
    tx_resetdone : out STD_LOGIC;
    rx_resetdone : out STD_LOGIC;
    clk156 : in STD_LOGIC;
    areset : in STD_LOGIC;
    gttxreset : in STD_LOGIC;
    gtrxreset : in STD_LOGIC;
    qplllock : in STD_LOGIC;
    qplloutclk : in STD_LOGIC;
    qplloutrefclk : in STD_LOGIC;
    reset_counter_done : in STD_LOGIC;
    training_addr : in STD_LOGIC_VECTOR ( 20 downto 0 );
    training_drp_cs : in STD_LOGIC;
    training_enable : in STD_LOGIC;
    training_ipif_cs : in STD_LOGIC;
    training_rdack : out STD_LOGIC;
    training_rddata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    training_rnw : in STD_LOGIC;
    training_wrack : out STD_LOGIC;
    training_wrdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_tx_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tx_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tx_tlast : in STD_LOGIC;
    s_axis_tx_tready : out STD_LOGIC;
    s_axis_tx_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tx_tvalid : in STD_LOGIC;
    s_axis_pause_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_pause_tvalid : in STD_LOGIC;
    m_axis_rx_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_rx_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_rx_tlast : out STD_LOGIC;
    m_axis_rx_tuser : out STD_LOGIC;
    m_axis_rx_tvalid : out STD_LOGIC;
    tx_statistics_valid : out STD_LOGIC;
    tx_statistics_vector : out STD_LOGIC_VECTOR ( 25 downto 0 );
    rx_statistics_valid : out STD_LOGIC;
    rx_statistics_vector : out STD_LOGIC_VECTOR ( 29 downto 0 )
  );

end axi_10g_ethernet_0;

architecture stub of axi_10g_ethernet_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "tx_axis_aresetn,rx_axis_aresetn,tx_ifg_delay[7:0],dclk,txp,txn,rxp,rxn,signal_detect,tx_fault,tx_disable,pcspma_status[7:0],sim_speedup_control,is_eval,mac_tx_configuration_vector[79:0],mac_rx_configuration_vector[79:0],mac_status_vector[1:0],pcs_pma_configuration_vector[535:0],pcs_pma_status_vector[447:0],areset_clk156,txusrclk,txusrclk2,txclk322,txuserrdy,tx_resetdone,rx_resetdone,clk156,areset,gttxreset,gtrxreset,qplllock,qplloutclk,qplloutrefclk,reset_counter_done,training_addr[20:0],training_drp_cs,training_enable,training_ipif_cs,training_rdack,training_rddata[15:0],training_rnw,training_wrack,training_wrdata[15:0],s_axis_tx_tdata[63:0],s_axis_tx_tkeep[7:0],s_axis_tx_tlast,s_axis_tx_tready,s_axis_tx_tuser[0:0],s_axis_tx_tvalid,s_axis_pause_tdata[15:0],s_axis_pause_tvalid,m_axis_rx_tdata[63:0],m_axis_rx_tkeep[7:0],m_axis_rx_tlast,m_axis_rx_tuser,m_axis_rx_tvalid,tx_statistics_valid,tx_statistics_vector[25:0],rx_statistics_valid,rx_statistics_vector[29:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "bd_1,Vivado 2014.4";
begin
end;
