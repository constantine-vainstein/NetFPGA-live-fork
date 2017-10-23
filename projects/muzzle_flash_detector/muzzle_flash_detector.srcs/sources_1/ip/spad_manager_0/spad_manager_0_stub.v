// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:29:27 MST 2014
// Date        : Mon Oct 23 22:14:39 2017
// Host        : DIGLABAPPS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/costa/Documents/MuzzleFlashDetection/trunk/projects/muzzle_flash_detector/muzzle_flash_detector.srcs/sources_1/ip/spad_manager_0/spad_manager_0_stub.v
// Design      : spad_manager_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx690tffg1761-3
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "spad_manager,Vivado 2014.4" *)
module spad_manager_0(clk, reset, LatchSpad, ResetSpad, RowSelect, ColSelect, RowGroup, FrameId, PixelIn0, PixelIn1, PixelIn2, PixelIn3, PixelOut0, PixelOut1, PixelOut2, PixelOut3, ReadEnable, FrameDurationRequestedClks, FrameDurationChangeEnable, FrameDurationCurrentClks)
/* synthesis syn_black_box black_box_pad_pin="clk,reset,LatchSpad,ResetSpad,RowSelect[2:0],ColSelect[5:0],RowGroup,FrameId[31:0],PixelIn0[7:0],PixelIn1[7:0],PixelIn2[7:0],PixelIn3[7:0],PixelOut0[7:0],PixelOut1[7:0],PixelOut2[7:0],PixelOut3[7:0],ReadEnable,FrameDurationRequestedClks[21:0],FrameDurationChangeEnable,FrameDurationCurrentClks[21:0]" */;
  input clk;
  input reset;
  output LatchSpad;
  output ResetSpad;
  output [2:0]RowSelect;
  output [5:0]ColSelect;
  output RowGroup;
  output [31:0]FrameId;
  input [7:0]PixelIn0;
  input [7:0]PixelIn1;
  input [7:0]PixelIn2;
  input [7:0]PixelIn3;
  output [7:0]PixelOut0;
  output [7:0]PixelOut1;
  output [7:0]PixelOut2;
  output [7:0]PixelOut3;
  output ReadEnable;
  input [21:0]FrameDurationRequestedClks;
  output FrameDurationChangeEnable;
  output [21:0]FrameDurationCurrentClks;
endmodule
