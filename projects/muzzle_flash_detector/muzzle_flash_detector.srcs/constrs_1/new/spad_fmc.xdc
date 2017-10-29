##FMC
#set_property -dict { PACKAGE_PIN AR30  IOSTANDARD LVCMOS18 } [get_ports { FMC_PRSNT_LS }]; #IO_L19P_T3_13 Sch=fmc_prsnt_ls
#set_property -dict { PACKAGE_PIN AT27  IOSTANDARD LVDS     } [get_ports { FMC_CLK0_M2C_N }]; #IO_L13N_T2_MRCC_12 Sch=fmc_clk0_m2c_n
#set_property -dict { PACKAGE_PIN AR27  IOSTANDARD LVDS     } [get_ports { FMC_CLK0_M2C_P }]; #IO_L13P_T2_MRCC_12 Sch=fmc_clk0_m2c_p
#set_property -dict { PACKAGE_PIN AV35  IOSTANDARD LVDS     } [get_ports { FMC_CLK1_M2C_N }]; #IO_L13N_T2_MRCC_13 Sch=fmc_clk1_m2c_n
#set_property -dict { PACKAGE_PIN AV34  IOSTANDARD LVDS     } [get_ports { FMC_CLK1_M2C_P }]; #IO_L13P_T2_MRCC_13 Sch=fmc_clk1_m2c_p
set_property -dict { PACKAGE_PIN AV28  IOSTANDARD LVCMOS18     } [get_ports { PixelSpad3[1] }]; #[get_ports { FMC_LA_N[00] }]; #IO_L11N_T1_SRCC_12 Sch=fmc_la_00_cc_n
set_property -dict { PACKAGE_PIN AU28  IOSTANDARD LVCMOS18     } [get_ports { PixelSpad3[0] }]; #[get_ports { FMC_LA_P[00] }]; #IO_L11P_T1_SRCC_12 Sch=fmc_la_00_cc_p
set_property -dict { PACKAGE_PIN AR28  IOSTANDARD LVCMOS18     } [get_ports { PixelSpad1[5] }]; #[get_ports { FMC_LA_N[01] }]; #IO_L14N_T2_SRCC_12 Sch=fmc_la_01_cc_n
set_property -dict { PACKAGE_PIN AP27  IOSTANDARD LVCMOS18     } [get_ports { PixelSpad1[4] }]; #[get_ports { FMC_LA_P[01] }]; #IO_L14P_T2_SRCC_12 Sch=fmc_la_01_cc_p
set_property -dict { PACKAGE_PIN AT29  IOSTANDARD LVCMOS18     } [get_ports { row_select[1] }]; #[get_ports { FMC_LA_N[02] }]; #IO_L8N_T1_12 Sch=fmc_la__n[02]
set_property -dict { PACKAGE_PIN AR29  IOSTANDARD LVCMOS18     } [get_ports { row_select[0] }]; #[get_ports { FMC_LA_P[02] }]; #IO_L8P_T1_12 Sch=fmc_la__p[02]
set_property -dict { PACKAGE_PIN BB27  IOSTANDARD LVCMOS18     } [get_ports { PixelSpad3[3] }]; #[get_ports { FMC_LA_N[03] }]; #IO_L5N_T0_12 Sch=fmc_la__n[03]
set_property -dict { PACKAGE_PIN BB26  IOSTANDARD LVCMOS18     } [get_ports { PixelSpad3[2] }]; #[get_ports { FMC_LA_P[03] }]; #IO_L5P_T0_12 Sch=fmc_la__p[03]
#set_property -dict { PACKAGE_PIN BB29  IOSTANDARD LVDS     } [get_ports { FMC_LA_N[04] }]; #IO_L4N_T0_12 Sch=fmc_la__n[04]
set_property -dict { PACKAGE_PIN BB28  IOSTANDARD LVCMOS18     } [get_ports { row_select[2] }]; #[get_ports { FMC_LA_P[04] }]; #IO_L4P_T0_12 Sch=fmc_la__p[04]
set_property -dict { PACKAGE_PIN AV26  IOSTANDARD LVCMOS18     } [get_ports { PixelSpad1[7] }]; #[get_ports { FMC_LA_N[05] }]; #IO_L9N_T1_DQS_12 Sch=fmc_la__n[05]
set_property -dict { PACKAGE_PIN AV25  IOSTANDARD LVCMOS18     } [get_ports { PixelSpad1[6] }]; #[get_ports { FMC_LA_P[05] }]; #IO_L9P_T1_DQS_12 Sch=fmc_la__p[05]
set_property -dict { PACKAGE_PIN BA27  IOSTANDARD LVCMOS18     } [get_ports { PixelSpad0[3] }]; #[get_ports { FMC_LA_N[06] }]; #IO_L3N_T0_DQS_12 Sch=fmc_la__n[06]
set_property -dict { PACKAGE_PIN BA26  IOSTANDARD LVCMOS18     } [get_ports { PixelSpad0[2] }]; #[get_ports { FMC_LA_P[06] }]; #IO_L3P_T0_DQS_12 Sch=fmc_la__p[06]
#set_property -dict { PACKAGE_PIN AY28  IOSTANDARD LVDS     } [get_ports { FMC_LA_N[07] }]; #IO_L1N_T0_12 Sch=fmc_la__n[07]
#set_property -dict { PACKAGE_PIN AY27  IOSTANDARD LVDS     } [get_ports { FMC_LA_P[07] }]; #IO_L1P_T0_12 Sch=fmc_la__p[07]
set_property -dict { PACKAGE_PIN AP28  IOSTANDARD LVCMOS18     } [get_ports { PixelSpad3[5] }]; #[get_ports { FMC_LA_N[08] }]; #IO_L15N_T2_DQS_12 Sch=fmc_la__n[08]
set_property -dict { PACKAGE_PIN AN28  IOSTANDARD LVCMOS18     } [get_ports { PixelSpad3[4] }]; #[get_ports { FMC_LA_P[08] }]; #IO_L15P_T2_DQS_12 Sch=fmc_la__p[08]
set_property -dict { PACKAGE_PIN AR25  IOSTANDARD LVCMOS18     } [get_ports { PixelSpad2[1] }]; #[get_ports { FMC_LA_N[09] }]; #IO_L17N_T2_12 Sch=fmc_la__n[09]
set_property -dict { PACKAGE_PIN AP25  IOSTANDARD LVCMOS18     } [get_ports { PixelSpad2[0] }]; #[get_ports { FMC_LA_P[09] }]; #IO_L17P_T2_12 Sch=fmc_la__p[09]
set_property -dict { PACKAGE_PIN AW26  IOSTANDARD LVCMOS18     } [get_ports { PixelSpad0[5] }]; #[get_ports { FMC_LA_N[10] }]; #IO_L7N_T1_12 Sch=fmc_la__n[10]
set_property -dict { PACKAGE_PIN AW25  IOSTANDARD LVCMOS18     } [get_ports { PixelSpad0[4] }]; #[get_ports { FMC_LA_P[10] }]; #IO_L7P_T1_12 Sch=fmc_la__p[10]
#set_property -dict { PACKAGE_PIN AT26  IOSTANDARD LVDS     } [get_ports { FMC_LA_N[11] }]; #IO_L16N_T2_12 Sch=fmc_la__n[11]
#set_property -dict { PACKAGE_PIN AT25  IOSTANDARD LVDS     } [get_ports { FMC_LA_P[11] }]; #IO_L16P_T2_12 Sch=fmc_la__p[11]
set_property -dict { PACKAGE_PIN AV29  IOSTANDARD LVCMOS18     } [get_ports { PixelSpad3[7] }]; #[get_ports { FMC_LA_N[12] }]; #IO_L2N_T0_12 Sch=fmc_la__n[12]
set_property -dict { PACKAGE_PIN AU29  IOSTANDARD LVCMOS18     } [get_ports { PixelSpad3[6] }]; #[get_ports { FMC_LA_P[12] }]; #IO_L2P_T0_12 Sch=fmc_la__p[12]
set_property -dict { PACKAGE_PIN AW28  IOSTANDARD LVCMOS18     } [get_ports { PixelSpad2[3] }]; #[get_ports { FMC_LA_N[13] }]; #IO_L10N_T1_12 Sch=fmc_la__n[13]
set_property -dict { PACKAGE_PIN AW27  IOSTANDARD LVCMOS18     } [get_ports { PixelSpad2[2] }]; #[get_ports { FMC_LA_P[13] }]; #IO_L10P_T1_12 Sch=fmc_la__p[13]
set_property -dict { PACKAGE_PIN AN26  IOSTANDARD LVCMOS18     } [get_ports { PixelSpad0[7] }]; #[get_ports { FMC_LA_N[14] }]; #IO_L18N_T2_12 Sch=fmc_la__n[14]
set_property -dict { PACKAGE_PIN AN25  IOSTANDARD LVCMOS18     } [get_ports { PixelSpad0[6] }]; #[get_ports { FMC_LA_P[14] }]; #IO_L18P_T2_12 Sch=fmc_la__p[14]
#set_property -dict { PACKAGE_PIN AM27  IOSTANDARD LVDS     } [get_ports { FMC_LA_N[15] }]; #IO_L21N_T3_DQS_12 Sch=fmc_la__n[15]
#set_property -dict { PACKAGE_PIN AM26  IOSTANDARD LVDS     } [get_ports { FMC_LA_P[15] }]; #IO_L21P_T3_DQS_12 Sch=fmc_la__p[15]
#set_property -dict { PACKAGE_PIN AL27  IOSTANDARD LVDS     } [get_ports { FMC_LA_N[16] }]; #IO_L20N_T3_12 Sch=fmc_la__n[16]
#set_property -dict { PACKAGE_PIN AK27  IOSTANDARD LVDS     } [get_ports { FMC_LA_P[16] }]; #IO_L20P_T3_12 Sch=fmc_la__p[16]
set_property -dict { PACKAGE_PIN AY33  IOSTANDARD LVCMOS18     } [get_ports { PixelSpad2[5] }]; #[get_ports { FMC_LA_N[17] }]; #IO_L14N_T2_SRCC_13 Sch=fmc_la_17_cc_n
set_property -dict { PACKAGE_PIN AY32  IOSTANDARD LVCMOS18     } [get_ports { PixelSpad2[4] }]; #[get_ports { FMC_LA_P[17] }]; #IO_L14P_T2_SRCC_13 Sch=fmc_la_17_cc_p
set_property -dict { PACKAGE_PIN AV33  IOSTANDARD LVCMOS18     } [get_ports { PixelSpad1[1] }]; #[get_ports { FMC_LA_N[18] }]; #IO_L11N_T1_SRCC_13 Sch=fmc_la_18_cc_n
set_property -dict { PACKAGE_PIN AU32  IOSTANDARD LVCMOS18     } [get_ports { PixelSpad1[0] }]; #[get_ports { FMC_LA_P[18] }]; #IO_L11P_T1_SRCC_13 Sch=fmc_la_18_cc_p
#set_property -dict { PACKAGE_PIN AW31  IOSTANDARD LVDS     } [get_ports { FMC_LA_N[19] }]; #IO_L18N_T2_13 Sch=fmc_la__n[19]
#set_property -dict { PACKAGE_PIN AV30  IOSTANDARD LVDS     } [get_ports { FMC_LA_P[19] }]; #IO_L18P_T2_13 Sch=fmc_la__p[19]
#set_property -dict { PACKAGE_PIN AY30  IOSTANDARD LVDS     } [get_ports { FMC_LA_N[20] }]; #IO_L16N_T2_13 Sch=fmc_la__n[20]
set_property -dict { PACKAGE_PIN AW30  IOSTANDARD LVCMOS18     } [get_ports { reset_spad }]; #[get_ports { FMC_LA_P[20] }]; #IO_L16P_T2_13 Sch=fmc_la__p[20]
set_property -dict { PACKAGE_PIN BB31  IOSTANDARD LVCMOS18     } [get_ports { row_group }]; #[get_ports { FMC_LA_N[21] }]; #IO_L17N_T2_13 Sch=fmc_la__n[21]
#set_property -dict { PACKAGE_PIN BA30  IOSTANDARD LVDS     } [get_ports { FMC_LA_P[21] }]; #IO_L17P_T2_13 Sch=fmc_la__p[21]
#set_property -dict { PACKAGE_PIN BA32  IOSTANDARD LVDS     } [get_ports { FMC_LA_N[22] }]; #IO_L15N_T2_DQS_13 Sch=fmc_la__n[22]
set_property -dict { PACKAGE_PIN BA31  IOSTANDARD LVCMOS18     } [get_ports { latch_spad }]; #[get_ports { FMC_LA_P[22] }]; #IO_L15P_T2_DQS_13 Sch=fmc_la__p[22]
set_property -dict { PACKAGE_PIN BB34  IOSTANDARD LVCMOS18     } [get_ports { PixelSpad2[7] }]; #[get_ports { FMC_LA_N[23] }]; #IO_L3N_T0_DQS_13 Sch=fmc_la__n[23]
set_property -dict { PACKAGE_PIN BA34  IOSTANDARD LVCMOS18     } [get_ports { PixelSpad2[6] }]; #[get_ports { FMC_LA_P[23] }]; #IO_L3P_T0_DQS_13 Sch=fmc_la__p[23]
set_property -dict { PACKAGE_PIN AU34  IOSTANDARD LVCMOS18     } [get_ports { col_select[0] }]; #[get_ports { FMC_LA_N[24] }]; #IO_L7N_T1_13 Sch=fmc_la__n[24]
#set_property -dict { PACKAGE_PIN AT34  IOSTANDARD LVDS     } [get_ports { FMC_LA_P[24] }]; #IO_L7P_T1_13 Sch=fmc_la__p[24]
#set_property -dict { PACKAGE_PIN AU33  IOSTANDARD LVDS     } [get_ports { FMC_LA_N[25] }]; #IO_L9N_T1_DQS_13 Sch=fmc_la__n[25]
#set_property -dict { PACKAGE_PIN AT32  IOSTANDARD LVDS     } [get_ports { FMC_LA_P[25] }]; #IO_L9P_T1_DQS_13 Sch=fmc_la__p[25]
#set_property -dict { PACKAGE_PIN BB33  IOSTANDARD LVDS     } [get_ports { FMC_LA_N[26] }]; #IO_L5N_T0_13 Sch=fmc_la__n[26]
#set_property -dict { PACKAGE_PIN BB32  IOSTANDARD LVDS     } [get_ports { FMC_LA_P[26] }]; #IO_L5P_T0_13 Sch=fmc_la__p[26]
set_property -dict { PACKAGE_PIN AV31  IOSTANDARD LVCMOS18     } [get_ports { PixelSpad1[3] }]; #[get_ports { FMC_LA_N[27] }]; #IO_L20N_T3_13 Sch=fmc_la__n[27]
set_property -dict { PACKAGE_PIN AU31  IOSTANDARD LVCMOS18     } [get_ports { PixelSpad1[2] }]; #[get_ports { FMC_LA_P[27] }]; #IO_L20P_T3_13 Sch=fmc_la__p[27]
set_property -dict { PACKAGE_PIN AT35  IOSTANDARD LVCMOS18     } [get_ports { col_select[2] }]; #[get_ports { FMC_LA_N[28] }]; #IO_L10N_T1_13 Sch=fmc_la__n[28]
set_property -dict { PACKAGE_PIN AR34  IOSTANDARD LVCMOS18     } [get_ports { col_select[1] }]; #[get_ports { FMC_LA_P[28] }]; #IO_L10P_T1_13 Sch=fmc_la__p[28]
#set_property -dict { PACKAGE_PIN BB36  IOSTANDARD LVDS     } [get_ports { FMC_LA_N[29] }]; #IO_L4N_T0_13 Sch=fmc_la__n[29]
#set_property -dict { PACKAGE_PIN BA36  IOSTANDARD LVDS     } [get_ports { FMC_LA_P[29] }]; #IO_L4P_T0_13 Sch=fmc_la__p[29]
set_property -dict { PACKAGE_PIN BA35  IOSTANDARD LVCMOS18     } [get_ports { col_select[4] }]; #[get_ports { FMC_LA_N[30] }]; #IO_L1N_T0_13 Sch=fmc_la__n[30]
set_property -dict { PACKAGE_PIN AY34  IOSTANDARD LVCMOS18     } [get_ports { col_select[3] }]; #[get_ports { FMC_LA_P[30] }]; #IO_L1P_T0_13 Sch=fmc_la__p[30]
#set_property -dict { PACKAGE_PIN AP30  IOSTANDARD LVDS     } [get_ports { FMC_LA_N[31] }]; #IO_L21N_T3_DQS_13 Sch=fmc_la__n[31]
#set_property -dict { PACKAGE_PIN AN30  IOSTANDARD LVDS     } [get_ports { FMC_LA_P[31] }]; #IO_L21P_T3_DQS_13 Sch=fmc_la__p[31]
#set_property -dict { PACKAGE_PIN AW36  IOSTANDARD LVDS     } [get_ports { FMC_LA_N[32] }]; #IO_L2N_T0_13 Sch=fmc_la__n[32]
set_property -dict { PACKAGE_PIN AV36  IOSTANDARD LVCMOS18     } [get_ports { col_select[5] }]; #[get_ports { FMC_LA_P[32] }]; #IO_L2P_T0_13 Sch=fmc_la__p[32]
#set_property -dict { PACKAGE_PIN AU36  IOSTANDARD LVDS     } [get_ports { FMC_LA_N[33] }]; #IO_L8N_T1_13 Sch=fmc_la__n[33]
#set_property -dict { PACKAGE_PIN AT36  IOSTANDARD LVDS     } [get_ports { FMC_LA_P[33] }]; #IO_L8P_T1_13 Sch=fmc_la__p[33]


