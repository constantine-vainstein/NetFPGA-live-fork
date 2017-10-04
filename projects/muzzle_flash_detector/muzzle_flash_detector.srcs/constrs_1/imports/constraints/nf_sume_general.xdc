# Copyright (c) 2015 Tinghui Wang
# Copyright (c) 2015 Noa Zilberman
# All rights reserved.
#
#  File:
#        nf_sume_general.xdc
#
#  Author:
#        Tinghui Wang (Steve)
#  Modified by:
#        Noa Zilberman
#
#  Description:
#        System general constraints for NetFPGA-SUME board.
#        The file includes constraints for:
#        - Master FPGA 200MHz clock (fpga_sysclk)
#        - Main I2C Bus (iic_fpga, si5324_rst_n)
#        - UART (115200-8N1)
#        - Btn0 is used as system sys_reset_n (active high)
#
# This software was developed by Stanford University and the University of Cambridge Computer Laboratory 
# under National Science Foundation under Grant No. CNS-0855268,
# the University of Cambridge Computer Laboratory under EPSRC INTERNET Project EP/H040536/1 and
# by the University of Cambridge Computer Laboratory under DARPA/AFRL contract FA8750-11-C-0249 ("MRC2"), 
# as part of the DARPA MRC research programme.
#
# @NETFPGA_LICENSE_HEADER_START@
#
# Licensed to NetFPGA C.I.C. (NetFPGA) under one or more contributor
# license agreements. See the NOTICE file distributed with this work for
# additional information regarding copyright ownership. NetFPGA licenses this
# file to you under the NetFPGA Hardware-Software License, Version 1.0 (the
# "License"); you may not use this file except in compliance with the
# License. You may obtain a copy of the License at:
#
# http://www.netfpga-cic.org
#
# Unless required by applicable law or agreed to in writing, Work distributed
# under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
# CONDITIONS OF ANY KIND, either express or implied.  See the License for the
# specific language governing permissions and limitations under the License.
#
# @NETFPGA_LICENSE_HEADER_END@
#


## -- The following two properties should be set for every design
set_property CFGBVS GND [current_design]
set_property CONFIG_VOLTAGE 1.8 [current_design]

## -- PCIe Transceiver clock (100 MHz)

##set_property LOC IBUFDS_GTE2_X1Y11 [get_cells IBUFDS_GTE2_inst]
## create_clock -period 10.000 -name sys_clk -add [get_pins -hier -filter name=~*IBUFDS_GTE2_inst/O]
## create_clock -period 10.000 -name sys_clkp -waveform {0.000 5.000} [get_ports clk_100MHz]


## -- PCIe sys reset
#no PCIe set_property PACKAGE_PIN AY35 [get_ports sys_reset_n]
#no PCIe set_property IOSTANDARD LVCMOS18 [get_ports sys_reset_n]
#no PCIe set_property PULLUP true [get_ports sys_reset_n]

#no PCIe set_false_path -from [get_ports sys_reset_n]


# 200MHz System Clock -- SUME
#not in use set_property PACKAGE_PIN H19 [get_ports fpga_sysclk_p]
#not in use set_property VCCAUX_IO DONTCARE [get_ports fpga_sysclk_p]
#not in use set_property IOSTANDARD LVDS [get_ports fpga_sysclk_p]
#not in use set_property IOSTANDARD LVDS [get_ports fpga_sysclk_n]

#create_clock -period 5.00 [get_ports {axi_clocking_i/s_axi_aclk}]
#not in use create_clock -period 5.000 -name fpga_sysclk_p -waveform {0.000 2.500} [get_ports fpga_sysclk_p]

## -- 200MHz & 100MHz clks
#200Mhz not in use create_clock -period 5.000 -name clk_200 -add [get_pins -hier -filter name=~*axi_clocking_i*clk_wiz_i/clk_out1]
create_clock -period 10.000  [get_ports clk_100MHz]
#for reference create_clock -period 6.400 [get_ports xphy_refclk_p]
# create_clock -period 10.000 -name axi_clk -add [get_pins -hier -filter name=~*axi_lite_bufg0/O]
# Main I2C Bus - 100KHz - SUME
#i2c not in use set_property IOSTANDARD LVCMOS18 [get_ports i2c_clk]
#i2c not in use set_property SLEW SLOW [get_ports i2c_clk]
#i2c not in use set_property DRIVE 16 [get_ports i2c_clk]
#i2c not in use set_property PULLUP true [get_ports i2c_clk]
#i2c not in use set_property PACKAGE_PIN AK24 [get_ports i2c_clk]

#i2c not in use set_property IOSTANDARD LVCMOS18 [get_ports i2c_data]
#i2c not in use set_property SLEW SLOW [get_ports i2c_data]
#i2c not in use set_property DRIVE 16 [get_ports i2c_data]
#i2c not in use set_property PULLUP true [get_ports i2c_data]
#i2c not in use set_property PACKAGE_PIN AK25 [get_ports i2c_data]

# i2c_reset[0] - i2c_mux reset - high active
# i2c_reset[1] - si5324 reset - high active
#i2c not in use set_property SLEW SLOW [get_ports {i2c_reset[*]}]
#i2c not in use set_property DRIVE 16 [get_ports {i2c_reset[*]}]
#i2c not in use set_property PACKAGE_PIN AM39 [get_ports {i2c_reset[0]}]
#i2c not in use set_property IOSTANDARD LVCMOS15 [get_ports {i2c_reset[0]}]
#i2c not in use set_property PACKAGE_PIN BA29 [get_ports {i2c_reset[1]}]
#i2c not in use set_property IOSTANDARD LVCMOS18 [get_ports {i2c_reset[1]}]

#BTN
set_property -dict { PACKAGE_PIN AR13  IOSTANDARD LVCMOS15 } [get_ports { btn[0] }]; #IO_L12N_T1_MRCC_31 Sch=btn[0]
set_property -dict { PACKAGE_PIN BB12  IOSTANDARD LVCMOS15 } [get_ports { btn[1] }]; #IO_L24N_T3_31 Sch=btn[1]


## -- USER LEDS
set_property PACKAGE_PIN AR22 [get_ports {leds[0]}]
set_property PACKAGE_PIN AR23 [get_ports {leds[1]}]
set_property IOSTANDARD LVCMOS15 [get_ports {leds[0]}]
set_property IOSTANDARD LVCMOS15 [get_ports {leds[1]}]

set_false_path -to [get_ports -filter NAME=~led*]

# UART - 115200 8-1 no parity
#UART not in use set_property PACKAGE_PIN AY19 [get_ports uart_rxd]
#UART not in use set_property PACKAGE_PIN BA19 [get_ports uart_txd]
#UART not in use set_property IOSTANDARD LVCMOS15 [get_ports uart_rxd]
#UART not in use set_property IOSTANDARD LVCMOS15 [get_ports uart_txd]

#False paths
#DMA not in use set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets {control_sub_i/dma_sub/pcie3_7x_1/inst/gt_top_i/pipe_wrapper_i/pipe_lane[0].gt_wrapper_i/pipe_txoutclk_out}]

# Bitfile Generation
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]

#sys_clk and clk_200 not in use set_false_path -from [get_clocks sys_clk] -to [get_clocks clk_200]

#sys_clk and clk_200 not in use set_false_path -from [get_clocks axi_clk] -to [get_clocks clk_200]
#sys_clk and clk_200 not in use set_false_path -from [get_clocks clk_200] -to [get_clocks axi_clk]
















