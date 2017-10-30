-- Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:29:27 MST 2014
-- Date        : Mon Oct 30 21:11:37 2017
-- Host        : DIGLABAPPS running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/costa/Documents/MuzzleFlashDetection/trunk/projects/muzzle_flash_detector/muzzle_flash_detector.srcs/sources_1/ip/spad_manager_0/spad_manager_0_funcsim.vhdl
-- Design      : spad_manager_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7vx690tffg1761-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity spad_manager_0_read_process_manager is
  port (
    O1 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ColSelect : out STD_LOGIC_VECTOR ( 5 downto 0 );
    RowSelect : out STD_LOGIC_VECTOR ( 2 downto 0 );
    O2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    RowGroup : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    ReadEnable : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of spad_manager_0_read_process_manager : entity is "read_process_manager";
end spad_manager_0_read_process_manager;

architecture STRUCTURE of spad_manager_0_read_process_manager is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal get_next_state_return : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal inc_address : STD_LOGIC;
  signal \n_0_ColSelect[2]_INST_0_i_2\ : STD_LOGIC;
  signal \n_0_FrameId[31]_i_2\ : STD_LOGIC;
  signal n_0_RowGroup_INST_0_i_10 : STD_LOGIC;
  signal n_0_RowGroup_INST_0_i_11 : STD_LOGIC;
  signal n_0_RowGroup_INST_0_i_12 : STD_LOGIC;
  signal n_0_RowGroup_INST_0_i_13 : STD_LOGIC;
  signal n_0_RowGroup_INST_0_i_14 : STD_LOGIC;
  signal n_0_RowGroup_INST_0_i_15 : STD_LOGIC;
  signal n_0_RowGroup_INST_0_i_16 : STD_LOGIC;
  signal n_0_RowGroup_INST_0_i_17 : STD_LOGIC;
  signal n_0_RowGroup_INST_0_i_18 : STD_LOGIC;
  signal n_0_RowGroup_INST_0_i_19 : STD_LOGIC;
  signal n_0_RowGroup_INST_0_i_2 : STD_LOGIC;
  signal n_0_RowGroup_INST_0_i_20 : STD_LOGIC;
  signal n_0_RowGroup_INST_0_i_21 : STD_LOGIC;
  signal n_0_RowGroup_INST_0_i_22 : STD_LOGIC;
  signal n_0_RowGroup_INST_0_i_23 : STD_LOGIC;
  signal n_0_RowGroup_INST_0_i_24 : STD_LOGIC;
  signal n_0_RowGroup_INST_0_i_25 : STD_LOGIC;
  signal n_0_RowGroup_INST_0_i_26 : STD_LOGIC;
  signal n_0_RowGroup_INST_0_i_27 : STD_LOGIC;
  signal n_0_RowGroup_INST_0_i_28 : STD_LOGIC;
  signal n_0_RowGroup_INST_0_i_29 : STD_LOGIC;
  signal n_0_RowGroup_INST_0_i_30 : STD_LOGIC;
  signal n_0_RowGroup_INST_0_i_31 : STD_LOGIC;
  signal n_0_RowGroup_INST_0_i_32 : STD_LOGIC;
  signal n_0_RowGroup_INST_0_i_33 : STD_LOGIC;
  signal n_0_RowGroup_INST_0_i_34 : STD_LOGIC;
  signal n_0_RowGroup_INST_0_i_4 : STD_LOGIC;
  signal n_0_RowGroup_INST_0_i_5 : STD_LOGIC;
  signal n_0_RowGroup_INST_0_i_6 : STD_LOGIC;
  signal n_0_RowGroup_INST_0_i_7 : STD_LOGIC;
  signal n_0_RowGroup_INST_0_i_8 : STD_LOGIC;
  signal n_0_RowGroup_INST_0_i_9 : STD_LOGIC;
  signal \n_0_RowSelect[2]_INST_0_i_1\ : STD_LOGIC;
  signal \n_0_RowSelect[2]_INST_0_i_10\ : STD_LOGIC;
  signal \n_0_RowSelect[2]_INST_0_i_2\ : STD_LOGIC;
  signal \n_0_RowSelect[2]_INST_0_i_4\ : STD_LOGIC;
  signal \n_0_RowSelect[2]_INST_0_i_5\ : STD_LOGIC;
  signal \n_0_RowSelect[2]_INST_0_i_6\ : STD_LOGIC;
  signal \n_0_RowSelect[2]_INST_0_i_7\ : STD_LOGIC;
  signal \n_0_RowSelect[2]_INST_0_i_8\ : STD_LOGIC;
  signal \n_0_RowSelect[2]_INST_0_i_9\ : STD_LOGIC;
  signal \n_0_prev_requested_address[0]_i_1\ : STD_LOGIC;
  signal \n_0_prev_requested_address[1]_i_1\ : STD_LOGIC;
  signal \n_0_prev_requested_address[2]_i_1\ : STD_LOGIC;
  signal \n_0_prev_requested_address[3]_i_1\ : STD_LOGIC;
  signal \n_0_prev_requested_address[4]_i_1\ : STD_LOGIC;
  signal \n_0_prev_requested_address[5]_i_1\ : STD_LOGIC;
  signal \n_0_prev_requested_address[6]_i_1\ : STD_LOGIC;
  signal \n_0_prev_requested_address[7]_i_1\ : STD_LOGIC;
  signal \n_0_prev_requested_address[8]_i_1\ : STD_LOGIC;
  signal \n_0_prev_state[0]_i_1\ : STD_LOGIC;
  signal \n_0_prev_state[1]_i_1\ : STD_LOGIC;
  signal \n_0_prev_state[2]_i_1\ : STD_LOGIC;
  signal \n_0_prev_state[3]_i_1\ : STD_LOGIC;
  signal \n_0_prev_state_counter[0]_i_1\ : STD_LOGIC;
  signal \n_0_prev_state_counter[12]_i_1\ : STD_LOGIC;
  signal \n_0_prev_state_counter[12]_i_3\ : STD_LOGIC;
  signal \n_0_prev_state_counter[12]_i_4\ : STD_LOGIC;
  signal \n_0_prev_state_counter[12]_i_5\ : STD_LOGIC;
  signal \n_0_prev_state_counter[12]_i_6\ : STD_LOGIC;
  signal \n_0_prev_state_counter[13]_i_3\ : STD_LOGIC;
  signal \n_0_prev_state_counter[4]_i_2\ : STD_LOGIC;
  signal \n_0_prev_state_counter[4]_i_3\ : STD_LOGIC;
  signal \n_0_prev_state_counter[4]_i_4\ : STD_LOGIC;
  signal \n_0_prev_state_counter[4]_i_5\ : STD_LOGIC;
  signal \n_0_prev_state_counter[8]_i_2\ : STD_LOGIC;
  signal \n_0_prev_state_counter[8]_i_3\ : STD_LOGIC;
  signal \n_0_prev_state_counter[8]_i_4\ : STD_LOGIC;
  signal \n_0_prev_state_counter[8]_i_5\ : STD_LOGIC;
  signal \n_0_prev_state_counter_reg[12]_i_2\ : STD_LOGIC;
  signal \n_0_prev_state_counter_reg[4]_i_1\ : STD_LOGIC;
  signal \n_0_prev_state_counter_reg[8]_i_1\ : STD_LOGIC;
  signal n_1_RowGroup_INST_0_i_1 : STD_LOGIC;
  signal n_1_RowGroup_INST_0_i_19 : STD_LOGIC;
  signal n_1_RowGroup_INST_0_i_2 : STD_LOGIC;
  signal n_1_RowGroup_INST_0_i_21 : STD_LOGIC;
  signal n_1_RowGroup_INST_0_i_22 : STD_LOGIC;
  signal \n_1_prev_state_counter_reg[12]_i_2\ : STD_LOGIC;
  signal \n_1_prev_state_counter_reg[4]_i_1\ : STD_LOGIC;
  signal \n_1_prev_state_counter_reg[8]_i_1\ : STD_LOGIC;
  signal n_2_RowGroup_INST_0_i_1 : STD_LOGIC;
  signal n_2_RowGroup_INST_0_i_19 : STD_LOGIC;
  signal n_2_RowGroup_INST_0_i_2 : STD_LOGIC;
  signal n_2_RowGroup_INST_0_i_21 : STD_LOGIC;
  signal n_2_RowGroup_INST_0_i_22 : STD_LOGIC;
  signal \n_2_prev_state_counter_reg[12]_i_2\ : STD_LOGIC;
  signal \n_2_prev_state_counter_reg[4]_i_1\ : STD_LOGIC;
  signal \n_2_prev_state_counter_reg[8]_i_1\ : STD_LOGIC;
  signal n_3_RowGroup_INST_0_i_1 : STD_LOGIC;
  signal n_3_RowGroup_INST_0_i_19 : STD_LOGIC;
  signal n_3_RowGroup_INST_0_i_2 : STD_LOGIC;
  signal n_3_RowGroup_INST_0_i_21 : STD_LOGIC;
  signal n_3_RowGroup_INST_0_i_22 : STD_LOGIC;
  signal \n_3_prev_state_counter_reg[12]_i_2\ : STD_LOGIC;
  signal \n_3_prev_state_counter_reg[4]_i_1\ : STD_LOGIC;
  signal \n_3_prev_state_counter_reg[8]_i_1\ : STD_LOGIC;
  signal \n_4_prev_state_counter_reg[12]_i_2\ : STD_LOGIC;
  signal \n_4_prev_state_counter_reg[4]_i_1\ : STD_LOGIC;
  signal \n_4_prev_state_counter_reg[8]_i_1\ : STD_LOGIC;
  signal \n_5_prev_state_counter_reg[12]_i_2\ : STD_LOGIC;
  signal \n_5_prev_state_counter_reg[4]_i_1\ : STD_LOGIC;
  signal \n_5_prev_state_counter_reg[8]_i_1\ : STD_LOGIC;
  signal \n_6_prev_state_counter_reg[12]_i_2\ : STD_LOGIC;
  signal \n_6_prev_state_counter_reg[4]_i_1\ : STD_LOGIC;
  signal \n_6_prev_state_counter_reg[8]_i_1\ : STD_LOGIC;
  signal \n_7_prev_state_counter_reg[12]_i_2\ : STD_LOGIC;
  signal \n_7_prev_state_counter_reg[13]_i_2\ : STD_LOGIC;
  signal \n_7_prev_state_counter_reg[4]_i_1\ : STD_LOGIC;
  signal \n_7_prev_state_counter_reg[8]_i_1\ : STD_LOGIC;
  signal prev_read_data : STD_LOGIC;
  signal prev_requested_address : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal prev_state_counter : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal state_counter : STD_LOGIC_VECTOR ( 13 to 13 );
  signal state_time_expired : STD_LOGIC;
  signal state_time_expired0 : STD_LOGIC_VECTOR ( 14 downto 1 );
  signal zeroize : STD_LOGIC;
  signal NLW_RowGroup_INST_0_i_1_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_RowGroup_INST_0_i_2_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_RowGroup_INST_0_i_3_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_RowGroup_INST_0_i_3_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_prev_state_counter_reg[13]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_prev_state_counter_reg[13]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ColSelect[0]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \ColSelect[2]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \ColSelect[3]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \ColSelect[5]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FrameId[31]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of RowGroup_INST_0 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \RowSelect[2]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \RowSelect[2]_INST_0_i_10\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \prev_requested_address[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \prev_requested_address[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \prev_requested_address[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \prev_requested_address[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \prev_requested_address[5]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \prev_requested_address[6]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \prev_requested_address[8]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \prev_state[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \prev_state[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \prev_state_counter[13]_i_1\ : label is "soft_lutpair7";
begin
  E(0) <= \^e\(0);
\ColSelect[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06000000"
    )
    port map (
      I0 => inc_address,
      I1 => prev_requested_address(0),
      I2 => reset,
      I3 => Q(0),
      I4 => prev_read_data,
      O => ColSelect(0)
    );
\ColSelect[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"006A000000000000"
    )
    port map (
      I0 => prev_requested_address(1),
      I1 => inc_address,
      I2 => prev_requested_address(0),
      I3 => reset,
      I4 => Q(0),
      I5 => prev_read_data,
      O => ColSelect(1)
    );
\ColSelect[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006AAA"
    )
    port map (
      I0 => prev_requested_address(2),
      I1 => inc_address,
      I2 => prev_requested_address(0),
      I3 => prev_requested_address(1),
      I4 => zeroize,
      O => ColSelect(2)
    );
\ColSelect[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000008000"
    )
    port map (
      I0 => \n_0_RowSelect[2]_INST_0_i_6\,
      I1 => \n_0_RowSelect[2]_INST_0_i_5\,
      I2 => \n_0_ColSelect[2]_INST_0_i_2\,
      I3 => get_next_state_return(1),
      I4 => get_next_state_return(0),
      I5 => state_time_expired,
      O => inc_address
    );
\ColSelect[2]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100011"
    )
    port map (
      I0 => get_next_state_return(2),
      I1 => get_next_state_return(3),
      I2 => state_time_expired,
      I3 => zeroize,
      I4 => \n_7_prev_state_counter_reg[13]_i_2\,
      O => \n_0_ColSelect[2]_INST_0_i_2\
    );
\ColSelect[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06000000"
    )
    port map (
      I0 => prev_requested_address(3),
      I1 => \n_0_RowSelect[2]_INST_0_i_2\,
      I2 => reset,
      I3 => Q(0),
      I4 => prev_read_data,
      O => ColSelect(3)
    );
\ColSelect[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"006A000000000000"
    )
    port map (
      I0 => prev_requested_address(4),
      I1 => prev_requested_address(3),
      I2 => \n_0_RowSelect[2]_INST_0_i_2\,
      I3 => reset,
      I4 => Q(0),
      I5 => prev_read_data,
      O => ColSelect(4)
    );
\ColSelect[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006AAA"
    )
    port map (
      I0 => prev_requested_address(5),
      I1 => \n_0_RowSelect[2]_INST_0_i_2\,
      I2 => prev_requested_address(4),
      I3 => prev_requested_address(3),
      I4 => zeroize,
      O => ColSelect(5)
    );
\FrameId[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => reset,
      I1 => prev_read_data,
      I2 => Q(0),
      I3 => \n_0_FrameId[31]_i_2\,
      O => O2(0)
    );
\FrameId[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
    port map (
      I0 => get_next_state_return(2),
      I1 => get_next_state_return(1),
      I2 => get_next_state_return(0),
      I3 => state_time_expired,
      I4 => get_next_state_return(3),
      O => \n_0_FrameId[31]_i_2\
    );
\PixelOut0[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFBBFCB8"
    )
    port map (
      I0 => get_next_state_return(3),
      I1 => state_time_expired,
      I2 => get_next_state_return(0),
      I3 => get_next_state_return(1),
      I4 => get_next_state_return(2),
      I5 => zeroize,
      O => \^e\(0)
    );
ReadEnable_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => ReadEnable,
      I1 => reset,
      I2 => \^e\(0),
      O => O1
    );
RowGroup_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F0E0C0E"
    )
    port map (
      I0 => get_next_state_return(0),
      I1 => get_next_state_return(3),
      I2 => zeroize,
      I3 => state_time_expired,
      I4 => get_next_state_return(2),
      O => RowGroup
    );
RowGroup_INST_0_i_1: unisim.vcomponents.CARRY4
    port map (
      CI => n_0_RowGroup_INST_0_i_2,
      CO(3) => state_time_expired,
      CO(2) => n_1_RowGroup_INST_0_i_1,
      CO(1) => n_2_RowGroup_INST_0_i_1,
      CO(0) => n_3_RowGroup_INST_0_i_1,
      CYINIT => '0',
      DI(3) => state_time_expired0(14),
      DI(2) => n_0_RowGroup_INST_0_i_4,
      DI(1) => n_0_RowGroup_INST_0_i_5,
      DI(0) => n_0_RowGroup_INST_0_i_6,
      O(3 downto 0) => NLW_RowGroup_INST_0_i_1_O_UNCONNECTED(3 downto 0),
      S(3) => n_0_RowGroup_INST_0_i_7,
      S(2) => n_0_RowGroup_INST_0_i_8,
      S(1) => n_0_RowGroup_INST_0_i_9,
      S(0) => n_0_RowGroup_INST_0_i_10
    );
RowGroup_INST_0_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => state_time_expired0(9),
      I1 => state_time_expired0(8),
      O => n_0_RowGroup_INST_0_i_10
    );
RowGroup_INST_0_i_11: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => state_time_expired0(6),
      I1 => state_time_expired0(7),
      O => n_0_RowGroup_INST_0_i_11
    );
RowGroup_INST_0_i_12: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => state_time_expired0(4),
      I1 => state_time_expired0(5),
      O => n_0_RowGroup_INST_0_i_12
    );
RowGroup_INST_0_i_13: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFAAA8"
    )
    port map (
      I0 => state_time_expired0(2),
      I1 => get_next_state_return(0),
      I2 => get_next_state_return(2),
      I3 => get_next_state_return(3),
      I4 => state_time_expired0(3),
      O => n_0_RowGroup_INST_0_i_13
    );
RowGroup_INST_0_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22202222BBBABBAB"
    )
    port map (
      I0 => state_time_expired0(1),
      I1 => get_next_state_return(0),
      I2 => get_next_state_return(3),
      I3 => get_next_state_return(1),
      I4 => get_next_state_return(2),
      I5 => prev_state_counter(0),
      O => n_0_RowGroup_INST_0_i_14
    );
RowGroup_INST_0_i_15: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => state_time_expired0(7),
      I1 => state_time_expired0(6),
      O => n_0_RowGroup_INST_0_i_15
    );
RowGroup_INST_0_i_16: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => state_time_expired0(5),
      I1 => state_time_expired0(4),
      O => n_0_RowGroup_INST_0_i_16
    );
RowGroup_INST_0_i_17: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000001FE"
    )
    port map (
      I0 => get_next_state_return(0),
      I1 => get_next_state_return(2),
      I2 => get_next_state_return(3),
      I3 => state_time_expired0(2),
      I4 => state_time_expired0(3),
      O => n_0_RowGroup_INST_0_i_17
    );
RowGroup_INST_0_i_18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABAA545100000004"
    )
    port map (
      I0 => get_next_state_return(0),
      I1 => get_next_state_return(3),
      I2 => get_next_state_return(1),
      I3 => get_next_state_return(2),
      I4 => state_time_expired0(1),
      I5 => prev_state_counter(0),
      O => n_0_RowGroup_INST_0_i_18
    );
RowGroup_INST_0_i_19: unisim.vcomponents.CARRY4
    port map (
      CI => n_0_RowGroup_INST_0_i_21,
      CO(3) => n_0_RowGroup_INST_0_i_19,
      CO(2) => n_1_RowGroup_INST_0_i_19,
      CO(1) => n_2_RowGroup_INST_0_i_19,
      CO(0) => n_3_RowGroup_INST_0_i_19,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => state_time_expired0(12 downto 9),
      S(3) => n_0_RowGroup_INST_0_i_23,
      S(2) => n_0_RowGroup_INST_0_i_24,
      S(1) => n_0_RowGroup_INST_0_i_25,
      S(0) => n_0_RowGroup_INST_0_i_26
    );
RowGroup_INST_0_i_2: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3) => n_0_RowGroup_INST_0_i_2,
      CO(2) => n_1_RowGroup_INST_0_i_2,
      CO(1) => n_2_RowGroup_INST_0_i_2,
      CO(0) => n_3_RowGroup_INST_0_i_2,
      CYINIT => '1',
      DI(3) => n_0_RowGroup_INST_0_i_11,
      DI(2) => n_0_RowGroup_INST_0_i_12,
      DI(1) => n_0_RowGroup_INST_0_i_13,
      DI(0) => n_0_RowGroup_INST_0_i_14,
      O(3 downto 0) => NLW_RowGroup_INST_0_i_2_O_UNCONNECTED(3 downto 0),
      S(3) => n_0_RowGroup_INST_0_i_15,
      S(2) => n_0_RowGroup_INST_0_i_16,
      S(1) => n_0_RowGroup_INST_0_i_17,
      S(0) => n_0_RowGroup_INST_0_i_18
    );
RowGroup_INST_0_i_20: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => prev_state_counter(13),
      O => n_0_RowGroup_INST_0_i_20
    );
RowGroup_INST_0_i_21: unisim.vcomponents.CARRY4
    port map (
      CI => n_0_RowGroup_INST_0_i_22,
      CO(3) => n_0_RowGroup_INST_0_i_21,
      CO(2) => n_1_RowGroup_INST_0_i_21,
      CO(1) => n_2_RowGroup_INST_0_i_21,
      CO(0) => n_3_RowGroup_INST_0_i_21,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => state_time_expired0(8 downto 5),
      S(3) => n_0_RowGroup_INST_0_i_27,
      S(2) => n_0_RowGroup_INST_0_i_28,
      S(1) => n_0_RowGroup_INST_0_i_29,
      S(0) => n_0_RowGroup_INST_0_i_30
    );
RowGroup_INST_0_i_22: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3) => n_0_RowGroup_INST_0_i_22,
      CO(2) => n_1_RowGroup_INST_0_i_22,
      CO(1) => n_2_RowGroup_INST_0_i_22,
      CO(0) => n_3_RowGroup_INST_0_i_22,
      CYINIT => prev_state_counter(0),
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => state_time_expired0(4 downto 1),
      S(3) => n_0_RowGroup_INST_0_i_31,
      S(2) => n_0_RowGroup_INST_0_i_32,
      S(1) => n_0_RowGroup_INST_0_i_33,
      S(0) => n_0_RowGroup_INST_0_i_34
    );
RowGroup_INST_0_i_23: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => prev_state_counter(12),
      O => n_0_RowGroup_INST_0_i_23
    );
