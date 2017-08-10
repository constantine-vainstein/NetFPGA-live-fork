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
//------------------------------------------------------------------------------
// Title      : Reset Sync Block
// Project    : AXI 10 Gigabit Ethernet MAC Core
//------------------------------------------------------------------------------
// File       : axi_10g_ethernet_0_reset_sync_block.v
// Author     : Xilinx Inc.
//------------------------------------------------------------------------------
// Description: Used on signals crossing from one clock domain to another, this
//              is a multiple flip-flop pipeline, with all flops placed together
//              into the same slice.  Thus the routing delay between the two is
//              minimum to safe-guard against metastability issues.
// -----------------------------------------------------------------------------

`timescale 1ps / 1ps

(* dont_touch = "yes" *)
module axi_10g_ethernet_0_reset_sync_block (
  input        clk,              // clock to be sync'ed to
  input        resetn_in,          // Data to be 'synced'
  output       reset_out          // synced data
);
  (* ASYNC_REG = "true" *)
  reg          sreset;
  (* ASYNC_REG = "true" *)
  reg          sreset2;
  (* ASYNC_REG = "true" *)
  reg          sreset3;
  (* ASYNC_REG = "true" *)
  reg          sreset4;
  (* ASYNC_REG = "true" *)
  reg          sreset5;
  
  reg          resetn_sync = 0;
  reg          reset = 0;
  
  
  always @(posedge clk)
  begin
     if (resetn_in == 1'b0)
        resetn_sync  <= 1'b0;
     else
        resetn_sync  <= 1'b1;
  end
  
  always @(posedge clk)
  begin
     if (resetn_sync == 1'b0) begin
        sreset5  <= 1'b1;
        sreset4  <= 1'b1;
        sreset3  <= 1'b1;
        sreset2  <= 1'b1;
        sreset   <= 1'b1;
     end
     else begin
        sreset5  <= 1'b0;
        sreset4  <= sreset5;
        sreset3  <= sreset4;
        sreset2  <= sreset3;
        sreset   <= sreset2;
        reset <= sreset;
     end
  end
  
  assign reset_out = reset;
  
  endmodule
  
