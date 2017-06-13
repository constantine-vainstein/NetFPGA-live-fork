/*******************************************************************************
*
* Copyright (C) 2010, 2011 The Board of Trustees of The Leland Stanford
*                          Junior University
* Copyright (C) 2010, 2011 Muhammad Shahbaz
* Copyright (C) 2015 Gianni Antichi
* All rights reserved.
*
* This software was developed by
* Stanford University and the University of Cambridge Computer Laboratory
* under National Science Foundation under Grant No. CNS-0855268,
* the University of Cambridge Computer Laboratory under EPSRC INTERNET Project EP/H040536/1 and
* by the University of Cambridge Computer Laboratory under DARPA/AFRL contract FA8750-11-C-0249 ("MRC2"), 
* as part of the DARPA MRC research programme.
*
* @NETFPGA_LICENSE_HEADER_START@
*
* Licensed to NetFPGA C.I.C. (NetFPGA) under one or more contributor
* license agreements. See the NOTICE file distributed with this work for
* additional information regarding copyright ownership. NetFPGA licenses this
* file to you under the NetFPGA Hardware-Software License, Version 1.0 (the
* "License"); you may not use this file except in compliance with the
* License. You may obtain a copy of the License at:
*
* http://www.netfpga-cic.org
*
* Unless required by applicable law or agreed to in writing, Work distributed
* under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
* CONDITIONS OF ANY KIND, either express or implied. See the License for the
* specific language governing permissions and limitations under the License.
*
* @NETFPGA_LICENSE_HEADER_END@
*
*/
/******************************************************************************
*
* File:
* 	eth_parser.v
*
*  Module:
*        eth_parser
*
*  Author:
*        Gianni Antichi, Muhammad Shahbaz
*
* Description:
* 	parsing of the L2 header
*
*/