RowGroup_INST_0_i_24: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => prev_state_counter(11),
      O => n_0_RowGroup_INST_0_i_24
    );
RowGroup_INST_0_i_25: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => prev_state_counter(10),
      O => n_0_RowGroup_INST_0_i_25
    );
RowGroup_INST_0_i_26: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => prev_state_counter(9),
      O => n_0_RowGroup_INST_0_i_26
    );
RowGroup_INST_0_i_27: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => prev_state_counter(8),
      O => n_0_RowGroup_INST_0_i_27
    );
RowGroup_INST_0_i_28: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => prev_state_counter(7),
      O => n_0_RowGroup_INST_0_i_28
    );
RowGroup_INST_0_i_29: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => prev_state_counter(6),
      O => n_0_RowGroup_INST_0_i_29
    );
RowGroup_INST_0_i_3: unisim.vcomponents.CARRY4
    port map (
      CI => n_0_RowGroup_INST_0_i_19,
      CO(3 downto 2) => NLW_RowGroup_INST_0_i_3_CO_UNCONNECTED(3 downto 2),
      CO(1) => state_time_expired0(14),
      CO(0) => NLW_RowGroup_INST_0_i_3_CO_UNCONNECTED(0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 1) => NLW_RowGroup_INST_0_i_3_O_UNCONNECTED(3 downto 1),
      O(0) => state_time_expired0(13),
      S(3) => '0',
      S(2) => '0',
      S(1) => '1',
      S(0) => n_0_RowGroup_INST_0_i_20
    );
RowGroup_INST_0_i_30: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => prev_state_counter(5),
      O => n_0_RowGroup_INST_0_i_30
    );
RowGroup_INST_0_i_31: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => prev_state_counter(4),
      O => n_0_RowGroup_INST_0_i_31
    );
RowGroup_INST_0_i_32: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => prev_state_counter(3),
      O => n_0_RowGroup_INST_0_i_32
    );
RowGroup_INST_0_i_33: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => prev_state_counter(2),
      O => n_0_RowGroup_INST_0_i_33
    );
RowGroup_INST_0_i_34: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => prev_state_counter(1),
      O => n_0_RowGroup_INST_0_i_34
    );
RowGroup_INST_0_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => state_time_expired0(12),
      I1 => state_time_expired0(13),
      O => n_0_RowGroup_INST_0_i_4
    );
RowGroup_INST_0_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => state_time_expired0(10),
      I1 => state_time_expired0(11),
      O => n_0_RowGroup_INST_0_i_5
    );
RowGroup_INST_0_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => state_time_expired0(8),
      I1 => state_time_expired0(9),
      O => n_0_RowGroup_INST_0_i_6
    );
RowGroup_INST_0_i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => state_time_expired0(14),
      O => n_0_RowGroup_INST_0_i_7
    );
RowGroup_INST_0_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => state_time_expired0(13),
      I1 => state_time_expired0(12),
      O => n_0_RowGroup_INST_0_i_8
    );
RowGroup_INST_0_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => state_time_expired0(11),
      I1 => state_time_expired0(10),
      O => n_0_RowGroup_INST_0_i_9
    );
\RowSelect[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000006AAAAAAA"
    )
    port map (
      I0 => prev_requested_address(6),
      I1 => \n_0_RowSelect[2]_INST_0_i_2\,
      I2 => prev_requested_address(5),
      I3 => prev_requested_address(3),
      I4 => prev_requested_address(4),
      I5 => zeroize,
      O => RowSelect(0)
    );
\RowSelect[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A6000000000000"
    )
    port map (
      I0 => prev_requested_address(7),
      I1 => \n_0_RowSelect[2]_INST_0_i_2\,
      I2 => \n_0_RowSelect[2]_INST_0_i_1\,
      I3 => reset,
      I4 => Q(0),
      I5 => prev_read_data,
      O => RowSelect(1)
    );
\RowSelect[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00009AAA"
    )
    port map (
      I0 => prev_requested_address(8),
      I1 => \n_0_RowSelect[2]_INST_0_i_1\,
      I2 => prev_requested_address(7),
      I3 => \n_0_RowSelect[2]_INST_0_i_2\,
      I4 => zeroize,
      O => RowSelect(2)
    );
\RowSelect[2]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => prev_requested_address(5),
      I1 => prev_requested_address(3),
      I2 => prev_requested_address(4),
      I3 => prev_requested_address(6),
      O => \n_0_RowSelect[2]_INST_0_i_1\
    );
\RowSelect[2]_INST_0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => state_time_expired,
      I1 => reset,
      I2 => Q(0),
      I3 => prev_read_data,
      O => \n_0_RowSelect[2]_INST_0_i_10\
    );
\RowSelect[2]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => prev_requested_address(1),
      I1 => prev_requested_address(0),
      I2 => prev_requested_address(2),
      I3 => \n_0_RowSelect[2]_INST_0_i_4\,
      I4 => \n_0_RowSelect[2]_INST_0_i_5\,
      I5 => \n_0_RowSelect[2]_INST_0_i_6\,
      O => \n_0_RowSelect[2]_INST_0_i_2\
    );
\RowSelect[2]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
    port map (
      I0 => prev_read_data,
      I1 => Q(0),
      I2 => reset,
      O => zeroize
    );
\RowSelect[2]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000003100000000"
    )
    port map (
      I0 => \n_7_prev_state_counter_reg[13]_i_2\,
      I1 => zeroize,
      I2 => state_time_expired,
      I3 => get_next_state_return(3),
      I4 => get_next_state_return(2),
      I5 => \n_0_RowSelect[2]_INST_0_i_7\,
      O => \n_0_RowSelect[2]_INST_0_i_4\
    );
\RowSelect[2]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00020000FFFFFFFF"
    )
    port map (
      I0 => \n_0_RowSelect[2]_INST_0_i_8\,
      I1 => \n_7_prev_state_counter_reg[4]_i_1\,
      I2 => \n_6_prev_state_counter_reg[4]_i_1\,
      I3 => \n_5_prev_state_counter_reg[4]_i_1\,
      I4 => \n_0_RowSelect[2]_INST_0_i_9\,
      I5 => \n_0_RowSelect[2]_INST_0_i_10\,
      O => \n_0_RowSelect[2]_INST_0_i_5\
    );
\RowSelect[2]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF7FFFFFFF"
    )
    port map (
      I0 => prev_requested_address(1),
      I1 => prev_requested_address(0),
      I2 => prev_requested_address(7),
      I3 => prev_requested_address(2),
      I4 => prev_requested_address(8),
      I5 => \n_0_RowSelect[2]_INST_0_i_1\,
      O => \n_0_RowSelect[2]_INST_0_i_6\
    );
\RowSelect[2]_INST_0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"18"
    )
    port map (
      I0 => state_time_expired,
      I1 => get_next_state_return(0),
      I2 => get_next_state_return(1),
      O => \n_0_RowSelect[2]_INST_0_i_7\
    );
\RowSelect[2]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
    port map (
      I0 => \n_4_prev_state_counter_reg[8]_i_1\,
      I1 => \n_7_prev_state_counter_reg[12]_i_2\,
      I2 => \n_6_prev_state_counter_reg[12]_i_2\,
      I3 => \n_5_prev_state_counter_reg[12]_i_2\,
      I4 => \n_4_prev_state_counter_reg[12]_i_2\,
      I5 => prev_state_counter(0),
      O => \n_0_RowSelect[2]_INST_0_i_8\
    );
\RowSelect[2]_INST_0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => \n_5_prev_state_counter_reg[8]_i_1\,
      I1 => \n_6_prev_state_counter_reg[8]_i_1\,
      I2 => \n_7_prev_state_counter_reg[8]_i_1\,
      I3 => \n_4_prev_state_counter_reg[4]_i_1\,
      O => \n_0_RowSelect[2]_INST_0_i_9\
    );
prev_read_data_reg: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => Q(0),
      Q => prev_read_data,
      R => '0'
    );
\prev_requested_address[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => prev_requested_address(0),
      I1 => inc_address,
      O => \n_0_prev_requested_address[0]_i_1\
    );
\prev_requested_address[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => prev_requested_address(0),
      I1 => inc_address,
      I2 => prev_requested_address(1),
      O => \n_0_prev_requested_address[1]_i_1\
    );
\prev_requested_address[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
    port map (
      I0 => prev_requested_address(1),
      I1 => prev_requested_address(0),
      I2 => inc_address,
      I3 => prev_requested_address(2),
      O => \n_0_prev_requested_address[2]_i_1\
    );
\prev_requested_address[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => \n_0_RowSelect[2]_INST_0_i_2\,
      I1 => prev_requested_address(3),
      O => \n_0_prev_requested_address[3]_i_1\
    );
\prev_requested_address[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => \n_0_RowSelect[2]_INST_0_i_2\,
      I1 => prev_requested_address(3),
      I2 => prev_requested_address(4),
      O => \n_0_prev_requested_address[4]_i_1\
    );
\prev_requested_address[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
    port map (
      I0 => prev_requested_address(3),
      I1 => prev_requested_address(4),
      I2 => \n_0_RowSelect[2]_INST_0_i_2\,
      I3 => prev_requested_address(5),
      O => \n_0_prev_requested_address[5]_i_1\
    );
\prev_requested_address[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
    port map (
      I0 => prev_requested_address(4),
      I1 => prev_requested_address(3),
      I2 => prev_requested_address(5),
      I3 => \n_0_RowSelect[2]_INST_0_i_2\,
      I4 => prev_requested_address(6),
      O => \n_0_prev_requested_address[6]_i_1\
    );
\prev_requested_address[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
    port map (
      I0 => prev_requested_address(5),
      I1 => prev_requested_address(3),
      I2 => prev_requested_address(4),
      I3 => prev_requested_address(6),
      I4 => \n_0_RowSelect[2]_INST_0_i_2\,
      I5 => prev_requested_address(7),
      O => \n_0_prev_requested_address[7]_i_1\
    );
\prev_requested_address[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
    port map (
      I0 => \n_0_RowSelect[2]_INST_0_i_2\,
      I1 => prev_requested_address(7),
      I2 => \n_0_RowSelect[2]_INST_0_i_1\,
      I3 => prev_requested_address(8),
      O => \n_0_prev_requested_address[8]_i_1\
    );
\prev_requested_address_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_prev_requested_address[0]_i_1\,
      Q => prev_requested_address(0),
      R => zeroize
    );
\prev_requested_address_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_prev_requested_address[1]_i_1\,
      Q => prev_requested_address(1),
      R => zeroize
    );
\prev_requested_address_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_prev_requested_address[2]_i_1\,
      Q => prev_requested_address(2),
      R => zeroize
    );
\prev_requested_address_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_prev_requested_address[3]_i_1\,
      Q => prev_requested_address(3),
      R => zeroize
    );
\prev_requested_address_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_prev_requested_address[4]_i_1\,
      Q => prev_requested_address(4),
      R => zeroize
    );
\prev_requested_address_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_prev_requested_address[5]_i_1\,
      Q => prev_requested_address(5),
      R => zeroize
    );
\prev_requested_address_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_prev_requested_address[6]_i_1\,
      Q => prev_requested_address(6),
      R => zeroize
    );
\prev_requested_address_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_prev_requested_address[7]_i_1\,
      Q => prev_requested_address(7),
      R => zeroize
    );
\prev_requested_address_reg[8]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_prev_requested_address[8]_i_1\,
      Q => prev_requested_address(8),
      R => zeroize
    );
\prev_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF7F7F7FFF7"
    )
    port map (
      I0 => prev_read_data,
      I1 => Q(0),
      I2 => reset,
      I3 => get_next_state_return(1),
      I4 => state_time_expired,
      I5 => get_next_state_return(0),
      O => \n_0_prev_state[0]_i_1\
    );
\prev_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => get_next_state_return(1),
      I1 => state_time_expired,
      I2 => get_next_state_return(2),
      O => \n_0_prev_state[1]_i_1\
    );
\prev_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080008000C00000"
    )
    port map (
      I0 => get_next_state_return(2),
      I1 => prev_read_data,
      I2 => Q(0),
      I3 => reset,
      I4 => get_next_state_return(3),
      I5 => state_time_expired,
      O => \n_0_prev_state[2]_i_1\
    );
\prev_state[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => get_next_state_return(3),
      I1 => state_time_expired,
      I2 => get_next_state_return(0),
      O => \n_0_prev_state[3]_i_1\
    );
\prev_state_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => prev_state_counter(0),
      O => \n_0_prev_state_counter[0]_i_1\
    );
\prev_state_counter[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
    port map (
      I0 => prev_read_data,
      I1 => Q(0),
      I2 => reset,
      I3 => state_time_expired,
      O => \n_0_prev_state_counter[12]_i_1\
    );
\prev_state_counter[12]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => prev_state_counter(12),
      O => \n_0_prev_state_counter[12]_i_3\
    );
\prev_state_counter[12]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => prev_state_counter(11),
      O => \n_0_prev_state_counter[12]_i_4\
    );
\prev_state_counter[12]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => prev_state_counter(10),
      O => \n_0_prev_state_counter[12]_i_5\
    );
\prev_state_counter[12]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => prev_state_counter(9),
      O => \n_0_prev_state_counter[12]_i_6\
    );
\prev_state_counter[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
    port map (
      I0 => \n_7_prev_state_counter_reg[13]_i_2\,
      I1 => prev_read_data,
      I2 => Q(0),
      I3 => reset,
      I4 => state_time_expired,
      O => state_counter(13)
    );
\prev_state_counter[13]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => prev_state_counter(13),
      O => \n_0_prev_state_counter[13]_i_3\
    );
\prev_state_counter[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => prev_state_counter(4),
      O => \n_0_prev_state_counter[4]_i_2\
    );
\prev_state_counter[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => prev_state_counter(3),
      O => \n_0_prev_state_counter[4]_i_3\
    );
\prev_state_counter[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => prev_state_counter(2),
      O => \n_0_prev_state_counter[4]_i_4\
    );
\prev_state_counter[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => prev_state_counter(1),
      O => \n_0_prev_state_counter[4]_i_5\
    );
\prev_state_counter[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => prev_state_counter(8),
      O => \n_0_prev_state_counter[8]_i_2\
    );
\prev_state_counter[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => prev_state_counter(7),
      O => \n_0_prev_state_counter[8]_i_3\
    );
\prev_state_counter[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => prev_state_counter(6),
      O => \n_0_prev_state_counter[8]_i_4\
    );
\prev_state_counter[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => prev_state_counter(5),
      O => \n_0_prev_state_counter[8]_i_5\
    );
\prev_state_counter_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_prev_state_counter[0]_i_1\,
      Q => prev_state_counter(0),
      R => \n_0_prev_state_counter[12]_i_1\
    );
\prev_state_counter_reg[10]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_6_prev_state_counter_reg[12]_i_2\,
      Q => prev_state_counter(10),
      R => \n_0_prev_state_counter[12]_i_1\
    );
\prev_state_counter_reg[11]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_5_prev_state_counter_reg[12]_i_2\,
      Q => prev_state_counter(11),
      R => \n_0_prev_state_counter[12]_i_1\
    );
\prev_state_counter_reg[12]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_4_prev_state_counter_reg[12]_i_2\,
      Q => prev_state_counter(12),
      R => \n_0_prev_state_counter[12]_i_1\
    );
\prev_state_counter_reg[12]_i_2\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_prev_state_counter_reg[8]_i_1\,
      CO(3) => \n_0_prev_state_counter_reg[12]_i_2\,
      CO(2) => \n_1_prev_state_counter_reg[12]_i_2\,
      CO(1) => \n_2_prev_state_counter_reg[12]_i_2\,
      CO(0) => \n_3_prev_state_counter_reg[12]_i_2\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_prev_state_counter_reg[12]_i_2\,
      O(2) => \n_5_prev_state_counter_reg[12]_i_2\,
      O(1) => \n_6_prev_state_counter_reg[12]_i_2\,
      O(0) => \n_7_prev_state_counter_reg[12]_i_2\,
      S(3) => \n_0_prev_state_counter[12]_i_3\,
      S(2) => \n_0_prev_state_counter[12]_i_4\,
      S(1) => \n_0_prev_state_counter[12]_i_5\,
      S(0) => \n_0_prev_state_counter[12]_i_6\
    );
\prev_state_counter_reg[13]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => state_counter(13),
      Q => prev_state_counter(13),
      R => '0'
    );
\prev_state_counter_reg[13]_i_2\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_prev_state_counter_reg[12]_i_2\,
      CO(3 downto 0) => \NLW_prev_state_counter_reg[13]_i_2_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 1) => \NLW_prev_state_counter_reg[13]_i_2_O_UNCONNECTED\(3 downto 1),
      O(0) => \n_7_prev_state_counter_reg[13]_i_2\,
      S(3) => '0',
      S(2) => '0',
      S(1) => '0',
      S(0) => \n_0_prev_state_counter[13]_i_3\
    );
\prev_state_counter_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_7_prev_state_counter_reg[4]_i_1\,
      Q => prev_state_counter(1),
      R => \n_0_prev_state_counter[12]_i_1\
    );
\prev_state_counter_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_6_prev_state_counter_reg[4]_i_1\,
      Q => prev_state_counter(2),
      R => \n_0_prev_state_counter[12]_i_1\
    );
\prev_state_counter_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_5_prev_state_counter_reg[4]_i_1\,
      Q => prev_state_counter(3),
      R => \n_0_prev_state_counter[12]_i_1\
    );
\prev_state_counter_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_4_prev_state_counter_reg[4]_i_1\,
      Q => prev_state_counter(4),
      R => \n_0_prev_state_counter[12]_i_1\
    );
\prev_state_counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3) => \n_0_prev_state_counter_reg[4]_i_1\,
      CO(2) => \n_1_prev_state_counter_reg[4]_i_1\,
      CO(1) => \n_2_prev_state_counter_reg[4]_i_1\,
      CO(0) => \n_3_prev_state_counter_reg[4]_i_1\,
      CYINIT => prev_state_counter(0),
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_prev_state_counter_reg[4]_i_1\,
      O(2) => \n_5_prev_state_counter_reg[4]_i_1\,
      O(1) => \n_6_prev_state_counter_reg[4]_i_1\,
      O(0) => \n_7_prev_state_counter_reg[4]_i_1\,
      S(3) => \n_0_prev_state_counter[4]_i_2\,
      S(2) => \n_0_prev_state_counter[4]_i_3\,
      S(1) => \n_0_prev_state_counter[4]_i_4\,
      S(0) => \n_0_prev_state_counter[4]_i_5\
    );
\prev_state_counter_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_7_prev_state_counter_reg[8]_i_1\,
      Q => prev_state_counter(5),
      R => \n_0_prev_state_counter[12]_i_1\
    );
\prev_state_counter_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_6_prev_state_counter_reg[8]_i_1\,
      Q => prev_state_counter(6),
      R => \n_0_prev_state_counter[12]_i_1\
    );
\prev_state_counter_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_5_prev_state_counter_reg[8]_i_1\,
      Q => prev_state_counter(7),
      R => \n_0_prev_state_counter[12]_i_1\
    );
\prev_state_counter_reg[8]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_4_prev_state_counter_reg[8]_i_1\,
      Q => prev_state_counter(8),
      R => \n_0_prev_state_counter[12]_i_1\
    );
\prev_state_counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_prev_state_counter_reg[4]_i_1\,
      CO(3) => \n_0_prev_state_counter_reg[8]_i_1\,
      CO(2) => \n_1_prev_state_counter_reg[8]_i_1\,
      CO(1) => \n_2_prev_state_counter_reg[8]_i_1\,
      CO(0) => \n_3_prev_state_counter_reg[8]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_prev_state_counter_reg[8]_i_1\,
      O(2) => \n_5_prev_state_counter_reg[8]_i_1\,
      O(1) => \n_6_prev_state_counter_reg[8]_i_1\,
      O(0) => \n_7_prev_state_counter_reg[8]_i_1\,
      S(3) => \n_0_prev_state_counter[8]_i_2\,
      S(2) => \n_0_prev_state_counter[8]_i_3\,
      S(1) => \n_0_prev_state_counter[8]_i_4\,
      S(0) => \n_0_prev_state_counter[8]_i_5\
    );
\prev_state_counter_reg[9]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_7_prev_state_counter_reg[12]_i_2\,
      Q => prev_state_counter(9),
      R => \n_0_prev_state_counter[12]_i_1\
    );
\prev_state_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_prev_state[0]_i_1\,
      Q => get_next_state_return(1),
      R => '0'
    );
\prev_state_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_prev_state[1]_i_1\,
      Q => get_next_state_return(2),
      R => zeroize
    );
\prev_state_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_prev_state[2]_i_1\,
      Q => get_next_state_return(3),
      R => '0'
    );
