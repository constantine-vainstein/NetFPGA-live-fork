// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:29:27 MST 2014
// Date        : Sat Sep 16 21:48:58 2017
// Host        : DIGLABAPPS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/costa/Documents/MuzzleFlashDetection/trunk/projects/muzzle_flash_detector/muzzle_flash_detector.srcs/sources_1/ip/spad_manager_0/spad_manager_0_funcsim.v
// Design      : spad_manager_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx690tffg1761-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* X_CORE_INFO = "spad_manager,Vivado 2014.4" *) (* CHECK_LICENSE_TYPE = "spad_manager_0,spad_manager,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* NotValidForBitStream *)
module spad_manager_0
   (clk,
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
    FrameDurationCurrentClks);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 signal_clock CLK" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 signal_reset RST" *) input reset;
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

  wire [5:0]ColSelect;
  wire FrameDurationChangeEnable;
  wire [21:0]FrameDurationCurrentClks;
  wire [21:0]FrameDurationRequestedClks;
  wire [31:0]FrameId;
  wire LatchSpad;
  wire [7:0]PixelIn0;
  wire [7:0]PixelIn1;
  wire [7:0]PixelIn2;
  wire [7:0]PixelIn3;
  wire ReadEnable;
  wire ResetSpad;
  wire RowGroup;
  wire [2:0]RowSelect;
  wire clk;
  wire reset;

  assign PixelOut0[7:0] = PixelIn0;
  assign PixelOut1[7:0] = PixelIn1;
  assign PixelOut2[7:0] = PixelIn2;
  assign PixelOut3[7:0] = PixelIn3;
spad_manager_0_spad_manager inst
       (.ColSelect(ColSelect),
        .FrameDurationChangeEnable(FrameDurationChangeEnable),
        .FrameDurationCurrentClks(FrameDurationCurrentClks),
        .FrameDurationRequestedClks(FrameDurationRequestedClks),
        .FrameId(FrameId),
        .Q({ResetSpad,LatchSpad}),
        .ReadEnable(ReadEnable),
        .RowGroup(RowGroup),
        .RowSelect(RowSelect),
        .clk(clk),
        .reset(reset));
endmodule

(* ORIG_REF_NAME = "controller" *) 
module spad_manager_0_controller
   (FrameDurationCurrentClks,
    FrameId,
    ResetSpad,
    LatchSpad,
    ColSelect,
    RowSelect,
    RowGroup,
    ReadEnable,
    FrameDurationChangeEnable,
    FrameDurationRequestedClks,
    clk,
    reset);
  output [21:0]FrameDurationCurrentClks;
  output [31:0]FrameId;
  output ResetSpad;
  output LatchSpad;
  output [5:0]ColSelect;
  output [2:0]RowSelect;
  output RowGroup;
  output ReadEnable;
  output FrameDurationChangeEnable;
  input [21:0]FrameDurationRequestedClks;
  input clk;
  input reset;

  wire [5:0]ColSelect;
  wire FrameDurationChangeEnable;
  wire [21:0]FrameDurationCurrentClks;
  wire [21:0]FrameDurationRequestedClks;
  wire [31:0]FrameId;
  wire FrameId0;
  wire LatchSpad;
  wire ReadEnable;
  wire ResetSpad;
  wire RowGroup;
  wire [2:0]RowSelect;
  wire clk;
  wire is_next_state_needed;
  wire \n_0_FrameDurationCurrentClks[13]_INST_0 ;
  wire \n_0_FrameDurationCurrentClks[13]_INST_0_i_1 ;
  wire \n_0_FrameDurationCurrentClks[13]_INST_0_i_2 ;
  wire \n_0_FrameDurationCurrentClks[13]_INST_0_i_3 ;
  wire \n_0_FrameDurationCurrentClks[13]_INST_0_i_4 ;
  wire \n_0_FrameDurationCurrentClks[17]_INST_0 ;
  wire \n_0_FrameDurationCurrentClks[17]_INST_0_i_1 ;
  wire \n_0_FrameDurationCurrentClks[17]_INST_0_i_2 ;
  wire \n_0_FrameDurationCurrentClks[17]_INST_0_i_3 ;
  wire \n_0_FrameDurationCurrentClks[17]_INST_0_i_4 ;
  wire \n_0_FrameDurationCurrentClks[1]_INST_0 ;
  wire \n_0_FrameDurationCurrentClks[1]_INST_0_i_1 ;
  wire \n_0_FrameDurationCurrentClks[1]_INST_0_i_2 ;
  wire \n_0_FrameDurationCurrentClks[1]_INST_0_i_3 ;
  wire \n_0_FrameDurationCurrentClks[1]_INST_0_i_4 ;
  wire \n_0_FrameDurationCurrentClks[21]_INST_0_i_1 ;
  wire \n_0_FrameDurationCurrentClks[5]_INST_0 ;
  wire \n_0_FrameDurationCurrentClks[5]_INST_0_i_1 ;
  wire \n_0_FrameDurationCurrentClks[5]_INST_0_i_2 ;
  wire \n_0_FrameDurationCurrentClks[5]_INST_0_i_3 ;
  wire \n_0_FrameDurationCurrentClks[5]_INST_0_i_4 ;
  wire \n_0_FrameDurationCurrentClks[9]_INST_0 ;
  wire \n_0_FrameDurationCurrentClks[9]_INST_0_i_1 ;
  wire \n_0_FrameDurationCurrentClks[9]_INST_0_i_2 ;
  wire \n_0_FrameDurationCurrentClks[9]_INST_0_i_3 ;
  wire \n_0_FrameDurationCurrentClks[9]_INST_0_i_4 ;
  wire \n_0_FrameId[11]_i_2 ;
  wire \n_0_FrameId[11]_i_3 ;
  wire \n_0_FrameId[11]_i_4 ;
  wire \n_0_FrameId[11]_i_5 ;
  wire \n_0_FrameId[15]_i_2 ;
  wire \n_0_FrameId[15]_i_3 ;
  wire \n_0_FrameId[15]_i_4 ;
  wire \n_0_FrameId[15]_i_5 ;
  wire \n_0_FrameId[19]_i_2 ;
  wire \n_0_FrameId[19]_i_3 ;
  wire \n_0_FrameId[19]_i_4 ;
  wire \n_0_FrameId[19]_i_5 ;
  wire \n_0_FrameId[23]_i_2 ;
  wire \n_0_FrameId[23]_i_3 ;
  wire \n_0_FrameId[23]_i_4 ;
  wire \n_0_FrameId[23]_i_5 ;
  wire \n_0_FrameId[27]_i_2 ;
  wire \n_0_FrameId[27]_i_3 ;
  wire \n_0_FrameId[27]_i_4 ;
  wire \n_0_FrameId[27]_i_5 ;
  wire \n_0_FrameId[31]_i_1 ;
  wire \n_0_FrameId[31]_i_10 ;
  wire \n_0_FrameId[31]_i_11 ;
  wire \n_0_FrameId[31]_i_13 ;
  wire \n_0_FrameId[31]_i_14 ;
  wire \n_0_FrameId[31]_i_15 ;
  wire \n_0_FrameId[31]_i_16 ;
  wire \n_0_FrameId[31]_i_17 ;
  wire \n_0_FrameId[31]_i_18 ;
  wire \n_0_FrameId[31]_i_19 ;
  wire \n_0_FrameId[31]_i_20 ;
  wire \n_0_FrameId[31]_i_21 ;
  wire \n_0_FrameId[31]_i_22 ;
  wire \n_0_FrameId[31]_i_23 ;
  wire \n_0_FrameId[31]_i_4 ;
  wire \n_0_FrameId[31]_i_6 ;
  wire \n_0_FrameId[31]_i_7 ;
  wire \n_0_FrameId[31]_i_8 ;
  wire \n_0_FrameId[31]_i_9 ;
  wire \n_0_FrameId[3]_i_2 ;
  wire \n_0_FrameId[3]_i_3 ;
  wire \n_0_FrameId[3]_i_4 ;
  wire \n_0_FrameId[3]_i_5 ;
  wire \n_0_FrameId[7]_i_2 ;
  wire \n_0_FrameId[7]_i_3 ;
  wire \n_0_FrameId[7]_i_4 ;
  wire \n_0_FrameId[7]_i_5 ;
  wire \n_0_FrameId_reg[11]_i_1 ;
  wire \n_0_FrameId_reg[15]_i_1 ;
  wire \n_0_FrameId_reg[19]_i_1 ;
  wire \n_0_FrameId_reg[23]_i_1 ;
  wire \n_0_FrameId_reg[27]_i_1 ;
  wire \n_0_FrameId_reg[31]_i_12 ;
  wire \n_0_FrameId_reg[31]_i_5 ;
  wire \n_0_FrameId_reg[3]_i_1 ;
  wire \n_0_FrameId_reg[7]_i_1 ;
  wire \n_0_state[0]_i_1 ;
  wire \n_0_state[0]_i_10 ;
  wire \n_0_state[0]_i_11 ;
  wire \n_0_state[0]_i_13 ;
  wire \n_0_state[0]_i_14 ;
  wire \n_0_state[0]_i_15 ;
  wire \n_0_state[0]_i_16 ;
  wire \n_0_state[0]_i_17 ;
  wire \n_0_state[0]_i_18 ;
  wire \n_0_state[0]_i_19 ;
  wire \n_0_state[0]_i_20 ;
  wire \n_0_state[0]_i_24 ;
  wire \n_0_state[0]_i_25 ;
  wire \n_0_state[0]_i_26 ;
  wire \n_0_state[0]_i_27 ;
  wire \n_0_state[0]_i_28 ;
  wire \n_0_state[0]_i_29 ;
  wire \n_0_state[0]_i_30 ;
  wire \n_0_state[0]_i_31 ;
  wire \n_0_state[0]_i_34 ;
  wire \n_0_state[0]_i_35 ;
  wire \n_0_state[0]_i_36 ;
  wire \n_0_state[0]_i_37 ;
  wire \n_0_state[0]_i_38 ;
  wire \n_0_state[0]_i_39 ;
  wire \n_0_state[0]_i_4 ;
  wire \n_0_state[0]_i_40 ;
  wire \n_0_state[0]_i_41 ;
  wire \n_0_state[0]_i_42 ;
  wire \n_0_state[0]_i_43 ;
  wire \n_0_state[0]_i_47 ;
  wire \n_0_state[0]_i_48 ;
  wire \n_0_state[0]_i_49 ;
  wire \n_0_state[0]_i_5 ;
  wire \n_0_state[0]_i_50 ;
  wire \n_0_state[0]_i_51 ;
  wire \n_0_state[0]_i_52 ;
  wire \n_0_state[0]_i_53 ;
  wire \n_0_state[0]_i_54 ;
  wire \n_0_state[0]_i_55 ;
  wire \n_0_state[0]_i_56 ;
  wire \n_0_state[0]_i_57 ;
  wire \n_0_state[0]_i_58 ;
  wire \n_0_state[0]_i_59 ;
  wire \n_0_state[0]_i_6 ;
  wire \n_0_state[0]_i_7 ;
  wire \n_0_state[0]_i_8 ;
  wire \n_0_state[0]_i_9 ;
  wire \n_0_state[1]_i_1 ;
  wire \n_0_state[2]_i_1 ;
  wire \n_0_state[3]_i_1 ;
  wire \n_0_state_counter[0]_i_1 ;
  wire \n_0_state_counter[0]_i_3 ;
  wire \n_0_state_counter[0]_i_4 ;
  wire \n_0_state_counter[0]_i_5 ;
  wire \n_0_state_counter[0]_i_6 ;
  wire \n_0_state_counter[12]_i_2 ;
  wire \n_0_state_counter[12]_i_3 ;
  wire \n_0_state_counter[12]_i_4 ;
  wire \n_0_state_counter[12]_i_5 ;
  wire \n_0_state_counter[16]_i_2 ;
  wire \n_0_state_counter[16]_i_3 ;
  wire \n_0_state_counter[16]_i_4 ;
  wire \n_0_state_counter[16]_i_5 ;
  wire \n_0_state_counter[20]_i_2 ;
  wire \n_0_state_counter[20]_i_3 ;
  wire \n_0_state_counter[20]_i_4 ;
  wire \n_0_state_counter[4]_i_2 ;
  wire \n_0_state_counter[4]_i_3 ;
  wire \n_0_state_counter[4]_i_4 ;
  wire \n_0_state_counter[4]_i_5 ;
  wire \n_0_state_counter[8]_i_2 ;
  wire \n_0_state_counter[8]_i_3 ;
  wire \n_0_state_counter[8]_i_4 ;
  wire \n_0_state_counter[8]_i_5 ;
  wire \n_0_state_counter_reg[0]_i_2 ;
  wire \n_0_state_counter_reg[12]_i_1 ;
  wire \n_0_state_counter_reg[16]_i_1 ;
  wire \n_0_state_counter_reg[4]_i_1 ;
  wire \n_0_state_counter_reg[8]_i_1 ;
  wire \n_0_state_durations[8][0]_i_1 ;
  wire \n_0_state_durations[8][11]_i_2 ;
  wire \n_0_state_durations[8][11]_i_3 ;
  wire \n_0_state_durations[8][11]_i_4 ;
  wire \n_0_state_durations[8][11]_i_5 ;
  wire \n_0_state_durations[8][12]_i_1 ;
  wire \n_0_state_durations[8][16]_i_2 ;
  wire \n_0_state_durations[8][16]_i_3 ;
  wire \n_0_state_durations[8][16]_i_4 ;
  wire \n_0_state_durations[8][16]_i_5 ;
  wire \n_0_state_durations[8][20]_i_2 ;
  wire \n_0_state_durations[8][20]_i_3 ;
  wire \n_0_state_durations[8][20]_i_4 ;
  wire \n_0_state_durations[8][20]_i_5 ;
  wire \n_0_state_durations[8][22]_i_1 ;
  wire \n_0_state_durations[8][22]_i_3 ;
  wire \n_0_state_durations[8][4]_i_2 ;
  wire \n_0_state_durations[8][4]_i_3 ;
  wire \n_0_state_durations[8][4]_i_4 ;
  wire \n_0_state_durations[8][4]_i_5 ;
  wire \n_0_state_durations[8][8]_i_2 ;
  wire \n_0_state_durations[8][8]_i_3 ;
  wire \n_0_state_durations[8][8]_i_4 ;
  wire \n_0_state_durations[8][8]_i_5 ;
  wire \n_0_state_durations[8][9]_i_1 ;
  wire \n_0_state_durations_reg[8][0] ;
  wire \n_0_state_durations_reg[8][10] ;
  wire \n_0_state_durations_reg[8][11] ;
  wire \n_0_state_durations_reg[8][11]_i_1 ;
  wire \n_0_state_durations_reg[8][12] ;
  wire \n_0_state_durations_reg[8][13] ;
  wire \n_0_state_durations_reg[8][14] ;
  wire \n_0_state_durations_reg[8][15] ;
  wire \n_0_state_durations_reg[8][16] ;
  wire \n_0_state_durations_reg[8][16]_i_1 ;
  wire \n_0_state_durations_reg[8][17] ;
  wire \n_0_state_durations_reg[8][18] ;
  wire \n_0_state_durations_reg[8][19] ;
  wire \n_0_state_durations_reg[8][1] ;
  wire \n_0_state_durations_reg[8][20] ;
  wire \n_0_state_durations_reg[8][20]_i_1 ;
  wire \n_0_state_durations_reg[8][21] ;
  wire \n_0_state_durations_reg[8][22] ;
  wire \n_0_state_durations_reg[8][2] ;
  wire \n_0_state_durations_reg[8][3] ;
  wire \n_0_state_durations_reg[8][4] ;
  wire \n_0_state_durations_reg[8][4]_i_1 ;
  wire \n_0_state_durations_reg[8][5] ;
  wire \n_0_state_durations_reg[8][6] ;
  wire \n_0_state_durations_reg[8][7] ;
  wire \n_0_state_durations_reg[8][8] ;
  wire \n_0_state_durations_reg[8][8]_i_1 ;
  wire \n_0_state_durations_reg[8][9] ;
  wire \n_0_state_reg[0]_i_12 ;
  wire \n_0_state_reg[0]_i_22 ;
  wire \n_0_state_reg[0]_i_23 ;
  wire \n_0_state_reg[0]_i_3 ;
  wire \n_0_state_reg[0]_i_32 ;
  wire \n_0_state_reg[0]_i_33 ;
  wire \n_0_state_reg[0]_i_44 ;
  wire \n_0_state_reg[1] ;
  wire \n_1_FrameDurationCurrentClks[13]_INST_0 ;
  wire \n_1_FrameDurationCurrentClks[17]_INST_0 ;
  wire \n_1_FrameDurationCurrentClks[1]_INST_0 ;
  wire \n_1_FrameDurationCurrentClks[5]_INST_0 ;
  wire \n_1_FrameDurationCurrentClks[9]_INST_0 ;
  wire \n_1_FrameId_reg[11]_i_1 ;
  wire \n_1_FrameId_reg[15]_i_1 ;
  wire \n_1_FrameId_reg[19]_i_1 ;
  wire \n_1_FrameId_reg[23]_i_1 ;
  wire \n_1_FrameId_reg[27]_i_1 ;
  wire \n_1_FrameId_reg[31]_i_12 ;
  wire \n_1_FrameId_reg[31]_i_3 ;
  wire \n_1_FrameId_reg[31]_i_5 ;
  wire \n_1_FrameId_reg[3]_i_1 ;
  wire \n_1_FrameId_reg[7]_i_1 ;
  wire \n_1_state_counter_reg[0]_i_2 ;
  wire \n_1_state_counter_reg[12]_i_1 ;
  wire \n_1_state_counter_reg[16]_i_1 ;
  wire \n_1_state_counter_reg[4]_i_1 ;
  wire \n_1_state_counter_reg[8]_i_1 ;
  wire \n_1_state_durations_reg[8][11]_i_1 ;
  wire \n_1_state_durations_reg[8][16]_i_1 ;
  wire \n_1_state_durations_reg[8][20]_i_1 ;
  wire \n_1_state_durations_reg[8][4]_i_1 ;
  wire \n_1_state_durations_reg[8][8]_i_1 ;
  wire \n_1_state_reg[0]_i_12 ;
  wire \n_1_state_reg[0]_i_2 ;
  wire \n_1_state_reg[0]_i_21 ;
  wire \n_1_state_reg[0]_i_22 ;
  wire \n_1_state_reg[0]_i_23 ;
  wire \n_1_state_reg[0]_i_3 ;
  wire \n_1_state_reg[0]_i_32 ;
  wire \n_1_state_reg[0]_i_33 ;
  wire \n_1_state_reg[0]_i_44 ;
  wire \n_2_FrameDurationCurrentClks[13]_INST_0 ;
  wire \n_2_FrameDurationCurrentClks[17]_INST_0 ;
  wire \n_2_FrameDurationCurrentClks[1]_INST_0 ;
  wire \n_2_FrameDurationCurrentClks[5]_INST_0 ;
  wire \n_2_FrameDurationCurrentClks[9]_INST_0 ;
  wire \n_2_FrameId_reg[11]_i_1 ;
  wire \n_2_FrameId_reg[15]_i_1 ;
  wire \n_2_FrameId_reg[19]_i_1 ;
  wire \n_2_FrameId_reg[23]_i_1 ;
  wire \n_2_FrameId_reg[27]_i_1 ;
  wire \n_2_FrameId_reg[31]_i_12 ;
  wire \n_2_FrameId_reg[31]_i_3 ;
  wire \n_2_FrameId_reg[31]_i_5 ;
  wire \n_2_FrameId_reg[3]_i_1 ;
  wire \n_2_FrameId_reg[7]_i_1 ;
  wire \n_2_state_counter_reg[0]_i_2 ;
  wire \n_2_state_counter_reg[12]_i_1 ;
  wire \n_2_state_counter_reg[16]_i_1 ;
  wire \n_2_state_counter_reg[20]_i_1 ;
  wire \n_2_state_counter_reg[4]_i_1 ;
  wire \n_2_state_counter_reg[8]_i_1 ;
  wire \n_2_state_durations_reg[8][11]_i_1 ;
  wire \n_2_state_durations_reg[8][16]_i_1 ;
  wire \n_2_state_durations_reg[8][20]_i_1 ;
  wire \n_2_state_durations_reg[8][4]_i_1 ;
  wire \n_2_state_durations_reg[8][8]_i_1 ;
  wire \n_2_state_reg[0]_i_12 ;
  wire \n_2_state_reg[0]_i_2 ;
  wire \n_2_state_reg[0]_i_22 ;
  wire \n_2_state_reg[0]_i_23 ;
  wire \n_2_state_reg[0]_i_3 ;
  wire \n_2_state_reg[0]_i_32 ;
  wire \n_2_state_reg[0]_i_33 ;
  wire \n_2_state_reg[0]_i_44 ;
  wire \n_3_FrameDurationCurrentClks[13]_INST_0 ;
  wire \n_3_FrameDurationCurrentClks[17]_INST_0 ;
  wire \n_3_FrameDurationCurrentClks[1]_INST_0 ;
  wire \n_3_FrameDurationCurrentClks[5]_INST_0 ;
  wire \n_3_FrameDurationCurrentClks[9]_INST_0 ;
  wire \n_3_FrameId_reg[11]_i_1 ;
  wire \n_3_FrameId_reg[15]_i_1 ;
  wire \n_3_FrameId_reg[19]_i_1 ;
  wire \n_3_FrameId_reg[23]_i_1 ;
  wire \n_3_FrameId_reg[27]_i_1 ;
  wire \n_3_FrameId_reg[31]_i_12 ;
  wire \n_3_FrameId_reg[31]_i_3 ;
  wire \n_3_FrameId_reg[31]_i_5 ;
  wire \n_3_FrameId_reg[3]_i_1 ;
  wire \n_3_FrameId_reg[7]_i_1 ;
  wire \n_3_state_counter_reg[0]_i_2 ;
  wire \n_3_state_counter_reg[12]_i_1 ;
  wire \n_3_state_counter_reg[16]_i_1 ;
  wire \n_3_state_counter_reg[20]_i_1 ;
  wire \n_3_state_counter_reg[4]_i_1 ;
  wire \n_3_state_counter_reg[8]_i_1 ;
  wire \n_3_state_durations_reg[8][11]_i_1 ;
  wire \n_3_state_durations_reg[8][16]_i_1 ;
  wire \n_3_state_durations_reg[8][20]_i_1 ;
  wire \n_3_state_durations_reg[8][22]_i_2 ;
  wire \n_3_state_durations_reg[8][4]_i_1 ;
  wire \n_3_state_durations_reg[8][8]_i_1 ;
  wire \n_3_state_reg[0]_i_12 ;
  wire \n_3_state_reg[0]_i_2 ;
  wire \n_3_state_reg[0]_i_21 ;
  wire \n_3_state_reg[0]_i_22 ;
  wire \n_3_state_reg[0]_i_23 ;
  wire \n_3_state_reg[0]_i_3 ;
  wire \n_3_state_reg[0]_i_32 ;
  wire \n_3_state_reg[0]_i_33 ;
  wire \n_3_state_reg[0]_i_44 ;
  wire \n_4_FrameId_reg[11]_i_1 ;
  wire \n_4_FrameId_reg[15]_i_1 ;
  wire \n_4_FrameId_reg[19]_i_1 ;
  wire \n_4_FrameId_reg[23]_i_1 ;
  wire \n_4_FrameId_reg[27]_i_1 ;
  wire \n_4_FrameId_reg[31]_i_3 ;
  wire \n_4_FrameId_reg[3]_i_1 ;
  wire \n_4_FrameId_reg[7]_i_1 ;
  wire \n_4_state_counter_reg[0]_i_2 ;
  wire \n_4_state_counter_reg[12]_i_1 ;
  wire \n_4_state_counter_reg[16]_i_1 ;
  wire \n_4_state_counter_reg[4]_i_1 ;
  wire \n_4_state_counter_reg[8]_i_1 ;
  wire \n_4_state_reg[0]_i_22 ;
  wire \n_4_state_reg[0]_i_23 ;
  wire \n_4_state_reg[0]_i_32 ;
  wire \n_4_state_reg[0]_i_33 ;
  wire \n_4_state_reg[0]_i_44 ;
  wire \n_5_FrameId_reg[11]_i_1 ;
  wire \n_5_FrameId_reg[15]_i_1 ;
  wire \n_5_FrameId_reg[19]_i_1 ;
  wire \n_5_FrameId_reg[23]_i_1 ;
  wire \n_5_FrameId_reg[27]_i_1 ;
  wire \n_5_FrameId_reg[31]_i_3 ;
  wire \n_5_FrameId_reg[3]_i_1 ;
  wire \n_5_FrameId_reg[7]_i_1 ;
  wire \n_5_state_counter_reg[0]_i_2 ;
  wire \n_5_state_counter_reg[12]_i_1 ;
  wire \n_5_state_counter_reg[16]_i_1 ;
  wire \n_5_state_counter_reg[20]_i_1 ;
  wire \n_5_state_counter_reg[4]_i_1 ;
  wire \n_5_state_counter_reg[8]_i_1 ;
  wire \n_5_state_reg[0]_i_22 ;
  wire \n_5_state_reg[0]_i_23 ;
  wire \n_5_state_reg[0]_i_32 ;
  wire \n_5_state_reg[0]_i_33 ;
  wire \n_5_state_reg[0]_i_44 ;
  wire \n_6_FrameId_reg[11]_i_1 ;
  wire \n_6_FrameId_reg[15]_i_1 ;
  wire \n_6_FrameId_reg[19]_i_1 ;
  wire \n_6_FrameId_reg[23]_i_1 ;
  wire \n_6_FrameId_reg[27]_i_1 ;
  wire \n_6_FrameId_reg[31]_i_3 ;
  wire \n_6_FrameId_reg[3]_i_1 ;
  wire \n_6_FrameId_reg[7]_i_1 ;
  wire \n_6_state_counter_reg[0]_i_2 ;
  wire \n_6_state_counter_reg[12]_i_1 ;
  wire \n_6_state_counter_reg[16]_i_1 ;
  wire \n_6_state_counter_reg[20]_i_1 ;
  wire \n_6_state_counter_reg[4]_i_1 ;
  wire \n_6_state_counter_reg[8]_i_1 ;
  wire \n_6_state_reg[0]_i_21 ;
  wire \n_6_state_reg[0]_i_22 ;
  wire \n_6_state_reg[0]_i_23 ;
  wire \n_6_state_reg[0]_i_32 ;
  wire \n_6_state_reg[0]_i_33 ;
  wire \n_6_state_reg[0]_i_44 ;
  wire \n_7_FrameId_reg[11]_i_1 ;
  wire \n_7_FrameId_reg[15]_i_1 ;
  wire \n_7_FrameId_reg[19]_i_1 ;
  wire \n_7_FrameId_reg[23]_i_1 ;
  wire \n_7_FrameId_reg[27]_i_1 ;
  wire \n_7_FrameId_reg[31]_i_3 ;
  wire \n_7_FrameId_reg[3]_i_1 ;
  wire \n_7_FrameId_reg[7]_i_1 ;
  wire \n_7_state_counter_reg[0]_i_2 ;
  wire \n_7_state_counter_reg[12]_i_1 ;
  wire \n_7_state_counter_reg[16]_i_1 ;
  wire \n_7_state_counter_reg[20]_i_1 ;
  wire \n_7_state_counter_reg[4]_i_1 ;
  wire \n_7_state_counter_reg[8]_i_1 ;
  wire \n_7_state_reg[0]_i_21 ;
  wire \n_7_state_reg[0]_i_22 ;
  wire \n_7_state_reg[0]_i_23 ;
  wire \n_7_state_reg[0]_i_32 ;
  wire \n_7_state_reg[0]_i_33 ;
  wire \n_7_state_reg[0]_i_44 ;
  wire [22:1]p_0_in;
  wire read_data;
  wire reset;
  wire [22:0]state_counter_reg;
  wire [1:0]state_durations;
  wire [3:0]\NLW_FrameDurationCurrentClks[21]_INST_0_CO_UNCONNECTED ;
  wire [3:1]\NLW_FrameDurationCurrentClks[21]_INST_0_O_UNCONNECTED ;
  wire [3:0]\NLW_FrameId_reg[31]_i_12_O_UNCONNECTED ;
  wire [3:3]\NLW_FrameId_reg[31]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_FrameId_reg[31]_i_5_O_UNCONNECTED ;
  wire [3:2]\NLW_state_counter_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_state_counter_reg[20]_i_1_O_UNCONNECTED ;
  wire [3:1]\NLW_state_durations_reg[8][22]_i_2_CO_UNCONNECTED ;
  wire [3:2]\NLW_state_durations_reg[8][22]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_state_reg[0]_i_12_O_UNCONNECTED ;
  wire [3:0]\NLW_state_reg[0]_i_2_O_UNCONNECTED ;
  wire [3:1]\NLW_state_reg[0]_i_21_CO_UNCONNECTED ;
  wire [3:2]\NLW_state_reg[0]_i_21_O_UNCONNECTED ;
  wire [3:0]\NLW_state_reg[0]_i_3_O_UNCONNECTED ;

