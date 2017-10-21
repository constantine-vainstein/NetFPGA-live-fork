// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:29:27 MST 2014
// Date        : Sat Oct 21 17:07:57 2017
// Host        : DIGLABAPPS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/costa/Documents/MuzzleFlashDetection/trunk/projects/muzzle_flash_detector/muzzle_flash_detector.srcs/sources_1/ip/axis_data_fifo_0/axis_data_fifo_0_funcsim.v
// Design      : axis_data_fifo_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx690tffg1761-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* X_CORE_INFO = "axis_data_fifo_v1_1_axis_data_fifo,Vivado 2014.4" *) (* CHECK_LICENSE_TYPE = "axis_data_fifo_0,axis_data_fifo_v1_1_axis_data_fifo,{}" *) (* CORE_GENERATION_INFO = "axis_data_fifo_0,axis_data_fifo_v1_1_axis_data_fifo,{x_ipProduct=Vivado 2014.4,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=axis_data_fifo,x_ipVersion=1.1,x_ipCoreRevision=5,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_FAMILY=virtex7,C_AXIS_TDATA_WIDTH=80,C_AXIS_TID_WIDTH=1,C_AXIS_TDEST_WIDTH=1,C_AXIS_TUSER_WIDTH=1,C_AXIS_SIGNAL_SET=0b00000000000000000000000000011011,C_FIFO_DEPTH=16,C_FIFO_MODE=1,C_IS_ACLK_ASYNC=0,C_SYNCHRONIZER_STAGE=2,C_ACLKEN_CONV_MODE=0}" *) 
(* DowngradeIPIdentifiedWarnings = "yes" *) 
(* NotValidForBitStream *)
module axis_data_fifo_0
   (s_axis_aresetn,
    s_axis_aclk,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tkeep,
    s_axis_tlast,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tkeep,
    m_axis_tlast,
    axis_data_count,
    axis_wr_data_count,
    axis_rd_data_count);
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_RSTIF RST" *) input s_axis_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_CLKIF CLK" *) input s_axis_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) input s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) output s_axis_tready;
  input [79:0]s_axis_tdata;
  input [9:0]s_axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TLAST" *) input s_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) input m_axis_tready;
  output [79:0]m_axis_tdata;
  output [9:0]m_axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TLAST" *) output m_axis_tlast;
  output [31:0]axis_data_count;
  output [31:0]axis_wr_data_count;
  output [31:0]axis_rd_data_count;

  wire [31:0]axis_data_count;
  wire [31:0]axis_rd_data_count;
  wire [31:0]axis_wr_data_count;
  wire [79:0]m_axis_tdata;
  wire [9:0]m_axis_tkeep;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire s_axis_aclk;
  wire s_axis_aresetn;
  wire [79:0]s_axis_tdata;
  wire [9:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire [0:0]NLW_inst_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_inst_m_axis_tid_UNCONNECTED;
  wire [9:0]NLW_inst_m_axis_tstrb_UNCONNECTED;
  wire [0:0]NLW_inst_m_axis_tuser_UNCONNECTED;

(* C_ACLKEN_CONV_MODE = "0" *) 
   (* C_AXIS_SIGNAL_SET = "32'b00000000000000000000000000011011" *) 
   (* C_AXIS_TDATA_WIDTH = "80" *) 
   (* C_AXIS_TDEST_WIDTH = "1" *) 
   (* C_AXIS_TID_WIDTH = "1" *) 
   (* C_AXIS_TUSER_WIDTH = "1" *) 
   (* C_AXI_ADDR_WIDTH = "32" *) 
   (* C_AXI_ARUSER_WIDTH = "1" *) 
   (* C_AXI_AWUSER_WIDTH = "1" *) 
   (* C_AXI_BUSER_WIDTH = "1" *) 
   (* C_AXI_DATA_WIDTH = "64" *) 
   (* C_AXI_ID_WIDTH = "4" *) 
   (* C_AXI_RUSER_WIDTH = "1" *) 
   (* C_AXI_WUSER_WIDTH = "1" *) 
   (* C_DATA_COUNT_WIDTH = "10" *) 
   (* C_DIN_WIDTH = "18" *) 
   (* C_DOUT_WIDTH = "18" *) 
   (* C_FAMILY = "virtex7" *) 
   (* C_FIFO_DEPTH = "16" *) 
   (* C_FIFO_MODE = "1" *) 
   (* C_IS_ACLK_ASYNC = "0" *) 
   (* C_RD_DATA_COUNT_WIDTH = "10" *) 
   (* C_RD_PNTR_WIDTH = "10" *) 
   (* C_RD_PNTR_WIDTH_RACH = "4" *) 
   (* C_RD_PNTR_WIDTH_RDCH = "10" *) 
   (* C_RD_PNTR_WIDTH_WACH = "4" *) 
   (* C_RD_PNTR_WIDTH_WDCH = "10" *) 
   (* C_RD_PNTR_WIDTH_WRCH = "4" *) 
   (* C_SYNCHRONIZER_STAGE = "2" *) 
   (* C_WR_DATA_COUNT_WIDTH = "10" *) 
   (* C_WR_PNTR_WIDTH = "10" *) 
   (* C_WR_PNTR_WIDTH_AXIS = "4" *) 
   (* C_WR_PNTR_WIDTH_RACH = "4" *) 
   (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
   (* C_WR_PNTR_WIDTH_WACH = "4" *) 
   (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
   (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
   (* G_INDX_SS_TDATA = "1" *) 
   (* G_INDX_SS_TDEST = "6" *) 
   (* G_INDX_SS_TID = "5" *) 
   (* G_INDX_SS_TKEEP = "3" *) 
   (* G_INDX_SS_TLAST = "4" *) 
   (* G_INDX_SS_TREADY = "0" *) 
   (* G_INDX_SS_TSTRB = "2" *) 
   (* G_INDX_SS_TUSER = "7" *) 
   (* G_MASK_SS_TDATA = "2" *) 
   (* G_MASK_SS_TDEST = "64" *) 
   (* G_MASK_SS_TID = "32" *) 
   (* G_MASK_SS_TKEEP = "8" *) 
   (* G_MASK_SS_TLAST = "16" *) 
   (* G_MASK_SS_TREADY = "1" *) 
   (* G_MASK_SS_TSTRB = "4" *) 
   (* G_MASK_SS_TUSER = "128" *) 
   (* G_TASK_SEVERITY_ERR = "2" *) 
   (* G_TASK_SEVERITY_INFO = "0" *) 
   (* G_TASK_SEVERITY_WARNING = "1" *) 
   (* LP_M_ACLKEN_CAN_TOGGLE = "0" *) 
   (* LP_S_ACLKEN_CAN_TOGGLE = "0" *) 
   (* P_APPLICATION_TYPE_AXIS = "0" *) 
   (* P_AXIS_PAYLOAD_WIDTH = "91" *) 
   (* P_COMMON_CLOCK = "1" *) 
   (* P_FIFO_COUNT_WIDTH = "5" *) 
   (* P_FIFO_TYPE = "2" *) 
   (* P_IMPLEMENTATION_TYPE_AXIS = "2" *) 
   (* P_MSGON_VAL = "1" *) 
   (* P_TDATA_EXISTS = "1" *) 
   (* P_TDEST_EXISTS = "0" *) 
   (* P_TID_EXISTS = "0" *) 
   (* P_TKEEP_EXISTS = "1" *) 
   (* P_TLAST_EXISTS = "1" *) 
   (* P_TREADY_EXISTS = "1" *) 
   (* P_TSTRB_EXISTS = "0" *) 
   (* P_TUSER_EXISTS = "0" *) 
   (* P_WR_PNTR_WIDTH = "4" *) 
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) 
   axis_data_fifo_0_axis_data_fifo_v1_1_axis_data_fifo inst
       (.axis_data_count(axis_data_count),
        .axis_rd_data_count(axis_rd_data_count),
        .axis_wr_data_count(axis_wr_data_count),
        .m_axis_aclk(1'b0),
        .m_axis_aclken(1'b1),
        .m_axis_aresetn(1'b0),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tdest(NLW_inst_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_inst_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(m_axis_tkeep),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tstrb(NLW_inst_m_axis_tstrb_UNCONNECTED[9:0]),
        .m_axis_tuser(NLW_inst_m_axis_tuser_UNCONNECTED[0]),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_aclk(s_axis_aclk),
        .s_axis_aclken(1'b1),
        .s_axis_aresetn(s_axis_aresetn),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(s_axis_tkeep),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tstrb({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .s_axis_tuser(1'b0),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* C_FAMILY = "virtex7" *) (* C_AXIS_TDATA_WIDTH = "80" *) (* C_AXIS_TID_WIDTH = "1" *) 
(* C_AXIS_TDEST_WIDTH = "1" *) (* C_AXIS_TUSER_WIDTH = "1" *) (* C_AXIS_SIGNAL_SET = "32'b00000000000000000000000000011011" *) 
(* C_FIFO_DEPTH = "16" *) (* C_FIFO_MODE = "1" *) (* C_IS_ACLK_ASYNC = "0" *) 
(* C_SYNCHRONIZER_STAGE = "2" *) (* C_ACLKEN_CONV_MODE = "0" *) (* G_INDX_SS_TREADY = "0" *) 
(* G_INDX_SS_TDATA = "1" *) (* G_INDX_SS_TSTRB = "2" *) (* G_INDX_SS_TKEEP = "3" *) 
(* G_INDX_SS_TLAST = "4" *) (* G_INDX_SS_TID = "5" *) (* G_INDX_SS_TDEST = "6" *) 
(* G_INDX_SS_TUSER = "7" *) (* G_MASK_SS_TREADY = "1" *) (* G_MASK_SS_TDATA = "2" *) 
(* G_MASK_SS_TSTRB = "4" *) (* G_MASK_SS_TKEEP = "8" *) (* G_MASK_SS_TLAST = "16" *) 
(* G_MASK_SS_TID = "32" *) (* G_MASK_SS_TDEST = "64" *) (* G_MASK_SS_TUSER = "128" *) 
(* G_TASK_SEVERITY_ERR = "2" *) (* G_TASK_SEVERITY_WARNING = "1" *) (* G_TASK_SEVERITY_INFO = "0" *) 
(* P_TREADY_EXISTS = "1" *) (* P_TDATA_EXISTS = "1" *) (* P_TSTRB_EXISTS = "0" *) 
(* P_TKEEP_EXISTS = "1" *) (* P_TLAST_EXISTS = "1" *) (* P_TID_EXISTS = "0" *) 
(* P_TDEST_EXISTS = "0" *) (* P_TUSER_EXISTS = "0" *) (* P_AXIS_PAYLOAD_WIDTH = "91" *) 
(* P_WR_PNTR_WIDTH = "4" *) (* P_FIFO_COUNT_WIDTH = "5" *) (* P_FIFO_TYPE = "2" *) 
(* P_IMPLEMENTATION_TYPE_AXIS = "2" *) (* P_COMMON_CLOCK = "1" *) (* P_MSGON_VAL = "1" *) 
(* P_APPLICATION_TYPE_AXIS = "0" *) (* LP_S_ACLKEN_CAN_TOGGLE = "0" *) (* LP_M_ACLKEN_CAN_TOGGLE = "0" *) 
(* C_DIN_WIDTH = "18" *) (* C_RD_PNTR_WIDTH = "10" *) (* C_WR_PNTR_WIDTH = "10" *) 
(* C_DOUT_WIDTH = "18" *) (* C_DATA_COUNT_WIDTH = "10" *) (* C_RD_DATA_COUNT_WIDTH = "10" *) 
(* C_WR_DATA_COUNT_WIDTH = "10" *) (* C_AXI_ID_WIDTH = "4" *) (* C_AXI_ADDR_WIDTH = "32" *) 
(* C_AXI_DATA_WIDTH = "64" *) (* C_AXI_AWUSER_WIDTH = "1" *) (* C_AXI_ARUSER_WIDTH = "1" *) 
(* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_BUSER_WIDTH = "1" *) (* C_AXI_WUSER_WIDTH = "1" *) 
(* C_WR_PNTR_WIDTH_RACH = "4" *) (* C_WR_PNTR_WIDTH_RDCH = "10" *) (* C_WR_PNTR_WIDTH_WACH = "4" *) 
(* C_WR_PNTR_WIDTH_WDCH = "10" *) (* C_WR_PNTR_WIDTH_WRCH = "4" *) (* C_RD_PNTR_WIDTH_RACH = "4" *) 
(* C_RD_PNTR_WIDTH_RDCH = "10" *) (* C_RD_PNTR_WIDTH_WACH = "4" *) (* C_RD_PNTR_WIDTH_WDCH = "10" *) 
(* C_RD_PNTR_WIDTH_WRCH = "4" *) (* C_WR_PNTR_WIDTH_AXIS = "4" *) (* ORIG_REF_NAME = "axis_data_fifo_v1_1_axis_data_fifo" *) 
module axis_data_fifo_0_axis_data_fifo_v1_1_axis_data_fifo
   (s_axis_aresetn,
    m_axis_aresetn,
    s_axis_aclk,
    s_axis_aclken,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_aclk,
    m_axis_aclken,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    axis_data_count,
    axis_wr_data_count,
    axis_rd_data_count);
  input s_axis_aresetn;
  input m_axis_aresetn;
  input s_axis_aclk;
  input s_axis_aclken;
  input s_axis_tvalid;
  output s_axis_tready;
  input [79:0]s_axis_tdata;
  input [9:0]s_axis_tstrb;
  input [9:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [0:0]s_axis_tuser;
  input m_axis_aclk;
  input m_axis_aclken;
  output m_axis_tvalid;
  input m_axis_tready;
  output [79:0]m_axis_tdata;
  output [9:0]m_axis_tstrb;
  output [9:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [0:0]m_axis_tuser;
  output [31:0]axis_data_count;
  output [31:0]axis_wr_data_count;
  output [31:0]axis_rd_data_count;

  wire \<const0> ;
  wire [4:0]\^axis_rd_data_count ;
  wire m_axis_aclken;
  wire [79:0]m_axis_tdata;
  wire [0:0]m_axis_tdest;
  wire [0:0]m_axis_tid;
  wire [9:0]m_axis_tkeep;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire [9:0]m_axis_tstrb;
  wire [0:0]m_axis_tuser;
  wire m_axis_tvalid;
(* RTL_KEEP = "true" *)   wire s_and_m_aresetn_i;
  wire s_axis_aclk;
  wire s_axis_aclken;
  wire [79:0]s_axis_tdata;
  wire [0:0]s_axis_tdest;
  wire [0:0]s_axis_tid;
  wire [9:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire [9:0]s_axis_tstrb;
  wire [0:0]s_axis_tuser;
  wire s_axis_tvalid;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_almost_empty_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_almost_full_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_dbiterr_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_overflow_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_prog_empty_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_prog_full_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_sbiterr_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_underflow_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_dbiterr_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_overflow_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_prog_empty_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_prog_full_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_sbiterr_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_underflow_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_b_dbiterr_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_b_overflow_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_b_prog_empty_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_b_prog_full_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_b_sbiterr_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_b_underflow_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_r_dbiterr_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_r_overflow_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_r_prog_empty_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_r_prog_full_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_r_sbiterr_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_r_underflow_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_w_dbiterr_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_w_overflow_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_w_prog_empty_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_w_prog_full_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_w_sbiterr_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_w_underflow_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axis_dbiterr_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axis_overflow_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axis_prog_empty_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axis_prog_full_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axis_sbiterr_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axis_underflow_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_dbiterr_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_empty_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_full_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arvalid_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awvalid_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_bready_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_rready_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_wlast_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_wvalid_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_overflow_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_prog_empty_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_prog_full_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_rd_rst_busy_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_s_axi_arready_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_s_axi_awready_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_s_axi_bvalid_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_s_axi_rlast_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_s_axi_rvalid_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_s_axi_wready_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_sbiterr_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_underflow_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_valid_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_wr_ack_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_wr_rst_busy_UNCONNECTED ;
  wire [4:0]\NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_data_count_UNCONNECTED ;
  wire [4:0]\NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_rd_data_count_UNCONNECTED ;
  wire [4:0]\NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_wr_data_count_UNCONNECTED ;
  wire [4:0]\NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_data_count_UNCONNECTED ;
  wire [4:0]\NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_rd_data_count_UNCONNECTED ;
  wire [4:0]\NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_wr_data_count_UNCONNECTED ;
  wire [4:0]\NLW_gen_fifo_generator.fifo_generator_inst_axi_b_data_count_UNCONNECTED ;
  wire [4:0]\NLW_gen_fifo_generator.fifo_generator_inst_axi_b_rd_data_count_UNCONNECTED ;
  wire [4:0]\NLW_gen_fifo_generator.fifo_generator_inst_axi_b_wr_data_count_UNCONNECTED ;
  wire [10:0]\NLW_gen_fifo_generator.fifo_generator_inst_axi_r_data_count_UNCONNECTED ;
  wire [10:0]\NLW_gen_fifo_generator.fifo_generator_inst_axi_r_rd_data_count_UNCONNECTED ;
  wire [10:0]\NLW_gen_fifo_generator.fifo_generator_inst_axi_r_wr_data_count_UNCONNECTED ;
  wire [10:0]\NLW_gen_fifo_generator.fifo_generator_inst_axi_w_data_count_UNCONNECTED ;
  wire [10:0]\NLW_gen_fifo_generator.fifo_generator_inst_axi_w_rd_data_count_UNCONNECTED ;
  wire [10:0]\NLW_gen_fifo_generator.fifo_generator_inst_axi_w_wr_data_count_UNCONNECTED ;
  wire [4:0]\NLW_gen_fifo_generator.fifo_generator_inst_axis_rd_data_count_UNCONNECTED ;
  wire [4:0]\NLW_gen_fifo_generator.fifo_generator_inst_axis_wr_data_count_UNCONNECTED ;
  wire [9:0]\NLW_gen_fifo_generator.fifo_generator_inst_data_count_UNCONNECTED ;
  wire [17:0]\NLW_gen_fifo_generator.fifo_generator_inst_dout_UNCONNECTED ;
  wire [31:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_araddr_UNCONNECTED ;
  wire [1:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arburst_UNCONNECTED ;
  wire [3:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arcache_UNCONNECTED ;
  wire [3:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arid_UNCONNECTED ;
  wire [7:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arlen_UNCONNECTED ;
  wire [1:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arlock_UNCONNECTED ;
  wire [2:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arprot_UNCONNECTED ;
  wire [3:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arqos_UNCONNECTED ;
  wire [3:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arregion_UNCONNECTED ;
  wire [2:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arsize_UNCONNECTED ;
  wire [0:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_aruser_UNCONNECTED ;
  wire [31:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awaddr_UNCONNECTED ;
  wire [1:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awburst_UNCONNECTED ;
  wire [3:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awcache_UNCONNECTED ;
  wire [3:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awid_UNCONNECTED ;
  wire [7:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awlen_UNCONNECTED ;
  wire [1:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awlock_UNCONNECTED ;
  wire [2:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awprot_UNCONNECTED ;
  wire [3:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awqos_UNCONNECTED ;
  wire [3:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awregion_UNCONNECTED ;
  wire [2:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awsize_UNCONNECTED ;
  wire [0:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awuser_UNCONNECTED ;
  wire [63:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_wdata_UNCONNECTED ;
  wire [3:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_wid_UNCONNECTED ;
  wire [7:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_wstrb_UNCONNECTED ;
  wire [0:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_wuser_UNCONNECTED ;
  wire [9:0]\NLW_gen_fifo_generator.fifo_generator_inst_rd_data_count_UNCONNECTED ;
  wire [3:0]\NLW_gen_fifo_generator.fifo_generator_inst_s_axi_bid_UNCONNECTED ;
  wire [1:0]\NLW_gen_fifo_generator.fifo_generator_inst_s_axi_bresp_UNCONNECTED ;
  wire [0:0]\NLW_gen_fifo_generator.fifo_generator_inst_s_axi_buser_UNCONNECTED ;
  wire [63:0]\NLW_gen_fifo_generator.fifo_generator_inst_s_axi_rdata_UNCONNECTED ;
  wire [3:0]\NLW_gen_fifo_generator.fifo_generator_inst_s_axi_rid_UNCONNECTED ;
  wire [1:0]\NLW_gen_fifo_generator.fifo_generator_inst_s_axi_rresp_UNCONNECTED ;
  wire [0:0]\NLW_gen_fifo_generator.fifo_generator_inst_s_axi_ruser_UNCONNECTED ;
  wire [9:0]\NLW_gen_fifo_generator.fifo_generator_inst_wr_data_count_UNCONNECTED ;

  assign axis_data_count[31] = \<const0> ;
  assign axis_data_count[30] = \<const0> ;
  assign axis_data_count[29] = \<const0> ;
  assign axis_data_count[28] = \<const0> ;
  assign axis_data_count[27] = \<const0> ;
  assign axis_data_count[26] = \<const0> ;
  assign axis_data_count[25] = \<const0> ;
  assign axis_data_count[24] = \<const0> ;
  assign axis_data_count[23] = \<const0> ;
  assign axis_data_count[22] = \<const0> ;
  assign axis_data_count[21] = \<const0> ;
  assign axis_data_count[20] = \<const0> ;
  assign axis_data_count[19] = \<const0> ;
  assign axis_data_count[18] = \<const0> ;
  assign axis_data_count[17] = \<const0> ;
  assign axis_data_count[16] = \<const0> ;
  assign axis_data_count[15] = \<const0> ;
  assign axis_data_count[14] = \<const0> ;
  assign axis_data_count[13] = \<const0> ;
  assign axis_data_count[12] = \<const0> ;
  assign axis_data_count[11] = \<const0> ;
  assign axis_data_count[10] = \<const0> ;
  assign axis_data_count[9] = \<const0> ;
  assign axis_data_count[8] = \<const0> ;
  assign axis_data_count[7] = \<const0> ;
  assign axis_data_count[6] = \<const0> ;
  assign axis_data_count[5] = \<const0> ;
  assign axis_data_count[4:0] = \^axis_rd_data_count [4:0];
  assign axis_rd_data_count[31] = \<const0> ;
  assign axis_rd_data_count[30] = \<const0> ;
  assign axis_rd_data_count[29] = \<const0> ;
  assign axis_rd_data_count[28] = \<const0> ;
  assign axis_rd_data_count[27] = \<const0> ;
  assign axis_rd_data_count[26] = \<const0> ;
  assign axis_rd_data_count[25] = \<const0> ;
  assign axis_rd_data_count[24] = \<const0> ;
  assign axis_rd_data_count[23] = \<const0> ;
  assign axis_rd_data_count[22] = \<const0> ;
  assign axis_rd_data_count[21] = \<const0> ;
  assign axis_rd_data_count[20] = \<const0> ;
  assign axis_rd_data_count[19] = \<const0> ;
  assign axis_rd_data_count[18] = \<const0> ;
  assign axis_rd_data_count[17] = \<const0> ;
  assign axis_rd_data_count[16] = \<const0> ;
  assign axis_rd_data_count[15] = \<const0> ;
  assign axis_rd_data_count[14] = \<const0> ;
  assign axis_rd_data_count[13] = \<const0> ;
  assign axis_rd_data_count[12] = \<const0> ;
  assign axis_rd_data_count[11] = \<const0> ;
  assign axis_rd_data_count[10] = \<const0> ;
  assign axis_rd_data_count[9] = \<const0> ;
  assign axis_rd_data_count[8] = \<const0> ;
  assign axis_rd_data_count[7] = \<const0> ;
  assign axis_rd_data_count[6] = \<const0> ;
  assign axis_rd_data_count[5] = \<const0> ;
  assign axis_rd_data_count[4:0] = \^axis_rd_data_count [4:0];
  assign axis_wr_data_count[31] = \<const0> ;
  assign axis_wr_data_count[30] = \<const0> ;
  assign axis_wr_data_count[29] = \<const0> ;
  assign axis_wr_data_count[28] = \<const0> ;
  assign axis_wr_data_count[27] = \<const0> ;
  assign axis_wr_data_count[26] = \<const0> ;
  assign axis_wr_data_count[25] = \<const0> ;
  assign axis_wr_data_count[24] = \<const0> ;
  assign axis_wr_data_count[23] = \<const0> ;
  assign axis_wr_data_count[22] = \<const0> ;
  assign axis_wr_data_count[21] = \<const0> ;
  assign axis_wr_data_count[20] = \<const0> ;
  assign axis_wr_data_count[19] = \<const0> ;
  assign axis_wr_data_count[18] = \<const0> ;
  assign axis_wr_data_count[17] = \<const0> ;
  assign axis_wr_data_count[16] = \<const0> ;
  assign axis_wr_data_count[15] = \<const0> ;
  assign axis_wr_data_count[14] = \<const0> ;
  assign axis_wr_data_count[13] = \<const0> ;
  assign axis_wr_data_count[12] = \<const0> ;
  assign axis_wr_data_count[11] = \<const0> ;
  assign axis_wr_data_count[10] = \<const0> ;
  assign axis_wr_data_count[9] = \<const0> ;
  assign axis_wr_data_count[8] = \<const0> ;
  assign axis_wr_data_count[7] = \<const0> ;
  assign axis_wr_data_count[6] = \<const0> ;
  assign axis_wr_data_count[5] = \<const0> ;
  assign axis_wr_data_count[4:0] = \^axis_rd_data_count [4:0];
  assign s_and_m_aresetn_i = s_axis_aresetn;
GND GND
       (.G(\<const0> ));
(* C_ADD_NGC_CONSTRAINT = "0" *) 
   (* C_APPLICATION_TYPE_AXIS = "0" *) 
   (* C_APPLICATION_TYPE_RACH = "0" *) 
   (* C_APPLICATION_TYPE_RDCH = "0" *) 
   (* C_APPLICATION_TYPE_WACH = "0" *) 
   (* C_APPLICATION_TYPE_WDCH = "0" *) 
   (* C_APPLICATION_TYPE_WRCH = "0" *) 
   (* C_AXIS_TDATA_WIDTH = "80" *) 
   (* C_AXIS_TDEST_WIDTH = "1" *) 
   (* C_AXIS_TID_WIDTH = "1" *) 
   (* C_AXIS_TKEEP_WIDTH = "10" *) 
   (* C_AXIS_TSTRB_WIDTH = "10" *) 
   (* C_AXIS_TUSER_WIDTH = "1" *) 
   (* C_AXIS_TYPE = "0" *) 
   (* C_AXI_ADDR_WIDTH = "32" *) 
   (* C_AXI_ARUSER_WIDTH = "1" *) 
   (* C_AXI_AWUSER_WIDTH = "1" *) 
   (* C_AXI_BUSER_WIDTH = "1" *) 
   (* C_AXI_DATA_WIDTH = "64" *) 
   (* C_AXI_ID_WIDTH = "4" *) 
   (* C_AXI_LEN_WIDTH = "8" *) 
   (* C_AXI_LOCK_WIDTH = "2" *) 
   (* C_AXI_RUSER_WIDTH = "1" *) 
   (* C_AXI_TYPE = "0" *) 
   (* C_AXI_WUSER_WIDTH = "1" *) 
   (* C_COMMON_CLOCK = "1" *) 
   (* C_COUNT_TYPE = "0" *) 
   (* C_DATA_COUNT_WIDTH = "10" *) 
   (* C_DEFAULT_VALUE = "BlankString" *) 
   (* C_DIN_WIDTH = "18" *) 
   (* C_DIN_WIDTH_AXIS = "91" *) 
   (* C_DIN_WIDTH_RACH = "32" *) 
   (* C_DIN_WIDTH_RDCH = "64" *) 
   (* C_DIN_WIDTH_WACH = "32" *) 
   (* C_DIN_WIDTH_WDCH = "64" *) 
   (* C_DIN_WIDTH_WRCH = "2" *) 
   (* C_DOUT_RST_VAL = "0" *) 
   (* C_DOUT_WIDTH = "18" *) 
   (* C_ENABLE_RLOCS = "0" *) 
   (* C_ENABLE_RST_SYNC = "1" *) 
   (* C_ERROR_INJECTION_TYPE = "0" *) 
   (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
   (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
   (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
   (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
   (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
   (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
   (* C_FAMILY = "virtex7" *) 
   (* C_FULL_FLAGS_RST_VAL = "1" *) 
   (* C_HAS_ALMOST_EMPTY = "0" *) 
   (* C_HAS_ALMOST_FULL = "0" *) 
   (* C_HAS_AXIS_TDATA = "1" *) 
   (* C_HAS_AXIS_TDEST = "0" *) 
   (* C_HAS_AXIS_TID = "0" *) 
   (* C_HAS_AXIS_TKEEP = "1" *) 
   (* C_HAS_AXIS_TLAST = "1" *) 
   (* C_HAS_AXIS_TREADY = "1" *) 
   (* C_HAS_AXIS_TSTRB = "0" *) 
   (* C_HAS_AXIS_TUSER = "0" *) 
   (* C_HAS_AXI_ARUSER = "0" *) 
   (* C_HAS_AXI_AWUSER = "0" *) 
   (* C_HAS_AXI_BUSER = "0" *) 
   (* C_HAS_AXI_ID = "0" *) 
   (* C_HAS_AXI_RD_CHANNEL = "0" *) 
   (* C_HAS_AXI_RUSER = "0" *) 
   (* C_HAS_AXI_WR_CHANNEL = "0" *) 
   (* C_HAS_AXI_WUSER = "0" *) 
   (* C_HAS_BACKUP = "0" *) 
   (* C_HAS_DATA_COUNT = "0" *) 
   (* C_HAS_DATA_COUNTS_AXIS = "1" *) 
   (* C_HAS_DATA_COUNTS_RACH = "0" *) 
   (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
   (* C_HAS_DATA_COUNTS_WACH = "0" *) 
   (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
   (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
   (* C_HAS_INT_CLK = "0" *) 
   (* C_HAS_MASTER_CE = "0" *) 
   (* C_HAS_MEMINIT_FILE = "0" *) 
   (* C_HAS_OVERFLOW = "0" *) 
   (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
   (* C_HAS_PROG_FLAGS_RACH = "0" *) 
   (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
   (* C_HAS_PROG_FLAGS_WACH = "0" *) 
   (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
   (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
   (* C_HAS_RD_DATA_COUNT = "0" *) 
   (* C_HAS_RD_RST = "0" *) 
   (* C_HAS_RST = "1" *) 
   (* C_HAS_SLAVE_CE = "0" *) 
   (* C_HAS_SRST = "0" *) 
   (* C_HAS_UNDERFLOW = "0" *) 
   (* C_HAS_VALID = "0" *) 
   (* C_HAS_WR_ACK = "0" *) 
   (* C_HAS_WR_DATA_COUNT = "0" *) 
   (* C_HAS_WR_RST = "0" *) 
   (* C_IMPLEMENTATION_TYPE = "0" *) 
   (* C_IMPLEMENTATION_TYPE_AXIS = "2" *) 
   (* C_IMPLEMENTATION_TYPE_RACH = "2" *) 
   (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
   (* C_IMPLEMENTATION_TYPE_WACH = "2" *) 
   (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
   (* C_IMPLEMENTATION_TYPE_WRCH = "2" *) 
   (* C_INIT_WR_PNTR_VAL = "0" *) 
   (* C_INTERFACE_TYPE = "1" *) 
   (* C_MEMORY_TYPE = "1" *) 
   (* C_MIF_FILE_NAME = "BlankString" *) 
   (* C_MSGON_VAL = "1" *) 
   (* C_OPTIMIZATION_MODE = "0" *) 
   (* C_OVERFLOW_LOW = "0" *) 
   (* C_POWER_SAVING_MODE = "0" *) 
   (* C_PRELOAD_LATENCY = "1" *) 
   (* C_PRELOAD_REGS = "0" *) 
   (* C_PRIM_FIFO_TYPE = "4kx4" *) 
   (* C_PRIM_FIFO_TYPE_AXIS = "512x36" *) 
   (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
   (* C_PRIM_FIFO_TYPE_RDCH = "512x36" *) 
   (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
   (* C_PRIM_FIFO_TYPE_WDCH = "512x36" *) 
   (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
   (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
   (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "14" *) 
   (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "14" *) 
   (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
   (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "14" *) 
   (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
   (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "14" *) 
   (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
   (* C_PROG_EMPTY_TYPE = "0" *) 
   (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
   (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
   (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
   (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
   (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
   (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
   (* C_PROG_FULL_THRESH_ASSERT_VAL = "1022" *) 
   (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "15" *) 
   (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "15" *) 
   (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
   (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "15" *) 
   (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
   (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "15" *) 
   (* C_PROG_FULL_THRESH_NEGATE_VAL = "1021" *) 
   (* C_PROG_FULL_TYPE = "0" *) 
   (* C_PROG_FULL_TYPE_AXIS = "0" *) 
   (* C_PROG_FULL_TYPE_RACH = "0" *) 
   (* C_PROG_FULL_TYPE_RDCH = "0" *) 
   (* C_PROG_FULL_TYPE_WACH = "0" *) 
   (* C_PROG_FULL_TYPE_WDCH = "0" *) 
   (* C_PROG_FULL_TYPE_WRCH = "0" *) 
   (* C_RACH_TYPE = "0" *) 
   (* C_RDCH_TYPE = "0" *) 
   (* C_RD_DATA_COUNT_WIDTH = "10" *) 
   (* C_RD_DEPTH = "1024" *) 
   (* C_RD_FREQ = "1" *) 
   (* C_RD_PNTR_WIDTH = "10" *) 
   (* C_REG_SLICE_MODE_AXIS = "0" *) 
   (* C_REG_SLICE_MODE_RACH = "0" *) 
   (* C_REG_SLICE_MODE_RDCH = "0" *) 
   (* C_REG_SLICE_MODE_WACH = "0" *) 
   (* C_REG_SLICE_MODE_WDCH = "0" *) 
   (* C_REG_SLICE_MODE_WRCH = "0" *) 
   (* C_SYNCHRONIZER_STAGE = "2" *) 
   (* C_UNDERFLOW_LOW = "0" *) 
   (* C_USE_COMMON_OVERFLOW = "0" *) 
   (* C_USE_COMMON_UNDERFLOW = "0" *) 
   (* C_USE_DEFAULT_SETTINGS = "0" *) 
   (* C_USE_DOUT_RST = "1" *) 
   (* C_USE_ECC = "0" *) 
   (* C_USE_ECC_AXIS = "0" *) 
   (* C_USE_ECC_RACH = "0" *) 
   (* C_USE_ECC_RDCH = "0" *) 
   (* C_USE_ECC_WACH = "0" *) 
   (* C_USE_ECC_WDCH = "0" *) 
   (* C_USE_ECC_WRCH = "0" *) 
   (* C_USE_EMBEDDED_REG = "0" *) 
   (* C_USE_FIFO16_FLAGS = "0" *) 
   (* C_USE_FWFT_DATA_COUNT = "0" *) 
   (* C_USE_PIPELINE_REG = "0" *) 
   (* C_VALID_LOW = "0" *) 
   (* C_WACH_TYPE = "0" *) 
   (* C_WDCH_TYPE = "0" *) 
   (* C_WRCH_TYPE = "0" *) 
   (* C_WR_ACK_LOW = "0" *) 
   (* C_WR_DATA_COUNT_WIDTH = "10" *) 
   (* C_WR_DEPTH = "1024" *) 
   (* C_WR_DEPTH_AXIS = "16" *) 
   (* C_WR_DEPTH_RACH = "16" *) 
   (* C_WR_DEPTH_RDCH = "1024" *) 
   (* C_WR_DEPTH_WACH = "16" *) 
   (* C_WR_DEPTH_WDCH = "1024" *) 
   (* C_WR_DEPTH_WRCH = "16" *) 
   (* C_WR_FREQ = "1" *) 
   (* C_WR_PNTR_WIDTH = "10" *) 
   (* C_WR_PNTR_WIDTH_AXIS = "4" *) 
   (* C_WR_PNTR_WIDTH_RACH = "4" *) 
   (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
   (* C_WR_PNTR_WIDTH_WACH = "4" *) 
   (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
   (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
   (* C_WR_RESPONSE_LATENCY = "1" *) 
   (* DONT_TOUCH *) 
   axis_data_fifo_0_fifo_generator_v12_0 \gen_fifo_generator.fifo_generator_inst 
       (.almost_empty(\NLW_gen_fifo_generator.fifo_generator_inst_almost_empty_UNCONNECTED ),
        .almost_full(\NLW_gen_fifo_generator.fifo_generator_inst_almost_full_UNCONNECTED ),
        .axi_ar_data_count(\NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_data_count_UNCONNECTED [4:0]),
        .axi_ar_dbiterr(\NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_dbiterr_UNCONNECTED ),
        .axi_ar_injectdbiterr(\<const0> ),
        .axi_ar_injectsbiterr(\<const0> ),
        .axi_ar_overflow(\NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_overflow_UNCONNECTED ),
        .axi_ar_prog_empty(\NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_prog_empty_UNCONNECTED ),
        .axi_ar_prog_empty_thresh({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .axi_ar_prog_full(\NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_prog_full_UNCONNECTED ),
        .axi_ar_prog_full_thresh({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .axi_ar_rd_data_count(\NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_rd_data_count_UNCONNECTED [4:0]),
        .axi_ar_sbiterr(\NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_sbiterr_UNCONNECTED ),
        .axi_ar_underflow(\NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_underflow_UNCONNECTED ),
        .axi_ar_wr_data_count(\NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_wr_data_count_UNCONNECTED [4:0]),
        .axi_aw_data_count(\NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_data_count_UNCONNECTED [4:0]),
        .axi_aw_dbiterr(\NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_dbiterr_UNCONNECTED ),
        .axi_aw_injectdbiterr(\<const0> ),
        .axi_aw_injectsbiterr(\<const0> ),
        .axi_aw_overflow(\NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_overflow_UNCONNECTED ),
        .axi_aw_prog_empty(\NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_prog_empty_UNCONNECTED ),
        .axi_aw_prog_empty_thresh({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .axi_aw_prog_full(\NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_prog_full_UNCONNECTED ),
        .axi_aw_prog_full_thresh({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .axi_aw_rd_data_count(\NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_rd_data_count_UNCONNECTED [4:0]),
        .axi_aw_sbiterr(\NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_sbiterr_UNCONNECTED ),
        .axi_aw_underflow(\NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_underflow_UNCONNECTED ),
        .axi_aw_wr_data_count(\NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_wr_data_count_UNCONNECTED [4:0]),
        .axi_b_data_count(\NLW_gen_fifo_generator.fifo_generator_inst_axi_b_data_count_UNCONNECTED [4:0]),
        .axi_b_dbiterr(\NLW_gen_fifo_generator.fifo_generator_inst_axi_b_dbiterr_UNCONNECTED ),
        .axi_b_injectdbiterr(\<const0> ),
        .axi_b_injectsbiterr(\<const0> ),
        .axi_b_overflow(\NLW_gen_fifo_generator.fifo_generator_inst_axi_b_overflow_UNCONNECTED ),
        .axi_b_prog_empty(\NLW_gen_fifo_generator.fifo_generator_inst_axi_b_prog_empty_UNCONNECTED ),
        .axi_b_prog_empty_thresh({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .axi_b_prog_full(\NLW_gen_fifo_generator.fifo_generator_inst_axi_b_prog_full_UNCONNECTED ),
        .axi_b_prog_full_thresh({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .axi_b_rd_data_count(\NLW_gen_fifo_generator.fifo_generator_inst_axi_b_rd_data_count_UNCONNECTED [4:0]),
        .axi_b_sbiterr(\NLW_gen_fifo_generator.fifo_generator_inst_axi_b_sbiterr_UNCONNECTED ),
        .axi_b_underflow(\NLW_gen_fifo_generator.fifo_generator_inst_axi_b_underflow_UNCONNECTED ),
        .axi_b_wr_data_count(\NLW_gen_fifo_generator.fifo_generator_inst_axi_b_wr_data_count_UNCONNECTED [4:0]),
        .axi_r_data_count(\NLW_gen_fifo_generator.fifo_generator_inst_axi_r_data_count_UNCONNECTED [10:0]),
        .axi_r_dbiterr(\NLW_gen_fifo_generator.fifo_generator_inst_axi_r_dbiterr_UNCONNECTED ),
        .axi_r_injectdbiterr(\<const0> ),
        .axi_r_injectsbiterr(\<const0> ),
        .axi_r_overflow(\NLW_gen_fifo_generator.fifo_generator_inst_axi_r_overflow_UNCONNECTED ),
        .axi_r_prog_empty(\NLW_gen_fifo_generator.fifo_generator_inst_axi_r_prog_empty_UNCONNECTED ),
        .axi_r_prog_empty_thresh({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .axi_r_prog_full(\NLW_gen_fifo_generator.fifo_generator_inst_axi_r_prog_full_UNCONNECTED ),
        .axi_r_prog_full_thresh({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .axi_r_rd_data_count(\NLW_gen_fifo_generator.fifo_generator_inst_axi_r_rd_data_count_UNCONNECTED [10:0]),
        .axi_r_sbiterr(\NLW_gen_fifo_generator.fifo_generator_inst_axi_r_sbiterr_UNCONNECTED ),
        .axi_r_underflow(\NLW_gen_fifo_generator.fifo_generator_inst_axi_r_underflow_UNCONNECTED ),
        .axi_r_wr_data_count(\NLW_gen_fifo_generator.fifo_generator_inst_axi_r_wr_data_count_UNCONNECTED [10:0]),
        .axi_w_data_count(\NLW_gen_fifo_generator.fifo_generator_inst_axi_w_data_count_UNCONNECTED [10:0]),
        .axi_w_dbiterr(\NLW_gen_fifo_generator.fifo_generator_inst_axi_w_dbiterr_UNCONNECTED ),
        .axi_w_injectdbiterr(\<const0> ),
        .axi_w_injectsbiterr(\<const0> ),
        .axi_w_overflow(\NLW_gen_fifo_generator.fifo_generator_inst_axi_w_overflow_UNCONNECTED ),
        .axi_w_prog_empty(\NLW_gen_fifo_generator.fifo_generator_inst_axi_w_prog_empty_UNCONNECTED ),
        .axi_w_prog_empty_thresh({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .axi_w_prog_full(\NLW_gen_fifo_generator.fifo_generator_inst_axi_w_prog_full_UNCONNECTED ),
        .axi_w_prog_full_thresh({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .axi_w_rd_data_count(\NLW_gen_fifo_generator.fifo_generator_inst_axi_w_rd_data_count_UNCONNECTED [10:0]),
        .axi_w_sbiterr(\NLW_gen_fifo_generator.fifo_generator_inst_axi_w_sbiterr_UNCONNECTED ),
        .axi_w_underflow(\NLW_gen_fifo_generator.fifo_generator_inst_axi_w_underflow_UNCONNECTED ),
        .axi_w_wr_data_count(\NLW_gen_fifo_generator.fifo_generator_inst_axi_w_wr_data_count_UNCONNECTED [10:0]),
        .axis_data_count(\^axis_rd_data_count ),
        .axis_dbiterr(\NLW_gen_fifo_generator.fifo_generator_inst_axis_dbiterr_UNCONNECTED ),
        .axis_injectdbiterr(\<const0> ),
        .axis_injectsbiterr(\<const0> ),
        .axis_overflow(\NLW_gen_fifo_generator.fifo_generator_inst_axis_overflow_UNCONNECTED ),
        .axis_prog_empty(\NLW_gen_fifo_generator.fifo_generator_inst_axis_prog_empty_UNCONNECTED ),
        .axis_prog_empty_thresh({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .axis_prog_full(\NLW_gen_fifo_generator.fifo_generator_inst_axis_prog_full_UNCONNECTED ),
        .axis_prog_full_thresh({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .axis_rd_data_count(\NLW_gen_fifo_generator.fifo_generator_inst_axis_rd_data_count_UNCONNECTED [4:0]),
        .axis_sbiterr(\NLW_gen_fifo_generator.fifo_generator_inst_axis_sbiterr_UNCONNECTED ),
        .axis_underflow(\NLW_gen_fifo_generator.fifo_generator_inst_axis_underflow_UNCONNECTED ),
        .axis_wr_data_count(\NLW_gen_fifo_generator.fifo_generator_inst_axis_wr_data_count_UNCONNECTED [4:0]),
        .backup(\<const0> ),
        .backup_marker(\<const0> ),
        .clk(\<const0> ),
        .data_count(\NLW_gen_fifo_generator.fifo_generator_inst_data_count_UNCONNECTED [9:0]),
        .dbiterr(\NLW_gen_fifo_generator.fifo_generator_inst_dbiterr_UNCONNECTED ),
        .din({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .dout(\NLW_gen_fifo_generator.fifo_generator_inst_dout_UNCONNECTED [17:0]),
        .empty(\NLW_gen_fifo_generator.fifo_generator_inst_empty_UNCONNECTED ),
        .full(\NLW_gen_fifo_generator.fifo_generator_inst_full_UNCONNECTED ),
        .injectdbiterr(\<const0> ),
        .injectsbiterr(\<const0> ),
        .int_clk(\<const0> ),
        .m_aclk(s_axis_aclk),
        .m_aclk_en(\<const0> ),
        .m_axi_araddr(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_araddr_UNCONNECTED [31:0]),
        .m_axi_arburst(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arburst_UNCONNECTED [1:0]),
        .m_axi_arcache(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arcache_UNCONNECTED [3:0]),
        .m_axi_arid(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arid_UNCONNECTED [3:0]),
        .m_axi_arlen(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arlen_UNCONNECTED [7:0]),
        .m_axi_arlock(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arlock_UNCONNECTED [1:0]),
        .m_axi_arprot(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arprot_UNCONNECTED [2:0]),
        .m_axi_arqos(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arqos_UNCONNECTED [3:0]),
        .m_axi_arready(\<const0> ),
        .m_axi_arregion(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arregion_UNCONNECTED [3:0]),
        .m_axi_arsize(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arsize_UNCONNECTED [2:0]),
        .m_axi_aruser(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_aruser_UNCONNECTED [0]),
        .m_axi_arvalid(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arvalid_UNCONNECTED ),
        .m_axi_awaddr(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awaddr_UNCONNECTED [31:0]),
        .m_axi_awburst(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awburst_UNCONNECTED [1:0]),
        .m_axi_awcache(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awcache_UNCONNECTED [3:0]),
        .m_axi_awid(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awid_UNCONNECTED [3:0]),
        .m_axi_awlen(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awlen_UNCONNECTED [7:0]),
        .m_axi_awlock(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awlock_UNCONNECTED [1:0]),
        .m_axi_awprot(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awprot_UNCONNECTED [2:0]),
        .m_axi_awqos(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awqos_UNCONNECTED [3:0]),
        .m_axi_awready(\<const0> ),
        .m_axi_awregion(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awregion_UNCONNECTED [3:0]),
        .m_axi_awsize(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awsize_UNCONNECTED [2:0]),
        .m_axi_awuser(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awuser_UNCONNECTED [0]),
        .m_axi_awvalid(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awvalid_UNCONNECTED ),
        .m_axi_bid({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .m_axi_bready(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_bready_UNCONNECTED ),
        .m_axi_bresp({\<const0> ,\<const0> }),
        .m_axi_buser(\<const0> ),
        .m_axi_bvalid(\<const0> ),
        .m_axi_rdata({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .m_axi_rid({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .m_axi_rlast(\<const0> ),
        .m_axi_rready(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_rready_UNCONNECTED ),
        .m_axi_rresp({\<const0> ,\<const0> }),
        .m_axi_ruser(\<const0> ),
        .m_axi_rvalid(\<const0> ),
        .m_axi_wdata(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_wdata_UNCONNECTED [63:0]),
        .m_axi_wid(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_wid_UNCONNECTED [3:0]),
        .m_axi_wlast(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_wlast_UNCONNECTED ),
        .m_axi_wready(\<const0> ),
        .m_axi_wstrb(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_wstrb_UNCONNECTED [7:0]),
        .m_axi_wuser(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_wuser_UNCONNECTED [0]),
        .m_axi_wvalid(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_wvalid_UNCONNECTED ),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tdest(m_axis_tdest),
        .m_axis_tid(m_axis_tid),
        .m_axis_tkeep(m_axis_tkeep),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tstrb(m_axis_tstrb),
        .m_axis_tuser(m_axis_tuser),
        .m_axis_tvalid(m_axis_tvalid),
        .overflow(\NLW_gen_fifo_generator.fifo_generator_inst_overflow_UNCONNECTED ),
        .prog_empty(\NLW_gen_fifo_generator.fifo_generator_inst_prog_empty_UNCONNECTED ),
        .prog_empty_thresh({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .prog_empty_thresh_assert({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .prog_empty_thresh_negate({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .prog_full(\NLW_gen_fifo_generator.fifo_generator_inst_prog_full_UNCONNECTED ),
        .prog_full_thresh({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .prog_full_thresh_assert({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .prog_full_thresh_negate({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .rd_clk(\<const0> ),
        .rd_data_count(\NLW_gen_fifo_generator.fifo_generator_inst_rd_data_count_UNCONNECTED [9:0]),
        .rd_en(\<const0> ),
        .rd_rst(\<const0> ),
        .rd_rst_busy(\NLW_gen_fifo_generator.fifo_generator_inst_rd_rst_busy_UNCONNECTED ),
        .rst(\<const0> ),
        .s_aclk(s_axis_aclk),
        .s_aclk_en(\<const0> ),
        .s_aresetn(s_and_m_aresetn_i),
        .s_axi_araddr({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .s_axi_arburst({\<const0> ,\<const0> }),
        .s_axi_arcache({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .s_axi_arid({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .s_axi_arlen({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .s_axi_arlock({\<const0> ,\<const0> }),
        .s_axi_arprot({\<const0> ,\<const0> ,\<const0> }),
        .s_axi_arqos({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .s_axi_arready(\NLW_gen_fifo_generator.fifo_generator_inst_s_axi_arready_UNCONNECTED ),
        .s_axi_arregion({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .s_axi_arsize({\<const0> ,\<const0> ,\<const0> }),
        .s_axi_aruser(\<const0> ),
        .s_axi_arvalid(\<const0> ),
        .s_axi_awaddr({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .s_axi_awburst({\<const0> ,\<const0> }),
        .s_axi_awcache({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .s_axi_awid({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .s_axi_awlen({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .s_axi_awlock({\<const0> ,\<const0> }),
        .s_axi_awprot({\<const0> ,\<const0> ,\<const0> }),
        .s_axi_awqos({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .s_axi_awready(\NLW_gen_fifo_generator.fifo_generator_inst_s_axi_awready_UNCONNECTED ),
        .s_axi_awregion({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .s_axi_awsize({\<const0> ,\<const0> ,\<const0> }),
        .s_axi_awuser(\<const0> ),
        .s_axi_awvalid(\<const0> ),
        .s_axi_bid(\NLW_gen_fifo_generator.fifo_generator_inst_s_axi_bid_UNCONNECTED [3:0]),
        .s_axi_bready(\<const0> ),
        .s_axi_bresp(\NLW_gen_fifo_generator.fifo_generator_inst_s_axi_bresp_UNCONNECTED [1:0]),
        .s_axi_buser(\NLW_gen_fifo_generator.fifo_generator_inst_s_axi_buser_UNCONNECTED [0]),
        .s_axi_bvalid(\NLW_gen_fifo_generator.fifo_generator_inst_s_axi_bvalid_UNCONNECTED ),
        .s_axi_rdata(\NLW_gen_fifo_generator.fifo_generator_inst_s_axi_rdata_UNCONNECTED [63:0]),
        .s_axi_rid(\NLW_gen_fifo_generator.fifo_generator_inst_s_axi_rid_UNCONNECTED [3:0]),
        .s_axi_rlast(\NLW_gen_fifo_generator.fifo_generator_inst_s_axi_rlast_UNCONNECTED ),
        .s_axi_rready(\<const0> ),
        .s_axi_rresp(\NLW_gen_fifo_generator.fifo_generator_inst_s_axi_rresp_UNCONNECTED [1:0]),
        .s_axi_ruser(\NLW_gen_fifo_generator.fifo_generator_inst_s_axi_ruser_UNCONNECTED [0]),
        .s_axi_rvalid(\NLW_gen_fifo_generator.fifo_generator_inst_s_axi_rvalid_UNCONNECTED ),
        .s_axi_wdata({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .s_axi_wid({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .s_axi_wlast(\<const0> ),
        .s_axi_wready(\NLW_gen_fifo_generator.fifo_generator_inst_s_axi_wready_UNCONNECTED ),
        .s_axi_wstrb({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .s_axi_wuser(\<const0> ),
        .s_axi_wvalid(\<const0> ),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tdest(s_axis_tdest),
        .s_axis_tid(s_axis_tid),
        .s_axis_tkeep(s_axis_tkeep),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tstrb(s_axis_tstrb),
        .s_axis_tuser(s_axis_tuser),
        .s_axis_tvalid(s_axis_tvalid),
        .sbiterr(\NLW_gen_fifo_generator.fifo_generator_inst_sbiterr_UNCONNECTED ),
        .sleep(\<const0> ),
        .srst(\<const0> ),
        .underflow(\NLW_gen_fifo_generator.fifo_generator_inst_underflow_UNCONNECTED ),
        .valid(\NLW_gen_fifo_generator.fifo_generator_inst_valid_UNCONNECTED ),
        .wr_ack(\NLW_gen_fifo_generator.fifo_generator_inst_wr_ack_UNCONNECTED ),
        .wr_clk(\<const0> ),
        .wr_data_count(\NLW_gen_fifo_generator.fifo_generator_inst_wr_data_count_UNCONNECTED [9:0]),
        .wr_en(\<const0> ),
        .wr_rst(\<const0> ),
        .wr_rst_busy(\NLW_gen_fifo_generator.fifo_generator_inst_wr_rst_busy_UNCONNECTED ));
endmodule

(* ORIG_REF_NAME = "dc_ss_fwft" *) 
module axis_data_fifo_0_dc_ss_fwft
   (Q,
    m_axis_tready,
    I1,
    I5,
    s_aclk,
    I2);
  output [4:0]Q;
  input m_axis_tready;
  input I1;
  input [0:0]I5;
  input s_aclk;
  input [0:0]I2;

  wire I1;
  wire [0:0]I2;
  wire [0:0]I5;
  wire [4:0]Q;
  wire m_axis_tready;
  wire s_aclk;

axis_data_fifo_0_updn_cntr dc
       (.I1(I1),
        .I2(I2),
        .I5(I5),
        .Q(Q),
        .m_axis_tready(m_axis_tready),
        .s_aclk(s_aclk));
endmodule

(* ORIG_REF_NAME = "dmem" *) 
module axis_data_fifo_0_dmem
   (D,
    I1,
    s_aclk,
    E,
    DI,
    O4,
    O3);
  output [90:0]D;
  input I1;
  input s_aclk;
  input [0:0]E;
  input [90:0]DI;
  input [3:0]O4;
  input [3:0]O3;

  wire [90:0]D;
  wire [90:0]DI;
  wire [0:0]E;
  wire I1;
  wire [3:0]O3;
  wire [3:0]O4;
  wire [90:0]p_0_out;
  wire s_aclk;
  wire [1:0]NLW_RAM_reg_0_15_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_24_29_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_30_35_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_36_41_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_42_47_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_48_53_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_54_59_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_60_65_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_66_71_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_6_11_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_72_77_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_78_83_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_84_89_DOD_UNCONNECTED;
  wire [1:1]NLW_RAM_reg_0_15_90_90_DOA_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_90_90_DOB_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_90_90_DOC_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_15_90_90_DOD_UNCONNECTED;

RAM32M RAM_reg_0_15_0_5
       (.ADDRA({1'b0,O4}),
        .ADDRB({1'b0,O4}),
        .ADDRC({1'b0,O4}),
        .ADDRD({1'b0,O3}),
        .DIA(DI[1:0]),
        .DIB(DI[3:2]),
        .DIC(DI[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out[1:0]),
        .DOB(p_0_out[3:2]),
        .DOC(p_0_out[5:4]),
        .DOD(NLW_RAM_reg_0_15_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(E));
RAM32M RAM_reg_0_15_12_17
       (.ADDRA({1'b0,O4}),
        .ADDRB({1'b0,O4}),
        .ADDRC({1'b0,O4}),
        .ADDRD({1'b0,O3}),
        .DIA(DI[13:12]),
        .DIB(DI[15:14]),
        .DIC(DI[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out[13:12]),
        .DOB(p_0_out[15:14]),
        .DOC(p_0_out[17:16]),
        .DOD(NLW_RAM_reg_0_15_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(E));
RAM32M RAM_reg_0_15_18_23
       (.ADDRA({1'b0,O4}),
        .ADDRB({1'b0,O4}),
        .ADDRC({1'b0,O4}),
        .ADDRD({1'b0,O3}),
        .DIA(DI[19:18]),
        .DIB(DI[21:20]),
        .DIC(DI[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out[19:18]),
        .DOB(p_0_out[21:20]),
        .DOC(p_0_out[23:22]),
        .DOD(NLW_RAM_reg_0_15_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(E));
RAM32M RAM_reg_0_15_24_29
       (.ADDRA({1'b0,O4}),
        .ADDRB({1'b0,O4}),
        .ADDRC({1'b0,O4}),
        .ADDRD({1'b0,O3}),
        .DIA(DI[25:24]),
        .DIB(DI[27:26]),
        .DIC(DI[29:28]),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out[25:24]),
        .DOB(p_0_out[27:26]),
        .DOC(p_0_out[29:28]),
        .DOD(NLW_RAM_reg_0_15_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(E));
RAM32M RAM_reg_0_15_30_35
       (.ADDRA({1'b0,O4}),
        .ADDRB({1'b0,O4}),
        .ADDRC({1'b0,O4}),
        .ADDRD({1'b0,O3}),
        .DIA(DI[31:30]),
        .DIB(DI[33:32]),
        .DIC(DI[35:34]),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out[31:30]),
        .DOB(p_0_out[33:32]),
        .DOC(p_0_out[35:34]),
        .DOD(NLW_RAM_reg_0_15_30_35_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(E));
RAM32M RAM_reg_0_15_36_41
       (.ADDRA({1'b0,O4}),
        .ADDRB({1'b0,O4}),
        .ADDRC({1'b0,O4}),
        .ADDRD({1'b0,O3}),
        .DIA(DI[37:36]),
        .DIB(DI[39:38]),
        .DIC(DI[41:40]),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out[37:36]),
        .DOB(p_0_out[39:38]),
        .DOC(p_0_out[41:40]),
        .DOD(NLW_RAM_reg_0_15_36_41_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(E));
RAM32M RAM_reg_0_15_42_47
       (.ADDRA({1'b0,O4}),
        .ADDRB({1'b0,O4}),
        .ADDRC({1'b0,O4}),
        .ADDRD({1'b0,O3}),
        .DIA(DI[43:42]),
        .DIB(DI[45:44]),
        .DIC(DI[47:46]),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out[43:42]),
        .DOB(p_0_out[45:44]),
        .DOC(p_0_out[47:46]),
        .DOD(NLW_RAM_reg_0_15_42_47_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(E));
RAM32M RAM_reg_0_15_48_53
       (.ADDRA({1'b0,O4}),
        .ADDRB({1'b0,O4}),
        .ADDRC({1'b0,O4}),
        .ADDRD({1'b0,O3}),
        .DIA(DI[49:48]),
        .DIB(DI[51:50]),
        .DIC(DI[53:52]),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out[49:48]),
        .DOB(p_0_out[51:50]),
        .DOC(p_0_out[53:52]),
        .DOD(NLW_RAM_reg_0_15_48_53_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(E));
RAM32M RAM_reg_0_15_54_59
       (.ADDRA({1'b0,O4}),
        .ADDRB({1'b0,O4}),
        .ADDRC({1'b0,O4}),
        .ADDRD({1'b0,O3}),
        .DIA(DI[55:54]),
        .DIB(DI[57:56]),
        .DIC(DI[59:58]),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out[55:54]),
        .DOB(p_0_out[57:56]),
        .DOC(p_0_out[59:58]),
        .DOD(NLW_RAM_reg_0_15_54_59_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(E));
RAM32M RAM_reg_0_15_60_65
       (.ADDRA({1'b0,O4}),
        .ADDRB({1'b0,O4}),
        .ADDRC({1'b0,O4}),
        .ADDRD({1'b0,O3}),
        .DIA(DI[61:60]),
        .DIB(DI[63:62]),
        .DIC(DI[65:64]),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out[61:60]),
        .DOB(p_0_out[63:62]),
        .DOC(p_0_out[65:64]),
        .DOD(NLW_RAM_reg_0_15_60_65_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(E));
RAM32M RAM_reg_0_15_66_71
       (.ADDRA({1'b0,O4}),
        .ADDRB({1'b0,O4}),
        .ADDRC({1'b0,O4}),
        .ADDRD({1'b0,O3}),
        .DIA(DI[67:66]),
        .DIB(DI[69:68]),
        .DIC(DI[71:70]),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out[67:66]),
        .DOB(p_0_out[69:68]),
        .DOC(p_0_out[71:70]),
        .DOD(NLW_RAM_reg_0_15_66_71_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(E));
RAM32M RAM_reg_0_15_6_11
       (.ADDRA({1'b0,O4}),
        .ADDRB({1'b0,O4}),
        .ADDRC({1'b0,O4}),
        .ADDRD({1'b0,O3}),
        .DIA(DI[7:6]),
        .DIB(DI[9:8]),
        .DIC(DI[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out[7:6]),
        .DOB(p_0_out[9:8]),
        .DOC(p_0_out[11:10]),
        .DOD(NLW_RAM_reg_0_15_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(E));
RAM32M RAM_reg_0_15_72_77
       (.ADDRA({1'b0,O4}),
        .ADDRB({1'b0,O4}),
        .ADDRC({1'b0,O4}),
        .ADDRD({1'b0,O3}),
        .DIA(DI[73:72]),
        .DIB(DI[75:74]),
        .DIC(DI[77:76]),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out[73:72]),
        .DOB(p_0_out[75:74]),
        .DOC(p_0_out[77:76]),
        .DOD(NLW_RAM_reg_0_15_72_77_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(E));
RAM32M RAM_reg_0_15_78_83
       (.ADDRA({1'b0,O4}),
        .ADDRB({1'b0,O4}),
        .ADDRC({1'b0,O4}),
        .ADDRD({1'b0,O3}),
        .DIA(DI[79:78]),
        .DIB(DI[81:80]),
        .DIC(DI[83:82]),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out[79:78]),
        .DOB(p_0_out[81:80]),
        .DOC(p_0_out[83:82]),
        .DOD(NLW_RAM_reg_0_15_78_83_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(E));
RAM32M RAM_reg_0_15_84_89
       (.ADDRA({1'b0,O4}),
        .ADDRB({1'b0,O4}),
        .ADDRC({1'b0,O4}),
        .ADDRD({1'b0,O3}),
        .DIA(DI[85:84]),
        .DIB(DI[87:86]),
        .DIC(DI[89:88]),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out[85:84]),
        .DOB(p_0_out[87:86]),
        .DOC(p_0_out[89:88]),
        .DOD(NLW_RAM_reg_0_15_84_89_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(E));
RAM32M RAM_reg_0_15_90_90
       (.ADDRA({1'b0,O4}),
        .ADDRB({1'b0,O4}),
        .ADDRC({1'b0,O4}),
        .ADDRD({1'b0,O3}),
        .DIA({1'b0,DI[90]}),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA({NLW_RAM_reg_0_15_90_90_DOA_UNCONNECTED[1],p_0_out[90]}),
        .DOB(NLW_RAM_reg_0_15_90_90_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_RAM_reg_0_15_90_90_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_RAM_reg_0_15_90_90_DOD_UNCONNECTED[1:0]),
        .WCLK(s_aclk),
        .WE(E));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[0] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[0]),
        .Q(D[0]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[10] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[10]),
        .Q(D[10]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[11] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[11]),
        .Q(D[11]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[12] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[12]),
        .Q(D[12]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[13] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[13]),
        .Q(D[13]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[14] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[14]),
        .Q(D[14]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[15] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[15]),
        .Q(D[15]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[16] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[16]),
        .Q(D[16]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[17] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[17]),
        .Q(D[17]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[18] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[18]),
        .Q(D[18]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[19] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[19]),
        .Q(D[19]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[1] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[1]),
        .Q(D[1]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[20] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[20]),
        .Q(D[20]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[21] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[21]),
        .Q(D[21]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[22] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[22]),
        .Q(D[22]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[23] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[23]),
        .Q(D[23]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[24] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[24]),
        .Q(D[24]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[25] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[25]),
        .Q(D[25]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[26] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[26]),
        .Q(D[26]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[27] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[27]),
        .Q(D[27]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[28] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[28]),
        .Q(D[28]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[29] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[29]),
        .Q(D[29]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[2] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[2]),
        .Q(D[2]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[30] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[30]),
        .Q(D[30]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[31] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[31]),
        .Q(D[31]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[32] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[32]),
        .Q(D[32]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[33] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[33]),
        .Q(D[33]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[34] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[34]),
        .Q(D[34]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[35] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[35]),
        .Q(D[35]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[36] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[36]),
        .Q(D[36]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[37] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[37]),
        .Q(D[37]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[38] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[38]),
        .Q(D[38]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[39] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[39]),
        .Q(D[39]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[3] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[3]),
        .Q(D[3]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[40] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[40]),
        .Q(D[40]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[41] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[41]),
        .Q(D[41]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[42] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[42]),
        .Q(D[42]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[43] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[43]),
        .Q(D[43]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[44] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[44]),
        .Q(D[44]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[45] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[45]),
        .Q(D[45]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[46] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[46]),
        .Q(D[46]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[47] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[47]),
        .Q(D[47]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[48] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[48]),
        .Q(D[48]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[49] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[49]),
        .Q(D[49]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[4] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[4]),
        .Q(D[4]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[50] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[50]),
        .Q(D[50]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[51] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[51]),
        .Q(D[51]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[52] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[52]),
        .Q(D[52]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[53] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[53]),
        .Q(D[53]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[54] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[54]),
        .Q(D[54]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[55] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[55]),
        .Q(D[55]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[56] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[56]),
        .Q(D[56]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[57] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[57]),
        .Q(D[57]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[58] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[58]),
        .Q(D[58]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[59] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[59]),
        .Q(D[59]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[5] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[5]),
        .Q(D[5]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[60] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[60]),
        .Q(D[60]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[61] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[61]),
        .Q(D[61]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[62] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[62]),
        .Q(D[62]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[63] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[63]),
        .Q(D[63]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[64] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[64]),
        .Q(D[64]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[65] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[65]),
        .Q(D[65]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[66] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[66]),
        .Q(D[66]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[67] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[67]),
        .Q(D[67]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[68] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[68]),
        .Q(D[68]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[69] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[69]),
        .Q(D[69]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[6] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[6]),
        .Q(D[6]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[70] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[70]),
        .Q(D[70]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[71] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[71]),
        .Q(D[71]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[72] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[72]),
        .Q(D[72]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[73] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[73]),
        .Q(D[73]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[74] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[74]),
        .Q(D[74]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[75] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[75]),
        .Q(D[75]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[76] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[76]),
        .Q(D[76]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[77] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[77]),
        .Q(D[77]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[78] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[78]),
        .Q(D[78]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[79] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[79]),
        .Q(D[79]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[7] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[7]),
        .Q(D[7]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[80] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[80]),
        .Q(D[80]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[81] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[81]),
        .Q(D[81]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[82] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[82]),
        .Q(D[82]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[83] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[83]),
        .Q(D[83]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[84] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[84]),
        .Q(D[84]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[85] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[85]),
        .Q(D[85]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[86] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[86]),
        .Q(D[86]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[87] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[87]),
        .Q(D[87]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[88] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[88]),
        .Q(D[88]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[89] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[89]),
        .Q(D[89]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[8] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[8]),
        .Q(D[8]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[90] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[90]),
        .Q(D[90]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[9] 
       (.C(s_aclk),
        .CE(I1),
        .D(p_0_out[9]),
        .Q(D[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "fifo_generator_ramfifo" *) 
module axis_data_fifo_0_fifo_generator_ramfifo
   (axis_data_count,
    Q,
    s_axis_tready,
    m_axis_tvalid,
    m_axis_tready,
    s_aclk,
    DI,
    s_axis_tvalid,
    s_aresetn);
  output [4:0]axis_data_count;
  output [90:0]Q;
  output s_axis_tready;
  output m_axis_tvalid;
  input m_axis_tready;
  input s_aclk;
  input [90:0]DI;
  input s_axis_tvalid;
  input s_aresetn;

  wire [90:0]DI;
  wire [90:0]Q;
  wire RST;
  wire [4:0]axis_data_count;
  wire clear;
  wire \gr1.gdcf.dc/cntr_en ;
  wire \gwss.wsts/ram_full_comb ;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire \n_10_gntv_or_sync_fifo.gl0.rd ;
  wire \n_2_gntv_or_sync_fifo.gl0.wr ;
  wire n_4_rstblk;
  wire \n_6_gntv_or_sync_fifo.gl0.rd ;
  wire \n_7_gntv_or_sync_fifo.gl0.wr ;
  wire [3:0]p_10_out;
  wire p_1_out;
  wire [3:0]p_20_out;
  wire p_4_out;
  wire [3:0]p_9_out;
  wire [1:0]rd_pntr_plus1;
  wire rst_d2;
  wire rst_full_gen_i;
  wire s_aclk;
  wire s_aresetn;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire valid_fwft;

axis_data_fifo_0_rd_logic \gntv_or_sync_fifo.gl0.rd 
       (.E(\n_10_gntv_or_sync_fifo.gl0.rd ),
        .I1(\n_2_gntv_or_sync_fifo.gl0.wr ),
        .I2(\n_7_gntv_or_sync_fifo.gl0.wr ),
        .I3(p_10_out),
        .I4({p_9_out[3],p_9_out[1:0]}),
        .I5(\gr1.gdcf.dc/cntr_en ),
        .O1(axis_data_count),
        .O2(\n_6_gntv_or_sync_fifo.gl0.rd ),
        .O3(rd_pntr_plus1),
        .O4(p_20_out),
        .Q({clear,n_4_rstblk}),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .p_1_out(p_1_out),
        .ram_full_comb(\gwss.wsts/ram_full_comb ),
        .rst_full_gen_i(rst_full_gen_i),
        .s_aclk(s_aclk),
        .s_axis_tvalid(s_axis_tvalid),
        .valid_fwft(valid_fwft));
axis_data_fifo_0_wr_logic \gntv_or_sync_fifo.gl0.wr 
       (.AR(RST),
        .E(p_4_out),
        .I1(rd_pntr_plus1),
        .I5(\gr1.gdcf.dc/cntr_en ),
        .O1(\n_2_gntv_or_sync_fifo.gl0.wr ),
        .O2(\n_7_gntv_or_sync_fifo.gl0.wr ),
        .O3(p_10_out),
        .O4(p_20_out[2]),
        .Q({p_9_out[3],p_9_out[1:0]}),
        .m_axis_tready(m_axis_tready),
        .p_1_out(p_1_out),
        .ram_full_comb(\gwss.wsts/ram_full_comb ),
        .rst_d2(rst_d2),
        .s_aclk(s_aclk),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid),
        .valid_fwft(valid_fwft));
axis_data_fifo_0_memory \gntv_or_sync_fifo.mem 
       (.DI(DI),
        .E(p_4_out),
        .I1(\n_6_gntv_or_sync_fifo.gl0.rd ),
        .I2(\n_10_gntv_or_sync_fifo.gl0.rd ),
        .O3(p_10_out),
        .O4(p_20_out),
        .Q(Q),
        .s_aclk(s_aclk));
axis_data_fifo_0_reset_blk_ramfifo rstblk
       (.AR(RST),
        .Q({clear,n_4_rstblk}),
        .rst_d2(rst_d2),
        .rst_full_gen_i(rst_full_gen_i),
        .s_aclk(s_aclk),
        .s_aresetn(s_aresetn));
endmodule

(* ORIG_REF_NAME = "fifo_generator_top" *) 
module axis_data_fifo_0_fifo_generator_top
   (axis_data_count,
    Q,
    s_axis_tready,
    m_axis_tvalid,
    m_axis_tready,
    s_aclk,
    DI,
    s_axis_tvalid,
    s_aresetn);
  output [4:0]axis_data_count;
  output [90:0]Q;
  output s_axis_tready;
  output m_axis_tvalid;
  input m_axis_tready;
  input s_aclk;
  input [90:0]DI;
  input s_axis_tvalid;
  input s_aresetn;

  wire [90:0]DI;
  wire [90:0]Q;
  wire [4:0]axis_data_count;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire s_aclk;
  wire s_aresetn;
  wire s_axis_tready;
  wire s_axis_tvalid;

axis_data_fifo_0_fifo_generator_ramfifo \grf.rf 
       (.DI(DI),
        .Q(Q),
        .axis_data_count(axis_data_count),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .s_aclk(s_aclk),
        .s_aresetn(s_aresetn),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* C_COMMON_CLOCK = "1" *) (* C_COUNT_TYPE = "0" *) (* C_DATA_COUNT_WIDTH = "10" *) 
(* C_DEFAULT_VALUE = "BlankString" *) (* C_DIN_WIDTH = "18" *) (* C_DOUT_RST_VAL = "0" *) 
(* C_DOUT_WIDTH = "18" *) (* C_ENABLE_RLOCS = "0" *) (* C_FAMILY = "virtex7" *) 
(* C_FULL_FLAGS_RST_VAL = "1" *) (* C_HAS_ALMOST_EMPTY = "0" *) (* C_HAS_ALMOST_FULL = "0" *) 
(* C_HAS_BACKUP = "0" *) (* C_HAS_DATA_COUNT = "0" *) (* C_HAS_INT_CLK = "0" *) 
(* C_HAS_MEMINIT_FILE = "0" *) (* C_HAS_OVERFLOW = "0" *) (* C_HAS_RD_DATA_COUNT = "0" *) 
(* C_HAS_RD_RST = "0" *) (* C_HAS_RST = "1" *) (* C_HAS_SRST = "0" *) 
(* C_HAS_UNDERFLOW = "0" *) (* C_HAS_VALID = "0" *) (* C_HAS_WR_ACK = "0" *) 
(* C_HAS_WR_DATA_COUNT = "0" *) (* C_HAS_WR_RST = "0" *) (* C_IMPLEMENTATION_TYPE = "0" *) 
(* C_INIT_WR_PNTR_VAL = "0" *) (* C_MEMORY_TYPE = "1" *) (* C_MIF_FILE_NAME = "BlankString" *) 
(* C_OPTIMIZATION_MODE = "0" *) (* C_OVERFLOW_LOW = "0" *) (* C_PRELOAD_LATENCY = "1" *) 
(* C_PRELOAD_REGS = "0" *) (* C_PRIM_FIFO_TYPE = "4kx4" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
(* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) (* C_PROG_EMPTY_TYPE = "0" *) (* C_PROG_FULL_THRESH_ASSERT_VAL = "1022" *) 
(* C_PROG_FULL_THRESH_NEGATE_VAL = "1021" *) (* C_PROG_FULL_TYPE = "0" *) (* C_RD_DATA_COUNT_WIDTH = "10" *) 
(* C_RD_DEPTH = "1024" *) (* C_RD_FREQ = "1" *) (* C_RD_PNTR_WIDTH = "10" *) 
(* C_UNDERFLOW_LOW = "0" *) (* C_USE_DOUT_RST = "1" *) (* C_USE_ECC = "0" *) 
(* C_USE_EMBEDDED_REG = "0" *) (* C_USE_PIPELINE_REG = "0" *) (* C_POWER_SAVING_MODE = "0" *) 
(* C_USE_FIFO16_FLAGS = "0" *) (* C_USE_FWFT_DATA_COUNT = "0" *) (* C_VALID_LOW = "0" *) 
(* C_WR_ACK_LOW = "0" *) (* C_WR_DATA_COUNT_WIDTH = "10" *) (* C_WR_DEPTH = "1024" *) 
(* C_WR_FREQ = "1" *) (* C_WR_PNTR_WIDTH = "10" *) (* C_WR_RESPONSE_LATENCY = "1" *) 
(* C_MSGON_VAL = "1" *) (* C_ENABLE_RST_SYNC = "1" *) (* C_ERROR_INJECTION_TYPE = "0" *) 
(* C_SYNCHRONIZER_STAGE = "2" *) (* C_INTERFACE_TYPE = "1" *) (* C_AXI_TYPE = "0" *) 
(* C_HAS_AXI_WR_CHANNEL = "0" *) (* C_HAS_AXI_RD_CHANNEL = "0" *) (* C_HAS_SLAVE_CE = "0" *) 
(* C_HAS_MASTER_CE = "0" *) (* C_ADD_NGC_CONSTRAINT = "0" *) (* C_USE_COMMON_OVERFLOW = "0" *) 
(* C_USE_COMMON_UNDERFLOW = "0" *) (* C_USE_DEFAULT_SETTINGS = "0" *) (* C_AXI_ID_WIDTH = "4" *) 
(* C_AXI_ADDR_WIDTH = "32" *) (* C_AXI_DATA_WIDTH = "64" *) (* C_AXI_LEN_WIDTH = "8" *) 
(* C_AXI_LOCK_WIDTH = "2" *) (* C_HAS_AXI_ID = "0" *) (* C_HAS_AXI_AWUSER = "0" *) 
(* C_HAS_AXI_WUSER = "0" *) (* C_HAS_AXI_BUSER = "0" *) (* C_HAS_AXI_ARUSER = "0" *) 
(* C_HAS_AXI_RUSER = "0" *) (* C_AXI_ARUSER_WIDTH = "1" *) (* C_AXI_AWUSER_WIDTH = "1" *) 
(* C_AXI_WUSER_WIDTH = "1" *) (* C_AXI_BUSER_WIDTH = "1" *) (* C_AXI_RUSER_WIDTH = "1" *) 
(* C_HAS_AXIS_TDATA = "1" *) (* C_HAS_AXIS_TID = "0" *) (* C_HAS_AXIS_TDEST = "0" *) 
(* C_HAS_AXIS_TUSER = "0" *) (* C_HAS_AXIS_TREADY = "1" *) (* C_HAS_AXIS_TLAST = "1" *) 
(* C_HAS_AXIS_TSTRB = "0" *) (* C_HAS_AXIS_TKEEP = "1" *) (* C_AXIS_TDATA_WIDTH = "80" *) 
(* C_AXIS_TID_WIDTH = "1" *) (* C_AXIS_TDEST_WIDTH = "1" *) (* C_AXIS_TUSER_WIDTH = "1" *) 
(* C_AXIS_TSTRB_WIDTH = "10" *) (* C_AXIS_TKEEP_WIDTH = "10" *) (* C_WACH_TYPE = "0" *) 
(* C_WDCH_TYPE = "0" *) (* C_WRCH_TYPE = "0" *) (* C_RACH_TYPE = "0" *) 
(* C_RDCH_TYPE = "0" *) (* C_AXIS_TYPE = "0" *) (* C_IMPLEMENTATION_TYPE_WACH = "2" *) 
(* C_IMPLEMENTATION_TYPE_WDCH = "1" *) (* C_IMPLEMENTATION_TYPE_WRCH = "2" *) (* C_IMPLEMENTATION_TYPE_RACH = "2" *) 
(* C_IMPLEMENTATION_TYPE_RDCH = "1" *) (* C_IMPLEMENTATION_TYPE_AXIS = "2" *) (* C_APPLICATION_TYPE_WACH = "0" *) 
(* C_APPLICATION_TYPE_WDCH = "0" *) (* C_APPLICATION_TYPE_WRCH = "0" *) (* C_APPLICATION_TYPE_RACH = "0" *) 
(* C_APPLICATION_TYPE_RDCH = "0" *) (* C_APPLICATION_TYPE_AXIS = "0" *) (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
(* C_PRIM_FIFO_TYPE_WDCH = "512x36" *) (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
(* C_PRIM_FIFO_TYPE_RDCH = "512x36" *) (* C_PRIM_FIFO_TYPE_AXIS = "512x36" *) (* C_USE_ECC_WACH = "0" *) 
(* C_USE_ECC_WDCH = "0" *) (* C_USE_ECC_WRCH = "0" *) (* C_USE_ECC_RACH = "0" *) 
(* C_USE_ECC_RDCH = "0" *) (* C_USE_ECC_AXIS = "0" *) (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
(* C_ERROR_INJECTION_TYPE_WDCH = "0" *) (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
(* C_ERROR_INJECTION_TYPE_RDCH = "0" *) (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) (* C_DIN_WIDTH_WACH = "32" *) 
(* C_DIN_WIDTH_WDCH = "64" *) (* C_DIN_WIDTH_WRCH = "2" *) (* C_DIN_WIDTH_RACH = "32" *) 
(* C_DIN_WIDTH_RDCH = "64" *) (* C_DIN_WIDTH_AXIS = "91" *) (* C_WR_DEPTH_WACH = "16" *) 
(* C_WR_DEPTH_WDCH = "1024" *) (* C_WR_DEPTH_WRCH = "16" *) (* C_WR_DEPTH_RACH = "16" *) 
(* C_WR_DEPTH_RDCH = "1024" *) (* C_WR_DEPTH_AXIS = "16" *) (* C_WR_PNTR_WIDTH_WACH = "4" *) 
(* C_WR_PNTR_WIDTH_WDCH = "10" *) (* C_WR_PNTR_WIDTH_WRCH = "4" *) (* C_WR_PNTR_WIDTH_RACH = "4" *) 
(* C_WR_PNTR_WIDTH_RDCH = "10" *) (* C_WR_PNTR_WIDTH_AXIS = "4" *) (* C_HAS_DATA_COUNTS_WACH = "0" *) 
(* C_HAS_DATA_COUNTS_WDCH = "0" *) (* C_HAS_DATA_COUNTS_WRCH = "0" *) (* C_HAS_DATA_COUNTS_RACH = "0" *) 
(* C_HAS_DATA_COUNTS_RDCH = "0" *) (* C_HAS_DATA_COUNTS_AXIS = "1" *) (* C_HAS_PROG_FLAGS_WACH = "0" *) 
(* C_HAS_PROG_FLAGS_WDCH = "0" *) (* C_HAS_PROG_FLAGS_WRCH = "0" *) (* C_HAS_PROG_FLAGS_RACH = "0" *) 
(* C_HAS_PROG_FLAGS_RDCH = "0" *) (* C_HAS_PROG_FLAGS_AXIS = "0" *) (* C_PROG_FULL_TYPE_WACH = "0" *) 
(* C_PROG_FULL_TYPE_WDCH = "0" *) (* C_PROG_FULL_TYPE_WRCH = "0" *) (* C_PROG_FULL_TYPE_RACH = "0" *) 
(* C_PROG_FULL_TYPE_RDCH = "0" *) (* C_PROG_FULL_TYPE_AXIS = "0" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "15" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "15" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "15" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "15" *) (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
(* C_PROG_EMPTY_TYPE_WDCH = "0" *) (* C_PROG_EMPTY_TYPE_WRCH = "0" *) (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
(* C_PROG_EMPTY_TYPE_RDCH = "0" *) (* C_PROG_EMPTY_TYPE_AXIS = "0" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "14" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "14" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "14" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "14" *) (* C_REG_SLICE_MODE_WACH = "0" *) 
(* C_REG_SLICE_MODE_WDCH = "0" *) (* C_REG_SLICE_MODE_WRCH = "0" *) (* C_REG_SLICE_MODE_RACH = "0" *) 
(* C_REG_SLICE_MODE_RDCH = "0" *) (* C_REG_SLICE_MODE_AXIS = "0" *) (* ORIG_REF_NAME = "fifo_generator_v12_0" *) 
module axis_data_fifo_0_fifo_generator_v12_0
   (backup,
    backup_marker,
    clk,
    rst,
    srst,
    wr_clk,
    wr_rst,
    rd_clk,
    rd_rst,
    din,
    wr_en,
    rd_en,
    prog_empty_thresh,
    prog_empty_thresh_assert,
    prog_empty_thresh_negate,
    prog_full_thresh,
    prog_full_thresh_assert,
    prog_full_thresh_negate,
    int_clk,
    injectdbiterr,
    injectsbiterr,
    sleep,
    dout,
    full,
    almost_full,
    wr_ack,
    overflow,
    empty,
    almost_empty,
    valid,
    underflow,
    data_count,
    rd_data_count,
    wr_data_count,
    prog_full,
    prog_empty,
    sbiterr,
    dbiterr,
    wr_rst_busy,
    rd_rst_busy,
    m_aclk,
    s_aclk,
    s_aresetn,
    m_aclk_en,
    s_aclk_en,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awregion,
    s_axi_awuser,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wuser,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_buser,
    s_axi_bvalid,
    s_axi_bready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awregion,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wuser,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_buser,
    m_axi_bvalid,
    m_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arregion,
    s_axi_aruser,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_ruser,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arregion,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_rready,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    axi_aw_injectsbiterr,
    axi_aw_injectdbiterr,
    axi_aw_prog_full_thresh,
    axi_aw_prog_empty_thresh,
    axi_aw_data_count,
    axi_aw_wr_data_count,
    axi_aw_rd_data_count,
    axi_aw_sbiterr,
    axi_aw_dbiterr,
    axi_aw_overflow,
    axi_aw_underflow,
    axi_aw_prog_full,
    axi_aw_prog_empty,
    axi_w_injectsbiterr,
    axi_w_injectdbiterr,
    axi_w_prog_full_thresh,
    axi_w_prog_empty_thresh,
    axi_w_data_count,
    axi_w_wr_data_count,
    axi_w_rd_data_count,
    axi_w_sbiterr,
    axi_w_dbiterr,
    axi_w_overflow,
    axi_w_underflow,
    axi_w_prog_full,
    axi_w_prog_empty,
    axi_b_injectsbiterr,
    axi_b_injectdbiterr,
    axi_b_prog_full_thresh,
    axi_b_prog_empty_thresh,
    axi_b_data_count,
    axi_b_wr_data_count,
    axi_b_rd_data_count,
    axi_b_sbiterr,
    axi_b_dbiterr,
    axi_b_overflow,
    axi_b_underflow,
    axi_b_prog_full,
    axi_b_prog_empty,
    axi_ar_injectsbiterr,
    axi_ar_injectdbiterr,
    axi_ar_prog_full_thresh,
    axi_ar_prog_empty_thresh,
    axi_ar_data_count,
    axi_ar_wr_data_count,
    axi_ar_rd_data_count,
    axi_ar_sbiterr,
    axi_ar_dbiterr,
    axi_ar_overflow,
    axi_ar_underflow,
    axi_ar_prog_full,
    axi_ar_prog_empty,
    axi_r_injectsbiterr,
    axi_r_injectdbiterr,
    axi_r_prog_full_thresh,
    axi_r_prog_empty_thresh,
    axi_r_data_count,
    axi_r_wr_data_count,
    axi_r_rd_data_count,
    axi_r_sbiterr,
    axi_r_dbiterr,
    axi_r_overflow,
    axi_r_underflow,
    axi_r_prog_full,
    axi_r_prog_empty,
    axis_injectsbiterr,
    axis_injectdbiterr,
    axis_prog_full_thresh,
    axis_prog_empty_thresh,
    axis_data_count,
    axis_wr_data_count,
    axis_rd_data_count,
    axis_sbiterr,
    axis_dbiterr,
    axis_overflow,
    axis_underflow,
    axis_prog_full,
    axis_prog_empty);
  input backup;
  input backup_marker;
  input clk;
  input rst;
  input srst;
  input wr_clk;
  input wr_rst;
  input rd_clk;
  input rd_rst;
  input [17:0]din;
  input wr_en;
  input rd_en;
  input [9:0]prog_empty_thresh;
  input [9:0]prog_empty_thresh_assert;
  input [9:0]prog_empty_thresh_negate;
  input [9:0]prog_full_thresh;
  input [9:0]prog_full_thresh_assert;
  input [9:0]prog_full_thresh_negate;
  input int_clk;
  input injectdbiterr;
  input injectsbiterr;
  input sleep;
  output [17:0]dout;
  output full;
  output almost_full;
  output wr_ack;
  output overflow;
  output empty;
  output almost_empty;
  output valid;
  output underflow;
  output [9:0]data_count;
  output [9:0]rd_data_count;
  output [9:0]wr_data_count;
  output prog_full;
  output prog_empty;
  output sbiterr;
  output dbiterr;
  output wr_rst_busy;
  output rd_rst_busy;
  input m_aclk;
  input s_aclk;
  input s_aresetn;
  input m_aclk_en;
  input s_aclk_en;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [1:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input [3:0]s_axi_awregion;
  input [0:0]s_axi_awuser;
  input s_axi_awvalid;
  output s_axi_awready;
  input [3:0]s_axi_wid;
  input [63:0]s_axi_wdata;
  input [7:0]s_axi_wstrb;
  input s_axi_wlast;
  input [0:0]s_axi_wuser;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_buser;
  output s_axi_bvalid;
  input s_axi_bready;
  output [3:0]m_axi_awid;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [1:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output [3:0]m_axi_awregion;
  output [0:0]m_axi_awuser;
  output m_axi_awvalid;
  input m_axi_awready;
  output [3:0]m_axi_wid;
  output [63:0]m_axi_wdata;
  output [7:0]m_axi_wstrb;
  output m_axi_wlast;
  output [0:0]m_axi_wuser;
  output m_axi_wvalid;
  input m_axi_wready;
  input [3:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input [0:0]m_axi_buser;
  input m_axi_bvalid;
  output m_axi_bready;
  input [3:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [1:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input [3:0]s_axi_arregion;
  input [0:0]s_axi_aruser;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [63:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output [0:0]s_axi_ruser;
  output s_axi_rvalid;
  input s_axi_rready;
  output [3:0]m_axi_arid;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [1:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output [3:0]m_axi_arregion;
  output [0:0]m_axi_aruser;
  output m_axi_arvalid;
  input m_axi_arready;
  input [3:0]m_axi_rid;
  input [63:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input [0:0]m_axi_ruser;
  input m_axi_rvalid;
  output m_axi_rready;
  input s_axis_tvalid;
  output s_axis_tready;
  input [79:0]s_axis_tdata;
  input [9:0]s_axis_tstrb;
  input [9:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [0:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [79:0]m_axis_tdata;
  output [9:0]m_axis_tstrb;
  output [9:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [0:0]m_axis_tuser;
  input axi_aw_injectsbiterr;
  input axi_aw_injectdbiterr;
  input [3:0]axi_aw_prog_full_thresh;
  input [3:0]axi_aw_prog_empty_thresh;
  output [4:0]axi_aw_data_count;
  output [4:0]axi_aw_wr_data_count;
  output [4:0]axi_aw_rd_data_count;
  output axi_aw_sbiterr;
  output axi_aw_dbiterr;
  output axi_aw_overflow;
  output axi_aw_underflow;
  output axi_aw_prog_full;
  output axi_aw_prog_empty;
  input axi_w_injectsbiterr;
  input axi_w_injectdbiterr;
  input [9:0]axi_w_prog_full_thresh;
  input [9:0]axi_w_prog_empty_thresh;
  output [10:0]axi_w_data_count;
  output [10:0]axi_w_wr_data_count;
  output [10:0]axi_w_rd_data_count;
  output axi_w_sbiterr;
  output axi_w_dbiterr;
  output axi_w_overflow;
  output axi_w_underflow;
  output axi_w_prog_full;
  output axi_w_prog_empty;
  input axi_b_injectsbiterr;
  input axi_b_injectdbiterr;
  input [3:0]axi_b_prog_full_thresh;
  input [3:0]axi_b_prog_empty_thresh;
  output [4:0]axi_b_data_count;
  output [4:0]axi_b_wr_data_count;
  output [4:0]axi_b_rd_data_count;
  output axi_b_sbiterr;
  output axi_b_dbiterr;
  output axi_b_overflow;
  output axi_b_underflow;
  output axi_b_prog_full;
  output axi_b_prog_empty;
  input axi_ar_injectsbiterr;
  input axi_ar_injectdbiterr;
  input [3:0]axi_ar_prog_full_thresh;
  input [3:0]axi_ar_prog_empty_thresh;
  output [4:0]axi_ar_data_count;
  output [4:0]axi_ar_wr_data_count;
  output [4:0]axi_ar_rd_data_count;
  output axi_ar_sbiterr;
  output axi_ar_dbiterr;
  output axi_ar_overflow;
  output axi_ar_underflow;
  output axi_ar_prog_full;
  output axi_ar_prog_empty;
  input axi_r_injectsbiterr;
  input axi_r_injectdbiterr;
  input [9:0]axi_r_prog_full_thresh;
  input [9:0]axi_r_prog_empty_thresh;
  output [10:0]axi_r_data_count;
  output [10:0]axi_r_wr_data_count;
  output [10:0]axi_r_rd_data_count;
  output axi_r_sbiterr;
  output axi_r_dbiterr;
  output axi_r_overflow;
  output axi_r_underflow;
  output axi_r_prog_full;
  output axi_r_prog_empty;
  input axis_injectsbiterr;
  input axis_injectdbiterr;
  input [3:0]axis_prog_full_thresh;
  input [3:0]axis_prog_empty_thresh;
  output [4:0]axis_data_count;
  output [4:0]axis_wr_data_count;
  output [4:0]axis_rd_data_count;
  output axis_sbiterr;
  output axis_dbiterr;
  output axis_overflow;
  output axis_underflow;
  output axis_prog_full;
  output axis_prog_empty;

  wire \<const0> ;
  wire \<const1> ;
  wire axi_ar_injectdbiterr;
  wire axi_ar_injectsbiterr;
  wire [3:0]axi_ar_prog_empty_thresh;
  wire [3:0]axi_ar_prog_full_thresh;
  wire axi_aw_injectdbiterr;
  wire axi_aw_injectsbiterr;
  wire [3:0]axi_aw_prog_empty_thresh;
  wire [3:0]axi_aw_prog_full_thresh;
  wire axi_b_injectdbiterr;
  wire axi_b_injectsbiterr;
  wire [3:0]axi_b_prog_empty_thresh;
  wire [3:0]axi_b_prog_full_thresh;
  wire axi_r_injectdbiterr;
  wire axi_r_injectsbiterr;
  wire [9:0]axi_r_prog_empty_thresh;
  wire [9:0]axi_r_prog_full_thresh;
  wire axi_w_injectdbiterr;
  wire axi_w_injectsbiterr;
  wire [9:0]axi_w_prog_empty_thresh;
  wire [9:0]axi_w_prog_full_thresh;
  wire [4:0]axis_data_count;
  wire axis_injectdbiterr;
  wire axis_injectsbiterr;
  wire [3:0]axis_prog_empty_thresh;
  wire [3:0]axis_prog_full_thresh;
  wire backup;
  wire backup_marker;
  wire clk;
  wire [17:0]din;
  wire injectdbiterr;
  wire injectsbiterr;
  wire int_clk;
  wire m_aclk;
  wire m_aclk_en;
  wire m_axi_arready;
  wire m_axi_awready;
  wire [3:0]m_axi_bid;
  wire [1:0]m_axi_bresp;
  wire [0:0]m_axi_buser;
  wire m_axi_bvalid;
  wire [63:0]m_axi_rdata;
  wire [3:0]m_axi_rid;
  wire m_axi_rlast;
  wire [1:0]m_axi_rresp;
  wire [0:0]m_axi_ruser;
  wire m_axi_rvalid;
  wire m_axi_wready;
  wire [79:0]m_axis_tdata;
  wire [9:0]m_axis_tkeep;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [9:0]prog_empty_thresh;
  wire [9:0]prog_empty_thresh_assert;
  wire [9:0]prog_empty_thresh_negate;
  wire [9:0]prog_full_thresh;
  wire [9:0]prog_full_thresh_assert;
  wire [9:0]prog_full_thresh_negate;
  wire rd_clk;
  wire rd_en;
  wire rd_rst;
  wire rst;
  wire s_aclk;
  wire s_aclk_en;
  wire s_aresetn;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire [3:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire [1:0]s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire [3:0]s_axi_arregion;
  wire [2:0]s_axi_arsize;
  wire [0:0]s_axi_aruser;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [3:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire [1:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire [3:0]s_axi_awregion;
  wire [2:0]s_axi_awsize;
  wire [0:0]s_axi_awuser;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_rready;
  wire [63:0]s_axi_wdata;
  wire [3:0]s_axi_wid;
  wire s_axi_wlast;
  wire [7:0]s_axi_wstrb;
  wire [0:0]s_axi_wuser;
  wire s_axi_wvalid;
  wire [79:0]s_axis_tdata;
  wire [0:0]s_axis_tdest;
  wire [0:0]s_axis_tid;
  wire [9:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire [9:0]s_axis_tstrb;
  wire [0:0]s_axis_tuser;
  wire s_axis_tvalid;
  wire srst;
  wire wr_clk;
  wire wr_en;
  wire wr_rst;

  assign almost_empty = \<const1> ;
  assign almost_full = \<const0> ;
  assign axi_ar_data_count[4] = \<const0> ;
  assign axi_ar_data_count[3] = \<const0> ;
  assign axi_ar_data_count[2] = \<const0> ;
  assign axi_ar_data_count[1] = \<const0> ;
  assign axi_ar_data_count[0] = \<const0> ;
  assign axi_ar_dbiterr = \<const0> ;
  assign axi_ar_overflow = \<const0> ;
  assign axi_ar_prog_empty = \<const1> ;
  assign axi_ar_prog_full = \<const0> ;
  assign axi_ar_rd_data_count[4] = \<const0> ;
  assign axi_ar_rd_data_count[3] = \<const0> ;
  assign axi_ar_rd_data_count[2] = \<const0> ;
  assign axi_ar_rd_data_count[1] = \<const0> ;
  assign axi_ar_rd_data_count[0] = \<const0> ;
  assign axi_ar_sbiterr = \<const0> ;
  assign axi_ar_underflow = \<const0> ;
  assign axi_ar_wr_data_count[4] = \<const0> ;
  assign axi_ar_wr_data_count[3] = \<const0> ;
  assign axi_ar_wr_data_count[2] = \<const0> ;
  assign axi_ar_wr_data_count[1] = \<const0> ;
  assign axi_ar_wr_data_count[0] = \<const0> ;
  assign axi_aw_data_count[4] = \<const0> ;
  assign axi_aw_data_count[3] = \<const0> ;
  assign axi_aw_data_count[2] = \<const0> ;
  assign axi_aw_data_count[1] = \<const0> ;
  assign axi_aw_data_count[0] = \<const0> ;
  assign axi_aw_dbiterr = \<const0> ;
  assign axi_aw_overflow = \<const0> ;
  assign axi_aw_prog_empty = \<const1> ;
  assign axi_aw_prog_full = \<const0> ;
  assign axi_aw_rd_data_count[4] = \<const0> ;
  assign axi_aw_rd_data_count[3] = \<const0> ;
  assign axi_aw_rd_data_count[2] = \<const0> ;
  assign axi_aw_rd_data_count[1] = \<const0> ;
  assign axi_aw_rd_data_count[0] = \<const0> ;
  assign axi_aw_sbiterr = \<const0> ;
  assign axi_aw_underflow = \<const0> ;
  assign axi_aw_wr_data_count[4] = \<const0> ;
  assign axi_aw_wr_data_count[3] = \<const0> ;
  assign axi_aw_wr_data_count[2] = \<const0> ;
  assign axi_aw_wr_data_count[1] = \<const0> ;
  assign axi_aw_wr_data_count[0] = \<const0> ;
  assign axi_b_data_count[4] = \<const0> ;
  assign axi_b_data_count[3] = \<const0> ;
  assign axi_b_data_count[2] = \<const0> ;
  assign axi_b_data_count[1] = \<const0> ;
  assign axi_b_data_count[0] = \<const0> ;
  assign axi_b_dbiterr = \<const0> ;
  assign axi_b_overflow = \<const0> ;
  assign axi_b_prog_empty = \<const1> ;
  assign axi_b_prog_full = \<const0> ;
  assign axi_b_rd_data_count[4] = \<const0> ;
  assign axi_b_rd_data_count[3] = \<const0> ;
  assign axi_b_rd_data_count[2] = \<const0> ;
  assign axi_b_rd_data_count[1] = \<const0> ;
  assign axi_b_rd_data_count[0] = \<const0> ;
  assign axi_b_sbiterr = \<const0> ;
  assign axi_b_underflow = \<const0> ;
  assign axi_b_wr_data_count[4] = \<const0> ;
  assign axi_b_wr_data_count[3] = \<const0> ;
  assign axi_b_wr_data_count[2] = \<const0> ;
  assign axi_b_wr_data_count[1] = \<const0> ;
  assign axi_b_wr_data_count[0] = \<const0> ;
  assign axi_r_data_count[10] = \<const0> ;
  assign axi_r_data_count[9] = \<const0> ;
  assign axi_r_data_count[8] = \<const0> ;
  assign axi_r_data_count[7] = \<const0> ;
  assign axi_r_data_count[6] = \<const0> ;
  assign axi_r_data_count[5] = \<const0> ;
  assign axi_r_data_count[4] = \<const0> ;
  assign axi_r_data_count[3] = \<const0> ;
  assign axi_r_data_count[2] = \<const0> ;
  assign axi_r_data_count[1] = \<const0> ;
  assign axi_r_data_count[0] = \<const0> ;
  assign axi_r_dbiterr = \<const0> ;
  assign axi_r_overflow = \<const0> ;
  assign axi_r_prog_empty = \<const1> ;
  assign axi_r_prog_full = \<const0> ;
  assign axi_r_rd_data_count[10] = \<const0> ;
  assign axi_r_rd_data_count[9] = \<const0> ;
  assign axi_r_rd_data_count[8] = \<const0> ;
  assign axi_r_rd_data_count[7] = \<const0> ;
  assign axi_r_rd_data_count[6] = \<const0> ;
  assign axi_r_rd_data_count[5] = \<const0> ;
  assign axi_r_rd_data_count[4] = \<const0> ;
  assign axi_r_rd_data_count[3] = \<const0> ;
  assign axi_r_rd_data_count[2] = \<const0> ;
  assign axi_r_rd_data_count[1] = \<const0> ;
  assign axi_r_rd_data_count[0] = \<const0> ;
  assign axi_r_sbiterr = \<const0> ;
  assign axi_r_underflow = \<const0> ;
  assign axi_r_wr_data_count[10] = \<const0> ;
  assign axi_r_wr_data_count[9] = \<const0> ;
  assign axi_r_wr_data_count[8] = \<const0> ;
  assign axi_r_wr_data_count[7] = \<const0> ;
  assign axi_r_wr_data_count[6] = \<const0> ;
  assign axi_r_wr_data_count[5] = \<const0> ;
  assign axi_r_wr_data_count[4] = \<const0> ;
  assign axi_r_wr_data_count[3] = \<const0> ;
  assign axi_r_wr_data_count[2] = \<const0> ;
  assign axi_r_wr_data_count[1] = \<const0> ;
  assign axi_r_wr_data_count[0] = \<const0> ;
  assign axi_w_data_count[10] = \<const0> ;
  assign axi_w_data_count[9] = \<const0> ;
  assign axi_w_data_count[8] = \<const0> ;
  assign axi_w_data_count[7] = \<const0> ;
  assign axi_w_data_count[6] = \<const0> ;
  assign axi_w_data_count[5] = \<const0> ;
  assign axi_w_data_count[4] = \<const0> ;
  assign axi_w_data_count[3] = \<const0> ;
  assign axi_w_data_count[2] = \<const0> ;
  assign axi_w_data_count[1] = \<const0> ;
  assign axi_w_data_count[0] = \<const0> ;
  assign axi_w_dbiterr = \<const0> ;
  assign axi_w_overflow = \<const0> ;
  assign axi_w_prog_empty = \<const1> ;
  assign axi_w_prog_full = \<const0> ;
  assign axi_w_rd_data_count[10] = \<const0> ;
  assign axi_w_rd_data_count[9] = \<const0> ;
  assign axi_w_rd_data_count[8] = \<const0> ;
  assign axi_w_rd_data_count[7] = \<const0> ;
  assign axi_w_rd_data_count[6] = \<const0> ;
  assign axi_w_rd_data_count[5] = \<const0> ;
  assign axi_w_rd_data_count[4] = \<const0> ;
  assign axi_w_rd_data_count[3] = \<const0> ;
  assign axi_w_rd_data_count[2] = \<const0> ;
  assign axi_w_rd_data_count[1] = \<const0> ;
  assign axi_w_rd_data_count[0] = \<const0> ;
  assign axi_w_sbiterr = \<const0> ;
  assign axi_w_underflow = \<const0> ;
  assign axi_w_wr_data_count[10] = \<const0> ;
  assign axi_w_wr_data_count[9] = \<const0> ;
  assign axi_w_wr_data_count[8] = \<const0> ;
  assign axi_w_wr_data_count[7] = \<const0> ;
  assign axi_w_wr_data_count[6] = \<const0> ;
  assign axi_w_wr_data_count[5] = \<const0> ;
  assign axi_w_wr_data_count[4] = \<const0> ;
  assign axi_w_wr_data_count[3] = \<const0> ;
  assign axi_w_wr_data_count[2] = \<const0> ;
  assign axi_w_wr_data_count[1] = \<const0> ;
  assign axi_w_wr_data_count[0] = \<const0> ;
  assign axis_dbiterr = \<const0> ;
  assign axis_overflow = \<const0> ;
  assign axis_prog_empty = \<const0> ;
  assign axis_prog_full = \<const0> ;
  assign axis_rd_data_count[4] = \<const0> ;
  assign axis_rd_data_count[3] = \<const0> ;
  assign axis_rd_data_count[2] = \<const0> ;
  assign axis_rd_data_count[1] = \<const0> ;
  assign axis_rd_data_count[0] = \<const0> ;
  assign axis_sbiterr = \<const0> ;
  assign axis_underflow = \<const0> ;
  assign axis_wr_data_count[4] = \<const0> ;
  assign axis_wr_data_count[3] = \<const0> ;
  assign axis_wr_data_count[2] = \<const0> ;
  assign axis_wr_data_count[1] = \<const0> ;
  assign axis_wr_data_count[0] = \<const0> ;
  assign data_count[9] = \<const0> ;
  assign data_count[8] = \<const0> ;
  assign data_count[7] = \<const0> ;
  assign data_count[6] = \<const0> ;
  assign data_count[5] = \<const0> ;
  assign data_count[4] = \<const0> ;
  assign data_count[3] = \<const0> ;
  assign data_count[2] = \<const0> ;
  assign data_count[1] = \<const0> ;
  assign data_count[0] = \<const0> ;
  assign dbiterr = \<const0> ;
  assign dout[17] = \<const0> ;
  assign dout[16] = \<const0> ;
  assign dout[15] = \<const0> ;
  assign dout[14] = \<const0> ;
  assign dout[13] = \<const0> ;
  assign dout[12] = \<const0> ;
  assign dout[11] = \<const0> ;
  assign dout[10] = \<const0> ;
  assign dout[9] = \<const0> ;
  assign dout[8] = \<const0> ;
  assign dout[7] = \<const0> ;
  assign dout[6] = \<const0> ;
  assign dout[5] = \<const0> ;
  assign dout[4] = \<const0> ;
  assign dout[3] = \<const0> ;
  assign dout[2] = \<const0> ;
  assign dout[1] = \<const0> ;
  assign dout[0] = \<const0> ;
  assign empty = \<const1> ;
  assign full = \<const0> ;
  assign m_axi_araddr[31] = \<const0> ;
  assign m_axi_araddr[30] = \<const0> ;
  assign m_axi_araddr[29] = \<const0> ;
  assign m_axi_araddr[28] = \<const0> ;
  assign m_axi_araddr[27] = \<const0> ;
  assign m_axi_araddr[26] = \<const0> ;
  assign m_axi_araddr[25] = \<const0> ;
  assign m_axi_araddr[24] = \<const0> ;
  assign m_axi_araddr[23] = \<const0> ;
  assign m_axi_araddr[22] = \<const0> ;
  assign m_axi_araddr[21] = \<const0> ;
  assign m_axi_araddr[20] = \<const0> ;
  assign m_axi_araddr[19] = \<const0> ;
  assign m_axi_araddr[18] = \<const0> ;
  assign m_axi_araddr[17] = \<const0> ;
  assign m_axi_araddr[16] = \<const0> ;
  assign m_axi_araddr[15] = \<const0> ;
  assign m_axi_araddr[14] = \<const0> ;
  assign m_axi_araddr[13] = \<const0> ;
  assign m_axi_araddr[12] = \<const0> ;
  assign m_axi_araddr[11] = \<const0> ;
  assign m_axi_araddr[10] = \<const0> ;
  assign m_axi_araddr[9] = \<const0> ;
  assign m_axi_araddr[8] = \<const0> ;
  assign m_axi_araddr[7] = \<const0> ;
  assign m_axi_araddr[6] = \<const0> ;
  assign m_axi_araddr[5] = \<const0> ;
  assign m_axi_araddr[4] = \<const0> ;
  assign m_axi_araddr[3] = \<const0> ;
  assign m_axi_araddr[2] = \<const0> ;
  assign m_axi_araddr[1] = \<const0> ;
  assign m_axi_araddr[0] = \<const0> ;
  assign m_axi_arburst[1] = \<const0> ;
  assign m_axi_arburst[0] = \<const0> ;
  assign m_axi_arcache[3] = \<const0> ;
  assign m_axi_arcache[2] = \<const0> ;
  assign m_axi_arcache[1] = \<const0> ;
  assign m_axi_arcache[0] = \<const0> ;
  assign m_axi_arid[3] = \<const0> ;
  assign m_axi_arid[2] = \<const0> ;
  assign m_axi_arid[1] = \<const0> ;
  assign m_axi_arid[0] = \<const0> ;
  assign m_axi_arlen[7] = \<const0> ;
  assign m_axi_arlen[6] = \<const0> ;
  assign m_axi_arlen[5] = \<const0> ;
  assign m_axi_arlen[4] = \<const0> ;
  assign m_axi_arlen[3] = \<const0> ;
  assign m_axi_arlen[2] = \<const0> ;
  assign m_axi_arlen[1] = \<const0> ;
  assign m_axi_arlen[0] = \<const0> ;
  assign m_axi_arlock[1] = \<const0> ;
  assign m_axi_arlock[0] = \<const0> ;
  assign m_axi_arprot[2] = \<const0> ;
  assign m_axi_arprot[1] = \<const0> ;
  assign m_axi_arprot[0] = \<const0> ;
  assign m_axi_arqos[3] = \<const0> ;
  assign m_axi_arqos[2] = \<const0> ;
  assign m_axi_arqos[1] = \<const0> ;
  assign m_axi_arqos[0] = \<const0> ;
  assign m_axi_arregion[3] = \<const0> ;
  assign m_axi_arregion[2] = \<const0> ;
  assign m_axi_arregion[1] = \<const0> ;
  assign m_axi_arregion[0] = \<const0> ;
  assign m_axi_arsize[2] = \<const0> ;
  assign m_axi_arsize[1] = \<const0> ;
  assign m_axi_arsize[0] = \<const0> ;
  assign m_axi_aruser[0] = \<const0> ;
  assign m_axi_arvalid = \<const0> ;
  assign m_axi_awaddr[31] = \<const0> ;
  assign m_axi_awaddr[30] = \<const0> ;
  assign m_axi_awaddr[29] = \<const0> ;
  assign m_axi_awaddr[28] = \<const0> ;
  assign m_axi_awaddr[27] = \<const0> ;
  assign m_axi_awaddr[26] = \<const0> ;
  assign m_axi_awaddr[25] = \<const0> ;
  assign m_axi_awaddr[24] = \<const0> ;
  assign m_axi_awaddr[23] = \<const0> ;
  assign m_axi_awaddr[22] = \<const0> ;
  assign m_axi_awaddr[21] = \<const0> ;
  assign m_axi_awaddr[20] = \<const0> ;
  assign m_axi_awaddr[19] = \<const0> ;
  assign m_axi_awaddr[18] = \<const0> ;
  assign m_axi_awaddr[17] = \<const0> ;
  assign m_axi_awaddr[16] = \<const0> ;
  assign m_axi_awaddr[15] = \<const0> ;
  assign m_axi_awaddr[14] = \<const0> ;
  assign m_axi_awaddr[13] = \<const0> ;
  assign m_axi_awaddr[12] = \<const0> ;
  assign m_axi_awaddr[11] = \<const0> ;
  assign m_axi_awaddr[10] = \<const0> ;
  assign m_axi_awaddr[9] = \<const0> ;
  assign m_axi_awaddr[8] = \<const0> ;
  assign m_axi_awaddr[7] = \<const0> ;
  assign m_axi_awaddr[6] = \<const0> ;
  assign m_axi_awaddr[5] = \<const0> ;
  assign m_axi_awaddr[4] = \<const0> ;
  assign m_axi_awaddr[3] = \<const0> ;
  assign m_axi_awaddr[2] = \<const0> ;
  assign m_axi_awaddr[1] = \<const0> ;
  assign m_axi_awaddr[0] = \<const0> ;
  assign m_axi_awburst[1] = \<const0> ;
  assign m_axi_awburst[0] = \<const0> ;
  assign m_axi_awcache[3] = \<const0> ;
  assign m_axi_awcache[2] = \<const0> ;
  assign m_axi_awcache[1] = \<const0> ;
  assign m_axi_awcache[0] = \<const0> ;
  assign m_axi_awid[3] = \<const0> ;
  assign m_axi_awid[2] = \<const0> ;
  assign m_axi_awid[1] = \<const0> ;
  assign m_axi_awid[0] = \<const0> ;
  assign m_axi_awlen[7] = \<const0> ;
  assign m_axi_awlen[6] = \<const0> ;
  assign m_axi_awlen[5] = \<const0> ;
  assign m_axi_awlen[4] = \<const0> ;
  assign m_axi_awlen[3] = \<const0> ;
  assign m_axi_awlen[2] = \<const0> ;
  assign m_axi_awlen[1] = \<const0> ;
  assign m_axi_awlen[0] = \<const0> ;
  assign m_axi_awlock[1] = \<const0> ;
  assign m_axi_awlock[0] = \<const0> ;
  assign m_axi_awprot[2] = \<const0> ;
  assign m_axi_awprot[1] = \<const0> ;
  assign m_axi_awprot[0] = \<const0> ;
  assign m_axi_awqos[3] = \<const0> ;
  assign m_axi_awqos[2] = \<const0> ;
  assign m_axi_awqos[1] = \<const0> ;
  assign m_axi_awqos[0] = \<const0> ;
  assign m_axi_awregion[3] = \<const0> ;
  assign m_axi_awregion[2] = \<const0> ;
  assign m_axi_awregion[1] = \<const0> ;
  assign m_axi_awregion[0] = \<const0> ;
  assign m_axi_awsize[2] = \<const0> ;
  assign m_axi_awsize[1] = \<const0> ;
  assign m_axi_awsize[0] = \<const0> ;
  assign m_axi_awuser[0] = \<const0> ;
  assign m_axi_awvalid = \<const0> ;
  assign m_axi_bready = \<const0> ;
  assign m_axi_rready = \<const0> ;
  assign m_axi_wdata[63] = \<const0> ;
  assign m_axi_wdata[62] = \<const0> ;
  assign m_axi_wdata[61] = \<const0> ;
  assign m_axi_wdata[60] = \<const0> ;
  assign m_axi_wdata[59] = \<const0> ;
  assign m_axi_wdata[58] = \<const0> ;
  assign m_axi_wdata[57] = \<const0> ;
  assign m_axi_wdata[56] = \<const0> ;
  assign m_axi_wdata[55] = \<const0> ;
  assign m_axi_wdata[54] = \<const0> ;
  assign m_axi_wdata[53] = \<const0> ;
  assign m_axi_wdata[52] = \<const0> ;
  assign m_axi_wdata[51] = \<const0> ;
  assign m_axi_wdata[50] = \<const0> ;
  assign m_axi_wdata[49] = \<const0> ;
  assign m_axi_wdata[48] = \<const0> ;
  assign m_axi_wdata[47] = \<const0> ;
  assign m_axi_wdata[46] = \<const0> ;
  assign m_axi_wdata[45] = \<const0> ;
  assign m_axi_wdata[44] = \<const0> ;
  assign m_axi_wdata[43] = \<const0> ;
  assign m_axi_wdata[42] = \<const0> ;
  assign m_axi_wdata[41] = \<const0> ;
  assign m_axi_wdata[40] = \<const0> ;
  assign m_axi_wdata[39] = \<const0> ;
  assign m_axi_wdata[38] = \<const0> ;
  assign m_axi_wdata[37] = \<const0> ;
  assign m_axi_wdata[36] = \<const0> ;
  assign m_axi_wdata[35] = \<const0> ;
  assign m_axi_wdata[34] = \<const0> ;
  assign m_axi_wdata[33] = \<const0> ;
  assign m_axi_wdata[32] = \<const0> ;
  assign m_axi_wdata[31] = \<const0> ;
  assign m_axi_wdata[30] = \<const0> ;
  assign m_axi_wdata[29] = \<const0> ;
  assign m_axi_wdata[28] = \<const0> ;
  assign m_axi_wdata[27] = \<const0> ;
  assign m_axi_wdata[26] = \<const0> ;
  assign m_axi_wdata[25] = \<const0> ;
  assign m_axi_wdata[24] = \<const0> ;
  assign m_axi_wdata[23] = \<const0> ;
  assign m_axi_wdata[22] = \<const0> ;
  assign m_axi_wdata[21] = \<const0> ;
  assign m_axi_wdata[20] = \<const0> ;
  assign m_axi_wdata[19] = \<const0> ;
  assign m_axi_wdata[18] = \<const0> ;
  assign m_axi_wdata[17] = \<const0> ;
  assign m_axi_wdata[16] = \<const0> ;
  assign m_axi_wdata[15] = \<const0> ;
  assign m_axi_wdata[14] = \<const0> ;
  assign m_axi_wdata[13] = \<const0> ;
  assign m_axi_wdata[12] = \<const0> ;
  assign m_axi_wdata[11] = \<const0> ;
  assign m_axi_wdata[10] = \<const0> ;
  assign m_axi_wdata[9] = \<const0> ;
  assign m_axi_wdata[8] = \<const0> ;
  assign m_axi_wdata[7] = \<const0> ;
  assign m_axi_wdata[6] = \<const0> ;
  assign m_axi_wdata[5] = \<const0> ;
  assign m_axi_wdata[4] = \<const0> ;
  assign m_axi_wdata[3] = \<const0> ;
  assign m_axi_wdata[2] = \<const0> ;
  assign m_axi_wdata[1] = \<const0> ;
  assign m_axi_wdata[0] = \<const0> ;
  assign m_axi_wid[3] = \<const0> ;
  assign m_axi_wid[2] = \<const0> ;
  assign m_axi_wid[1] = \<const0> ;
  assign m_axi_wid[0] = \<const0> ;
  assign m_axi_wlast = \<const0> ;
  assign m_axi_wstrb[7] = \<const0> ;
  assign m_axi_wstrb[6] = \<const0> ;
  assign m_axi_wstrb[5] = \<const0> ;
  assign m_axi_wstrb[4] = \<const0> ;
  assign m_axi_wstrb[3] = \<const0> ;
  assign m_axi_wstrb[2] = \<const0> ;
  assign m_axi_wstrb[1] = \<const0> ;
  assign m_axi_wstrb[0] = \<const0> ;
  assign m_axi_wuser[0] = \<const0> ;
  assign m_axi_wvalid = \<const0> ;
  assign m_axis_tdest[0] = \<const0> ;
  assign m_axis_tid[0] = \<const0> ;
  assign m_axis_tstrb[9] = \<const0> ;
  assign m_axis_tstrb[8] = \<const0> ;
  assign m_axis_tstrb[7] = \<const0> ;
  assign m_axis_tstrb[6] = \<const0> ;
  assign m_axis_tstrb[5] = \<const0> ;
  assign m_axis_tstrb[4] = \<const0> ;
  assign m_axis_tstrb[3] = \<const0> ;
  assign m_axis_tstrb[2] = \<const0> ;
  assign m_axis_tstrb[1] = \<const0> ;
  assign m_axis_tstrb[0] = \<const0> ;
  assign m_axis_tuser[0] = \<const0> ;
  assign overflow = \<const0> ;
  assign prog_empty = \<const1> ;
  assign prog_full = \<const0> ;
  assign rd_data_count[9] = \<const0> ;
  assign rd_data_count[8] = \<const0> ;
  assign rd_data_count[7] = \<const0> ;
  assign rd_data_count[6] = \<const0> ;
  assign rd_data_count[5] = \<const0> ;
  assign rd_data_count[4] = \<const0> ;
  assign rd_data_count[3] = \<const0> ;
  assign rd_data_count[2] = \<const0> ;
  assign rd_data_count[1] = \<const0> ;
  assign rd_data_count[0] = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[3] = \<const0> ;
  assign s_axi_bid[2] = \<const0> ;
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_buser[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_rdata[63] = \<const0> ;
  assign s_axi_rdata[62] = \<const0> ;
  assign s_axi_rdata[61] = \<const0> ;
  assign s_axi_rdata[60] = \<const0> ;
  assign s_axi_rdata[59] = \<const0> ;
  assign s_axi_rdata[58] = \<const0> ;
  assign s_axi_rdata[57] = \<const0> ;
  assign s_axi_rdata[56] = \<const0> ;
  assign s_axi_rdata[55] = \<const0> ;
  assign s_axi_rdata[54] = \<const0> ;
  assign s_axi_rdata[53] = \<const0> ;
  assign s_axi_rdata[52] = \<const0> ;
  assign s_axi_rdata[51] = \<const0> ;
  assign s_axi_rdata[50] = \<const0> ;
  assign s_axi_rdata[49] = \<const0> ;
  assign s_axi_rdata[48] = \<const0> ;
  assign s_axi_rdata[47] = \<const0> ;
  assign s_axi_rdata[46] = \<const0> ;
  assign s_axi_rdata[45] = \<const0> ;
  assign s_axi_rdata[44] = \<const0> ;
  assign s_axi_rdata[43] = \<const0> ;
  assign s_axi_rdata[42] = \<const0> ;
  assign s_axi_rdata[41] = \<const0> ;
  assign s_axi_rdata[40] = \<const0> ;
  assign s_axi_rdata[39] = \<const0> ;
  assign s_axi_rdata[38] = \<const0> ;
  assign s_axi_rdata[37] = \<const0> ;
  assign s_axi_rdata[36] = \<const0> ;
  assign s_axi_rdata[35] = \<const0> ;
  assign s_axi_rdata[34] = \<const0> ;
  assign s_axi_rdata[33] = \<const0> ;
  assign s_axi_rdata[32] = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[3] = \<const0> ;
  assign s_axi_rid[2] = \<const0> ;
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_ruser[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign sbiterr = \<const0> ;
  assign underflow = \<const0> ;
  assign valid = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_data_count[9] = \<const0> ;
  assign wr_data_count[8] = \<const0> ;
  assign wr_data_count[7] = \<const0> ;
  assign wr_data_count[6] = \<const0> ;
  assign wr_data_count[5] = \<const0> ;
  assign wr_data_count[4] = \<const0> ;
  assign wr_data_count[3] = \<const0> ;
  assign wr_data_count[2] = \<const0> ;
  assign wr_data_count[1] = \<const0> ;
  assign wr_data_count[0] = \<const0> ;
  assign wr_rst_busy = \<const0> ;
GND GND
       (.G(\<const0> ));
VCC VCC
       (.P(\<const1> ));
axis_data_fifo_0_fifo_generator_v12_0_synth inst_fifo_gen
       (.DI({s_axis_tdata,s_axis_tkeep,s_axis_tlast}),
        .Q({m_axis_tdata,m_axis_tkeep,m_axis_tlast}),
        .axis_data_count(axis_data_count),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .s_aclk(s_aclk),
        .s_aresetn(s_aresetn),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "fifo_generator_v12_0_synth" *) 
module axis_data_fifo_0_fifo_generator_v12_0_synth
   (axis_data_count,
    Q,
    s_axis_tready,
    m_axis_tvalid,
    m_axis_tready,
    s_aclk,
    DI,
    s_axis_tvalid,
    s_aresetn);
  output [4:0]axis_data_count;
  output [90:0]Q;
  output s_axis_tready;
  output m_axis_tvalid;
  input m_axis_tready;
  input s_aclk;
  input [90:0]DI;
  input s_axis_tvalid;
  input s_aresetn;

  wire [90:0]DI;
  wire [90:0]Q;
  wire [4:0]axis_data_count;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire s_aclk;
  wire s_aresetn;
  wire s_axis_tready;
  wire s_axis_tvalid;

axis_data_fifo_0_fifo_generator_top \gaxis_fifo.gaxisf.axisf 
       (.DI(DI),
        .Q(Q),
        .axis_data_count(axis_data_count),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .s_aclk(s_aclk),
        .s_aresetn(s_aresetn),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "memory" *) 
module axis_data_fifo_0_memory
   (Q,
    I1,
    s_aclk,
    E,
    DI,
    O4,
    O3,
    I2);
  output [90:0]Q;
  input I1;
  input s_aclk;
  input [0:0]E;
  input [90:0]DI;
  input [3:0]O4;
  input [3:0]O3;
  input [0:0]I2;

  wire [90:0]DI;
  wire [0:0]E;
  wire I1;
  wire [0:0]I2;
  wire [3:0]O3;
  wire [3:0]O4;
  wire [90:0]Q;
  wire [90:0]p_0_out;
  wire s_aclk;

axis_data_fifo_0_dmem \gdm.dm 
       (.D(p_0_out),
        .DI(DI),
        .E(E),
        .I1(I1),
        .O3(O3),
        .O4(O4),
        .s_aclk(s_aclk));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[0] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[0]),
        .Q(Q[0]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[10] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[10]),
        .Q(Q[10]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[11] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[11]),
        .Q(Q[11]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[12] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[12]),
        .Q(Q[12]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[13] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[13]),
        .Q(Q[13]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[14] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[14]),
        .Q(Q[14]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[15] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[15]),
        .Q(Q[15]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[16] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[16]),
        .Q(Q[16]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[17] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[17]),
        .Q(Q[17]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[18] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[18]),
        .Q(Q[18]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[19] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[19]),
        .Q(Q[19]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[1] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[1]),
        .Q(Q[1]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[20] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[20]),
        .Q(Q[20]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[21] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[21]),
        .Q(Q[21]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[22] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[22]),
        .Q(Q[22]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[23] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[23]),
        .Q(Q[23]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[24] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[24]),
        .Q(Q[24]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[25] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[25]),
        .Q(Q[25]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[26] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[26]),
        .Q(Q[26]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[27] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[27]),
        .Q(Q[27]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[28] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[28]),
        .Q(Q[28]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[29] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[29]),
        .Q(Q[29]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[2] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[2]),
        .Q(Q[2]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[30] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[30]),
        .Q(Q[30]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[31] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[31]),
        .Q(Q[31]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[32] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[32]),
        .Q(Q[32]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[33] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[33]),
        .Q(Q[33]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[34] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[34]),
        .Q(Q[34]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[35] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[35]),
        .Q(Q[35]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[36] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[36]),
        .Q(Q[36]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[37] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[37]),
        .Q(Q[37]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[38] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[38]),
        .Q(Q[38]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[39] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[39]),
        .Q(Q[39]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[3] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[3]),
        .Q(Q[3]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[40] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[40]),
        .Q(Q[40]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[41] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[41]),
        .Q(Q[41]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[42] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[42]),
        .Q(Q[42]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[43] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[43]),
        .Q(Q[43]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[44] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[44]),
        .Q(Q[44]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[45] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[45]),
        .Q(Q[45]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[46] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[46]),
        .Q(Q[46]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[47] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[47]),
        .Q(Q[47]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[48] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[48]),
        .Q(Q[48]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[49] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[49]),
        .Q(Q[49]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[4] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[4]),
        .Q(Q[4]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[50] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[50]),
        .Q(Q[50]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[51] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[51]),
        .Q(Q[51]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[52] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[52]),
        .Q(Q[52]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[53] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[53]),
        .Q(Q[53]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[54] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[54]),
        .Q(Q[54]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[55] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[55]),
        .Q(Q[55]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[56] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[56]),
        .Q(Q[56]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[57] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[57]),
        .Q(Q[57]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[58] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[58]),
        .Q(Q[58]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[59] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[59]),
        .Q(Q[59]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[5] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[5]),
        .Q(Q[5]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[60] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[60]),
        .Q(Q[60]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[61] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[61]),
        .Q(Q[61]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[62] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[62]),
        .Q(Q[62]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[63] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[63]),
        .Q(Q[63]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[64] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[64]),
        .Q(Q[64]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[65] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[65]),
        .Q(Q[65]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[66] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[66]),
        .Q(Q[66]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[67] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[67]),
        .Q(Q[67]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[68] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[68]),
        .Q(Q[68]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[69] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[69]),
        .Q(Q[69]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[6] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[6]),
        .Q(Q[6]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[70] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[70]),
        .Q(Q[70]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[71] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[71]),
        .Q(Q[71]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[72] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[72]),
        .Q(Q[72]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[73] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[73]),
        .Q(Q[73]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[74] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[74]),
        .Q(Q[74]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[75] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[75]),
        .Q(Q[75]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[76] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[76]),
        .Q(Q[76]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[77] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[77]),
        .Q(Q[77]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[78] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[78]),
        .Q(Q[78]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[79] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[79]),
        .Q(Q[79]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[7] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[7]),
        .Q(Q[7]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[80] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[80]),
        .Q(Q[80]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[81] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[81]),
        .Q(Q[81]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[82] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[82]),
        .Q(Q[82]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[83] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[83]),
        .Q(Q[83]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[84] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[84]),
        .Q(Q[84]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[85] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[85]),
        .Q(Q[85]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[86] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[86]),
        .Q(Q[86]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[87] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[87]),
        .Q(Q[87]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[88] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[88]),
        .Q(Q[88]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[89] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[89]),
        .Q(Q[89]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[8] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[8]),
        .Q(Q[8]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[90] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[90]),
        .Q(Q[90]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[9] 
       (.C(s_aclk),
        .CE(I2),
        .D(p_0_out[9]),
        .Q(Q[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "rd_bin_cntr" *) 
module axis_data_fifo_0_rd_bin_cntr
   (O1,
    ram_full_comb,
    Q,
    O4,
    p_18_out,
    p_1_out,
    s_axis_tvalid,
    rst_full_gen_i,
    O2,
    I1,
    I2,
    I3,
    I4,
    E,
    s_aclk,
    I5);
  output O1;
  output ram_full_comb;
  output [1:0]Q;
  output [3:0]O4;
  input p_18_out;
  input p_1_out;
  input s_axis_tvalid;
  input rst_full_gen_i;
  input O2;
  input I1;
  input I2;
  input [3:0]I3;
  input [2:0]I4;
  input [0:0]E;
  input s_aclk;
  input [0:0]I5;

  wire [0:0]E;
  wire I1;
  wire I2;
  wire [3:0]I3;
  wire [2:0]I4;
  wire [0:0]I5;
  wire O1;
  wire O2;
  wire [3:0]O4;
  wire [1:0]Q;
  wire n_0_ram_empty_fb_i_i_2;
  wire n_0_ram_empty_fb_i_i_3;
  wire n_0_ram_empty_fb_i_i_5;
  wire n_0_ram_full_fb_i_i_3;
  wire p_18_out;
  wire p_1_out;
  wire [3:0]plusOp;
  wire ram_full_comb;
  wire [3:2]rd_pntr_plus1;
  wire rst_full_gen_i;
  wire s_aclk;
  wire s_axis_tvalid;

LUT1 #(
    .INIT(2'h1)) 
     \gc0.count[0]_i_1 
       (.I0(Q[0]),
        .O(plusOp[0]));
LUT2 #(
    .INIT(4'h6)) 
     \gc0.count[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(plusOp[1]));
(* SOFT_HLUTNM = "soft_lutpair5" *) 
   LUT3 #(
    .INIT(8'h6A)) 
     \gc0.count[2]_i_1 
       (.I0(rd_pntr_plus1[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(plusOp[2]));
(* SOFT_HLUTNM = "soft_lutpair5" *) 
   LUT4 #(
    .INIT(16'h6AAA)) 
     \gc0.count[3]_i_1 
       (.I0(rd_pntr_plus1[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(rd_pntr_plus1[2]),
        .O(plusOp[3]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[0] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I5),
        .D(Q[0]),
        .Q(O4[0]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[1] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I5),
        .D(Q[1]),
        .Q(O4[1]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[2] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I5),
        .D(rd_pntr_plus1[2]),
        .Q(O4[2]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[3] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I5),
        .D(rd_pntr_plus1[3]),
        .Q(O4[3]));
FDPE #(
    .INIT(1'b1)) 
     \gc0.count_reg[0] 
       (.C(s_aclk),
        .CE(E),
        .D(plusOp[0]),
        .PRE(I5),
        .Q(Q[0]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[1] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I5),
        .D(plusOp[1]),
        .Q(Q[1]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[2] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I5),
        .D(plusOp[2]),
        .Q(rd_pntr_plus1[2]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[3] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I5),
        .D(plusOp[3]),
        .Q(rd_pntr_plus1[3]));
LUT5 #(
    .INIT(32'hFAC0FAFA)) 
     ram_empty_fb_i_i_1
       (.I0(n_0_ram_empty_fb_i_i_2),
        .I1(n_0_ram_empty_fb_i_i_3),
        .I2(p_18_out),
        .I3(p_1_out),
        .I4(s_axis_tvalid),
        .O(O1));
LUT6 #(
    .INIT(64'h2002000000002002)) 
     ram_empty_fb_i_i_2
       (.I0(O2),
        .I1(I2),
        .I2(I3[3]),
        .I3(rd_pntr_plus1[3]),
        .I4(I3[2]),
        .I5(rd_pntr_plus1[2]),
        .O(n_0_ram_empty_fb_i_i_2));
LUT5 #(
    .INIT(32'h6FF6FFFF)) 
     ram_empty_fb_i_i_3
       (.I0(I3[3]),
        .I1(O4[3]),
        .I2(I3[0]),
        .I3(O4[0]),
        .I4(n_0_ram_empty_fb_i_i_5),
        .O(n_0_ram_empty_fb_i_i_3));
LUT4 #(
    .INIT(16'h9009)) 
     ram_empty_fb_i_i_5
       (.I0(O4[1]),
        .I1(I3[1]),
        .I2(O4[2]),
        .I3(I3[2]),
        .O(n_0_ram_empty_fb_i_i_5));
LUT6 #(
    .INIT(64'h080C08FF080C080C)) 
     ram_full_fb_i_i_1
       (.I0(n_0_ram_empty_fb_i_i_3),
        .I1(p_1_out),
        .I2(rst_full_gen_i),
        .I3(O2),
        .I4(I1),
        .I5(n_0_ram_full_fb_i_i_3),
        .O(ram_full_comb));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     ram_full_fb_i_i_3
       (.I0(O4[0]),
        .I1(I4[0]),
        .I2(I4[1]),
        .I3(O4[1]),
        .I4(I4[2]),
        .I5(O4[3]),
        .O(n_0_ram_full_fb_i_i_3));
endmodule

(* ORIG_REF_NAME = "rd_fwft" *) 
module axis_data_fifo_0_rd_fwft
   (valid_fwft,
    O2,
    E,
    O1,
    m_axis_tvalid,
    s_aclk,
    Q,
    m_axis_tready,
    p_18_out);
  output valid_fwft;
  output O2;
  output [0:0]E;
  output [0:0]O1;
  output m_axis_tvalid;
  input s_aclk;
  input [1:0]Q;
  input m_axis_tready;
  input p_18_out;

  wire [0:0]E;
  wire [0:0]O1;
  wire O2;
  wire [1:0]Q;
  wire [0:0]curr_fwft_state;
  wire empty_fwft_fb;
  wire empty_fwft_i;
  wire empty_fwft_i0;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire \n_0_gpregsm1.curr_fwft_state[0]_i_1 ;
  wire \n_0_gpregsm1.curr_fwft_state[1]_i_1 ;
  wire \n_0_gpregsm1.curr_fwft_state_reg[1] ;
  wire p_18_out;
  wire s_aclk;
  wire valid_fwft;

(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT4 #(
    .INIT(16'hCF08)) 
     empty_fwft_fb_i_1
       (.I0(m_axis_tready),
        .I1(curr_fwft_state),
        .I2(\n_0_gpregsm1.curr_fwft_state_reg[1] ),
        .I3(empty_fwft_fb),
        .O(empty_fwft_i0));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     empty_fwft_fb_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(empty_fwft_i0),
        .PRE(Q[1]),
        .Q(empty_fwft_fb));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     empty_fwft_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(empty_fwft_i0),
        .PRE(Q[1]),
        .Q(empty_fwft_i));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT4 #(
    .INIT(16'h5515)) 
     \gc0.count_d1[3]_i_1 
       (.I0(p_18_out),
        .I1(\n_0_gpregsm1.curr_fwft_state_reg[1] ),
        .I2(curr_fwft_state),
        .I3(m_axis_tready),
        .O(E));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT4 #(
    .INIT(16'h4044)) 
     \goreg_dm.dout_i[90]_i_1 
       (.I0(Q[0]),
        .I1(\n_0_gpregsm1.curr_fwft_state_reg[1] ),
        .I2(m_axis_tready),
        .I3(curr_fwft_state),
        .O(O1));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT4 #(
    .INIT(16'h5515)) 
     \gpr1.dout_i[90]_i_1 
       (.I0(p_18_out),
        .I1(\n_0_gpregsm1.curr_fwft_state_reg[1] ),
        .I2(curr_fwft_state),
        .I3(m_axis_tready),
        .O(O2));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT3 #(
    .INIT(8'hBA)) 
     \gpregsm1.curr_fwft_state[0]_i_1 
       (.I0(\n_0_gpregsm1.curr_fwft_state_reg[1] ),
        .I1(m_axis_tready),
        .I2(curr_fwft_state),
        .O(\n_0_gpregsm1.curr_fwft_state[0]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT4 #(
    .INIT(16'h08FF)) 
     \gpregsm1.curr_fwft_state[1]_i_1 
       (.I0(\n_0_gpregsm1.curr_fwft_state_reg[1] ),
        .I1(curr_fwft_state),
        .I2(m_axis_tready),
        .I3(p_18_out),
        .O(\n_0_gpregsm1.curr_fwft_state[1]_i_1 ));
(* equivalent_register_removal = "no" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gpregsm1.curr_fwft_state_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(Q[1]),
        .D(\n_0_gpregsm1.curr_fwft_state[0]_i_1 ),
        .Q(curr_fwft_state));
(* equivalent_register_removal = "no" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gpregsm1.curr_fwft_state_reg[1] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(Q[1]),
        .D(\n_0_gpregsm1.curr_fwft_state[1]_i_1 ),
        .Q(\n_0_gpregsm1.curr_fwft_state_reg[1] ));
(* equivalent_register_removal = "no" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gpregsm1.user_valid_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(Q[1]),
        .D(\n_0_gpregsm1.curr_fwft_state[0]_i_1 ),
        .Q(valid_fwft));
LUT1 #(
    .INIT(2'h1)) 
     m_axis_tvalid_INST_0
       (.I0(empty_fwft_i),
        .O(m_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "rd_logic" *) 
module axis_data_fifo_0_rd_logic
   (valid_fwft,
    O1,
    O2,
    ram_full_comb,
    O3,
    E,
    O4,
    m_axis_tvalid,
    s_aclk,
    Q,
    m_axis_tready,
    p_1_out,
    s_axis_tvalid,
    rst_full_gen_i,
    I1,
    I2,
    I3,
    I4,
    I5);
  output valid_fwft;
  output [4:0]O1;
  output O2;
  output ram_full_comb;
  output [1:0]O3;
  output [0:0]E;
  output [3:0]O4;
  output m_axis_tvalid;
  input s_aclk;
  input [1:0]Q;
  input m_axis_tready;
  input p_1_out;
  input s_axis_tvalid;
  input rst_full_gen_i;
  input I1;
  input I2;
  input [3:0]I3;
  input [2:0]I4;
  input [0:0]I5;

  wire [0:0]E;
  wire I1;
  wire I2;
  wire [3:0]I3;
  wire [2:0]I4;
  wire [0:0]I5;
  wire [4:0]O1;
  wire O2;
  wire [1:0]O3;
  wire [3:0]O4;
  wire [1:0]Q;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire n_0_rpntr;
  wire \n_2_gr1.rfwft ;
  wire p_18_out;
  wire p_1_out;
  wire ram_full_comb;
  wire rst_full_gen_i;
  wire s_aclk;
  wire s_axis_tvalid;
  wire valid_fwft;

axis_data_fifo_0_dc_ss_fwft \gr1.gdcf.dc 
       (.I1(valid_fwft),
        .I2(Q[1]),
        .I5(I5),
        .Q(O1),
        .m_axis_tready(m_axis_tready),
        .s_aclk(s_aclk));
axis_data_fifo_0_rd_fwft \gr1.rfwft 
       (.E(\n_2_gr1.rfwft ),
        .O1(E),
        .O2(O2),
        .Q(Q),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .p_18_out(p_18_out),
        .s_aclk(s_aclk),
        .valid_fwft(valid_fwft));
axis_data_fifo_0_rd_status_flags_ss \grss.rsts 
       (.I1(n_0_rpntr),
        .Q(Q[1]),
        .p_18_out(p_18_out),
        .s_aclk(s_aclk));
axis_data_fifo_0_rd_bin_cntr rpntr
       (.E(\n_2_gr1.rfwft ),
        .I1(I1),
        .I2(I2),
        .I3(I3),
        .I4(I4),
        .I5(Q[1]),
        .O1(n_0_rpntr),
        .O2(O2),
        .O4(O4),
        .Q(O3),
        .p_18_out(p_18_out),
        .p_1_out(p_1_out),
        .ram_full_comb(ram_full_comb),
        .rst_full_gen_i(rst_full_gen_i),
        .s_aclk(s_aclk),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "rd_status_flags_ss" *) 
module axis_data_fifo_0_rd_status_flags_ss
   (p_18_out,
    I1,
    s_aclk,
    Q);
  output p_18_out;
  input I1;
  input s_aclk;
  input [0:0]Q;

  wire I1;
  wire [0:0]Q;
  wire p_18_out;
  wire s_aclk;

(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     ram_empty_fb_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(I1),
        .PRE(Q),
        .Q(p_18_out));
endmodule

(* ORIG_REF_NAME = "reset_blk_ramfifo" *) 
module axis_data_fifo_0_reset_blk_ramfifo
   (rst_d2,
    rst_full_gen_i,
    AR,
    Q,
    s_aclk,
    s_aresetn);
  output rst_d2;
  output rst_full_gen_i;
  output [0:0]AR;
  output [1:0]Q;
  input s_aclk;
  input s_aresetn;

  wire [0:0]AR;
  wire [1:0]Q;
  wire inverted_reset;
  wire \n_0_ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1 ;
  wire \n_0_ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1 ;
  wire rd_rst_asreg;
  wire rd_rst_asreg_d1;
  wire rd_rst_asreg_d2;
  wire rst_d1;
  wire rst_d2;
  wire rst_d3;
  wire rst_full_gen_i;
  wire s_aclk;
  wire s_aresetn;
  wire wr_rst_asreg;
  wire wr_rst_asreg_d1;
  wire wr_rst_asreg_d2;

FDCE #(
    .INIT(1'b0)) 
     \grstd1.grst_full.grst_f.RST_FULL_GEN_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(inverted_reset),
        .D(rst_d3),
        .Q(rst_full_gen_i));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDPE #(
    .INIT(1'b1)) 
     \grstd1.grst_full.grst_f.rst_d1_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(inverted_reset),
        .Q(rst_d1));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDPE #(
    .INIT(1'b1)) 
     \grstd1.grst_full.grst_f.rst_d2_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(rst_d1),
        .PRE(inverted_reset),
        .Q(rst_d2));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDPE #(
    .INIT(1'b1)) 
     \grstd1.grst_full.grst_f.rst_d3_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(rst_d2),
        .PRE(inverted_reset),
        .Q(rst_d3));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDRE #(
    .INIT(1'b0)) 
     \ngwrdrst.grst.g7serrst.rd_rst_asreg_d1_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(rd_rst_asreg),
        .Q(rd_rst_asreg_d1),
        .R(1'b0));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDRE #(
    .INIT(1'b0)) 
     \ngwrdrst.grst.g7serrst.rd_rst_asreg_d2_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(rd_rst_asreg_d1),
        .Q(rd_rst_asreg_d2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDPE \ngwrdrst.grst.g7serrst.rd_rst_asreg_reg 
       (.C(s_aclk),
        .CE(rd_rst_asreg_d1),
        .D(1'b0),
        .PRE(inverted_reset),
        .Q(rd_rst_asreg));
LUT2 #(
    .INIT(4'h2)) 
     \ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1 
       (.I0(rd_rst_asreg),
        .I1(rd_rst_asreg_d2),
        .O(\n_0_ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1 ));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\n_0_ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1 ),
        .Q(Q[0]));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\n_0_ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1 ),
        .Q(Q[1]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDRE #(
    .INIT(1'b0)) 
     \ngwrdrst.grst.g7serrst.wr_rst_asreg_d1_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(wr_rst_asreg),
        .Q(wr_rst_asreg_d1),
        .R(1'b0));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDRE #(
    .INIT(1'b0)) 
     \ngwrdrst.grst.g7serrst.wr_rst_asreg_d2_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(wr_rst_asreg_d1),
        .Q(wr_rst_asreg_d2),
        .R(1'b0));
LUT1 #(
    .INIT(2'h1)) 
     \ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1 
       (.I0(s_aresetn),
        .O(inverted_reset));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDPE \ngwrdrst.grst.g7serrst.wr_rst_asreg_reg 
       (.C(s_aclk),
        .CE(wr_rst_asreg_d1),
        .D(1'b0),
        .PRE(inverted_reset),
        .Q(wr_rst_asreg));
LUT2 #(
    .INIT(4'h2)) 
     \ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1 
       (.I0(wr_rst_asreg),
        .I1(wr_rst_asreg_d2),
        .O(\n_0_ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1 ));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\n_0_ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1 ),
        .Q(AR));
endmodule

(* ORIG_REF_NAME = "updn_cntr" *) 
module axis_data_fifo_0_updn_cntr
   (Q,
    m_axis_tready,
    I1,
    I5,
    s_aclk,
    I2);
  output [4:0]Q;
  input m_axis_tready;
  input I1;
  input [0:0]I5;
  input s_aclk;
  input [0:0]I2;

  wire I1;
  wire [0:0]I2;
  wire [0:0]I5;
  wire [4:0]Q;
  wire m_axis_tready;
  wire \n_0_count[0]_i_1 ;
  wire \n_0_count[1]_i_1 ;
  wire \n_0_count[2]_i_1 ;
  wire \n_0_count[3]_i_1 ;
  wire \n_0_count[4]_i_2 ;
  wire \n_0_count[4]_i_3 ;
  wire s_aclk;

(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT1 #(
    .INIT(2'h1)) 
     \count[0]_i_1 
       (.I0(Q[0]),
        .O(\n_0_count[0]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT4 #(
    .INIT(16'h956A)) 
     \count[1]_i_1 
       (.I0(Q[0]),
        .I1(m_axis_tready),
        .I2(I1),
        .I3(Q[1]),
        .O(\n_0_count[1]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT5 #(
    .INIT(32'hE7771888)) 
     \count[2]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(m_axis_tready),
        .I3(I1),
        .I4(Q[2]),
        .O(\n_0_count[2]_i_1 ));
LUT6 #(
    .INIT(64'hF7770888EFFF1000)) 
     \count[3]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(I1),
        .I3(m_axis_tready),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\n_0_count[3]_i_1 ));
LUT4 #(
    .INIT(16'hA96A)) 
     \count[4]_i_2 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(\n_0_count[4]_i_3 ),
        .O(\n_0_count[4]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT5 #(
    .INIT(32'h80F0F0F8)) 
     \count[4]_i_3 
       (.I0(m_axis_tready),
        .I1(I1),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(\n_0_count[4]_i_3 ));
FDCE #(
    .INIT(1'b0)) 
     \count_reg[0] 
       (.C(s_aclk),
        .CE(I5),
        .CLR(I2),
        .D(\n_0_count[0]_i_1 ),
        .Q(Q[0]));
FDCE #(
    .INIT(1'b0)) 
     \count_reg[1] 
       (.C(s_aclk),
        .CE(I5),
        .CLR(I2),
        .D(\n_0_count[1]_i_1 ),
        .Q(Q[1]));
FDCE #(
    .INIT(1'b0)) 
     \count_reg[2] 
       (.C(s_aclk),
        .CE(I5),
        .CLR(I2),
        .D(\n_0_count[2]_i_1 ),
        .Q(Q[2]));
FDCE #(
    .INIT(1'b0)) 
     \count_reg[3] 
       (.C(s_aclk),
        .CE(I5),
        .CLR(I2),
        .D(\n_0_count[3]_i_1 ),
        .Q(Q[3]));
FDCE #(
    .INIT(1'b0)) 
     \count_reg[4] 
       (.C(s_aclk),
        .CE(I5),
        .CLR(I2),
        .D(\n_0_count[4]_i_2 ),
        .Q(Q[4]));
endmodule

(* ORIG_REF_NAME = "wr_bin_cntr" *) 
module axis_data_fifo_0_wr_bin_cntr
   (Q,
    O2,
    O3,
    I1,
    E,
    s_aclk,
    AR);
  output [3:0]Q;
  output O2;
  output [3:0]O3;
  input [1:0]I1;
  input [0:0]E;
  input s_aclk;
  input [0:0]AR;

  wire [0:0]AR;
  wire [0:0]E;
  wire [1:0]I1;
  wire O2;
  wire [3:0]O3;
  wire [3:0]Q;
  wire [3:0]plusOp__0;
  wire s_aclk;

LUT1 #(
    .INIT(2'h1)) 
     \gcc0.gc0.count[0]_i_1 
       (.I0(Q[0]),
        .O(plusOp__0[0]));
LUT2 #(
    .INIT(4'h6)) 
     \gcc0.gc0.count[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(plusOp__0[1]));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT3 #(
    .INIT(8'h6A)) 
     \gcc0.gc0.count[2]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(plusOp__0[2]));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT4 #(
    .INIT(16'h6AAA)) 
     \gcc0.gc0.count[3]_i_1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(plusOp__0[3]));
FDCE #(
    .INIT(1'b0)) 
     \gcc0.gc0.count_d1_reg[0] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(Q[0]),
        .Q(O3[0]));
FDCE #(
    .INIT(1'b0)) 
     \gcc0.gc0.count_d1_reg[1] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(Q[1]),
        .Q(O3[1]));
FDCE #(
    .INIT(1'b0)) 
     \gcc0.gc0.count_d1_reg[2] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(Q[2]),
        .Q(O3[2]));
FDCE #(
    .INIT(1'b0)) 
     \gcc0.gc0.count_d1_reg[3] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(Q[3]),
        .Q(O3[3]));
FDPE #(
    .INIT(1'b1)) 
     \gcc0.gc0.count_reg[0] 
       (.C(s_aclk),
        .CE(E),
        .D(plusOp__0[0]),
        .PRE(AR),
        .Q(Q[0]));
FDCE #(
    .INIT(1'b0)) 
     \gcc0.gc0.count_reg[1] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__0[1]),
        .Q(Q[1]));
FDCE #(
    .INIT(1'b0)) 
     \gcc0.gc0.count_reg[2] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__0[2]),
        .Q(Q[2]));
FDCE #(
    .INIT(1'b0)) 
     \gcc0.gc0.count_reg[3] 
       (.C(s_aclk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__0[3]),
        .Q(Q[3]));
LUT4 #(
    .INIT(16'h6FF6)) 
     ram_empty_fb_i_i_4
       (.I0(O3[1]),
        .I1(I1[1]),
        .I2(O3[0]),
        .I3(I1[0]),
        .O(O2));
endmodule

(* ORIG_REF_NAME = "wr_logic" *) 
module axis_data_fifo_0_wr_logic
   (p_1_out,
    I5,
    O1,
    Q,
    E,
    O2,
    O3,
    s_axis_tready,
    ram_full_comb,
    s_aclk,
    rst_d2,
    s_axis_tvalid,
    valid_fwft,
    m_axis_tready,
    O4,
    I1,
    AR);
  output p_1_out;
  output [0:0]I5;
  output O1;
  output [2:0]Q;
  output [0:0]E;
  output O2;
  output [3:0]O3;
  output s_axis_tready;
  input ram_full_comb;
  input s_aclk;
  input rst_d2;
  input s_axis_tvalid;
  input valid_fwft;
  input m_axis_tready;
  input [0:0]O4;
  input [1:0]I1;
  input [0:0]AR;

  wire [0:0]AR;
  wire [0:0]E;
  wire [1:0]I1;
  wire [0:0]I5;
  wire O1;
  wire O2;
  wire [3:0]O3;
  wire [0:0]O4;
  wire [2:0]Q;
  wire m_axis_tready;
  wire p_1_out;
  wire [2:2]p_9_out;
  wire ram_full_comb;
  wire rst_d2;
  wire s_aclk;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire valid_fwft;

axis_data_fifo_0_wr_status_flags_ss \gwss.wsts 
       (.E(E),
        .I5(I5),
        .O1(p_1_out),
        .O2(O1),
        .O4(O4),
        .Q(p_9_out),
        .m_axis_tready(m_axis_tready),
        .ram_full_comb(ram_full_comb),
        .rst_d2(rst_d2),
        .s_aclk(s_aclk),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid),
        .valid_fwft(valid_fwft));
axis_data_fifo_0_wr_bin_cntr wpntr
       (.AR(AR),
        .E(E),
        .I1(I1),
        .O2(O2),
        .O3(O3),
        .Q({Q[2],p_9_out,Q[1:0]}),
        .s_aclk(s_aclk));
endmodule

(* ORIG_REF_NAME = "wr_status_flags_ss" *) 
module axis_data_fifo_0_wr_status_flags_ss
   (O1,
    I5,
    O2,
    E,
    s_axis_tready,
    ram_full_comb,
    s_aclk,
    rst_d2,
    s_axis_tvalid,
    valid_fwft,
    m_axis_tready,
    O4,
    Q);
  output O1;
  output [0:0]I5;
  output O2;
  output [0:0]E;
  output s_axis_tready;
  input ram_full_comb;
  input s_aclk;
  input rst_d2;
  input s_axis_tvalid;
  input valid_fwft;
  input m_axis_tready;
  input [0:0]O4;
  input [0:0]Q;

  wire [0:0]E;
  wire [0:0]I5;
  wire O1;
  wire O2;
  wire [0:0]O4;
  wire [0:0]Q;
  wire m_axis_tready;
  wire ram_full_comb;
  wire ram_full_i;
  wire rst_d2;
  wire s_aclk;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire valid_fwft;

LUT4 #(
    .INIT(16'hD222)) 
     \count[4]_i_1 
       (.I0(s_axis_tvalid),
        .I1(O1),
        .I2(valid_fwft),
        .I3(m_axis_tready),
        .O(I5));
LUT2 #(
    .INIT(4'h2)) 
     \gcc0.gc0.count_d1[3]_i_1 
       (.I0(s_axis_tvalid),
        .I1(O1),
        .O(E));
LUT4 #(
    .INIT(16'hDFFD)) 
     ram_full_fb_i_i_2
       (.I0(s_axis_tvalid),
        .I1(O1),
        .I2(O4),
        .I3(Q),
        .O(O2));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     ram_full_fb_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(ram_full_comb),
        .PRE(rst_d2),
        .Q(O1));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     ram_full_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(ram_full_comb),
        .PRE(rst_d2),
        .Q(ram_full_i));
LUT1 #(
    .INIT(2'h1)) 
     s_axis_tready_INST_0
       (.I0(ram_full_i),
        .O(s_axis_tready));
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