\prev_state_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_0_prev_state[3]_i_1\,
      Q => get_next_state_return(0),
      R => zeroize
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity spad_manager_0_controller is
  port (
    FrameDurationCurrentClks : out STD_LOGIC_VECTOR ( 21 downto 0 );
    O8 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    O1 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ColSelect : out STD_LOGIC_VECTOR ( 5 downto 0 );
    RowSelect : out STD_LOGIC_VECTOR ( 2 downto 0 );
    O2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    RowGroup : out STD_LOGIC;
    FrameDurationChangeEnable : out STD_LOGIC;
    clk : in STD_LOGIC;
    FrameDurationRequestedClks : in STD_LOGIC_VECTOR ( 21 downto 0 );
    ReadEnable : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of spad_manager_0_controller : entity is "controller";
end spad_manager_0_controller;

architecture STRUCTURE of spad_manager_0_controller is
  signal \^framedurationcurrentclks\ : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal FrameId0 : STD_LOGIC;
  signal FrameId11_out : STD_LOGIC;
  signal \^o8\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal is_next_state_needed : STD_LOGIC;
  signal \n_0_FrameDurationCurrentClks[13]_INST_0\ : STD_LOGIC;
  signal \n_0_FrameDurationCurrentClks[13]_INST_0_i_1\ : STD_LOGIC;
  signal \n_0_FrameDurationCurrentClks[13]_INST_0_i_2\ : STD_LOGIC;
  signal \n_0_FrameDurationCurrentClks[13]_INST_0_i_3\ : STD_LOGIC;
  signal \n_0_FrameDurationCurrentClks[13]_INST_0_i_4\ : STD_LOGIC;
  signal \n_0_FrameDurationCurrentClks[17]_INST_0\ : STD_LOGIC;
  signal \n_0_FrameDurationCurrentClks[17]_INST_0_i_1\ : STD_LOGIC;
  signal \n_0_FrameDurationCurrentClks[17]_INST_0_i_2\ : STD_LOGIC;
  signal \n_0_FrameDurationCurrentClks[17]_INST_0_i_3\ : STD_LOGIC;
  signal \n_0_FrameDurationCurrentClks[17]_INST_0_i_4\ : STD_LOGIC;
  signal \n_0_FrameDurationCurrentClks[1]_INST_0\ : STD_LOGIC;
  signal \n_0_FrameDurationCurrentClks[1]_INST_0_i_1\ : STD_LOGIC;
  signal \n_0_FrameDurationCurrentClks[1]_INST_0_i_2\ : STD_LOGIC;
  signal \n_0_FrameDurationCurrentClks[1]_INST_0_i_3\ : STD_LOGIC;
  signal \n_0_FrameDurationCurrentClks[1]_INST_0_i_4\ : STD_LOGIC;
  signal \n_0_FrameDurationCurrentClks[1]_INST_0_i_5\ : STD_LOGIC;
  signal \n_0_FrameDurationCurrentClks[21]_INST_0_i_1\ : STD_LOGIC;
  signal \n_0_FrameDurationCurrentClks[5]_INST_0\ : STD_LOGIC;
  signal \n_0_FrameDurationCurrentClks[5]_INST_0_i_1\ : STD_LOGIC;
  signal \n_0_FrameDurationCurrentClks[5]_INST_0_i_2\ : STD_LOGIC;
  signal \n_0_FrameDurationCurrentClks[5]_INST_0_i_3\ : STD_LOGIC;
  signal \n_0_FrameDurationCurrentClks[5]_INST_0_i_4\ : STD_LOGIC;
  signal \n_0_FrameDurationCurrentClks[9]_INST_0\ : STD_LOGIC;
  signal \n_0_FrameDurationCurrentClks[9]_INST_0_i_1\ : STD_LOGIC;
  signal \n_0_FrameDurationCurrentClks[9]_INST_0_i_2\ : STD_LOGIC;
  signal \n_0_FrameDurationCurrentClks[9]_INST_0_i_3\ : STD_LOGIC;
  signal \n_0_FrameDurationCurrentClks[9]_INST_0_i_4\ : STD_LOGIC;
  signal \n_0_FrameId[0]_i_1\ : STD_LOGIC;
  signal \n_0_FrameId[0]_i_10\ : STD_LOGIC;
  signal \n_0_FrameId[0]_i_11\ : STD_LOGIC;
  signal \n_0_FrameId[0]_i_12\ : STD_LOGIC;
  signal \n_0_FrameId[0]_i_13\ : STD_LOGIC;
  signal \n_0_FrameId[0]_i_14\ : STD_LOGIC;
  signal \n_0_FrameId[0]_i_15\ : STD_LOGIC;
  signal \n_0_FrameId[0]_i_16\ : STD_LOGIC;
  signal \n_0_FrameId[0]_i_17\ : STD_LOGIC;
  signal \n_0_FrameId[0]_i_5\ : STD_LOGIC;
  signal \n_0_FrameId[0]_i_6\ : STD_LOGIC;
  signal \n_0_FrameId[0]_i_7\ : STD_LOGIC;
  signal \n_0_FrameId[0]_i_8\ : STD_LOGIC;
  signal \n_0_FrameId[12]_i_2\ : STD_LOGIC;
  signal \n_0_FrameId[12]_i_3\ : STD_LOGIC;
  signal \n_0_FrameId[12]_i_4\ : STD_LOGIC;
  signal \n_0_FrameId[12]_i_5\ : STD_LOGIC;
  signal \n_0_FrameId[16]_i_2\ : STD_LOGIC;
  signal \n_0_FrameId[16]_i_3\ : STD_LOGIC;
  signal \n_0_FrameId[16]_i_4\ : STD_LOGIC;
  signal \n_0_FrameId[16]_i_5\ : STD_LOGIC;
  signal \n_0_FrameId[20]_i_2\ : STD_LOGIC;
  signal \n_0_FrameId[20]_i_3\ : STD_LOGIC;
  signal \n_0_FrameId[20]_i_4\ : STD_LOGIC;
  signal \n_0_FrameId[20]_i_5\ : STD_LOGIC;
  signal \n_0_FrameId[24]_i_2\ : STD_LOGIC;
  signal \n_0_FrameId[24]_i_3\ : STD_LOGIC;
  signal \n_0_FrameId[24]_i_4\ : STD_LOGIC;
  signal \n_0_FrameId[24]_i_5\ : STD_LOGIC;
  signal \n_0_FrameId[28]_i_2\ : STD_LOGIC;
  signal \n_0_FrameId[28]_i_3\ : STD_LOGIC;
  signal \n_0_FrameId[28]_i_4\ : STD_LOGIC;
  signal \n_0_FrameId[28]_i_5\ : STD_LOGIC;
  signal \n_0_FrameId[4]_i_2\ : STD_LOGIC;
  signal \n_0_FrameId[4]_i_3\ : STD_LOGIC;
  signal \n_0_FrameId[4]_i_4\ : STD_LOGIC;
  signal \n_0_FrameId[4]_i_5\ : STD_LOGIC;
  signal \n_0_FrameId[8]_i_2\ : STD_LOGIC;
  signal \n_0_FrameId[8]_i_3\ : STD_LOGIC;
  signal \n_0_FrameId[8]_i_4\ : STD_LOGIC;
  signal \n_0_FrameId[8]_i_5\ : STD_LOGIC;
  signal \n_0_FrameId_reg[0]_i_3\ : STD_LOGIC;
  signal \n_0_FrameId_reg[0]_i_4\ : STD_LOGIC;
  signal \n_0_FrameId_reg[0]_i_9\ : STD_LOGIC;
  signal \n_0_FrameId_reg[12]_i_1\ : STD_LOGIC;
  signal \n_0_FrameId_reg[16]_i_1\ : STD_LOGIC;
  signal \n_0_FrameId_reg[20]_i_1\ : STD_LOGIC;
  signal \n_0_FrameId_reg[24]_i_1\ : STD_LOGIC;
  signal \n_0_FrameId_reg[4]_i_1\ : STD_LOGIC;
  signal \n_0_FrameId_reg[8]_i_1\ : STD_LOGIC;
  signal \n_0_state[0]_i_10\ : STD_LOGIC;
  signal \n_0_state[0]_i_12\ : STD_LOGIC;
  signal \n_0_state[0]_i_13\ : STD_LOGIC;
  signal \n_0_state[0]_i_14\ : STD_LOGIC;
  signal \n_0_state[0]_i_15\ : STD_LOGIC;
  signal \n_0_state[0]_i_16\ : STD_LOGIC;
  signal \n_0_state[0]_i_17\ : STD_LOGIC;
  signal \n_0_state[0]_i_18\ : STD_LOGIC;
  signal \n_0_state[0]_i_19\ : STD_LOGIC;
  signal \n_0_state[0]_i_23\ : STD_LOGIC;
  signal \n_0_state[0]_i_24\ : STD_LOGIC;
  signal \n_0_state[0]_i_25\ : STD_LOGIC;
  signal \n_0_state[0]_i_26\ : STD_LOGIC;
  signal \n_0_state[0]_i_27\ : STD_LOGIC;
  signal \n_0_state[0]_i_28\ : STD_LOGIC;
  signal \n_0_state[0]_i_29\ : STD_LOGIC;
  signal \n_0_state[0]_i_3\ : STD_LOGIC;
  signal \n_0_state[0]_i_30\ : STD_LOGIC;
  signal \n_0_state[0]_i_33\ : STD_LOGIC;
  signal \n_0_state[0]_i_34\ : STD_LOGIC;
  signal \n_0_state[0]_i_35\ : STD_LOGIC;
  signal \n_0_state[0]_i_36\ : STD_LOGIC;
  signal \n_0_state[0]_i_37\ : STD_LOGIC;
  signal \n_0_state[0]_i_38\ : STD_LOGIC;
  signal \n_0_state[0]_i_39\ : STD_LOGIC;
  signal \n_0_state[0]_i_4\ : STD_LOGIC;
  signal \n_0_state[0]_i_40\ : STD_LOGIC;
  signal \n_0_state[0]_i_41\ : STD_LOGIC;
  signal \n_0_state[0]_i_42\ : STD_LOGIC;
  signal \n_0_state[0]_i_46\ : STD_LOGIC;
  signal \n_0_state[0]_i_47\ : STD_LOGIC;
  signal \n_0_state[0]_i_48\ : STD_LOGIC;
  signal \n_0_state[0]_i_49\ : STD_LOGIC;
  signal \n_0_state[0]_i_5\ : STD_LOGIC;
  signal \n_0_state[0]_i_50\ : STD_LOGIC;
  signal \n_0_state[0]_i_51\ : STD_LOGIC;
  signal \n_0_state[0]_i_52\ : STD_LOGIC;
  signal \n_0_state[0]_i_53\ : STD_LOGIC;
  signal \n_0_state[0]_i_54\ : STD_LOGIC;
  signal \n_0_state[0]_i_55\ : STD_LOGIC;
  signal \n_0_state[0]_i_56\ : STD_LOGIC;
  signal \n_0_state[0]_i_57\ : STD_LOGIC;
  signal \n_0_state[0]_i_58\ : STD_LOGIC;
  signal \n_0_state[0]_i_6\ : STD_LOGIC;
  signal \n_0_state[0]_i_7\ : STD_LOGIC;
  signal \n_0_state[0]_i_8\ : STD_LOGIC;
  signal \n_0_state[0]_i_9\ : STD_LOGIC;
  signal \n_0_state_counter[0]_i_1\ : STD_LOGIC;
  signal \n_0_state_counter[0]_i_3\ : STD_LOGIC;
  signal \n_0_state_counter[0]_i_4\ : STD_LOGIC;
  signal \n_0_state_counter[0]_i_5\ : STD_LOGIC;
  signal \n_0_state_counter[0]_i_6\ : STD_LOGIC;
  signal \n_0_state_counter[12]_i_2\ : STD_LOGIC;
  signal \n_0_state_counter[12]_i_3\ : STD_LOGIC;
  signal \n_0_state_counter[12]_i_4\ : STD_LOGIC;
  signal \n_0_state_counter[12]_i_5\ : STD_LOGIC;
  signal \n_0_state_counter[16]_i_2\ : STD_LOGIC;
  signal \n_0_state_counter[16]_i_3\ : STD_LOGIC;
  signal \n_0_state_counter[16]_i_4\ : STD_LOGIC;
  signal \n_0_state_counter[16]_i_5\ : STD_LOGIC;
  signal \n_0_state_counter[20]_i_2\ : STD_LOGIC;
  signal \n_0_state_counter[20]_i_3\ : STD_LOGIC;
  signal \n_0_state_counter[20]_i_4\ : STD_LOGIC;
  signal \n_0_state_counter[4]_i_2\ : STD_LOGIC;
  signal \n_0_state_counter[4]_i_3\ : STD_LOGIC;
  signal \n_0_state_counter[4]_i_4\ : STD_LOGIC;
  signal \n_0_state_counter[4]_i_5\ : STD_LOGIC;
  signal \n_0_state_counter[8]_i_2\ : STD_LOGIC;
  signal \n_0_state_counter[8]_i_3\ : STD_LOGIC;
  signal \n_0_state_counter[8]_i_4\ : STD_LOGIC;
  signal \n_0_state_counter[8]_i_5\ : STD_LOGIC;
  signal \n_0_state_counter_reg[0]_i_2\ : STD_LOGIC;
  signal \n_0_state_counter_reg[12]_i_1\ : STD_LOGIC;
  signal \n_0_state_counter_reg[16]_i_1\ : STD_LOGIC;
  signal \n_0_state_counter_reg[4]_i_1\ : STD_LOGIC;
  signal \n_0_state_counter_reg[8]_i_1\ : STD_LOGIC;
  signal \n_0_state_durations[8][11]_i_2\ : STD_LOGIC;
  signal \n_0_state_durations[8][11]_i_3\ : STD_LOGIC;
  signal \n_0_state_durations[8][11]_i_4\ : STD_LOGIC;
  signal \n_0_state_durations[8][11]_i_5\ : STD_LOGIC;
  signal \n_0_state_durations[8][15]_i_2\ : STD_LOGIC;
  signal \n_0_state_durations[8][15]_i_3\ : STD_LOGIC;
  signal \n_0_state_durations[8][15]_i_4\ : STD_LOGIC;
  signal \n_0_state_durations[8][15]_i_5\ : STD_LOGIC;
  signal \n_0_state_durations[8][19]_i_2\ : STD_LOGIC;
  signal \n_0_state_durations[8][19]_i_3\ : STD_LOGIC;
  signal \n_0_state_durations[8][19]_i_4\ : STD_LOGIC;
  signal \n_0_state_durations[8][19]_i_5\ : STD_LOGIC;
  signal \n_0_state_durations[8][22]_i_10\ : STD_LOGIC;
  signal \n_0_state_durations[8][22]_i_3\ : STD_LOGIC;
  signal \n_0_state_durations[8][22]_i_4\ : STD_LOGIC;
  signal \n_0_state_durations[8][22]_i_5\ : STD_LOGIC;
  signal \n_0_state_durations[8][22]_i_6\ : STD_LOGIC;
  signal \n_0_state_durations[8][22]_i_7\ : STD_LOGIC;
  signal \n_0_state_durations[8][22]_i_8\ : STD_LOGIC;
  signal \n_0_state_durations[8][22]_i_9\ : STD_LOGIC;
  signal \n_0_state_durations[8][3]_i_2\ : STD_LOGIC;
  signal \n_0_state_durations[8][3]_i_3\ : STD_LOGIC;
  signal \n_0_state_durations[8][3]_i_4\ : STD_LOGIC;
  signal \n_0_state_durations[8][3]_i_5\ : STD_LOGIC;
  signal \n_0_state_durations[8][3]_i_6\ : STD_LOGIC;
  signal \n_0_state_durations[8][7]_i_2\ : STD_LOGIC;
  signal \n_0_state_durations[8][7]_i_3\ : STD_LOGIC;
  signal \n_0_state_durations[8][7]_i_4\ : STD_LOGIC;
  signal \n_0_state_durations[8][7]_i_5\ : STD_LOGIC;
  signal \n_0_state_durations_reg[8][0]\ : STD_LOGIC;
  signal \n_0_state_durations_reg[8][10]\ : STD_LOGIC;
  signal \n_0_state_durations_reg[8][11]\ : STD_LOGIC;
  signal \n_0_state_durations_reg[8][11]_i_1\ : STD_LOGIC;
  signal \n_0_state_durations_reg[8][12]\ : STD_LOGIC;
  signal \n_0_state_durations_reg[8][13]\ : STD_LOGIC;
  signal \n_0_state_durations_reg[8][14]\ : STD_LOGIC;
  signal \n_0_state_durations_reg[8][15]\ : STD_LOGIC;
  signal \n_0_state_durations_reg[8][15]_i_1\ : STD_LOGIC;
  signal \n_0_state_durations_reg[8][16]\ : STD_LOGIC;
  signal \n_0_state_durations_reg[8][17]\ : STD_LOGIC;
  signal \n_0_state_durations_reg[8][18]\ : STD_LOGIC;
  signal \n_0_state_durations_reg[8][19]\ : STD_LOGIC;
  signal \n_0_state_durations_reg[8][19]_i_1\ : STD_LOGIC;
  signal \n_0_state_durations_reg[8][1]\ : STD_LOGIC;
  signal \n_0_state_durations_reg[8][20]\ : STD_LOGIC;
  signal \n_0_state_durations_reg[8][21]\ : STD_LOGIC;
  signal \n_0_state_durations_reg[8][22]\ : STD_LOGIC;
  signal \n_0_state_durations_reg[8][2]\ : STD_LOGIC;
  signal \n_0_state_durations_reg[8][3]\ : STD_LOGIC;
  signal \n_0_state_durations_reg[8][3]_i_1\ : STD_LOGIC;
  signal \n_0_state_durations_reg[8][4]\ : STD_LOGIC;
  signal \n_0_state_durations_reg[8][5]\ : STD_LOGIC;
  signal \n_0_state_durations_reg[8][6]\ : STD_LOGIC;
  signal \n_0_state_durations_reg[8][7]\ : STD_LOGIC;
  signal \n_0_state_durations_reg[8][7]_i_1\ : STD_LOGIC;
  signal \n_0_state_durations_reg[8][8]\ : STD_LOGIC;
  signal \n_0_state_durations_reg[8][9]\ : STD_LOGIC;
  signal \n_0_state_reg[0]_i_11\ : STD_LOGIC;
  signal \n_0_state_reg[0]_i_2\ : STD_LOGIC;
  signal \n_0_state_reg[0]_i_21\ : STD_LOGIC;
  signal \n_0_state_reg[0]_i_22\ : STD_LOGIC;
  signal \n_0_state_reg[0]_i_31\ : STD_LOGIC;
  signal \n_0_state_reg[0]_i_32\ : STD_LOGIC;
  signal \n_0_state_reg[0]_i_43\ : STD_LOGIC;
  signal \n_0_state_reg[1]\ : STD_LOGIC;
  signal \n_1_FrameDurationCurrentClks[13]_INST_0\ : STD_LOGIC;
  signal \n_1_FrameDurationCurrentClks[17]_INST_0\ : STD_LOGIC;
  signal \n_1_FrameDurationCurrentClks[1]_INST_0\ : STD_LOGIC;
  signal \n_1_FrameDurationCurrentClks[5]_INST_0\ : STD_LOGIC;
  signal \n_1_FrameDurationCurrentClks[9]_INST_0\ : STD_LOGIC;
  signal \n_1_FrameId_reg[0]_i_3\ : STD_LOGIC;
  signal \n_1_FrameId_reg[0]_i_4\ : STD_LOGIC;
  signal \n_1_FrameId_reg[0]_i_9\ : STD_LOGIC;
  signal \n_1_FrameId_reg[12]_i_1\ : STD_LOGIC;
  signal \n_1_FrameId_reg[16]_i_1\ : STD_LOGIC;
  signal \n_1_FrameId_reg[20]_i_1\ : STD_LOGIC;
  signal \n_1_FrameId_reg[24]_i_1\ : STD_LOGIC;
  signal \n_1_FrameId_reg[28]_i_1\ : STD_LOGIC;
  signal \n_1_FrameId_reg[4]_i_1\ : STD_LOGIC;
  signal \n_1_FrameId_reg[8]_i_1\ : STD_LOGIC;
  signal \n_1_state_counter_reg[0]_i_2\ : STD_LOGIC;
  signal \n_1_state_counter_reg[12]_i_1\ : STD_LOGIC;
  signal \n_1_state_counter_reg[16]_i_1\ : STD_LOGIC;
  signal \n_1_state_counter_reg[4]_i_1\ : STD_LOGIC;
  signal \n_1_state_counter_reg[8]_i_1\ : STD_LOGIC;
  signal \n_1_state_durations_reg[8][11]_i_1\ : STD_LOGIC;
  signal \n_1_state_durations_reg[8][15]_i_1\ : STD_LOGIC;
  signal \n_1_state_durations_reg[8][19]_i_1\ : STD_LOGIC;
  signal \n_1_state_durations_reg[8][3]_i_1\ : STD_LOGIC;
  signal \n_1_state_durations_reg[8][7]_i_1\ : STD_LOGIC;
  signal \n_1_state_reg[0]_i_1\ : STD_LOGIC;
  signal \n_1_state_reg[0]_i_11\ : STD_LOGIC;
  signal \n_1_state_reg[0]_i_2\ : STD_LOGIC;
  signal \n_1_state_reg[0]_i_20\ : STD_LOGIC;
  signal \n_1_state_reg[0]_i_21\ : STD_LOGIC;
  signal \n_1_state_reg[0]_i_22\ : STD_LOGIC;
  signal \n_1_state_reg[0]_i_31\ : STD_LOGIC;
  signal \n_1_state_reg[0]_i_32\ : STD_LOGIC;
  signal \n_1_state_reg[0]_i_43\ : STD_LOGIC;
  signal \n_2_FrameDurationCurrentClks[13]_INST_0\ : STD_LOGIC;
  signal \n_2_FrameDurationCurrentClks[17]_INST_0\ : STD_LOGIC;
  signal \n_2_FrameDurationCurrentClks[1]_INST_0\ : STD_LOGIC;
  signal \n_2_FrameDurationCurrentClks[5]_INST_0\ : STD_LOGIC;
  signal \n_2_FrameDurationCurrentClks[9]_INST_0\ : STD_LOGIC;
  signal \n_2_FrameId_reg[0]_i_3\ : STD_LOGIC;
  signal \n_2_FrameId_reg[0]_i_4\ : STD_LOGIC;
  signal \n_2_FrameId_reg[0]_i_9\ : STD_LOGIC;
  signal \n_2_FrameId_reg[12]_i_1\ : STD_LOGIC;
  signal \n_2_FrameId_reg[16]_i_1\ : STD_LOGIC;
  signal \n_2_FrameId_reg[20]_i_1\ : STD_LOGIC;
  signal \n_2_FrameId_reg[24]_i_1\ : STD_LOGIC;
  signal \n_2_FrameId_reg[28]_i_1\ : STD_LOGIC;
  signal \n_2_FrameId_reg[4]_i_1\ : STD_LOGIC;
  signal \n_2_FrameId_reg[8]_i_1\ : STD_LOGIC;
  signal \n_2_state_counter_reg[0]_i_2\ : STD_LOGIC;
  signal \n_2_state_counter_reg[12]_i_1\ : STD_LOGIC;
  signal \n_2_state_counter_reg[16]_i_1\ : STD_LOGIC;
  signal \n_2_state_counter_reg[20]_i_1\ : STD_LOGIC;
  signal \n_2_state_counter_reg[4]_i_1\ : STD_LOGIC;
  signal \n_2_state_counter_reg[8]_i_1\ : STD_LOGIC;
  signal \n_2_state_durations_reg[8][11]_i_1\ : STD_LOGIC;
  signal \n_2_state_durations_reg[8][15]_i_1\ : STD_LOGIC;
  signal \n_2_state_durations_reg[8][19]_i_1\ : STD_LOGIC;
  signal \n_2_state_durations_reg[8][22]_i_2\ : STD_LOGIC;
  signal \n_2_state_durations_reg[8][3]_i_1\ : STD_LOGIC;
  signal \n_2_state_durations_reg[8][7]_i_1\ : STD_LOGIC;
  signal \n_2_state_reg[0]_i_1\ : STD_LOGIC;
  signal \n_2_state_reg[0]_i_11\ : STD_LOGIC;
  signal \n_2_state_reg[0]_i_2\ : STD_LOGIC;
  signal \n_2_state_reg[0]_i_21\ : STD_LOGIC;
  signal \n_2_state_reg[0]_i_22\ : STD_LOGIC;
  signal \n_2_state_reg[0]_i_31\ : STD_LOGIC;
  signal \n_2_state_reg[0]_i_32\ : STD_LOGIC;
  signal \n_2_state_reg[0]_i_43\ : STD_LOGIC;
  signal \n_3_FrameDurationCurrentClks[13]_INST_0\ : STD_LOGIC;
  signal \n_3_FrameDurationCurrentClks[17]_INST_0\ : STD_LOGIC;
  signal \n_3_FrameDurationCurrentClks[1]_INST_0\ : STD_LOGIC;
  signal \n_3_FrameDurationCurrentClks[5]_INST_0\ : STD_LOGIC;
  signal \n_3_FrameDurationCurrentClks[9]_INST_0\ : STD_LOGIC;
  signal \n_3_FrameId_reg[0]_i_3\ : STD_LOGIC;
  signal \n_3_FrameId_reg[0]_i_4\ : STD_LOGIC;
  signal \n_3_FrameId_reg[0]_i_9\ : STD_LOGIC;
  signal \n_3_FrameId_reg[12]_i_1\ : STD_LOGIC;
  signal \n_3_FrameId_reg[16]_i_1\ : STD_LOGIC;
  signal \n_3_FrameId_reg[20]_i_1\ : STD_LOGIC;
  signal \n_3_FrameId_reg[24]_i_1\ : STD_LOGIC;
  signal \n_3_FrameId_reg[28]_i_1\ : STD_LOGIC;
  signal \n_3_FrameId_reg[4]_i_1\ : STD_LOGIC;
  signal \n_3_FrameId_reg[8]_i_1\ : STD_LOGIC;
  signal \n_3_state_counter_reg[0]_i_2\ : STD_LOGIC;
  signal \n_3_state_counter_reg[12]_i_1\ : STD_LOGIC;
  signal \n_3_state_counter_reg[16]_i_1\ : STD_LOGIC;
  signal \n_3_state_counter_reg[20]_i_1\ : STD_LOGIC;
  signal \n_3_state_counter_reg[4]_i_1\ : STD_LOGIC;
  signal \n_3_state_counter_reg[8]_i_1\ : STD_LOGIC;
  signal \n_3_state_durations_reg[8][11]_i_1\ : STD_LOGIC;
  signal \n_3_state_durations_reg[8][15]_i_1\ : STD_LOGIC;
  signal \n_3_state_durations_reg[8][19]_i_1\ : STD_LOGIC;
  signal \n_3_state_durations_reg[8][22]_i_2\ : STD_LOGIC;
  signal \n_3_state_durations_reg[8][3]_i_1\ : STD_LOGIC;
  signal \n_3_state_durations_reg[8][7]_i_1\ : STD_LOGIC;
  signal \n_3_state_reg[0]_i_1\ : STD_LOGIC;
  signal \n_3_state_reg[0]_i_11\ : STD_LOGIC;
  signal \n_3_state_reg[0]_i_2\ : STD_LOGIC;
  signal \n_3_state_reg[0]_i_20\ : STD_LOGIC;
  signal \n_3_state_reg[0]_i_21\ : STD_LOGIC;
  signal \n_3_state_reg[0]_i_22\ : STD_LOGIC;
  signal \n_3_state_reg[0]_i_31\ : STD_LOGIC;
  signal \n_3_state_reg[0]_i_32\ : STD_LOGIC;
  signal \n_3_state_reg[0]_i_43\ : STD_LOGIC;
  signal \n_4_FrameId_reg[0]_i_3\ : STD_LOGIC;
  signal \n_4_FrameId_reg[12]_i_1\ : STD_LOGIC;
  signal \n_4_FrameId_reg[16]_i_1\ : STD_LOGIC;
  signal \n_4_FrameId_reg[20]_i_1\ : STD_LOGIC;
  signal \n_4_FrameId_reg[24]_i_1\ : STD_LOGIC;
  signal \n_4_FrameId_reg[28]_i_1\ : STD_LOGIC;
  signal \n_4_FrameId_reg[4]_i_1\ : STD_LOGIC;
  signal \n_4_FrameId_reg[8]_i_1\ : STD_LOGIC;
  signal \n_4_state_counter_reg[0]_i_2\ : STD_LOGIC;
  signal \n_4_state_counter_reg[12]_i_1\ : STD_LOGIC;
  signal \n_4_state_counter_reg[16]_i_1\ : STD_LOGIC;
  signal \n_4_state_counter_reg[4]_i_1\ : STD_LOGIC;
  signal \n_4_state_counter_reg[8]_i_1\ : STD_LOGIC;
  signal \n_4_state_durations_reg[8][11]_i_1\ : STD_LOGIC;
  signal \n_4_state_durations_reg[8][15]_i_1\ : STD_LOGIC;
  signal \n_4_state_durations_reg[8][19]_i_1\ : STD_LOGIC;
  signal \n_4_state_durations_reg[8][3]_i_1\ : STD_LOGIC;
  signal \n_4_state_durations_reg[8][7]_i_1\ : STD_LOGIC;
  signal \n_4_state_reg[0]_i_21\ : STD_LOGIC;
  signal \n_4_state_reg[0]_i_22\ : STD_LOGIC;
  signal \n_4_state_reg[0]_i_31\ : STD_LOGIC;
  signal \n_4_state_reg[0]_i_32\ : STD_LOGIC;
  signal \n_4_state_reg[0]_i_43\ : STD_LOGIC;
  signal \n_5_FrameId_reg[0]_i_3\ : STD_LOGIC;
  signal \n_5_FrameId_reg[12]_i_1\ : STD_LOGIC;
  signal \n_5_FrameId_reg[16]_i_1\ : STD_LOGIC;
  signal \n_5_FrameId_reg[20]_i_1\ : STD_LOGIC;
  signal \n_5_FrameId_reg[24]_i_1\ : STD_LOGIC;
  signal \n_5_FrameId_reg[28]_i_1\ : STD_LOGIC;
  signal \n_5_FrameId_reg[4]_i_1\ : STD_LOGIC;
  signal \n_5_FrameId_reg[8]_i_1\ : STD_LOGIC;
  signal \n_5_state_counter_reg[0]_i_2\ : STD_LOGIC;
  signal \n_5_state_counter_reg[12]_i_1\ : STD_LOGIC;
  signal \n_5_state_counter_reg[16]_i_1\ : STD_LOGIC;
  signal \n_5_state_counter_reg[20]_i_1\ : STD_LOGIC;
  signal \n_5_state_counter_reg[4]_i_1\ : STD_LOGIC;
  signal \n_5_state_counter_reg[8]_i_1\ : STD_LOGIC;
  signal \n_5_state_durations_reg[8][11]_i_1\ : STD_LOGIC;
  signal \n_5_state_durations_reg[8][15]_i_1\ : STD_LOGIC;
  signal \n_5_state_durations_reg[8][19]_i_1\ : STD_LOGIC;
  signal \n_5_state_durations_reg[8][22]_i_2\ : STD_LOGIC;
  signal \n_5_state_durations_reg[8][3]_i_1\ : STD_LOGIC;
  signal \n_5_state_durations_reg[8][7]_i_1\ : STD_LOGIC;
  signal \n_5_state_reg[0]_i_21\ : STD_LOGIC;
  signal \n_5_state_reg[0]_i_22\ : STD_LOGIC;
  signal \n_5_state_reg[0]_i_31\ : STD_LOGIC;
  signal \n_5_state_reg[0]_i_32\ : STD_LOGIC;
  signal \n_5_state_reg[0]_i_43\ : STD_LOGIC;
  signal \n_6_FrameId_reg[0]_i_3\ : STD_LOGIC;
  signal \n_6_FrameId_reg[12]_i_1\ : STD_LOGIC;
  signal \n_6_FrameId_reg[16]_i_1\ : STD_LOGIC;
  signal \n_6_FrameId_reg[20]_i_1\ : STD_LOGIC;
  signal \n_6_FrameId_reg[24]_i_1\ : STD_LOGIC;
  signal \n_6_FrameId_reg[28]_i_1\ : STD_LOGIC;
  signal \n_6_FrameId_reg[4]_i_1\ : STD_LOGIC;
  signal \n_6_FrameId_reg[8]_i_1\ : STD_LOGIC;
  signal \n_6_state_counter_reg[0]_i_2\ : STD_LOGIC;
  signal \n_6_state_counter_reg[12]_i_1\ : STD_LOGIC;
  signal \n_6_state_counter_reg[16]_i_1\ : STD_LOGIC;
  signal \n_6_state_counter_reg[20]_i_1\ : STD_LOGIC;
  signal \n_6_state_counter_reg[4]_i_1\ : STD_LOGIC;
  signal \n_6_state_counter_reg[8]_i_1\ : STD_LOGIC;
  signal \n_6_state_durations_reg[8][11]_i_1\ : STD_LOGIC;
  signal \n_6_state_durations_reg[8][15]_i_1\ : STD_LOGIC;
  signal \n_6_state_durations_reg[8][19]_i_1\ : STD_LOGIC;
  signal \n_6_state_durations_reg[8][22]_i_2\ : STD_LOGIC;
  signal \n_6_state_durations_reg[8][3]_i_1\ : STD_LOGIC;
  signal \n_6_state_durations_reg[8][7]_i_1\ : STD_LOGIC;
  signal \n_6_state_reg[0]_i_20\ : STD_LOGIC;
  signal \n_6_state_reg[0]_i_21\ : STD_LOGIC;
  signal \n_6_state_reg[0]_i_22\ : STD_LOGIC;
  signal \n_6_state_reg[0]_i_31\ : STD_LOGIC;
  signal \n_6_state_reg[0]_i_32\ : STD_LOGIC;
  signal \n_6_state_reg[0]_i_43\ : STD_LOGIC;
  signal \n_7_FrameId_reg[0]_i_3\ : STD_LOGIC;
  signal \n_7_FrameId_reg[12]_i_1\ : STD_LOGIC;
  signal \n_7_FrameId_reg[16]_i_1\ : STD_LOGIC;
  signal \n_7_FrameId_reg[20]_i_1\ : STD_LOGIC;
  signal \n_7_FrameId_reg[24]_i_1\ : STD_LOGIC;
  signal \n_7_FrameId_reg[28]_i_1\ : STD_LOGIC;
  signal \n_7_FrameId_reg[4]_i_1\ : STD_LOGIC;
  signal \n_7_FrameId_reg[8]_i_1\ : STD_LOGIC;
  signal \n_7_state_counter_reg[0]_i_2\ : STD_LOGIC;
  signal \n_7_state_counter_reg[12]_i_1\ : STD_LOGIC;
  signal \n_7_state_counter_reg[16]_i_1\ : STD_LOGIC;
  signal \n_7_state_counter_reg[20]_i_1\ : STD_LOGIC;
  signal \n_7_state_counter_reg[4]_i_1\ : STD_LOGIC;
  signal \n_7_state_counter_reg[8]_i_1\ : STD_LOGIC;
  signal \n_7_state_durations_reg[8][11]_i_1\ : STD_LOGIC;
  signal \n_7_state_durations_reg[8][15]_i_1\ : STD_LOGIC;
  signal \n_7_state_durations_reg[8][19]_i_1\ : STD_LOGIC;
  signal \n_7_state_durations_reg[8][22]_i_2\ : STD_LOGIC;
  signal \n_7_state_durations_reg[8][3]_i_1\ : STD_LOGIC;
  signal \n_7_state_durations_reg[8][7]_i_1\ : STD_LOGIC;
  signal \n_7_state_reg[0]_i_20\ : STD_LOGIC;
  signal \n_7_state_reg[0]_i_21\ : STD_LOGIC;
  signal \n_7_state_reg[0]_i_22\ : STD_LOGIC;
  signal \n_7_state_reg[0]_i_31\ : STD_LOGIC;
  signal \n_7_state_reg[0]_i_32\ : STD_LOGIC;
  signal \n_7_state_reg[0]_i_43\ : STD_LOGIC;
  signal read_data : STD_LOGIC;
  signal state_counter_reg : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal state_durations : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_FrameDurationCurrentClks[21]_INST_0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_FrameDurationCurrentClks[21]_INST_0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_FrameId_reg[0]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_FrameId_reg[0]_i_9_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_FrameId_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_state_counter_reg[20]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_state_counter_reg[20]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_state_durations_reg[8][22]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_state_durations_reg[8][22]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_state_reg[0]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_state_reg[0]_i_11_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_state_reg[0]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_state_reg[0]_i_20_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_state_reg[0]_i_20_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of FrameDurationChangeEnable_INST_0 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \FrameDurationCurrentClks[0]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \state[0]_i_44\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \state[0]_i_45\ : label is "soft_lutpair9";
begin
  FrameDurationCurrentClks(21 downto 0) <= \^framedurationcurrentclks\(21 downto 0);
  O8(31 downto 0) <= \^o8\(31 downto 0);
  Q(1 downto 0) <= \^q\(1 downto 0);
FrameDurationChangeEnable_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => read_data,
      O => FrameDurationChangeEnable
    );
