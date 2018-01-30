// (c) Copyright 1995-2018 Xilinx, Inc. All rights reserved.
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


// IP VLNV: NetFPGA:NetFPGA:spad_manager:1.00
// IP Revision: 1

(* X_CORE_INFO = "spad_manager,Vivado 2014.4" *)
(* CHECK_LICENSE_TYPE = "spad_manager_0,spad_manager,{}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module spad_manager_0 (
  clk,
  reset,
  LatchSpad,
  ResetSpad,
  RowSelect,
  ColSelect,
  RowGroup,
  FrameId,
  PixelIn0,
  PixelIn1,
  PixelIn2,
  PixelIn3,
  PixelOut0,
  PixelOut1,
  PixelOut2,
  PixelOut3,
  ReadEnable,
  FrameDurationRequestedClks,
  FrameDurationChangeEnable,
  FrameDurationCurrentClks
);

(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 signal_clock CLK" *)
input wire clk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 signal_reset RST" *)
input wire reset;
output wire LatchSpad;
output wire ResetSpad;
output wire [2 : 0] RowSelect;
output wire [5 : 0] ColSelect;
output wire RowGroup;
output wire [31 : 0] FrameId;
input wire [7 : 0] PixelIn0;
input wire [7 : 0] PixelIn1;
input wire [7 : 0] PixelIn2;
input wire [7 : 0] PixelIn3;
output wire [7 : 0] PixelOut0;
output wire [7 : 0] PixelOut1;
output wire [7 : 0] PixelOut2;
output wire [7 : 0] PixelOut3;
output wire ReadEnable;
input wire [21 : 0] FrameDurationRequestedClks;
output wire FrameDurationChangeEnable;
output wire [21 : 0] FrameDurationCurrentClks;

  spad_manager inst (
    .clk(clk),
    .reset(reset),
    .LatchSpad(LatchSpad),
    .ResetSpad(ResetSpad),
    .RowSelect(RowSelect),
    .ColSelect(ColSelect),
    .RowGroup(RowGroup),
    .FrameId(FrameId),
    .PixelIn0(PixelIn0),
    .PixelIn1(PixelIn1),
    .PixelIn2(PixelIn2),
    .PixelIn3(PixelIn3),
    .PixelOut0(PixelOut0),
    .PixelOut1(PixelOut1),
    .PixelOut2(PixelOut2),
    .PixelOut3(PixelOut3),
    .ReadEnable(ReadEnable),
    .FrameDurationRequestedClks(FrameDurationRequestedClks),
    .FrameDurationChangeEnable(FrameDurationChangeEnable),
    .FrameDurationCurrentClks(FrameDurationCurrentClks)
  );
endmodule
