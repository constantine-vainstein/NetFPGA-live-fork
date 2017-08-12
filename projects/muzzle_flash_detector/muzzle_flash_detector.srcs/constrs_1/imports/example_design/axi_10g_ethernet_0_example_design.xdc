## PART is virtex7 xc7vx690tffg1761-3
#
#
########################################################
## Clock/period constraints                            #
########################################################
## Main transmit clock/period constraints
#
#create_clock -period 6.400 [get_ports refclk_p]
#
########################################################
## Synchronizer False paths
########################################################
#
## set_false_path -from [get_clocks ten_gig_eth_pcs_pma_core_i/inst/refclk_p] -to [get_cells rstdone_sync/data_sync_reg0]
## set_false_path -from [get_cells axi_lite_controller/enable_gen_reg] -to [get_cells gen_enable_sync/data_sync_reg0]
#
#set_false_path -to [get_pins -of_objects [get_cells -hierarchical -filter {NAME =~ *shared*sync1_r_reg*}] -filter {NAME =~ *PRE}]
########################################################
## FIFO level constraints
########################################################
#
#set_max_delay -datapath_only -from [get_cells fifo_block_i/ten_gig_ethernet_mac_fifo/i_tx_fifo/wr_store_frame_tog_reg] -to [get_cells fifo_block_i/ten_gig_ethernet_mac_fifo/i_tx_fifo/rd_store_frame_tog_reg] 6.400
#set_max_delay -datapath_only -from [get_cells fifo_block_i/ten_gig_ethernet_mac_fifo/i_tx_fifo/rd_addr_gray_reg_reg*] -to [get_cells fifo_block_i/ten_gig_ethernet_mac_fifo/i_tx_fifo/wr_rd_addr_gray_reg*] 6.400
#
########################################################
## I/O constraints                                     #
########################################################
#
## These inputs can be connected to dip switches or push buttons on an
## appropriate board.
#
#set_false_path -from [get_ports reset]
#set_false_path -from [get_ports reset_error]
#set_false_path -from [get_ports insert_error]
#set_false_path -from [get_ports pcs_loopback]
#set_false_path -from [get_ports enable_pat_gen]
#set_false_path -from [get_ports enable_pat_check]
#set_false_path -from [get_ports enable_custom_preamble]
#set_false_path -from [get_ports sim_speedup_control]
#
## These outputs can be connected to LED's or headers on an
## appropriate board.
#
#set_false_path -to [get_ports block_lock]
#set_false_path -to [get_ports qplllock_out]
#set_false_path -to [get_ports frame_error]
#set_false_path -to [get_ports gen_active_flash]
#set_false_path -to [get_ports check_active_flash]
#set_false_path -to [get_ports serialized_stats]
#