\FrameDurationCurrentClks[0]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \n_0_state_durations_reg[8][0]\,
      O => \^framedurationcurrentclks\(0)
    );
\FrameDurationCurrentClks[13]_INST_0\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_FrameDurationCurrentClks[9]_INST_0\,
      CO(3) => \n_0_FrameDurationCurrentClks[13]_INST_0\,
      CO(2) => \n_1_FrameDurationCurrentClks[13]_INST_0\,
      CO(1) => \n_2_FrameDurationCurrentClks[13]_INST_0\,
      CO(0) => \n_3_FrameDurationCurrentClks[13]_INST_0\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => \^framedurationcurrentclks\(16 downto 13),
      S(3) => \n_0_FrameDurationCurrentClks[13]_INST_0_i_1\,
      S(2) => \n_0_FrameDurationCurrentClks[13]_INST_0_i_2\,
      S(1) => \n_0_FrameDurationCurrentClks[13]_INST_0_i_3\,
      S(0) => \n_0_FrameDurationCurrentClks[13]_INST_0_i_4\
    );
\FrameDurationCurrentClks[13]_INST_0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \n_0_state_durations_reg[8][16]\,
      O => \n_0_FrameDurationCurrentClks[13]_INST_0_i_1\
    );
\FrameDurationCurrentClks[13]_INST_0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \n_0_state_durations_reg[8][15]\,
      O => \n_0_FrameDurationCurrentClks[13]_INST_0_i_2\
    );
\FrameDurationCurrentClks[13]_INST_0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \n_0_state_durations_reg[8][14]\,
      O => \n_0_FrameDurationCurrentClks[13]_INST_0_i_3\
    );
\FrameDurationCurrentClks[13]_INST_0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \n_0_state_durations_reg[8][13]\,
      O => \n_0_FrameDurationCurrentClks[13]_INST_0_i_4\
    );
\FrameDurationCurrentClks[17]_INST_0\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_FrameDurationCurrentClks[13]_INST_0\,
      CO(3) => \n_0_FrameDurationCurrentClks[17]_INST_0\,
      CO(2) => \n_1_FrameDurationCurrentClks[17]_INST_0\,
      CO(1) => \n_2_FrameDurationCurrentClks[17]_INST_0\,
      CO(0) => \n_3_FrameDurationCurrentClks[17]_INST_0\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => \^framedurationcurrentclks\(20 downto 17),
      S(3) => \n_0_FrameDurationCurrentClks[17]_INST_0_i_1\,
      S(2) => \n_0_FrameDurationCurrentClks[17]_INST_0_i_2\,
      S(1) => \n_0_FrameDurationCurrentClks[17]_INST_0_i_3\,
      S(0) => \n_0_FrameDurationCurrentClks[17]_INST_0_i_4\
    );
\FrameDurationCurrentClks[17]_INST_0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \n_0_state_durations_reg[8][20]\,
      O => \n_0_FrameDurationCurrentClks[17]_INST_0_i_1\
    );
\FrameDurationCurrentClks[17]_INST_0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \n_0_state_durations_reg[8][19]\,
      O => \n_0_FrameDurationCurrentClks[17]_INST_0_i_2\
    );
\FrameDurationCurrentClks[17]_INST_0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \n_0_state_durations_reg[8][18]\,
      O => \n_0_FrameDurationCurrentClks[17]_INST_0_i_3\
    );
\FrameDurationCurrentClks[17]_INST_0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \n_0_state_durations_reg[8][17]\,
      O => \n_0_FrameDurationCurrentClks[17]_INST_0_i_4\
    );
\FrameDurationCurrentClks[1]_INST_0\: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3) => \n_0_FrameDurationCurrentClks[1]_INST_0\,
      CO(2) => \n_1_FrameDurationCurrentClks[1]_INST_0\,
      CO(1) => \n_2_FrameDurationCurrentClks[1]_INST_0\,
      CO(0) => \n_3_FrameDurationCurrentClks[1]_INST_0\,
      CYINIT => \n_0_state_durations_reg[8][0]\,
      DI(3) => '0',
      DI(2) => \n_0_state_durations_reg[8][2]\,
      DI(1) => \n_0_FrameDurationCurrentClks[1]_INST_0_i_1\,
      DI(0) => '0',
      O(3 downto 0) => \^framedurationcurrentclks\(4 downto 1),
      S(3) => \n_0_FrameDurationCurrentClks[1]_INST_0_i_2\,
      S(2) => \n_0_FrameDurationCurrentClks[1]_INST_0_i_3\,
      S(1) => \n_0_FrameDurationCurrentClks[1]_INST_0_i_4\,
      S(0) => \n_0_FrameDurationCurrentClks[1]_INST_0_i_5\
    );
\FrameDurationCurrentClks[1]_INST_0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \n_0_state_durations_reg[8][2]\,
      O => \n_0_FrameDurationCurrentClks[1]_INST_0_i_1\
    );
\FrameDurationCurrentClks[1]_INST_0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \n_0_state_durations_reg[8][4]\,
      O => \n_0_FrameDurationCurrentClks[1]_INST_0_i_2\
    );
\FrameDurationCurrentClks[1]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => \n_0_state_durations_reg[8][2]\,
      I1 => \n_0_state_durations_reg[8][3]\,
      O => \n_0_FrameDurationCurrentClks[1]_INST_0_i_3\
    );
\FrameDurationCurrentClks[1]_INST_0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \n_0_state_durations_reg[8][2]\,
      O => \n_0_FrameDurationCurrentClks[1]_INST_0_i_4\
    );
\FrameDurationCurrentClks[1]_INST_0_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \n_0_state_durations_reg[8][1]\,
      O => \n_0_FrameDurationCurrentClks[1]_INST_0_i_5\
    );
\FrameDurationCurrentClks[21]_INST_0\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_FrameDurationCurrentClks[17]_INST_0\,
      CO(3 downto 0) => \NLW_FrameDurationCurrentClks[21]_INST_0_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 1) => \NLW_FrameDurationCurrentClks[21]_INST_0_O_UNCONNECTED\(3 downto 1),
      O(0) => \^framedurationcurrentclks\(21),
      S(3) => '0',
      S(2) => '0',
      S(1) => '0',
      S(0) => \n_0_FrameDurationCurrentClks[21]_INST_0_i_1\
    );
\FrameDurationCurrentClks[21]_INST_0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \n_0_state_durations_reg[8][21]\,
      O => \n_0_FrameDurationCurrentClks[21]_INST_0_i_1\
    );