# costa should be mapped set_property PULLDOWN true [get_ports PixelSpad0[0]];
# costa should be mapped set_property PULLDOWN true [get_ports PixelSpad0[1]];



set_property OFFCHIP_TERM NONE [get_ports col_select[0]]
set_property OFFCHIP_TERM NONE [get_ports col_select[1]]
set_property OFFCHIP_TERM NONE [get_ports col_select[2]]
set_property OFFCHIP_TERM NONE [get_ports col_select[3]]
set_property OFFCHIP_TERM NONE [get_ports col_select[4]]
set_property OFFCHIP_TERM NONE [get_ports col_select[5]]
set_property OFFCHIP_TERM NONE [get_ports row_group]
set_property OFFCHIP_TERM NONE [get_ports row_select[0]]
set_property OFFCHIP_TERM NONE [get_ports row_select[1]]
set_property OFFCHIP_TERM NONE [get_ports row_select[2]]
set_property SLEW FAST [get_ports {col_select[5]}]
set_property SLEW FAST [get_ports {col_select[4]}]
set_property SLEW FAST [get_ports {col_select[3]}]
set_property SLEW FAST [get_ports {col_select[2]}]
set_property SLEW FAST [get_ports {col_select[1]}]
set_property SLEW FAST [get_ports {col_select[0]}]
set_property SLEW FAST [get_ports {row_select[2]}]
set_property SLEW FAST [get_ports {row_select[1]}]
set_property SLEW FAST [get_ports {row_select[0]}]
set_property SLEW FAST [get_ports row_group]

