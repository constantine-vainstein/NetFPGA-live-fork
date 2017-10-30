// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:29:27 MST 2014
// Date        : Mon Oct 30 21:11:37 2017
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
  wire [7:0]PixelOut0;
  wire [7:0]PixelOut1;
  wire [7:0]PixelOut2;
  wire [7:0]PixelOut3;
  wire ReadEnable;
  wire ResetSpad;
  wire RowGroup;
  wire [2:0]RowSelect;
  wire clk;
  wire reset;

spad_manager_0_spad_manager inst
       (.ColSelect(ColSelect),
        .FrameDurationChangeEnable(FrameDurationChangeEnable),
        .FrameDurationCurrentClks(FrameDurationCurrentClks),
        .FrameDurationRequestedClks(FrameDurationRequestedClks),
        .FrameId(FrameId),
        .PixelIn0(PixelIn0),
        .PixelIn1(PixelIn1),
        .PixelIn2(PixelIn2),
        .PixelIn3(PixelIn3),
        .PixelOut0(PixelOut0),
        .PixelOut1(PixelOut1),
        .PixelOut2(PixelOut2),
        .PixelOut3(PixelOut3),
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
    O8,
    O1,
    E,
    Q,
    ColSelect,
    RowSelect,
    O2,
    RowGroup,
    FrameDurationChangeEnable,
    clk,
    FrameDurationRequestedClks,
    ReadEnable,
    reset);
  output [21:0]FrameDurationCurrentClks;
  output [31:0]O8;
  output O1;
  output [0:0]E;
  output [1:0]Q;
  output [5:0]ColSelect;
  output [2:0]RowSelect;
  output [0:0]O2;
  output RowGroup;
  output FrameDurationChangeEnable;
  input clk;
  input [21:0]FrameDurationRequestedClks;
  input ReadEnable;
  input reset;

  wire [5:0]ColSelect;
  wire [0:0]E;
  wire FrameDurationChangeEnable;
  wire [21:0]FrameDurationCurrentClks;
  wire [21:0]FrameDurationRequestedClks;
  wire FrameId0;
  wire FrameId11_out;
  wire O1;
  wire [0:0]O2;
  wire [31:0]O8;
  wire [1:0]Q;
  wire ReadEnable;
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
  wire \n_0_FrameDurationCurrentClks[1]_INST_0_i_5 ;
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
  wire \n_0_FrameId[0]_i_1 ;
  wire \n_0_FrameId[0]_i_10 ;
  wire \n_0_FrameId[0]_i_11 ;
  wire \n_0_FrameId[0]_i_12 ;
  wire \n_0_FrameId[0]_i_13 ;
  wire \n_0_FrameId[0]_i_14 ;
  wire \n_0_FrameId[0]_i_15 ;
  wire \n_0_FrameId[0]_i_16 ;
  wire \n_0_FrameId[0]_i_17 ;
  wire \n_0_FrameId[0]_i_5 ;
  wire \n_0_FrameId[0]_i_6 ;
  wire \n_0_FrameId[0]_i_7 ;
  wire \n_0_FrameId[0]_i_8 ;
  wire \n_0_FrameId[12]_i_2 ;
  wire \n_0_FrameId[12]_i_3 ;
  wire \n_0_FrameId[12]_i_4 ;
  wire \n_0_FrameId[12]_i_5 ;
  wire \n_0_FrameId[16]_i_2 ;
  wire \n_0_FrameId[16]_i_3 ;
  wire \n_0_FrameId[16]_i_4 ;
  wire \n_0_FrameId[16]_i_5 ;
  wire \n_0_FrameId[20]_i_2 ;
  wire \n_0_FrameId[20]_i_3 ;
  wire \n_0_FrameId[20]_i_4 ;
  wire \n_0_FrameId[20]_i_5 ;
  wire \n_0_FrameId[24]_i_2 ;
  wire \n_0_FrameId[24]_i_3 ;
  wire \n_0_FrameId[24]_i_4 ;
  wire \n_0_FrameId[24]_i_5 ;
  wire \n_0_FrameId[28]_i_2 ;
  wire \n_0_FrameId[28]_i_3 ;
  wire \n_0_FrameId[28]_i_4 ;
  wire \n_0_FrameId[28]_i_5 ;
  wire \n_0_FrameId[4]_i_2 ;
  wire \n_0_FrameId[4]_i_3 ;
  wire \n_0_FrameId[4]_i_4 ;
  wire \n_0_FrameId[4]_i_5 ;
  wire \n_0_FrameId[8]_i_2 ;
  wire \n_0_FrameId[8]_i_3 ;
  wire \n_0_FrameId[8]_i_4 ;
  wire \n_0_FrameId[8]_i_5 ;
  wire \n_0_FrameId_reg[0]_i_3 ;
  wire \n_0_FrameId_reg[0]_i_4 ;
  wire \n_0_FrameId_reg[0]_i_9 ;
  wire \n_0_FrameId_reg[12]_i_1 ;
  wire \n_0_FrameId_reg[16]_i_1 ;
  wire \n_0_FrameId_reg[20]_i_1 ;
  wire \n_0_FrameId_reg[24]_i_1 ;
  wire \n_0_FrameId_reg[4]_i_1 ;
  wire \n_0_FrameId_reg[8]_i_1 ;
  wire \n_0_state[0]_i_10 ;
  wire \n_0_state[0]_i_12 ;
  wire \n_0_state[0]_i_13 ;
  wire \n_0_state[0]_i_14 ;
  wire \n_0_state[0]_i_15 ;
  wire \n_0_state[0]_i_16 ;
  wire \n_0_state[0]_i_17 ;
  wire \n_0_state[0]_i_18 ;
  wire \n_0_state[0]_i_19 ;
  wire \n_0_state[0]_i_23 ;
  wire \n_0_state[0]_i_24 ;
  wire \n_0_state[0]_i_25 ;
  wire \n_0_state[0]_i_26 ;
  wire \n_0_state[0]_i_27 ;
  wire \n_0_state[0]_i_28 ;
  wire \n_0_state[0]_i_29 ;
  wire \n_0_state[0]_i_3 ;
  wire \n_0_state[0]_i_30 ;
  wire \n_0_state[0]_i_33 ;
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
  wire \n_0_state[0]_i_46 ;
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
  wire \n_0_state[0]_i_6 ;
  wire \n_0_state[0]_i_7 ;
  wire \n_0_state[0]_i_8 ;
  wire \n_0_state[0]_i_9 ;
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
  wire \n_0_state_durations[8][11]_i_2 ;
  wire \n_0_state_durations[8][11]_i_3 ;
  wire \n_0_state_durations[8][11]_i_4 ;
  wire \n_0_state_durations[8][11]_i_5 ;
  wire \n_0_state_durations[8][15]_i_2 ;
  wire \n_0_state_durations[8][15]_i_3 ;
  wire \n_0_state_durations[8][15]_i_4 ;
  wire \n_0_state_durations[8][15]_i_5 ;
  wire \n_0_state_durations[8][19]_i_2 ;
  wire \n_0_state_durations[8][19]_i_3 ;
  wire \n_0_state_durations[8][19]_i_4 ;
  wire \n_0_state_durations[8][19]_i_5 ;
  wire \n_0_state_durations[8][22]_i_10 ;
  wire \n_0_state_durations[8][22]_i_3 ;
  wire \n_0_state_durations[8][22]_i_4 ;
  wire \n_0_state_durations[8][22]_i_5 ;
  wire \n_0_state_durations[8][22]_i_6 ;
  wire \n_0_state_durations[8][22]_i_7 ;
  wire \n_0_state_durations[8][22]_i_8 ;
  wire \n_0_state_durations[8][22]_i_9 ;
  wire \n_0_state_durations[8][3]_i_2 ;
  wire \n_0_state_durations[8][3]_i_3 ;
  wire \n_0_state_durations[8][3]_i_4 ;
  wire \n_0_state_durations[8][3]_i_5 ;
  wire \n_0_state_durations[8][3]_i_6 ;
  wire \n_0_state_durations[8][7]_i_2 ;
  wire \n_0_state_durations[8][7]_i_3 ;
  wire \n_0_state_durations[8][7]_i_4 ;
  wire \n_0_state_durations[8][7]_i_5 ;
  wire \n_0_state_durations_reg[8][0] ;
  wire \n_0_state_durations_reg[8][10] ;
  wire \n_0_state_durations_reg[8][11] ;
  wire \n_0_state_durations_reg[8][11]_i_1 ;
  wire \n_0_state_durations_reg[8][12] ;
  wire \n_0_state_durations_reg[8][13] ;
  wire \n_0_state_durations_reg[8][14] ;
  wire \n_0_state_durations_reg[8][15] ;
  wire \n_0_state_durations_reg[8][15]_i_1 ;
  wire \n_0_state_durations_reg[8][16] ;
  wire \n_0_state_durations_reg[8][17] ;
  wire \n_0_state_durations_reg[8][18] ;
  wire \n_0_state_durations_reg[8][19] ;
  wire \n_0_state_durations_reg[8][19]_i_1 ;
  wire \n_0_state_durations_reg[8][1] ;
  wire \n_0_state_durations_reg[8][20] ;
  wire \n_0_state_durations_reg[8][21] ;
  wire \n_0_state_durations_reg[8][22] ;
  wire \n_0_state_durations_reg[8][2] ;
  wire \n_0_state_durations_reg[8][3] ;
  wire \n_0_state_durations_reg[8][3]_i_1 ;
  wire \n_0_state_durations_reg[8][4] ;
  wire \n_0_state_durations_reg[8][5] ;
  wire \n_0_state_durations_reg[8][6] ;
  wire \n_0_state_durations_reg[8][7] ;
  wire \n_0_state_durations_reg[8][7]_i_1 ;
  wire \n_0_state_durations_reg[8][8] ;
  wire \n_0_state_durations_reg[8][9] ;
  wire \n_0_state_reg[0]_i_11 ;
  wire \n_0_state_reg[0]_i_2 ;
  wire \n_0_state_reg[0]_i_21 ;
  wire \n_0_state_reg[0]_i_22 ;
  wire \n_0_state_reg[0]_i_31 ;
  wire \n_0_state_reg[0]_i_32 ;
  wire \n_0_state_reg[0]_i_43 ;
  wire \n_0_state_reg[1] ;
  wire \n_1_FrameDurationCurrentClks[13]_INST_0 ;
  wire \n_1_FrameDurationCurrentClks[17]_INST_0 ;
  wire \n_1_FrameDurationCurrentClks[1]_INST_0 ;
  wire \n_1_FrameDurationCurrentClks[5]_INST_0 ;
  wire \n_1_FrameDurationCurrentClks[9]_INST_0 ;
  wire \n_1_FrameId_reg[0]_i_3 ;
  wire \n_1_FrameId_reg[0]_i_4 ;
  wire \n_1_FrameId_reg[0]_i_9 ;
  wire \n_1_FrameId_reg[12]_i_1 ;
  wire \n_1_FrameId_reg[16]_i_1 ;
  wire \n_1_FrameId_reg[20]_i_1 ;
  wire \n_1_FrameId_reg[24]_i_1 ;
  wire \n_1_FrameId_reg[28]_i_1 ;
  wire \n_1_FrameId_reg[4]_i_1 ;
  wire \n_1_FrameId_reg[8]_i_1 ;
  wire \n_1_state_counter_reg[0]_i_2 ;
  wire \n_1_state_counter_reg[12]_i_1 ;
  wire \n_1_state_counter_reg[16]_i_1 ;
  wire \n_1_state_counter_reg[4]_i_1 ;
  wire \n_1_state_counter_reg[8]_i_1 ;
  wire \n_1_state_durations_reg[8][11]_i_1 ;
  wire \n_1_state_durations_reg[8][15]_i_1 ;
  wire \n_1_state_durations_reg[8][19]_i_1 ;
  wire \n_1_state_durations_reg[8][3]_i_1 ;
  wire \n_1_state_durations_reg[8][7]_i_1 ;
  wire \n_1_state_reg[0]_i_1 ;
  wire \n_1_state_reg[0]_i_11 ;
  wire \n_1_state_reg[0]_i_2 ;
  wire \n_1_state_reg[0]_i_20 ;
  wire \n_1_state_reg[0]_i_21 ;
  wire \n_1_state_reg[0]_i_22 ;
  wire \n_1_state_reg[0]_i_31 ;
  wire \n_1_state_reg[0]_i_32 ;
  wire \n_1_state_reg[0]_i_43 ;
  wire \n_2_FrameDurationCurrentClks[13]_INST_0 ;
  wire \n_2_FrameDurationCurrentClks[17]_INST_0 ;
  wire \n_2_FrameDurationCurrentClks[1]_INST_0 ;
  wire \n_2_FrameDurationCurrentClks[5]_INST_0 ;
  wire \n_2_FrameDurationCurrentClks[9]_INST_0 ;
  wire \n_2_FrameId_reg[0]_i_3 ;
  wire \n_2_FrameId_reg[0]_i_4 ;
  wire \n_2_FrameId_reg[0]_i_9 ;
  wire \n_2_FrameId_reg[12]_i_1 ;
  wire \n_2_FrameId_reg[16]_i_1 ;
  wire \n_2_FrameId_reg[20]_i_1 ;
  wire \n_2_FrameId_reg[24]_i_1 ;
  wire \n_2_FrameId_reg[28]_i_1 ;
  wire \n_2_FrameId_reg[4]_i_1 ;
  wire \n_2_FrameId_reg[8]_i_1 ;
  wire \n_2_state_counter_reg[0]_i_2 ;
  wire \n_2_state_counter_reg[12]_i_1 ;
  wire \n_2_state_counter_reg[16]_i_1 ;
  wire \n_2_state_counter_reg[20]_i_1 ;
  wire \n_2_state_counter_reg[4]_i_1 ;
  wire \n_2_state_counter_reg[8]_i_1 ;
  wire \n_2_state_durations_reg[8][11]_i_1 ;
  wire \n_2_state_durations_reg[8][15]_i_1 ;
  wire \n_2_state_durations_reg[8][19]_i_1 ;
  wire \n_2_state_durations_reg[8][22]_i_2 ;
  wire \n_2_state_durations_reg[8][3]_i_1 ;
  wire \n_2_state_durations_reg[8][7]_i_1 ;
  wire \n_2_state_reg[0]_i_1 ;
  wire \n_2_state_reg[0]_i_11 ;
  wire \n_2_state_reg[0]_i_2 ;
  wire \n_2_state_reg[0]_i_21 ;
  wire \n_2_state_reg[0]_i_22 ;
  wire \n_2_state_reg[0]_i_31 ;
  wire \n_2_state_reg[0]_i_32 ;
  wire \n_2_state_reg[0]_i_43 ;
  wire \n_3_FrameDurationCurrentClks[13]_INST_0 ;
  wire \n_3_FrameDurationCurrentClks[17]_INST_0 ;
  wire \n_3_FrameDurationCurrentClks[1]_INST_0 ;
  wire \n_3_FrameDurationCurrentClks[5]_INST_0 ;
  wire \n_3_FrameDurationCurrentClks[9]_INST_0 ;
  wire \n_3_FrameId_reg[0]_i_3 ;
  wire \n_3_FrameId_reg[0]_i_4 ;
  wire \n_3_FrameId_reg[0]_i_9 ;
  wire \n_3_FrameId_reg[12]_i_1 ;
  wire \n_3_FrameId_reg[16]_i_1 ;
  wire \n_3_FrameId_reg[20]_i_1 ;
  wire \n_3_FrameId_reg[24]_i_1 ;
  wire \n_3_FrameId_reg[28]_i_1 ;
  wire \n_3_FrameId_reg[4]_i_1 ;
  wire \n_3_FrameId_reg[8]_i_1 ;
  wire \n_3_state_counter_reg[0]_i_2 ;
  wire \n_3_state_counter_reg[12]_i_1 ;
  wire \n_3_state_counter_reg[16]_i_1 ;
  wire \n_3_state_counter_reg[20]_i_1 ;
  wire \n_3_state_counter_reg[4]_i_1 ;
  wire \n_3_state_counter_reg[8]_i_1 ;
  wire \n_3_state_durations_reg[8][11]_i_1 ;
  wire \n_3_state_durations_reg[8][15]_i_1 ;
  wire \n_3_state_durations_reg[8][19]_i_1 ;
  wire \n_3_state_durations_reg[8][22]_i_2 ;
  wire \n_3_state_durations_reg[8][3]_i_1 ;
  wire \n_3_state_durations_reg[8][7]_i_1 ;
  wire \n_3_state_reg[0]_i_1 ;
  wire \n_3_state_reg[0]_i_11 ;
  wire \n_3_state_reg[0]_i_2 ;
  wire \n_3_state_reg[0]_i_20 ;
  wire \n_3_state_reg[0]_i_21 ;
  wire \n_3_state_reg[0]_i_22 ;
  wire \n_3_state_reg[0]_i_31 ;
  wire \n_3_state_reg[0]_i_32 ;
  wire \n_3_state_reg[0]_i_43 ;
  wire \n_4_FrameId_reg[0]_i_3 ;
  wire \n_4_FrameId_reg[12]_i_1 ;
  wire \n_4_FrameId_reg[16]_i_1 ;
  wire \n_4_FrameId_reg[20]_i_1 ;
  wire \n_4_FrameId_reg[24]_i_1 ;
  wire \n_4_FrameId_reg[28]_i_1 ;
  wire \n_4_FrameId_reg[4]_i_1 ;
  wire \n_4_FrameId_reg[8]_i_1 ;
  wire \n_4_state_counter_reg[0]_i_2 ;
  wire \n_4_state_counter_reg[12]_i_1 ;
  wire \n_4_state_counter_reg[16]_i_1 ;
  wire \n_4_state_counter_reg[4]_i_1 ;
  wire \n_4_state_counter_reg[8]_i_1 ;
  wire \n_4_state_durations_reg[8][11]_i_1 ;
  wire \n_4_state_durations_reg[8][15]_i_1 ;
  wire \n_4_state_durations_reg[8][19]_i_1 ;
  wire \n_4_state_durations_reg[8][3]_i_1 ;
  wire \n_4_state_durations_reg[8][7]_i_1 ;
  wire \n_4_state_reg[0]_i_21 ;
  wire \n_4_state_reg[0]_i_22 ;
  wire \n_4_state_reg[0]_i_31 ;
  wire \n_4_state_reg[0]_i_32 ;
  wire \n_4_state_reg[0]_i_43 ;
  wire \n_5_FrameId_reg[0]_i_3 ;
  wire \n_5_FrameId_reg[12]_i_1 ;
  wire \n_5_FrameId_reg[16]_i_1 ;
  wire \n_5_FrameId_reg[20]_i_1 ;
  wire \n_5_FrameId_reg[24]_i_1 ;
  wire \n_5_FrameId_reg[28]_i_1 ;
  wire \n_5_FrameId_reg[4]_i_1 ;
  wire \n_5_FrameId_reg[8]_i_1 ;
  wire \n_5_state_counter_reg[0]_i_2 ;
  wire \n_5_state_counter_reg[12]_i_1 ;
  wire \n_5_state_counter_reg[16]_i_1 ;
  wire \n_5_state_counter_reg[20]_i_1 ;
  wire \n_5_state_counter_reg[4]_i_1 ;
  wire \n_5_state_counter_reg[8]_i_1 ;
  wire \n_5_state_durations_reg[8][11]_i_1 ;
  wire \n_5_state_durations_reg[8][15]_i_1 ;
  wire \n_5_state_durations_reg[8][19]_i_1 ;
  wire \n_5_state_durations_reg[8][22]_i_2 ;
  wire \n_5_state_durations_reg[8][3]_i_1 ;
  wire \n_5_state_durations_reg[8][7]_i_1 ;
  wire \n_5_state_reg[0]_i_21 ;
  wire \n_5_state_reg[0]_i_22 ;
  wire \n_5_state_reg[0]_i_31 ;
  wire \n_5_state_reg[0]_i_32 ;
  wire \n_5_state_reg[0]_i_43 ;
  wire \n_6_FrameId_reg[0]_i_3 ;
  wire \n_6_FrameId_reg[12]_i_1 ;
  wire \n_6_FrameId_reg[16]_i_1 ;
  wire \n_6_FrameId_reg[20]_i_1 ;
  wire \n_6_FrameId_reg[24]_i_1 ;
  wire \n_6_FrameId_reg[28]_i_1 ;
  wire \n_6_FrameId_reg[4]_i_1 ;
  wire \n_6_FrameId_reg[8]_i_1 ;
  wire \n_6_state_counter_reg[0]_i_2 ;
  wire \n_6_state_counter_reg[12]_i_1 ;
  wire \n_6_state_counter_reg[16]_i_1 ;
  wire \n_6_state_counter_reg[20]_i_1 ;
  wire \n_6_state_counter_reg[4]_i_1 ;
  wire \n_6_state_counter_reg[8]_i_1 ;
  wire \n_6_state_durations_reg[8][11]_i_1 ;
  wire \n_6_state_durations_reg[8][15]_i_1 ;
  wire \n_6_state_durations_reg[8][19]_i_1 ;
  wire \n_6_state_durations_reg[8][22]_i_2 ;
  wire \n_6_state_durations_reg[8][3]_i_1 ;
  wire \n_6_state_durations_reg[8][7]_i_1 ;
  wire \n_6_state_reg[0]_i_20 ;
  wire \n_6_state_reg[0]_i_21 ;
  wire \n_6_state_reg[0]_i_22 ;
  wire \n_6_state_reg[0]_i_31 ;
  wire \n_6_state_reg[0]_i_32 ;
  wire \n_6_state_reg[0]_i_43 ;
  wire \n_7_FrameId_reg[0]_i_3 ;
  wire \n_7_FrameId_reg[12]_i_1 ;
  wire \n_7_FrameId_reg[16]_i_1 ;
  wire \n_7_FrameId_reg[20]_i_1 ;
  wire \n_7_FrameId_reg[24]_i_1 ;
  wire \n_7_FrameId_reg[28]_i_1 ;
  wire \n_7_FrameId_reg[4]_i_1 ;
  wire \n_7_FrameId_reg[8]_i_1 ;
  wire \n_7_state_counter_reg[0]_i_2 ;
  wire \n_7_state_counter_reg[12]_i_1 ;
  wire \n_7_state_counter_reg[16]_i_1 ;
  wire \n_7_state_counter_reg[20]_i_1 ;
  wire \n_7_state_counter_reg[4]_i_1 ;
  wire \n_7_state_counter_reg[8]_i_1 ;
  wire \n_7_state_durations_reg[8][11]_i_1 ;
  wire \n_7_state_durations_reg[8][15]_i_1 ;
  wire \n_7_state_durations_reg[8][19]_i_1 ;
  wire \n_7_state_durations_reg[8][22]_i_2 ;
  wire \n_7_state_durations_reg[8][3]_i_1 ;
  wire \n_7_state_durations_reg[8][7]_i_1 ;
  wire \n_7_state_reg[0]_i_20 ;
  wire \n_7_state_reg[0]_i_21 ;
  wire \n_7_state_reg[0]_i_22 ;
  wire \n_7_state_reg[0]_i_31 ;
  wire \n_7_state_reg[0]_i_32 ;
  wire \n_7_state_reg[0]_i_43 ;
  wire read_data;
  wire reset;
  wire [22:0]state_counter_reg;
  wire [1:0]state_durations;
  wire [3:0]\NLW_FrameDurationCurrentClks[21]_INST_0_CO_UNCONNECTED ;
  wire [3:1]\NLW_FrameDurationCurrentClks[21]_INST_0_O_UNCONNECTED ;
  wire [3:0]\NLW_FrameId_reg[0]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_FrameId_reg[0]_i_9_O_UNCONNECTED ;
  wire [3:3]\NLW_FrameId_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_state_counter_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_state_counter_reg[20]_i_1_O_UNCONNECTED ;
  wire [3:2]\NLW_state_durations_reg[8][22]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_state_durations_reg[8][22]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_state_reg[0]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_state_reg[0]_i_11_O_UNCONNECTED ;
  wire [3:0]\NLW_state_reg[0]_i_2_O_UNCONNECTED ;
  wire [3:1]\NLW_state_reg[0]_i_20_CO_UNCONNECTED ;
  wire [3:2]\NLW_state_reg[0]_i_20_O_UNCONNECTED ;