\FrameDurationCurrentClks[5]_INST_0\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_FrameDurationCurrentClks[1]_INST_0\,
      CO(3) => \n_0_FrameDurationCurrentClks[5]_INST_0\,
      CO(2) => \n_1_FrameDurationCurrentClks[5]_INST_0\,
      CO(1) => \n_2_FrameDurationCurrentClks[5]_INST_0\,
      CO(0) => \n_3_FrameDurationCurrentClks[5]_INST_0\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => \^framedurationcurrentclks\(8 downto 5),
      S(3) => \n_0_FrameDurationCurrentClks[5]_INST_0_i_1\,
      S(2) => \n_0_FrameDurationCurrentClks[5]_INST_0_i_2\,
      S(1) => \n_0_FrameDurationCurrentClks[5]_INST_0_i_3\,
      S(0) => \n_0_FrameDurationCurrentClks[5]_INST_0_i_4\
    );
\FrameDurationCurrentClks[5]_INST_0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \n_0_state_durations_reg[8][8]\,
      O => \n_0_FrameDurationCurrentClks[5]_INST_0_i_1\
    );
\FrameDurationCurrentClks[5]_INST_0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \n_0_state_durations_reg[8][7]\,
      O => \n_0_FrameDurationCurrentClks[5]_INST_0_i_2\
    );
\FrameDurationCurrentClks[5]_INST_0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \n_0_state_durations_reg[8][6]\,
      O => \n_0_FrameDurationCurrentClks[5]_INST_0_i_3\
    );
\FrameDurationCurrentClks[5]_INST_0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \n_0_state_durations_reg[8][5]\,
      O => \n_0_FrameDurationCurrentClks[5]_INST_0_i_4\
    );
\FrameDurationCurrentClks[9]_INST_0\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_FrameDurationCurrentClks[5]_INST_0\,
      CO(3) => \n_0_FrameDurationCurrentClks[9]_INST_0\,
      CO(2) => \n_1_FrameDurationCurrentClks[9]_INST_0\,
      CO(1) => \n_2_FrameDurationCurrentClks[9]_INST_0\,
      CO(0) => \n_3_FrameDurationCurrentClks[9]_INST_0\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => \^framedurationcurrentclks\(12 downto 9),
      S(3) => \n_0_FrameDurationCurrentClks[9]_INST_0_i_1\,
      S(2) => \n_0_FrameDurationCurrentClks[9]_INST_0_i_2\,
      S(1) => \n_0_FrameDurationCurrentClks[9]_INST_0_i_3\,
      S(0) => \n_0_FrameDurationCurrentClks[9]_INST_0_i_4\
    );
\FrameDurationCurrentClks[9]_INST_0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \n_0_state_durations_reg[8][12]\,
      O => \n_0_FrameDurationCurrentClks[9]_INST_0_i_1\
    );
\FrameDurationCurrentClks[9]_INST_0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \n_0_state_durations_reg[8][11]\,
      O => \n_0_FrameDurationCurrentClks[9]_INST_0_i_2\
    );
\FrameDurationCurrentClks[9]_INST_0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \n_0_state_durations_reg[8][10]\,
      O => \n_0_FrameDurationCurrentClks[9]_INST_0_i_3\
    );
\FrameDurationCurrentClks[9]_INST_0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \n_0_state_durations_reg[8][9]\,
      O => \n_0_FrameDurationCurrentClks[9]_INST_0_i_4\
    );
\FrameId[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0010"
    )
    port map (
      I0 => \n_0_state_durations[8][22]_i_4\,
      I1 => read_data,
      I2 => \n_0_FrameId_reg[0]_i_4\,
      I3 => \n_0_state_durations[8][22]_i_3\,
      I4 => reset,
      O => \n_0_FrameId[0]_i_1\
    );
\FrameId[0]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => \^framedurationcurrentclks\(21),
      I1 => FrameDurationRequestedClks(21),
      O => \n_0_FrameId[0]_i_10\
    );
\FrameId[0]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => \^framedurationcurrentclks\(20),
      I1 => FrameDurationRequestedClks(20),
      I2 => \^framedurationcurrentclks\(19),
      I3 => FrameDurationRequestedClks(19),
      I4 => FrameDurationRequestedClks(18),
      I5 => \^framedurationcurrentclks\(18),
      O => \n_0_FrameId[0]_i_11\
    );
\FrameId[0]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => \^framedurationcurrentclks\(17),
      I1 => FrameDurationRequestedClks(17),
      I2 => \^framedurationcurrentclks\(16),
      I3 => FrameDurationRequestedClks(16),
      I4 => FrameDurationRequestedClks(15),
      I5 => \^framedurationcurrentclks\(15),
      O => \n_0_FrameId[0]_i_12\
    );
\FrameId[0]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => \^framedurationcurrentclks\(14),
      I1 => FrameDurationRequestedClks(14),
      I2 => \^framedurationcurrentclks\(13),
      I3 => FrameDurationRequestedClks(13),
      I4 => FrameDurationRequestedClks(12),
      I5 => \^framedurationcurrentclks\(12),
      O => \n_0_FrameId[0]_i_13\
    );
\FrameId[0]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => \^framedurationcurrentclks\(11),
      I1 => FrameDurationRequestedClks(11),
      I2 => \^framedurationcurrentclks\(10),
      I3 => FrameDurationRequestedClks(10),
      I4 => FrameDurationRequestedClks(9),
      I5 => \^framedurationcurrentclks\(9),
      O => \n_0_FrameId[0]_i_14\
    );
\FrameId[0]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => \^framedurationcurrentclks\(8),
      I1 => FrameDurationRequestedClks(8),
      I2 => \^framedurationcurrentclks\(7),
      I3 => FrameDurationRequestedClks(7),
      I4 => FrameDurationRequestedClks(6),
      I5 => \^framedurationcurrentclks\(6),
      O => \n_0_FrameId[0]_i_15\
    );
\FrameId[0]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => \^framedurationcurrentclks\(5),
      I1 => FrameDurationRequestedClks(5),
      I2 => \^framedurationcurrentclks\(4),
      I3 => FrameDurationRequestedClks(4),
      I4 => FrameDurationRequestedClks(3),
      I5 => \^framedurationcurrentclks\(3),
      O => \n_0_FrameId[0]_i_16\
    );
\FrameId[0]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6006000000006006"
    )
    port map (
      I0 => \n_0_state_durations_reg[8][0]\,
      I1 => FrameDurationRequestedClks(0),
      I2 => \^framedurationcurrentclks\(2),
      I3 => FrameDurationRequestedClks(2),
      I4 => FrameDurationRequestedClks(1),
      I5 => \^framedurationcurrentclks\(1),
      O => \n_0_FrameId[0]_i_17\
    );
\FrameId[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000000"
    )
    port map (
      I0 => \^q\(0),
      I1 => \n_0_state_reg[1]\,
      I2 => \^q\(1),
      I3 => is_next_state_needed,
      I4 => read_data,
      O => FrameId0
    );
\FrameId[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^o8\(3),
      O => \n_0_FrameId[0]_i_5\
    );
\FrameId[0]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^o8\(2),
      O => \n_0_FrameId[0]_i_6\
    );
\FrameId[0]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^o8\(1),
      O => \n_0_FrameId[0]_i_7\
    );
\FrameId[0]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \^o8\(0),
      O => \n_0_FrameId[0]_i_8\
    );
\FrameId[12]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^o8\(15),
      O => \n_0_FrameId[12]_i_2\
    );
\FrameId[12]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^o8\(14),
      O => \n_0_FrameId[12]_i_3\
    );
\FrameId[12]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^o8\(13),
      O => \n_0_FrameId[12]_i_4\
    );
\FrameId[12]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^o8\(12),
      O => \n_0_FrameId[12]_i_5\
    );
\FrameId[16]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^o8\(19),
      O => \n_0_FrameId[16]_i_2\
    );
\FrameId[16]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^o8\(18),
      O => \n_0_FrameId[16]_i_3\
    );
\FrameId[16]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^o8\(17),
      O => \n_0_FrameId[16]_i_4\
    );
\FrameId[16]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^o8\(16),
      O => \n_0_FrameId[16]_i_5\
    );
\FrameId[20]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^o8\(23),
      O => \n_0_FrameId[20]_i_2\
    );
\FrameId[20]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^o8\(22),
      O => \n_0_FrameId[20]_i_3\
    );
\FrameId[20]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^o8\(21),
      O => \n_0_FrameId[20]_i_4\
    );
\FrameId[20]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^o8\(20),
      O => \n_0_FrameId[20]_i_5\
    );
\FrameId[24]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^o8\(27),
      O => \n_0_FrameId[24]_i_2\
    );
\FrameId[24]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^o8\(26),
      O => \n_0_FrameId[24]_i_3\
    );
\FrameId[24]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^o8\(25),
      O => \n_0_FrameId[24]_i_4\
    );
\FrameId[24]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^o8\(24),
      O => \n_0_FrameId[24]_i_5\
    );
\FrameId[28]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^o8\(31),
      O => \n_0_FrameId[28]_i_2\
    );
\FrameId[28]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^o8\(30),
      O => \n_0_FrameId[28]_i_3\
    );
\FrameId[28]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^o8\(29),
      O => \n_0_FrameId[28]_i_4\
    );
\FrameId[28]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^o8\(28),
      O => \n_0_FrameId[28]_i_5\
    );
\FrameId[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^o8\(7),
      O => \n_0_FrameId[4]_i_2\
    );
\FrameId[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^o8\(6),
      O => \n_0_FrameId[4]_i_3\
    );
\FrameId[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^o8\(5),
      O => \n_0_FrameId[4]_i_4\
    );
\FrameId[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^o8\(4),
      O => \n_0_FrameId[4]_i_5\
    );
\FrameId[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^o8\(11),
      O => \n_0_FrameId[8]_i_2\
    );
\FrameId[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^o8\(10),
      O => \n_0_FrameId[8]_i_3\
    );
\FrameId[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^o8\(9),
      O => \n_0_FrameId[8]_i_4\
    );
\FrameId[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^o8\(8),
      O => \n_0_FrameId[8]_i_5\
    );
\FrameId_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => FrameId0,
      D => \n_7_FrameId_reg[0]_i_3\,
      Q => \^o8\(0),
      R => \n_0_FrameId[0]_i_1\
    );
\FrameId_reg[0]_i_3\: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3) => \n_0_FrameId_reg[0]_i_3\,
      CO(2) => \n_1_FrameId_reg[0]_i_3\,
      CO(1) => \n_2_FrameId_reg[0]_i_3\,
      CO(0) => \n_3_FrameId_reg[0]_i_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => \n_4_FrameId_reg[0]_i_3\,
      O(2) => \n_5_FrameId_reg[0]_i_3\,
      O(1) => \n_6_FrameId_reg[0]_i_3\,
      O(0) => \n_7_FrameId_reg[0]_i_3\,
      S(3) => \n_0_FrameId[0]_i_5\,
      S(2) => \n_0_FrameId[0]_i_6\,
      S(1) => \n_0_FrameId[0]_i_7\,
      S(0) => \n_0_FrameId[0]_i_8\
    );
\FrameId_reg[0]_i_4\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_FrameId_reg[0]_i_9\,
      CO(3) => \n_0_FrameId_reg[0]_i_4\,
      CO(2) => \n_1_FrameId_reg[0]_i_4\,
      CO(1) => \n_2_FrameId_reg[0]_i_4\,
      CO(0) => \n_3_FrameId_reg[0]_i_4\,
      CYINIT => '0',
      DI(3) => '1',
      DI(2) => '1',
      DI(1) => '1',
      DI(0) => '1',
      O(3 downto 0) => \NLW_FrameId_reg[0]_i_4_O_UNCONNECTED\(3 downto 0),
      S(3) => \n_0_FrameId[0]_i_10\,
      S(2) => \n_0_FrameId[0]_i_11\,
      S(1) => \n_0_FrameId[0]_i_12\,
      S(0) => \n_0_FrameId[0]_i_13\
    );
\FrameId_reg[0]_i_9\: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3) => \n_0_FrameId_reg[0]_i_9\,
      CO(2) => \n_1_FrameId_reg[0]_i_9\,
      CO(1) => \n_2_FrameId_reg[0]_i_9\,
      CO(0) => \n_3_FrameId_reg[0]_i_9\,
      CYINIT => '0',
      DI(3) => '1',
      DI(2) => '1',
      DI(1) => '1',
      DI(0) => '1',
      O(3 downto 0) => \NLW_FrameId_reg[0]_i_9_O_UNCONNECTED\(3 downto 0),
      S(3) => \n_0_FrameId[0]_i_14\,
      S(2) => \n_0_FrameId[0]_i_15\,
      S(1) => \n_0_FrameId[0]_i_16\,
      S(0) => \n_0_FrameId[0]_i_17\
    );
\FrameId_reg[10]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => FrameId0,
      D => \n_5_FrameId_reg[8]_i_1\,
      Q => \^o8\(10),
      R => \n_0_FrameId[0]_i_1\
    );
\FrameId_reg[11]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => FrameId0,
      D => \n_4_FrameId_reg[8]_i_1\,
      Q => \^o8\(11),
      R => \n_0_FrameId[0]_i_1\
    );
\FrameId_reg[12]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => FrameId0,
      D => \n_7_FrameId_reg[12]_i_1\,
      Q => \^o8\(12),
      R => \n_0_FrameId[0]_i_1\
    );
\FrameId_reg[12]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_FrameId_reg[8]_i_1\,
      CO(3) => \n_0_FrameId_reg[12]_i_1\,
      CO(2) => \n_1_FrameId_reg[12]_i_1\,
      CO(1) => \n_2_FrameId_reg[12]_i_1\,
      CO(0) => \n_3_FrameId_reg[12]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_FrameId_reg[12]_i_1\,
      O(2) => \n_5_FrameId_reg[12]_i_1\,
      O(1) => \n_6_FrameId_reg[12]_i_1\,
      O(0) => \n_7_FrameId_reg[12]_i_1\,
      S(3) => \n_0_FrameId[12]_i_2\,
      S(2) => \n_0_FrameId[12]_i_3\,
      S(1) => \n_0_FrameId[12]_i_4\,
      S(0) => \n_0_FrameId[12]_i_5\
    );
\FrameId_reg[13]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => FrameId0,
      D => \n_6_FrameId_reg[12]_i_1\,
      Q => \^o8\(13),
      R => \n_0_FrameId[0]_i_1\
    );
\FrameId_reg[14]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => FrameId0,
      D => \n_5_FrameId_reg[12]_i_1\,
      Q => \^o8\(14),
      R => \n_0_FrameId[0]_i_1\
    );
\FrameId_reg[15]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => FrameId0,
      D => \n_4_FrameId_reg[12]_i_1\,
      Q => \^o8\(15),
      R => \n_0_FrameId[0]_i_1\
    );
\FrameId_reg[16]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => FrameId0,
      D => \n_7_FrameId_reg[16]_i_1\,
      Q => \^o8\(16),
      R => \n_0_FrameId[0]_i_1\
    );
\FrameId_reg[16]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_FrameId_reg[12]_i_1\,
      CO(3) => \n_0_FrameId_reg[16]_i_1\,
      CO(2) => \n_1_FrameId_reg[16]_i_1\,
      CO(1) => \n_2_FrameId_reg[16]_i_1\,
      CO(0) => \n_3_FrameId_reg[16]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_FrameId_reg[16]_i_1\,
      O(2) => \n_5_FrameId_reg[16]_i_1\,
      O(1) => \n_6_FrameId_reg[16]_i_1\,
      O(0) => \n_7_FrameId_reg[16]_i_1\,
      S(3) => \n_0_FrameId[16]_i_2\,
      S(2) => \n_0_FrameId[16]_i_3\,
      S(1) => \n_0_FrameId[16]_i_4\,
      S(0) => \n_0_FrameId[16]_i_5\
    );
\FrameId_reg[17]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => FrameId0,
      D => \n_6_FrameId_reg[16]_i_1\,
      Q => \^o8\(17),
      R => \n_0_FrameId[0]_i_1\
    );
\FrameId_reg[18]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => FrameId0,
      D => \n_5_FrameId_reg[16]_i_1\,
      Q => \^o8\(18),
      R => \n_0_FrameId[0]_i_1\
    );
\FrameId_reg[19]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => FrameId0,
      D => \n_4_FrameId_reg[16]_i_1\,
      Q => \^o8\(19),
      R => \n_0_FrameId[0]_i_1\
    );
\FrameId_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => FrameId0,
      D => \n_6_FrameId_reg[0]_i_3\,
      Q => \^o8\(1),
      R => \n_0_FrameId[0]_i_1\
    );
\FrameId_reg[20]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => FrameId0,
      D => \n_7_FrameId_reg[20]_i_1\,
      Q => \^o8\(20),
      R => \n_0_FrameId[0]_i_1\
    );
\FrameId_reg[20]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_FrameId_reg[16]_i_1\,
      CO(3) => \n_0_FrameId_reg[20]_i_1\,
      CO(2) => \n_1_FrameId_reg[20]_i_1\,
      CO(1) => \n_2_FrameId_reg[20]_i_1\,
      CO(0) => \n_3_FrameId_reg[20]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_FrameId_reg[20]_i_1\,
      O(2) => \n_5_FrameId_reg[20]_i_1\,
      O(1) => \n_6_FrameId_reg[20]_i_1\,
      O(0) => \n_7_FrameId_reg[20]_i_1\,
      S(3) => \n_0_FrameId[20]_i_2\,
      S(2) => \n_0_FrameId[20]_i_3\,
      S(1) => \n_0_FrameId[20]_i_4\,
      S(0) => \n_0_FrameId[20]_i_5\
    );
\FrameId_reg[21]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => FrameId0,
      D => \n_6_FrameId_reg[20]_i_1\,
      Q => \^o8\(21),
      R => \n_0_FrameId[0]_i_1\
    );
\FrameId_reg[22]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => FrameId0,
      D => \n_5_FrameId_reg[20]_i_1\,
      Q => \^o8\(22),
      R => \n_0_FrameId[0]_i_1\
    );
\FrameId_reg[23]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => FrameId0,
      D => \n_4_FrameId_reg[20]_i_1\,
      Q => \^o8\(23),
      R => \n_0_FrameId[0]_i_1\
    );
\FrameId_reg[24]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => FrameId0,
      D => \n_7_FrameId_reg[24]_i_1\,
      Q => \^o8\(24),
      R => \n_0_FrameId[0]_i_1\
    );
\FrameId_reg[24]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_FrameId_reg[20]_i_1\,
      CO(3) => \n_0_FrameId_reg[24]_i_1\,
      CO(2) => \n_1_FrameId_reg[24]_i_1\,
      CO(1) => \n_2_FrameId_reg[24]_i_1\,
      CO(0) => \n_3_FrameId_reg[24]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_FrameId_reg[24]_i_1\,
      O(2) => \n_5_FrameId_reg[24]_i_1\,
      O(1) => \n_6_FrameId_reg[24]_i_1\,
      O(0) => \n_7_FrameId_reg[24]_i_1\,
      S(3) => \n_0_FrameId[24]_i_2\,
      S(2) => \n_0_FrameId[24]_i_3\,
      S(1) => \n_0_FrameId[24]_i_4\,
      S(0) => \n_0_FrameId[24]_i_5\
    );
\FrameId_reg[25]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => FrameId0,
      D => \n_6_FrameId_reg[24]_i_1\,
      Q => \^o8\(25),
      R => \n_0_FrameId[0]_i_1\
    );
\FrameId_reg[26]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => FrameId0,
      D => \n_5_FrameId_reg[24]_i_1\,
      Q => \^o8\(26),
      R => \n_0_FrameId[0]_i_1\
    );
\FrameId_reg[27]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => FrameId0,
      D => \n_4_FrameId_reg[24]_i_1\,
      Q => \^o8\(27),
      R => \n_0_FrameId[0]_i_1\
    );
\FrameId_reg[28]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => FrameId0,
      D => \n_7_FrameId_reg[28]_i_1\,
      Q => \^o8\(28),
      R => \n_0_FrameId[0]_i_1\
    );
\FrameId_reg[28]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_FrameId_reg[24]_i_1\,
      CO(3) => \NLW_FrameId_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \n_1_FrameId_reg[28]_i_1\,
      CO(1) => \n_2_FrameId_reg[28]_i_1\,
      CO(0) => \n_3_FrameId_reg[28]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_FrameId_reg[28]_i_1\,
      O(2) => \n_5_FrameId_reg[28]_i_1\,
      O(1) => \n_6_FrameId_reg[28]_i_1\,
      O(0) => \n_7_FrameId_reg[28]_i_1\,
      S(3) => \n_0_FrameId[28]_i_2\,
      S(2) => \n_0_FrameId[28]_i_3\,
      S(1) => \n_0_FrameId[28]_i_4\,
      S(0) => \n_0_FrameId[28]_i_5\
    );
\FrameId_reg[29]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => FrameId0,
      D => \n_6_FrameId_reg[28]_i_1\,
      Q => \^o8\(29),
      R => \n_0_FrameId[0]_i_1\
    );
\FrameId_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => FrameId0,
      D => \n_5_FrameId_reg[0]_i_3\,
      Q => \^o8\(2),
      R => \n_0_FrameId[0]_i_1\
    );
\FrameId_reg[30]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => FrameId0,
      D => \n_5_FrameId_reg[28]_i_1\,
      Q => \^o8\(30),
      R => \n_0_FrameId[0]_i_1\
    );
\FrameId_reg[31]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => FrameId0,
      D => \n_4_FrameId_reg[28]_i_1\,
      Q => \^o8\(31),
      R => \n_0_FrameId[0]_i_1\
    );
\FrameId_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => FrameId0,
      D => \n_4_FrameId_reg[0]_i_3\,
      Q => \^o8\(3),
      R => \n_0_FrameId[0]_i_1\
    );
\FrameId_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => FrameId0,
      D => \n_7_FrameId_reg[4]_i_1\,
      Q => \^o8\(4),
      R => \n_0_FrameId[0]_i_1\
    );