##FMC Transceiver pins
#set_property -dict { PACKAGE_PIN AW6 } [get_ports { FMC_DP0_M2C_P }];
#set_property -dict { PACKAGE_PIN AW5 } [get_ports { FMC_DP0_M2C_N }];
#set_property -dict { PACKAGE_PIN AW2 } [get_ports { FMC_DP0_C2M_P }];
#set_property -dict { PACKAGE_PIN AW1 } [get_ports { FMC_DP0_C2M_N }];
#set_property -dict { PACKAGE_PIN AY8 } [get_ports { FMC_DP1_M2C_P }];
#set_property -dict { PACKAGE_PIN AY7 } [get_ports { FMC_DP1_M2C_N }];
#set_property -dict { PACKAGE_PIN AY4 } [get_ports { FMC_DP1_C2M_P }];
#set_property -dict { PACKAGE_PIN AY3 } [get_ports { FMC_DP1_C2M_N }];
#set_property -dict { PACKAGE_PIN BA6 } [get_ports { FMC_DP2_M2C_P }];
#set_property -dict { PACKAGE_PIN BA5 } [get_ports { FMC_DP2_M2C_N }];
#set_property -dict { PACKAGE_PIN BA2 } [get_ports { FMC_DP2_C2M_P }];
#set_property -dict { PACKAGE_PIN BA1 } [get_ports { FMC_DP2_C2M_N }];
#set_property -dict { PACKAGE_PIN BB8 } [get_ports { FMC_DP3_M2C_P }];
#set_property -dict { PACKAGE_PIN BB7 } [get_ports { FMC_DP3_M2C_N }];
#set_property -dict { PACKAGE_PIN BB4 } [get_ports { FMC_DP3_C2M_P }];
#set_property -dict { PACKAGE_PIN BB3 } [get_ports { FMC_DP3_C2M_N }];
#set_property -dict { PACKAGE_PIN AR6 } [get_ports { FMC_DP4_M2C_P }];
#set_property -dict { PACKAGE_PIN AR5 } [get_ports { FMC_DP4_M2C_N }];
#set_property -dict { PACKAGE_PIN AT4 } [get_ports { FMC_DP4_C2M_P }];
#set_property -dict { PACKAGE_PIN AT3 } [get_ports { FMC_DP4_C2M_N }];
#set_property -dict { PACKAGE_PIN AV8 } [get_ports { FMC_DP5_M2C_P }];
#set_property -dict { PACKAGE_PIN AV7 } [get_ports { FMC_DP5_M2C_N }];
#set_property -dict { PACKAGE_PIN AV4 } [get_ports { FMC_DP5_C2M_P }];
#set_property -dict { PACKAGE_PIN AV3 } [get_ports { FMC_DP5_C2M_N }];
#set_property -dict { PACKAGE_PIN AU6 } [get_ports { FMC_DP6_M2C_P }];
#set_property -dict { PACKAGE_PIN AU5 } [get_ports { FMC_DP6_M2C_N }];
#set_property -dict { PACKAGE_PIN AU2 } [get_ports { FMC_DP6_C2M_P }];
#set_property -dict { PACKAGE_PIN AU1 } [get_ports { FMC_DP6_C2M_N }];
#set_property -dict { PACKAGE_PIN AP8 } [get_ports { FMC_DP7_M2C_P }];
#set_property -dict { PACKAGE_PIN AP7 } [get_ports { FMC_DP7_M2C_N }];
#set_property -dict { PACKAGE_PIN AR2 } [get_ports { FMC_DP7_C2M_P }];
#set_property -dict { PACKAGE_PIN AR1 } [get_ports { FMC_DP7_C2M_N }];
#set_property -dict { PACKAGE_PIN AN6 } [get_ports { FMC_DP8_M2C_P }];
#set_property -dict { PACKAGE_PIN AN5 } [get_ports { FMC_DP8_M2C_N }];
#set_property -dict { PACKAGE_PIN AP4 } [get_ports { FMC_DP8_C2M_P }];
#set_property -dict { PACKAGE_PIN AP3 } [get_ports { FMC_DP8_C2M_N }];
#set_property -dict { PACKAGE_PIN AM8 } [get_ports { FMC_DP9_M2C_P }];
#set_property -dict { PACKAGE_PIN AM7 } [get_ports { FMC_DP9_M2C_N }];
#set_property -dict { PACKAGE_PIN AN2 } [get_ports { FMC_DP9_C2M_P }];
#set_property -dict { PACKAGE_PIN AN1 } [get_ports { FMC_DP9_C2M_N }];

