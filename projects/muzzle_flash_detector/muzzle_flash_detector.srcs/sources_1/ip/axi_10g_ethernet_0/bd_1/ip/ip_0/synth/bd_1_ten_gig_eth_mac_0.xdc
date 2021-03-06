#######################################################
# Ten Gigabit Ethernet MAC core constraints           #
#######################################################

# Asynchronous paths into resets
set_false_path -to [get_pins -filter {NAME =~ */PRE} -of_objects [get_cells bd_1_ten_gig_eth_mac_0_core/xgmac_inst/sync_tx_reset_i/*]]
set_false_path -to [get_pins -filter {NAME =~ */PRE} -of_objects [get_cells bd_1_ten_gig_eth_mac_0_core/xgmac_inst/sync_rx_reset_i/*]]

# Reconciliation sublayer clock-domain crossings.
set_false_path -from [get_cells bd_1_ten_gig_eth_mac_0_core/xgmac_inst/rsgen/detect_link_fail/local_failure_reg] -to [get_cells bd_1_ten_gig_eth_mac_0_core/xgmac_inst/rsgen/sync_lf_i/d_1_reg]
set_false_path -from [get_cells bd_1_ten_gig_eth_mac_0_core/xgmac_inst/rsgen/detect_link_fail/remote_failure_reg] -to [get_cells bd_1_ten_gig_eth_mac_0_core/xgmac_inst/rsgen/sync_rf_i/d_1_reg]

# Flow control clock domain crossings

set_false_path -from [get_cells bd_1_ten_gig_eth_mac_0_core/xgmac_inst/rxgen/rx_pause_control_i/good_frame_to_tx_reg] -to [get_cells bd_1_ten_gig_eth_mac_0_core/xgmac_inst/txgen/tx_pause_control_i/sync_i/d_1_reg] 
set_false_path -from [get_cells bd_1_ten_gig_eth_mac_0_core/xgmac_inst/rxgen/rx_pause_control_i/pause_value_to_tx_reg[*]]

set_false_path -from [get_cells bd_1_ten_gig_eth_mac_0_core/xgmac_inst/rxgen/rx_pause_control_i/pause_req_to_tx_reg]