\FrameId_reg[4]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_FrameId_reg[0]_i_3\,
      CO(3) => \n_0_FrameId_reg[4]_i_1\,
      CO(2) => \n_1_FrameId_reg[4]_i_1\,
      CO(1) => \n_2_FrameId_reg[4]_i_1\,
      CO(0) => \n_3_FrameId_reg[4]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_FrameId_reg[4]_i_1\,
      O(2) => \n_5_FrameId_reg[4]_i_1\,
      O(1) => \n_6_FrameId_reg[4]_i_1\,
      O(0) => \n_7_FrameId_reg[4]_i_1\,
      S(3) => \n_0_FrameId[4]_i_2\,
      S(2) => \n_0_FrameId[4]_i_3\,
      S(1) => \n_0_FrameId[4]_i_4\,
      S(0) => \n_0_FrameId[4]_i_5\
    );
\FrameId_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => FrameId0,
      D => \n_6_FrameId_reg[4]_i_1\,
      Q => \^o8\(5),
      R => \n_0_FrameId[0]_i_1\
    );
\FrameId_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => FrameId0,
      D => \n_5_FrameId_reg[4]_i_1\,
      Q => \^o8\(6),
      R => \n_0_FrameId[0]_i_1\
    );
\FrameId_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => FrameId0,
      D => \n_4_FrameId_reg[4]_i_1\,
      Q => \^o8\(7),
      R => \n_0_FrameId[0]_i_1\
    );
\FrameId_reg[8]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => FrameId0,
      D => \n_7_FrameId_reg[8]_i_1\,
      Q => \^o8\(8),
      R => \n_0_FrameId[0]_i_1\
    );
\FrameId_reg[8]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_FrameId_reg[4]_i_1\,
      CO(3) => \n_0_FrameId_reg[8]_i_1\,
      CO(2) => \n_1_FrameId_reg[8]_i_1\,
      CO(1) => \n_2_FrameId_reg[8]_i_1\,
      CO(0) => \n_3_FrameId_reg[8]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_FrameId_reg[8]_i_1\,
      O(2) => \n_5_FrameId_reg[8]_i_1\,
      O(1) => \n_6_FrameId_reg[8]_i_1\,
      O(0) => \n_7_FrameId_reg[8]_i_1\,
      S(3) => \n_0_FrameId[8]_i_2\,
      S(2) => \n_0_FrameId[8]_i_3\,
      S(1) => \n_0_FrameId[8]_i_4\,
      S(0) => \n_0_FrameId[8]_i_5\
    );
\FrameId_reg[9]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => FrameId0,
      D => \n_6_FrameId_reg[8]_i_1\,
      Q => \^o8\(9),
      R => \n_0_FrameId[0]_i_1\
    );
read_process_manager: entity work.spad_manager_0_read_process_manager
    port map (
      ColSelect(5 downto 0) => ColSelect(5 downto 0),
      E(0) => E(0),
      O1 => O1,
      O2(0) => O2(0),
      Q(0) => read_data,
      ReadEnable => ReadEnable,
      RowGroup => RowGroup,
      RowSelect(2 downto 0) => RowSelect(2 downto 0),
      clk => clk,
      reset => reset
    );
\state[0]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"82000587"
    )
    port map (
      I0 => read_data,
      I1 => \n_0_state_durations_reg[8][17]\,
      I2 => \n_7_state_reg[0]_i_21\,
      I3 => \n_0_state_durations_reg[8][16]\,
      I4 => \n_4_state_reg[0]_i_22\,
      O => \n_0_state[0]_i_10\
    );
\state[0]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40F4FCFC"
    )
    port map (
      I0 => \n_0_state_durations_reg[8][14]\,
      I1 => \n_6_state_reg[0]_i_22\,
      I2 => \n_5_state_reg[0]_i_22\,
      I3 => \n_0_state_durations_reg[8][15]\,
      I4 => read_data,
      O => \n_0_state[0]_i_12\
    );
\state[0]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40F4FCFC"
    )
    port map (
      I0 => \n_0_state_durations_reg[8][12]\,
      I1 => \n_4_state_reg[0]_i_31\,
      I2 => \n_7_state_reg[0]_i_22\,
      I3 => \n_0_state_durations_reg[8][13]\,
      I4 => read_data,
      O => \n_0_state[0]_i_13\
    );
\state[0]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40F4FCFC"
    )
    port map (
      I0 => \n_0_state_durations_reg[8][10]\,
      I1 => \n_6_state_reg[0]_i_31\,
      I2 => \n_5_state_reg[0]_i_31\,
      I3 => \n_0_state_durations_reg[8][11]\,
      I4 => read_data,
      O => \n_0_state[0]_i_14\
    );
\state[0]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40F4FCFC"
    )
    port map (
      I0 => \n_0_state_durations_reg[8][8]\,
      I1 => \n_4_state_reg[0]_i_32\,
      I2 => \n_7_state_reg[0]_i_31\,
      I3 => \n_0_state_durations_reg[8][9]\,
      I4 => read_data,
      O => \n_0_state[0]_i_15\
    );
\state[0]_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"82000587"
    )
    port map (
      I0 => read_data,
      I1 => \n_0_state_durations_reg[8][15]\,
      I2 => \n_5_state_reg[0]_i_22\,
      I3 => \n_0_state_durations_reg[8][14]\,
      I4 => \n_6_state_reg[0]_i_22\,
      O => \n_0_state[0]_i_16\
    );
\state[0]_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"82000587"
    )
    port map (
      I0 => read_data,
      I1 => \n_0_state_durations_reg[8][13]\,
      I2 => \n_7_state_reg[0]_i_22\,
      I3 => \n_0_state_durations_reg[8][12]\,
      I4 => \n_4_state_reg[0]_i_31\,
      O => \n_0_state[0]_i_17\
    );
\state[0]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"82000587"
    )
    port map (
      I0 => read_data,
      I1 => \n_0_state_durations_reg[8][11]\,
      I2 => \n_5_state_reg[0]_i_31\,
      I3 => \n_0_state_durations_reg[8][10]\,
      I4 => \n_6_state_reg[0]_i_31\,
      O => \n_0_state[0]_i_18\
    );
\state[0]_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"82000587"
    )
    port map (
      I0 => read_data,
      I1 => \n_0_state_durations_reg[8][9]\,
      I2 => \n_7_state_reg[0]_i_31\,
      I3 => \n_0_state_durations_reg[8][8]\,
      I4 => \n_4_state_reg[0]_i_32\,
      O => \n_0_state[0]_i_19\
    );
\state[0]_i_23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40F4FCFC"
    )
    port map (
      I0 => \n_0_state_durations_reg[8][6]\,
      I1 => \n_6_state_reg[0]_i_32\,
      I2 => \n_5_state_reg[0]_i_32\,
      I3 => \n_0_state_durations_reg[8][7]\,
      I4 => read_data,
      O => \n_0_state[0]_i_23\
    );
\state[0]_i_24\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40F4FCFC"
    )
    port map (
      I0 => \n_0_state_durations_reg[8][4]\,
      I1 => \n_4_state_reg[0]_i_43\,
      I2 => \n_7_state_reg[0]_i_32\,
      I3 => \n_0_state_durations_reg[8][5]\,
      I4 => read_data,
      O => \n_0_state[0]_i_24\
    );
\state[0]_i_25\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40F4FCFC"
    )
    port map (
      I0 => \n_0_state_durations_reg[8][2]\,
      I1 => \n_6_state_reg[0]_i_43\,
      I2 => \n_5_state_reg[0]_i_43\,
      I3 => \n_0_state_durations_reg[8][3]\,
      I4 => read_data,
      O => \n_0_state[0]_i_25\
    );
\state[0]_i_26\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"222B"
    )
    port map (
      I0 => \n_7_state_reg[0]_i_43\,
      I1 => state_durations(1),
      I2 => state_durations(0),
      I3 => state_counter_reg(0),
      O => \n_0_state[0]_i_26\
    );
\state[0]_i_27\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"82000587"
    )
    port map (
      I0 => read_data,
      I1 => \n_0_state_durations_reg[8][7]\,
      I2 => \n_5_state_reg[0]_i_32\,
      I3 => \n_0_state_durations_reg[8][6]\,
      I4 => \n_6_state_reg[0]_i_32\,
      O => \n_0_state[0]_i_27\
    );
\state[0]_i_28\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"82000587"
    )
    port map (
      I0 => read_data,
      I1 => \n_0_state_durations_reg[8][5]\,
      I2 => \n_7_state_reg[0]_i_32\,
      I3 => \n_0_state_durations_reg[8][4]\,
      I4 => \n_4_state_reg[0]_i_43\,
      O => \n_0_state[0]_i_28\
    );
\state[0]_i_29\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"82000587"
    )
    port map (
      I0 => read_data,
      I1 => \n_0_state_durations_reg[8][3]\,
      I2 => \n_5_state_reg[0]_i_43\,
      I3 => \n_0_state_durations_reg[8][2]\,
      I4 => \n_6_state_reg[0]_i_43\,
      O => \n_0_state[0]_i_29\
    );
\state[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF2A"
    )
    port map (
      I0 => \n_6_state_reg[0]_i_20\,
      I1 => \n_0_state_durations_reg[8][22]\,
      I2 => read_data,
      I3 => \n_1_state_reg[0]_i_20\,
      O => \n_0_state[0]_i_3\
    );
\state[0]_i_30\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"84"
    )
    port map (
      I0 => state_durations(1),
      I1 => \n_0_state[0]_i_46\,
      I2 => \n_7_state_reg[0]_i_43\,
      O => \n_0_state[0]_i_30\
    );
\state[0]_i_33\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => state_counter_reg(22),
      O => \n_0_state[0]_i_33\
    );
\state[0]_i_34\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => state_counter_reg(21),
      O => \n_0_state[0]_i_34\
    );
\state[0]_i_35\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => state_counter_reg(20),
      O => \n_0_state[0]_i_35\
    );
\state[0]_i_36\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => state_counter_reg(19),
      O => \n_0_state[0]_i_36\
    );
\state[0]_i_37\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => state_counter_reg(18),
      O => \n_0_state[0]_i_37\
    );
\state[0]_i_38\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => state_counter_reg(17),
      O => \n_0_state[0]_i_38\
    );
\state[0]_i_39\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => state_counter_reg(16),
      O => \n_0_state[0]_i_39\
    );
\state[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40F4FCFC"
    )
    port map (
      I0 => \n_0_state_durations_reg[8][20]\,
      I1 => \n_4_state_reg[0]_i_21\,
      I2 => \n_7_state_reg[0]_i_20\,
      I3 => \n_0_state_durations_reg[8][21]\,
      I4 => read_data,
      O => \n_0_state[0]_i_4\
    );
\state[0]_i_40\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => state_counter_reg(15),
      O => \n_0_state[0]_i_40\
    );
\state[0]_i_41\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => state_counter_reg(14),
      O => \n_0_state[0]_i_41\
    );
\state[0]_i_42\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => state_counter_reg(13),
      O => \n_0_state[0]_i_42\
    );
\state[0]_i_44\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA00AA3F"
    )
    port map (
      I0 => \n_0_state_durations_reg[8][1]\,
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => read_data,
      I4 => \n_0_state_reg[1]\,
      O => state_durations(1)
    );
\state[0]_i_45\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA00AA0C"
    )
    port map (
      I0 => \n_0_state_durations_reg[8][0]\,
      I1 => \n_0_state_reg[1]\,
      I2 => \^q\(1),
      I3 => read_data,
      I4 => \^q\(0),
      O => state_durations(0)
    );
\state[0]_i_46\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3233FEFFCDCC0100"
    )
    port map (
      I0 => \^q\(0),
      I1 => read_data,
      I2 => \^q\(1),
      I3 => \n_0_state_reg[1]\,
      I4 => \n_0_state_durations_reg[8][0]\,
      I5 => state_counter_reg(0),
      O => \n_0_state[0]_i_46\
    );
\state[0]_i_47\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => state_counter_reg(12),
      O => \n_0_state[0]_i_47\
    );
\state[0]_i_48\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => state_counter_reg(11),
      O => \n_0_state[0]_i_48\
    );
\state[0]_i_49\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => state_counter_reg(10),
      O => \n_0_state[0]_i_49\
    );
\state[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40F4FCFC"
    )
    port map (
      I0 => \n_0_state_durations_reg[8][18]\,
      I1 => \n_6_state_reg[0]_i_21\,
      I2 => \n_5_state_reg[0]_i_21\,
      I3 => \n_0_state_durations_reg[8][19]\,
      I4 => read_data,
      O => \n_0_state[0]_i_5\
    );
\state[0]_i_50\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => state_counter_reg(9),
      O => \n_0_state[0]_i_50\
    );
\state[0]_i_51\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => state_counter_reg(8),
      O => \n_0_state[0]_i_51\
    );
\state[0]_i_52\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => state_counter_reg(7),
      O => \n_0_state[0]_i_52\
    );
\state[0]_i_53\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => state_counter_reg(6),
      O => \n_0_state[0]_i_53\
    );
\state[0]_i_54\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => state_counter_reg(5),
      O => \n_0_state[0]_i_54\
    );
\state[0]_i_55\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => state_counter_reg(4),
      O => \n_0_state[0]_i_55\
    );
\state[0]_i_56\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => state_counter_reg(3),
      O => \n_0_state[0]_i_56\
    );
\state[0]_i_57\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => state_counter_reg(2),
      O => \n_0_state[0]_i_57\
    );
\state[0]_i_58\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => state_counter_reg(1),
      O => \n_0_state[0]_i_58\
    );
\state[0]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40F4FCFC"
    )
    port map (
      I0 => \n_0_state_durations_reg[8][16]\,
      I1 => \n_4_state_reg[0]_i_22\,
      I2 => \n_7_state_reg[0]_i_21\,
      I3 => \n_0_state_durations_reg[8][17]\,
      I4 => read_data,
      O => \n_0_state[0]_i_6\
    );
\state[0]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0087"
    )
    port map (
      I0 => \n_0_state_durations_reg[8][22]\,
      I1 => read_data,
      I2 => \n_6_state_reg[0]_i_20\,
      I3 => \n_1_state_reg[0]_i_20\,
      O => \n_0_state[0]_i_7\
    );
\state[0]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"82000587"
    )
    port map (
      I0 => read_data,
      I1 => \n_0_state_durations_reg[8][21]\,
      I2 => \n_7_state_reg[0]_i_20\,
      I3 => \n_0_state_durations_reg[8][20]\,
      I4 => \n_4_state_reg[0]_i_21\,
      O => \n_0_state[0]_i_8\
    );
\state[0]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"82000587"
    )
    port map (
      I0 => read_data,
      I1 => \n_0_state_durations_reg[8][19]\,
      I2 => \n_5_state_reg[0]_i_21\,
      I3 => \n_0_state_durations_reg[8][18]\,
      I4 => \n_6_state_reg[0]_i_21\,
      O => \n_0_state[0]_i_9\
    );
\state_counter[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => reset,
      I1 => is_next_state_needed,
      O => \n_0_state_counter[0]_i_1\
    );
\state_counter[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => state_counter_reg(3),
      O => \n_0_state_counter[0]_i_3\
    );
\state_counter[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => state_counter_reg(2),
      O => \n_0_state_counter[0]_i_4\
    );
\state_counter[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => state_counter_reg(1),
      O => \n_0_state_counter[0]_i_5\
    );
\state_counter[0]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => state_counter_reg(0),
      O => \n_0_state_counter[0]_i_6\
    );
\state_counter[12]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => state_counter_reg(15),
      O => \n_0_state_counter[12]_i_2\
    );
\state_counter[12]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => state_counter_reg(14),
      O => \n_0_state_counter[12]_i_3\
    );
\state_counter[12]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => state_counter_reg(13),
      O => \n_0_state_counter[12]_i_4\
    );
\state_counter[12]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => state_counter_reg(12),
      O => \n_0_state_counter[12]_i_5\
    );
\state_counter[16]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => state_counter_reg(19),
      O => \n_0_state_counter[16]_i_2\
    );
\state_counter[16]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => state_counter_reg(18),
      O => \n_0_state_counter[16]_i_3\
    );
\state_counter[16]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => state_counter_reg(17),
      O => \n_0_state_counter[16]_i_4\
    );
\state_counter[16]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => state_counter_reg(16),
      O => \n_0_state_counter[16]_i_5\
    );
\state_counter[20]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => state_counter_reg(22),
      O => \n_0_state_counter[20]_i_2\
    );
\state_counter[20]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => state_counter_reg(21),
      O => \n_0_state_counter[20]_i_3\
    );
\state_counter[20]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => state_counter_reg(20),
      O => \n_0_state_counter[20]_i_4\
    );
\state_counter[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => state_counter_reg(7),
      O => \n_0_state_counter[4]_i_2\
    );
\state_counter[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => state_counter_reg(6),
      O => \n_0_state_counter[4]_i_3\
    );
\state_counter[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => state_counter_reg(5),
      O => \n_0_state_counter[4]_i_4\
    );
\state_counter[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => state_counter_reg(4),
      O => \n_0_state_counter[4]_i_5\
    );
\state_counter[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => state_counter_reg(11),
      O => \n_0_state_counter[8]_i_2\
    );
\state_counter[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => state_counter_reg(10),
      O => \n_0_state_counter[8]_i_3\
    );
\state_counter[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => state_counter_reg(9),
      O => \n_0_state_counter[8]_i_4\
    );
\state_counter[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => state_counter_reg(8),
      O => \n_0_state_counter[8]_i_5\
    );
\state_counter_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_7_state_counter_reg[0]_i_2\,
      Q => state_counter_reg(0),
      R => \n_0_state_counter[0]_i_1\
    );
\state_counter_reg[0]_i_2\: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3) => \n_0_state_counter_reg[0]_i_2\,
      CO(2) => \n_1_state_counter_reg[0]_i_2\,
      CO(1) => \n_2_state_counter_reg[0]_i_2\,
      CO(0) => \n_3_state_counter_reg[0]_i_2\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => \n_4_state_counter_reg[0]_i_2\,
      O(2) => \n_5_state_counter_reg[0]_i_2\,
      O(1) => \n_6_state_counter_reg[0]_i_2\,
      O(0) => \n_7_state_counter_reg[0]_i_2\,
      S(3) => \n_0_state_counter[0]_i_3\,
      S(2) => \n_0_state_counter[0]_i_4\,
      S(1) => \n_0_state_counter[0]_i_5\,
      S(0) => \n_0_state_counter[0]_i_6\
    );
\state_counter_reg[10]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_5_state_counter_reg[8]_i_1\,
      Q => state_counter_reg(10),
      R => \n_0_state_counter[0]_i_1\
    );
\state_counter_reg[11]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_4_state_counter_reg[8]_i_1\,
      Q => state_counter_reg(11),
      R => \n_0_state_counter[0]_i_1\
    );
\state_counter_reg[12]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_7_state_counter_reg[12]_i_1\,
      Q => state_counter_reg(12),
      R => \n_0_state_counter[0]_i_1\
    );
\state_counter_reg[12]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_state_counter_reg[8]_i_1\,
      CO(3) => \n_0_state_counter_reg[12]_i_1\,
      CO(2) => \n_1_state_counter_reg[12]_i_1\,
      CO(1) => \n_2_state_counter_reg[12]_i_1\,
      CO(0) => \n_3_state_counter_reg[12]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_state_counter_reg[12]_i_1\,
      O(2) => \n_5_state_counter_reg[12]_i_1\,
      O(1) => \n_6_state_counter_reg[12]_i_1\,
      O(0) => \n_7_state_counter_reg[12]_i_1\,
      S(3) => \n_0_state_counter[12]_i_2\,
      S(2) => \n_0_state_counter[12]_i_3\,
      S(1) => \n_0_state_counter[12]_i_4\,
      S(0) => \n_0_state_counter[12]_i_5\
    );
\state_counter_reg[13]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_6_state_counter_reg[12]_i_1\,
      Q => state_counter_reg(13),
      R => \n_0_state_counter[0]_i_1\
    );
\state_counter_reg[14]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_5_state_counter_reg[12]_i_1\,
      Q => state_counter_reg(14),
      R => \n_0_state_counter[0]_i_1\
    );
\state_counter_reg[15]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_4_state_counter_reg[12]_i_1\,
      Q => state_counter_reg(15),
      R => \n_0_state_counter[0]_i_1\
    );
\state_counter_reg[16]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_7_state_counter_reg[16]_i_1\,
      Q => state_counter_reg(16),
      R => \n_0_state_counter[0]_i_1\
    );
\state_counter_reg[16]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_state_counter_reg[12]_i_1\,
      CO(3) => \n_0_state_counter_reg[16]_i_1\,
      CO(2) => \n_1_state_counter_reg[16]_i_1\,
      CO(1) => \n_2_state_counter_reg[16]_i_1\,
      CO(0) => \n_3_state_counter_reg[16]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_state_counter_reg[16]_i_1\,
      O(2) => \n_5_state_counter_reg[16]_i_1\,
      O(1) => \n_6_state_counter_reg[16]_i_1\,
      O(0) => \n_7_state_counter_reg[16]_i_1\,
      S(3) => \n_0_state_counter[16]_i_2\,
      S(2) => \n_0_state_counter[16]_i_3\,
      S(1) => \n_0_state_counter[16]_i_4\,
      S(0) => \n_0_state_counter[16]_i_5\
    );
\state_counter_reg[17]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_6_state_counter_reg[16]_i_1\,
      Q => state_counter_reg(17),
      R => \n_0_state_counter[0]_i_1\
    );