##FMC Transceiver pins
#set_property -dict { PACKAGE_PIN P8 } [get_ports { QTH_01T_P }];
#set_property -dict { PACKAGE_PIN P7 } [get_ports { QTH_01T_N }];
#set_property -dict { PACKAGE_PIN N2 } [get_ports { QTH_01R_P }];
#set_property -dict { PACKAGE_PIN N1 } [get_ports { QTH_01R_N }];
#set_property -dict { PACKAGE_PIN N6 } [get_ports { QTH_02T_P }];
#set_property -dict { PACKAGE_PIN N5 } [get_ports { QTH_02T_N }];
#set_property -dict { PACKAGE_PIN M4 } [get_ports { QTH_02R_P }];
#set_property -dict { PACKAGE_PIN M3 } [get_ports { QTH_02R_N }];
#set_property -dict { PACKAGE_PIN L6 } [get_ports { QTH_03T_P }];
#set_property -dict { PACKAGE_PIN L5 } [get_ports { QTH_03T_N }];
#set_property -dict { PACKAGE_PIN L2 } [get_ports { QTH_03R_P }];
#set_property -dict { PACKAGE_PIN L1 } [get_ports { QTH_03R_N }];
#set_property -dict { PACKAGE_PIN J6 } [get_ports { QTH_04T_P }];
#set_property -dict { PACKAGE_PIN J5 } [get_ports { QTH_04T_N }];
#set_property -dict { PACKAGE_PIN K4 } [get_ports { QTH_04R_P }];
#set_property -dict { PACKAGE_PIN K3 } [get_ports { QTH_04R_N }];
#set_property -dict { PACKAGE_PIN H8 } [get_ports { QTH_05T_P }];
#set_property -dict { PACKAGE_PIN H7 } [get_ports { QTH_05T_N }];
#set_property -dict { PACKAGE_PIN J2 } [get_ports { QTH_05R_P }];
#set_property -dict { PACKAGE_PIN J1 } [get_ports { QTH_05R_N }];
#set_property -dict { PACKAGE_PIN G6 } [get_ports { QTH_06T_P }];
#set_property -dict { PACKAGE_PIN G5 } [get_ports { QTH_06T_N }];
#set_property -dict { PACKAGE_PIN H4 } [get_ports { QTH_06R_P }];
#set_property -dict { PACKAGE_PIN H3 } [get_ports { QTH_06R_N }];
#set_property -dict { PACKAGE_PIN F8 } [get_ports { QTH_07T_P }];
#set_property -dict { PACKAGE_PIN F7 } [get_ports { QTH_07T_N }];
#set_property -dict { PACKAGE_PIN G2 } [get_ports { QTH_07R_P }];
#set_property -dict { PACKAGE_PIN G1 } [get_ports { QTH_07R_N }];
#set_property -dict { PACKAGE_PIN E6 } [get_ports { QTH_08T_P }];
#set_property -dict { PACKAGE_PIN E5 } [get_ports { QTH_08T_N }];
#set_property -dict { PACKAGE_PIN F4 } [get_ports { QTH_08R_P }];
#set_property -dict { PACKAGE_PIN F3 } [get_ports { QTH_08R_N }];