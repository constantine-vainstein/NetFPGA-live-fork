-- Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:29:27 MST 2014
-- Date        : Thu Aug 17 01:11:11 2017
-- Host        : DIGLABAPPS running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               y:/MuzzleFlashDetection/trunk/projects/muzzle_flash_detector/muzzle_flash_detector.srcs/sources_1/ip/spad_manager_0/spad_manager_0_stub.vhdl
-- Design      : spad_manager_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7vx690tffg1761-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity spad_manager_0 is
  Port ( 
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    LatchSpad : out STD_LOGIC;
    ResetSpad : out STD_LOGIC;
    RowSelect : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ColSelect : out STD_LOGIC_VECTOR ( 5 downto 0 );
    RowGroup : out STD_LOGIC;
    FrameId : out STD_LOGIC_VECTOR ( 31 downto 0 );
    PixelIn0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    PixelIn1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    PixelIn2 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    PixelIn3 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    PixelOut0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    PixelOut1 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    PixelOut2 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    PixelOut3 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ReadEnable : out STD_LOGIC;
    FrameDurationRequestedClks : in STD_LOGIC_VECTOR ( 21 downto 0 );
    FrameDurationChangeEnable : out STD_LOGIC;
    FrameDurationCurrentClks : out STD_LOGIC_VECTOR ( 21 downto 0 )
  );

end spad_manager_0;

architecture stub of spad_manager_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,reset,LatchSpad,ResetSpad,RowSelect[2:0],ColSelect[5:0],RowGroup,FrameId[31:0],PixelIn0[7:0],PixelIn1[7:0],PixelIn2[7:0],PixelIn3[7:0],PixelOut0[7:0],PixelOut1[7:0],PixelOut2[7:0],PixelOut3[7:0],ReadEnable,FrameDurationRequestedClks[21:0],FrameDurationChangeEnable,FrameDurationCurrentClks[21:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "spad_manager,Vivado 2014.4";
begin
end;