\state_counter_reg[18]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_5_state_counter_reg[16]_i_1\,
      Q => state_counter_reg(18),
      R => \n_0_state_counter[0]_i_1\
    );
\state_counter_reg[19]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_4_state_counter_reg[16]_i_1\,
      Q => state_counter_reg(19),
      R => \n_0_state_counter[0]_i_1\
    );
\state_counter_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_6_state_counter_reg[0]_i_2\,
      Q => state_counter_reg(1),
      R => \n_0_state_counter[0]_i_1\
    );
\state_counter_reg[20]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_7_state_counter_reg[20]_i_1\,
      Q => state_counter_reg(20),
      R => \n_0_state_counter[0]_i_1\
    );
\state_counter_reg[20]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_state_counter_reg[16]_i_1\,
      CO(3 downto 2) => \NLW_state_counter_reg[20]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \n_2_state_counter_reg[20]_i_1\,
      CO(0) => \n_3_state_counter_reg[20]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \NLW_state_counter_reg[20]_i_1_O_UNCONNECTED\(3),
      O(2) => \n_5_state_counter_reg[20]_i_1\,
      O(1) => \n_6_state_counter_reg[20]_i_1\,
      O(0) => \n_7_state_counter_reg[20]_i_1\,
      S(3) => '0',
      S(2) => \n_0_state_counter[20]_i_2\,
      S(1) => \n_0_state_counter[20]_i_3\,
      S(0) => \n_0_state_counter[20]_i_4\
    );
\state_counter_reg[21]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_6_state_counter_reg[20]_i_1\,
      Q => state_counter_reg(21),
      R => \n_0_state_counter[0]_i_1\
    );
\state_counter_reg[22]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_5_state_counter_reg[20]_i_1\,
      Q => state_counter_reg(22),
      R => \n_0_state_counter[0]_i_1\
    );
\state_counter_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_5_state_counter_reg[0]_i_2\,
      Q => state_counter_reg(2),
      R => \n_0_state_counter[0]_i_1\
    );
\state_counter_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_4_state_counter_reg[0]_i_2\,
      Q => state_counter_reg(3),
      R => \n_0_state_counter[0]_i_1\
    );
\state_counter_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_7_state_counter_reg[4]_i_1\,
      Q => state_counter_reg(4),
      R => \n_0_state_counter[0]_i_1\
    );
\state_counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_state_counter_reg[0]_i_2\,
      CO(3) => \n_0_state_counter_reg[4]_i_1\,
      CO(2) => \n_1_state_counter_reg[4]_i_1\,
      CO(1) => \n_2_state_counter_reg[4]_i_1\,
      CO(0) => \n_3_state_counter_reg[4]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_state_counter_reg[4]_i_1\,
      O(2) => \n_5_state_counter_reg[4]_i_1\,
      O(1) => \n_6_state_counter_reg[4]_i_1\,
      O(0) => \n_7_state_counter_reg[4]_i_1\,
      S(3) => \n_0_state_counter[4]_i_2\,
      S(2) => \n_0_state_counter[4]_i_3\,
      S(1) => \n_0_state_counter[4]_i_4\,
      S(0) => \n_0_state_counter[4]_i_5\
    );
\state_counter_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_6_state_counter_reg[4]_i_1\,
      Q => state_counter_reg(5),
      R => \n_0_state_counter[0]_i_1\
    );
\state_counter_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_5_state_counter_reg[4]_i_1\,
      Q => state_counter_reg(6),
      R => \n_0_state_counter[0]_i_1\
    );
\state_counter_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_4_state_counter_reg[4]_i_1\,
      Q => state_counter_reg(7),
      R => \n_0_state_counter[0]_i_1\
    );
\state_counter_reg[8]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_7_state_counter_reg[8]_i_1\,
      Q => state_counter_reg(8),
      R => \n_0_state_counter[0]_i_1\
    );
\state_counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_state_counter_reg[4]_i_1\,
      CO(3) => \n_0_state_counter_reg[8]_i_1\,
      CO(2) => \n_1_state_counter_reg[8]_i_1\,
      CO(1) => \n_2_state_counter_reg[8]_i_1\,
      CO(0) => \n_3_state_counter_reg[8]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_state_counter_reg[8]_i_1\,
      O(2) => \n_5_state_counter_reg[8]_i_1\,
      O(1) => \n_6_state_counter_reg[8]_i_1\,
      O(0) => \n_7_state_counter_reg[8]_i_1\,
      S(3) => \n_0_state_counter[8]_i_2\,
      S(2) => \n_0_state_counter[8]_i_3\,
      S(1) => \n_0_state_counter[8]_i_4\,
      S(0) => \n_0_state_counter[8]_i_5\
    );
\state_counter_reg[9]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => \n_6_state_counter_reg[8]_i_1\,
      Q => state_counter_reg(9),
      R => \n_0_state_counter[0]_i_1\
    );
\state_durations[8][11]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => FrameDurationRequestedClks(11),
      O => \n_0_state_durations[8][11]_i_2\
    );
\state_durations[8][11]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => FrameDurationRequestedClks(10),
      O => \n_0_state_durations[8][11]_i_3\
    );
\state_durations[8][11]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => FrameDurationRequestedClks(9),
      O => \n_0_state_durations[8][11]_i_4\
    );
\state_durations[8][11]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => FrameDurationRequestedClks(8),
      O => \n_0_state_durations[8][11]_i_5\
    );
\state_durations[8][15]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => FrameDurationRequestedClks(15),
      O => \n_0_state_durations[8][15]_i_2\
    );
\state_durations[8][15]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => FrameDurationRequestedClks(14),
      O => \n_0_state_durations[8][15]_i_3\
    );
\state_durations[8][15]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => FrameDurationRequestedClks(13),
      O => \n_0_state_durations[8][15]_i_4\
    );
\state_durations[8][15]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => FrameDurationRequestedClks(12),
      O => \n_0_state_durations[8][15]_i_5\
    );
\state_durations[8][19]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => FrameDurationRequestedClks(19),
      O => \n_0_state_durations[8][19]_i_2\
    );
\state_durations[8][19]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => FrameDurationRequestedClks(18),
      O => \n_0_state_durations[8][19]_i_3\
    );
\state_durations[8][19]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => FrameDurationRequestedClks(17),
      O => \n_0_state_durations[8][19]_i_4\
    );
\state_durations[8][19]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => FrameDurationRequestedClks(16),
      O => \n_0_state_durations[8][19]_i_5\
    );
\state_durations[8][22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => read_data,
      I1 => \n_0_state_durations[8][22]_i_3\,
      I2 => \n_0_state_durations[8][22]_i_4\,
      O => FrameId11_out
    );
\state_durations[8][22]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      I0 => FrameDurationRequestedClks(20),
      I1 => FrameDurationRequestedClks(21),
      I2 => FrameDurationRequestedClks(19),
      I3 => FrameDurationRequestedClks(13),
      I4 => FrameDurationRequestedClks(14),
      O => \n_0_state_durations[8][22]_i_10\
    );
\state_durations[8][22]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001F00"
    )
    port map (
      I0 => FrameDurationRequestedClks(0),
      I1 => FrameDurationRequestedClks(1),
      I2 => FrameDurationRequestedClks(2),
      I3 => \n_0_state_durations[8][22]_i_7\,
      I4 => \n_0_state_durations[8][22]_i_8\,
      O => \n_0_state_durations[8][22]_i_3\
    );
\state_durations[8][22]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000100FF"
    )
    port map (
      I0 => FrameDurationRequestedClks(11),
      I1 => FrameDurationRequestedClks(10),
      I2 => FrameDurationRequestedClks(9),
      I3 => \n_0_state_durations[8][22]_i_8\,
      I4 => FrameDurationRequestedClks(12),
      O => \n_0_state_durations[8][22]_i_4\
    );
\state_durations[8][22]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => FrameDurationRequestedClks(21),
      O => \n_0_state_durations[8][22]_i_5\
    );
\state_durations[8][22]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => FrameDurationRequestedClks(20),
      O => \n_0_state_durations[8][22]_i_6\
    );
\state_durations[8][22]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
    port map (
      I0 => FrameDurationRequestedClks(7),
      I1 => FrameDurationRequestedClks(8),
      I2 => FrameDurationRequestedClks(10),
      I3 => FrameDurationRequestedClks(11),
      I4 => \n_0_state_durations[8][22]_i_9\,
      O => \n_0_state_durations[8][22]_i_7\
    );
\state_durations[8][22]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      I0 => \n_0_state_durations[8][22]_i_10\,
      I1 => FrameDurationRequestedClks(18),
      I2 => FrameDurationRequestedClks(17),
      I3 => FrameDurationRequestedClks(16),
      I4 => FrameDurationRequestedClks(15),
      O => \n_0_state_durations[8][22]_i_8\
    );
\state_durations[8][22]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => FrameDurationRequestedClks(4),
      I1 => FrameDurationRequestedClks(3),
      I2 => FrameDurationRequestedClks(6),
      I3 => FrameDurationRequestedClks(5),
      O => \n_0_state_durations[8][22]_i_9\
    );
\state_durations[8][3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => FrameDurationRequestedClks(0),
      O => \n_0_state_durations[8][3]_i_2\
    );
\state_durations[8][3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => FrameDurationRequestedClks(2),
      I1 => FrameDurationRequestedClks(3),
      O => \n_0_state_durations[8][3]_i_3\
    );
\state_durations[8][3]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => FrameDurationRequestedClks(2),
      O => \n_0_state_durations[8][3]_i_4\
    );
\state_durations[8][3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => FrameDurationRequestedClks(0),
      I1 => FrameDurationRequestedClks(1),
      O => \n_0_state_durations[8][3]_i_5\
    );
\state_durations[8][3]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => FrameDurationRequestedClks(0),
      O => \n_0_state_durations[8][3]_i_6\
    );
\state_durations[8][7]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => FrameDurationRequestedClks(7),
      O => \n_0_state_durations[8][7]_i_2\
    );
\state_durations[8][7]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => FrameDurationRequestedClks(6),
      O => \n_0_state_durations[8][7]_i_3\
    );
\state_durations[8][7]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => FrameDurationRequestedClks(5),
      O => \n_0_state_durations[8][7]_i_4\
    );
\state_durations[8][7]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => FrameDurationRequestedClks(4),
      O => \n_0_state_durations[8][7]_i_5\
    );
\state_durations_reg[8][0]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => FrameId11_out,
      D => \n_7_state_durations_reg[8][3]_i_1\,
      Q => \n_0_state_durations_reg[8][0]\,
      R => reset
    );
\state_durations_reg[8][10]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => FrameId11_out,
      D => \n_5_state_durations_reg[8][11]_i_1\,
      Q => \n_0_state_durations_reg[8][10]\,
      R => reset
    );
\state_durations_reg[8][11]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => FrameId11_out,
      D => \n_4_state_durations_reg[8][11]_i_1\,
      Q => \n_0_state_durations_reg[8][11]\,
      R => reset
    );
\state_durations_reg[8][11]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_state_durations_reg[8][7]_i_1\,
      CO(3) => \n_0_state_durations_reg[8][11]_i_1\,
      CO(2) => \n_1_state_durations_reg[8][11]_i_1\,
      CO(1) => \n_2_state_durations_reg[8][11]_i_1\,
      CO(0) => \n_3_state_durations_reg[8][11]_i_1\,
      CYINIT => '0',
      DI(3) => '1',
      DI(2) => '1',
      DI(1) => '1',
      DI(0) => '1',
      O(3) => \n_4_state_durations_reg[8][11]_i_1\,
      O(2) => \n_5_state_durations_reg[8][11]_i_1\,
      O(1) => \n_6_state_durations_reg[8][11]_i_1\,
      O(0) => \n_7_state_durations_reg[8][11]_i_1\,
      S(3) => \n_0_state_durations[8][11]_i_2\,
      S(2) => \n_0_state_durations[8][11]_i_3\,
      S(1) => \n_0_state_durations[8][11]_i_4\,
      S(0) => \n_0_state_durations[8][11]_i_5\
    );
\state_durations_reg[8][12]\: unisim.vcomponents.FDSE
    port map (
      C => clk,
      CE => FrameId11_out,
      D => \n_7_state_durations_reg[8][15]_i_1\,
      Q => \n_0_state_durations_reg[8][12]\,
      S => reset
    );
\state_durations_reg[8][13]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => FrameId11_out,
      D => \n_6_state_durations_reg[8][15]_i_1\,
      Q => \n_0_state_durations_reg[8][13]\,
      R => reset
    );
\state_durations_reg[8][14]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => FrameId11_out,
      D => \n_5_state_durations_reg[8][15]_i_1\,
      Q => \n_0_state_durations_reg[8][14]\,
      R => reset
    );
\state_durations_reg[8][15]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => FrameId11_out,
      D => \n_4_state_durations_reg[8][15]_i_1\,
      Q => \n_0_state_durations_reg[8][15]\,
      R => reset
    );
\state_durations_reg[8][15]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_state_durations_reg[8][11]_i_1\,
      CO(3) => \n_0_state_durations_reg[8][15]_i_1\,
      CO(2) => \n_1_state_durations_reg[8][15]_i_1\,
      CO(1) => \n_2_state_durations_reg[8][15]_i_1\,
      CO(0) => \n_3_state_durations_reg[8][15]_i_1\,
      CYINIT => '0',
      DI(3) => '1',
      DI(2) => '1',
      DI(1) => '1',
      DI(0) => '1',
      O(3) => \n_4_state_durations_reg[8][15]_i_1\,
      O(2) => \n_5_state_durations_reg[8][15]_i_1\,
      O(1) => \n_6_state_durations_reg[8][15]_i_1\,
      O(0) => \n_7_state_durations_reg[8][15]_i_1\,
      S(3) => \n_0_state_durations[8][15]_i_2\,
      S(2) => \n_0_state_durations[8][15]_i_3\,
      S(1) => \n_0_state_durations[8][15]_i_4\,
      S(0) => \n_0_state_durations[8][15]_i_5\
    );
\state_durations_reg[8][16]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => FrameId11_out,
      D => \n_7_state_durations_reg[8][19]_i_1\,
      Q => \n_0_state_durations_reg[8][16]\,
      R => reset
    );
\state_durations_reg[8][17]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => FrameId11_out,
      D => \n_6_state_durations_reg[8][19]_i_1\,
      Q => \n_0_state_durations_reg[8][17]\,
      R => reset
    );
\state_durations_reg[8][18]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => FrameId11_out,
      D => \n_5_state_durations_reg[8][19]_i_1\,
      Q => \n_0_state_durations_reg[8][18]\,
      R => reset
    );
\state_durations_reg[8][19]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => FrameId11_out,
      D => \n_4_state_durations_reg[8][19]_i_1\,
      Q => \n_0_state_durations_reg[8][19]\,
      R => reset
    );
\state_durations_reg[8][19]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_state_durations_reg[8][15]_i_1\,
      CO(3) => \n_0_state_durations_reg[8][19]_i_1\,
      CO(2) => \n_1_state_durations_reg[8][19]_i_1\,
      CO(1) => \n_2_state_durations_reg[8][19]_i_1\,
      CO(0) => \n_3_state_durations_reg[8][19]_i_1\,
      CYINIT => '0',
      DI(3) => '1',
      DI(2) => '1',
      DI(1) => '1',
      DI(0) => '1',
      O(3) => \n_4_state_durations_reg[8][19]_i_1\,
      O(2) => \n_5_state_durations_reg[8][19]_i_1\,
      O(1) => \n_6_state_durations_reg[8][19]_i_1\,
      O(0) => \n_7_state_durations_reg[8][19]_i_1\,
      S(3) => \n_0_state_durations[8][19]_i_2\,
      S(2) => \n_0_state_durations[8][19]_i_3\,
      S(1) => \n_0_state_durations[8][19]_i_4\,
      S(0) => \n_0_state_durations[8][19]_i_5\
    );
\state_durations_reg[8][1]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => FrameId11_out,
      D => \n_6_state_durations_reg[8][3]_i_1\,
      Q => \n_0_state_durations_reg[8][1]\,
      R => reset
    );
\state_durations_reg[8][20]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => FrameId11_out,
      D => \n_7_state_durations_reg[8][22]_i_2\,
      Q => \n_0_state_durations_reg[8][20]\,
      R => reset
    );
\state_durations_reg[8][21]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => FrameId11_out,
      D => \n_6_state_durations_reg[8][22]_i_2\,
      Q => \n_0_state_durations_reg[8][21]\,
      R => reset
    );
\state_durations_reg[8][22]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => FrameId11_out,
      D => \n_5_state_durations_reg[8][22]_i_2\,
      Q => \n_0_state_durations_reg[8][22]\,
      R => reset
    );
\state_durations_reg[8][22]_i_2\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_state_durations_reg[8][19]_i_1\,
      CO(3 downto 2) => \NLW_state_durations_reg[8][22]_i_2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \n_2_state_durations_reg[8][22]_i_2\,
      CO(0) => \n_3_state_durations_reg[8][22]_i_2\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '1',
      DI(0) => '1',
      O(3) => \NLW_state_durations_reg[8][22]_i_2_O_UNCONNECTED\(3),
      O(2) => \n_5_state_durations_reg[8][22]_i_2\,
      O(1) => \n_6_state_durations_reg[8][22]_i_2\,
      O(0) => \n_7_state_durations_reg[8][22]_i_2\,
      S(3) => '0',
      S(2) => '1',
      S(1) => \n_0_state_durations[8][22]_i_5\,
      S(0) => \n_0_state_durations[8][22]_i_6\
    );
\state_durations_reg[8][2]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => FrameId11_out,
      D => \n_5_state_durations_reg[8][3]_i_1\,
      Q => \n_0_state_durations_reg[8][2]\,
      R => reset
    );
\state_durations_reg[8][3]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => FrameId11_out,
      D => \n_4_state_durations_reg[8][3]_i_1\,
      Q => \n_0_state_durations_reg[8][3]\,
      R => reset
    );
\state_durations_reg[8][3]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3) => \n_0_state_durations_reg[8][3]_i_1\,
      CO(2) => \n_1_state_durations_reg[8][3]_i_1\,
      CO(1) => \n_2_state_durations_reg[8][3]_i_1\,
      CO(0) => \n_3_state_durations_reg[8][3]_i_1\,
      CYINIT => '1',
      DI(3) => FrameDurationRequestedClks(2),
      DI(2) => '1',
      DI(1) => FrameDurationRequestedClks(0),
      DI(0) => \n_0_state_durations[8][3]_i_2\,
      O(3) => \n_4_state_durations_reg[8][3]_i_1\,
      O(2) => \n_5_state_durations_reg[8][3]_i_1\,
      O(1) => \n_6_state_durations_reg[8][3]_i_1\,
      O(0) => \n_7_state_durations_reg[8][3]_i_1\,
      S(3) => \n_0_state_durations[8][3]_i_3\,
      S(2) => \n_0_state_durations[8][3]_i_4\,
      S(1) => \n_0_state_durations[8][3]_i_5\,
      S(0) => \n_0_state_durations[8][3]_i_6\
    );
\state_durations_reg[8][4]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => FrameId11_out,
      D => \n_7_state_durations_reg[8][7]_i_1\,
      Q => \n_0_state_durations_reg[8][4]\,
      R => reset
    );
\state_durations_reg[8][5]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => FrameId11_out,
      D => \n_6_state_durations_reg[8][7]_i_1\,
      Q => \n_0_state_durations_reg[8][5]\,
      R => reset
    );
\state_durations_reg[8][6]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => FrameId11_out,
      D => \n_5_state_durations_reg[8][7]_i_1\,
      Q => \n_0_state_durations_reg[8][6]\,
      R => reset
    );
\state_durations_reg[8][7]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => FrameId11_out,
      D => \n_4_state_durations_reg[8][7]_i_1\,
      Q => \n_0_state_durations_reg[8][7]\,
      R => reset
    );
\state_durations_reg[8][7]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_state_durations_reg[8][3]_i_1\,
      CO(3) => \n_0_state_durations_reg[8][7]_i_1\,
      CO(2) => \n_1_state_durations_reg[8][7]_i_1\,
      CO(1) => \n_2_state_durations_reg[8][7]_i_1\,
      CO(0) => \n_3_state_durations_reg[8][7]_i_1\,
      CYINIT => '0',
      DI(3) => '1',
      DI(2) => '1',
      DI(1) => '1',
      DI(0) => '1',
      O(3) => \n_4_state_durations_reg[8][7]_i_1\,
      O(2) => \n_5_state_durations_reg[8][7]_i_1\,
      O(1) => \n_6_state_durations_reg[8][7]_i_1\,
      O(0) => \n_7_state_durations_reg[8][7]_i_1\,
      S(3) => \n_0_state_durations[8][7]_i_2\,
      S(2) => \n_0_state_durations[8][7]_i_3\,
      S(1) => \n_0_state_durations[8][7]_i_4\,
      S(0) => \n_0_state_durations[8][7]_i_5\
    );
\state_durations_reg[8][8]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => FrameId11_out,
      D => \n_7_state_durations_reg[8][11]_i_1\,
      Q => \n_0_state_durations_reg[8][8]\,
      R => reset
    );
\state_durations_reg[8][9]\: unisim.vcomponents.FDSE
    port map (
      C => clk,
      CE => FrameId11_out,
      D => \n_6_state_durations_reg[8][11]_i_1\,
      Q => \n_0_state_durations_reg[8][9]\,
      S => reset
    );
\state_reg[0]\: unisim.vcomponents.FDSE
    port map (
      C => clk,
      CE => is_next_state_needed,
      D => read_data,
      Q => \^q\(0),
      S => reset
    );