(* SOFT_HLUTNM = "soft_lutpair10" *) 
   LUT1 #(
    .INIT(2'h1)) 
     FrameDurationChangeEnable_INST_0
       (.I0(read_data),
        .O(FrameDurationChangeEnable));
(* SOFT_HLUTNM = "soft_lutpair9" *) 
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
        .DI({1'b0,\n_0_state_durations_reg[8][2] ,\n_0_FrameDurationCurrentClks[1]_INST_0_i_1 ,1'b0}),
        .O(FrameDurationCurrentClks[4:1]),
        .S({\n_0_FrameDurationCurrentClks[1]_INST_0_i_2 ,\n_0_FrameDurationCurrentClks[1]_INST_0_i_3 ,\n_0_FrameDurationCurrentClks[1]_INST_0_i_4 ,\n_0_FrameDurationCurrentClks[1]_INST_0_i_5 }));
LUT1 #(
    .INIT(2'h1)) 
     \FrameDurationCurrentClks[1]_INST_0_i_1 
       (.I0(\n_0_state_durations_reg[8][2] ),
        .O(\n_0_FrameDurationCurrentClks[1]_INST_0_i_1 ));
LUT1 #(
    .INIT(2'h2)) 
     \FrameDurationCurrentClks[1]_INST_0_i_2 
       (.I0(\n_0_state_durations_reg[8][4] ),
        .O(\n_0_FrameDurationCurrentClks[1]_INST_0_i_2 ));
LUT2 #(
    .INIT(4'h6)) 
     \FrameDurationCurrentClks[1]_INST_0_i_3 
       (.I0(\n_0_state_durations_reg[8][2] ),
        .I1(\n_0_state_durations_reg[8][3] ),
        .O(\n_0_FrameDurationCurrentClks[1]_INST_0_i_3 ));
LUT1 #(
    .INIT(2'h1)) 
     \FrameDurationCurrentClks[1]_INST_0_i_4 
       (.I0(\n_0_state_durations_reg[8][2] ),
        .O(\n_0_FrameDurationCurrentClks[1]_INST_0_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \FrameDurationCurrentClks[1]_INST_0_i_5 
       (.I0(\n_0_state_durations_reg[8][1] ),
        .O(\n_0_FrameDurationCurrentClks[1]_INST_0_i_5 ));
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
LUT5 #(
    .INIT(32'hFFFF0010)) 
     \FrameId[0]_i_1 
       (.I0(\n_0_state_durations[8][22]_i_4 ),
        .I1(read_data),
        .I2(\n_0_FrameId_reg[0]_i_4 ),
        .I3(\n_0_state_durations[8][22]_i_3 ),
        .I4(reset),
        .O(\n_0_FrameId[0]_i_1 ));
LUT2 #(
    .INIT(4'h9)) 
     \FrameId[0]_i_10 
       (.I0(FrameDurationCurrentClks[21]),
        .I1(FrameDurationRequestedClks[21]),
        .O(\n_0_FrameId[0]_i_10 ));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     \FrameId[0]_i_11 
       (.I0(FrameDurationCurrentClks[20]),
        .I1(FrameDurationRequestedClks[20]),
        .I2(FrameDurationCurrentClks[19]),
        .I3(FrameDurationRequestedClks[19]),
        .I4(FrameDurationRequestedClks[18]),
        .I5(FrameDurationCurrentClks[18]),
        .O(\n_0_FrameId[0]_i_11 ));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     \FrameId[0]_i_12 
       (.I0(FrameDurationCurrentClks[17]),
        .I1(FrameDurationRequestedClks[17]),
        .I2(FrameDurationCurrentClks[16]),
        .I3(FrameDurationRequestedClks[16]),
        .I4(FrameDurationRequestedClks[15]),
        .I5(FrameDurationCurrentClks[15]),
        .O(\n_0_FrameId[0]_i_12 ));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     \FrameId[0]_i_13 
       (.I0(FrameDurationCurrentClks[14]),
        .I1(FrameDurationRequestedClks[14]),
        .I2(FrameDurationCurrentClks[13]),
        .I3(FrameDurationRequestedClks[13]),
        .I4(FrameDurationRequestedClks[12]),
        .I5(FrameDurationCurrentClks[12]),
        .O(\n_0_FrameId[0]_i_13 ));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     \FrameId[0]_i_14 
       (.I0(FrameDurationCurrentClks[11]),
        .I1(FrameDurationRequestedClks[11]),
        .I2(FrameDurationCurrentClks[10]),
        .I3(FrameDurationRequestedClks[10]),
        .I4(FrameDurationRequestedClks[9]),
        .I5(FrameDurationCurrentClks[9]),
        .O(\n_0_FrameId[0]_i_14 ));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     \FrameId[0]_i_15 
       (.I0(FrameDurationCurrentClks[8]),
        .I1(FrameDurationRequestedClks[8]),
        .I2(FrameDurationCurrentClks[7]),
        .I3(FrameDurationRequestedClks[7]),
        .I4(FrameDurationRequestedClks[6]),
        .I5(FrameDurationCurrentClks[6]),
        .O(\n_0_FrameId[0]_i_15 ));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     \FrameId[0]_i_16 
       (.I0(FrameDurationCurrentClks[5]),
        .I1(FrameDurationRequestedClks[5]),
        .I2(FrameDurationCurrentClks[4]),
        .I3(FrameDurationRequestedClks[4]),
        .I4(FrameDurationRequestedClks[3]),
        .I5(FrameDurationCurrentClks[3]),
        .O(\n_0_FrameId[0]_i_16 ));
LUT6 #(
    .INIT(64'h6006000000006006)) 
     \FrameId[0]_i_17 
       (.I0(\n_0_state_durations_reg[8][0] ),
        .I1(FrameDurationRequestedClks[0]),
        .I2(FrameDurationCurrentClks[2]),
        .I3(FrameDurationRequestedClks[2]),
        .I4(FrameDurationRequestedClks[1]),
        .I5(FrameDurationCurrentClks[1]),
        .O(\n_0_FrameId[0]_i_17 ));
LUT5 #(
    .INIT(32'h01000000)) 
     \FrameId[0]_i_2 
       (.I0(Q[0]),
        .I1(\n_0_state_reg[1] ),
        .I2(Q[1]),
        .I3(is_next_state_needed),
        .I4(read_data),
        .O(FrameId0));
LUT1 #(
    .INIT(2'h2)) 
     \FrameId[0]_i_5 
       (.I0(O8[3]),
        .O(\n_0_FrameId[0]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \FrameId[0]_i_6 
       (.I0(O8[2]),
        .O(\n_0_FrameId[0]_i_6 ));
LUT1 #(
    .INIT(2'h2)) 
     \FrameId[0]_i_7 
       (.I0(O8[1]),
        .O(\n_0_FrameId[0]_i_7 ));
LUT1 #(
    .INIT(2'h1)) 
     \FrameId[0]_i_8 
       (.I0(O8[0]),
        .O(\n_0_FrameId[0]_i_8 ));
LUT1 #(
    .INIT(2'h2)) 
     \FrameId[12]_i_2 
       (.I0(O8[15]),
        .O(\n_0_FrameId[12]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \FrameId[12]_i_3 
       (.I0(O8[14]),
        .O(\n_0_FrameId[12]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \FrameId[12]_i_4 
       (.I0(O8[13]),
        .O(\n_0_FrameId[12]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \FrameId[12]_i_5 
       (.I0(O8[12]),
        .O(\n_0_FrameId[12]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \FrameId[16]_i_2 
       (.I0(O8[19]),
        .O(\n_0_FrameId[16]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \FrameId[16]_i_3 
       (.I0(O8[18]),
        .O(\n_0_FrameId[16]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \FrameId[16]_i_4 
       (.I0(O8[17]),
        .O(\n_0_FrameId[16]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \FrameId[16]_i_5 
       (.I0(O8[16]),
        .O(\n_0_FrameId[16]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \FrameId[20]_i_2 
       (.I0(O8[23]),
        .O(\n_0_FrameId[20]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \FrameId[20]_i_3 
       (.I0(O8[22]),
        .O(\n_0_FrameId[20]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \FrameId[20]_i_4 
       (.I0(O8[21]),
        .O(\n_0_FrameId[20]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \FrameId[20]_i_5 
       (.I0(O8[20]),
        .O(\n_0_FrameId[20]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \FrameId[24]_i_2 
       (.I0(O8[27]),
        .O(\n_0_FrameId[24]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \FrameId[24]_i_3 
       (.I0(O8[26]),
        .O(\n_0_FrameId[24]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \FrameId[24]_i_4 
       (.I0(O8[25]),
        .O(\n_0_FrameId[24]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \FrameId[24]_i_5 
       (.I0(O8[24]),
        .O(\n_0_FrameId[24]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \FrameId[28]_i_2 
       (.I0(O8[31]),
        .O(\n_0_FrameId[28]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \FrameId[28]_i_3 
       (.I0(O8[30]),
        .O(\n_0_FrameId[28]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \FrameId[28]_i_4 
       (.I0(O8[29]),
        .O(\n_0_FrameId[28]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \FrameId[28]_i_5 
       (.I0(O8[28]),
        .O(\n_0_FrameId[28]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \FrameId[4]_i_2 
       (.I0(O8[7]),
        .O(\n_0_FrameId[4]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \FrameId[4]_i_3 
       (.I0(O8[6]),
        .O(\n_0_FrameId[4]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \FrameId[4]_i_4 
       (.I0(O8[5]),
        .O(\n_0_FrameId[4]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \FrameId[4]_i_5 
       (.I0(O8[4]),
        .O(\n_0_FrameId[4]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \FrameId[8]_i_2 
       (.I0(O8[11]),
        .O(\n_0_FrameId[8]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \FrameId[8]_i_3 
       (.I0(O8[10]),
        .O(\n_0_FrameId[8]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \FrameId[8]_i_4 
       (.I0(O8[9]),
        .O(\n_0_FrameId[8]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \FrameId[8]_i_5 
       (.I0(O8[8]),
        .O(\n_0_FrameId[8]_i_5 ));
FDRE \FrameId_reg[0] 
       (.C(clk),
        .CE(FrameId0),
        .D(\n_7_FrameId_reg[0]_i_3 ),
        .Q(O8[0]),
        .R(\n_0_FrameId[0]_i_1 ));
CARRY4 \FrameId_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\n_0_FrameId_reg[0]_i_3 ,\n_1_FrameId_reg[0]_i_3 ,\n_2_FrameId_reg[0]_i_3 ,\n_3_FrameId_reg[0]_i_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\n_4_FrameId_reg[0]_i_3 ,\n_5_FrameId_reg[0]_i_3 ,\n_6_FrameId_reg[0]_i_3 ,\n_7_FrameId_reg[0]_i_3 }),
        .S({\n_0_FrameId[0]_i_5 ,\n_0_FrameId[0]_i_6 ,\n_0_FrameId[0]_i_7 ,\n_0_FrameId[0]_i_8 }));
CARRY4 \FrameId_reg[0]_i_4 
       (.CI(\n_0_FrameId_reg[0]_i_9 ),
        .CO({\n_0_FrameId_reg[0]_i_4 ,\n_1_FrameId_reg[0]_i_4 ,\n_2_FrameId_reg[0]_i_4 ,\n_3_FrameId_reg[0]_i_4 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(\NLW_FrameId_reg[0]_i_4_O_UNCONNECTED [3:0]),
        .S({\n_0_FrameId[0]_i_10 ,\n_0_FrameId[0]_i_11 ,\n_0_FrameId[0]_i_12 ,\n_0_FrameId[0]_i_13 }));
CARRY4 \FrameId_reg[0]_i_9 
       (.CI(1'b0),
        .CO({\n_0_FrameId_reg[0]_i_9 ,\n_1_FrameId_reg[0]_i_9 ,\n_2_FrameId_reg[0]_i_9 ,\n_3_FrameId_reg[0]_i_9 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(\NLW_FrameId_reg[0]_i_9_O_UNCONNECTED [3:0]),
        .S({\n_0_FrameId[0]_i_14 ,\n_0_FrameId[0]_i_15 ,\n_0_FrameId[0]_i_16 ,\n_0_FrameId[0]_i_17 }));
FDRE \FrameId_reg[10] 
       (.C(clk),
        .CE(FrameId0),
        .D(\n_5_FrameId_reg[8]_i_1 ),
        .Q(O8[10]),
        .R(\n_0_FrameId[0]_i_1 ));
FDRE \FrameId_reg[11] 
       (.C(clk),
        .CE(FrameId0),
        .D(\n_4_FrameId_reg[8]_i_1 ),
        .Q(O8[11]),
        .R(\n_0_FrameId[0]_i_1 ));
FDRE \FrameId_reg[12] 
       (.C(clk),
        .CE(FrameId0),
        .D(\n_7_FrameId_reg[12]_i_1 ),
        .Q(O8[12]),
        .R(\n_0_FrameId[0]_i_1 ));
CARRY4 \FrameId_reg[12]_i_1 
       (.CI(\n_0_FrameId_reg[8]_i_1 ),
        .CO({\n_0_FrameId_reg[12]_i_1 ,\n_1_FrameId_reg[12]_i_1 ,\n_2_FrameId_reg[12]_i_1 ,\n_3_FrameId_reg[12]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_FrameId_reg[12]_i_1 ,\n_5_FrameId_reg[12]_i_1 ,\n_6_FrameId_reg[12]_i_1 ,\n_7_FrameId_reg[12]_i_1 }),
        .S({\n_0_FrameId[12]_i_2 ,\n_0_FrameId[12]_i_3 ,\n_0_FrameId[12]_i_4 ,\n_0_FrameId[12]_i_5 }));
FDRE \FrameId_reg[13] 
       (.C(clk),
        .CE(FrameId0),
        .D(\n_6_FrameId_reg[12]_i_1 ),
        .Q(O8[13]),
        .R(\n_0_FrameId[0]_i_1 ));
FDRE \FrameId_reg[14] 
       (.C(clk),
        .CE(FrameId0),
        .D(\n_5_FrameId_reg[12]_i_1 ),
        .Q(O8[14]),
        .R(\n_0_FrameId[0]_i_1 ));
FDRE \FrameId_reg[15] 
       (.C(clk),
        .CE(FrameId0),
        .D(\n_4_FrameId_reg[12]_i_1 ),
        .Q(O8[15]),
        .R(\n_0_FrameId[0]_i_1 ));
FDRE \FrameId_reg[16] 
       (.C(clk),
        .CE(FrameId0),
        .D(\n_7_FrameId_reg[16]_i_1 ),
        .Q(O8[16]),
        .R(\n_0_FrameId[0]_i_1 ));
CARRY4 \FrameId_reg[16]_i_1 
       (.CI(\n_0_FrameId_reg[12]_i_1 ),
        .CO({\n_0_FrameId_reg[16]_i_1 ,\n_1_FrameId_reg[16]_i_1 ,\n_2_FrameId_reg[16]_i_1 ,\n_3_FrameId_reg[16]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_FrameId_reg[16]_i_1 ,\n_5_FrameId_reg[16]_i_1 ,\n_6_FrameId_reg[16]_i_1 ,\n_7_FrameId_reg[16]_i_1 }),
        .S({\n_0_FrameId[16]_i_2 ,\n_0_FrameId[16]_i_3 ,\n_0_FrameId[16]_i_4 ,\n_0_FrameId[16]_i_5 }));
FDRE \FrameId_reg[17] 
       (.C(clk),
        .CE(FrameId0),
        .D(\n_6_FrameId_reg[16]_i_1 ),
        .Q(O8[17]),
        .R(\n_0_FrameId[0]_i_1 ));
FDRE \FrameId_reg[18] 
       (.C(clk),
        .CE(FrameId0),
        .D(\n_5_FrameId_reg[16]_i_1 ),
        .Q(O8[18]),
        .R(\n_0_FrameId[0]_i_1 ));
FDRE \FrameId_reg[19] 
       (.C(clk),
        .CE(FrameId0),
        .D(\n_4_FrameId_reg[16]_i_1 ),
        .Q(O8[19]),
        .R(\n_0_FrameId[0]_i_1 ));
FDRE \FrameId_reg[1] 
       (.C(clk),
        .CE(FrameId0),
        .D(\n_6_FrameId_reg[0]_i_3 ),
        .Q(O8[1]),
        .R(\n_0_FrameId[0]_i_1 ));
FDRE \FrameId_reg[20] 
       (.C(clk),
        .CE(FrameId0),
        .D(\n_7_FrameId_reg[20]_i_1 ),
        .Q(O8[20]),
        .R(\n_0_FrameId[0]_i_1 ));
CARRY4 \FrameId_reg[20]_i_1 
       (.CI(\n_0_FrameId_reg[16]_i_1 ),
        .CO({\n_0_FrameId_reg[20]_i_1 ,\n_1_FrameId_reg[20]_i_1 ,\n_2_FrameId_reg[20]_i_1 ,\n_3_FrameId_reg[20]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_FrameId_reg[20]_i_1 ,\n_5_FrameId_reg[20]_i_1 ,\n_6_FrameId_reg[20]_i_1 ,\n_7_FrameId_reg[20]_i_1 }),
        .S({\n_0_FrameId[20]_i_2 ,\n_0_FrameId[20]_i_3 ,\n_0_FrameId[20]_i_4 ,\n_0_FrameId[20]_i_5 }));
FDRE \FrameId_reg[21] 
       (.C(clk),
        .CE(FrameId0),
        .D(\n_6_FrameId_reg[20]_i_1 ),
        .Q(O8[21]),
        .R(\n_0_FrameId[0]_i_1 ));
FDRE \FrameId_reg[22] 
       (.C(clk),
        .CE(FrameId0),
        .D(\n_5_FrameId_reg[20]_i_1 ),
        .Q(O8[22]),
        .R(\n_0_FrameId[0]_i_1 ));
FDRE \FrameId_reg[23] 
       (.C(clk),
        .CE(FrameId0),
        .D(\n_4_FrameId_reg[20]_i_1 ),
        .Q(O8[23]),
        .R(\n_0_FrameId[0]_i_1 ));
FDRE \FrameId_reg[24] 
       (.C(clk),
        .CE(FrameId0),
        .D(\n_7_FrameId_reg[24]_i_1 ),
        .Q(O8[24]),
        .R(\n_0_FrameId[0]_i_1 ));
CARRY4 \FrameId_reg[24]_i_1 
       (.CI(\n_0_FrameId_reg[20]_i_1 ),
        .CO({\n_0_FrameId_reg[24]_i_1 ,\n_1_FrameId_reg[24]_i_1 ,\n_2_FrameId_reg[24]_i_1 ,\n_3_FrameId_reg[24]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_FrameId_reg[24]_i_1 ,\n_5_FrameId_reg[24]_i_1 ,\n_6_FrameId_reg[24]_i_1 ,\n_7_FrameId_reg[24]_i_1 }),
        .S({\n_0_FrameId[24]_i_2 ,\n_0_FrameId[24]_i_3 ,\n_0_FrameId[24]_i_4 ,\n_0_FrameId[24]_i_5 }));
FDRE \FrameId_reg[25] 
       (.C(clk),
        .CE(FrameId0),
        .D(\n_6_FrameId_reg[24]_i_1 ),
        .Q(O8[25]),
        .R(\n_0_FrameId[0]_i_1 ));
FDRE \FrameId_reg[26] 
       (.C(clk),
        .CE(FrameId0),
        .D(\n_5_FrameId_reg[24]_i_1 ),
        .Q(O8[26]),
        .R(\n_0_FrameId[0]_i_1 ));
FDRE \FrameId_reg[27] 
       (.C(clk),
        .CE(FrameId0),
        .D(\n_4_FrameId_reg[24]_i_1 ),
        .Q(O8[27]),
        .R(\n_0_FrameId[0]_i_1 ));
FDRE \FrameId_reg[28] 
       (.C(clk),
        .CE(FrameId0),
        .D(\n_7_FrameId_reg[28]_i_1 ),
        .Q(O8[28]),
        .R(\n_0_FrameId[0]_i_1 ));
CARRY4 \FrameId_reg[28]_i_1 
       (.CI(\n_0_FrameId_reg[24]_i_1 ),
        .CO({\NLW_FrameId_reg[28]_i_1_CO_UNCONNECTED [3],\n_1_FrameId_reg[28]_i_1 ,\n_2_FrameId_reg[28]_i_1 ,\n_3_FrameId_reg[28]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_FrameId_reg[28]_i_1 ,\n_5_FrameId_reg[28]_i_1 ,\n_6_FrameId_reg[28]_i_1 ,\n_7_FrameId_reg[28]_i_1 }),
        .S({\n_0_FrameId[28]_i_2 ,\n_0_FrameId[28]_i_3 ,\n_0_FrameId[28]_i_4 ,\n_0_FrameId[28]_i_5 }));
FDRE \FrameId_reg[29] 
       (.C(clk),
        .CE(FrameId0),
        .D(\n_6_FrameId_reg[28]_i_1 ),
        .Q(O8[29]),
        .R(\n_0_FrameId[0]_i_1 ));
FDRE \FrameId_reg[2] 
       (.C(clk),
        .CE(FrameId0),
        .D(\n_5_FrameId_reg[0]_i_3 ),
        .Q(O8[2]),
        .R(\n_0_FrameId[0]_i_1 ));
FDRE \FrameId_reg[30] 
       (.C(clk),
        .CE(FrameId0),
        .D(\n_5_FrameId_reg[28]_i_1 ),
        .Q(O8[30]),
        .R(\n_0_FrameId[0]_i_1 ));
FDRE \FrameId_reg[31] 
       (.C(clk),
        .CE(FrameId0),
        .D(\n_4_FrameId_reg[28]_i_1 ),
        .Q(O8[31]),
        .R(\n_0_FrameId[0]_i_1 ));
FDRE \FrameId_reg[3] 
       (.C(clk),
        .CE(FrameId0),
        .D(\n_4_FrameId_reg[0]_i_3 ),
        .Q(O8[3]),
        .R(\n_0_FrameId[0]_i_1 ));
FDRE \FrameId_reg[4] 
       (.C(clk),
        .CE(FrameId0),
        .D(\n_7_FrameId_reg[4]_i_1 ),
        .Q(O8[4]),
        .R(\n_0_FrameId[0]_i_1 ));
CARRY4 \FrameId_reg[4]_i_1 
       (.CI(\n_0_FrameId_reg[0]_i_3 ),
        .CO({\n_0_FrameId_reg[4]_i_1 ,\n_1_FrameId_reg[4]_i_1 ,\n_2_FrameId_reg[4]_i_1 ,\n_3_FrameId_reg[4]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_FrameId_reg[4]_i_1 ,\n_5_FrameId_reg[4]_i_1 ,\n_6_FrameId_reg[4]_i_1 ,\n_7_FrameId_reg[4]_i_1 }),
        .S({\n_0_FrameId[4]_i_2 ,\n_0_FrameId[4]_i_3 ,\n_0_FrameId[4]_i_4 ,\n_0_FrameId[4]_i_5 }));
FDRE \FrameId_reg[5] 
       (.C(clk),
        .CE(FrameId0),
        .D(\n_6_FrameId_reg[4]_i_1 ),
        .Q(O8[5]),
        .R(\n_0_FrameId[0]_i_1 ));
FDRE \FrameId_reg[6] 
       (.C(clk),
        .CE(FrameId0),
        .D(\n_5_FrameId_reg[4]_i_1 ),
        .Q(O8[6]),
        .R(\n_0_FrameId[0]_i_1 ));
FDRE \FrameId_reg[7] 
       (.C(clk),
        .CE(FrameId0),
        .D(\n_4_FrameId_reg[4]_i_1 ),
        .Q(O8[7]),
        .R(\n_0_FrameId[0]_i_1 ));
FDRE \FrameId_reg[8] 
       (.C(clk),
        .CE(FrameId0),
        .D(\n_7_FrameId_reg[8]_i_1 ),
        .Q(O8[8]),
        .R(\n_0_FrameId[0]_i_1 ));
CARRY4 \FrameId_reg[8]_i_1 
       (.CI(\n_0_FrameId_reg[4]_i_1 ),
        .CO({\n_0_FrameId_reg[8]_i_1 ,\n_1_FrameId_reg[8]_i_1 ,\n_2_FrameId_reg[8]_i_1 ,\n_3_FrameId_reg[8]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_FrameId_reg[8]_i_1 ,\n_5_FrameId_reg[8]_i_1 ,\n_6_FrameId_reg[8]_i_1 ,\n_7_FrameId_reg[8]_i_1 }),
        .S({\n_0_FrameId[8]_i_2 ,\n_0_FrameId[8]_i_3 ,\n_0_FrameId[8]_i_4 ,\n_0_FrameId[8]_i_5 }));
FDRE \FrameId_reg[9] 
       (.C(clk),
        .CE(FrameId0),
        .D(\n_6_FrameId_reg[8]_i_1 ),
        .Q(O8[9]),
        .R(\n_0_FrameId[0]_i_1 ));
spad_manager_0_read_process_manager read_process_manager
       (.ColSelect(ColSelect),
        .E(E),
        .O1(O1),
        .O2(O2),
        .Q(read_data),
        .ReadEnable(ReadEnable),
        .RowGroup(RowGroup),
        .RowSelect(RowSelect),
        .clk(clk),
        .reset(reset));
LUT5 #(
    .INIT(32'h82000587)) 
     \state[0]_i_10 
       (.I0(read_data),
        .I1(\n_0_state_durations_reg[8][17] ),
        .I2(\n_7_state_reg[0]_i_21 ),
        .I3(\n_0_state_durations_reg[8][16] ),
        .I4(\n_4_state_reg[0]_i_22 ),
        .O(\n_0_state[0]_i_10 ));
LUT5 #(
    .INIT(32'h40F4FCFC)) 
     \state[0]_i_12 
       (.I0(\n_0_state_durations_reg[8][14] ),
        .I1(\n_6_state_reg[0]_i_22 ),
        .I2(\n_5_state_reg[0]_i_22 ),
        .I3(\n_0_state_durations_reg[8][15] ),
        .I4(read_data),
        .O(\n_0_state[0]_i_12 ));
LUT5 #(
    .INIT(32'h40F4FCFC)) 
     \state[0]_i_13 
       (.I0(\n_0_state_durations_reg[8][12] ),
        .I1(\n_4_state_reg[0]_i_31 ),
        .I2(\n_7_state_reg[0]_i_22 ),
        .I3(\n_0_state_durations_reg[8][13] ),
        .I4(read_data),
        .O(\n_0_state[0]_i_13 ));
LUT5 #(
    .INIT(32'h40F4FCFC)) 
     \state[0]_i_14 
       (.I0(\n_0_state_durations_reg[8][10] ),
        .I1(\n_6_state_reg[0]_i_31 ),
        .I2(\n_5_state_reg[0]_i_31 ),
        .I3(\n_0_state_durations_reg[8][11] ),
        .I4(read_data),
        .O(\n_0_state[0]_i_14 ));
LUT5 #(
    .INIT(32'h40F4FCFC)) 
     \state[0]_i_15 
       (.I0(\n_0_state_durations_reg[8][8] ),
        .I1(\n_4_state_reg[0]_i_32 ),
        .I2(\n_7_state_reg[0]_i_31 ),
        .I3(\n_0_state_durations_reg[8][9] ),
        .I4(read_data),
        .O(\n_0_state[0]_i_15 ));
LUT5 #(
    .INIT(32'h82000587)) 
     \state[0]_i_16 
       (.I0(read_data),
        .I1(\n_0_state_durations_reg[8][15] ),
        .I2(\n_5_state_reg[0]_i_22 ),
        .I3(\n_0_state_durations_reg[8][14] ),
        .I4(\n_6_state_reg[0]_i_22 ),
        .O(\n_0_state[0]_i_16 ));
LUT5 #(
    .INIT(32'h82000587)) 
     \state[0]_i_17 
       (.I0(read_data),
        .I1(\n_0_state_durations_reg[8][13] ),
        .I2(\n_7_state_reg[0]_i_22 ),
        .I3(\n_0_state_durations_reg[8][12] ),
        .I4(\n_4_state_reg[0]_i_31 ),
        .O(\n_0_state[0]_i_17 ));
LUT5 #(
    .INIT(32'h82000587)) 
     \state[0]_i_18 
       (.I0(read_data),
        .I1(\n_0_state_durations_reg[8][11] ),
        .I2(\n_5_state_reg[0]_i_31 ),
        .I3(\n_0_state_durations_reg[8][10] ),
        .I4(\n_6_state_reg[0]_i_31 ),
        .O(\n_0_state[0]_i_18 ));
LUT5 #(
    .INIT(32'h82000587)) 
     \state[0]_i_19 
       (.I0(read_data),
        .I1(\n_0_state_durations_reg[8][9] ),
        .I2(\n_7_state_reg[0]_i_31 ),
        .I3(\n_0_state_durations_reg[8][8] ),
        .I4(\n_4_state_reg[0]_i_32 ),
        .O(\n_0_state[0]_i_19 ));
LUT5 #(
    .INIT(32'h40F4FCFC)) 
     \state[0]_i_23 
       (.I0(\n_0_state_durations_reg[8][6] ),
        .I1(\n_6_state_reg[0]_i_32 ),
        .I2(\n_5_state_reg[0]_i_32 ),
        .I3(\n_0_state_durations_reg[8][7] ),
        .I4(read_data),
        .O(\n_0_state[0]_i_23 ));
LUT5 #(
    .INIT(32'h40F4FCFC)) 
     \state[0]_i_24 
       (.I0(\n_0_state_durations_reg[8][4] ),
        .I1(\n_4_state_reg[0]_i_43 ),
        .I2(\n_7_state_reg[0]_i_32 ),
        .I3(\n_0_state_durations_reg[8][5] ),
        .I4(read_data),
        .O(\n_0_state[0]_i_24 ));
LUT5 #(
    .INIT(32'h40F4FCFC)) 
     \state[0]_i_25 
       (.I0(\n_0_state_durations_reg[8][2] ),
        .I1(\n_6_state_reg[0]_i_43 ),
        .I2(\n_5_state_reg[0]_i_43 ),
        .I3(\n_0_state_durations_reg[8][3] ),
        .I4(read_data),
        .O(\n_0_state[0]_i_25 ));
LUT4 #(
    .INIT(16'h222B)) 
     \state[0]_i_26 
       (.I0(\n_7_state_reg[0]_i_43 ),
        .I1(state_durations[1]),
        .I2(state_durations[0]),
        .I3(state_counter_reg[0]),
        .O(\n_0_state[0]_i_26 ));
LUT5 #(
    .INIT(32'h82000587)) 
     \state[0]_i_27 
       (.I0(read_data),
        .I1(\n_0_state_durations_reg[8][7] ),
        .I2(\n_5_state_reg[0]_i_32 ),
        .I3(\n_0_state_durations_reg[8][6] ),
        .I4(\n_6_state_reg[0]_i_32 ),
        .O(\n_0_state[0]_i_27 ));
LUT5 #(
    .INIT(32'h82000587)) 
     \state[0]_i_28 
       (.I0(read_data),
        .I1(\n_0_state_durations_reg[8][5] ),
        .I2(\n_7_state_reg[0]_i_32 ),
        .I3(\n_0_state_durations_reg[8][4] ),
        .I4(\n_4_state_reg[0]_i_43 ),
        .O(\n_0_state[0]_i_28 ));
LUT5 #(
    .INIT(32'h82000587)) 
     \state[0]_i_29 
       (.I0(read_data),
        .I1(\n_0_state_durations_reg[8][3] ),
        .I2(\n_5_state_reg[0]_i_43 ),
        .I3(\n_0_state_durations_reg[8][2] ),
        .I4(\n_6_state_reg[0]_i_43 ),
        .O(\n_0_state[0]_i_29 ));
LUT4 #(
    .INIT(16'hFF2A)) 
     \state[0]_i_3 
       (.I0(\n_6_state_reg[0]_i_20 ),
        .I1(\n_0_state_durations_reg[8][22] ),
        .I2(read_data),
        .I3(\n_1_state_reg[0]_i_20 ),
        .O(\n_0_state[0]_i_3 ));
LUT3 #(
    .INIT(8'h84)) 
     \state[0]_i_30 
       (.I0(state_durations[1]),
        .I1(\n_0_state[0]_i_46 ),
        .I2(\n_7_state_reg[0]_i_43 ),
        .O(\n_0_state[0]_i_30 ));
LUT1 #(
    .INIT(2'h2)) 
     \state[0]_i_33 
       (.I0(state_counter_reg[22]),
        .O(\n_0_state[0]_i_33 ));
LUT1 #(
    .INIT(2'h2)) 
     \state[0]_i_34 
       (.I0(state_counter_reg[21]),
        .O(\n_0_state[0]_i_34 ));
LUT1 #(
    .INIT(2'h2)) 
     \state[0]_i_35 
       (.I0(state_counter_reg[20]),
        .O(\n_0_state[0]_i_35 ));
LUT1 #(
    .INIT(2'h2)) 
     \state[0]_i_36 
       (.I0(state_counter_reg[19]),
        .O(\n_0_state[0]_i_36 ));
LUT1 #(
    .INIT(2'h2)) 
     \state[0]_i_37 
       (.I0(state_counter_reg[18]),
        .O(\n_0_state[0]_i_37 ));
LUT1 #(
    .INIT(2'h2)) 
     \state[0]_i_38 
       (.I0(state_counter_reg[17]),
        .O(\n_0_state[0]_i_38 ));
LUT1 #(
    .INIT(2'h2)) 
     \state[0]_i_39 
       (.I0(state_counter_reg[16]),
        .O(\n_0_state[0]_i_39 ));
LUT5 #(
    .INIT(32'h40F4FCFC)) 
     \state[0]_i_4 
       (.I0(\n_0_state_durations_reg[8][20] ),
        .I1(\n_4_state_reg[0]_i_21 ),
        .I2(\n_7_state_reg[0]_i_20 ),
        .I3(\n_0_state_durations_reg[8][21] ),
        .I4(read_data),
        .O(\n_0_state[0]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \state[0]_i_40 
       (.I0(state_counter_reg[15]),
        .O(\n_0_state[0]_i_40 ));
LUT1 #(
    .INIT(2'h2)) 
     \state[0]_i_41 
       (.I0(state_counter_reg[14]),
        .O(\n_0_state[0]_i_41 ));
LUT1 #(
    .INIT(2'h2)) 
     \state[0]_i_42 
       (.I0(state_counter_reg[13]),
        .O(\n_0_state[0]_i_42 ));
(* SOFT_HLUTNM = "soft_lutpair10" *) 
   LUT5 #(
    .INIT(32'hAA00AA3F)) 
     \state[0]_i_44 
       (.I0(\n_0_state_durations_reg[8][1] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(read_data),
        .I4(\n_0_state_reg[1] ),
        .O(state_durations[1]));
(* SOFT_HLUTNM = "soft_lutpair9" *) 
   LUT5 #(
    .INIT(32'hAA00AA0C)) 
     \state[0]_i_45 
       (.I0(\n_0_state_durations_reg[8][0] ),
        .I1(\n_0_state_reg[1] ),
        .I2(Q[1]),
        .I3(read_data),
        .I4(Q[0]),
        .O(state_durations[0]));
LUT6 #(
    .INIT(64'h3233FEFFCDCC0100)) 
     \state[0]_i_46 
       (.I0(Q[0]),
        .I1(read_data),
        .I2(Q[1]),
        .I3(\n_0_state_reg[1] ),
        .I4(\n_0_state_durations_reg[8][0] ),
        .I5(state_counter_reg[0]),
        .O(\n_0_state[0]_i_46 ));
LUT1 #(
    .INIT(2'h2)) 
     \state[0]_i_47 
       (.I0(state_counter_reg[12]),
        .O(\n_0_state[0]_i_47 ));
LUT1 #(
    .INIT(2'h2)) 
     \state[0]_i_48 
       (.I0(state_counter_reg[11]),
        .O(\n_0_state[0]_i_48 ));
LUT1 #(
    .INIT(2'h2)) 
     \state[0]_i_49 
       (.I0(state_counter_reg[10]),
        .O(\n_0_state[0]_i_49 ));
LUT5 #(
    .INIT(32'h40F4FCFC)) 
     \state[0]_i_5 
       (.I0(\n_0_state_durations_reg[8][18] ),
        .I1(\n_6_state_reg[0]_i_21 ),
        .I2(\n_5_state_reg[0]_i_21 ),
        .I3(\n_0_state_durations_reg[8][19] ),
        .I4(read_data),
        .O(\n_0_state[0]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \state[0]_i_50 
       (.I0(state_counter_reg[9]),
        .O(\n_0_state[0]_i_50 ));
LUT1 #(
    .INIT(2'h2)) 
     \state[0]_i_51 
       (.I0(state_counter_reg[8]),
        .O(\n_0_state[0]_i_51 ));
LUT1 #(
    .INIT(2'h2)) 
     \state[0]_i_52 
       (.I0(state_counter_reg[7]),
        .O(\n_0_state[0]_i_52 ));
LUT1 #(
    .INIT(2'h2)) 
     \state[0]_i_53 
       (.I0(state_counter_reg[6]),
        .O(\n_0_state[0]_i_53 ));
LUT1 #(
    .INIT(2'h2)) 
     \state[0]_i_54 
       (.I0(state_counter_reg[5]),
        .O(\n_0_state[0]_i_54 ));
LUT1 #(
    .INIT(2'h2)) 
     \state[0]_i_55 
       (.I0(state_counter_reg[4]),
        .O(\n_0_state[0]_i_55 ));
LUT1 #(
    .INIT(2'h2)) 
     \state[0]_i_56 
       (.I0(state_counter_reg[3]),
        .O(\n_0_state[0]_i_56 ));
LUT1 #(
    .INIT(2'h2)) 
     \state[0]_i_57 
       (.I0(state_counter_reg[2]),
        .O(\n_0_state[0]_i_57 ));
LUT1 #(
    .INIT(2'h2)) 
     \state[0]_i_58 
       (.I0(state_counter_reg[1]),
        .O(\n_0_state[0]_i_58 ));
LUT5 #(
    .INIT(32'h40F4FCFC)) 
     \state[0]_i_6 
       (.I0(\n_0_state_durations_reg[8][16] ),
        .I1(\n_4_state_reg[0]_i_22 ),
        .I2(\n_7_state_reg[0]_i_21 ),
        .I3(\n_0_state_durations_reg[8][17] ),
        .I4(read_data),
        .O(\n_0_state[0]_i_6 ));
LUT4 #(
    .INIT(16'h0087)) 
     \state[0]_i_7 
       (.I0(\n_0_state_durations_reg[8][22] ),
        .I1(read_data),
        .I2(\n_6_state_reg[0]_i_20 ),
        .I3(\n_1_state_reg[0]_i_20 ),
        .O(\n_0_state[0]_i_7 ));
LUT5 #(
    .INIT(32'h82000587)) 
     \state[0]_i_8 
       (.I0(read_data),
        .I1(\n_0_state_durations_reg[8][21] ),
        .I2(\n_7_state_reg[0]_i_20 ),
        .I3(\n_0_state_durations_reg[8][20] ),
        .I4(\n_4_state_reg[0]_i_21 ),
        .O(\n_0_state[0]_i_8 ));
LUT5 #(
    .INIT(32'h82000587)) 
     \state[0]_i_9 
       (.I0(read_data),
        .I1(\n_0_state_durations_reg[8][19] ),
        .I2(\n_5_state_reg[0]_i_21 ),
        .I3(\n_0_state_durations_reg[8][18] ),
        .I4(\n_6_state_reg[0]_i_21 ),
        .O(\n_0_state[0]_i_9 ));
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
LUT1 #(
    .INIT(2'h1)) 
     \state_durations[8][11]_i_2 
       (.I0(FrameDurationRequestedClks[11]),
        .O(\n_0_state_durations[8][11]_i_2 ));
LUT1 #(
    .INIT(2'h1)) 
     \state_durations[8][11]_i_3 
       (.I0(FrameDurationRequestedClks[10]),
        .O(\n_0_state_durations[8][11]_i_3 ));
LUT1 #(
    .INIT(2'h1)) 
     \state_durations[8][11]_i_4 
       (.I0(FrameDurationRequestedClks[9]),
        .O(\n_0_state_durations[8][11]_i_4 ));
LUT1 #(
    .INIT(2'h1)) 
     \state_durations[8][11]_i_5 
       (.I0(FrameDurationRequestedClks[8]),
        .O(\n_0_state_durations[8][11]_i_5 ));
LUT1 #(
    .INIT(2'h1)) 
     \state_durations[8][15]_i_2 
       (.I0(FrameDurationRequestedClks[15]),
        .O(\n_0_state_durations[8][15]_i_2 ));
LUT1 #(
    .INIT(2'h1)) 
     \state_durations[8][15]_i_3 
       (.I0(FrameDurationRequestedClks[14]),
        .O(\n_0_state_durations[8][15]_i_3 ));
LUT1 #(
    .INIT(2'h1)) 
     \state_durations[8][15]_i_4 
       (.I0(FrameDurationRequestedClks[13]),
        .O(\n_0_state_durations[8][15]_i_4 ));
LUT1 #(
    .INIT(2'h1)) 
     \state_durations[8][15]_i_5 
       (.I0(FrameDurationRequestedClks[12]),
        .O(\n_0_state_durations[8][15]_i_5 ));
LUT1 #(
    .INIT(2'h1)) 
     \state_durations[8][19]_i_2 
       (.I0(FrameDurationRequestedClks[19]),
        .O(\n_0_state_durations[8][19]_i_2 ));
LUT1 #(
    .INIT(2'h1)) 
     \state_durations[8][19]_i_3 
       (.I0(FrameDurationRequestedClks[18]),
        .O(\n_0_state_durations[8][19]_i_3 ));
LUT1 #(
    .INIT(2'h1)) 
     \state_durations[8][19]_i_4 
       (.I0(FrameDurationRequestedClks[17]),
        .O(\n_0_state_durations[8][19]_i_4 ));
LUT1 #(
    .INIT(2'h1)) 
     \state_durations[8][19]_i_5 
       (.I0(FrameDurationRequestedClks[16]),
        .O(\n_0_state_durations[8][19]_i_5 ));
LUT3 #(
    .INIT(8'h01)) 
     \state_durations[8][22]_i_1 
       (.I0(read_data),
        .I1(\n_0_state_durations[8][22]_i_3 ),
        .I2(\n_0_state_durations[8][22]_i_4 ),
        .O(FrameId11_out));
LUT5 #(
    .INIT(32'hFFFFFFFE)) 
     \state_durations[8][22]_i_10 
       (.I0(FrameDurationRequestedClks[20]),
        .I1(FrameDurationRequestedClks[21]),
        .I2(FrameDurationRequestedClks[19]),
        .I3(FrameDurationRequestedClks[13]),
        .I4(FrameDurationRequestedClks[14]),
        .O(\n_0_state_durations[8][22]_i_10 ));
LUT5 #(
    .INIT(32'h00001F00)) 
     \state_durations[8][22]_i_3 
       (.I0(FrameDurationRequestedClks[0]),
        .I1(FrameDurationRequestedClks[1]),
        .I2(FrameDurationRequestedClks[2]),
        .I3(\n_0_state_durations[8][22]_i_7 ),
        .I4(\n_0_state_durations[8][22]_i_8 ),
        .O(\n_0_state_durations[8][22]_i_3 ));
LUT5 #(
    .INIT(32'h000100FF)) 
     \state_durations[8][22]_i_4 
       (.I0(FrameDurationRequestedClks[11]),
        .I1(FrameDurationRequestedClks[10]),
        .I2(FrameDurationRequestedClks[9]),
        .I3(\n_0_state_durations[8][22]_i_8 ),
        .I4(FrameDurationRequestedClks[12]),
        .O(\n_0_state_durations[8][22]_i_4 ));
LUT1 #(
    .INIT(2'h1)) 
     \state_durations[8][22]_i_5 
       (.I0(FrameDurationRequestedClks[21]),
        .O(\n_0_state_durations[8][22]_i_5 ));
LUT1 #(
    .INIT(2'h1)) 
     \state_durations[8][22]_i_6 
       (.I0(FrameDurationRequestedClks[20]),
        .O(\n_0_state_durations[8][22]_i_6 ));
LUT5 #(
    .INIT(32'h00010000)) 
     \state_durations[8][22]_i_7 
       (.I0(FrameDurationRequestedClks[7]),
        .I1(FrameDurationRequestedClks[8]),
        .I2(FrameDurationRequestedClks[10]),
        .I3(FrameDurationRequestedClks[11]),
        .I4(\n_0_state_durations[8][22]_i_9 ),
        .O(\n_0_state_durations[8][22]_i_7 ));
LUT5 #(
    .INIT(32'hFFFFFFFE)) 
     \state_durations[8][22]_i_8 
       (.I0(\n_0_state_durations[8][22]_i_10 ),
        .I1(FrameDurationRequestedClks[18]),
        .I2(FrameDurationRequestedClks[17]),
        .I3(FrameDurationRequestedClks[16]),
        .I4(FrameDurationRequestedClks[15]),
        .O(\n_0_state_durations[8][22]_i_8 ));
LUT4 #(
    .INIT(16'h0001)) 
     \state_durations[8][22]_i_9 
       (.I0(FrameDurationRequestedClks[4]),
        .I1(FrameDurationRequestedClks[3]),
        .I2(FrameDurationRequestedClks[6]),
        .I3(FrameDurationRequestedClks[5]),
        .O(\n_0_state_durations[8][22]_i_9 ));
LUT1 #(
    .INIT(2'h1)) 
     \state_durations[8][3]_i_2 
       (.I0(FrameDurationRequestedClks[0]),
        .O(\n_0_state_durations[8][3]_i_2 ));
LUT2 #(
    .INIT(4'h6)) 
     \state_durations[8][3]_i_3 
       (.I0(FrameDurationRequestedClks[2]),
        .I1(FrameDurationRequestedClks[3]),
        .O(\n_0_state_durations[8][3]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \state_durations[8][3]_i_4 
       (.I0(FrameDurationRequestedClks[2]),
        .O(\n_0_state_durations[8][3]_i_4 ));
LUT2 #(
    .INIT(4'h6)) 
     \state_durations[8][3]_i_5 
       (.I0(FrameDurationRequestedClks[0]),
        .I1(FrameDurationRequestedClks[1]),
        .O(\n_0_state_durations[8][3]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \state_durations[8][3]_i_6 
       (.I0(FrameDurationRequestedClks[0]),
        .O(\n_0_state_durations[8][3]_i_6 ));
LUT1 #(
    .INIT(2'h1)) 
     \state_durations[8][7]_i_2 
       (.I0(FrameDurationRequestedClks[7]),
        .O(\n_0_state_durations[8][7]_i_2 ));
LUT1 #(
    .INIT(2'h1)) 
     \state_durations[8][7]_i_3 
       (.I0(FrameDurationRequestedClks[6]),
        .O(\n_0_state_durations[8][7]_i_3 ));
LUT1 #(
    .INIT(2'h1)) 
     \state_durations[8][7]_i_4 
       (.I0(FrameDurationRequestedClks[5]),
        .O(\n_0_state_durations[8][7]_i_4 ));
LUT1 #(
    .INIT(2'h1)) 
     \state_durations[8][7]_i_5 
       (.I0(FrameDurationRequestedClks[4]),
        .O(\n_0_state_durations[8][7]_i_5 ));
FDRE \state_durations_reg[8][0] 
       (.C(clk),
        .CE(FrameId11_out),
        .D(\n_7_state_durations_reg[8][3]_i_1 ),
        .Q(\n_0_state_durations_reg[8][0] ),
        .R(reset));
FDRE \state_durations_reg[8][10] 
       (.C(clk),
        .CE(FrameId11_out),
        .D(\n_5_state_durations_reg[8][11]_i_1 ),
        .Q(\n_0_state_durations_reg[8][10] ),
        .R(reset));
FDRE \state_durations_reg[8][11] 
       (.C(clk),
        .CE(FrameId11_out),
        .D(\n_4_state_durations_reg[8][11]_i_1 ),
        .Q(\n_0_state_durations_reg[8][11] ),
        .R(reset));
CARRY4 \state_durations_reg[8][11]_i_1 
       (.CI(\n_0_state_durations_reg[8][7]_i_1 ),
        .CO({\n_0_state_durations_reg[8][11]_i_1 ,\n_1_state_durations_reg[8][11]_i_1 ,\n_2_state_durations_reg[8][11]_i_1 ,\n_3_state_durations_reg[8][11]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\n_4_state_durations_reg[8][11]_i_1 ,\n_5_state_durations_reg[8][11]_i_1 ,\n_6_state_durations_reg[8][11]_i_1 ,\n_7_state_durations_reg[8][11]_i_1 }),
        .S({\n_0_state_durations[8][11]_i_2 ,\n_0_state_durations[8][11]_i_3 ,\n_0_state_durations[8][11]_i_4 ,\n_0_state_durations[8][11]_i_5 }));
FDSE \state_durations_reg[8][12] 
       (.C(clk),
        .CE(FrameId11_out),
        .D(\n_7_state_durations_reg[8][15]_i_1 ),
        .Q(\n_0_state_durations_reg[8][12] ),
        .S(reset));
FDRE \state_durations_reg[8][13] 
       (.C(clk),
        .CE(FrameId11_out),
        .D(\n_6_state_durations_reg[8][15]_i_1 ),
        .Q(\n_0_state_durations_reg[8][13] ),
        .R(reset));
FDRE \state_durations_reg[8][14] 
       (.C(clk),
        .CE(FrameId11_out),
        .D(\n_5_state_durations_reg[8][15]_i_1 ),
        .Q(\n_0_state_durations_reg[8][14] ),
        .R(reset));
FDRE \state_durations_reg[8][15] 
       (.C(clk),
        .CE(FrameId11_out),
        .D(\n_4_state_durations_reg[8][15]_i_1 ),
        .Q(\n_0_state_durations_reg[8][15] ),
        .R(reset));
CARRY4 \state_durations_reg[8][15]_i_1 
       (.CI(\n_0_state_durations_reg[8][11]_i_1 ),
        .CO({\n_0_state_durations_reg[8][15]_i_1 ,\n_1_state_durations_reg[8][15]_i_1 ,\n_2_state_durations_reg[8][15]_i_1 ,\n_3_state_durations_reg[8][15]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\n_4_state_durations_reg[8][15]_i_1 ,\n_5_state_durations_reg[8][15]_i_1 ,\n_6_state_durations_reg[8][15]_i_1 ,\n_7_state_durations_reg[8][15]_i_1 }),
        .S({\n_0_state_durations[8][15]_i_2 ,\n_0_state_durations[8][15]_i_3 ,\n_0_state_durations[8][15]_i_4 ,\n_0_state_durations[8][15]_i_5 }));
FDRE \state_durations_reg[8][16] 
       (.C(clk),
        .CE(FrameId11_out),
        .D(\n_7_state_durations_reg[8][19]_i_1 ),
        .Q(\n_0_state_durations_reg[8][16] ),
        .R(reset));
FDRE \state_durations_reg[8][17] 
       (.C(clk),
        .CE(FrameId11_out),
        .D(\n_6_state_durations_reg[8][19]_i_1 ),
        .Q(\n_0_state_durations_reg[8][17] ),
        .R(reset));
FDRE \state_durations_reg[8][18] 
       (.C(clk),
        .CE(FrameId11_out),
        .D(\n_5_state_durations_reg[8][19]_i_1 ),
        .Q(\n_0_state_durations_reg[8][18] ),
        .R(reset));
FDRE \state_durations_reg[8][19] 
       (.C(clk),
        .CE(FrameId11_out),
        .D(\n_4_state_durations_reg[8][19]_i_1 ),
        .Q(\n_0_state_durations_reg[8][19] ),
        .R(reset));
CARRY4 \state_durations_reg[8][19]_i_1 
       (.CI(\n_0_state_durations_reg[8][15]_i_1 ),
        .CO({\n_0_state_durations_reg[8][19]_i_1 ,\n_1_state_durations_reg[8][19]_i_1 ,\n_2_state_durations_reg[8][19]_i_1 ,\n_3_state_durations_reg[8][19]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\n_4_state_durations_reg[8][19]_i_1 ,\n_5_state_durations_reg[8][19]_i_1 ,\n_6_state_durations_reg[8][19]_i_1 ,\n_7_state_durations_reg[8][19]_i_1 }),
        .S({\n_0_state_durations[8][19]_i_2 ,\n_0_state_durations[8][19]_i_3 ,\n_0_state_durations[8][19]_i_4 ,\n_0_state_durations[8][19]_i_5 }));
FDRE \state_durations_reg[8][1] 
       (.C(clk),
        .CE(FrameId11_out),
        .D(\n_6_state_durations_reg[8][3]_i_1 ),
        .Q(\n_0_state_durations_reg[8][1] ),
        .R(reset));
FDRE \state_durations_reg[8][20] 
       (.C(clk),
        .CE(FrameId11_out),
        .D(\n_7_state_durations_reg[8][22]_i_2 ),
        .Q(\n_0_state_durations_reg[8][20] ),
        .R(reset));
FDRE \state_durations_reg[8][21] 
       (.C(clk),
        .CE(FrameId11_out),
        .D(\n_6_state_durations_reg[8][22]_i_2 ),
        .Q(\n_0_state_durations_reg[8][21] ),
        .R(reset));
FDRE \state_durations_reg[8][22] 
       (.C(clk),
        .CE(FrameId11_out),
        .D(\n_5_state_durations_reg[8][22]_i_2 ),
        .Q(\n_0_state_durations_reg[8][22] ),
        .R(reset));
CARRY4 \state_durations_reg[8][22]_i_2 
       (.CI(\n_0_state_durations_reg[8][19]_i_1 ),
        .CO({\NLW_state_durations_reg[8][22]_i_2_CO_UNCONNECTED [3:2],\n_2_state_durations_reg[8][22]_i_2 ,\n_3_state_durations_reg[8][22]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b1,1'b1}),
        .O({\NLW_state_durations_reg[8][22]_i_2_O_UNCONNECTED [3],\n_5_state_durations_reg[8][22]_i_2 ,\n_6_state_durations_reg[8][22]_i_2 ,\n_7_state_durations_reg[8][22]_i_2 }),
        .S({1'b0,1'b1,\n_0_state_durations[8][22]_i_5 ,\n_0_state_durations[8][22]_i_6 }));
FDRE \state_durations_reg[8][2] 
       (.C(clk),
        .CE(FrameId11_out),
        .D(\n_5_state_durations_reg[8][3]_i_1 ),
        .Q(\n_0_state_durations_reg[8][2] ),
        .R(reset));
FDRE \state_durations_reg[8][3] 
       (.C(clk),
        .CE(FrameId11_out),
        .D(\n_4_state_durations_reg[8][3]_i_1 ),
        .Q(\n_0_state_durations_reg[8][3] ),
        .R(reset));
CARRY4 \state_durations_reg[8][3]_i_1 
       (.CI(1'b0),
        .CO({\n_0_state_durations_reg[8][3]_i_1 ,\n_1_state_durations_reg[8][3]_i_1 ,\n_2_state_durations_reg[8][3]_i_1 ,\n_3_state_durations_reg[8][3]_i_1 }),
        .CYINIT(1'b1),
        .DI({FrameDurationRequestedClks[2],1'b1,FrameDurationRequestedClks[0],\n_0_state_durations[8][3]_i_2 }),
        .O({\n_4_state_durations_reg[8][3]_i_1 ,\n_5_state_durations_reg[8][3]_i_1 ,\n_6_state_durations_reg[8][3]_i_1 ,\n_7_state_durations_reg[8][3]_i_1 }),
        .S({\n_0_state_durations[8][3]_i_3 ,\n_0_state_durations[8][3]_i_4 ,\n_0_state_durations[8][3]_i_5 ,\n_0_state_durations[8][3]_i_6 }));
FDRE \state_durations_reg[8][4] 
       (.C(clk),
        .CE(FrameId11_out),
        .D(\n_7_state_durations_reg[8][7]_i_1 ),
        .Q(\n_0_state_durations_reg[8][4] ),
        .R(reset));
FDRE \state_durations_reg[8][5] 
       (.C(clk),
        .CE(FrameId11_out),
        .D(\n_6_state_durations_reg[8][7]_i_1 ),
        .Q(\n_0_state_durations_reg[8][5] ),
        .R(reset));
FDRE \state_durations_reg[8][6] 
       (.C(clk),
        .CE(FrameId11_out),
        .D(\n_5_state_durations_reg[8][7]_i_1 ),
        .Q(\n_0_state_durations_reg[8][6] ),
        .R(reset));
FDRE \state_durations_reg[8][7] 
       (.C(clk),
        .CE(FrameId11_out),
        .D(\n_4_state_durations_reg[8][7]_i_1 ),
        .Q(\n_0_state_durations_reg[8][7] ),
        .R(reset));
CARRY4 \state_durations_reg[8][7]_i_1 
       (.CI(\n_0_state_durations_reg[8][3]_i_1 ),
        .CO({\n_0_state_durations_reg[8][7]_i_1 ,\n_1_state_durations_reg[8][7]_i_1 ,\n_2_state_durations_reg[8][7]_i_1 ,\n_3_state_durations_reg[8][7]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\n_4_state_durations_reg[8][7]_i_1 ,\n_5_state_durations_reg[8][7]_i_1 ,\n_6_state_durations_reg[8][7]_i_1 ,\n_7_state_durations_reg[8][7]_i_1 }),
        .S({\n_0_state_durations[8][7]_i_2 ,\n_0_state_durations[8][7]_i_3 ,\n_0_state_durations[8][7]_i_4 ,\n_0_state_durations[8][7]_i_5 }));
FDRE \state_durations_reg[8][8] 
       (.C(clk),
        .CE(FrameId11_out),
        .D(\n_7_state_durations_reg[8][11]_i_1 ),
        .Q(\n_0_state_durations_reg[8][8] ),
        .R(reset));
FDSE \state_durations_reg[8][9] 
       (.C(clk),
        .CE(FrameId11_out),
        .D(\n_6_state_durations_reg[8][11]_i_1 ),
        .Q(\n_0_state_durations_reg[8][9] ),
        .S(reset));
FDSE \state_reg[0] 
       (.C(clk),
        .CE(is_next_state_needed),
        .D(read_data),
        .Q(Q[0]),
        .S(reset));
CARRY4 \state_reg[0]_i_1 
       (.CI(\n_0_state_reg[0]_i_2 ),
        .CO({is_next_state_needed,\n_1_state_reg[0]_i_1 ,\n_2_state_reg[0]_i_1 ,\n_3_state_reg[0]_i_1 }),
        .CYINIT(1'b0),
        .DI({\n_0_state[0]_i_3 ,\n_0_state[0]_i_4 ,\n_0_state[0]_i_5 ,\n_0_state[0]_i_6 }),
        .O(\NLW_state_reg[0]_i_1_O_UNCONNECTED [3:0]),
        .S({\n_0_state[0]_i_7 ,\n_0_state[0]_i_8 ,\n_0_state[0]_i_9 ,\n_0_state[0]_i_10 }));
CARRY4 \state_reg[0]_i_11 
       (.CI(1'b0),
        .CO({\n_0_state_reg[0]_i_11 ,\n_1_state_reg[0]_i_11 ,\n_2_state_reg[0]_i_11 ,\n_3_state_reg[0]_i_11 }),
        .CYINIT(1'b1),
        .DI({\n_0_state[0]_i_23 ,\n_0_state[0]_i_24 ,\n_0_state[0]_i_25 ,\n_0_state[0]_i_26 }),
        .O(\NLW_state_reg[0]_i_11_O_UNCONNECTED [3:0]),
        .S({\n_0_state[0]_i_27 ,\n_0_state[0]_i_28 ,\n_0_state[0]_i_29 ,\n_0_state[0]_i_30 }));
CARRY4 \state_reg[0]_i_2 
       (.CI(\n_0_state_reg[0]_i_11 ),
        .CO({\n_0_state_reg[0]_i_2 ,\n_1_state_reg[0]_i_2 ,\n_2_state_reg[0]_i_2 ,\n_3_state_reg[0]_i_2 }),
        .CYINIT(1'b0),
        .DI({\n_0_state[0]_i_12 ,\n_0_state[0]_i_13 ,\n_0_state[0]_i_14 ,\n_0_state[0]_i_15 }),
        .O(\NLW_state_reg[0]_i_2_O_UNCONNECTED [3:0]),
        .S({\n_0_state[0]_i_16 ,\n_0_state[0]_i_17 ,\n_0_state[0]_i_18 ,\n_0_state[0]_i_19 }));
CARRY4 \state_reg[0]_i_20 
       (.CI(\n_0_state_reg[0]_i_21 ),
        .CO({\NLW_state_reg[0]_i_20_CO_UNCONNECTED [3],\n_1_state_reg[0]_i_20 ,\NLW_state_reg[0]_i_20_CO_UNCONNECTED [1],\n_3_state_reg[0]_i_20 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_state_reg[0]_i_20_O_UNCONNECTED [3:2],\n_6_state_reg[0]_i_20 ,\n_7_state_reg[0]_i_20 }),
        .S({1'b0,1'b1,\n_0_state[0]_i_33 ,\n_0_state[0]_i_34 }));
CARRY4 \state_reg[0]_i_21 
       (.CI(\n_0_state_reg[0]_i_22 ),
        .CO({\n_0_state_reg[0]_i_21 ,\n_1_state_reg[0]_i_21 ,\n_2_state_reg[0]_i_21 ,\n_3_state_reg[0]_i_21 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_state_reg[0]_i_21 ,\n_5_state_reg[0]_i_21 ,\n_6_state_reg[0]_i_21 ,\n_7_state_reg[0]_i_21 }),
        .S({\n_0_state[0]_i_35 ,\n_0_state[0]_i_36 ,\n_0_state[0]_i_37 ,\n_0_state[0]_i_38 }));
CARRY4 \state_reg[0]_i_22 
       (.CI(\n_0_state_reg[0]_i_31 ),
        .CO({\n_0_state_reg[0]_i_22 ,\n_1_state_reg[0]_i_22 ,\n_2_state_reg[0]_i_22 ,\n_3_state_reg[0]_i_22 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_state_reg[0]_i_22 ,\n_5_state_reg[0]_i_22 ,\n_6_state_reg[0]_i_22 ,\n_7_state_reg[0]_i_22 }),
        .S({\n_0_state[0]_i_39 ,\n_0_state[0]_i_40 ,\n_0_state[0]_i_41 ,\n_0_state[0]_i_42 }));
CARRY4 \state_reg[0]_i_31 
       (.CI(\n_0_state_reg[0]_i_32 ),
        .CO({\n_0_state_reg[0]_i_31 ,\n_1_state_reg[0]_i_31 ,\n_2_state_reg[0]_i_31 ,\n_3_state_reg[0]_i_31 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_state_reg[0]_i_31 ,\n_5_state_reg[0]_i_31 ,\n_6_state_reg[0]_i_31 ,\n_7_state_reg[0]_i_31 }),
        .S({\n_0_state[0]_i_47 ,\n_0_state[0]_i_48 ,\n_0_state[0]_i_49 ,\n_0_state[0]_i_50 }));
CARRY4 \state_reg[0]_i_32 
       (.CI(\n_0_state_reg[0]_i_43 ),
        .CO({\n_0_state_reg[0]_i_32 ,\n_1_state_reg[0]_i_32 ,\n_2_state_reg[0]_i_32 ,\n_3_state_reg[0]_i_32 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_state_reg[0]_i_32 ,\n_5_state_reg[0]_i_32 ,\n_6_state_reg[0]_i_32 ,\n_7_state_reg[0]_i_32 }),
        .S({\n_0_state[0]_i_51 ,\n_0_state[0]_i_52 ,\n_0_state[0]_i_53 ,\n_0_state[0]_i_54 }));
CARRY4 \state_reg[0]_i_43 
       (.CI(1'b0),
        .CO({\n_0_state_reg[0]_i_43 ,\n_1_state_reg[0]_i_43 ,\n_2_state_reg[0]_i_43 ,\n_3_state_reg[0]_i_43 }),
        .CYINIT(state_counter_reg[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_state_reg[0]_i_43 ,\n_5_state_reg[0]_i_43 ,\n_6_state_reg[0]_i_43 ,\n_7_state_reg[0]_i_43 }),
        .S({\n_0_state[0]_i_55 ,\n_0_state[0]_i_56 ,\n_0_state[0]_i_57 ,\n_0_state[0]_i_58 }));
FDRE \state_reg[1] 
       (.C(clk),
        .CE(is_next_state_needed),
        .D(Q[0]),
        .Q(\n_0_state_reg[1] ),
        .R(reset));
FDRE \state_reg[2] 
       (.C(clk),
        .CE(is_next_state_needed),
        .D(\n_0_state_reg[1] ),
        .Q(Q[1]),
        .R(reset));
FDRE \state_reg[3] 
       (.C(clk),
        .CE(is_next_state_needed),
        .D(Q[1]),
        .Q(read_data),
        .R(reset));
endmodule

(* ORIG_REF_NAME = "read_process_manager" *) 
module spad_manager_0_read_process_manager
   (O1,
    E,
    ColSelect,
    RowSelect,
    O2,
    RowGroup,
    Q,
    clk,
    ReadEnable,
    reset);
  output O1;
  output [0:0]E;
  output [5:0]ColSelect;
  output [2:0]RowSelect;
  output [0:0]O2;
  output RowGroup;
  input [0:0]Q;
  input clk;
  input ReadEnable;
  input reset;

  wire [5:0]ColSelect;
  wire [0:0]E;
  wire O1;
  wire [0:0]O2;
  wire [0:0]Q;
  wire ReadEnable;
  wire RowGroup;
  wire [2:0]RowSelect;
  wire clk;
  wire [3:0]get_next_state_return;
  wire inc_address;
  wire \n_0_ColSelect[2]_INST_0_i_2 ;
  wire \n_0_FrameId[31]_i_2 ;
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
  wire \n_0_prev_state_counter[13]_i_3 ;
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
  wire \n_7_prev_state_counter_reg[12]_i_2 ;
  wire \n_7_prev_state_counter_reg[13]_i_2 ;
  wire \n_7_prev_state_counter_reg[4]_i_1 ;
  wire \n_7_prev_state_counter_reg[8]_i_1 ;
  wire prev_read_data;
  wire [8:0]prev_requested_address;
  wire [13:0]prev_state_counter;
  wire reset;
  wire [13:13]state_counter;
  wire state_time_expired;
  wire [14:1]state_time_expired0;
  wire zeroize;
  wire [3:0]NLW_RowGroup_INST_0_i_1_O_UNCONNECTED;
  wire [3:0]NLW_RowGroup_INST_0_i_2_O_UNCONNECTED;
  wire [3:0]NLW_RowGroup_INST_0_i_3_CO_UNCONNECTED;
  wire [3:1]NLW_RowGroup_INST_0_i_3_O_UNCONNECTED;
  wire [3:0]\NLW_prev_state_counter_reg[13]_i_2_CO_UNCONNECTED ;
  wire [3:1]\NLW_prev_state_counter_reg[13]_i_2_O_UNCONNECTED ;

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
(* SOFT_HLUTNM = "soft_lutpair4" *) 
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
    .INIT(64'h0080000000008000)) 
     \ColSelect[2]_INST_0_i_1 
       (.I0(\n_0_RowSelect[2]_INST_0_i_6 ),
        .I1(\n_0_RowSelect[2]_INST_0_i_5 ),
        .I2(\n_0_ColSelect[2]_INST_0_i_2 ),
        .I3(get_next_state_return[1]),
        .I4(get_next_state_return[0]),
        .I5(state_time_expired),
        .O(inc_address));
LUT5 #(
    .INIT(32'h00100011)) 
     \ColSelect[2]_INST_0_i_2 
       (.I0(get_next_state_return[2]),
        .I1(get_next_state_return[3]),
        .I2(state_time_expired),
        .I3(zeroize),
        .I4(\n_7_prev_state_counter_reg[13]_i_2 ),
        .O(\n_0_ColSelect[2]_INST_0_i_2 ));
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
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT5 #(
    .INIT(32'h00006AAA)) 
     \ColSelect[5]_INST_0 
       (.I0(prev_requested_address[5]),
        .I1(\n_0_RowSelect[2]_INST_0_i_2 ),
        .I2(prev_requested_address[4]),
        .I3(prev_requested_address[3]),
        .I4(zeroize),
        .O(ColSelect[5]));
LUT4 #(
    .INIT(16'h4000)) 
     \FrameId[31]_i_1 
       (.I0(reset),
        .I1(prev_read_data),
        .I2(Q),
        .I3(\n_0_FrameId[31]_i_2 ),
        .O(O2));
(* SOFT_HLUTNM = "soft_lutpair8" *) 
   LUT5 #(
    .INIT(32'hFFFACCFA)) 
     \FrameId[31]_i_2 
       (.I0(get_next_state_return[2]),
        .I1(get_next_state_return[1]),
        .I2(get_next_state_return[0]),
        .I3(state_time_expired),
        .I4(get_next_state_return[3]),
        .O(\n_0_FrameId[31]_i_2 ));
LUT6 #(
    .INIT(64'h00000000FFBBFCB8)) 
     \PixelOut0[7]_i_1 
       (.I0(get_next_state_return[3]),
        .I1(state_time_expired),
        .I2(get_next_state_return[0]),
        .I3(get_next_state_return[1]),
        .I4(get_next_state_return[2]),
        .I5(zeroize),
        .O(E));
LUT3 #(
    .INIT(8'hB8)) 
     ReadEnable_i_1
       (.I0(ReadEnable),
        .I1(reset),
        .I2(E),
        .O(O1));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT5 #(
    .INIT(32'h0F0E0C0E)) 
     RowGroup_INST_0
       (.I0(get_next_state_return[0]),
        .I1(get_next_state_return[3]),
        .I2(zeroize),
        .I3(state_time_expired),
        .I4(get_next_state_return[2]),
        .O(RowGroup));
CARRY4 RowGroup_INST_0_i_1
       (.CI(n_0_RowGroup_INST_0_i_2),
        .CO({state_time_expired,n_1_RowGroup_INST_0_i_1,n_2_RowGroup_INST_0_i_1,n_3_RowGroup_INST_0_i_1}),
        .CYINIT(1'b0),
        .DI({state_time_expired0[14],n_0_RowGroup_INST_0_i_4,n_0_RowGroup_INST_0_i_5,n_0_RowGroup_INST_0_i_6}),
        .O(NLW_RowGroup_INST_0_i_1_O_UNCONNECTED[3:0]),
        .S({n_0_RowGroup_INST_0_i_7,n_0_RowGroup_INST_0_i_8,n_0_RowGroup_INST_0_i_9,n_0_RowGroup_INST_0_i_10}));
LUT2 #(
    .INIT(4'h1)) 
     RowGroup_INST_0_i_10
       (.I0(state_time_expired0[9]),
        .I1(state_time_expired0[8]),
        .O(n_0_RowGroup_INST_0_i_10));
LUT2 #(
    .INIT(4'hE)) 
     RowGroup_INST_0_i_11
       (.I0(state_time_expired0[6]),
        .I1(state_time_expired0[7]),
        .O(n_0_RowGroup_INST_0_i_11));
LUT2 #(
    .INIT(4'hE)) 
     RowGroup_INST_0_i_12
       (.I0(state_time_expired0[4]),
        .I1(state_time_expired0[5]),
        .O(n_0_RowGroup_INST_0_i_12));
LUT5 #(
    .INIT(32'hFFFFAAA8)) 
     RowGroup_INST_0_i_13
       (.I0(state_time_expired0[2]),
        .I1(get_next_state_return[0]),
        .I2(get_next_state_return[2]),
        .I3(get_next_state_return[3]),
        .I4(state_time_expired0[3]),
        .O(n_0_RowGroup_INST_0_i_13));
LUT6 #(
    .INIT(64'h22202222BBBABBAB)) 
     RowGroup_INST_0_i_14
       (.I0(state_time_expired0[1]),
        .I1(get_next_state_return[0]),
        .I2(get_next_state_return[3]),
        .I3(get_next_state_return[1]),
        .I4(get_next_state_return[2]),
        .I5(prev_state_counter[0]),
        .O(n_0_RowGroup_INST_0_i_14));
LUT2 #(
    .INIT(4'h1)) 
     RowGroup_INST_0_i_15
       (.I0(state_time_expired0[7]),
        .I1(state_time_expired0[6]),
        .O(n_0_RowGroup_INST_0_i_15));
LUT2 #(
    .INIT(4'h1)) 
     RowGroup_INST_0_i_16
       (.I0(state_time_expired0[5]),
        .I1(state_time_expired0[4]),
        .O(n_0_RowGroup_INST_0_i_16));
LUT5 #(
    .INIT(32'h000001FE)) 
     RowGroup_INST_0_i_17
       (.I0(get_next_state_return[0]),
        .I1(get_next_state_return[2]),
        .I2(get_next_state_return[3]),
        .I3(state_time_expired0[2]),
        .I4(state_time_expired0[3]),
        .O(n_0_RowGroup_INST_0_i_17));
LUT6 #(
    .INIT(64'hABAA545100000004)) 
     RowGroup_INST_0_i_18
       (.I0(get_next_state_return[0]),
        .I1(get_next_state_return[3]),
        .I2(get_next_state_return[1]),
        .I3(get_next_state_return[2]),
        .I4(state_time_expired0[1]),
        .I5(prev_state_counter[0]),
        .O(n_0_RowGroup_INST_0_i_18));
CARRY4 RowGroup_INST_0_i_19
       (.CI(n_0_RowGroup_INST_0_i_21),
        .CO({n_0_RowGroup_INST_0_i_19,n_1_RowGroup_INST_0_i_19,n_2_RowGroup_INST_0_i_19,n_3_RowGroup_INST_0_i_19}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(state_time_expired0[12:9]),
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
        .O(state_time_expired0[8:5]),
        .S({n_0_RowGroup_INST_0_i_27,n_0_RowGroup_INST_0_i_28,n_0_RowGroup_INST_0_i_29,n_0_RowGroup_INST_0_i_30}));
CARRY4 RowGroup_INST_0_i_22
       (.CI(1'b0),
        .CO({n_0_RowGroup_INST_0_i_22,n_1_RowGroup_INST_0_i_22,n_2_RowGroup_INST_0_i_22,n_3_RowGroup_INST_0_i_22}),
        .CYINIT(prev_state_counter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(state_time_expired0[4:1]),
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
        .CO({NLW_RowGroup_INST_0_i_3_CO_UNCONNECTED[3:2],state_time_expired0[14],NLW_RowGroup_INST_0_i_3_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_RowGroup_INST_0_i_3_O_UNCONNECTED[3:1],state_time_expired0[13]}),
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
       (.I0(state_time_expired0[12]),
        .I1(state_time_expired0[13]),
        .O(n_0_RowGroup_INST_0_i_4));
LUT2 #(
    .INIT(4'hE)) 
     RowGroup_INST_0_i_5
       (.I0(state_time_expired0[10]),
        .I1(state_time_expired0[11]),
        .O(n_0_RowGroup_INST_0_i_5));
LUT2 #(
    .INIT(4'hE)) 
     RowGroup_INST_0_i_6
       (.I0(state_time_expired0[8]),
        .I1(state_time_expired0[9]),
        .O(n_0_RowGroup_INST_0_i_6));
LUT1 #(
    .INIT(2'h1)) 
     RowGroup_INST_0_i_7
       (.I0(state_time_expired0[14]),
        .O(n_0_RowGroup_INST_0_i_7));
LUT2 #(
    .INIT(4'h1)) 
     RowGroup_INST_0_i_8
       (.I0(state_time_expired0[13]),
        .I1(state_time_expired0[12]),
        .O(n_0_RowGroup_INST_0_i_8));
LUT2 #(
    .INIT(4'h1)) 
     RowGroup_INST_0_i_9
       (.I0(state_time_expired0[11]),
        .I1(state_time_expired0[10]),
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
LUT4 #(
    .INIT(16'h7FFF)) 
     \RowSelect[2]_INST_0_i_1 
       (.I0(prev_requested_address[5]),
        .I1(prev_requested_address[3]),
        .I2(prev_requested_address[4]),
        .I3(prev_requested_address[6]),
        .O(\n_0_RowSelect[2]_INST_0_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair7" *) 
   LUT4 #(
    .INIT(16'h1000)) 
     \RowSelect[2]_INST_0_i_10 
       (.I0(state_time_expired),
        .I1(reset),
        .I2(Q),
        .I3(prev_read_data),
        .O(\n_0_RowSelect[2]_INST_0_i_10 ));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     \RowSelect[2]_INST_0_i_2 
       (.I0(prev_requested_address[1]),
        .I1(prev_requested_address[0]),
        .I2(prev_requested_address[2]),
        .I3(\n_0_RowSelect[2]_INST_0_i_4 ),
        .I4(\n_0_RowSelect[2]_INST_0_i_5 ),
        .I5(\n_0_RowSelect[2]_INST_0_i_6 ),
        .O(\n_0_RowSelect[2]_INST_0_i_2 ));
LUT3 #(
    .INIT(8'hF7)) 
     \RowSelect[2]_INST_0_i_3 
       (.I0(prev_read_data),
        .I1(Q),
        .I2(reset),
        .O(zeroize));
LUT6 #(
    .INIT(64'h0000003100000000)) 
     \RowSelect[2]_INST_0_i_4 
       (.I0(\n_7_prev_state_counter_reg[13]_i_2 ),
        .I1(zeroize),
        .I2(state_time_expired),
        .I3(get_next_state_return[3]),
        .I4(get_next_state_return[2]),
        .I5(\n_0_RowSelect[2]_INST_0_i_7 ),
        .O(\n_0_RowSelect[2]_INST_0_i_4 ));
LUT6 #(
    .INIT(64'h00020000FFFFFFFF)) 
     \RowSelect[2]_INST_0_i_5 
       (.I0(\n_0_RowSelect[2]_INST_0_i_8 ),
        .I1(\n_7_prev_state_counter_reg[4]_i_1 ),
        .I2(\n_6_prev_state_counter_reg[4]_i_1 ),
        .I3(\n_5_prev_state_counter_reg[4]_i_1 ),
        .I4(\n_0_RowSelect[2]_INST_0_i_9 ),
        .I5(\n_0_RowSelect[2]_INST_0_i_10 ),
        .O(\n_0_RowSelect[2]_INST_0_i_5 ));
LUT6 #(
    .INIT(64'hFFFFFFFF7FFFFFFF)) 
     \RowSelect[2]_INST_0_i_6 
       (.I0(prev_requested_address[1]),
        .I1(prev_requested_address[0]),
        .I2(prev_requested_address[7]),
        .I3(prev_requested_address[2]),
        .I4(prev_requested_address[8]),
        .I5(\n_0_RowSelect[2]_INST_0_i_1 ),
        .O(\n_0_RowSelect[2]_INST_0_i_6 ));
LUT3 #(
    .INIT(8'h18)) 
     \RowSelect[2]_INST_0_i_7 
       (.I0(state_time_expired),
        .I1(get_next_state_return[0]),
        .I2(get_next_state_return[1]),
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
LUT3 #(
    .INIT(8'h78)) 
     \prev_requested_address[1]_i_1 
       (.I0(prev_requested_address[0]),
        .I1(inc_address),
        .I2(prev_requested_address[1]),
        .O(\n_0_prev_requested_address[1]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
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
(* SOFT_HLUTNM = "soft_lutpair1" *) 
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
(* SOFT_HLUTNM = "soft_lutpair0" *) 
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
        .I3(get_next_state_return[1]),
        .I4(state_time_expired),
        .I5(get_next_state_return[0]),
        .O(\n_0_prev_state[0]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair8" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \prev_state[1]_i_1 
       (.I0(get_next_state_return[1]),
        .I1(state_time_expired),
        .I2(get_next_state_return[2]),
        .O(\n_0_prev_state[1]_i_1 ));
LUT6 #(
    .INIT(64'h0080008000C00000)) 
     \prev_state[2]_i_1 
       (.I0(get_next_state_return[2]),
        .I1(prev_read_data),
        .I2(Q),
        .I3(reset),
        .I4(get_next_state_return[3]),
        .I5(state_time_expired),
        .O(\n_0_prev_state[2]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \prev_state[3]_i_1 
       (.I0(get_next_state_return[3]),
        .I1(state_time_expired),
        .I2(get_next_state_return[0]),
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
(* SOFT_HLUTNM = "soft_lutpair7" *) 
   LUT5 #(
    .INIT(32'h00000080)) 
     \prev_state_counter[13]_i_1 
       (.I0(\n_7_prev_state_counter_reg[13]_i_2 ),
        .I1(prev_read_data),
        .I2(Q),
        .I3(reset),
        .I4(state_time_expired),
        .O(state_counter));
LUT1 #(
    .INIT(2'h2)) 
     \prev_state_counter[13]_i_3 
       (.I0(prev_state_counter[13]),
        .O(\n_0_prev_state_counter[13]_i_3 ));
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
CARRY4 \prev_state_counter_reg[13]_i_2 
       (.CI(\n_0_prev_state_counter_reg[12]_i_2 ),
        .CO(\NLW_prev_state_counter_reg[13]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_prev_state_counter_reg[13]_i_2_O_UNCONNECTED [3:1],\n_7_prev_state_counter_reg[13]_i_2 }),
        .S({1'b0,1'b0,1'b0,\n_0_prev_state_counter[13]_i_3 }));
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
        .Q(get_next_state_return[1]),
        .R(1'b0));
FDRE \prev_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_prev_state[1]_i_1 ),
        .Q(get_next_state_return[2]),
        .R(zeroize));
FDRE \prev_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_prev_state[2]_i_1 ),
        .Q(get_next_state_return[3]),
        .R(1'b0));
FDRE \prev_state_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\n_0_prev_state[3]_i_1 ),
        .Q(get_next_state_return[0]),
        .R(zeroize));
endmodule

(* ORIG_REF_NAME = "spad_manager" *) 
module spad_manager_0_spad_manager
   (FrameDurationCurrentClks,
    Q,
    FrameId,
    PixelOut0,
    PixelOut1,
    PixelOut2,
    PixelOut3,
    ColSelect,
    RowSelect,
    RowGroup,
    FrameDurationChangeEnable,
    ReadEnable,
    FrameDurationRequestedClks,
    reset,
    clk,
    PixelIn0,
    PixelIn1,
    PixelIn2,
    PixelIn3);
  output [21:0]FrameDurationCurrentClks;
  output [1:0]Q;
  output [31:0]FrameId;
  output [7:0]PixelOut0;
  output [7:0]PixelOut1;
  output [7:0]PixelOut2;
  output [7:0]PixelOut3;
  output [5:0]ColSelect;
  output [2:0]RowSelect;
  output RowGroup;
  output FrameDurationChangeEnable;
  output ReadEnable;
  input [21:0]FrameDurationRequestedClks;
  input reset;
  input clk;
  input [7:0]PixelIn0;
  input [7:0]PixelIn1;
  input [7:0]PixelIn2;
  input [7:0]PixelIn3;

  wire [5:0]ColSelect;
  wire FrameDurationChangeEnable;
  wire [21:0]FrameDurationCurrentClks;
  wire [21:0]FrameDurationRequestedClks;
  wire [31:0]FrameId;
  wire [31:0]FrameId_reg;
  wire [7:0]PixelIn0;
  wire [7:0]PixelIn1;
  wire [7:0]PixelIn2;
  wire [7:0]PixelIn3;
  wire [7:0]PixelOut0;
  wire [7:0]PixelOut1;
  wire [7:0]PixelOut2;
  wire [7:0]PixelOut3;
  wire [1:0]Q;
  wire ReadEnable;
  wire RowGroup;
  wire [2:0]RowSelect;
  wire clk;
  wire controller_read_enable;
  wire n_54_controller;
  wire n_67_controller;
  wire reset;

FDRE \FrameId_reg[0] 
       (.C(clk),
        .CE(n_67_controller),
        .D(FrameId_reg[0]),
        .Q(FrameId[0]),
        .R(1'b0));
FDRE \FrameId_reg[10] 
       (.C(clk),
        .CE(n_67_controller),
        .D(FrameId_reg[10]),
        .Q(FrameId[10]),
        .R(1'b0));
FDRE \FrameId_reg[11] 
       (.C(clk),
        .CE(n_67_controller),
        .D(FrameId_reg[11]),
        .Q(FrameId[11]),
        .R(1'b0));
FDRE \FrameId_reg[12] 
       (.C(clk),
        .CE(n_67_controller),
        .D(FrameId_reg[12]),
        .Q(FrameId[12]),
        .R(1'b0));
FDRE \FrameId_reg[13] 
       (.C(clk),
        .CE(n_67_controller),
        .D(FrameId_reg[13]),
        .Q(FrameId[13]),
        .R(1'b0));
FDRE \FrameId_reg[14] 
       (.C(clk),
        .CE(n_67_controller),
        .D(FrameId_reg[14]),
        .Q(FrameId[14]),
        .R(1'b0));
FDRE \FrameId_reg[15] 
       (.C(clk),
        .CE(n_67_controller),
        .D(FrameId_reg[15]),
        .Q(FrameId[15]),
        .R(1'b0));
FDRE \FrameId_reg[16] 
       (.C(clk),
        .CE(n_67_controller),
        .D(FrameId_reg[16]),
        .Q(FrameId[16]),
        .R(1'b0));
FDRE \FrameId_reg[17] 
       (.C(clk),
        .CE(n_67_controller),
        .D(FrameId_reg[17]),
        .Q(FrameId[17]),
        .R(1'b0));
FDRE \FrameId_reg[18] 
       (.C(clk),
        .CE(n_67_controller),
        .D(FrameId_reg[18]),
        .Q(FrameId[18]),
        .R(1'b0));
FDRE \FrameId_reg[19] 
       (.C(clk),
        .CE(n_67_controller),
        .D(FrameId_reg[19]),
        .Q(FrameId[19]),
        .R(1'b0));
FDRE \FrameId_reg[1] 
       (.C(clk),
        .CE(n_67_controller),
        .D(FrameId_reg[1]),
        .Q(FrameId[1]),
        .R(1'b0));
FDRE \FrameId_reg[20] 
       (.C(clk),
        .CE(n_67_controller),
        .D(FrameId_reg[20]),
        .Q(FrameId[20]),
        .R(1'b0));
FDRE \FrameId_reg[21] 
       (.C(clk),
        .CE(n_67_controller),
        .D(FrameId_reg[21]),
        .Q(FrameId[21]),
        .R(1'b0));
FDRE \FrameId_reg[22] 
       (.C(clk),
        .CE(n_67_controller),
        .D(FrameId_reg[22]),
        .Q(FrameId[22]),
        .R(1'b0));
FDRE \FrameId_reg[23] 
       (.C(clk),
        .CE(n_67_controller),
        .D(FrameId_reg[23]),
        .Q(FrameId[23]),
        .R(1'b0));
FDRE \FrameId_reg[24] 
       (.C(clk),
        .CE(n_67_controller),
        .D(FrameId_reg[24]),
        .Q(FrameId[24]),
        .R(1'b0));
FDRE \FrameId_reg[25] 
       (.C(clk),
        .CE(n_67_controller),
        .D(FrameId_reg[25]),
        .Q(FrameId[25]),
        .R(1'b0));
FDRE \FrameId_reg[26] 
       (.C(clk),
        .CE(n_67_controller),
        .D(FrameId_reg[26]),
        .Q(FrameId[26]),
        .R(1'b0));
FDRE \FrameId_reg[27] 
       (.C(clk),
        .CE(n_67_controller),
        .D(FrameId_reg[27]),
        .Q(FrameId[27]),
        .R(1'b0));
FDRE \FrameId_reg[28] 
       (.C(clk),
        .CE(n_67_controller),
        .D(FrameId_reg[28]),
        .Q(FrameId[28]),
        .R(1'b0));
FDRE \FrameId_reg[29] 
       (.C(clk),
        .CE(n_67_controller),
        .D(FrameId_reg[29]),
        .Q(FrameId[29]),
        .R(1'b0));
FDRE \FrameId_reg[2] 
       (.C(clk),
        .CE(n_67_controller),
        .D(FrameId_reg[2]),
        .Q(FrameId[2]),
        .R(1'b0));
FDRE \FrameId_reg[30] 
       (.C(clk),
        .CE(n_67_controller),
        .D(FrameId_reg[30]),
        .Q(FrameId[30]),
        .R(1'b0));
FDRE \FrameId_reg[31] 
       (.C(clk),
        .CE(n_67_controller),
        .D(FrameId_reg[31]),
        .Q(FrameId[31]),
        .R(1'b0));
FDRE \FrameId_reg[3] 
       (.C(clk),
        .CE(n_67_controller),
        .D(FrameId_reg[3]),
        .Q(FrameId[3]),
        .R(1'b0));
FDRE \FrameId_reg[4] 
       (.C(clk),
        .CE(n_67_controller),
        .D(FrameId_reg[4]),
        .Q(FrameId[4]),
        .R(1'b0));
FDRE \FrameId_reg[5] 
       (.C(clk),
        .CE(n_67_controller),
        .D(FrameId_reg[5]),
        .Q(FrameId[5]),
        .R(1'b0));
FDRE \FrameId_reg[6] 
       (.C(clk),
        .CE(n_67_controller),
        .D(FrameId_reg[6]),
        .Q(FrameId[6]),
        .R(1'b0));
FDRE \FrameId_reg[7] 
       (.C(clk),
        .CE(n_67_controller),
        .D(FrameId_reg[7]),
        .Q(FrameId[7]),
        .R(1'b0));
FDRE \FrameId_reg[8] 
       (.C(clk),
        .CE(n_67_controller),
        .D(FrameId_reg[8]),
        .Q(FrameId[8]),
        .R(1'b0));
FDRE \FrameId_reg[9] 
       (.C(clk),
        .CE(n_67_controller),
        .D(FrameId_reg[9]),
        .Q(FrameId[9]),
        .R(1'b0));
FDRE \PixelOut0_reg[0] 
       (.C(clk),
        .CE(controller_read_enable),
        .D(PixelIn0[0]),
        .Q(PixelOut0[0]),
        .R(reset));
FDSE \PixelOut0_reg[1] 
       (.C(clk),
        .CE(controller_read_enable),
        .D(PixelIn0[1]),
        .Q(PixelOut0[1]),
        .S(reset));
FDRE \PixelOut0_reg[2] 
       (.C(clk),
        .CE(controller_read_enable),
        .D(PixelIn0[2]),
        .Q(PixelOut0[2]),
        .R(reset));
FDSE \PixelOut0_reg[3] 
       (.C(clk),
        .CE(controller_read_enable),
        .D(PixelIn0[3]),
        .Q(PixelOut0[3]),
        .S(reset));
FDRE \PixelOut0_reg[4] 
       (.C(clk),
        .CE(controller_read_enable),
        .D(PixelIn0[4]),
        .Q(PixelOut0[4]),
        .R(reset));
FDSE \PixelOut0_reg[5] 
       (.C(clk),
        .CE(controller_read_enable),
        .D(PixelIn0[5]),
        .Q(PixelOut0[5]),
        .S(reset));
FDRE \PixelOut0_reg[6] 
       (.C(clk),
        .CE(controller_read_enable),
        .D(PixelIn0[6]),
        .Q(PixelOut0[6]),
        .R(reset));
FDSE \PixelOut0_reg[7] 
       (.C(clk),
        .CE(controller_read_enable),
        .D(PixelIn0[7]),
        .Q(PixelOut0[7]),
        .S(reset));
FDRE \PixelOut1_reg[0] 
       (.C(clk),
        .CE(controller_read_enable),
        .D(PixelIn1[0]),
        .Q(PixelOut1[0]),
        .R(reset));
FDSE \PixelOut1_reg[1] 
       (.C(clk),
        .CE(controller_read_enable),
        .D(PixelIn1[1]),
        .Q(PixelOut1[1]),
        .S(reset));
FDRE \PixelOut1_reg[2] 
       (.C(clk),
        .CE(controller_read_enable),
        .D(PixelIn1[2]),
        .Q(PixelOut1[2]),
        .R(reset));
FDSE \PixelOut1_reg[3] 
       (.C(clk),
        .CE(controller_read_enable),
        .D(PixelIn1[3]),
        .Q(PixelOut1[3]),
        .S(reset));
FDRE \PixelOut1_reg[4] 
       (.C(clk),
        .CE(controller_read_enable),
        .D(PixelIn1[4]),
        .Q(PixelOut1[4]),
        .R(reset));
FDSE \PixelOut1_reg[5] 
       (.C(clk),
        .CE(controller_read_enable),
        .D(PixelIn1[5]),
        .Q(PixelOut1[5]),
        .S(reset));
FDRE \PixelOut1_reg[6] 
       (.C(clk),
        .CE(controller_read_enable),
        .D(PixelIn1[6]),
        .Q(PixelOut1[6]),
        .R(reset));
FDSE \PixelOut1_reg[7] 
       (.C(clk),
        .CE(controller_read_enable),
        .D(PixelIn1[7]),
        .Q(PixelOut1[7]),
        .S(reset));
FDRE \PixelOut2_reg[0] 
       (.C(clk),
        .CE(controller_read_enable),
        .D(PixelIn2[0]),
        .Q(PixelOut2[0]),
        .R(reset));
FDSE \PixelOut2_reg[1] 
       (.C(clk),
        .CE(controller_read_enable),
        .D(PixelIn2[1]),
        .Q(PixelOut2[1]),
        .S(reset));
FDRE \PixelOut2_reg[2] 
       (.C(clk),
        .CE(controller_read_enable),
        .D(PixelIn2[2]),
        .Q(PixelOut2[2]),
        .R(reset));
FDSE \PixelOut2_reg[3] 
       (.C(clk),
        .CE(controller_read_enable),
        .D(PixelIn2[3]),
        .Q(PixelOut2[3]),
        .S(reset));
FDRE \PixelOut2_reg[4] 
       (.C(clk),
        .CE(controller_read_enable),
        .D(PixelIn2[4]),
        .Q(PixelOut2[4]),
        .R(reset));
FDSE \PixelOut2_reg[5] 
       (.C(clk),
        .CE(controller_read_enable),
        .D(PixelIn2[5]),
        .Q(PixelOut2[5]),
        .S(reset));
FDRE \PixelOut2_reg[6] 
       (.C(clk),
        .CE(controller_read_enable),
        .D(PixelIn2[6]),
        .Q(PixelOut2[6]),
        .R(reset));
FDSE \PixelOut2_reg[7] 
       (.C(clk),
        .CE(controller_read_enable),
        .D(PixelIn2[7]),
        .Q(PixelOut2[7]),
        .S(reset));
FDRE \PixelOut3_reg[0] 
       (.C(clk),
        .CE(controller_read_enable),
        .D(PixelIn3[0]),
        .Q(PixelOut3[0]),
        .R(reset));
FDSE \PixelOut3_reg[1] 
       (.C(clk),
        .CE(controller_read_enable),
        .D(PixelIn3[1]),
        .Q(PixelOut3[1]),
        .S(reset));
FDRE \PixelOut3_reg[2] 
       (.C(clk),
        .CE(controller_read_enable),
        .D(PixelIn3[2]),
        .Q(PixelOut3[2]),
        .R(reset));
FDSE \PixelOut3_reg[3] 
       (.C(clk),
        .CE(controller_read_enable),
        .D(PixelIn3[3]),
        .Q(PixelOut3[3]),
        .S(reset));
FDRE \PixelOut3_reg[4] 
       (.C(clk),
        .CE(controller_read_enable),
        .D(PixelIn3[4]),
        .Q(PixelOut3[4]),
        .R(reset));
FDSE \PixelOut3_reg[5] 
       (.C(clk),
        .CE(controller_read_enable),
        .D(PixelIn3[5]),
        .Q(PixelOut3[5]),
        .S(reset));
FDRE \PixelOut3_reg[6] 
       (.C(clk),
        .CE(controller_read_enable),
        .D(PixelIn3[6]),
        .Q(PixelOut3[6]),
        .R(reset));
FDSE \PixelOut3_reg[7] 
       (.C(clk),
        .CE(controller_read_enable),
        .D(PixelIn3[7]),
        .Q(PixelOut3[7]),
        .S(reset));
FDRE ReadEnable_reg
       (.C(clk),
        .CE(1'b1),
        .D(n_54_controller),
        .Q(ReadEnable),
        .R(1'b0));
spad_manager_0_controller controller
       (.ColSelect(ColSelect),
        .E(controller_read_enable),
        .FrameDurationChangeEnable(FrameDurationChangeEnable),
        .FrameDurationCurrentClks(FrameDurationCurrentClks),
        .FrameDurationRequestedClks(FrameDurationRequestedClks),
        .O1(n_54_controller),
        .O2(n_67_controller),
        .O8(FrameId_reg),
        .Q(Q),
        .ReadEnable(ReadEnable),
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