`timescale 1ns/1ps

module eth_parser
    #(parameter C_S_AXIS_DATA_WIDTH  = 256,
      parameter C_S_AXIS_TUSER_WIDTH = 128,
      parameter SRC_PORT_POS         = 16,
      parameter NUM_QUEUES           = 8
    )
    (
	// --- Interface to the previous stage
	input  [C_S_AXIS_DATA_WIDTH-1:0]   tdata,
	input  [C_S_AXIS_TUSER_WIDTH-1:0]  tuser,
	input                              valid,
	input 				             tlast,

	// --- Interface to output_port_lookup
	output reg [47:0]                  dst_mac,
	output reg [47:0]                  src_mac,
	output reg [31:0]                  dst_ip,
	output reg [31:0]                  src_ip,
	output reg [15:0]                  dst_udp_port,
	output reg [15:0]                  src_udp_port,
	output reg                         eth_done,
	output reg [NUM_QUEUES-1:0]        src_port,
  
	// --- Misc
	input                              reset,
	input                              clk
    );
    
 // ------------ Internal Params --------

   localparam NUM_STATES         = 4;
   localparam READ_MAC_ADDRESSES = 1;
   localparam READ_IP_ADDRESSES_UDP  = 2;
   localparam COMPLETE_UDP  = 4;
   localparam WAIT_EOP           = 8;

   // ------------- Regs/ wires -----------

   reg [47:0]                  dst_mac_w;
   reg [47:0]                  src_mac_w;
   reg [31:0]                  dst_ip_w;
   reg [31:0]                  src_ip_w;
   reg [15:0]                  dst_udp_port_w;
   reg [15:0]                  src_udp_port_w;

   reg                         eth_done_w;
   reg                         ip_done_w;
   reg [NUM_QUEUES-1:0]        src_port_w;
   
   reg [NUM_STATES-1:0]        state, state_next;
 
   reg [(C_S_AXIS_DATA_WIDTH * 2) - 1 : 0] accumulated_tdata;
   
   reg [3:0]  ihl_w;

   wire [(C_S_AXIS_DATA_WIDTH * 2) - 1 : 0] accumulated_data_shifted_after_ip_header;
   wire [(C_S_AXIS_DATA_WIDTH * 2) - 1 : 0] tdata_shifted_to_dst_port_in_third_cycle;

   assign accumulated_data_shifted_after_ip_header = accumulated_tdata >> (144 + ihl_w * 32);
   assign tdata_shifted_to_dst_port_in_third_cycle = tdata >> (144 + ihl_w * 32 + 16 - 512);
   

   // ------------ Logic ----------------

   always @(*) begin
	src_mac_w      = 0;
	dst_mac_w      = 0;
	dst_ip_w		 = 0;
	src_ip_w       = 0;
	eth_done_w     = 0;
	dst_udp_port_w = 0;
	src_port_w     = 0;
	src_udp_port_w = 0;
	ihl_w = 0;
	ip_done_w = 0;
	state_next     = state;
      
	case(state)
	/* read the input source header and get the first word */
	READ_MAC_ADDRESSES: begin
		if(valid) begin
			src_port_w   = tuser[SRC_PORT_POS+7:SRC_PORT_POS];
			dst_mac_w    = tdata[47:0];
			src_mac_w    = tdata[95:48];			 
			eth_done_w   = 1;
			$display("AccData READ_MC state: %X", accumulated_tdata);
			$display("tData READ_MC state:   %X", tdata);
		end
	end // case: READ_WORD_1
		
	READ_IP_ADDRESSES_UDP: begin
	end
		
	COMPLETE_UDP: begin
		dst_udp_port_w = tdata_shifted_to_dst_port_in_third_cycle[15:0];
		ip_done_w   = 1;
		$display("AccData COMP_UD state: %X", accumulated_tdata);
		$display("tData COMP_UD state  : %X", tdata);
		state_next = WAIT_EOP;
	end

	WAIT_EOP: begin
		if(valid && tlast) begin
			state_next = READ_MAC_ADDRESSES;
			accumulated_tdata = 0;
		end
	end
	endcase // case(state)
   end // always @ (*)

   always @(posedge clk) begin
	if(valid) begin
	  accumulated_tdata   = {tdata[C_S_AXIS_DATA_WIDTH - 1 : 0], accumulated_tdata[C_S_AXIS_DATA_WIDTH * 2 - 1 : C_S_AXIS_DATA_WIDTH]};
	end 	  
	if(state == READ_MAC_ADDRESSES && valid) begin
		ihl_w = tdata[115:112];
		state_next = READ_IP_ADDRESSES_UDP;
		$display("posedge AccData READ_MC state: %X", accumulated_tdata);
		$display("posedge tData READ_MC state:   %X", tdata);
	end
		
	if(state == READ_IP_ADDRESSES_UDP && valid) begin
		src_ip_w = accumulated_tdata[239 : 208];
		dst_ip_w = accumulated_tdata[271 : 240];
		src_udp_port_w = accumulated_data_shifted_after_ip_header[15:0]; //[144 + ihl_w * 32 + 16 - 1 : 144 + ihl_w * 32];
		if (ihl_w > 11) begin
			state_next = COMPLETE_UDP;
		end else
		begin
			dst_udp_port_w = accumulated_data_shifted_after_ip_header[31:16];//[144 + ihl_w * 32 + 16 + 16 - 1 : 144 + ihl_w * 32 + 16]; 
			state_next = WAIT_EOP;
			ip_done_w   = 1;
		end
		$display("SRC IP: %d.%d.%d.%d", src_ip_w[7:0], src_ip_w[15:8], src_ip_w[23:16], src_ip_w[31:24]);
		$display("DST IP: %d.%d.%d.%d", dst_ip_w[7:0], dst_ip_w[15:8], dst_ip_w[23:16], dst_ip_w[31:24]);
		$display("AccData READ_IP state: %X", accumulated_tdata);
		$display("tData READ_IP state  : %X", tdata);
	end
      if(reset) begin
	     src_port <= {NUM_QUEUES{1'b0}};
		 dst_mac  <= 48'b0;
		 src_mac  <= 48'b0;
		 dst_ip   <= 32'b0;
		 src_ip   <= 32'b0;
		 dst_udp_port <= 16'b0;
		 src_udp_port <= 16'b0;
		 eth_done <= 0;
		 accumulated_tdata <= 0;
         state  <= READ_MAC_ADDRESSES;
      end
      else begin
	     src_port       <= src_port_w;
		 dst_mac        <= dst_mac_w;
		 src_mac        <= src_mac_w;
		 eth_done       <= eth_done_w;
		 dst_ip         <= dst_ip_w;
		 src_ip         <= src_ip_w;
		 dst_udp_port   <= dst_udp_port_w;
		 src_udp_port   <= src_udp_port_w;
		 
         state  <= state_next;
      end // else: !if(reset)
   end // always @ (posedge clk)

endmodule // ethernet_parser