\state_reg[0]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_state_reg[0]_i_2\,
      CO(3) => is_next_state_needed,
      CO(2) => \n_1_state_reg[0]_i_1\,
      CO(1) => \n_2_state_reg[0]_i_1\,
      CO(0) => \n_3_state_reg[0]_i_1\,
      CYINIT => '0',
      DI(3) => \n_0_state[0]_i_3\,
      DI(2) => \n_0_state[0]_i_4\,
      DI(1) => \n_0_state[0]_i_5\,
      DI(0) => \n_0_state[0]_i_6\,
      O(3 downto 0) => \NLW_state_reg[0]_i_1_O_UNCONNECTED\(3 downto 0),
      S(3) => \n_0_state[0]_i_7\,
      S(2) => \n_0_state[0]_i_8\,
      S(1) => \n_0_state[0]_i_9\,
      S(0) => \n_0_state[0]_i_10\
    );
\state_reg[0]_i_11\: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3) => \n_0_state_reg[0]_i_11\,
      CO(2) => \n_1_state_reg[0]_i_11\,
      CO(1) => \n_2_state_reg[0]_i_11\,
      CO(0) => \n_3_state_reg[0]_i_11\,
      CYINIT => '1',
      DI(3) => \n_0_state[0]_i_23\,
      DI(2) => \n_0_state[0]_i_24\,
      DI(1) => \n_0_state[0]_i_25\,
      DI(0) => \n_0_state[0]_i_26\,
      O(3 downto 0) => \NLW_state_reg[0]_i_11_O_UNCONNECTED\(3 downto 0),
      S(3) => \n_0_state[0]_i_27\,
      S(2) => \n_0_state[0]_i_28\,
      S(1) => \n_0_state[0]_i_29\,
      S(0) => \n_0_state[0]_i_30\
    );
\state_reg[0]_i_2\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_state_reg[0]_i_11\,
      CO(3) => \n_0_state_reg[0]_i_2\,
      CO(2) => \n_1_state_reg[0]_i_2\,
      CO(1) => \n_2_state_reg[0]_i_2\,
      CO(0) => \n_3_state_reg[0]_i_2\,
      CYINIT => '0',
      DI(3) => \n_0_state[0]_i_12\,
      DI(2) => \n_0_state[0]_i_13\,
      DI(1) => \n_0_state[0]_i_14\,
      DI(0) => \n_0_state[0]_i_15\,
      O(3 downto 0) => \NLW_state_reg[0]_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => \n_0_state[0]_i_16\,
      S(2) => \n_0_state[0]_i_17\,
      S(1) => \n_0_state[0]_i_18\,
      S(0) => \n_0_state[0]_i_19\
    );
\state_reg[0]_i_20\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_state_reg[0]_i_21\,
      CO(3) => \NLW_state_reg[0]_i_20_CO_UNCONNECTED\(3),
      CO(2) => \n_1_state_reg[0]_i_20\,
      CO(1) => \NLW_state_reg[0]_i_20_CO_UNCONNECTED\(1),
      CO(0) => \n_3_state_reg[0]_i_20\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 2) => \NLW_state_reg[0]_i_20_O_UNCONNECTED\(3 downto 2),
      O(1) => \n_6_state_reg[0]_i_20\,
      O(0) => \n_7_state_reg[0]_i_20\,
      S(3) => '0',
      S(2) => '1',
      S(1) => \n_0_state[0]_i_33\,
      S(0) => \n_0_state[0]_i_34\
    );
\state_reg[0]_i_21\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_state_reg[0]_i_22\,
      CO(3) => \n_0_state_reg[0]_i_21\,
      CO(2) => \n_1_state_reg[0]_i_21\,
      CO(1) => \n_2_state_reg[0]_i_21\,
      CO(0) => \n_3_state_reg[0]_i_21\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_state_reg[0]_i_21\,
      O(2) => \n_5_state_reg[0]_i_21\,
      O(1) => \n_6_state_reg[0]_i_21\,
      O(0) => \n_7_state_reg[0]_i_21\,
      S(3) => \n_0_state[0]_i_35\,
      S(2) => \n_0_state[0]_i_36\,
      S(1) => \n_0_state[0]_i_37\,
      S(0) => \n_0_state[0]_i_38\
    );
\state_reg[0]_i_22\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_state_reg[0]_i_31\,
      CO(3) => \n_0_state_reg[0]_i_22\,
      CO(2) => \n_1_state_reg[0]_i_22\,
      CO(1) => \n_2_state_reg[0]_i_22\,
      CO(0) => \n_3_state_reg[0]_i_22\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_state_reg[0]_i_22\,
      O(2) => \n_5_state_reg[0]_i_22\,
      O(1) => \n_6_state_reg[0]_i_22\,
      O(0) => \n_7_state_reg[0]_i_22\,
      S(3) => \n_0_state[0]_i_39\,
      S(2) => \n_0_state[0]_i_40\,
      S(1) => \n_0_state[0]_i_41\,
      S(0) => \n_0_state[0]_i_42\
    );
\state_reg[0]_i_31\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_state_reg[0]_i_32\,
      CO(3) => \n_0_state_reg[0]_i_31\,
      CO(2) => \n_1_state_reg[0]_i_31\,
      CO(1) => \n_2_state_reg[0]_i_31\,
      CO(0) => \n_3_state_reg[0]_i_31\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_state_reg[0]_i_31\,
      O(2) => \n_5_state_reg[0]_i_31\,
      O(1) => \n_6_state_reg[0]_i_31\,
      O(0) => \n_7_state_reg[0]_i_31\,
      S(3) => \n_0_state[0]_i_47\,
      S(2) => \n_0_state[0]_i_48\,
      S(1) => \n_0_state[0]_i_49\,
      S(0) => \n_0_state[0]_i_50\
    );
\state_reg[0]_i_32\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_state_reg[0]_i_43\,
      CO(3) => \n_0_state_reg[0]_i_32\,
      CO(2) => \n_1_state_reg[0]_i_32\,
      CO(1) => \n_2_state_reg[0]_i_32\,
      CO(0) => \n_3_state_reg[0]_i_32\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_state_reg[0]_i_32\,
      O(2) => \n_5_state_reg[0]_i_32\,
      O(1) => \n_6_state_reg[0]_i_32\,
      O(0) => \n_7_state_reg[0]_i_32\,
      S(3) => \n_0_state[0]_i_51\,
      S(2) => \n_0_state[0]_i_52\,
      S(1) => \n_0_state[0]_i_53\,
      S(0) => \n_0_state[0]_i_54\
    );
\state_reg[0]_i_43\: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3) => \n_0_state_reg[0]_i_43\,
      CO(2) => \n_1_state_reg[0]_i_43\,
      CO(1) => \n_2_state_reg[0]_i_43\,
      CO(0) => \n_3_state_reg[0]_i_43\,
      CYINIT => state_counter_reg(0),
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_state_reg[0]_i_43\,
      O(2) => \n_5_state_reg[0]_i_43\,
      O(1) => \n_6_state_reg[0]_i_43\,
      O(0) => \n_7_state_reg[0]_i_43\,
      S(3) => \n_0_state[0]_i_55\,
      S(2) => \n_0_state[0]_i_56\,
      S(1) => \n_0_state[0]_i_57\,
      S(0) => \n_0_state[0]_i_58\
    );
\state_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => is_next_state_needed,
      D => \^q\(0),
      Q => \n_0_state_reg[1]\,
      R => reset
    );
\state_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => is_next_state_needed,
      D => \n_0_state_reg[1]\,
      Q => \^q\(1),
      R => reset
    );
\state_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => is_next_state_needed,
      D => \^q\(1),
      Q => read_data,
      R => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity spad_manager_0_spad_manager is
  port (
    FrameDurationCurrentClks : out STD_LOGIC_VECTOR ( 21 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    FrameId : out STD_LOGIC_VECTOR ( 31 downto 0 );
    PixelOut0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    PixelOut1 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    PixelOut2 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    PixelOut3 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ColSelect : out STD_LOGIC_VECTOR ( 5 downto 0 );
    RowSelect : out STD_LOGIC_VECTOR ( 2 downto 0 );
    RowGroup : out STD_LOGIC;
    FrameDurationChangeEnable : out STD_LOGIC;
    ReadEnable : out STD_LOGIC;
    FrameDurationRequestedClks : in STD_LOGIC_VECTOR ( 21 downto 0 );
    reset : in STD_LOGIC;
    clk : in STD_LOGIC;
    PixelIn0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    PixelIn1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    PixelIn2 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    PixelIn3 : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of spad_manager_0_spad_manager : entity is "spad_manager";
end spad_manager_0_spad_manager;

architecture STRUCTURE of spad_manager_0_spad_manager is
  signal FrameId_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^readenable\ : STD_LOGIC;
  signal controller_read_enable : STD_LOGIC;
  signal n_54_controller : STD_LOGIC;
  signal n_67_controller : STD_LOGIC;
begin
  ReadEnable <= \^readenable\;
\FrameId_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => n_67_controller,
      D => FrameId_reg(0),
      Q => FrameId(0),
      R => '0'
    );
\FrameId_reg[10]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => n_67_controller,
      D => FrameId_reg(10),
      Q => FrameId(10),
      R => '0'
    );
\FrameId_reg[11]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => n_67_controller,
      D => FrameId_reg(11),
      Q => FrameId(11),
      R => '0'
    );
\FrameId_reg[12]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => n_67_controller,
      D => FrameId_reg(12),
      Q => FrameId(12),
      R => '0'
    );
\FrameId_reg[13]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => n_67_controller,
      D => FrameId_reg(13),
      Q => FrameId(13),
      R => '0'
    );
\FrameId_reg[14]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => n_67_controller,
      D => FrameId_reg(14),
      Q => FrameId(14),
      R => '0'
    );
\FrameId_reg[15]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => n_67_controller,
      D => FrameId_reg(15),
      Q => FrameId(15),
      R => '0'
    );
\FrameId_reg[16]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => n_67_controller,
      D => FrameId_reg(16),
      Q => FrameId(16),
      R => '0'
    );
\FrameId_reg[17]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => n_67_controller,
      D => FrameId_reg(17),
      Q => FrameId(17),
      R => '0'
    );
\FrameId_reg[18]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => n_67_controller,
      D => FrameId_reg(18),
      Q => FrameId(18),
      R => '0'
    );
\FrameId_reg[19]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => n_67_controller,
      D => FrameId_reg(19),
      Q => FrameId(19),
      R => '0'
    );
\FrameId_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => n_67_controller,
      D => FrameId_reg(1),
      Q => FrameId(1),
      R => '0'
    );
\FrameId_reg[20]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => n_67_controller,
      D => FrameId_reg(20),
      Q => FrameId(20),
      R => '0'
    );
\FrameId_reg[21]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => n_67_controller,
      D => FrameId_reg(21),
      Q => FrameId(21),
      R => '0'
    );
\FrameId_reg[22]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => n_67_controller,
      D => FrameId_reg(22),
      Q => FrameId(22),
      R => '0'
    );
\FrameId_reg[23]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => n_67_controller,
      D => FrameId_reg(23),
      Q => FrameId(23),
      R => '0'
    );
\FrameId_reg[24]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => n_67_controller,
      D => FrameId_reg(24),
      Q => FrameId(24),
      R => '0'
    );
\FrameId_reg[25]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => n_67_controller,
      D => FrameId_reg(25),
      Q => FrameId(25),
      R => '0'
    );
\FrameId_reg[26]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => n_67_controller,
      D => FrameId_reg(26),
      Q => FrameId(26),
      R => '0'
    );
\FrameId_reg[27]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => n_67_controller,
      D => FrameId_reg(27),
      Q => FrameId(27),
      R => '0'
    );
\FrameId_reg[28]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => n_67_controller,
      D => FrameId_reg(28),
      Q => FrameId(28),
      R => '0'
    );
\FrameId_reg[29]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => n_67_controller,
      D => FrameId_reg(29),
      Q => FrameId(29),
      R => '0'
    );
\FrameId_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => n_67_controller,
      D => FrameId_reg(2),
      Q => FrameId(2),
      R => '0'
    );
\FrameId_reg[30]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => n_67_controller,
      D => FrameId_reg(30),
      Q => FrameId(30),
      R => '0'
    );
\FrameId_reg[31]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => n_67_controller,
      D => FrameId_reg(31),
      Q => FrameId(31),
      R => '0'
    );
\FrameId_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => n_67_controller,
      D => FrameId_reg(3),
      Q => FrameId(3),
      R => '0'
    );
\FrameId_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => n_67_controller,
      D => FrameId_reg(4),
      Q => FrameId(4),
      R => '0'
    );
\FrameId_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => n_67_controller,
      D => FrameId_reg(5),
      Q => FrameId(5),
      R => '0'
    );
\FrameId_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => n_67_controller,
      D => FrameId_reg(6),
      Q => FrameId(6),
      R => '0'
    );
\FrameId_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => n_67_controller,
      D => FrameId_reg(7),
      Q => FrameId(7),
      R => '0'
    );
\FrameId_reg[8]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => n_67_controller,
      D => FrameId_reg(8),
      Q => FrameId(8),
      R => '0'
    );
\FrameId_reg[9]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => n_67_controller,
      D => FrameId_reg(9),
      Q => FrameId(9),
      R => '0'
    );
\PixelOut0_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => controller_read_enable,
      D => PixelIn0(0),
      Q => PixelOut0(0),
      R => reset
    );
\PixelOut0_reg[1]\: unisim.vcomponents.FDSE
    port map (
      C => clk,
      CE => controller_read_enable,
      D => PixelIn0(1),
      Q => PixelOut0(1),
      S => reset
    );
\PixelOut0_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => controller_read_enable,
      D => PixelIn0(2),
      Q => PixelOut0(2),
      R => reset
    );
\PixelOut0_reg[3]\: unisim.vcomponents.FDSE
    port map (
      C => clk,
      CE => controller_read_enable,
      D => PixelIn0(3),
      Q => PixelOut0(3),
      S => reset
    );
\PixelOut0_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => controller_read_enable,
      D => PixelIn0(4),
      Q => PixelOut0(4),
      R => reset
    );
\PixelOut0_reg[5]\: unisim.vcomponents.FDSE
    port map (
      C => clk,
      CE => controller_read_enable,
      D => PixelIn0(5),
      Q => PixelOut0(5),
      S => reset
    );
\PixelOut0_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => controller_read_enable,
      D => PixelIn0(6),
      Q => PixelOut0(6),
      R => reset
    );
\PixelOut0_reg[7]\: unisim.vcomponents.FDSE
    port map (
      C => clk,
      CE => controller_read_enable,
      D => PixelIn0(7),
      Q => PixelOut0(7),
      S => reset
    );
\PixelOut1_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => controller_read_enable,
      D => PixelIn1(0),
      Q => PixelOut1(0),
      R => reset
    );
\PixelOut1_reg[1]\: unisim.vcomponents.FDSE
    port map (
      C => clk,
      CE => controller_read_enable,
      D => PixelIn1(1),
      Q => PixelOut1(1),
      S => reset
    );
\PixelOut1_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => controller_read_enable,
      D => PixelIn1(2),
      Q => PixelOut1(2),
      R => reset
    );
\PixelOut1_reg[3]\: unisim.vcomponents.FDSE
    port map (
      C => clk,
      CE => controller_read_enable,
      D => PixelIn1(3),
      Q => PixelOut1(3),
      S => reset
    );
\PixelOut1_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => controller_read_enable,
      D => PixelIn1(4),
      Q => PixelOut1(4),
      R => reset
    );
\PixelOut1_reg[5]\: unisim.vcomponents.FDSE
    port map (
      C => clk,
      CE => controller_read_enable,
      D => PixelIn1(5),
      Q => PixelOut1(5),
      S => reset
    );
\PixelOut1_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => controller_read_enable,
      D => PixelIn1(6),
      Q => PixelOut1(6),
      R => reset
    );
\PixelOut1_reg[7]\: unisim.vcomponents.FDSE
    port map (
      C => clk,
      CE => controller_read_enable,
      D => PixelIn1(7),
      Q => PixelOut1(7),
      S => reset
    );
\PixelOut2_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => controller_read_enable,
      D => PixelIn2(0),
      Q => PixelOut2(0),
      R => reset
    );
\PixelOut2_reg[1]\: unisim.vcomponents.FDSE
    port map (
      C => clk,
      CE => controller_read_enable,
      D => PixelIn2(1),
      Q => PixelOut2(1),
      S => reset
    );
\PixelOut2_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => controller_read_enable,
      D => PixelIn2(2),
      Q => PixelOut2(2),
      R => reset
    );
\PixelOut2_reg[3]\: unisim.vcomponents.FDSE
    port map (
      C => clk,
      CE => controller_read_enable,
      D => PixelIn2(3),
      Q => PixelOut2(3),
      S => reset
    );
\PixelOut2_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => controller_read_enable,
      D => PixelIn2(4),
      Q => PixelOut2(4),
      R => reset
    );
\PixelOut2_reg[5]\: unisim.vcomponents.FDSE
    port map (
      C => clk,
      CE => controller_read_enable,
      D => PixelIn2(5),
      Q => PixelOut2(5),
      S => reset
    );
\PixelOut2_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => controller_read_enable,
      D => PixelIn2(6),
      Q => PixelOut2(6),
      R => reset
    );
\PixelOut2_reg[7]\: unisim.vcomponents.FDSE
    port map (
      C => clk,
      CE => controller_read_enable,
      D => PixelIn2(7),
      Q => PixelOut2(7),
      S => reset
    );
\PixelOut3_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => controller_read_enable,
      D => PixelIn3(0),
      Q => PixelOut3(0),
      R => reset
    );
\PixelOut3_reg[1]\: unisim.vcomponents.FDSE
    port map (
      C => clk,
      CE => controller_read_enable,
      D => PixelIn3(1),
      Q => PixelOut3(1),
      S => reset
    );
\PixelOut3_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => controller_read_enable,
      D => PixelIn3(2),
      Q => PixelOut3(2),
      R => reset
    );
\PixelOut3_reg[3]\: unisim.vcomponents.FDSE
    port map (
      C => clk,
      CE => controller_read_enable,
      D => PixelIn3(3),
      Q => PixelOut3(3),
      S => reset
    );
\PixelOut3_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => controller_read_enable,
      D => PixelIn3(4),
      Q => PixelOut3(4),
      R => reset
    );
\PixelOut3_reg[5]\: unisim.vcomponents.FDSE
    port map (
      C => clk,
      CE => controller_read_enable,
      D => PixelIn3(5),
      Q => PixelOut3(5),
      S => reset
    );
\PixelOut3_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => controller_read_enable,
      D => PixelIn3(6),
      Q => PixelOut3(6),
      R => reset
    );
\PixelOut3_reg[7]\: unisim.vcomponents.FDSE
    port map (
      C => clk,
      CE => controller_read_enable,
      D => PixelIn3(7),
      Q => PixelOut3(7),
      S => reset
    );
ReadEnable_reg: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => '1',
      D => n_54_controller,
      Q => \^readenable\,
      R => '0'
    );
controller: entity work.spad_manager_0_controller
    port map (
      ColSelect(5 downto 0) => ColSelect(5 downto 0),
      E(0) => controller_read_enable,
      FrameDurationChangeEnable => FrameDurationChangeEnable,
      FrameDurationCurrentClks(21 downto 0) => FrameDurationCurrentClks(21 downto 0),
      FrameDurationRequestedClks(21 downto 0) => FrameDurationRequestedClks(21 downto 0),
      O1 => n_54_controller,
      O2(0) => n_67_controller,
      O8(31 downto 0) => FrameId_reg(31 downto 0),
      Q(1 downto 0) => Q(1 downto 0),
      ReadEnable => \^readenable\,
      RowGroup => RowGroup,
      RowSelect(2 downto 0) => RowSelect(2 downto 0),
      clk => clk,
      reset => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity spad_manager_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of spad_manager_0 : entity is true;
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of spad_manager_0 : entity is "spad_manager,Vivado 2014.4";
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of spad_manager_0 : entity is "spad_manager_0,spad_manager,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of spad_manager_0 : entity is "yes";
end spad_manager_0;

architecture STRUCTURE of spad_manager_0 is
begin
inst: entity work.spad_manager_0_spad_manager
    port map (
      ColSelect(5 downto 0) => ColSelect(5 downto 0),
      FrameDurationChangeEnable => FrameDurationChangeEnable,
      FrameDurationCurrentClks(21 downto 0) => FrameDurationCurrentClks(21 downto 0),
      FrameDurationRequestedClks(21 downto 0) => FrameDurationRequestedClks(21 downto 0),
      FrameId(31 downto 0) => FrameId(31 downto 0),
      PixelIn0(7 downto 0) => PixelIn0(7 downto 0),
      PixelIn1(7 downto 0) => PixelIn1(7 downto 0),
      PixelIn2(7 downto 0) => PixelIn2(7 downto 0),
      PixelIn3(7 downto 0) => PixelIn3(7 downto 0),
      PixelOut0(7 downto 0) => PixelOut0(7 downto 0),
      PixelOut1(7 downto 0) => PixelOut1(7 downto 0),
      PixelOut2(7 downto 0) => PixelOut2(7 downto 0),
      PixelOut3(7 downto 0) => PixelOut3(7 downto 0),
      Q(1) => ResetSpad,
      Q(0) => LatchSpad,
      ReadEnable => ReadEnable,
      RowGroup => RowGroup,
      RowSelect(2 downto 0) => RowSelect(2 downto 0),
      clk => clk,
      reset => reset
    );
end STRUCTURE;