(* SOFT_HLUTNM = "soft_lutpair9" *) 
   LUT1 #(
    .INIT(2'h1)) 
     FrameDurationChangeEnable_INST_0
       (.I0(read_data),
        .O(FrameDurationChangeEnable));
(* SOFT_HLUTNM = "soft_lutpair10" *) 
   LUT1 #(
    .INIT(2'h1)) 
     \FrameDurationCurrentClks[0]_INST_0 
       (.I0(\n_0_state_durations_reg[8][0] ),
        .O(FrameDurationCurrentClks[0]));
CARRY4 \FrameDurationCurrentClks[13]_INST_0 
       (.CI(\n_0_FrameDurationCurrentClks[9]_INST_0 ),
        .CO({\n_0_FrameDurationCurrentClks[13]_INST_0 ,\n_1_FrameDurationCurrentClks[13]_INST_0 ,\n_2_FrameDurationCurrentClks[13]_INST_0 ,\n_3_FrameDurationCurrentClks[13]_INST_0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(FrameDurationCurrentClks[16:13]),
        .S({\n_0_FrameDurationCurrentClks[13]_INST_0_i_1 ,\n_0_FrameDurationCurrentClks[13]_INST_0_i_2 ,\n_0_FrameDurationCurrentClks[13]_INST_0_i_3 ,\n_0_FrameDurationCurrentClks[13]_INST_0_i_4 }));
LUT1 #(
    .INIT(2'h2)) 
     \FrameDurationCurrentClks[13]_INST_0_i_1 
       (.I0(\n_0_state_durations_reg[8][16] ),
        .O(\n_0_FrameDurationCurrentClks[13]_INST_0_i_1 ));
LUT1 #(
    .INIT(2'h2)) 
     \FrameDurationCurrentClks[13]_INST_0_i_2 
       (.I0(\n_0_state_durations_reg[8][15] ),
        .O(\n_0_FrameDurationCurrentClks[13]_INST_0_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \FrameDurationCurrentClks[13]_INST_0_i_3 
       (.I0(\n_0_state_durations_reg[8][14] ),
        .O(\n_0_FrameDurationCurrentClks[13]_INST_0_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \FrameDurationCurrentClks[13]_INST_0_i_4 
       (.I0(\n_0_state_durations_reg[8][13] ),
        .O(\n_0_FrameDurationCurrentClks[13]_INST_0_i_4 ));
CARRY4 \FrameDurationCurrentClks[17]_INST_0 
       (.CI(\n_0_FrameDurationCurrentClks[13]_INST_0 ),
        .CO({\n_0_FrameDurationCurrentClks[17]_INST_0 ,\n_1_FrameDurationCurrentClks[17]_INST_0 ,\n_2_FrameDurationCurrentClks[17]_INST_0 ,\n_3_FrameDurationCurrentClks[17]_INST_0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(FrameDurationCurrentClks[20:17]),
        .S({\n_0_FrameDurationCurrentClks[17]_INST_0_i_1 ,\n_0_FrameDurationCurrentClks[17]_INST_0_i_2 ,\n_0_FrameDurationCurrentClks[17]_INST_0_i_3 ,\n_0_FrameDurationCurrentClks[17]_INST_0_i_4 }));
LUT1 #(
    .INIT(2'h2)) 
     \FrameDurationCurrentClks[17]_INST_0_i_1 
       (.I0(\n_0_state_durations_reg[8][20] ),
        .O(\n_0_FrameDurationCurrentClks[17]_INST_0_i_1 ));
LUT1 #(
    .INIT(2'h2)) 
     \FrameDurationCurrentClks[17]_INST_0_i_2 
       (.I0(\n_0_state_durations_reg[8][19] ),
        .O(\n_0_FrameDurationCurrentClks[17]_INST_0_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \FrameDurationCurrentClks[17]_INST_0_i_3 
       (.I0(\n_0_state_durations_reg[8][18] ),
        .O(\n_0_FrameDurationCurrentClks[17]_INST_0_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \FrameDurationCurrentClks[17]_INST_0_i_4 
       (.I0(\n_0_state_durations_reg[8][17] ),
        .O(\n_0_FrameDurationCurrentClks[17]_INST_0_i_4 ));
CARRY4 \FrameDurationCurrentClks[1]_INST_0 
       (.CI(1'b0),
        .CO({\n_0_FrameDurationCurrentClks[1]_INST_0 ,\n_1_FrameDurationCurrentClks[1]_INST_0 ,\n_2_FrameDurationCurrentClks[1]_INST_0 ,\n_3_FrameDurationCurrentClks[1]_INST_0 }),
        .CYINIT(\n_0_state_durations_reg[8][0] ),
        .DI({1'b0,1'b0,\n_0_state_durations_reg[8][2] ,1'b0}),
        .O(FrameDurationCurrentClks[4:1]),
        .S({\n_0_FrameDurationCurrentClks[1]_INST_0_i_1 ,\n_0_FrameDurationCurrentClks[1]_INST_0_i_2 ,\n_0_FrameDurationCurrentClks[1]_INST_0_i_3 ,\n_0_FrameDurationCurrentClks[1]_INST_0_i_4 }));
LUT1 #(
    .INIT(2'h2)) 
     \FrameDurationCurrentClks[1]_INST_0_i_1 
       (.I0(\n_0_state_durations_reg[8][4] ),
        .O(\n_0_FrameDurationCurrentClks[1]_INST_0_i_1 ));
LUT1 #(
    .INIT(2'h2)) 
     \FrameDurationCurrentClks[1]_INST_0_i_2 
       (.I0(\n_0_state_durations_reg[8][3] ),
        .O(\n_0_FrameDurationCurrentClks[1]_INST_0_i_2 ));
LUT1 #(
    .INIT(2'h1)) 
     \FrameDurationCurrentClks[1]_INST_0_i_3 
       (.I0(\n_0_state_durations_reg[8][2] ),
        .O(\n_0_FrameDurationCurrentClks[1]_INST_0_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \FrameDurationCurrentClks[1]_INST_0_i_4 
       (.I0(\n_0_state_durations_reg[8][1] ),
        .O(\n_0_FrameDurationCurrentClks[1]_INST_0_i_4 ));
CARRY4 \FrameDurationCurrentClks[21]_INST_0 
       (.CI(\n_0_FrameDurationCurrentClks[17]_INST_0 ),
        .CO(\NLW_FrameDurationCurrentClks[21]_INST_0_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_FrameDurationCurrentClks[21]_INST_0_O_UNCONNECTED [3:1],FrameDurationCurrentClks[21]}),
        .S({1'b0,1'b0,1'b0,\n_0_FrameDurationCurrentClks[21]_INST_0_i_1 }));
LUT1 #(
    .INIT(2'h2)) 
     \FrameDurationCurrentClks[21]_INST_0_i_1 
       (.I0(\n_0_state_durations_reg[8][21] ),
        .O(\n_0_FrameDurationCurrentClks[21]_INST_0_i_1 ));
CARRY4 \FrameDurationCurrentClks[5]_INST_0 
       (.CI(\n_0_FrameDurationCurrentClks[1]_INST_0 ),
        .CO({\n_0_FrameDurationCurrentClks[5]_INST_0 ,\n_1_FrameDurationCurrentClks[5]_INST_0 ,\n_2_FrameDurationCurrentClks[5]_INST_0 ,\n_3_FrameDurationCurrentClks[5]_INST_0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(FrameDurationCurrentClks[8:5]),
        .S({\n_0_FrameDurationCurrentClks[5]_INST_0_i_1 ,\n_0_FrameDurationCurrentClks[5]_INST_0_i_2 ,\n_0_FrameDurationCurrentClks[5]_INST_0_i_3 ,\n_0_FrameDurationCurrentClks[5]_INST_0_i_4 }));
LUT1 #(
    .INIT(2'h2)) 
     \FrameDurationCurrentClks[5]_INST_0_i_1 
       (.I0(\n_0_state_durations_reg[8][8] ),
        .O(\n_0_FrameDurationCurrentClks[5]_INST_0_i_1 ));
LUT1 #(
    .INIT(2'h2)) 
     \FrameDurationCurrentClks[5]_INST_0_i_2 
       (.I0(\n_0_state_durations_reg[8][7] ),
        .O(\n_0_FrameDurationCurrentClks[5]_INST_0_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \FrameDurationCurrentClks[5]_INST_0_i_3 
       (.I0(\n_0_state_durations_reg[8][6] ),
        .O(\n_0_FrameDurationCurrentClks[5]_INST_0_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \FrameDurationCurrentClks[5]_INST_0_i_4 
       (.I0(\n_0_state_durations_reg[8][5] ),
        .O(\n_0_FrameDurationCurrentClks[5]_INST_0_i_4 ));
CARRY4 \FrameDurationCurrentClks[9]_INST_0 
       (.CI(\n_0_FrameDurationCurrentClks[5]_INST_0 ),
        .CO({\n_0_FrameDurationCurrentClks[9]_INST_0 ,\n_1_FrameDurationCurrentClks[9]_INST_0 ,\n_2_FrameDurationCurrentClks[9]_INST_0 ,\n_3_FrameDurationCurrentClks[9]_INST_0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(FrameDurationCurrentClks[12:9]),
        .S({\n_0_FrameDurationCurrentClks[9]_INST_0_i_1 ,\n_0_FrameDurationCurrentClks[9]_INST_0_i_2 ,\n_0_FrameDurationCurrentClks[9]_INST_0_i_3 ,\n_0_FrameDurationCurrentClks[9]_INST_0_i_4 }));
LUT1 #(
    .INIT(2'h2)) 
     \FrameDurationCurrentClks[9]_INST_0_i_1 
       (.I0(\n_0_state_durations_reg[8][12] ),
        .O(\n_0_FrameDurationCurrentClks[9]_INST_0_i_1 ));
LUT1 #(
    .INIT(2'h2)) 
     \FrameDurationCurrentClks[9]_INST_0_i_2 
       (.I0(\n_0_state_durations_reg[8][11] ),
        .O(\n_0_FrameDurationCurrentClks[9]_INST_0_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \FrameDurationCurrentClks[9]_INST_0_i_3 
       (.I0(\n_0_state_durations_reg[8][10] ),
        .O(\n_0_FrameDurationCurrentClks[9]_INST_0_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \FrameDurationCurrentClks[9]_INST_0_i_4 
       (.I0(\n_0_state_durations_reg[8][9] ),
        .O(\n_0_FrameDurationCurrentClks[9]_INST_0_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \FrameId[11]_i_2 
       (.I0(FrameId[11]),
        .O(\n_0_FrameId[11]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \FrameId[11]_i_3 
       (.I0(FrameId[10]),
        .O(\n_0_FrameId[11]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \FrameId[11]_i_4 
       (.I0(FrameId[9]),
        .O(\n_0_FrameId[11]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \FrameId[11]_i_5 
       (.I0(FrameId[8]),
        .O(\n_0_FrameId[11]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \FrameId[15]_i_2 
       (.I0(FrameId[15]),
        .O(\n_0_FrameId[15]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \FrameId[15]_i_3 
       (.I0(FrameId[14]),
        .O(\n_0_FrameId[15]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \FrameId[15]_i_4 
       (.I0(FrameId[13]),
        .O(\n_0_FrameId[15]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \FrameId[15]_i_5 
       (.I0(FrameId[12]),
        .O(\n_0_FrameId[15]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \FrameId[19]_i_2 
       (.I0(FrameId[19]),
        .O(\n_0_FrameId[19]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \FrameId[19]_i_3 
       (.I0(FrameId[18]),
        .O(\n_0_FrameId[19]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \FrameId[19]_i_4 
       (.I0(FrameId[17]),
        .O(\n_0_FrameId[19]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \FrameId[19]_i_5 
       (.I0(FrameId[16]),
        .O(\n_0_FrameId[19]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \FrameId[23]_i_2 
       (.I0(FrameId[23]),
        .O(\n_0_FrameId[23]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \FrameId[23]_i_3 
       (.I0(FrameId[22]),
        .O(\n_0_FrameId[23]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \FrameId[23]_i_4 
       (.I0(FrameId[21]),
        .O(\n_0_FrameId[23]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \FrameId[23]_i_5 
       (.I0(FrameId[20]),
        .O(\n_0_FrameId[23]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \FrameId[27]_i_2 
       (.I0(FrameId[27]),
        .O(\n_0_FrameId[27]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \FrameId[27]_i_3 
       (.I0(FrameId[26]),
        .O(\n_0_FrameId[27]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \FrameId[27]_i_4 
       (.I0(FrameId[25]),
        .O(\n_0_FrameId[27]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \FrameId[27]_i_5 
       (.I0(FrameId[24]),
        .O(\n_0_FrameId[27]_i_5 ));
LUT5 #(
    .INIT(32'hFFFF0010)) 
     \FrameId[31]_i_1 
       (.I0(\n_0_FrameId[31]_i_4 ),
        .I1(read_data),
        .I2(\n_0_FrameId_reg[31]_i_5 ),
        .I3(\n_0_FrameId[31]_i_6 ),
        .I4(reset),
        .O(\n_0_FrameId[31]_i_1 ));
LUT1 #(
    .INIT(2'h2)) 
     \FrameId[31]_i_10 
       (.I0(FrameId[28]),
        .O(\n_0_FrameId[31]_i_10 ));
LUT5 #(
    .INIT(32'hFFFFFFFE)) 
     \FrameId[31]_i_11 
       (.I0(\n_0_FrameId[31]_i_18 ),
        .I1(FrameDurationRequestedClks[18]),
        .I2(FrameDurationRequestedClks[17]),
        .I3(FrameDurationRequestedClks[16]),
        .I4(FrameDurationRequestedClks[15]),
        .O(\n_0_FrameId[31]_i_11 ));
LUT2 #(
    .INIT(4'h9)) 
     \FrameId[31]_i_13 
       (.I0(FrameDurationCurrentClks[21]),
        .I1(FrameDurationRequestedClks[21]),
        .O(\n_0_FrameId[31]_i_13 ));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     \FrameId[31]_i_14 
       (.I0(FrameDurationCurrentClks[20]),
        .I1(FrameDurationRequestedClks[20]),
        .I2(FrameDurationCurrentClks[19]),
        .I3(FrameDurationRequestedClks[19]),
        .I4(FrameDurationRequestedClks[18]),
        .I5(FrameDurationCurrentClks[18]),
        .O(\n_0_FrameId[31]_i_14 ));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     \FrameId[31]_i_15 
       (.I0(FrameDurationCurrentClks[17]),
        .I1(FrameDurationRequestedClks[17]),
        .I2(FrameDurationCurrentClks[16]),
        .I3(FrameDurationRequestedClks[16]),
        .I4(FrameDurationRequestedClks[15]),
        .I5(FrameDurationCurrentClks[15]),
        .O(\n_0_FrameId[31]_i_15 ));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     \FrameId[31]_i_16 
       (.I0(FrameDurationCurrentClks[14]),
        .I1(FrameDurationRequestedClks[14]),
        .I2(FrameDurationCurrentClks[13]),
        .I3(FrameDurationRequestedClks[13]),
        .I4(FrameDurationRequestedClks[12]),
        .I5(FrameDurationCurrentClks[12]),
        .O(\n_0_FrameId[31]_i_16 ));
LUT5 #(
    .INIT(32'h00010000)) 
     \FrameId[31]_i_17 
       (.I0(FrameDurationRequestedClks[7]),
        .I1(FrameDurationRequestedClks[8]),
        .I2(FrameDurationRequestedClks[10]),
        .I3(FrameDurationRequestedClks[11]),
        .I4(\n_0_FrameId[31]_i_23 ),
        .O(\n_0_FrameId[31]_i_17 ));
LUT5 #(
    .INIT(32'hFFFFFFFE)) 
     \FrameId[31]_i_18 
       (.I0(FrameDurationRequestedClks[20]),
        .I1(FrameDurationRequestedClks[21]),
        .I2(FrameDurationRequestedClks[19]),
        .I3(FrameDurationRequestedClks[13]),
        .I4(FrameDurationRequestedClks[14]),
        .O(\n_0_FrameId[31]_i_18 ));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     \FrameId[31]_i_19 
       (.I0(FrameDurationCurrentClks[11]),
        .I1(FrameDurationRequestedClks[11]),
        .I2(FrameDurationCurrentClks[10]),
        .I3(FrameDurationRequestedClks[10]),
        .I4(FrameDurationRequestedClks[9]),
        .I5(FrameDurationCurrentClks[9]),
        .O(\n_0_FrameId[31]_i_19 ));
LUT5 #(
    .INIT(32'h00000200)) 
     \FrameId[31]_i_2 
       (.I0(read_data),
        .I1(LatchSpad),
        .I2(ResetSpad),
        .I3(is_next_state_needed),
        .I4(\n_0_state_reg[1] ),
        .O(FrameId0));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     \FrameId[31]_i_20 
       (.I0(FrameDurationCurrentClks[8]),
        .I1(FrameDurationRequestedClks[8]),
        .I2(FrameDurationCurrentClks[7]),
        .I3(FrameDurationRequestedClks[7]),
        .I4(FrameDurationRequestedClks[6]),
        .I5(FrameDurationCurrentClks[6]),
        .O(\n_0_FrameId[31]_i_20 ));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     \FrameId[31]_i_21 
       (.I0(FrameDurationCurrentClks[5]),
        .I1(FrameDurationRequestedClks[5]),
        .I2(FrameDurationCurrentClks[4]),
        .I3(FrameDurationRequestedClks[4]),
        .I4(FrameDurationRequestedClks[3]),
        .I5(FrameDurationCurrentClks[3]),
        .O(\n_0_FrameId[31]_i_21 ));
LUT6 #(
    .INIT(64'h6006000000006006)) 
     \FrameId[31]_i_22 
       (.I0(\n_0_state_durations_reg[8][0] ),
        .I1(FrameDurationRequestedClks[0]),
        .I2(FrameDurationCurrentClks[2]),
        .I3(FrameDurationRequestedClks[2]),
        .I4(FrameDurationRequestedClks[1]),
        .I5(FrameDurationCurrentClks[1]),
        .O(\n_0_FrameId[31]_i_22 ));
LUT4 #(
    .INIT(16'h0001)) 
     \FrameId[31]_i_23 
       (.I0(FrameDurationRequestedClks[4]),
        .I1(FrameDurationRequestedClks[3]),
        .I2(FrameDurationRequestedClks[6]),
        .I3(FrameDurationRequestedClks[5]),
        .O(\n_0_FrameId[31]_i_23 ));
LUT5 #(
    .INIT(32'h000100FF)) 
     \FrameId[31]_i_4 
       (.I0(FrameDurationRequestedClks[11]),
        .I1(FrameDurationRequestedClks[10]),
        .I2(FrameDurationRequestedClks[9]),
        .I3(\n_0_FrameId[31]_i_11 ),
        .I4(FrameDurationRequestedClks[12]),
        .O(\n_0_FrameId[31]_i_4 ));
(* SOFT_HLUTNM = "soft_lutpair8" *) 
   LUT5 #(
    .INIT(32'h00001F00)) 
     \FrameId[31]_i_6 
       (.I0(FrameDurationRequestedClks[0]),
        .I1(FrameDurationRequestedClks[1]),
        .I2(FrameDurationRequestedClks[2]),
        .I3(\n_0_FrameId[31]_i_17 ),
        .I4(\n_0_FrameId[31]_i_11 ),
        .O(\n_0_FrameId[31]_i_6 ));
LUT1 #(
    .INIT(2'h2)) 
     \FrameId[31]_i_7 
       (.I0(FrameId[31]),
        .O(\n_0_FrameId[31]_i_7 ));
LUT1 #(
    .INIT(2'h2)) 
     \FrameId[31]_i_8 
       (.I0(FrameId[30]),
        .O(\n_0_FrameId[31]_i_8 ));
LUT1 #(
    .INIT(2'h2)) 
     \FrameId[31]_i_9 
       (.I0(FrameId[29]),
        .O(\n_0_FrameId[31]_i_9 ));
LUT1 #(
    .INIT(2'h2)) 
     \FrameId[3]_i_2 
       (.I0(FrameId[3]),
        .O(\n_0_FrameId[3]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \FrameId[3]_i_3 
       (.I0(FrameId[2]),
        .O(\n_0_FrameId[3]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \FrameId[3]_i_4 
       (.I0(FrameId[1]),
        .O(\n_0_FrameId[3]_i_4 ));
LUT1 #(
    .INIT(2'h1)) 
     \FrameId[3]_i_5 
       (.I0(FrameId[0]),
        .O(\n_0_FrameId[3]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \FrameId[7]_i_2 
       (.I0(FrameId[7]),
        .O(\n_0_FrameId[7]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \FrameId[7]_i_3 
       (.I0(FrameId[6]),
        .O(\n_0_FrameId[7]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \FrameId[7]_i_4 
       (.I0(FrameId[5]),
        .O(\n_0_FrameId[7]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \FrameId[7]_i_5 
       (.I0(FrameId[4]),
        .O(\n_0_FrameId[7]_i_5 ));
FDRE \FrameId_reg[0] 
       (.C(clk),
        .CE(FrameId0),
        .D(\n_7_FrameId_reg[3]_i_1 ),
        .Q(FrameId[0]),
        .R(\n_0_FrameId[31]_i_1 ));
FDRE \FrameId_reg[10] 
       (.C(clk),
        .CE(FrameId0),
        .D(\n_5_FrameId_reg[11]_i_1 ),
        .Q(FrameId[10]),
        .R(\n_0_FrameId[31]_i_1 ));
FDRE \FrameId_reg[11] 
       (.C(clk),
        .CE(FrameId0),
        .D(\n_4_FrameId_reg[11]_i_1 ),
        .Q(FrameId[11]),
        .R(\n_0_FrameId[31]_i_1 ));
CARRY4 \FrameId_reg[11]_i_1 
       (.CI(\n_0_FrameId_reg[7]_i_1 ),
        .CO({\n_0_FrameId_reg[11]_i_1 ,\n_1_FrameId_reg[11]_i_1 ,\n_2_FrameId_reg[11]_i_1 ,\n_3_FrameId_reg[11]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_FrameId_reg[11]_i_1 ,\n_5_FrameId_reg[11]_i_1 ,\n_6_FrameId_reg[11]_i_1 ,\n_7_FrameId_reg[11]_i_1 }),
        .S({\n_0_FrameId[11]_i_2 ,\n_0_FrameId[11]_i_3 ,\n_0_FrameId[11]_i_4 ,\n_0_FrameId[11]_i_5 }));
FDRE \FrameId_reg[12] 
       (.C(clk),
        .CE(FrameId0),
        .D(\n_7_FrameId_reg[15]_i_1 ),
        .Q(FrameId[12]),
        .R(\n_0_FrameId[31]_i_1 ));
FDRE \FrameId_reg[13] 
       (.C(clk),
        .CE(FrameId0),
        .D(\n_6_FrameId_reg[15]_i_1 ),
        .Q(FrameId[13]),
        .R(\n_0_FrameId[31]_i_1 ));
FDRE \FrameId_reg[14] 
       (.C(clk),
        .CE(FrameId0),
        .D(\n_5_FrameId_reg[15]_i_1 ),
        .Q(FrameId[14]),
        .R(\n_0_FrameId[31]_i_1 ));
FDRE \FrameId_reg[15] 
       (.C(clk),
        .CE(FrameId0),
        .D(\n_4_FrameId_reg[15]_i_1 ),
        .Q(FrameId[15]),
        .R(\n_0_FrameId[31]_i_1 ));
CARRY4 \FrameId_reg[15]_i_1 
       (.CI(\n_0_FrameId_reg[11]_i_1 ),
        .CO({\n_0_FrameId_reg[15]_i_1 ,\n_1_FrameId_reg[15]_i_1 ,\n_2_FrameId_reg[15]_i_1 ,\n_3_FrameId_reg[15]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_FrameId_reg[15]_i_1 ,\n_5_FrameId_reg[15]_i_1 ,\n_6_FrameId_reg[15]_i_1 ,\n_7_FrameId_reg[15]_i_1 }),
        .S({\n_0_FrameId[15]_i_2 ,\n_0_FrameId[15]_i_3 ,\n_0_FrameId[15]_i_4 ,\n_0_FrameId[15]_i_5 }));
FDRE \FrameId_reg[16] 
       (.C(clk),
        .CE(FrameId0),
        .D(\n_7_FrameId_reg[19]_i_1 ),
        .Q(FrameId[16]),
        .R(\n_0_FrameId[31]_i_1 ));
FDRE \FrameId_reg[17] 
       (.C(clk),
        .CE(FrameId0),
        .D(\n_6_FrameId_reg[19]_i_1 ),
        .Q(FrameId[17]),
        .R(\n_0_FrameId[31]_i_1 ));
FDRE \FrameId_reg[18] 
       (.C(clk),
        .CE(FrameId0),
        .D(\n_5_FrameId_reg[19]_i_1 ),
        .Q(FrameId[18]),
        .R(\n_0_FrameId[31]_i_1 ));
FDRE \FrameId_reg[19] 
       (.C(clk),
        .CE(FrameId0),
        .D(\n_4_FrameId_reg[19]_i_1 ),
        .Q(FrameId[19]),
        .R(\n_0_FrameId[31]_i_1 ));
CARRY4 \FrameId_reg[19]_i_1 
       (.CI(\n_0_FrameId_reg[15]_i_1 ),
        .CO({\n_0_FrameId_reg[19]_i_1 ,\n_1_FrameId_reg[19]_i_1 ,\n_2_FrameId_reg[19]_i_1 ,\n_3_FrameId_reg[19]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_FrameId_reg[19]_i_1 ,\n_5_FrameId_reg[19]_i_1 ,\n_6_FrameId_reg[19]_i_1 ,\n_7_FrameId_reg[19]_i_1 }),
        .S({\n_0_FrameId[19]_i_2 ,\n_0_FrameId[19]_i_3 ,\n_0_FrameId[19]_i_4 ,\n_0_FrameId[19]_i_5 }));
FDRE \FrameId_reg[1] 
       (.C(clk),
        .CE(FrameId0),
        .D(\n_6_FrameId_reg[3]_i_1 ),
        .Q(FrameId[1]),
        .R(\n_0_FrameId[31]_i_1 ));
FDRE \FrameId_reg[20] 
       (.C(clk),
        .CE(FrameId0),
        .D(\n_7_FrameId_reg[23]_i_1 ),
        .Q(FrameId[20]),
        .R(\n_0_FrameId[31]_i_1 ));
FDRE \FrameId_reg[21] 
       (.C(clk),
        .CE(FrameId0),
        .D(\n_6_FrameId_reg[23]_i_1 ),
        .Q(FrameId[21]),
        .R(\n_0_FrameId[31]_i_1 ));
FDRE \FrameId_reg[22] 
       (.C(clk),
        .CE(FrameId0),
        .D(\n_5_FrameId_reg[23]_i_1 ),
        .Q(FrameId[22]),
        .R(\n_0_FrameId[31]_i_1 ));
FDRE \FrameId_reg[23] 
       (.C(clk),
        .CE(FrameId0),
        .D(\n_4_FrameId_reg[23]_i_1 ),
        .Q(FrameId[23]),
        .R(\n_0_FrameId[31]_i_1 ));
CARRY4 \FrameId_reg[23]_i_1 
       (.CI(\n_0_FrameId_reg[19]_i_1 ),
        .CO({\n_0_FrameId_reg[23]_i_1 ,\n_1_FrameId_reg[23]_i_1 ,\n_2_FrameId_reg[23]_i_1 ,\n_3_FrameId_reg[23]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_FrameId_reg[23]_i_1 ,\n_5_FrameId_reg[23]_i_1 ,\n_6_FrameId_reg[23]_i_1 ,\n_7_FrameId_reg[23]_i_1 }),
        .S({\n_0_FrameId[23]_i_2 ,\n_0_FrameId[23]_i_3 ,\n_0_FrameId[23]_i_4 ,\n_0_FrameId[23]_i_5 }));
FDRE \FrameId_reg[24] 
       (.C(clk),
        .CE(FrameId0),
        .D(\n_7_FrameId_reg[27]_i_1 ),
        .Q(FrameId[24]),
        .R(\n_0_FrameId[31]_i_1 ));
FDRE \FrameId_reg[25] 
       (.C(clk),
        .CE(FrameId0),
        .D(\n_6_FrameId_reg[27]_i_1 ),
        .Q(FrameId[25]),
        .R(\n_0_FrameId[31]_i_1 ));
FDRE \FrameId_reg[26] 
       (.C(clk),
        .CE(FrameId0),
        .D(\n_5_FrameId_reg[27]_i_1 ),
        .Q(FrameId[26]),
        .R(\n_0_FrameId[31]_i_1 ));
FDRE \FrameId_reg[27] 
       (.C(clk),
        .CE(FrameId0),
        .D(\n_4_FrameId_reg[27]_i_1 ),
        .Q(FrameId[27]),
        .R(\n_0_FrameId[31]_i_1 ));
CARRY4 \FrameId_reg[27]_i_1 
       (.CI(\n_0_FrameId_reg[23]_i_1 ),
        .CO({\n_0_FrameId_reg[27]_i_1 ,\n_1_FrameId_reg[27]_i_1 ,\n_2_FrameId_reg[27]_i_1 ,\n_3_FrameId_reg[27]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_FrameId_reg[27]_i_1 ,\n_5_FrameId_reg[27]_i_1 ,\n_6_FrameId_reg[27]_i_1 ,\n_7_FrameId_reg[27]_i_1 }),
        .S({\n_0_FrameId[27]_i_2 ,\n_0_FrameId[27]_i_3 ,\n_0_FrameId[27]_i_4 ,\n_0_FrameId[27]_i_5 }));
FDRE \FrameId_reg[28] 
       (.C(clk),
        .CE(FrameId0),
        .D(\n_7_FrameId_reg[31]_i_3 ),
        .Q(FrameId[28]),
        .R(\n_0_FrameId[31]_i_1 ));
FDRE \FrameId_reg[29] 
       (.C(clk),
        .CE(FrameId0),
        .D(\n_6_FrameId_reg[31]_i_3 ),
        .Q(FrameId[29]),
        .R(\n_0_FrameId[31]_i_1 ));
FDRE \FrameId_reg[2] 
       (.C(clk),
        .CE(FrameId0),
        .D(\n_5_FrameId_reg[3]_i_1 ),
        .Q(FrameId[2]),
        .R(\n_0_FrameId[31]_i_1 ));
FDRE \FrameId_reg[30] 
       (.C(clk),
        .CE(FrameId0),
        .D(\n_5_FrameId_reg[31]_i_3 ),
        .Q(FrameId[30]),
        .R(\n_0_FrameId[31]_i_1 ));
FDRE \FrameId_reg[31] 
       (.C(clk),
        .CE(FrameId0),
        .D(\n_4_FrameId_reg[31]_i_3 ),
        .Q(FrameId[31]),
        .R(\n_0_FrameId[31]_i_1 ));
CARRY4 \FrameId_reg[31]_i_12 
       (.CI(1'b0),
        .CO({\n_0_FrameId_reg[31]_i_12 ,\n_1_FrameId_reg[31]_i_12 ,\n_2_FrameId_reg[31]_i_12 ,\n_3_FrameId_reg[31]_i_12 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(\NLW_FrameId_reg[31]_i_12_O_UNCONNECTED [3:0]),
        .S({\n_0_FrameId[31]_i_19 ,\n_0_FrameId[31]_i_20 ,\n_0_FrameId[31]_i_21 ,\n_0_FrameId[31]_i_22 }));
CARRY4 \FrameId_reg[31]_i_3 
       (.CI(\n_0_FrameId_reg[27]_i_1 ),
        .CO({\NLW_FrameId_reg[31]_i_3_CO_UNCONNECTED [3],\n_1_FrameId_reg[31]_i_3 ,\n_2_FrameId_reg[31]_i_3 ,\n_3_FrameId_reg[31]_i_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_FrameId_reg[31]_i_3 ,\n_5_FrameId_reg[31]_i_3 ,\n_6_FrameId_reg[31]_i_3 ,\n_7_FrameId_reg[31]_i_3 }),
        .S({\n_0_FrameId[31]_i_7 ,\n_0_FrameId[31]_i_8 ,\n_0_FrameId[31]_i_9 ,\n_0_FrameId[31]_i_10 }));
CARRY4 \FrameId_reg[31]_i_5 
       (.CI(\n_0_FrameId_reg[31]_i_12 ),
        .CO({\n_0_FrameId_reg[31]_i_5 ,\n_1_FrameId_reg[31]_i_5 ,\n_2_FrameId_reg[31]_i_5 ,\n_3_FrameId_reg[31]_i_5 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(\NLW_FrameId_reg[31]_i_5_O_UNCONNECTED [3:0]),
        .S({\n_0_FrameId[31]_i_13 ,\n_0_FrameId[31]_i_14 ,\n_0_FrameId[31]_i_15 ,\n_0_FrameId[31]_i_16 }));
FDRE \FrameId_reg[3] 
       (.C(clk),
        .CE(FrameId0),
        .D(\n_4_FrameId_reg[3]_i_1 ),
        .Q(FrameId[3]),
        .R(\n_0_FrameId[31]_i_1 ));
CARRY4 \FrameId_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\n_0_FrameId_reg[3]_i_1 ,\n_1_FrameId_reg[3]_i_1 ,\n_2_FrameId_reg[3]_i_1 ,\n_3_FrameId_reg[3]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\n_4_FrameId_reg[3]_i_1 ,\n_5_FrameId_reg[3]_i_1 ,\n_6_FrameId_reg[3]_i_1 ,\n_7_FrameId_reg[3]_i_1 }),
        .S({\n_0_FrameId[3]_i_2 ,\n_0_FrameId[3]_i_3 ,\n_0_FrameId[3]_i_4 ,\n_0_FrameId[3]_i_5 }));
FDRE \FrameId_reg[4] 
       (.C(clk),
        .CE(FrameId0),
        .D(\n_7_FrameId_reg[7]_i_1 ),
        .Q(FrameId[4]),
        .R(\n_0_FrameId[31]_i_1 ));
FDRE \FrameId_reg[5] 
       (.C(clk),
        .CE(FrameId0),
        .D(\n_6_FrameId_reg[7]_i_1 ),
        .Q(FrameId[5]),
        .R(\n_0_FrameId[31]_i_1 ));
FDRE \FrameId_reg[6] 
       (.C(clk),
        .CE(FrameId0),
        .D(\n_5_FrameId_reg[7]_i_1 ),
        .Q(FrameId[6]),
        .R(\n_0_FrameId[31]_i_1 ));
FDRE \FrameId_reg[7] 
       (.C(clk),
        .CE(FrameId0),
        .D(\n_4_FrameId_reg[7]_i_1 ),
        .Q(FrameId[7]),
        .R(\n_0_FrameId[31]_i_1 ));
CARRY4 \FrameId_reg[7]_i_1 
       (.CI(\n_0_FrameId_reg[3]_i_1 ),
        .CO({\n_0_FrameId_reg[7]_i_1 ,\n_1_FrameId_reg[7]_i_1 ,\n_2_FrameId_reg[7]_i_1 ,\n_3_FrameId_reg[7]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_FrameId_reg[7]_i_1 ,\n_5_FrameId_reg[7]_i_1 ,\n_6_FrameId_reg[7]_i_1 ,\n_7_FrameId_reg[7]_i_1 }),
        .S({\n_0_FrameId[7]_i_2 ,\n_0_FrameId[7]_i_3 ,\n_0_FrameId[7]_i_4 ,\n_0_FrameId[7]_i_5 }));
FDRE \FrameId_reg[8] 
       (.C(clk),
        .CE(FrameId0),
        .D(\n_7_FrameId_reg[11]_i_1 ),
        .Q(FrameId[8]),
        .R(\n_0_FrameId[31]_i_1 ));
FDRE \FrameId_reg[9] 
       (.C(clk),
        .CE(FrameId0),
        .D(\n_6_FrameId_reg[11]_i_1 ),
        .Q(FrameId[9]),
        .R(\n_0_FrameId[31]_i_1 ));
spad_manager_0_read_process_manager read_process_manager
       (.ColSelect(ColSelect),
        .Q(read_data),
        .ReadEnable(ReadEnable),
        .RowGroup(RowGroup),
        .RowSelect(RowSelect),
        .clk(clk),
        .reset(reset));
LUT3 #(
    .INIT(8'hB8)) 
     \state[0]_i_1 
       (.I0(read_data),
        .I1(is_next_state_needed),
        .I2(LatchSpad),
        .O(\n_0_state[0]_i_1 ));
LUT5 #(
    .INIT(32'h82000587)) 
     \state[0]_i_10 
       (.I0(read_data),
        .I1(\n_0_state_durations_reg[8][19] ),
        .I2(\n_5_state_reg[0]_i_22 ),
        .I3(\n_0_state_durations_reg[8][18] ),
        .I4(\n_6_state_reg[0]_i_22 ),
        .O(\n_0_state[0]_i_10 ));
LUT5 #(
    .INIT(32'h82000587)) 
     \state[0]_i_11 
       (.I0(read_data),
        .I1(\n_0_state_durations_reg[8][17] ),
        .I2(\n_7_state_reg[0]_i_22 ),
        .I3(\n_0_state_durations_reg[8][16] ),
        .I4(\n_4_state_reg[0]_i_23 ),
        .O(\n_0_state[0]_i_11 ));
LUT5 #(
    .INIT(32'h40F4FCFC)) 
     \state[0]_i_13 
       (.I0(\n_0_state_durations_reg[8][14] ),
        .I1(\n_6_state_reg[0]_i_23 ),
        .I2(\n_5_state_reg[0]_i_23 ),
        .I3(\n_0_state_durations_reg[8][15] ),
        .I4(read_data),
        .O(\n_0_state[0]_i_13 ));
LUT5 #(
    .INIT(32'h40F4FCFC)) 
     \state[0]_i_14 
       (.I0(\n_0_state_durations_reg[8][12] ),
        .I1(\n_4_state_reg[0]_i_32 ),
        .I2(\n_7_state_reg[0]_i_23 ),
        .I3(\n_0_state_durations_reg[8][13] ),
        .I4(read_data),
        .O(\n_0_state[0]_i_14 ));
LUT5 #(
    .INIT(32'h40F4FCFC)) 
     \state[0]_i_15 
       (.I0(\n_0_state_durations_reg[8][10] ),
        .I1(\n_6_state_reg[0]_i_32 ),
        .I2(\n_5_state_reg[0]_i_32 ),
        .I3(\n_0_state_durations_reg[8][11] ),
        .I4(read_data),
        .O(\n_0_state[0]_i_15 ));
LUT5 #(
    .INIT(32'h40F4FCFC)) 
     \state[0]_i_16 
       (.I0(\n_0_state_durations_reg[8][8] ),
        .I1(\n_4_state_reg[0]_i_33 ),
        .I2(\n_7_state_reg[0]_i_32 ),
        .I3(\n_0_state_durations_reg[8][9] ),
        .I4(read_data),
        .O(\n_0_state[0]_i_16 ));
LUT5 #(
    .INIT(32'h82000587)) 
     \state[0]_i_17 
       (.I0(read_data),
        .I1(\n_0_state_durations_reg[8][15] ),
        .I2(\n_5_state_reg[0]_i_23 ),
        .I3(\n_0_state_durations_reg[8][14] ),
        .I4(\n_6_state_reg[0]_i_23 ),
        .O(\n_0_state[0]_i_17 ));
LUT5 #(
    .INIT(32'h82000587)) 
     \state[0]_i_18 
       (.I0(read_data),
        .I1(\n_0_state_durations_reg[8][13] ),
        .I2(\n_7_state_reg[0]_i_23 ),
        .I3(\n_0_state_durations_reg[8][12] ),
        .I4(\n_4_state_reg[0]_i_32 ),
        .O(\n_0_state[0]_i_18 ));
LUT5 #(
    .INIT(32'h82000587)) 
     \state[0]_i_19 
       (.I0(read_data),
        .I1(\n_0_state_durations_reg[8][11] ),
        .I2(\n_5_state_reg[0]_i_32 ),
        .I3(\n_0_state_durations_reg[8][10] ),
        .I4(\n_6_state_reg[0]_i_32 ),
        .O(\n_0_state[0]_i_19 ));
LUT5 #(
    .INIT(32'h82000587)) 
     \state[0]_i_20 
       (.I0(read_data),
        .I1(\n_0_state_durations_reg[8][9] ),
        .I2(\n_7_state_reg[0]_i_32 ),
        .I3(\n_0_state_durations_reg[8][8] ),
        .I4(\n_4_state_reg[0]_i_33 ),
        .O(\n_0_state[0]_i_20 ));
LUT5 #(
    .INIT(32'h40F4FCFC)) 
     \state[0]_i_24 
       (.I0(\n_0_state_durations_reg[8][6] ),
        .I1(\n_6_state_reg[0]_i_33 ),
        .I2(\n_5_state_reg[0]_i_33 ),
        .I3(\n_0_state_durations_reg[8][7] ),
        .I4(read_data),
        .O(\n_0_state[0]_i_24 ));
LUT5 #(
    .INIT(32'h40F4FCFC)) 
     \state[0]_i_25 
       (.I0(\n_0_state_durations_reg[8][4] ),
        .I1(\n_4_state_reg[0]_i_44 ),
        .I2(\n_7_state_reg[0]_i_33 ),
        .I3(\n_0_state_durations_reg[8][5] ),
        .I4(read_data),
        .O(\n_0_state[0]_i_25 ));
LUT5 #(
    .INIT(32'h40F4FCFC)) 
     \state[0]_i_26 
       (.I0(\n_0_state_durations_reg[8][2] ),
        .I1(\n_6_state_reg[0]_i_44 ),
        .I2(\n_5_state_reg[0]_i_44 ),
        .I3(\n_0_state_durations_reg[8][3] ),
        .I4(read_data),
        .O(\n_0_state[0]_i_26 ));
LUT4 #(
    .INIT(16'h222B)) 
     \state[0]_i_27 
       (.I0(\n_7_state_reg[0]_i_44 ),
        .I1(state_durations[1]),
        .I2(state_durations[0]),
        .I3(state_counter_reg[0]),
        .O(\n_0_state[0]_i_27 ));
LUT5 #(
    .INIT(32'h82000587)) 
     \state[0]_i_28 
       (.I0(read_data),
        .I1(\n_0_state_durations_reg[8][7] ),
        .I2(\n_5_state_reg[0]_i_33 ),
        .I3(\n_0_state_durations_reg[8][6] ),
        .I4(\n_6_state_reg[0]_i_33 ),
        .O(\n_0_state[0]_i_28 ));
LUT5 #(
    .INIT(32'h82000587)) 
     \state[0]_i_29 
       (.I0(read_data),
        .I1(\n_0_state_durations_reg[8][5] ),
        .I2(\n_7_state_reg[0]_i_33 ),
        .I3(\n_0_state_durations_reg[8][4] ),
        .I4(\n_4_state_reg[0]_i_44 ),
        .O(\n_0_state[0]_i_29 ));
LUT5 #(
    .INIT(32'h82000587)) 
     \state[0]_i_30 
       (.I0(read_data),
        .I1(\n_0_state_durations_reg[8][3] ),
        .I2(\n_5_state_reg[0]_i_44 ),
        .I3(\n_0_state_durations_reg[8][2] ),
        .I4(\n_6_state_reg[0]_i_44 ),
        .O(\n_0_state[0]_i_30 ));
LUT3 #(
    .INIT(8'h84)) 
     \state[0]_i_31 
       (.I0(state_durations[1]),
        .I1(\n_0_state[0]_i_47 ),
        .I2(\n_7_state_reg[0]_i_44 ),
        .O(\n_0_state[0]_i_31 ));
LUT1 #(
    .INIT(2'h2)) 
     \state[0]_i_34 
       (.I0(state_counter_reg[22]),
        .O(\n_0_state[0]_i_34 ));
LUT1 #(
    .INIT(2'h2)) 
     \state[0]_i_35 
       (.I0(state_counter_reg[21]),
        .O(\n_0_state[0]_i_35 ));
LUT1 #(
    .INIT(2'h2)) 
     \state[0]_i_36 
       (.I0(state_counter_reg[20]),
        .O(\n_0_state[0]_i_36 ));
LUT1 #(
    .INIT(2'h2)) 
     \state[0]_i_37 
       (.I0(state_counter_reg[19]),
        .O(\n_0_state[0]_i_37 ));
LUT1 #(
    .INIT(2'h2)) 
     \state[0]_i_38 
       (.I0(state_counter_reg[18]),
        .O(\n_0_state[0]_i_38 ));
LUT1 #(
    .INIT(2'h2)) 
     \state[0]_i_39 
       (.I0(state_counter_reg[17]),
        .O(\n_0_state[0]_i_39 ));
LUT4 #(
    .INIT(16'hFF2A)) 
     \state[0]_i_4 
       (.I0(\n_6_state_reg[0]_i_21 ),
        .I1(\n_0_state_durations_reg[8][22] ),
        .I2(read_data),
        .I3(\n_1_state_reg[0]_i_21 ),
        .O(\n_0_state[0]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \state[0]_i_40 
       (.I0(state_counter_reg[16]),
        .O(\n_0_state[0]_i_40 ));
LUT1 #(
    .INIT(2'h2)) 
     \state[0]_i_41 
       (.I0(state_counter_reg[15]),
        .O(\n_0_state[0]_i_41 ));
LUT1 #(
    .INIT(2'h2)) 
     \state[0]_i_42 
       (.I0(state_counter_reg[14]),
        .O(\n_0_state[0]_i_42 ));
LUT1 #(
    .INIT(2'h2)) 
     \state[0]_i_43 
       (.I0(state_counter_reg[13]),
        .O(\n_0_state[0]_i_43 ));
(* SOFT_HLUTNM = "soft_lutpair9" *) 
   LUT5 #(
    .INIT(32'hFF150015)) 
     \state[0]_i_45 
       (.I0(\n_0_state_reg[1] ),
        .I1(LatchSpad),
        .I2(ResetSpad),
        .I3(read_data),
        .I4(\n_0_state_durations_reg[8][1] ),
        .O(state_durations[1]));
(* SOFT_HLUTNM = "soft_lutpair10" *) 
   LUT5 #(
    .INIT(32'hAA00AA0C)) 
     \state[0]_i_46 
       (.I0(\n_0_state_durations_reg[8][0] ),
        .I1(\n_0_state_reg[1] ),
        .I2(ResetSpad),
        .I3(read_data),
        .I4(LatchSpad),
        .O(state_durations[0]));
LUT6 #(
    .INIT(64'h3233FEFFCDCC0100)) 
     \state[0]_i_47 
       (.I0(LatchSpad),
        .I1(read_data),
        .I2(ResetSpad),
        .I3(\n_0_state_reg[1] ),
        .I4(\n_0_state_durations_reg[8][0] ),
        .I5(state_counter_reg[0]),
        .O(\n_0_state[0]_i_47 ));
LUT1 #(
    .INIT(2'h2)) 
     \state[0]_i_48 
       (.I0(state_counter_reg[12]),
        .O(\n_0_state[0]_i_48 ));
LUT1 #(
    .INIT(2'h2)) 
     \state[0]_i_49 
       (.I0(state_counter_reg[11]),
        .O(\n_0_state[0]_i_49 ));
LUT5 #(
    .INIT(32'h40F4FCFC)) 
     \state[0]_i_5 
       (.I0(\n_0_state_durations_reg[8][20] ),
        .I1(\n_4_state_reg[0]_i_22 ),
        .I2(\n_7_state_reg[0]_i_21 ),
        .I3(\n_0_state_durations_reg[8][21] ),
        .I4(read_data),
        .O(\n_0_state[0]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \state[0]_i_50 
       (.I0(state_counter_reg[10]),
        .O(\n_0_state[0]_i_50 ));
LUT1 #(
    .INIT(2'h2)) 
     \state[0]_i_51 
       (.I0(state_counter_reg[9]),
        .O(\n_0_state[0]_i_51 ));
LUT1 #(
    .INIT(2'h2)) 
     \state[0]_i_52 
       (.I0(state_counter_reg[8]),
        .O(\n_0_state[0]_i_52 ));
LUT1 #(
    .INIT(2'h2)) 
     \state[0]_i_53 
       (.I0(state_counter_reg[7]),
        .O(\n_0_state[0]_i_53 ));
LUT1 #(
    .INIT(2'h2)) 
     \state[0]_i_54 
       (.I0(state_counter_reg[6]),
        .O(\n_0_state[0]_i_54 ));
LUT1 #(
    .INIT(2'h2)) 
     \state[0]_i_55 
       (.I0(state_counter_reg[5]),
        .O(\n_0_state[0]_i_55 ));
LUT1 #(
    .INIT(2'h2)) 
     \state[0]_i_56 
       (.I0(state_counter_reg[4]),
        .O(\n_0_state[0]_i_56 ));
LUT1 #(
    .INIT(2'h2)) 
     \state[0]_i_57 
       (.I0(state_counter_reg[3]),
        .O(\n_0_state[0]_i_57 ));
LUT1 #(
    .INIT(2'h2)) 
     \state[0]_i_58 
       (.I0(state_counter_reg[2]),
        .O(\n_0_state[0]_i_58 ));
LUT1 #(
    .INIT(2'h2)) 
     \state[0]_i_59 
       (.I0(state_counter_reg[1]),
        .O(\n_0_state[0]_i_59 ));
LUT5 #(
    .INIT(32'h40F4FCFC)) 
     \state[0]_i_6 
       (.I0(\n_0_state_durations_reg[8][18] ),
        .I1(\n_6_state_reg[0]_i_22 ),
        .I2(\n_5_state_reg[0]_i_22 ),
        .I3(\n_0_state_durations_reg[8][19] ),
        .I4(read_data),
        .O(\n_0_state[0]_i_6 ));
LUT5 #(
    .INIT(32'h40F4FCFC)) 
     \state[0]_i_7 
       (.I0(\n_0_state_durations_reg[8][16] ),
        .I1(\n_4_state_reg[0]_i_23 ),
        .I2(\n_7_state_reg[0]_i_22 ),
        .I3(\n_0_state_durations_reg[8][17] ),
        .I4(read_data),
        .O(\n_0_state[0]_i_7 ));
LUT4 #(
    .INIT(16'h0087)) 
     \state[0]_i_8 
       (.I0(\n_0_state_durations_reg[8][22] ),
        .I1(read_data),
        .I2(\n_6_state_reg[0]_i_21 ),
        .I3(\n_1_state_reg[0]_i_21 ),
        .O(\n_0_state[0]_i_8 ));
LUT5 #(
    .INIT(32'h82000587)) 
     \state[0]_i_9 
       (.I0(read_data),
        .I1(\n_0_state_durations_reg[8][21] ),
        .I2(\n_7_state_reg[0]_i_21 ),
        .I3(\n_0_state_durations_reg[8][20] ),
        .I4(\n_4_state_reg[0]_i_22 ),
        .O(\n_0_state[0]_i_9 ));
LUT3 #(
    .INIT(8'hB8)) 
     \state[1]_i_1 
       (.I0(LatchSpad),
        .I1(is_next_state_needed),
        .I2(\n_0_state_reg[1] ),
        .O(\n_0_state[1]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair11" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \state[2]_i_1 
       (.I0(\n_0_state_reg[1] ),
        .I1(is_next_state_needed),
        .I2(ResetSpad),
        .O(\n_0_state[2]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair11" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \state[3]_i_1 
       (.I0(ResetSpad),
        .I1(is_next_state_needed),
        .I2(read_data),
        .O(\n_0_state[3]_i_1 ));
LUT2 #(
    .INIT(4'hE)) 
     \state_counter[0]_i_1 
       (.I0(reset),
        .I1(is_next_state_needed),
        .O(\n_0_state_counter[0]_i_1 ));
LUT1 #(
    .INIT(2'h2)) 
     \state_counter[0]_i_3 
       (.I0(state_counter_reg[3]),
        .O(\n_0_state_counter[0]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \state_counter[0]_i_4 
       (.I0(state_counter_reg[2]),
        .O(\n_0_state_counter[0]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \state_counter[0]_i_5 
       (.I0(state_counter_reg[1]),
        .O(\n_0_state_counter[0]_i_5 ));
LUT1 #(
    .INIT(2'h1)) 
     \state_counter[0]_i_6 
       (.I0(state_counter_reg[0]),
        .O(\n_0_state_counter[0]_i_6 ));
LUT1 #(
    .INIT(2'h2)) 
     \state_counter[12]_i_2 
       (.I0(state_counter_reg[15]),
        .O(\n_0_state_counter[12]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \state_counter[12]_i_3 
       (.I0(state_counter_reg[14]),
        .O(\n_0_state_counter[12]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \state_counter[12]_i_4 
       (.I0(state_counter_reg[13]),
        .O(\n_0_state_counter[12]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \state_counter[12]_i_5 
       (.I0(state_counter_reg[12]),
        .O(\n_0_state_counter[12]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \state_counter[16]_i_2 
       (.I0(state_counter_reg[19]),
        .O(\n_0_state_counter[16]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \state_counter[16]_i_3 
       (.I0(state_counter_reg[18]),
        .O(\n_0_state_counter[16]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \state_counter[16]_i_4 
       (.I0(state_counter_reg[17]),
        .O(\n_0_state_counter[16]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \state_counter[16]_i_5 
       (.I0(state_counter_reg[16]),
        .O(\n_0_state_counter[16]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \state_counter[20]_i_2 
       (.I0(state_counter_reg[22]),
        .O(\n_0_state_counter[20]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \state_counter[20]_i_3 
       (.I0(state_counter_reg[21]),
        .O(\n_0_state_counter[20]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \state_counter[20]_i_4 
       (.I0(state_counter_reg[20]),
        .O(\n_0_state_counter[20]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \state_counter[4]_i_2 
       (.I0(state_counter_reg[7]),
        .O(\n_0_state_counter[4]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \state_counter[4]_i_3 
       (.I0(state_counter_reg[6]),
        .O(\n_0_state_counter[4]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \state_counter[4]_i_4 
       (.I0(state_counter_reg[5]),
        .O(\n_0_state_counter[4]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \state_counter[4]_i_5 
       (.I0(state_counter_reg[4]),
        .O(\n_0_state_counter[4]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \state_counter[8]_i_2 
       (.I0(state_counter_reg[11]),
        .O(\n_0_state_counter[8]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \state_counter[8]_i_3 
       (.I0(state_counter_reg[10]),
        .O(\n_0_state_counter[8]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \state_counter[8]_i_4 
       (.I0(state_counter_reg[9]),
        .O(\n_0_state_counter[8]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \state_counter[8]_i_5 
       (.I0(state_counter_reg[8]),
        .O(\n_0_state_counter[8]_i_5 ));
FDRE \state_counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_7_state_counter_reg[0]_i_2 ),
        .Q(state_counter_reg[0]),
        .R(\n_0_state_counter[0]_i_1 ));
CARRY4 \state_counter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\n_0_state_counter_reg[0]_i_2 ,\n_1_state_counter_reg[0]_i_2 ,\n_2_state_counter_reg[0]_i_2 ,\n_3_state_counter_reg[0]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\n_4_state_counter_reg[0]_i_2 ,\n_5_state_counter_reg[0]_i_2 ,\n_6_state_counter_reg[0]_i_2 ,\n_7_state_counter_reg[0]_i_2 }),
        .S({\n_0_state_counter[0]_i_3 ,\n_0_state_counter[0]_i_4 ,\n_0_state_counter[0]_i_5 ,\n_0_state_counter[0]_i_6 }));
FDRE \state_counter_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_5_state_counter_reg[8]_i_1 ),
        .Q(state_counter_reg[10]),
        .R(\n_0_state_counter[0]_i_1 ));
FDRE \state_counter_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_4_state_counter_reg[8]_i_1 ),
        .Q(state_counter_reg[11]),
        .R(\n_0_state_counter[0]_i_1 ));
FDRE \state_counter_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_7_state_counter_reg[12]_i_1 ),
        .Q(state_counter_reg[12]),
        .R(\n_0_state_counter[0]_i_1 ));
CARRY4 \state_counter_reg[12]_i_1 
       (.CI(\n_0_state_counter_reg[8]_i_1 ),
        .CO({\n_0_state_counter_reg[12]_i_1 ,\n_1_state_counter_reg[12]_i_1 ,\n_2_state_counter_reg[12]_i_1 ,\n_3_state_counter_reg[12]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_state_counter_reg[12]_i_1 ,\n_5_state_counter_reg[12]_i_1 ,\n_6_state_counter_reg[12]_i_1 ,\n_7_state_counter_reg[12]_i_1 }),
        .S({\n_0_state_counter[12]_i_2 ,\n_0_state_counter[12]_i_3 ,\n_0_state_counter[12]_i_4 ,\n_0_state_counter[12]_i_5 }));
FDRE \state_counter_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_6_state_counter_reg[12]_i_1 ),
        .Q(state_counter_reg[13]),
        .R(\n_0_state_counter[0]_i_1 ));
FDRE \state_counter_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_5_state_counter_reg[12]_i_1 ),
        .Q(state_counter_reg[14]),
        .R(\n_0_state_counter[0]_i_1 ));
FDRE \state_counter_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_4_state_counter_reg[12]_i_1 ),
        .Q(state_counter_reg[15]),
        .R(\n_0_state_counter[0]_i_1 ));
FDRE \state_counter_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_7_state_counter_reg[16]_i_1 ),
        .Q(state_counter_reg[16]),
        .R(\n_0_state_counter[0]_i_1 ));
CARRY4 \state_counter_reg[16]_i_1 
       (.CI(\n_0_state_counter_reg[12]_i_1 ),
        .CO({\n_0_state_counter_reg[16]_i_1 ,\n_1_state_counter_reg[16]_i_1 ,\n_2_state_counter_reg[16]_i_1 ,\n_3_state_counter_reg[16]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_state_counter_reg[16]_i_1 ,\n_5_state_counter_reg[16]_i_1 ,\n_6_state_counter_reg[16]_i_1 ,\n_7_state_counter_reg[16]_i_1 }),
        .S({\n_0_state_counter[16]_i_2 ,\n_0_state_counter[16]_i_3 ,\n_0_state_counter[16]_i_4 ,\n_0_state_counter[16]_i_5 }));
FDRE \state_counter_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_6_state_counter_reg[16]_i_1 ),
        .Q(state_counter_reg[17]),
        .R(\n_0_state_counter[0]_i_1 ));
FDRE \state_counter_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_5_state_counter_reg[16]_i_1 ),
        .Q(state_counter_reg[18]),
        .R(\n_0_state_counter[0]_i_1 ));
FDRE \state_counter_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_4_state_counter_reg[16]_i_1 ),
        .Q(state_counter_reg[19]),
        .R(\n_0_state_counter[0]_i_1 ));
FDRE \state_counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_6_state_counter_reg[0]_i_2 ),
        .Q(state_counter_reg[1]),
        .R(\n_0_state_counter[0]_i_1 ));
FDRE \state_counter_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_7_state_counter_reg[20]_i_1 ),
        .Q(state_counter_reg[20]),
        .R(\n_0_state_counter[0]_i_1 ));
CARRY4 \state_counter_reg[20]_i_1 
       (.CI(\n_0_state_counter_reg[16]_i_1 ),
        .CO({\NLW_state_counter_reg[20]_i_1_CO_UNCONNECTED [3:2],\n_2_state_counter_reg[20]_i_1 ,\n_3_state_counter_reg[20]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_state_counter_reg[20]_i_1_O_UNCONNECTED [3],\n_5_state_counter_reg[20]_i_1 ,\n_6_state_counter_reg[20]_i_1 ,\n_7_state_counter_reg[20]_i_1 }),
        .S({1'b0,\n_0_state_counter[20]_i_2 ,\n_0_state_counter[20]_i_3 ,\n_0_state_counter[20]_i_4 }));
FDRE \state_counter_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_6_state_counter_reg[20]_i_1 ),
        .Q(state_counter_reg[21]),
        .R(\n_0_state_counter[0]_i_1 ));
FDRE \state_counter_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_5_state_counter_reg[20]_i_1 ),
        .Q(state_counter_reg[22]),
        .R(\n_0_state_counter[0]_i_1 ));
FDRE \state_counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_5_state_counter_reg[0]_i_2 ),
        .Q(state_counter_reg[2]),
        .R(\n_0_state_counter[0]_i_1 ));
FDRE \state_counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_4_state_counter_reg[0]_i_2 ),
        .Q(state_counter_reg[3]),
        .R(\n_0_state_counter[0]_i_1 ));
FDRE \state_counter_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_7_state_counter_reg[4]_i_1 ),
        .Q(state_counter_reg[4]),
        .R(\n_0_state_counter[0]_i_1 ));
CARRY4 \state_counter_reg[4]_i_1 
       (.CI(\n_0_state_counter_reg[0]_i_2 ),
        .CO({\n_0_state_counter_reg[4]_i_1 ,\n_1_state_counter_reg[4]_i_1 ,\n_2_state_counter_reg[4]_i_1 ,\n_3_state_counter_reg[4]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_state_counter_reg[4]_i_1 ,\n_5_state_counter_reg[4]_i_1 ,\n_6_state_counter_reg[4]_i_1 ,\n_7_state_counter_reg[4]_i_1 }),
        .S({\n_0_state_counter[4]_i_2 ,\n_0_state_counter[4]_i_3 ,\n_0_state_counter[4]_i_4 ,\n_0_state_counter[4]_i_5 }));
FDRE \state_counter_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_6_state_counter_reg[4]_i_1 ),
        .Q(state_counter_reg[5]),
        .R(\n_0_state_counter[0]_i_1 ));
FDRE \state_counter_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_5_state_counter_reg[4]_i_1 ),
        .Q(state_counter_reg[6]),
        .R(\n_0_state_counter[0]_i_1 ));
FDRE \state_counter_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_4_state_counter_reg[4]_i_1 ),
        .Q(state_counter_reg[7]),
        .R(\n_0_state_counter[0]_i_1 ));
FDRE \state_counter_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_7_state_counter_reg[8]_i_1 ),
        .Q(state_counter_reg[8]),
        .R(\n_0_state_counter[0]_i_1 ));
CARRY4 \state_counter_reg[8]_i_1 
       (.CI(\n_0_state_counter_reg[4]_i_1 ),
        .CO({\n_0_state_counter_reg[8]_i_1 ,\n_1_state_counter_reg[8]_i_1 ,\n_2_state_counter_reg[8]_i_1 ,\n_3_state_counter_reg[8]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_state_counter_reg[8]_i_1 ,\n_5_state_counter_reg[8]_i_1 ,\n_6_state_counter_reg[8]_i_1 ,\n_7_state_counter_reg[8]_i_1 }),
        .S({\n_0_state_counter[8]_i_2 ,\n_0_state_counter[8]_i_3 ,\n_0_state_counter[8]_i_4 ,\n_0_state_counter[8]_i_5 }));
FDRE \state_counter_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_6_state_counter_reg[8]_i_1 ),
        .Q(state_counter_reg[9]),
        .R(\n_0_state_counter[0]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair8" *) 
   LUT1 #(
    .INIT(2'h1)) 
     \state_durations[8][0]_i_1 
       (.I0(FrameDurationRequestedClks[0]),
        .O(\n_0_state_durations[8][0]_i_1 ));
LUT1 #(
    .INIT(2'h1)) 
     \state_durations[8][11]_i_2 
       (.I0(FrameDurationRequestedClks[12]),
        .O(\n_0_state_durations[8][11]_i_2 ));
LUT1 #(
    .INIT(2'h1)) 
     \state_durations[8][11]_i_3 
       (.I0(FrameDurationRequestedClks[11]),
        .O(\n_0_state_durations[8][11]_i_3 ));
LUT1 #(
    .INIT(2'h1)) 
     \state_durations[8][11]_i_4 
       (.I0(FrameDurationRequestedClks[10]),
        .O(\n_0_state_durations[8][11]_i_4 ));
LUT1 #(
    .INIT(2'h1)) 
     \state_durations[8][11]_i_5 
       (.I0(FrameDurationRequestedClks[9]),
        .O(\n_0_state_durations[8][11]_i_5 ));
LUT6 #(
    .INIT(64'hFFFFFFFEFFFF0002)) 
     \state_durations[8][12]_i_1 
       (.I0(p_0_in[12]),
        .I1(\n_0_FrameId[31]_i_4 ),
        .I2(\n_0_FrameId[31]_i_6 ),
        .I3(read_data),
        .I4(reset),
        .I5(\n_0_state_durations_reg[8][12] ),
        .O(\n_0_state_durations[8][12]_i_1 ));
LUT1 #(
    .INIT(2'h1)) 
     \state_durations[8][16]_i_2 
       (.I0(FrameDurationRequestedClks[16]),
        .O(\n_0_state_durations[8][16]_i_2 ));
LUT1 #(
    .INIT(2'h1)) 
     \state_durations[8][16]_i_3 
       (.I0(FrameDurationRequestedClks[15]),
        .O(\n_0_state_durations[8][16]_i_3 ));
LUT1 #(
    .INIT(2'h1)) 
     \state_durations[8][16]_i_4 
       (.I0(FrameDurationRequestedClks[14]),
        .O(\n_0_state_durations[8][16]_i_4 ));
LUT1 #(
    .INIT(2'h1)) 
     \state_durations[8][16]_i_5 
       (.I0(FrameDurationRequestedClks[13]),
        .O(\n_0_state_durations[8][16]_i_5 ));
LUT1 #(
    .INIT(2'h1)) 
     \state_durations[8][20]_i_2 
       (.I0(FrameDurationRequestedClks[20]),
        .O(\n_0_state_durations[8][20]_i_2 ));
LUT1 #(
    .INIT(2'h1)) 
     \state_durations[8][20]_i_3 
       (.I0(FrameDurationRequestedClks[19]),
        .O(\n_0_state_durations[8][20]_i_3 ));
LUT1 #(
    .INIT(2'h1)) 
     \state_durations[8][20]_i_4 
       (.I0(FrameDurationRequestedClks[18]),
        .O(\n_0_state_durations[8][20]_i_4 ));
LUT1 #(
    .INIT(2'h1)) 
     \state_durations[8][20]_i_5 
       (.I0(FrameDurationRequestedClks[17]),
        .O(\n_0_state_durations[8][20]_i_5 ));
LUT4 #(
    .INIT(16'hFF01)) 
     \state_durations[8][22]_i_1 
       (.I0(\n_0_FrameId[31]_i_4 ),
        .I1(\n_0_FrameId[31]_i_6 ),
        .I2(read_data),
        .I3(reset),
        .O(\n_0_state_durations[8][22]_i_1 ));
LUT1 #(
    .INIT(2'h1)) 
     \state_durations[8][22]_i_3 
       (.I0(FrameDurationRequestedClks[21]),
        .O(\n_0_state_durations[8][22]_i_3 ));
LUT1 #(
    .INIT(2'h1)) 
     \state_durations[8][4]_i_2 
       (.I0(FrameDurationRequestedClks[4]),
        .O(\n_0_state_durations[8][4]_i_2 ));
LUT1 #(
    .INIT(2'h1)) 
     \state_durations[8][4]_i_3 
       (.I0(FrameDurationRequestedClks[3]),
        .O(\n_0_state_durations[8][4]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \state_durations[8][4]_i_4 
       (.I0(FrameDurationRequestedClks[2]),
        .O(\n_0_state_durations[8][4]_i_4 ));
LUT1 #(
    .INIT(2'h1)) 
     \state_durations[8][4]_i_5 
       (.I0(FrameDurationRequestedClks[1]),
        .O(\n_0_state_durations[8][4]_i_5 ));
LUT1 #(
    .INIT(2'h1)) 
     \state_durations[8][8]_i_2 
       (.I0(FrameDurationRequestedClks[8]),
        .O(\n_0_state_durations[8][8]_i_2 ));
LUT1 #(
    .INIT(2'h1)) 
     \state_durations[8][8]_i_3 
       (.I0(FrameDurationRequestedClks[7]),
        .O(\n_0_state_durations[8][8]_i_3 ));
LUT1 #(
    .INIT(2'h1)) 
     \state_durations[8][8]_i_4 
       (.I0(FrameDurationRequestedClks[6]),
        .O(\n_0_state_durations[8][8]_i_4 ));
LUT1 #(
    .INIT(2'h1)) 
     \state_durations[8][8]_i_5 
       (.I0(FrameDurationRequestedClks[5]),
        .O(\n_0_state_durations[8][8]_i_5 ));
LUT6 #(
    .INIT(64'hFFFFFFFEFFFF0002)) 
     \state_durations[8][9]_i_1 
       (.I0(p_0_in[9]),
        .I1(\n_0_FrameId[31]_i_4 ),
        .I2(\n_0_FrameId[31]_i_6 ),
        .I3(read_data),
        .I4(reset),
        .I5(\n_0_state_durations_reg[8][9] ),
        .O(\n_0_state_durations[8][9]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \state_durations_reg[8][0] 
       (.C(clk),
        .CE(\n_0_state_durations[8][22]_i_1 ),
        .D(\n_0_state_durations[8][0]_i_1 ),
        .Q(\n_0_state_durations_reg[8][0] ),
        .R(reset));
FDRE #(
    .INIT(1'b0)) 
     \state_durations_reg[8][10] 
       (.C(clk),
        .CE(\n_0_state_durations[8][22]_i_1 ),
        .D(p_0_in[10]),
        .Q(\n_0_state_durations_reg[8][10] ),
        .R(reset));
FDRE #(
    .INIT(1'b0)) 
     \state_durations_reg[8][11] 
       (.C(clk),
        .CE(\n_0_state_durations[8][22]_i_1 ),
        .D(p_0_in[11]),
        .Q(\n_0_state_durations_reg[8][11] ),
        .R(reset));
CARRY4 \state_durations_reg[8][11]_i_1 
       (.CI(\n_0_state_durations_reg[8][8]_i_1 ),
        .CO({\n_0_state_durations_reg[8][11]_i_1 ,\n_1_state_durations_reg[8][11]_i_1 ,\n_2_state_durations_reg[8][11]_i_1 ,\n_3_state_durations_reg[8][11]_i_1 }),
        .CYINIT(1'b0),
        .DI(FrameDurationRequestedClks[12:9]),
        .O(p_0_in[12:9]),
        .S({\n_0_state_durations[8][11]_i_2 ,\n_0_state_durations[8][11]_i_3 ,\n_0_state_durations[8][11]_i_4 ,\n_0_state_durations[8][11]_i_5 }));
FDRE #(
    .INIT(1'b1)) 
     \state_durations_reg[8][12] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_state_durations[8][12]_i_1 ),
        .Q(\n_0_state_durations_reg[8][12] ),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \state_durations_reg[8][13] 
       (.C(clk),
        .CE(\n_0_state_durations[8][22]_i_1 ),
        .D(p_0_in[13]),
        .Q(\n_0_state_durations_reg[8][13] ),
        .R(reset));
FDRE #(
    .INIT(1'b0)) 
     \state_durations_reg[8][14] 
       (.C(clk),
        .CE(\n_0_state_durations[8][22]_i_1 ),
        .D(p_0_in[14]),
        .Q(\n_0_state_durations_reg[8][14] ),
        .R(reset));
FDRE #(
    .INIT(1'b0)) 
     \state_durations_reg[8][15] 
       (.C(clk),
        .CE(\n_0_state_durations[8][22]_i_1 ),
        .D(p_0_in[15]),
        .Q(\n_0_state_durations_reg[8][15] ),
        .R(reset));
FDRE #(
    .INIT(1'b0)) 
     \state_durations_reg[8][16] 
       (.C(clk),
        .CE(\n_0_state_durations[8][22]_i_1 ),
        .D(p_0_in[16]),
        .Q(\n_0_state_durations_reg[8][16] ),
        .R(reset));
CARRY4 \state_durations_reg[8][16]_i_1 
       (.CI(\n_0_state_durations_reg[8][11]_i_1 ),
        .CO({\n_0_state_durations_reg[8][16]_i_1 ,\n_1_state_durations_reg[8][16]_i_1 ,\n_2_state_durations_reg[8][16]_i_1 ,\n_3_state_durations_reg[8][16]_i_1 }),
        .CYINIT(1'b0),
        .DI(FrameDurationRequestedClks[16:13]),
        .O(p_0_in[16:13]),
        .S({\n_0_state_durations[8][16]_i_2 ,\n_0_state_durations[8][16]_i_3 ,\n_0_state_durations[8][16]_i_4 ,\n_0_state_durations[8][16]_i_5 }));
FDRE #(
    .INIT(1'b0)) 
     \state_durations_reg[8][17] 
       (.C(clk),
        .CE(\n_0_state_durations[8][22]_i_1 ),
        .D(p_0_in[17]),
        .Q(\n_0_state_durations_reg[8][17] ),
        .R(reset));
FDRE #(
    .INIT(1'b0)) 
     \state_durations_reg[8][18] 
       (.C(clk),
        .CE(\n_0_state_durations[8][22]_i_1 ),
        .D(p_0_in[18]),
        .Q(\n_0_state_durations_reg[8][18] ),
        .R(reset));
FDRE #(
    .INIT(1'b0)) 
     \state_durations_reg[8][19] 
       (.C(clk),
        .CE(\n_0_state_durations[8][22]_i_1 ),
        .D(p_0_in[19]),
        .Q(\n_0_state_durations_reg[8][19] ),
        .R(reset));
FDRE #(
    .INIT(1'b0)) 
     \state_durations_reg[8][1] 
       (.C(clk),
        .CE(\n_0_state_durations[8][22]_i_1 ),
        .D(p_0_in[1]),
        .Q(\n_0_state_durations_reg[8][1] ),
        .R(reset));
FDRE #(
    .INIT(1'b0)) 
     \state_durations_reg[8][20] 
       (.C(clk),
        .CE(\n_0_state_durations[8][22]_i_1 ),
        .D(p_0_in[20]),
        .Q(\n_0_state_durations_reg[8][20] ),
        .R(reset));
CARRY4 \state_durations_reg[8][20]_i_1 
       (.CI(\n_0_state_durations_reg[8][16]_i_1 ),
        .CO({\n_0_state_durations_reg[8][20]_i_1 ,\n_1_state_durations_reg[8][20]_i_1 ,\n_2_state_durations_reg[8][20]_i_1 ,\n_3_state_durations_reg[8][20]_i_1 }),
        .CYINIT(1'b0),
        .DI(FrameDurationRequestedClks[20:17]),
        .O(p_0_in[20:17]),
        .S({\n_0_state_durations[8][20]_i_2 ,\n_0_state_durations[8][20]_i_3 ,\n_0_state_durations[8][20]_i_4 ,\n_0_state_durations[8][20]_i_5 }));
FDRE #(
    .INIT(1'b0)) 
     \state_durations_reg[8][21] 
       (.C(clk),
        .CE(\n_0_state_durations[8][22]_i_1 ),
        .D(p_0_in[21]),
        .Q(\n_0_state_durations_reg[8][21] ),
        .R(reset));
FDRE #(
    .INIT(1'b0)) 
     \state_durations_reg[8][22] 
       (.C(clk),
        .CE(\n_0_state_durations[8][22]_i_1 ),
        .D(p_0_in[22]),
        .Q(\n_0_state_durations_reg[8][22] ),
        .R(reset));
CARRY4 \state_durations_reg[8][22]_i_2 
       (.CI(\n_0_state_durations_reg[8][20]_i_1 ),
        .CO({\NLW_state_durations_reg[8][22]_i_2_CO_UNCONNECTED [3:1],\n_3_state_durations_reg[8][22]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,FrameDurationRequestedClks[21]}),
        .O({\NLW_state_durations_reg[8][22]_i_2_O_UNCONNECTED [3:2],p_0_in[22:21]}),
        .S({1'b0,1'b0,1'b1,\n_0_state_durations[8][22]_i_3 }));
FDRE #(
    .INIT(1'b0)) 
     \state_durations_reg[8][2] 
       (.C(clk),
        .CE(\n_0_state_durations[8][22]_i_1 ),
        .D(p_0_in[2]),
        .Q(\n_0_state_durations_reg[8][2] ),
        .R(reset));
FDRE #(
    .INIT(1'b0)) 
     \state_durations_reg[8][3] 
       (.C(clk),
        .CE(\n_0_state_durations[8][22]_i_1 ),
        .D(p_0_in[3]),
        .Q(\n_0_state_durations_reg[8][3] ),
        .R(reset));
FDRE #(
    .INIT(1'b0)) 
     \state_durations_reg[8][4] 
       (.C(clk),
        .CE(\n_0_state_durations[8][22]_i_1 ),
        .D(p_0_in[4]),
        .Q(\n_0_state_durations_reg[8][4] ),
        .R(reset));
CARRY4 \state_durations_reg[8][4]_i_1 
       (.CI(1'b0),
        .CO({\n_0_state_durations_reg[8][4]_i_1 ,\n_1_state_durations_reg[8][4]_i_1 ,\n_2_state_durations_reg[8][4]_i_1 ,\n_3_state_durations_reg[8][4]_i_1 }),
        .CYINIT(FrameDurationRequestedClks[0]),
        .DI({FrameDurationRequestedClks[4:3],1'b0,FrameDurationRequestedClks[1]}),
        .O(p_0_in[4:1]),
        .S({\n_0_state_durations[8][4]_i_2 ,\n_0_state_durations[8][4]_i_3 ,\n_0_state_durations[8][4]_i_4 ,\n_0_state_durations[8][4]_i_5 }));
FDRE #(
    .INIT(1'b0)) 
     \state_durations_reg[8][5] 
       (.C(clk),
        .CE(\n_0_state_durations[8][22]_i_1 ),
        .D(p_0_in[5]),
        .Q(\n_0_state_durations_reg[8][5] ),
        .R(reset));
FDRE #(
    .INIT(1'b0)) 
     \state_durations_reg[8][6] 
       (.C(clk),
        .CE(\n_0_state_durations[8][22]_i_1 ),
        .D(p_0_in[6]),
        .Q(\n_0_state_durations_reg[8][6] ),
        .R(reset));
FDRE #(
    .INIT(1'b0)) 
     \state_durations_reg[8][7] 
       (.C(clk),
        .CE(\n_0_state_durations[8][22]_i_1 ),
        .D(p_0_in[7]),
        .Q(\n_0_state_durations_reg[8][7] ),
        .R(reset));
FDRE #(
    .INIT(1'b0)) 
     \state_durations_reg[8][8] 
       (.C(clk),
        .CE(\n_0_state_durations[8][22]_i_1 ),
        .D(p_0_in[8]),
        .Q(\n_0_state_durations_reg[8][8] ),
        .R(reset));
CARRY4 \state_durations_reg[8][8]_i_1 
       (.CI(\n_0_state_durations_reg[8][4]_i_1 ),
        .CO({\n_0_state_durations_reg[8][8]_i_1 ,\n_1_state_durations_reg[8][8]_i_1 ,\n_2_state_durations_reg[8][8]_i_1 ,\n_3_state_durations_reg[8][8]_i_1 }),
        .CYINIT(1'b0),
        .DI(FrameDurationRequestedClks[8:5]),
        .O(p_0_in[8:5]),
        .S({\n_0_state_durations[8][8]_i_2 ,\n_0_state_durations[8][8]_i_3 ,\n_0_state_durations[8][8]_i_4 ,\n_0_state_durations[8][8]_i_5 }));
FDRE #(
    .INIT(1'b1)) 
     \state_durations_reg[8][9] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_state_durations[8][9]_i_1 ),
        .Q(\n_0_state_durations_reg[8][9] ),
        .R(1'b0));
FDSE \state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_state[0]_i_1 ),
        .Q(LatchSpad),
        .S(reset));
CARRY4 \state_reg[0]_i_12 
       (.CI(1'b0),
        .CO({\n_0_state_reg[0]_i_12 ,\n_1_state_reg[0]_i_12 ,\n_2_state_reg[0]_i_12 ,\n_3_state_reg[0]_i_12 }),
        .CYINIT(1'b1),
        .DI({\n_0_state[0]_i_24 ,\n_0_state[0]_i_25 ,\n_0_state[0]_i_26 ,\n_0_state[0]_i_27 }),
        .O(\NLW_state_reg[0]_i_12_O_UNCONNECTED [3:0]),
        .S({\n_0_state[0]_i_28 ,\n_0_state[0]_i_29 ,\n_0_state[0]_i_30 ,\n_0_state[0]_i_31 }));
CARRY4 \state_reg[0]_i_2 
       (.CI(\n_0_state_reg[0]_i_3 ),
        .CO({is_next_state_needed,\n_1_state_reg[0]_i_2 ,\n_2_state_reg[0]_i_2 ,\n_3_state_reg[0]_i_2 }),
        .CYINIT(1'b0),
        .DI({\n_0_state[0]_i_4 ,\n_0_state[0]_i_5 ,\n_0_state[0]_i_6 ,\n_0_state[0]_i_7 }),
        .O(\NLW_state_reg[0]_i_2_O_UNCONNECTED [3:0]),
        .S({\n_0_state[0]_i_8 ,\n_0_state[0]_i_9 ,\n_0_state[0]_i_10 ,\n_0_state[0]_i_11 }));
CARRY4 \state_reg[0]_i_21 
       (.CI(\n_0_state_reg[0]_i_22 ),
        .CO({\NLW_state_reg[0]_i_21_CO_UNCONNECTED [3],\n_1_state_reg[0]_i_21 ,\NLW_state_reg[0]_i_21_CO_UNCONNECTED [1],\n_3_state_reg[0]_i_21 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_state_reg[0]_i_21_O_UNCONNECTED [3:2],\n_6_state_reg[0]_i_21 ,\n_7_state_reg[0]_i_21 }),
        .S({1'b0,1'b1,\n_0_state[0]_i_34 ,\n_0_state[0]_i_35 }));
CARRY4 \state_reg[0]_i_22 
       (.CI(\n_0_state_reg[0]_i_23 ),
        .CO({\n_0_state_reg[0]_i_22 ,\n_1_state_reg[0]_i_22 ,\n_2_state_reg[0]_i_22 ,\n_3_state_reg[0]_i_22 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_state_reg[0]_i_22 ,\n_5_state_reg[0]_i_22 ,\n_6_state_reg[0]_i_22 ,\n_7_state_reg[0]_i_22 }),
        .S({\n_0_state[0]_i_36 ,\n_0_state[0]_i_37 ,\n_0_state[0]_i_38 ,\n_0_state[0]_i_39 }));
CARRY4 \state_reg[0]_i_23 
       (.CI(\n_0_state_reg[0]_i_32 ),
        .CO({\n_0_state_reg[0]_i_23 ,\n_1_state_reg[0]_i_23 ,\n_2_state_reg[0]_i_23 ,\n_3_state_reg[0]_i_23 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_state_reg[0]_i_23 ,\n_5_state_reg[0]_i_23 ,\n_6_state_reg[0]_i_23 ,\n_7_state_reg[0]_i_23 }),
        .S({\n_0_state[0]_i_40 ,\n_0_state[0]_i_41 ,\n_0_state[0]_i_42 ,\n_0_state[0]_i_43 }));
CARRY4 \state_reg[0]_i_3 
       (.CI(\n_0_state_reg[0]_i_12 ),
        .CO({\n_0_state_reg[0]_i_3 ,\n_1_state_reg[0]_i_3 ,\n_2_state_reg[0]_i_3 ,\n_3_state_reg[0]_i_3 }),
        .CYINIT(1'b0),
        .DI({\n_0_state[0]_i_13 ,\n_0_state[0]_i_14 ,\n_0_state[0]_i_15 ,\n_0_state[0]_i_16 }),
        .O(\NLW_state_reg[0]_i_3_O_UNCONNECTED [3:0]),
        .S({\n_0_state[0]_i_17 ,\n_0_state[0]_i_18 ,\n_0_state[0]_i_19 ,\n_0_state[0]_i_20 }));
CARRY4 \state_reg[0]_i_32 
       (.CI(\n_0_state_reg[0]_i_33 ),
        .CO({\n_0_state_reg[0]_i_32 ,\n_1_state_reg[0]_i_32 ,\n_2_state_reg[0]_i_32 ,\n_3_state_reg[0]_i_32 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_state_reg[0]_i_32 ,\n_5_state_reg[0]_i_32 ,\n_6_state_reg[0]_i_32 ,\n_7_state_reg[0]_i_32 }),
        .S({\n_0_state[0]_i_48 ,\n_0_state[0]_i_49 ,\n_0_state[0]_i_50 ,\n_0_state[0]_i_51 }));
CARRY4 \state_reg[0]_i_33 
       (.CI(\n_0_state_reg[0]_i_44 ),
        .CO({\n_0_state_reg[0]_i_33 ,\n_1_state_reg[0]_i_33 ,\n_2_state_reg[0]_i_33 ,\n_3_state_reg[0]_i_33 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_state_reg[0]_i_33 ,\n_5_state_reg[0]_i_33 ,\n_6_state_reg[0]_i_33 ,\n_7_state_reg[0]_i_33 }),
        .S({\n_0_state[0]_i_52 ,\n_0_state[0]_i_53 ,\n_0_state[0]_i_54 ,\n_0_state[0]_i_55 }));
CARRY4 \state_reg[0]_i_44 
       (.CI(1'b0),
        .CO({\n_0_state_reg[0]_i_44 ,\n_1_state_reg[0]_i_44 ,\n_2_state_reg[0]_i_44 ,\n_3_state_reg[0]_i_44 }),
        .CYINIT(state_counter_reg[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_state_reg[0]_i_44 ,\n_5_state_reg[0]_i_44 ,\n_6_state_reg[0]_i_44 ,\n_7_state_reg[0]_i_44 }),
        .S({\n_0_state[0]_i_56 ,\n_0_state[0]_i_57 ,\n_0_state[0]_i_58 ,\n_0_state[0]_i_59 }));
FDRE \state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_state[1]_i_1 ),
        .Q(\n_0_state_reg[1] ),
        .R(reset));
FDRE \state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_state[2]_i_1 ),
        .Q(ResetSpad),
        .R(reset));
FDRE \state_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_state[3]_i_1 ),
        .Q(read_data),
        .R(reset));
endmodule

(* ORIG_REF_NAME = "read_process_manager" *) 
module spad_manager_0_read_process_manager
   (ColSelect,
    RowSelect,
    RowGroup,
    ReadEnable,
    Q,
    clk,
    reset);
  output [5:0]ColSelect;
  output [2:0]RowSelect;
  output RowGroup;
  output ReadEnable;
  input [0:0]Q;
  input clk;
  input reset;

  wire [5:0]ColSelect;
  wire [0:0]Q;
  wire ReadEnable;
  wire RowGroup;
  wire [2:0]RowSelect;
  wire clk;
  wire inc_address;
  wire \n_0_ColSelect[2]_INST_0_i_2 ;
  wire \n_0_ColSelect[2]_INST_0_i_4 ;
  wire n_0_RowGroup_INST_0_i_10;
  wire n_0_RowGroup_INST_0_i_11;
  wire n_0_RowGroup_INST_0_i_12;
  wire n_0_RowGroup_INST_0_i_13;
  wire n_0_RowGroup_INST_0_i_14;
  wire n_0_RowGroup_INST_0_i_15;
  wire n_0_RowGroup_INST_0_i_16;
  wire n_0_RowGroup_INST_0_i_17;
  wire n_0_RowGroup_INST_0_i_18;
  wire n_0_RowGroup_INST_0_i_19;
  wire n_0_RowGroup_INST_0_i_2;
  wire n_0_RowGroup_INST_0_i_20;
  wire n_0_RowGroup_INST_0_i_21;
  wire n_0_RowGroup_INST_0_i_22;
  wire n_0_RowGroup_INST_0_i_23;
  wire n_0_RowGroup_INST_0_i_24;
  wire n_0_RowGroup_INST_0_i_25;
  wire n_0_RowGroup_INST_0_i_26;
  wire n_0_RowGroup_INST_0_i_27;
  wire n_0_RowGroup_INST_0_i_28;
  wire n_0_RowGroup_INST_0_i_29;
  wire n_0_RowGroup_INST_0_i_30;
  wire n_0_RowGroup_INST_0_i_31;
  wire n_0_RowGroup_INST_0_i_32;
  wire n_0_RowGroup_INST_0_i_33;
  wire n_0_RowGroup_INST_0_i_34;
  wire n_0_RowGroup_INST_0_i_4;
  wire n_0_RowGroup_INST_0_i_5;
  wire n_0_RowGroup_INST_0_i_6;
  wire n_0_RowGroup_INST_0_i_7;
  wire n_0_RowGroup_INST_0_i_8;
  wire n_0_RowGroup_INST_0_i_9;
  wire \n_0_RowSelect[2]_INST_0_i_1 ;
  wire \n_0_RowSelect[2]_INST_0_i_10 ;
  wire \n_0_RowSelect[2]_INST_0_i_2 ;
  wire \n_0_RowSelect[2]_INST_0_i_4 ;
  wire \n_0_RowSelect[2]_INST_0_i_5 ;
  wire \n_0_RowSelect[2]_INST_0_i_6 ;
  wire \n_0_RowSelect[2]_INST_0_i_7 ;
  wire \n_0_RowSelect[2]_INST_0_i_8 ;
  wire \n_0_RowSelect[2]_INST_0_i_9 ;
  wire \n_0_prev_requested_address[0]_i_1 ;
  wire \n_0_prev_requested_address[1]_i_1 ;
  wire \n_0_prev_requested_address[2]_i_1 ;
  wire \n_0_prev_requested_address[3]_i_1 ;
  wire \n_0_prev_requested_address[4]_i_1 ;
  wire \n_0_prev_requested_address[5]_i_1 ;
  wire \n_0_prev_requested_address[6]_i_1 ;
  wire \n_0_prev_requested_address[7]_i_1 ;
  wire \n_0_prev_requested_address[8]_i_1 ;
  wire \n_0_prev_state[0]_i_1 ;
  wire \n_0_prev_state[1]_i_1 ;
  wire \n_0_prev_state[2]_i_1 ;
  wire \n_0_prev_state[3]_i_1 ;
  wire \n_0_prev_state_counter[0]_i_1 ;
  wire \n_0_prev_state_counter[12]_i_1 ;
  wire \n_0_prev_state_counter[12]_i_3 ;
  wire \n_0_prev_state_counter[12]_i_4 ;
  wire \n_0_prev_state_counter[12]_i_5 ;
  wire \n_0_prev_state_counter[12]_i_6 ;
  wire \n_0_prev_state_counter[4]_i_2 ;
  wire \n_0_prev_state_counter[4]_i_3 ;
  wire \n_0_prev_state_counter[4]_i_4 ;
  wire \n_0_prev_state_counter[4]_i_5 ;
  wire \n_0_prev_state_counter[8]_i_2 ;
  wire \n_0_prev_state_counter[8]_i_3 ;
  wire \n_0_prev_state_counter[8]_i_4 ;
  wire \n_0_prev_state_counter[8]_i_5 ;
  wire \n_0_prev_state_counter_reg[12]_i_2 ;
  wire \n_0_prev_state_counter_reg[4]_i_1 ;
  wire \n_0_prev_state_counter_reg[8]_i_1 ;
  wire n_1_RowGroup_INST_0_i_1;
  wire n_1_RowGroup_INST_0_i_19;
  wire n_1_RowGroup_INST_0_i_2;
  wire n_1_RowGroup_INST_0_i_21;
  wire n_1_RowGroup_INST_0_i_22;
  wire \n_1_prev_state_counter_reg[12]_i_2 ;
  wire \n_1_prev_state_counter_reg[4]_i_1 ;
  wire \n_1_prev_state_counter_reg[8]_i_1 ;
  wire n_2_RowGroup_INST_0_i_1;
  wire n_2_RowGroup_INST_0_i_19;
  wire n_2_RowGroup_INST_0_i_2;
  wire n_2_RowGroup_INST_0_i_21;
  wire n_2_RowGroup_INST_0_i_22;
  wire \n_2_prev_state_counter_reg[12]_i_2 ;
  wire \n_2_prev_state_counter_reg[4]_i_1 ;
  wire \n_2_prev_state_counter_reg[8]_i_1 ;
  wire n_3_RowGroup_INST_0_i_1;
  wire n_3_RowGroup_INST_0_i_19;
  wire n_3_RowGroup_INST_0_i_2;
  wire n_3_RowGroup_INST_0_i_21;
  wire n_3_RowGroup_INST_0_i_22;
  wire \n_3_prev_state_counter_reg[12]_i_2 ;
  wire \n_3_prev_state_counter_reg[4]_i_1 ;
  wire \n_3_prev_state_counter_reg[8]_i_1 ;
  wire \n_4_prev_state_counter_reg[12]_i_2 ;
  wire \n_4_prev_state_counter_reg[4]_i_1 ;
  wire \n_4_prev_state_counter_reg[8]_i_1 ;
  wire \n_5_prev_state_counter_reg[12]_i_2 ;
  wire \n_5_prev_state_counter_reg[4]_i_1 ;
  wire \n_5_prev_state_counter_reg[8]_i_1 ;
  wire \n_6_prev_state_counter_reg[12]_i_2 ;
  wire \n_6_prev_state_counter_reg[4]_i_1 ;
  wire \n_6_prev_state_counter_reg[8]_i_1 ;
  wire \n_7_ColSelect[2]_INST_0_i_3 ;
  wire \n_7_prev_state_counter_reg[12]_i_2 ;
  wire \n_7_prev_state_counter_reg[4]_i_1 ;
  wire \n_7_prev_state_counter_reg[8]_i_1 ;
  wire prev_read_data;
  wire [8:0]prev_requested_address;
  wire [3:0]prev_state;
  wire [13:0]prev_state_counter;
  wire reset;
  wire [13:13]state_counter;
  wire state_time_expired;
  wire [14:1]state_time_expired00_in;
  wire zeroize;
  wire [3:0]\NLW_ColSelect[2]_INST_0_i_3_CO_UNCONNECTED ;
  wire [3:1]\NLW_ColSelect[2]_INST_0_i_3_O_UNCONNECTED ;
  wire [3:0]NLW_RowGroup_INST_0_i_1_O_UNCONNECTED;
  wire [3:0]NLW_RowGroup_INST_0_i_2_O_UNCONNECTED;
  wire [3:0]NLW_RowGroup_INST_0_i_3_CO_UNCONNECTED;
  wire [3:1]NLW_RowGroup_INST_0_i_3_O_UNCONNECTED;

(* SOFT_HLUTNM = "soft_lutpair5" *) 
   LUT5 #(
    .INIT(32'h06000000)) 
     \ColSelect[0]_INST_0 
       (.I0(inc_address),
        .I1(prev_requested_address[0]),
        .I2(reset),
        .I3(Q),
        .I4(prev_read_data),
        .O(ColSelect[0]));
LUT6 #(
    .INIT(64'h006A000000000000)) 
     \ColSelect[1]_INST_0 
       (.I0(prev_requested_address[1]),
        .I1(inc_address),
        .I2(prev_requested_address[0]),
        .I3(reset),
        .I4(Q),
        .I5(prev_read_data),
        .O(ColSelect[1]));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT5 #(
    .INIT(32'h00006AAA)) 
     \ColSelect[2]_INST_0 
       (.I0(prev_requested_address[2]),
        .I1(inc_address),
        .I2(prev_requested_address[0]),
        .I3(prev_requested_address[1]),
        .I4(zeroize),
        .O(ColSelect[2]));
LUT6 #(
    .INIT(64'hAAA00000AAA80000)) 
     \ColSelect[2]_INST_0_i_1 
       (.I0(\n_0_RowSelect[2]_INST_0_i_7 ),
        .I1(\n_0_ColSelect[2]_INST_0_i_2 ),
        .I2(zeroize),
        .I3(state_time_expired),
        .I4(\n_0_RowSelect[2]_INST_0_i_5 ),
        .I5(\n_7_ColSelect[2]_INST_0_i_3 ),
        .O(inc_address));
LUT5 #(
    .INIT(32'h00020000)) 
     \ColSelect[2]_INST_0_i_2 
       (.I0(\n_0_RowSelect[2]_INST_0_i_9 ),
        .I1(\n_5_prev_state_counter_reg[4]_i_1 ),
        .I2(\n_6_prev_state_counter_reg[4]_i_1 ),
        .I3(\n_7_prev_state_counter_reg[4]_i_1 ),
        .I4(\n_0_RowSelect[2]_INST_0_i_8 ),
        .O(\n_0_ColSelect[2]_INST_0_i_2 ));
CARRY4 \ColSelect[2]_INST_0_i_3 
       (.CI(\n_0_prev_state_counter_reg[12]_i_2 ),
        .CO(\NLW_ColSelect[2]_INST_0_i_3_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_ColSelect[2]_INST_0_i_3_O_UNCONNECTED [3:1],\n_7_ColSelect[2]_INST_0_i_3 }),
        .S({1'b0,1'b0,1'b0,\n_0_ColSelect[2]_INST_0_i_4 }));
LUT1 #(
    .INIT(2'h2)) 
     \ColSelect[2]_INST_0_i_4 
       (.I0(prev_state_counter[13]),
        .O(\n_0_ColSelect[2]_INST_0_i_4 ));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT5 #(
    .INIT(32'h06000000)) 
     \ColSelect[3]_INST_0 
       (.I0(prev_requested_address[3]),
        .I1(\n_0_RowSelect[2]_INST_0_i_2 ),
        .I2(reset),
        .I3(Q),
        .I4(prev_read_data),
        .O(ColSelect[3]));
LUT6 #(
    .INIT(64'h006A000000000000)) 
     \ColSelect[4]_INST_0 
       (.I0(prev_requested_address[4]),
        .I1(prev_requested_address[3]),
        .I2(\n_0_RowSelect[2]_INST_0_i_2 ),
        .I3(reset),
        .I4(Q),
        .I5(prev_read_data),
        .O(ColSelect[4]));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT5 #(
    .INIT(32'h00006AAA)) 
     \ColSelect[5]_INST_0 
       (.I0(prev_requested_address[5]),
        .I1(\n_0_RowSelect[2]_INST_0_i_2 ),
        .I2(prev_requested_address[4]),
        .I3(prev_requested_address[3]),
        .I4(zeroize),
        .O(ColSelect[5]));
LUT6 #(
    .INIT(64'h0E0F0E0F0E0F0E00)) 
     ReadEnable_INST_0
       (.I0(prev_state[2]),
        .I1(prev_state[0]),
        .I2(zeroize),
        .I3(state_time_expired),
        .I4(prev_state[3]),
        .I5(prev_state[1]),
        .O(ReadEnable));
LUT5 #(
    .INIT(32'h0000FCEE)) 
     RowGroup_INST_0
       (.I0(prev_state[3]),
        .I1(prev_state[2]),
        .I2(prev_state[1]),
        .I3(state_time_expired),
        .I4(zeroize),
        .O(RowGroup));
CARRY4 RowGroup_INST_0_i_1
       (.CI(n_0_RowGroup_INST_0_i_2),
        .CO({state_time_expired,n_1_RowGroup_INST_0_i_1,n_2_RowGroup_INST_0_i_1,n_3_RowGroup_INST_0_i_1}),
        .CYINIT(1'b0),
        .DI({state_time_expired00_in[14],n_0_RowGroup_INST_0_i_4,n_0_RowGroup_INST_0_i_5,n_0_RowGroup_INST_0_i_6}),
        .O(NLW_RowGroup_INST_0_i_1_O_UNCONNECTED[3:0]),
        .S({n_0_RowGroup_INST_0_i_7,n_0_RowGroup_INST_0_i_8,n_0_RowGroup_INST_0_i_9,n_0_RowGroup_INST_0_i_10}));
LUT2 #(
    .INIT(4'h1)) 
     RowGroup_INST_0_i_10
       (.I0(state_time_expired00_in[9]),
        .I1(state_time_expired00_in[8]),
        .O(n_0_RowGroup_INST_0_i_10));
LUT2 #(
    .INIT(4'hE)) 
     RowGroup_INST_0_i_11
       (.I0(state_time_expired00_in[6]),
        .I1(state_time_expired00_in[7]),
        .O(n_0_RowGroup_INST_0_i_11));
LUT2 #(
    .INIT(4'hE)) 
     RowGroup_INST_0_i_12
       (.I0(state_time_expired00_in[4]),
        .I1(state_time_expired00_in[5]),
        .O(n_0_RowGroup_INST_0_i_12));
LUT4 #(
    .INIT(16'hFFE0)) 
     RowGroup_INST_0_i_13
       (.I0(prev_state[2]),
        .I1(prev_state[1]),
        .I2(state_time_expired00_in[2]),
        .I3(state_time_expired00_in[3]),
        .O(n_0_RowGroup_INST_0_i_13));
LUT4 #(
    .INIT(16'h222B)) 
     RowGroup_INST_0_i_14
       (.I0(state_time_expired00_in[1]),
        .I1(prev_state[1]),
        .I2(prev_state[2]),
        .I3(prev_state_counter[0]),
        .O(n_0_RowGroup_INST_0_i_14));
LUT2 #(
    .INIT(4'h1)) 
     RowGroup_INST_0_i_15
       (.I0(state_time_expired00_in[7]),
        .I1(state_time_expired00_in[6]),
        .O(n_0_RowGroup_INST_0_i_15));
LUT2 #(
    .INIT(4'h1)) 
     RowGroup_INST_0_i_16
       (.I0(state_time_expired00_in[5]),
        .I1(state_time_expired00_in[4]),
        .O(n_0_RowGroup_INST_0_i_16));
LUT4 #(
    .INIT(16'h001E)) 
     RowGroup_INST_0_i_17
       (.I0(prev_state[2]),
        .I1(prev_state[1]),
        .I2(state_time_expired00_in[2]),
        .I3(state_time_expired00_in[3]),
        .O(n_0_RowGroup_INST_0_i_17));
LUT4 #(
    .INIT(16'h6006)) 
     RowGroup_INST_0_i_18
       (.I0(prev_state_counter[0]),
        .I1(prev_state[2]),
        .I2(state_time_expired00_in[1]),
        .I3(prev_state[1]),
        .O(n_0_RowGroup_INST_0_i_18));
CARRY4 RowGroup_INST_0_i_19
       (.CI(n_0_RowGroup_INST_0_i_21),
        .CO({n_0_RowGroup_INST_0_i_19,n_1_RowGroup_INST_0_i_19,n_2_RowGroup_INST_0_i_19,n_3_RowGroup_INST_0_i_19}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(state_time_expired00_in[12:9]),
        .S({n_0_RowGroup_INST_0_i_23,n_0_RowGroup_INST_0_i_24,n_0_RowGroup_INST_0_i_25,n_0_RowGroup_INST_0_i_26}));
CARRY4 RowGroup_INST_0_i_2
       (.CI(1'b0),
        .CO({n_0_RowGroup_INST_0_i_2,n_1_RowGroup_INST_0_i_2,n_2_RowGroup_INST_0_i_2,n_3_RowGroup_INST_0_i_2}),
        .CYINIT(1'b1),
        .DI({n_0_RowGroup_INST_0_i_11,n_0_RowGroup_INST_0_i_12,n_0_RowGroup_INST_0_i_13,n_0_RowGroup_INST_0_i_14}),
        .O(NLW_RowGroup_INST_0_i_2_O_UNCONNECTED[3:0]),
        .S({n_0_RowGroup_INST_0_i_15,n_0_RowGroup_INST_0_i_16,n_0_RowGroup_INST_0_i_17,n_0_RowGroup_INST_0_i_18}));
LUT1 #(
    .INIT(2'h2)) 
     RowGroup_INST_0_i_20
       (.I0(prev_state_counter[13]),
        .O(n_0_RowGroup_INST_0_i_20));
CARRY4 RowGroup_INST_0_i_21
       (.CI(n_0_RowGroup_INST_0_i_22),
        .CO({n_0_RowGroup_INST_0_i_21,n_1_RowGroup_INST_0_i_21,n_2_RowGroup_INST_0_i_21,n_3_RowGroup_INST_0_i_21}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(state_time_expired00_in[8:5]),
        .S({n_0_RowGroup_INST_0_i_27,n_0_RowGroup_INST_0_i_28,n_0_RowGroup_INST_0_i_29,n_0_RowGroup_INST_0_i_30}));
CARRY4 RowGroup_INST_0_i_22
       (.CI(1'b0),
        .CO({n_0_RowGroup_INST_0_i_22,n_1_RowGroup_INST_0_i_22,n_2_RowGroup_INST_0_i_22,n_3_RowGroup_INST_0_i_22}),
        .CYINIT(prev_state_counter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(state_time_expired00_in[4:1]),
        .S({n_0_RowGroup_INST_0_i_31,n_0_RowGroup_INST_0_i_32,n_0_RowGroup_INST_0_i_33,n_0_RowGroup_INST_0_i_34}));
LUT1 #(
    .INIT(2'h2)) 
     RowGroup_INST_0_i_23
       (.I0(prev_state_counter[12]),
        .O(n_0_RowGroup_INST_0_i_23));
LUT1 #(
    .INIT(2'h2)) 
     RowGroup_INST_0_i_24
       (.I0(prev_state_counter[11]),
        .O(n_0_RowGroup_INST_0_i_24));
LUT1 #(
    .INIT(2'h2)) 
     RowGroup_INST_0_i_25
       (.I0(prev_state_counter[10]),
        .O(n_0_RowGroup_INST_0_i_25));
LUT1 #(
    .INIT(2'h2)) 
     RowGroup_INST_0_i_26
       (.I0(prev_state_counter[9]),
        .O(n_0_RowGroup_INST_0_i_26));
LUT1 #(
    .INIT(2'h2)) 
     RowGroup_INST_0_i_27
       (.I0(prev_state_counter[8]),
        .O(n_0_RowGroup_INST_0_i_27));
LUT1 #(
    .INIT(2'h2)) 
     RowGroup_INST_0_i_28
       (.I0(prev_state_counter[7]),
        .O(n_0_RowGroup_INST_0_i_28));
LUT1 #(
    .INIT(2'h2)) 
     RowGroup_INST_0_i_29
       (.I0(prev_state_counter[6]),
        .O(n_0_RowGroup_INST_0_i_29));
CARRY4 RowGroup_INST_0_i_3
       (.CI(n_0_RowGroup_INST_0_i_19),
        .CO({NLW_RowGroup_INST_0_i_3_CO_UNCONNECTED[3:2],state_time_expired00_in[14],NLW_RowGroup_INST_0_i_3_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_RowGroup_INST_0_i_3_O_UNCONNECTED[3:1],state_time_expired00_in[13]}),
        .S({1'b0,1'b0,1'b1,n_0_RowGroup_INST_0_i_20}));
LUT1 #(
    .INIT(2'h2)) 
     RowGroup_INST_0_i_30
       (.I0(prev_state_counter[5]),
        .O(n_0_RowGroup_INST_0_i_30));
LUT1 #(
    .INIT(2'h2)) 
     RowGroup_INST_0_i_31
       (.I0(prev_state_counter[4]),
        .O(n_0_RowGroup_INST_0_i_31));
LUT1 #(
    .INIT(2'h2)) 
     RowGroup_INST_0_i_32
       (.I0(prev_state_counter[3]),
        .O(n_0_RowGroup_INST_0_i_32));
LUT1 #(
    .INIT(2'h2)) 
     RowGroup_INST_0_i_33
       (.I0(prev_state_counter[2]),
        .O(n_0_RowGroup_INST_0_i_33));
LUT1 #(
    .INIT(2'h2)) 
     RowGroup_INST_0_i_34
       (.I0(prev_state_counter[1]),
        .O(n_0_RowGroup_INST_0_i_34));
LUT2 #(
    .INIT(4'hE)) 
     RowGroup_INST_0_i_4
       (.I0(state_time_expired00_in[12]),
        .I1(state_time_expired00_in[13]),
        .O(n_0_RowGroup_INST_0_i_4));
LUT2 #(
    .INIT(4'hE)) 
     RowGroup_INST_0_i_5
       (.I0(state_time_expired00_in[10]),
        .I1(state_time_expired00_in[11]),
        .O(n_0_RowGroup_INST_0_i_5));
LUT2 #(
    .INIT(4'hE)) 
     RowGroup_INST_0_i_6
       (.I0(state_time_expired00_in[8]),
        .I1(state_time_expired00_in[9]),
        .O(n_0_RowGroup_INST_0_i_6));
LUT1 #(
    .INIT(2'h1)) 
     RowGroup_INST_0_i_7
       (.I0(state_time_expired00_in[14]),
        .O(n_0_RowGroup_INST_0_i_7));
LUT2 #(
    .INIT(4'h1)) 
     RowGroup_INST_0_i_8
       (.I0(state_time_expired00_in[13]),
        .I1(state_time_expired00_in[12]),
        .O(n_0_RowGroup_INST_0_i_8));
LUT2 #(
    .INIT(4'h1)) 
     RowGroup_INST_0_i_9
       (.I0(state_time_expired00_in[11]),
        .I1(state_time_expired00_in[10]),
        .O(n_0_RowGroup_INST_0_i_9));
LUT6 #(
    .INIT(64'h000000006AAAAAAA)) 
     \RowSelect[0]_INST_0 
       (.I0(prev_requested_address[6]),
        .I1(\n_0_RowSelect[2]_INST_0_i_2 ),
        .I2(prev_requested_address[5]),
        .I3(prev_requested_address[3]),
        .I4(prev_requested_address[4]),
        .I5(zeroize),
        .O(RowSelect[0]));
LUT6 #(
    .INIT(64'h00A6000000000000)) 
     \RowSelect[1]_INST_0 
       (.I0(prev_requested_address[7]),
        .I1(\n_0_RowSelect[2]_INST_0_i_2 ),
        .I2(\n_0_RowSelect[2]_INST_0_i_1 ),
        .I3(reset),
        .I4(Q),
        .I5(prev_read_data),
        .O(RowSelect[1]));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT5 #(
    .INIT(32'h00009AAA)) 
     \RowSelect[2]_INST_0 
       (.I0(prev_requested_address[8]),
        .I1(\n_0_RowSelect[2]_INST_0_i_1 ),
        .I2(prev_requested_address[7]),
        .I3(\n_0_RowSelect[2]_INST_0_i_2 ),
        .I4(zeroize),
        .O(RowSelect[2]));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT4 #(
    .INIT(16'h7FFF)) 
     \RowSelect[2]_INST_0_i_1 
       (.I0(prev_requested_address[5]),
        .I1(prev_requested_address[3]),
        .I2(prev_requested_address[4]),
        .I3(prev_requested_address[6]),
        .O(\n_0_RowSelect[2]_INST_0_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT4 #(
    .INIT(16'h1000)) 
     \RowSelect[2]_INST_0_i_10 
       (.I0(state_time_expired),
        .I1(reset),
        .I2(Q),
        .I3(prev_read_data),
        .O(\n_0_RowSelect[2]_INST_0_i_10 ));
LUT6 #(
    .INIT(64'h0400000000000000)) 
     \RowSelect[2]_INST_0_i_2 
       (.I0(\n_0_RowSelect[2]_INST_0_i_4 ),
        .I1(prev_requested_address[2]),
        .I2(state_counter),
        .I3(\n_0_RowSelect[2]_INST_0_i_5 ),
        .I4(\n_0_RowSelect[2]_INST_0_i_6 ),
        .I5(\n_0_RowSelect[2]_INST_0_i_7 ),
        .O(\n_0_RowSelect[2]_INST_0_i_2 ));
LUT3 #(
    .INIT(8'hF7)) 
     \RowSelect[2]_INST_0_i_3 
       (.I0(prev_read_data),
        .I1(Q),
        .I2(reset),
        .O(zeroize));
(* SOFT_HLUTNM = "soft_lutpair7" *) 
   LUT2 #(
    .INIT(4'h7)) 
     \RowSelect[2]_INST_0_i_4 
       (.I0(prev_requested_address[1]),
        .I1(prev_requested_address[0]),
        .O(\n_0_RowSelect[2]_INST_0_i_4 ));
LUT6 #(
    .INIT(64'h0001000000000100)) 
     \RowSelect[2]_INST_0_i_5 
       (.I0(zeroize),
        .I1(prev_state[1]),
        .I2(prev_state[2]),
        .I3(prev_state[0]),
        .I4(prev_state[3]),
        .I5(state_time_expired),
        .O(\n_0_RowSelect[2]_INST_0_i_5 ));
LUT6 #(
    .INIT(64'h00020000FFFFFFFF)) 
     \RowSelect[2]_INST_0_i_6 
       (.I0(\n_0_RowSelect[2]_INST_0_i_8 ),
        .I1(\n_7_prev_state_counter_reg[4]_i_1 ),
        .I2(\n_6_prev_state_counter_reg[4]_i_1 ),
        .I3(\n_5_prev_state_counter_reg[4]_i_1 ),
        .I4(\n_0_RowSelect[2]_INST_0_i_9 ),
        .I5(\n_0_RowSelect[2]_INST_0_i_10 ),
        .O(\n_0_RowSelect[2]_INST_0_i_6 ));
LUT6 #(
    .INIT(64'hFFFFFFFF7FFFFFFF)) 
     \RowSelect[2]_INST_0_i_7 
       (.I0(prev_requested_address[1]),
        .I1(prev_requested_address[0]),
        .I2(prev_requested_address[7]),
        .I3(prev_requested_address[2]),
        .I4(prev_requested_address[8]),
        .I5(\n_0_RowSelect[2]_INST_0_i_1 ),
        .O(\n_0_RowSelect[2]_INST_0_i_7 ));
LUT6 #(
    .INIT(64'h0000000100000000)) 
     \RowSelect[2]_INST_0_i_8 
       (.I0(\n_4_prev_state_counter_reg[8]_i_1 ),
        .I1(\n_7_prev_state_counter_reg[12]_i_2 ),
        .I2(\n_6_prev_state_counter_reg[12]_i_2 ),
        .I3(\n_5_prev_state_counter_reg[12]_i_2 ),
        .I4(\n_4_prev_state_counter_reg[12]_i_2 ),
        .I5(prev_state_counter[0]),
        .O(\n_0_RowSelect[2]_INST_0_i_8 ));
LUT4 #(
    .INIT(16'h0001)) 
     \RowSelect[2]_INST_0_i_9 
       (.I0(\n_5_prev_state_counter_reg[8]_i_1 ),
        .I1(\n_6_prev_state_counter_reg[8]_i_1 ),
        .I2(\n_7_prev_state_counter_reg[8]_i_1 ),
        .I3(\n_4_prev_state_counter_reg[4]_i_1 ),
        .O(\n_0_RowSelect[2]_INST_0_i_9 ));
FDRE prev_read_data_reg
       (.C(clk),
        .CE(1'b1),
        .D(Q),
        .Q(prev_read_data),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair5" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \prev_requested_address[0]_i_1 
       (.I0(prev_requested_address[0]),
        .I1(inc_address),
        .O(\n_0_prev_requested_address[0]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair7" *) 
   LUT3 #(
    .INIT(8'h78)) 
     \prev_requested_address[1]_i_1 
       (.I0(prev_requested_address[0]),
        .I1(inc_address),
        .I2(prev_requested_address[1]),
        .O(\n_0_prev_requested_address[1]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT4 #(
    .INIT(16'h7F80)) 
     \prev_requested_address[2]_i_1 
       (.I0(prev_requested_address[1]),
        .I1(prev_requested_address[0]),
        .I2(inc_address),
        .I3(prev_requested_address[2]),
        .O(\n_0_prev_requested_address[2]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \prev_requested_address[3]_i_1 
       (.I0(\n_0_RowSelect[2]_INST_0_i_2 ),
        .I1(prev_requested_address[3]),
        .O(\n_0_prev_requested_address[3]_i_1 ));
LUT3 #(
    .INIT(8'h78)) 
     \prev_requested_address[4]_i_1 
       (.I0(\n_0_RowSelect[2]_INST_0_i_2 ),
        .I1(prev_requested_address[3]),
        .I2(prev_requested_address[4]),
        .O(\n_0_prev_requested_address[4]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT4 #(
    .INIT(16'h7F80)) 
     \prev_requested_address[5]_i_1 
       (.I0(prev_requested_address[3]),
        .I1(prev_requested_address[4]),
        .I2(\n_0_RowSelect[2]_INST_0_i_2 ),
        .I3(prev_requested_address[5]),
        .O(\n_0_prev_requested_address[5]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT5 #(
    .INIT(32'h7FFF8000)) 
     \prev_requested_address[6]_i_1 
       (.I0(prev_requested_address[4]),
        .I1(prev_requested_address[3]),
        .I2(prev_requested_address[5]),
        .I3(\n_0_RowSelect[2]_INST_0_i_2 ),
        .I4(prev_requested_address[6]),
        .O(\n_0_prev_requested_address[6]_i_1 ));
LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
     \prev_requested_address[7]_i_1 
       (.I0(prev_requested_address[5]),
        .I1(prev_requested_address[3]),
        .I2(prev_requested_address[4]),
        .I3(prev_requested_address[6]),
        .I4(\n_0_RowSelect[2]_INST_0_i_2 ),
        .I5(prev_requested_address[7]),
        .O(\n_0_prev_requested_address[7]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT4 #(
    .INIT(16'hF708)) 
     \prev_requested_address[8]_i_1 
       (.I0(\n_0_RowSelect[2]_INST_0_i_2 ),
        .I1(prev_requested_address[7]),
        .I2(\n_0_RowSelect[2]_INST_0_i_1 ),
        .I3(prev_requested_address[8]),
        .O(\n_0_prev_requested_address[8]_i_1 ));
FDRE \prev_requested_address_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_prev_requested_address[0]_i_1 ),
        .Q(prev_requested_address[0]),
        .R(zeroize));
FDRE \prev_requested_address_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_prev_requested_address[1]_i_1 ),
        .Q(prev_requested_address[1]),
        .R(zeroize));
FDRE \prev_requested_address_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_prev_requested_address[2]_i_1 ),
        .Q(prev_requested_address[2]),
        .R(zeroize));
FDRE \prev_requested_address_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_prev_requested_address[3]_i_1 ),
        .Q(prev_requested_address[3]),
        .R(zeroize));
FDRE \prev_requested_address_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_prev_requested_address[4]_i_1 ),
        .Q(prev_requested_address[4]),
        .R(zeroize));
FDRE \prev_requested_address_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_prev_requested_address[5]_i_1 ),
        .Q(prev_requested_address[5]),
        .R(zeroize));
FDRE \prev_requested_address_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_prev_requested_address[6]_i_1 ),
        .Q(prev_requested_address[6]),
        .R(zeroize));
FDRE \prev_requested_address_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_prev_requested_address[7]_i_1 ),
        .Q(prev_requested_address[7]),
        .R(zeroize));
FDRE \prev_requested_address_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_prev_requested_address[8]_i_1 ),
        .Q(prev_requested_address[8]),
        .R(zeroize));
LUT6 #(
    .INIT(64'hFFFFFFF7F7F7FFF7)) 
     \prev_state[0]_i_1 
       (.I0(prev_read_data),
        .I1(Q),
        .I2(reset),
        .I3(prev_state[0]),
        .I4(state_time_expired),
        .I5(prev_state[3]),
        .O(\n_0_prev_state[0]_i_1 ));
LUT6 #(
    .INIT(64'h00AC000000000000)) 
     \prev_state[1]_i_1 
       (.I0(prev_state[0]),
        .I1(prev_state[1]),
        .I2(state_time_expired),
        .I3(reset),
        .I4(Q),
        .I5(prev_read_data),
        .O(\n_0_prev_state[1]_i_1 ));
LUT6 #(
    .INIT(64'h00AC000000000000)) 
     \prev_state[2]_i_1 
       (.I0(prev_state[1]),
        .I1(prev_state[2]),
        .I2(state_time_expired),
        .I3(reset),
        .I4(Q),
        .I5(prev_read_data),
        .O(\n_0_prev_state[2]_i_1 ));
LUT6 #(
    .INIT(64'h00AC000000000000)) 
     \prev_state[3]_i_1 
       (.I0(prev_state[2]),
        .I1(prev_state[3]),
        .I2(state_time_expired),
        .I3(reset),
        .I4(Q),
        .I5(prev_read_data),
        .O(\n_0_prev_state[3]_i_1 ));
LUT1 #(
    .INIT(2'h1)) 
     \prev_state_counter[0]_i_1 
       (.I0(prev_state_counter[0]),
        .O(\n_0_prev_state_counter[0]_i_1 ));
LUT4 #(
    .INIT(16'hFFF7)) 
     \prev_state_counter[12]_i_1 
       (.I0(prev_read_data),
        .I1(Q),
        .I2(reset),
        .I3(state_time_expired),
        .O(\n_0_prev_state_counter[12]_i_1 ));
LUT1 #(
    .INIT(2'h2)) 
     \prev_state_counter[12]_i_3 
       (.I0(prev_state_counter[12]),
        .O(\n_0_prev_state_counter[12]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \prev_state_counter[12]_i_4 
       (.I0(prev_state_counter[11]),
        .O(\n_0_prev_state_counter[12]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \prev_state_counter[12]_i_5 
       (.I0(prev_state_counter[10]),
        .O(\n_0_prev_state_counter[12]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \prev_state_counter[12]_i_6 
       (.I0(prev_state_counter[9]),
        .O(\n_0_prev_state_counter[12]_i_6 ));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT5 #(
    .INIT(32'h00000080)) 
     \prev_state_counter[13]_i_1 
       (.I0(\n_7_ColSelect[2]_INST_0_i_3 ),
        .I1(prev_read_data),
        .I2(Q),
        .I3(reset),
        .I4(state_time_expired),
        .O(state_counter));
LUT1 #(
    .INIT(2'h2)) 
     \prev_state_counter[4]_i_2 
       (.I0(prev_state_counter[4]),
        .O(\n_0_prev_state_counter[4]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \prev_state_counter[4]_i_3 
       (.I0(prev_state_counter[3]),
        .O(\n_0_prev_state_counter[4]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \prev_state_counter[4]_i_4 
       (.I0(prev_state_counter[2]),
        .O(\n_0_prev_state_counter[4]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \prev_state_counter[4]_i_5 
       (.I0(prev_state_counter[1]),
        .O(\n_0_prev_state_counter[4]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \prev_state_counter[8]_i_2 
       (.I0(prev_state_counter[8]),
        .O(\n_0_prev_state_counter[8]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \prev_state_counter[8]_i_3 
       (.I0(prev_state_counter[7]),
        .O(\n_0_prev_state_counter[8]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \prev_state_counter[8]_i_4 
       (.I0(prev_state_counter[6]),
        .O(\n_0_prev_state_counter[8]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \prev_state_counter[8]_i_5 
       (.I0(prev_state_counter[5]),
        .O(\n_0_prev_state_counter[8]_i_5 ));
FDRE \prev_state_counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_prev_state_counter[0]_i_1 ),
        .Q(prev_state_counter[0]),
        .R(\n_0_prev_state_counter[12]_i_1 ));
FDRE \prev_state_counter_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_6_prev_state_counter_reg[12]_i_2 ),
        .Q(prev_state_counter[10]),
        .R(\n_0_prev_state_counter[12]_i_1 ));
FDRE \prev_state_counter_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_5_prev_state_counter_reg[12]_i_2 ),
        .Q(prev_state_counter[11]),
        .R(\n_0_prev_state_counter[12]_i_1 ));
FDRE \prev_state_counter_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_4_prev_state_counter_reg[12]_i_2 ),
        .Q(prev_state_counter[12]),
        .R(\n_0_prev_state_counter[12]_i_1 ));
CARRY4 \prev_state_counter_reg[12]_i_2 
       (.CI(\n_0_prev_state_counter_reg[8]_i_1 ),
        .CO({\n_0_prev_state_counter_reg[12]_i_2 ,\n_1_prev_state_counter_reg[12]_i_2 ,\n_2_prev_state_counter_reg[12]_i_2 ,\n_3_prev_state_counter_reg[12]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_prev_state_counter_reg[12]_i_2 ,\n_5_prev_state_counter_reg[12]_i_2 ,\n_6_prev_state_counter_reg[12]_i_2 ,\n_7_prev_state_counter_reg[12]_i_2 }),
        .S({\n_0_prev_state_counter[12]_i_3 ,\n_0_prev_state_counter[12]_i_4 ,\n_0_prev_state_counter[12]_i_5 ,\n_0_prev_state_counter[12]_i_6 }));
FDRE \prev_state_counter_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(state_counter),
        .Q(prev_state_counter[13]),
        .R(1'b0));
FDRE \prev_state_counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_7_prev_state_counter_reg[4]_i_1 ),
        .Q(prev_state_counter[1]),
        .R(\n_0_prev_state_counter[12]_i_1 ));
FDRE \prev_state_counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_6_prev_state_counter_reg[4]_i_1 ),
        .Q(prev_state_counter[2]),
        .R(\n_0_prev_state_counter[12]_i_1 ));
FDRE \prev_state_counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_5_prev_state_counter_reg[4]_i_1 ),
        .Q(prev_state_counter[3]),
        .R(\n_0_prev_state_counter[12]_i_1 ));
FDRE \prev_state_counter_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_4_prev_state_counter_reg[4]_i_1 ),
        .Q(prev_state_counter[4]),
        .R(\n_0_prev_state_counter[12]_i_1 ));
CARRY4 \prev_state_counter_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\n_0_prev_state_counter_reg[4]_i_1 ,\n_1_prev_state_counter_reg[4]_i_1 ,\n_2_prev_state_counter_reg[4]_i_1 ,\n_3_prev_state_counter_reg[4]_i_1 }),
        .CYINIT(prev_state_counter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_prev_state_counter_reg[4]_i_1 ,\n_5_prev_state_counter_reg[4]_i_1 ,\n_6_prev_state_counter_reg[4]_i_1 ,\n_7_prev_state_counter_reg[4]_i_1 }),
        .S({\n_0_prev_state_counter[4]_i_2 ,\n_0_prev_state_counter[4]_i_3 ,\n_0_prev_state_counter[4]_i_4 ,\n_0_prev_state_counter[4]_i_5 }));
FDRE \prev_state_counter_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_7_prev_state_counter_reg[8]_i_1 ),
        .Q(prev_state_counter[5]),
        .R(\n_0_prev_state_counter[12]_i_1 ));
FDRE \prev_state_counter_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_6_prev_state_counter_reg[8]_i_1 ),
        .Q(prev_state_counter[6]),
        .R(\n_0_prev_state_counter[12]_i_1 ));
FDRE \prev_state_counter_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_5_prev_state_counter_reg[8]_i_1 ),
        .Q(prev_state_counter[7]),
        .R(\n_0_prev_state_counter[12]_i_1 ));
FDRE \prev_state_counter_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_4_prev_state_counter_reg[8]_i_1 ),
        .Q(prev_state_counter[8]),
        .R(\n_0_prev_state_counter[12]_i_1 ));
CARRY4 \prev_state_counter_reg[8]_i_1 
       (.CI(\n_0_prev_state_counter_reg[4]_i_1 ),
        .CO({\n_0_prev_state_counter_reg[8]_i_1 ,\n_1_prev_state_counter_reg[8]_i_1 ,\n_2_prev_state_counter_reg[8]_i_1 ,\n_3_prev_state_counter_reg[8]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_prev_state_counter_reg[8]_i_1 ,\n_5_prev_state_counter_reg[8]_i_1 ,\n_6_prev_state_counter_reg[8]_i_1 ,\n_7_prev_state_counter_reg[8]_i_1 }),
        .S({\n_0_prev_state_counter[8]_i_2 ,\n_0_prev_state_counter[8]_i_3 ,\n_0_prev_state_counter[8]_i_4 ,\n_0_prev_state_counter[8]_i_5 }));
FDRE \prev_state_counter_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_7_prev_state_counter_reg[12]_i_2 ),
        .Q(prev_state_counter[9]),
        .R(\n_0_prev_state_counter[12]_i_1 ));
FDRE \prev_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_prev_state[0]_i_1 ),
        .Q(prev_state[0]),
        .R(1'b0));
FDRE \prev_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_prev_state[1]_i_1 ),
        .Q(prev_state[1]),
        .R(1'b0));
FDRE \prev_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_prev_state[2]_i_1 ),
        .Q(prev_state[2]),
        .R(1'b0));
FDRE \prev_state_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_prev_state[3]_i_1 ),
        .Q(prev_state[3]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "spad_manager" *) 
module spad_manager_0_spad_manager
   (FrameDurationCurrentClks,
    FrameId,
    Q,
    ColSelect,
    RowSelect,
    RowGroup,
    ReadEnable,
    FrameDurationChangeEnable,
    FrameDurationRequestedClks,
    clk,
    reset);
  output [21:0]FrameDurationCurrentClks;
  output [31:0]FrameId;
  output [1:0]Q;
  output [5:0]ColSelect;
  output [2:0]RowSelect;
  output RowGroup;
  output ReadEnable;
  output FrameDurationChangeEnable;
  input [21:0]FrameDurationRequestedClks;
  input clk;
  input reset;

  wire [5:0]ColSelect;
  wire FrameDurationChangeEnable;
  wire [21:0]FrameDurationCurrentClks;
  wire [21:0]FrameDurationRequestedClks;
  wire [31:0]FrameId;
  wire [1:0]Q;
  wire ReadEnable;
  wire RowGroup;
  wire [2:0]RowSelect;
  wire clk;
  wire reset;

spad_manager_0_controller controller
       (.ColSelect(ColSelect),
        .FrameDurationChangeEnable(FrameDurationChangeEnable),
        .FrameDurationCurrentClks(FrameDurationCurrentClks),
        .FrameDurationRequestedClks(FrameDurationRequestedClks),
        .FrameId(FrameId),
        .LatchSpad(Q[0]),
        .ReadEnable(ReadEnable),
        .ResetSpad(Q[1]),
        .RowGroup(RowGroup),
        .RowSelect(RowSelect),
        .clk(clk),
        .reset(reset));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
