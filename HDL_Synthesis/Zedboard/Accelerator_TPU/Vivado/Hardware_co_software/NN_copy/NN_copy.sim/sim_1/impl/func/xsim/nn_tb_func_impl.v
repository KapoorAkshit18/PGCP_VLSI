// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Fri Jul 24 15:29:52 2026
// Host        : Envy running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/projects/neural_network/neural_network.sim/sim_1/impl/func/xsim/nn_tb_func_impl.v
// Design      : axis_nn
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ECO_CHECKSUM = "4cd97fb5" *) (* POWER_OPT_BRAM_CDC = "0" *) (* POWER_OPT_BRAM_SR_ADDR = "0" *) 
(* POWER_OPT_LOOPED_NET_PERCENTAGE = "0" *) 
(* NotValidForBitStream *)
module axis_nn
   (aclk,
    aresetn,
    s_axis_tready,
    s_axis_tvalid,
    s_axis_tlast,
    m_axis_tready,
    m_axis_tvalid,
    m_axis_tlast);
  input aclk;
  input aresetn;
  output s_axis_tready;
  input s_axis_tvalid;
  input s_axis_tlast;
  input m_axis_tready;
  output m_axis_tvalid;
  output m_axis_tlast;

  wire \FSM_onehot_state_reg[5]_i_2_n_0 ;
  wire \FSM_onehot_state_reg[5]_i_3_n_0 ;
  wire \FSM_onehot_state_reg[5]_i_4_n_0 ;
  wire \FSM_onehot_state_reg[5]_i_6_n_0 ;
  wire \FSM_onehot_state_reg[5]_i_7_n_0 ;
  wire \FSM_onehot_state_reg_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_reg_n_0_[4] ;
  wire a_enb;
  wire aclk;
  wire aclk_IBUF;
  wire aclk_IBUF_BUFG;
  wire aresetn;
  wire aresetn_IBUF;
  wire cnt_word_next;
  wire [2:0]cnt_word_reg;
  wire \cnt_word_reg[0]_i_1_n_0 ;
  wire \cnt_word_reg[1]_i_1_n_0 ;
  wire \cnt_word_reg[2]_i_2_n_0 ;
  wire k_ena;
  wire m_axis_tlast;
  wire m_axis_tlast_OBUF;
  wire m_axis_tready;
  wire m_axis_tready_IBUF;
  wire m_axis_tvalid;
  wire m_axis_tvalid_OBUF;
  wire [8:0]mm2s_data_count;
  wire mm2s_ready_reg;
  wire mm2s_ready_reg_i_1_n_0;
  wire nn_0_n_0;
  wire nn_0_n_65;
  wire nn_start;
  wire s2mm_last_reg;
  wire s2mm_ready;
  wire s2mm_valid_reg;
  wire s_axis_tready;
  wire s_axis_tready_OBUF;
  wire s_axis_tvalid;
  wire s_axis_tvalid_IBUF;
  wire wb_ena;
  wire [4:0]NLW_nn_0_Q_UNCONNECTED;
  wire [63:0]NLW_nn_0_doutb_UNCONNECTED;
  wire [2:0]\NLW_nn_0_gen_wr_b.gen_byte_narrow.for_mem_cols[1].mem_reg_1_UNCONNECTED ;
  wire [63:0]NLW_nn_0_m_axis_tdata_UNCONNECTED;
  wire NLW_xpm_fifo_axis_0_almost_empty_axis_UNCONNECTED;
  wire NLW_xpm_fifo_axis_0_almost_full_axis_UNCONNECTED;
  wire NLW_xpm_fifo_axis_0_dbiterr_axis_UNCONNECTED;
  wire NLW_xpm_fifo_axis_0_injectdbiterr_axis_UNCONNECTED;
  wire NLW_xpm_fifo_axis_0_injectsbiterr_axis_UNCONNECTED;
  wire NLW_xpm_fifo_axis_0_m_aclk_UNCONNECTED;
  wire NLW_xpm_fifo_axis_0_m_axis_tlast_UNCONNECTED;
  wire NLW_xpm_fifo_axis_0_m_axis_tvalid_UNCONNECTED;
  wire NLW_xpm_fifo_axis_0_prog_empty_axis_UNCONNECTED;
  wire NLW_xpm_fifo_axis_0_prog_full_axis_UNCONNECTED;
  wire NLW_xpm_fifo_axis_0_s_axis_tlast_UNCONNECTED;
  wire NLW_xpm_fifo_axis_0_sbiterr_axis_UNCONNECTED;
  wire [63:0]NLW_xpm_fifo_axis_0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_xpm_fifo_axis_0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_xpm_fifo_axis_0_m_axis_tid_UNCONNECTED;
  wire [7:0]NLW_xpm_fifo_axis_0_m_axis_tkeep_UNCONNECTED;
  wire [7:0]NLW_xpm_fifo_axis_0_m_axis_tstrb_UNCONNECTED;
  wire [0:0]NLW_xpm_fifo_axis_0_m_axis_tuser_UNCONNECTED;
  wire [0:0]NLW_xpm_fifo_axis_0_rd_data_count_axis_UNCONNECTED;
  wire [63:0]NLW_xpm_fifo_axis_0_s_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_xpm_fifo_axis_0_s_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_xpm_fifo_axis_0_s_axis_tid_UNCONNECTED;
  wire [7:0]NLW_xpm_fifo_axis_0_s_axis_tkeep_UNCONNECTED;
  wire [7:0]NLW_xpm_fifo_axis_0_s_axis_tstrb_UNCONNECTED;
  wire [0:0]NLW_xpm_fifo_axis_0_s_axis_tuser_UNCONNECTED;
  wire NLW_xpm_fifo_axis_1_almost_empty_axis_UNCONNECTED;
  wire NLW_xpm_fifo_axis_1_almost_full_axis_UNCONNECTED;
  wire NLW_xpm_fifo_axis_1_dbiterr_axis_UNCONNECTED;
  wire NLW_xpm_fifo_axis_1_injectdbiterr_axis_UNCONNECTED;
  wire NLW_xpm_fifo_axis_1_injectsbiterr_axis_UNCONNECTED;
  wire NLW_xpm_fifo_axis_1_m_aclk_UNCONNECTED;
  wire NLW_xpm_fifo_axis_1_prog_empty_axis_UNCONNECTED;
  wire NLW_xpm_fifo_axis_1_prog_full_axis_UNCONNECTED;
  wire NLW_xpm_fifo_axis_1_sbiterr_axis_UNCONNECTED;
  wire [63:0]NLW_xpm_fifo_axis_1_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_xpm_fifo_axis_1_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_xpm_fifo_axis_1_m_axis_tid_UNCONNECTED;
  wire [7:0]NLW_xpm_fifo_axis_1_m_axis_tkeep_UNCONNECTED;
  wire [7:0]NLW_xpm_fifo_axis_1_m_axis_tstrb_UNCONNECTED;
  wire [0:0]NLW_xpm_fifo_axis_1_m_axis_tuser_UNCONNECTED;
  wire [0:0]NLW_xpm_fifo_axis_1_rd_data_count_axis_UNCONNECTED;
  wire [63:0]NLW_xpm_fifo_axis_1_s_axis_tdata_UNCONNECTED;
  wire [7:0]NLW_xpm_fifo_axis_1_s_axis_tstrb_UNCONNECTED;
  wire [8:0]NLW_xpm_fifo_axis_1_wr_data_count_axis_UNCONNECTED;

  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \FSM_onehot_state_reg[5]_i_2 
       (.I0(\FSM_onehot_state_reg_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg[5]_i_7_n_0 ),
        .I2(mm2s_data_count[3]),
        .I3(mm2s_data_count[5]),
        .I4(mm2s_data_count[4]),
        .O(\FSM_onehot_state_reg[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \FSM_onehot_state_reg[5]_i_3 
       (.I0(wb_ena),
        .I1(cnt_word_reg[1]),
        .I2(cnt_word_reg[2]),
        .I3(cnt_word_reg[0]),
        .O(\FSM_onehot_state_reg[5]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state_reg[5]_i_4 
       (.I0(k_ena),
        .I1(a_enb),
        .O(\FSM_onehot_state_reg[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \FSM_onehot_state_reg[5]_i_6 
       (.I0(cnt_word_reg[2]),
        .I1(cnt_word_reg[0]),
        .I2(cnt_word_reg[1]),
        .O(\FSM_onehot_state_reg[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEEEEEEE)) 
    \FSM_onehot_state_reg[5]_i_7 
       (.I0(mm2s_data_count[7]),
        .I1(mm2s_data_count[6]),
        .I2(mm2s_data_count[1]),
        .I3(mm2s_data_count[0]),
        .I4(mm2s_data_count[2]),
        .I5(mm2s_data_count[8]),
        .O(\FSM_onehot_state_reg[5]_i_7_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:000001,iSTATE0:000010,iSTATE1:000100,iSTATE2:001000,iSTATE3:010000,iSTATE4:100000," *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg_reg[0] 
       (.C(aclk_IBUF_BUFG),
        .CE(nn_0_n_65),
        .D(a_enb),
        .Q(\FSM_onehot_state_reg_reg_n_0_[0] ),
        .S(nn_0_n_0));
  (* FSM_ENCODED_STATES = "iSTATE:000001,iSTATE0:000010,iSTATE1:000100,iSTATE2:001000,iSTATE3:010000,iSTATE4:100000," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg_reg[1] 
       (.C(aclk_IBUF_BUFG),
        .CE(nn_0_n_65),
        .D(\FSM_onehot_state_reg_reg_n_0_[0] ),
        .Q(wb_ena),
        .R(nn_0_n_0));
  (* FSM_ENCODED_STATES = "iSTATE:000001,iSTATE0:000010,iSTATE1:000100,iSTATE2:001000,iSTATE3:010000,iSTATE4:100000," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg_reg[2] 
       (.C(aclk_IBUF_BUFG),
        .CE(nn_0_n_65),
        .D(wb_ena),
        .Q(k_ena),
        .R(nn_0_n_0));
  (* FSM_ENCODED_STATES = "iSTATE:000001,iSTATE0:000010,iSTATE1:000100,iSTATE2:001000,iSTATE3:010000,iSTATE4:100000," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg_reg[3] 
       (.C(aclk_IBUF_BUFG),
        .CE(nn_0_n_65),
        .D(k_ena),
        .Q(nn_start),
        .R(nn_0_n_0));
  (* FSM_ENCODED_STATES = "iSTATE:000001,iSTATE0:000010,iSTATE1:000100,iSTATE2:001000,iSTATE3:010000,iSTATE4:100000," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg_reg[4] 
       (.C(aclk_IBUF_BUFG),
        .CE(nn_0_n_65),
        .D(nn_start),
        .Q(\FSM_onehot_state_reg_reg_n_0_[4] ),
        .R(nn_0_n_0));
  (* FSM_ENCODED_STATES = "iSTATE:000001,iSTATE0:000010,iSTATE1:000100,iSTATE2:001000,iSTATE3:010000,iSTATE4:100000," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg_reg[5] 
       (.C(aclk_IBUF_BUFG),
        .CE(nn_0_n_65),
        .D(\FSM_onehot_state_reg_reg_n_0_[4] ),
        .Q(a_enb),
        .R(nn_0_n_0));
  BUFG aclk_IBUF_BUFG_inst
       (.I(aclk_IBUF),
        .O(aclk_IBUF_BUFG));
  IBUF aclk_IBUF_inst
       (.I(aclk),
        .O(aclk_IBUF));
  IBUF aresetn_IBUF_inst
       (.I(aresetn),
        .O(aresetn_IBUF));
  LUT6 #(
    .INIT(64'hAFAFAFABAFAFAAAA)) 
    \cnt_word_reg[0]_i_1 
       (.I0(\FSM_onehot_state_reg_reg_n_0_[0] ),
        .I1(cnt_word_reg[2]),
        .I2(cnt_word_reg[0]),
        .I3(cnt_word_reg[1]),
        .I4(\FSM_onehot_state_reg[5]_i_4_n_0 ),
        .I5(wb_ena),
        .O(\cnt_word_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFFAAFFAAFEAAAAA)) 
    \cnt_word_reg[1]_i_1 
       (.I0(\FSM_onehot_state_reg_reg_n_0_[0] ),
        .I1(cnt_word_reg[2]),
        .I2(cnt_word_reg[0]),
        .I3(cnt_word_reg[1]),
        .I4(\FSM_onehot_state_reg[5]_i_4_n_0 ),
        .I5(wb_ena),
        .O(\cnt_word_reg[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \cnt_word_reg[2]_i_1 
       (.I0(k_ena),
        .I1(wb_ena),
        .I2(a_enb),
        .O(cnt_word_next));
  LUT6 #(
    .INIT(64'hBEEEBEEABEEEAAAA)) 
    \cnt_word_reg[2]_i_2 
       (.I0(\FSM_onehot_state_reg_reg_n_0_[0] ),
        .I1(cnt_word_reg[2]),
        .I2(cnt_word_reg[0]),
        .I3(cnt_word_reg[1]),
        .I4(\FSM_onehot_state_reg[5]_i_4_n_0 ),
        .I5(wb_ena),
        .O(\cnt_word_reg[2]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_word_reg_reg[0] 
       (.C(aclk_IBUF_BUFG),
        .CE(cnt_word_next),
        .D(\cnt_word_reg[0]_i_1_n_0 ),
        .Q(cnt_word_reg[0]),
        .R(nn_0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_word_reg_reg[1] 
       (.C(aclk_IBUF_BUFG),
        .CE(cnt_word_next),
        .D(\cnt_word_reg[1]_i_1_n_0 ),
        .Q(cnt_word_reg[1]),
        .R(nn_0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_word_reg_reg[2] 
       (.C(aclk_IBUF_BUFG),
        .CE(cnt_word_next),
        .D(\cnt_word_reg[2]_i_2_n_0 ),
        .Q(cnt_word_reg[2]),
        .R(nn_0_n_0));
  OBUF m_axis_tlast_OBUF_inst
       (.I(m_axis_tlast_OBUF),
        .O(m_axis_tlast));
  IBUF m_axis_tready_IBUF_inst
       (.I(m_axis_tready),
        .O(m_axis_tready_IBUF));
  OBUF m_axis_tvalid_OBUF_inst
       (.I(m_axis_tvalid_OBUF),
        .O(m_axis_tvalid));
  LUT6 #(
    .INIT(64'hFFEFFFFFAAAAAAAA)) 
    mm2s_ready_reg_i_1
       (.I0(\FSM_onehot_state_reg[5]_i_2_n_0 ),
        .I1(cnt_word_reg[2]),
        .I2(cnt_word_reg[0]),
        .I3(cnt_word_reg[1]),
        .I4(k_ena),
        .I5(mm2s_ready_reg),
        .O(mm2s_ready_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    mm2s_ready_reg_reg
       (.C(aclk_IBUF_BUFG),
        .CE(1'b1),
        .D(mm2s_ready_reg_i_1_n_0),
        .Q(mm2s_ready_reg),
        .R(nn_0_n_0));
  nn nn_0
       (.E(nn_0_n_65),
        .\FSM_onehot_state_reg_reg[0] (\FSM_onehot_state_reg[5]_i_2_n_0 ),
        .\FSM_onehot_state_reg_reg[0]_0 (\FSM_onehot_state_reg[5]_i_3_n_0 ),
        .\FSM_onehot_state_reg_reg[0]_1 (\FSM_onehot_state_reg[5]_i_4_n_0 ),
        .\FSM_onehot_state_reg_reg[0]_2 (\FSM_onehot_state_reg[5]_i_6_n_0 ),
        .Q({NLW_nn_0_Q_UNCONNECTED[4],\FSM_onehot_state_reg_reg_n_0_[4] ,nn_start,NLW_nn_0_Q_UNCONNECTED[1:0]}),
        .aclk_IBUF_BUFG(aclk_IBUF_BUFG),
        .aresetn(nn_0_n_0),
        .doutb(NLW_nn_0_doutb_UNCONNECTED[63:0]),
        .\gen_wr_b.gen_byte_narrow.for_mem_cols[1].mem_reg_1 (\NLW_nn_0_gen_wr_b.gen_byte_narrow.for_mem_cols[1].mem_reg_1_UNCONNECTED [2:0]),
        .m_axis_tdata(NLW_nn_0_m_axis_tdata_UNCONNECTED[63:0]),
        .s_aresetn(aresetn_IBUF),
        .s_axis_tready(s2mm_ready));
  register reg_s2mm_last
       (.Q(a_enb),
        .SS(nn_0_n_0),
        .aclk_IBUF_BUFG(aclk_IBUF_BUFG),
        .\q_reg[0]_0 (cnt_word_reg[1:0]),
        .s_axis_tlast(s2mm_last_reg));
  register_0 reg_s2mm_valid
       (.Q(a_enb),
        .SS(nn_0_n_0),
        .aclk_IBUF_BUFG(aclk_IBUF_BUFG),
        .s_axis_tvalid(s2mm_valid_reg));
  OBUF s_axis_tready_OBUF_inst
       (.I(s_axis_tready_OBUF),
        .O(s_axis_tready));
  IBUF s_axis_tvalid_IBUF_inst
       (.I(s_axis_tvalid),
        .O(s_axis_tvalid_IBUF));
  (* AXIS_DATA_WIDTH = "84" *) 
  (* AXIS_FINAL_DATA_WIDTH = "84" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CDC_SYNC_STAGES = "2" *) 
  (* CLOCKING_MODE = "common_clock" *) 
  (* ECC_MODE = "no_ecc" *) 
  (* EN_ADV_FEATURE_AXIS = "16'b0000000000000100" *) 
  (* EN_ADV_FEATURE_AXIS_INT = "16'b0001000000000100" *) 
  (* EN_ALMOST_EMPTY_INT = "1'b0" *) 
  (* EN_ALMOST_FULL_INT = "1'b0" *) 
  (* EN_DATA_VALID_INT = "1'b1" *) 
  (* FIFO_DEPTH = "256" *) 
  (* FIFO_MEMORY_TYPE = "auto" *) 
  (* LOG_DEPTH_AXIS = "8" *) 
  (* PACKET_FIFO = "false" *) 
  (* PKT_SIZE_LT8 = "1'b0" *) 
  (* PROG_EMPTY_THRESH = "10" *) 
  (* PROG_FULL_THRESH = "10" *) 
  (* P_COMMON_CLOCK = "1" *) 
  (* P_ECC_MODE = "0" *) 
  (* P_FIFO_MEMORY_TYPE = "0" *) 
  (* P_PKT_MODE = "0" *) 
  (* RD_DATA_COUNT_WIDTH = "1" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* TDATA_OFFSET = "64" *) 
  (* TDATA_WIDTH = "64" *) 
  (* TDEST_OFFSET = "82" *) 
  (* TDEST_WIDTH = "1" *) 
  (* TID_OFFSET = "81" *) 
  (* TID_WIDTH = "1" *) 
  (* TKEEP_OFFSET = "80" *) 
  (* TSTRB_OFFSET = "72" *) 
  (* TUSER_MAX_WIDTH = "4013" *) 
  (* TUSER_OFFSET = "83" *) 
  (* TUSER_WIDTH = "1" *) 
  (* USE_ADV_FEATURES = "0004" *) 
  (* USE_ADV_FEATURES_INT = "825241652" *) 
  (* WR_DATA_COUNT_WIDTH = "9" *) 
  (* XPM_MODULE = "TRUE" *) 
  xpm_fifo_axis__xdcDup__1 xpm_fifo_axis_0
       (.almost_empty_axis(NLW_xpm_fifo_axis_0_almost_empty_axis_UNCONNECTED),
        .almost_full_axis(NLW_xpm_fifo_axis_0_almost_full_axis_UNCONNECTED),
        .dbiterr_axis(NLW_xpm_fifo_axis_0_dbiterr_axis_UNCONNECTED),
        .injectdbiterr_axis(NLW_xpm_fifo_axis_0_injectdbiterr_axis_UNCONNECTED),
        .injectsbiterr_axis(NLW_xpm_fifo_axis_0_injectsbiterr_axis_UNCONNECTED),
        .m_aclk(NLW_xpm_fifo_axis_0_m_aclk_UNCONNECTED),
        .m_axis_tdata(NLW_xpm_fifo_axis_0_m_axis_tdata_UNCONNECTED[63:0]),
        .m_axis_tdest(NLW_xpm_fifo_axis_0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_xpm_fifo_axis_0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_xpm_fifo_axis_0_m_axis_tkeep_UNCONNECTED[7:0]),
        .m_axis_tlast(NLW_xpm_fifo_axis_0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(mm2s_ready_reg),
        .m_axis_tstrb(NLW_xpm_fifo_axis_0_m_axis_tstrb_UNCONNECTED[7:0]),
        .m_axis_tuser(NLW_xpm_fifo_axis_0_m_axis_tuser_UNCONNECTED[0]),
        .m_axis_tvalid(NLW_xpm_fifo_axis_0_m_axis_tvalid_UNCONNECTED),
        .prog_empty_axis(NLW_xpm_fifo_axis_0_prog_empty_axis_UNCONNECTED),
        .prog_full_axis(NLW_xpm_fifo_axis_0_prog_full_axis_UNCONNECTED),
        .rd_data_count_axis(NLW_xpm_fifo_axis_0_rd_data_count_axis_UNCONNECTED[0]),
        .s_aclk(aclk_IBUF_BUFG),
        .s_aresetn(aresetn_IBUF),
        .s_axis_tdata(NLW_xpm_fifo_axis_0_s_axis_tdata_UNCONNECTED[63:0]),
        .s_axis_tdest(NLW_xpm_fifo_axis_0_s_axis_tdest_UNCONNECTED[0]),
        .s_axis_tid(NLW_xpm_fifo_axis_0_s_axis_tid_UNCONNECTED[0]),
        .s_axis_tkeep(NLW_xpm_fifo_axis_0_s_axis_tkeep_UNCONNECTED[7:0]),
        .s_axis_tlast(NLW_xpm_fifo_axis_0_s_axis_tlast_UNCONNECTED),
        .s_axis_tready(s_axis_tready_OBUF),
        .s_axis_tstrb(NLW_xpm_fifo_axis_0_s_axis_tstrb_UNCONNECTED[7:0]),
        .s_axis_tuser(NLW_xpm_fifo_axis_0_s_axis_tuser_UNCONNECTED[0]),
        .s_axis_tvalid(s_axis_tvalid_IBUF),
        .sbiterr_axis(NLW_xpm_fifo_axis_0_sbiterr_axis_UNCONNECTED),
        .wr_data_count_axis(mm2s_data_count));
  (* AXIS_DATA_WIDTH = "84" *) 
  (* AXIS_FINAL_DATA_WIDTH = "84" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CDC_SYNC_STAGES = "2" *) 
  (* CLOCKING_MODE = "common_clock" *) 
  (* ECC_MODE = "no_ecc" *) 
  (* EN_ADV_FEATURE_AXIS = "16'b0000000000000100" *) 
  (* EN_ADV_FEATURE_AXIS_INT = "16'b0001000000000100" *) 
  (* EN_ALMOST_EMPTY_INT = "1'b0" *) 
  (* EN_ALMOST_FULL_INT = "1'b0" *) 
  (* EN_DATA_VALID_INT = "1'b1" *) 
  (* FIFO_DEPTH = "256" *) 
  (* FIFO_MEMORY_TYPE = "auto" *) 
  (* LOG_DEPTH_AXIS = "8" *) 
  (* PACKET_FIFO = "false" *) 
  (* PKT_SIZE_LT8 = "1'b0" *) 
  (* PROG_EMPTY_THRESH = "10" *) 
  (* PROG_FULL_THRESH = "10" *) 
  (* P_COMMON_CLOCK = "1" *) 
  (* P_ECC_MODE = "0" *) 
  (* P_FIFO_MEMORY_TYPE = "0" *) 
  (* P_PKT_MODE = "0" *) 
  (* RD_DATA_COUNT_WIDTH = "1" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* TDATA_OFFSET = "64" *) 
  (* TDATA_WIDTH = "64" *) 
  (* TDEST_OFFSET = "82" *) 
  (* TDEST_WIDTH = "1" *) 
  (* TID_OFFSET = "81" *) 
  (* TID_WIDTH = "1" *) 
  (* TKEEP_OFFSET = "80" *) 
  (* TSTRB_OFFSET = "72" *) 
  (* TUSER_MAX_WIDTH = "4013" *) 
  (* TUSER_OFFSET = "83" *) 
  (* TUSER_WIDTH = "1" *) 
  (* USE_ADV_FEATURES = "0004" *) 
  (* USE_ADV_FEATURES_INT = "825241652" *) 
  (* WR_DATA_COUNT_WIDTH = "9" *) 
  (* XPM_MODULE = "TRUE" *) 
  xpm_fifo_axis xpm_fifo_axis_1
       (.almost_empty_axis(NLW_xpm_fifo_axis_1_almost_empty_axis_UNCONNECTED),
        .almost_full_axis(NLW_xpm_fifo_axis_1_almost_full_axis_UNCONNECTED),
        .dbiterr_axis(NLW_xpm_fifo_axis_1_dbiterr_axis_UNCONNECTED),
        .injectdbiterr_axis(NLW_xpm_fifo_axis_1_injectdbiterr_axis_UNCONNECTED),
        .injectsbiterr_axis(NLW_xpm_fifo_axis_1_injectsbiterr_axis_UNCONNECTED),
        .m_aclk(NLW_xpm_fifo_axis_1_m_aclk_UNCONNECTED),
        .m_axis_tdata(NLW_xpm_fifo_axis_1_m_axis_tdata_UNCONNECTED[63:0]),
        .m_axis_tdest(NLW_xpm_fifo_axis_1_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_xpm_fifo_axis_1_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_xpm_fifo_axis_1_m_axis_tkeep_UNCONNECTED[7:0]),
        .m_axis_tlast(m_axis_tlast_OBUF),
        .m_axis_tready(m_axis_tready_IBUF),
        .m_axis_tstrb(NLW_xpm_fifo_axis_1_m_axis_tstrb_UNCONNECTED[7:0]),
        .m_axis_tuser(NLW_xpm_fifo_axis_1_m_axis_tuser_UNCONNECTED[0]),
        .m_axis_tvalid(m_axis_tvalid_OBUF),
        .prog_empty_axis(NLW_xpm_fifo_axis_1_prog_empty_axis_UNCONNECTED),
        .prog_full_axis(NLW_xpm_fifo_axis_1_prog_full_axis_UNCONNECTED),
        .rd_data_count_axis(NLW_xpm_fifo_axis_1_rd_data_count_axis_UNCONNECTED[0]),
        .s_aclk(aclk_IBUF_BUFG),
        .s_aresetn(aresetn_IBUF),
        .s_axis_tdata(NLW_xpm_fifo_axis_1_s_axis_tdata_UNCONNECTED[63:0]),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .s_axis_tlast(s2mm_last_reg),
        .s_axis_tready(s2mm_ready),
        .s_axis_tstrb(NLW_xpm_fifo_axis_1_s_axis_tstrb_UNCONNECTED[7:0]),
        .s_axis_tuser(1'b0),
        .s_axis_tvalid(s2mm_valid_reg),
        .sbiterr_axis(NLW_xpm_fifo_axis_1_sbiterr_axis_UNCONNECTED),
        .wr_data_count_axis(NLW_xpm_fifo_axis_1_wr_data_count_axis_UNCONNECTED[8:0]));
endmodule

module nn
   (aresetn,
    doutb,
    E,
    aclk_IBUF_BUFG,
    Q,
    \gen_wr_b.gen_byte_narrow.for_mem_cols[1].mem_reg_1 ,
    m_axis_tdata,
    \FSM_onehot_state_reg_reg[0] ,
    \FSM_onehot_state_reg_reg[0]_0 ,
    \FSM_onehot_state_reg_reg[0]_1 ,
    \FSM_onehot_state_reg_reg[0]_2 ,
    s_axis_tready,
    s_aresetn);
  output aresetn;
  output [63:0]doutb;
  output [0:0]E;
  input aclk_IBUF_BUFG;
  input [4:0]Q;
  input [2:0]\gen_wr_b.gen_byte_narrow.for_mem_cols[1].mem_reg_1 ;
  input [63:0]m_axis_tdata;
  input \FSM_onehot_state_reg_reg[0] ;
  input \FSM_onehot_state_reg_reg[0]_0 ;
  input \FSM_onehot_state_reg_reg[0]_1 ;
  input \FSM_onehot_state_reg_reg[0]_2 ;
  input s_axis_tready;
  input s_aresetn;

  wire [0:0]E;
  wire \FSM_onehot_state_reg[5]_i_5_n_0 ;
  wire \FSM_onehot_state_reg[5]_i_8_n_0 ;
  wire \FSM_onehot_state_reg_reg[0] ;
  wire \FSM_onehot_state_reg_reg[0]_0 ;
  wire \FSM_onehot_state_reg_reg[0]_1 ;
  wire \FSM_onehot_state_reg_reg[0]_2 ;
  wire [4:0]Q;
  wire aclk_IBUF_BUFG;
  wire aresetn;
  wire \cnt_main_reg[5]_i_1_n_0 ;
  wire \cnt_main_reg[5]_i_2_n_0 ;
  wire \cnt_main_reg[5]_i_4_n_0 ;
  wire \cnt_main_reg[5]_i_5_n_0 ;
  wire [5:0]cnt_main_reg_reg;
  wire [5:0]p_0_in__0;
  wire s_aresetn;
  wire s_axis_tready;
  wire NLW_dut_aclk_IBUF_BUFG_UNCONNECTED;
  wire \NLW_dut_cnt_main_reg_reg[1]_UNCONNECTED ;
  wire \NLW_dut_cnt_main_reg_reg[1]_0_UNCONNECTED ;
  wire \NLW_dut_cnt_main_reg_reg[5]_UNCONNECTED ;
  wire \NLW_dut_cnt_main_reg_reg[5]_0_UNCONNECTED ;
  wire \NLW_dut_cnt_main_reg_reg[5]_1_UNCONNECTED ;
  wire \NLW_dut_cnt_main_reg_reg[5]_2_UNCONNECTED ;
  wire \NLW_dut_q_reg[10]_UNCONNECTED ;
  wire \NLW_dut_q_reg[10]_0_UNCONNECTED ;
  wire \NLW_dut_q_reg[11]_UNCONNECTED ;
  wire \NLW_dut_q_reg[11]_0_UNCONNECTED ;
  wire \NLW_dut_q_reg[12]_UNCONNECTED ;
  wire \NLW_dut_q_reg[12]_0_UNCONNECTED ;
  wire \NLW_dut_q_reg[13]_UNCONNECTED ;
  wire \NLW_dut_q_reg[13]_0_UNCONNECTED ;
  wire \NLW_dut_q_reg[14]_UNCONNECTED ;
  wire \NLW_dut_q_reg[14]_0_UNCONNECTED ;
  wire \NLW_dut_q_reg[6]_UNCONNECTED ;
  wire \NLW_dut_q_reg[6]_0_UNCONNECTED ;
  wire \NLW_dut_q_reg[6]_1_UNCONNECTED ;
  wire \NLW_dut_q_reg[6]_10_UNCONNECTED ;
  wire \NLW_dut_q_reg[6]_11_UNCONNECTED ;
  wire \NLW_dut_q_reg[6]_12_UNCONNECTED ;
  wire \NLW_dut_q_reg[6]_2_UNCONNECTED ;
  wire \NLW_dut_q_reg[6]_3_UNCONNECTED ;
  wire \NLW_dut_q_reg[6]_4_UNCONNECTED ;
  wire \NLW_dut_q_reg[6]_5_UNCONNECTED ;
  wire \NLW_dut_q_reg[6]_6_UNCONNECTED ;
  wire \NLW_dut_q_reg[6]_7_UNCONNECTED ;
  wire \NLW_dut_q_reg[6]_8_UNCONNECTED ;
  wire \NLW_dut_q_reg[6]_9_UNCONNECTED ;
  wire \NLW_dut_q_reg[7]_UNCONNECTED ;
  wire \NLW_dut_q_reg[7]_0_UNCONNECTED ;
  wire \NLW_dut_q_reg[8]_UNCONNECTED ;
  wire \NLW_dut_q_reg[8]_0_UNCONNECTED ;
  wire \NLW_dut_q_reg[8]_1_UNCONNECTED ;
  wire \NLW_dut_q_reg[8]_2_UNCONNECTED ;
  wire \NLW_dut_q_reg[8]_3_UNCONNECTED ;
  wire \NLW_dut_q_reg[8]_4_UNCONNECTED ;
  wire \NLW_dut_q_reg[8]_5_UNCONNECTED ;
  wire \NLW_dut_q_reg[8]_6_UNCONNECTED ;
  wire \NLW_dut_q_reg[8]_7_UNCONNECTED ;
  wire \NLW_dut_q_reg[8]_8_UNCONNECTED ;
  wire \NLW_dut_q_reg[8]_9_UNCONNECTED ;
  wire \NLW_dut_q_reg[9]_UNCONNECTED ;
  wire \NLW_dut_q_reg[9]_0_UNCONNECTED ;
  wire [0:0]NLW_dut_B_UNCONNECTED;
  wire [10:0]NLW_dut_D_UNCONNECTED;
  wire [5:0]NLW_dut_Q_UNCONNECTED;
  wire [0:0]NLW_dut_b30_sel__1_UNCONNECTED;
  wire [63:0]NLW_dut_doutb_UNCONNECTED;
  wire [9:0]\NLW_dut_q_reg[15]_UNCONNECTED ;
  wire [9:0]\NLW_dut_q_reg[15]_0_UNCONNECTED ;
  wire [9:0]\NLW_dut_q_reg[15]_1_UNCONNECTED ;
  wire [9:0]\NLW_dut_q_reg[15]_2_UNCONNECTED ;
  wire [9:0]\NLW_dut_q_reg[15]_3_UNCONNECTED ;
  wire [9:0]\NLW_dut_q_reg[15]_4_UNCONNECTED ;
  wire [6:0]NLW_dut_sel_UNCONNECTED;
  wire [0:0]NLW_dut_y0_UNCONNECTED;
  wire [0:0]NLW_dut_y1_UNCONNECTED;
  wire [15:0]NLW_dut_y_out_i_UNCONNECTED;
  wire [15:0]NLW_dut_y_out_i_0_UNCONNECTED;
  wire [0:0]NLW_dut_y_out_i_1_UNCONNECTED;
  wire [10:0]NLW_dut_y_out_i_10_UNCONNECTED;
  wire [15:0]NLW_dut_y_out_i_11_UNCONNECTED;
  wire [15:0]NLW_dut_y_out_i_12_UNCONNECTED;
  wire [10:0]NLW_dut_y_out_i_2_UNCONNECTED;
  wire [15:0]NLW_dut_y_out_i_3_UNCONNECTED;
  wire [15:0]NLW_dut_y_out_i_4_UNCONNECTED;
  wire [0:0]NLW_dut_y_out_i_5_UNCONNECTED;
  wire [10:0]NLW_dut_y_out_i_6_UNCONNECTED;
  wire [15:0]NLW_dut_y_out_i_7_UNCONNECTED;
  wire [15:0]NLW_dut_y_out_i_8_UNCONNECTED;
  wire [0:0]NLW_dut_y_out_i_9_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFEE)) 
    \FSM_onehot_state_reg[5]_i_1 
       (.I0(\FSM_onehot_state_reg_reg[0] ),
        .I1(\FSM_onehot_state_reg_reg[0]_0 ),
        .I2(\FSM_onehot_state_reg_reg[0]_1 ),
        .I3(\FSM_onehot_state_reg[5]_i_5_n_0 ),
        .I4(Q[2]),
        .I5(\FSM_onehot_state_reg_reg[0]_2 ),
        .O(E));
  LUT5 #(
    .INIT(32'h00000008)) 
    \FSM_onehot_state_reg[5]_i_5 
       (.I0(Q[3]),
        .I1(s_axis_tready),
        .I2(cnt_main_reg_reg[5]),
        .I3(cnt_main_reg_reg[4]),
        .I4(\FSM_onehot_state_reg[5]_i_8_n_0 ),
        .O(\FSM_onehot_state_reg[5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_state_reg[5]_i_8 
       (.I0(cnt_main_reg_reg[2]),
        .I1(cnt_main_reg_reg[3]),
        .I2(cnt_main_reg_reg[0]),
        .I3(cnt_main_reg_reg[1]),
        .O(\FSM_onehot_state_reg[5]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_main_reg[0]_i_1 
       (.I0(cnt_main_reg_reg[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt_main_reg[1]_i_1 
       (.I0(cnt_main_reg_reg[0]),
        .I1(cnt_main_reg_reg[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cnt_main_reg[2]_i_1 
       (.I0(cnt_main_reg_reg[0]),
        .I1(cnt_main_reg_reg[1]),
        .I2(cnt_main_reg_reg[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \cnt_main_reg[3]_i_1 
       (.I0(cnt_main_reg_reg[1]),
        .I1(cnt_main_reg_reg[0]),
        .I2(cnt_main_reg_reg[2]),
        .I3(cnt_main_reg_reg[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \cnt_main_reg[4]_i_1 
       (.I0(cnt_main_reg_reg[2]),
        .I1(cnt_main_reg_reg[0]),
        .I2(cnt_main_reg_reg[1]),
        .I3(cnt_main_reg_reg[3]),
        .I4(cnt_main_reg_reg[4]),
        .O(p_0_in__0[4]));
  LUT3 #(
    .INIT(8'h4F)) 
    \cnt_main_reg[5]_i_1 
       (.I0(Q[2]),
        .I1(\cnt_main_reg[5]_i_4_n_0 ),
        .I2(s_aresetn),
        .O(\cnt_main_reg[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABFFFFFFFE)) 
    \cnt_main_reg[5]_i_2 
       (.I0(Q[2]),
        .I1(cnt_main_reg_reg[0]),
        .I2(cnt_main_reg_reg[2]),
        .I3(cnt_main_reg_reg[1]),
        .I4(\cnt_main_reg[5]_i_5_n_0 ),
        .I5(cnt_main_reg_reg[5]),
        .O(\cnt_main_reg[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \cnt_main_reg[5]_i_3 
       (.I0(cnt_main_reg_reg[3]),
        .I1(cnt_main_reg_reg[1]),
        .I2(cnt_main_reg_reg[0]),
        .I3(cnt_main_reg_reg[2]),
        .I4(cnt_main_reg_reg[4]),
        .I5(cnt_main_reg_reg[5]),
        .O(p_0_in__0[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \cnt_main_reg[5]_i_4 
       (.I0(cnt_main_reg_reg[0]),
        .I1(cnt_main_reg_reg[2]),
        .I2(cnt_main_reg_reg[1]),
        .I3(cnt_main_reg_reg[4]),
        .I4(cnt_main_reg_reg[3]),
        .I5(cnt_main_reg_reg[5]),
        .O(\cnt_main_reg[5]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \cnt_main_reg[5]_i_5 
       (.I0(cnt_main_reg_reg[3]),
        .I1(cnt_main_reg_reg[4]),
        .O(\cnt_main_reg[5]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_main_reg_reg[0] 
       (.C(aclk_IBUF_BUFG),
        .CE(\cnt_main_reg[5]_i_2_n_0 ),
        .D(p_0_in__0[0]),
        .Q(cnt_main_reg_reg[0]),
        .R(\cnt_main_reg[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_main_reg_reg[1] 
       (.C(aclk_IBUF_BUFG),
        .CE(\cnt_main_reg[5]_i_2_n_0 ),
        .D(p_0_in__0[1]),
        .Q(cnt_main_reg_reg[1]),
        .R(\cnt_main_reg[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_main_reg_reg[2] 
       (.C(aclk_IBUF_BUFG),
        .CE(\cnt_main_reg[5]_i_2_n_0 ),
        .D(p_0_in__0[2]),
        .Q(cnt_main_reg_reg[2]),
        .R(\cnt_main_reg[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_main_reg_reg[3] 
       (.C(aclk_IBUF_BUFG),
        .CE(\cnt_main_reg[5]_i_2_n_0 ),
        .D(p_0_in__0[3]),
        .Q(cnt_main_reg_reg[3]),
        .R(\cnt_main_reg[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_main_reg_reg[4] 
       (.C(aclk_IBUF_BUFG),
        .CE(\cnt_main_reg[5]_i_2_n_0 ),
        .D(p_0_in__0[4]),
        .Q(cnt_main_reg_reg[4]),
        .R(\cnt_main_reg[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_main_reg_reg[5] 
       (.C(aclk_IBUF_BUFG),
        .CE(\cnt_main_reg[5]_i_2_n_0 ),
        .D(p_0_in__0[5]),
        .Q(cnt_main_reg_reg[5]),
        .R(\cnt_main_reg[5]_i_1_n_0 ));
  systolic dut
       (.B(NLW_dut_B_UNCONNECTED[0]),
        .D(NLW_dut_D_UNCONNECTED[10:0]),
        .Q(NLW_dut_Q_UNCONNECTED[5:0]),
        .aclk_IBUF_BUFG(NLW_dut_aclk_IBUF_BUFG_UNCONNECTED),
        .aresetn(aresetn),
        .b30_sel__1(NLW_dut_b30_sel__1_UNCONNECTED[0]),
        .\cnt_main_reg_reg[1] (\NLW_dut_cnt_main_reg_reg[1]_UNCONNECTED ),
        .\cnt_main_reg_reg[1]_0 (\NLW_dut_cnt_main_reg_reg[1]_0_UNCONNECTED ),
        .\cnt_main_reg_reg[5] (\NLW_dut_cnt_main_reg_reg[5]_UNCONNECTED ),
        .\cnt_main_reg_reg[5]_0 (\NLW_dut_cnt_main_reg_reg[5]_0_UNCONNECTED ),
        .\cnt_main_reg_reg[5]_1 (\NLW_dut_cnt_main_reg_reg[5]_1_UNCONNECTED ),
        .\cnt_main_reg_reg[5]_2 (\NLW_dut_cnt_main_reg_reg[5]_2_UNCONNECTED ),
        .doutb(NLW_dut_doutb_UNCONNECTED[63:0]),
        .\q_reg[10] (\NLW_dut_q_reg[10]_UNCONNECTED ),
        .\q_reg[10]_0 (\NLW_dut_q_reg[10]_0_UNCONNECTED ),
        .\q_reg[11] (\NLW_dut_q_reg[11]_UNCONNECTED ),
        .\q_reg[11]_0 (\NLW_dut_q_reg[11]_0_UNCONNECTED ),
        .\q_reg[12] (\NLW_dut_q_reg[12]_UNCONNECTED ),
        .\q_reg[12]_0 (\NLW_dut_q_reg[12]_0_UNCONNECTED ),
        .\q_reg[13] (\NLW_dut_q_reg[13]_UNCONNECTED ),
        .\q_reg[13]_0 (\NLW_dut_q_reg[13]_0_UNCONNECTED ),
        .\q_reg[14] (\NLW_dut_q_reg[14]_UNCONNECTED ),
        .\q_reg[14]_0 (\NLW_dut_q_reg[14]_0_UNCONNECTED ),
        .\q_reg[15] (\NLW_dut_q_reg[15]_UNCONNECTED [9:0]),
        .\q_reg[15]_0 (\NLW_dut_q_reg[15]_0_UNCONNECTED [9:0]),
        .\q_reg[15]_1 (\NLW_dut_q_reg[15]_1_UNCONNECTED [9:0]),
        .\q_reg[15]_2 (\NLW_dut_q_reg[15]_2_UNCONNECTED [9:0]),
        .\q_reg[15]_3 (\NLW_dut_q_reg[15]_3_UNCONNECTED [9:0]),
        .\q_reg[15]_4 (\NLW_dut_q_reg[15]_4_UNCONNECTED [9:0]),
        .\q_reg[6] (\NLW_dut_q_reg[6]_UNCONNECTED ),
        .\q_reg[6]_0 (\NLW_dut_q_reg[6]_0_UNCONNECTED ),
        .\q_reg[6]_1 (\NLW_dut_q_reg[6]_1_UNCONNECTED ),
        .\q_reg[6]_10 (\NLW_dut_q_reg[6]_10_UNCONNECTED ),
        .\q_reg[6]_11 (\NLW_dut_q_reg[6]_11_UNCONNECTED ),
        .\q_reg[6]_12 (\NLW_dut_q_reg[6]_12_UNCONNECTED ),
        .\q_reg[6]_2 (\NLW_dut_q_reg[6]_2_UNCONNECTED ),
        .\q_reg[6]_3 (\NLW_dut_q_reg[6]_3_UNCONNECTED ),
        .\q_reg[6]_4 (\NLW_dut_q_reg[6]_4_UNCONNECTED ),
        .\q_reg[6]_5 (\NLW_dut_q_reg[6]_5_UNCONNECTED ),
        .\q_reg[6]_6 (\NLW_dut_q_reg[6]_6_UNCONNECTED ),
        .\q_reg[6]_7 (\NLW_dut_q_reg[6]_7_UNCONNECTED ),
        .\q_reg[6]_8 (\NLW_dut_q_reg[6]_8_UNCONNECTED ),
        .\q_reg[6]_9 (\NLW_dut_q_reg[6]_9_UNCONNECTED ),
        .\q_reg[7] (\NLW_dut_q_reg[7]_UNCONNECTED ),
        .\q_reg[7]_0 (\NLW_dut_q_reg[7]_0_UNCONNECTED ),
        .\q_reg[8] (\NLW_dut_q_reg[8]_UNCONNECTED ),
        .\q_reg[8]_0 (\NLW_dut_q_reg[8]_0_UNCONNECTED ),
        .\q_reg[8]_1 (\NLW_dut_q_reg[8]_1_UNCONNECTED ),
        .\q_reg[8]_2 (\NLW_dut_q_reg[8]_2_UNCONNECTED ),
        .\q_reg[8]_3 (\NLW_dut_q_reg[8]_3_UNCONNECTED ),
        .\q_reg[8]_4 (\NLW_dut_q_reg[8]_4_UNCONNECTED ),
        .\q_reg[8]_5 (\NLW_dut_q_reg[8]_5_UNCONNECTED ),
        .\q_reg[8]_6 (\NLW_dut_q_reg[8]_6_UNCONNECTED ),
        .\q_reg[8]_7 (\NLW_dut_q_reg[8]_7_UNCONNECTED ),
        .\q_reg[8]_8 (\NLW_dut_q_reg[8]_8_UNCONNECTED ),
        .\q_reg[8]_9 (\NLW_dut_q_reg[8]_9_UNCONNECTED ),
        .\q_reg[9] (\NLW_dut_q_reg[9]_UNCONNECTED ),
        .\q_reg[9]_0 (\NLW_dut_q_reg[9]_0_UNCONNECTED ),
        .s_aresetn(s_aresetn),
        .sel(NLW_dut_sel_UNCONNECTED[6:0]),
        .y0(NLW_dut_y0_UNCONNECTED[0]),
        .y1(NLW_dut_y1_UNCONNECTED[0]),
        .y_out_i(NLW_dut_y_out_i_UNCONNECTED[15:0]),
        .y_out_i_0(NLW_dut_y_out_i_0_UNCONNECTED[15:0]),
        .y_out_i_1(NLW_dut_y_out_i_1_UNCONNECTED[0]),
        .y_out_i_10(NLW_dut_y_out_i_10_UNCONNECTED[10:0]),
        .y_out_i_11(NLW_dut_y_out_i_11_UNCONNECTED[15:0]),
        .y_out_i_12(NLW_dut_y_out_i_12_UNCONNECTED[15:0]),
        .y_out_i_2(NLW_dut_y_out_i_2_UNCONNECTED[10:0]),
        .y_out_i_3(NLW_dut_y_out_i_3_UNCONNECTED[15:0]),
        .y_out_i_4(NLW_dut_y_out_i_4_UNCONNECTED[15:0]),
        .y_out_i_5(NLW_dut_y_out_i_5_UNCONNECTED[0]),
        .y_out_i_6(NLW_dut_y_out_i_6_UNCONNECTED[10:0]),
        .y_out_i_7(NLW_dut_y_out_i_7_UNCONNECTED[15:0]),
        .y_out_i_8(NLW_dut_y_out_i_8_UNCONNECTED[15:0]),
        .y_out_i_9(NLW_dut_y_out_i_9_UNCONNECTED[0]));
endmodule

module register
   (s_axis_tlast,
    SS,
    aclk_IBUF_BUFG,
    Q,
    \q_reg[0]_0 );
  output s_axis_tlast;
  input [0:0]SS;
  input aclk_IBUF_BUFG;
  input [0:0]Q;
  input [1:0]\q_reg[0]_0 ;

  wire [0:0]Q;
  wire [0:0]SS;
  wire aclk_IBUF_BUFG;
  wire [1:0]\q_reg[0]_0 ;
  wire s2mm_last;
  wire s_axis_tlast;

  LUT3 #(
    .INIT(8'h20)) 
    \q[0]_i_1__14 
       (.I0(Q),
        .I1(\q_reg[0]_0 [1]),
        .I2(\q_reg[0]_0 [0]),
        .O(s2mm_last));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(aclk_IBUF_BUFG),
        .CE(1'b1),
        .D(s2mm_last),
        .Q(s_axis_tlast),
        .R(SS));
endmodule

(* ORIG_REF_NAME = "register" *) 
module register_0
   (s_axis_tvalid,
    SS,
    Q,
    aclk_IBUF_BUFG);
  output s_axis_tvalid;
  input [0:0]SS;
  input [0:0]Q;
  input aclk_IBUF_BUFG;

  wire [0:0]Q;
  wire [0:0]SS;
  wire aclk_IBUF_BUFG;
  wire s_axis_tvalid;

  FDRE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(aclk_IBUF_BUFG),
        .CE(1'b1),
        .D(Q),
        .Q(s_axis_tvalid),
        .R(SS));
endmodule

(* ORIG_REF_NAME = "register" *) 
module register__parameterized0_69
   (aresetn,
    Q,
    s_aresetn,
    D,
    aclk_IBUF_BUFG);
  output aresetn;
  output [15:0]Q;
  input s_aresetn;
  input [15:0]D;
  input aclk_IBUF_BUFG;

  wire aresetn;
  wire s_aresetn;

  LUT1 #(
    .INIT(2'h1)) 
    xpm_memory_tdpram_wb_i_1
       (.I0(s_aresetn),
        .O(aresetn));
endmodule

module systolic
   (aresetn,
    y0,
    \q_reg[14] ,
    \q_reg[13] ,
    \q_reg[12] ,
    \q_reg[11] ,
    \q_reg[10] ,
    \q_reg[9] ,
    \q_reg[8] ,
    \q_reg[7] ,
    \q_reg[6] ,
    y1,
    \q_reg[14]_0 ,
    \q_reg[13]_0 ,
    \q_reg[12]_0 ,
    \q_reg[11]_0 ,
    \q_reg[10]_0 ,
    \q_reg[9]_0 ,
    \q_reg[8]_0 ,
    \q_reg[7]_0 ,
    \q_reg[6]_0 ,
    b30_sel__1,
    \cnt_main_reg_reg[1] ,
    \cnt_main_reg_reg[1]_0 ,
    \cnt_main_reg_reg[5] ,
    \cnt_main_reg_reg[5]_0 ,
    \cnt_main_reg_reg[5]_1 ,
    \cnt_main_reg_reg[5]_2 ,
    \q_reg[15] ,
    \q_reg[15]_0 ,
    \q_reg[15]_1 ,
    \q_reg[15]_2 ,
    \q_reg[15]_3 ,
    \q_reg[15]_4 ,
    aclk_IBUF_BUFG,
    B,
    D,
    y_out_i,
    y_out_i_0,
    y_out_i_1,
    y_out_i_2,
    y_out_i_3,
    y_out_i_4,
    y_out_i_5,
    y_out_i_6,
    y_out_i_7,
    y_out_i_8,
    y_out_i_9,
    y_out_i_10,
    y_out_i_11,
    y_out_i_12,
    s_aresetn,
    doutb,
    Q,
    sel,
    \q_reg[8]_1 ,
    \q_reg[8]_2 ,
    \q_reg[8]_3 ,
    \q_reg[8]_4 ,
    \q_reg[8]_5 ,
    \q_reg[8]_6 ,
    \q_reg[8]_7 ,
    \q_reg[8]_8 ,
    \q_reg[8]_9 ,
    \q_reg[6]_1 ,
    \q_reg[6]_2 ,
    \q_reg[6]_3 ,
    \q_reg[6]_4 ,
    \q_reg[6]_5 ,
    \q_reg[6]_6 ,
    \q_reg[6]_7 ,
    \q_reg[6]_8 ,
    \q_reg[6]_9 ,
    \q_reg[6]_10 ,
    \q_reg[6]_11 ,
    \q_reg[6]_12 );
  output aresetn;
  output [0:0]y0;
  output \q_reg[14] ;
  output \q_reg[13] ;
  output \q_reg[12] ;
  output \q_reg[11] ;
  output \q_reg[10] ;
  output \q_reg[9] ;
  output \q_reg[8] ;
  output \q_reg[7] ;
  output \q_reg[6] ;
  output [0:0]y1;
  output \q_reg[14]_0 ;
  output \q_reg[13]_0 ;
  output \q_reg[12]_0 ;
  output \q_reg[11]_0 ;
  output \q_reg[10]_0 ;
  output \q_reg[9]_0 ;
  output \q_reg[8]_0 ;
  output \q_reg[7]_0 ;
  output \q_reg[6]_0 ;
  output [0:0]b30_sel__1;
  output \cnt_main_reg_reg[1] ;
  output \cnt_main_reg_reg[1]_0 ;
  output \cnt_main_reg_reg[5] ;
  output \cnt_main_reg_reg[5]_0 ;
  output \cnt_main_reg_reg[5]_1 ;
  output \cnt_main_reg_reg[5]_2 ;
  output [9:0]\q_reg[15] ;
  output [9:0]\q_reg[15]_0 ;
  output [9:0]\q_reg[15]_1 ;
  output [9:0]\q_reg[15]_2 ;
  output [9:0]\q_reg[15]_3 ;
  output [9:0]\q_reg[15]_4 ;
  input aclk_IBUF_BUFG;
  input [0:0]B;
  input [10:0]D;
  input [15:0]y_out_i;
  input [15:0]y_out_i_0;
  input [0:0]y_out_i_1;
  input [10:0]y_out_i_2;
  input [15:0]y_out_i_3;
  input [15:0]y_out_i_4;
  input [0:0]y_out_i_5;
  input [10:0]y_out_i_6;
  input [15:0]y_out_i_7;
  input [15:0]y_out_i_8;
  input [0:0]y_out_i_9;
  input [10:0]y_out_i_10;
  input [15:0]y_out_i_11;
  input [15:0]y_out_i_12;
  input s_aresetn;
  input [63:0]doutb;
  input [5:0]Q;
  input [6:0]sel;
  input \q_reg[8]_1 ;
  input \q_reg[8]_2 ;
  input \q_reg[8]_3 ;
  input \q_reg[8]_4 ;
  input \q_reg[8]_5 ;
  input \q_reg[8]_6 ;
  input \q_reg[8]_7 ;
  input \q_reg[8]_8 ;
  input \q_reg[8]_9 ;
  input \q_reg[6]_1 ;
  input \q_reg[6]_2 ;
  input \q_reg[6]_3 ;
  input \q_reg[6]_4 ;
  input \q_reg[6]_5 ;
  input \q_reg[6]_6 ;
  input \q_reg[6]_7 ;
  input \q_reg[6]_8 ;
  input \q_reg[6]_9 ;
  input \q_reg[6]_10 ;
  input \q_reg[6]_11 ;
  input \q_reg[6]_12 ;

  wire aresetn;
  wire s_aresetn;
  wire NLW_reg_y23_aclk_IBUF_BUFG_UNCONNECTED;
  wire [15:0]NLW_reg_y23_D_UNCONNECTED;
  wire [15:0]NLW_reg_y23_Q_UNCONNECTED;

  register__parameterized0_69 reg_y23
       (.D(NLW_reg_y23_D_UNCONNECTED[15:0]),
        .Q(NLW_reg_y23_Q_UNCONNECTED[15:0]),
        .aclk_IBUF_BUFG(NLW_reg_y23_aclk_IBUF_BUFG_UNCONNECTED),
        .aresetn(aresetn),
        .s_aresetn(s_aresetn));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "4" *) (* INIT = "0" *) 
(* INIT_SYNC_FF = "1" *) (* SIM_ASSERT_CHK = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SYNC_RST" *) 
module xpm_cdc_sync_rst
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [3:0]syncstages_ff;

  assign dest_rst = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "4" *) (* INIT = "0" *) 
(* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SYNC_RST" *) 
module xpm_cdc_sync_rst__2
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [3:0]syncstages_ff;

  assign dest_rst = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module xpm_counter_updn_78
   (S,
    DI,
    \count_value_i_reg[1]_0 ,
    Q,
    \gwdc.wr_data_count_i_reg[3] ,
    \count_value_i_reg[0]_0 ,
    rd_en,
    ram_empty_i,
    \count_value_i_reg[0]_1 ,
    wr_clk);
  output [1:0]S;
  output [0:0]DI;
  output \count_value_i_reg[1]_0 ;
  input [1:0]Q;
  input [1:0]\gwdc.wr_data_count_i_reg[3] ;
  input [1:0]\count_value_i_reg[0]_0 ;
  input rd_en;
  input ram_empty_i;
  input [0:0]\count_value_i_reg[0]_1 ;
  input wr_clk;

  wire [0:0]DI;
  wire [1:0]Q;
  wire [1:0]S;
  wire \count_value_i[0]_i_1_n_0 ;
  wire \count_value_i[1]_i_1_n_0 ;
  wire \count_value_i[1]_i_2_n_0 ;
  wire [1:0]\count_value_i_reg[0]_0 ;
  wire [0:0]\count_value_i_reg[0]_1 ;
  wire \count_value_i_reg[1]_0 ;
  wire \count_value_i_reg_n_0_[0] ;
  wire [1:0]\gwdc.wr_data_count_i_reg[3] ;
  wire ram_empty_i;
  wire rd_en;
  wire wr_clk;

  LUT6 #(
    .INIT(64'h000000005A88A655)) 
    \count_value_i[0]_i_1 
       (.I0(\count_value_i_reg_n_0_[0] ),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(rd_en),
        .I3(\count_value_i_reg[0]_0 [1]),
        .I4(ram_empty_i),
        .I5(\count_value_i_reg[0]_1 ),
        .O(\count_value_i[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000A8AA)) 
    \count_value_i[1]_i_1 
       (.I0(\count_value_i[1]_i_2_n_0 ),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(\count_value_i_reg[0]_0 [1]),
        .I3(ram_empty_i),
        .I4(\count_value_i_reg[0]_1 ),
        .O(\count_value_i[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFFFF755500008AA)) 
    \count_value_i[1]_i_2 
       (.I0(\count_value_i_reg_n_0_[0] ),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(rd_en),
        .I3(\count_value_i_reg[0]_0 [1]),
        .I4(ram_empty_i),
        .I5(\count_value_i_reg[1]_0 ),
        .O(\count_value_i[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\count_value_i[0]_i_1_n_0 ),
        .Q(\count_value_i_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\count_value_i[1]_i_1_n_0 ),
        .Q(\count_value_i_reg[1]_0 ),
        .R(1'b0));
  (* HLUTNM = "lutpair0" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \gwdc.wr_data_count_i[3]_i_4 
       (.I0(\count_value_i_reg_n_0_[0] ),
        .I1(Q[0]),
        .O(DI));
  LUT4 #(
    .INIT(16'h9669)) 
    \gwdc.wr_data_count_i[3]_i_7 
       (.I0(DI),
        .I1(Q[1]),
        .I2(\count_value_i_reg[1]_0 ),
        .I3(\gwdc.wr_data_count_i_reg[3] [1]),
        .O(S[1]));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \gwdc.wr_data_count_i[3]_i_8 
       (.I0(\count_value_i_reg_n_0_[0] ),
        .I1(Q[0]),
        .I2(\gwdc.wr_data_count_i_reg[3] [0]),
        .O(S[0]));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module xpm_counter_updn__parameterized0
   (DI,
    Q,
    S,
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ,
    leaving_empty0,
    \count_value_i_reg[2]_0 ,
    \count_value_i_reg[6]_0 ,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ,
    \gwdc.wr_data_count_i_reg[3] ,
    \gwdc.wr_data_count_i_reg[8] ,
    \count_value_i_reg[0]_0 ,
    rd_en,
    ram_empty_i,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ,
    clr_full,
    ram_wr_en_i,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg ,
    \count_value_i_reg[8]_0 ,
    wr_clk);
  output [0:0]DI;
  output [7:0]Q;
  output [0:0]S;
  output \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ;
  output leaving_empty0;
  output [0:0]\count_value_i_reg[2]_0 ;
  output [3:0]\count_value_i_reg[6]_0 ;
  output \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ;
  output \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ;
  input \gwdc.wr_data_count_i_reg[3] ;
  input [8:0]\gwdc.wr_data_count_i_reg[8] ;
  input [1:0]\count_value_i_reg[0]_0 ;
  input rd_en;
  input ram_empty_i;
  input [7:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ;
  input clr_full;
  input ram_wr_en_i;
  input \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg ;
  input [0:0]\count_value_i_reg[8]_0 ;
  input wr_clk;

  wire \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ;
  wire [7:0]Q;
  wire clr_full;
  wire \count_value_i[0]_i_1__1_n_0 ;
  wire \count_value_i[1]_i_1__1_n_0 ;
  wire \count_value_i[2]_i_1__1_n_0 ;
  wire \count_value_i[3]_i_1__1_n_0 ;
  wire \count_value_i[4]_i_1__1_n_0 ;
  wire \count_value_i[5]_i_1__1_n_0 ;
  wire \count_value_i[6]_i_1__1_n_0 ;
  wire \count_value_i[6]_i_2__1_n_0 ;
  wire \count_value_i[7]_i_1__1_n_0 ;
  wire \count_value_i[8]_i_2__0_n_0 ;
  wire [1:0]\count_value_i_reg[0]_0 ;
  wire [0:0]\count_value_i_reg[8]_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ;
  wire [7:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_7_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_8_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg ;
  wire going_full1;
  wire [8:0]\gwdc.wr_data_count_i_reg[8] ;
  wire leaving_empty0;
  wire ram_empty_i;
  wire ram_wr_en_i;
  wire rd_en;
  wire wr_clk;

  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h10EF)) 
    \count_value_i[0]_i_1__1 
       (.I0(rd_en),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(\count_value_i_reg[0]_0 [1]),
        .I3(Q[0]),
        .O(\count_value_i[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h02FFFD00)) 
    \count_value_i[1]_i_1__1 
       (.I0(\count_value_i_reg[0]_0 [1]),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(rd_en),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\count_value_i[1]_i_1__1_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__1 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2__1_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1__1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2__1_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAA200000000)) 
    \count_value_i[6]_i_2__1 
       (.I0(Q[1]),
        .I1(\count_value_i_reg[0]_0 [1]),
        .I2(\count_value_i_reg[0]_0 [0]),
        .I3(rd_en),
        .I4(ram_empty_i),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1__1 
       (.I0(Q[5]),
        .I1(\count_value_i[8]_i_2__0_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[8]_i_2__0 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[8]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[0]_i_1__1_n_0 ),
        .Q(Q[0]),
        .R(\count_value_i_reg[8]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[1]_i_1__1_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[8]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[2]_i_1__1_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[8]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[3]_i_1__1_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[8]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[4]_i_1__1_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[8]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[5]_i_1__1_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[8]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[6]_i_1__1_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[8]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[7]_i_1__1_n_0 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[8]_0 ));
  LUT6 #(
    .INIT(64'h000000003B2A2A2A)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_1 
       (.I0(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg ),
        .I1(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .I2(leaving_empty0),
        .I3(going_full1),
        .I4(ram_wr_en_i),
        .I5(clr_full),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ));
  LUT6 #(
    .INIT(64'hFFAAAAAAFFFFBFBF)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_1 
       (.I0(clr_full),
        .I1(ram_wr_en_i),
        .I2(going_full1),
        .I3(leaving_empty0),
        .I4(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .I5(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg ),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3 
       (.I0(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 [7]),
        .I1(Q[7]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 [6]),
        .I3(Q[6]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5_n_0 ),
        .I5(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6_n_0 ),
        .O(going_full1));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4 
       (.I0(\gwdc.wr_data_count_i_reg[8] [7]),
        .I1(Q[7]),
        .I2(\gwdc.wr_data_count_i_reg[8] [6]),
        .I3(Q[6]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_7_n_0 ),
        .I5(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_8_n_0 ),
        .O(leaving_empty0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 [3]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 [5]),
        .I3(Q[5]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 [4]),
        .I5(Q[4]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 [0]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 [2]),
        .I3(Q[2]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_7 
       (.I0(Q[3]),
        .I1(\gwdc.wr_data_count_i_reg[8] [3]),
        .I2(\gwdc.wr_data_count_i_reg[8] [5]),
        .I3(Q[5]),
        .I4(\gwdc.wr_data_count_i_reg[8] [4]),
        .I5(Q[4]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_8 
       (.I0(Q[0]),
        .I1(\gwdc.wr_data_count_i_reg[8] [0]),
        .I2(\gwdc.wr_data_count_i_reg[8] [2]),
        .I3(Q[2]),
        .I4(\gwdc.wr_data_count_i_reg[8] [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h00FD)) 
    \gen_sdpram.xpm_memory_base_inst_i_2 
       (.I0(\count_value_i_reg[0]_0 [1]),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(rd_en),
        .I3(ram_empty_i),
        .O(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module xpm_counter_updn__parameterized0_76
   (ram_empty_i0,
    Q,
    D,
    \gen_pntr_flags_cc.ram_empty_i_reg ,
    leaving_empty0,
    ram_wr_en_i,
    ram_empty_i,
    wr_en,
    \count_value_i_reg[5]_0 ,
    \count_value_i_reg[0]_0 ,
    rst_d1,
    \gen_pntr_flags_cc.ram_empty_i_reg_0 ,
    DI,
    S,
    \gwdc.wr_data_count_i_reg[7] ,
    \gwdc.wr_data_count_i_reg[8] ,
    \gwdc.wr_data_count_i_reg[3] ,
    \gwdc.wr_data_count_i_reg[7]_0 ,
    wr_clk);
  output ram_empty_i0;
  output [8:0]Q;
  output [8:0]D;
  input \gen_pntr_flags_cc.ram_empty_i_reg ;
  input leaving_empty0;
  input ram_wr_en_i;
  input ram_empty_i;
  input wr_en;
  input \count_value_i_reg[5]_0 ;
  input [0:0]\count_value_i_reg[0]_0 ;
  input rst_d1;
  input [7:0]\gen_pntr_flags_cc.ram_empty_i_reg_0 ;
  input [1:0]DI;
  input [2:0]S;
  input [3:0]\gwdc.wr_data_count_i_reg[7] ;
  input [0:0]\gwdc.wr_data_count_i_reg[8] ;
  input \gwdc.wr_data_count_i_reg[3] ;
  input [5:0]\gwdc.wr_data_count_i_reg[7]_0 ;
  input wr_clk;

  wire [8:0]Q;
  wire \count_value_i[0]_i_1_n_0 ;
  wire \count_value_i[1]_i_1_n_0 ;
  wire \count_value_i[2]_i_1_n_0 ;
  wire \count_value_i[3]_i_1_n_0 ;
  wire \count_value_i[4]_i_1_n_0 ;
  wire \count_value_i[5]_i_1__0_n_0 ;
  wire \count_value_i[6]_i_1__0_n_0 ;
  wire \count_value_i[6]_i_2__0_n_0 ;
  wire \count_value_i[7]_i_1__0_n_0 ;
  wire \count_value_i[8]_i_2_n_0 ;
  wire [0:0]\count_value_i_reg[0]_0 ;
  wire \count_value_i_reg[5]_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_4_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_reg ;
  wire [7:0]\gen_pntr_flags_cc.ram_empty_i_reg_0 ;
  wire going_empty1;
  wire leaving_empty0;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire ram_wr_en_i;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__0 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2__0_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1__0 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2__0_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \count_value_i[6]_i_2__0 
       (.I0(Q[1]),
        .I1(wr_en),
        .I2(\count_value_i_reg[5]_0 ),
        .I3(\count_value_i_reg[0]_0 ),
        .I4(rst_d1),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1__0 
       (.I0(Q[5]),
        .I1(\count_value_i[8]_i_2_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[8]_i_2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(ram_wr_en_i),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[8]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[5]_i_1__0_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[6]_i_1__0_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[7]_i_1__0_n_0 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[0]_0 ));
  LUT5 #(
    .INIT(32'h0FFF0088)) 
    \gen_pntr_flags_cc.ram_empty_i_i_1 
       (.I0(\gen_pntr_flags_cc.ram_empty_i_reg ),
        .I1(going_empty1),
        .I2(leaving_empty0),
        .I3(ram_wr_en_i),
        .I4(ram_empty_i),
        .O(ram_empty_i0));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \gen_pntr_flags_cc.ram_empty_i_i_2 
       (.I0(\gen_pntr_flags_cc.ram_empty_i_reg_0 [7]),
        .I1(Q[7]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_reg_0 [6]),
        .I3(Q[6]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ),
        .I5(\gen_pntr_flags_cc.ram_empty_i_i_4_n_0 ),
        .O(going_empty1));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_3 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_reg_0 [3]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_reg_0 [5]),
        .I3(Q[5]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_reg_0 [4]),
        .I5(Q[4]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_4 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_reg_0 [0]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_reg_0 [2]),
        .I3(Q[2]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_reg_0 [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_4_n_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module xpm_counter_updn__parameterized0_79
   (DI,
    Q,
    S,
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ,
    leaving_empty0,
    \count_value_i_reg[2]_0 ,
    \count_value_i_reg[6]_0 ,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ,
    \gwdc.wr_data_count_i_reg[3] ,
    \gwdc.wr_data_count_i_reg[8] ,
    \count_value_i_reg[0]_0 ,
    rd_en,
    ram_empty_i,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ,
    clr_full,
    ram_wr_en_i,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg ,
    \count_value_i_reg[8]_0 ,
    wr_clk);
  output [0:0]DI;
  output [7:0]Q;
  output [0:0]S;
  output \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ;
  output leaving_empty0;
  output [0:0]\count_value_i_reg[2]_0 ;
  output [3:0]\count_value_i_reg[6]_0 ;
  output \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ;
  output \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ;
  input \gwdc.wr_data_count_i_reg[3] ;
  input [8:0]\gwdc.wr_data_count_i_reg[8] ;
  input [1:0]\count_value_i_reg[0]_0 ;
  input rd_en;
  input ram_empty_i;
  input [7:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ;
  input clr_full;
  input ram_wr_en_i;
  input \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg ;
  input [0:0]\count_value_i_reg[8]_0 ;
  input wr_clk;

  wire [0:0]DI;
  wire \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ;
  wire [7:0]\^Q ;
  wire [0:0]S;
  wire clr_full;
  wire [8:8]count_value_i;
  wire \count_value_i[0]_i_1__1_n_0 ;
  wire \count_value_i[1]_i_1__1_n_0 ;
  wire \count_value_i[2]_i_1__1_n_0 ;
  wire \count_value_i[3]_i_1__1_n_0 ;
  wire \count_value_i[4]_i_1__1_n_0 ;
  wire \count_value_i[5]_i_1__1_n_0 ;
  wire \count_value_i[6]_i_1__1_n_0 ;
  wire \count_value_i[6]_i_2__1_n_0 ;
  wire \count_value_i[7]_i_1__1_n_0 ;
  wire \count_value_i[8]_i_1__0_n_0 ;
  wire \count_value_i[8]_i_2__0_n_0 ;
  wire [1:0]\count_value_i_reg[0]_0 ;
  wire [0:0]\count_value_i_reg[2]_0 ;
  wire [3:0]\count_value_i_reg[6]_0 ;
  wire [0:0]\count_value_i_reg[8]_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ;
  wire [7:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_7_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_8_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg ;
  wire going_full1;
  wire \gwdc.wr_data_count_i_reg[3] ;
  wire [8:0]\gwdc.wr_data_count_i_reg[8] ;
  wire leaving_empty0;
  wire ram_empty_i;
  wire ram_wr_en_i;
  wire rd_en;
  wire wr_clk;

  assign Q[6:0] = \^Q [6:0];
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h10EF)) 
    \count_value_i[0]_i_1__1 
       (.I0(rd_en),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(\count_value_i_reg[0]_0 [1]),
        .I3(\^Q [0]),
        .O(\count_value_i[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h02FFFD00)) 
    \count_value_i[1]_i_1__1 
       (.I0(\count_value_i_reg[0]_0 [1]),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(rd_en),
        .I3(\^Q [0]),
        .I4(\^Q [1]),
        .O(\count_value_i[1]_i_1__1_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__1 
       (.I0(\^Q [0]),
        .I1(\^Q [1]),
        .I2(\^Q [2]),
        .O(\count_value_i[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__1 
       (.I0(\^Q [1]),
        .I1(\^Q [0]),
        .I2(\^Q [2]),
        .I3(\^Q [3]),
        .O(\count_value_i[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__1 
       (.I0(\^Q [2]),
        .I1(\^Q [0]),
        .I2(\^Q [1]),
        .I3(\^Q [3]),
        .I4(\^Q [4]),
        .O(\count_value_i[4]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__1 
       (.I0(\^Q [3]),
        .I1(\count_value_i[6]_i_2__1_n_0 ),
        .I2(\^Q [2]),
        .I3(\^Q [4]),
        .I4(\^Q [5]),
        .O(\count_value_i[5]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1__1 
       (.I0(\^Q [4]),
        .I1(\^Q [2]),
        .I2(\count_value_i[6]_i_2__1_n_0 ),
        .I3(\^Q [3]),
        .I4(\^Q [5]),
        .I5(\^Q [6]),
        .O(\count_value_i[6]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAA200000000)) 
    \count_value_i[6]_i_2__1 
       (.I0(\^Q [1]),
        .I1(\count_value_i_reg[0]_0 [1]),
        .I2(\count_value_i_reg[0]_0 [0]),
        .I3(rd_en),
        .I4(ram_empty_i),
        .I5(\^Q [0]),
        .O(\count_value_i[6]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1__1 
       (.I0(\^Q [5]),
        .I1(\count_value_i[8]_i_2__0_n_0 ),
        .I2(\^Q [6]),
        .I3(\^Q [7]),
        .O(\count_value_i[7]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[8]_i_1__0 
       (.I0(\^Q [6]),
        .I1(\count_value_i[8]_i_2__0_n_0 ),
        .I2(\^Q [5]),
        .I3(\^Q [7]),
        .I4(count_value_i),
        .O(\count_value_i[8]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[8]_i_2__0 
       (.I0(\^Q [4]),
        .I1(\^Q [2]),
        .I2(\^Q [0]),
        .I3(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .I4(\^Q [1]),
        .I5(\^Q [3]),
        .O(\count_value_i[8]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[0]_i_1__1_n_0 ),
        .Q(\^Q [0]),
        .R(\count_value_i_reg[8]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[1]_i_1__1_n_0 ),
        .Q(\^Q [1]),
        .R(\count_value_i_reg[8]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[2]_i_1__1_n_0 ),
        .Q(\^Q [2]),
        .R(\count_value_i_reg[8]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[3]_i_1__1_n_0 ),
        .Q(\^Q [3]),
        .R(\count_value_i_reg[8]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[4]_i_1__1_n_0 ),
        .Q(\^Q [4]),
        .R(\count_value_i_reg[8]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[5]_i_1__1_n_0 ),
        .Q(\^Q [5]),
        .R(\count_value_i_reg[8]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[6]_i_1__1_n_0 ),
        .Q(\^Q [6]),
        .R(\count_value_i_reg[8]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[7]_i_1__1_n_0 ),
        .Q(\^Q [7]),
        .R(\count_value_i_reg[8]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[8]_i_1__0_n_0 ),
        .Q(count_value_i),
        .R(\count_value_i_reg[8]_0 ));
  LUT6 #(
    .INIT(64'h000000003B2A2A2A)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_1 
       (.I0(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg ),
        .I1(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .I2(leaving_empty0),
        .I3(going_full1),
        .I4(ram_wr_en_i),
        .I5(clr_full),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ));
  LUT6 #(
    .INIT(64'hFFAAAAAAFFFFBFBF)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_1 
       (.I0(clr_full),
        .I1(ram_wr_en_i),
        .I2(going_full1),
        .I3(leaving_empty0),
        .I4(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .I5(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg ),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3 
       (.I0(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 [7]),
        .I1(\^Q [7]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 [6]),
        .I3(\^Q [6]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5_n_0 ),
        .I5(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6_n_0 ),
        .O(going_full1));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4 
       (.I0(\gwdc.wr_data_count_i_reg[8] [7]),
        .I1(\^Q [7]),
        .I2(\gwdc.wr_data_count_i_reg[8] [6]),
        .I3(\^Q [6]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_7_n_0 ),
        .I5(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_8_n_0 ),
        .O(leaving_empty0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5 
       (.I0(\^Q [3]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 [3]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 [5]),
        .I3(\^Q [5]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 [4]),
        .I5(\^Q [4]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6 
       (.I0(\^Q [0]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 [0]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 [2]),
        .I3(\^Q [2]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 [1]),
        .I5(\^Q [1]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_7 
       (.I0(\^Q [3]),
        .I1(\gwdc.wr_data_count_i_reg[8] [3]),
        .I2(\gwdc.wr_data_count_i_reg[8] [5]),
        .I3(\^Q [5]),
        .I4(\gwdc.wr_data_count_i_reg[8] [4]),
        .I5(\^Q [4]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_8 
       (.I0(\^Q [0]),
        .I1(\gwdc.wr_data_count_i_reg[8] [0]),
        .I2(\gwdc.wr_data_count_i_reg[8] [2]),
        .I3(\^Q [2]),
        .I4(\gwdc.wr_data_count_i_reg[8] [1]),
        .I5(\^Q [1]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h00FD)) 
    \gen_sdpram.xpm_memory_base_inst_i_2 
       (.I0(\count_value_i_reg[0]_0 [1]),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(rd_en),
        .I3(ram_empty_i),
        .O(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ));
  LUT3 #(
    .INIT(8'hD4)) 
    \gwdc.wr_data_count_i[3]_i_3 
       (.I0(\^Q [1]),
        .I1(\gwdc.wr_data_count_i_reg[3] ),
        .I2(\gwdc.wr_data_count_i_reg[8] [1]),
        .O(DI));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gwdc.wr_data_count_i[3]_i_5 
       (.I0(\^Q [2]),
        .I1(\gwdc.wr_data_count_i_reg[8] [2]),
        .I2(\^Q [3]),
        .I3(\gwdc.wr_data_count_i_reg[8] [3]),
        .O(\count_value_i_reg[2]_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gwdc.wr_data_count_i[7]_i_6 
       (.I0(\^Q [6]),
        .I1(\gwdc.wr_data_count_i_reg[8] [6]),
        .I2(\^Q [7]),
        .I3(\gwdc.wr_data_count_i_reg[8] [7]),
        .O(\count_value_i_reg[6]_0 [3]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gwdc.wr_data_count_i[7]_i_7 
       (.I0(\^Q [5]),
        .I1(\gwdc.wr_data_count_i_reg[8] [5]),
        .I2(\^Q [6]),
        .I3(\gwdc.wr_data_count_i_reg[8] [6]),
        .O(\count_value_i_reg[6]_0 [2]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gwdc.wr_data_count_i[7]_i_8 
       (.I0(\^Q [4]),
        .I1(\gwdc.wr_data_count_i_reg[8] [4]),
        .I2(\^Q [5]),
        .I3(\gwdc.wr_data_count_i_reg[8] [5]),
        .O(\count_value_i_reg[6]_0 [1]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gwdc.wr_data_count_i[7]_i_9 
       (.I0(\^Q [3]),
        .I1(\gwdc.wr_data_count_i_reg[8] [3]),
        .I2(\^Q [4]),
        .I3(\gwdc.wr_data_count_i_reg[8] [4]),
        .O(\count_value_i_reg[6]_0 [0]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gwdc.wr_data_count_i[8]_i_2 
       (.I0(\^Q [7]),
        .I1(\gwdc.wr_data_count_i_reg[8] [7]),
        .I2(count_value_i),
        .I3(\gwdc.wr_data_count_i_reg[8] [8]),
        .O(S));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module xpm_counter_updn__parameterized0_82
   (ram_empty_i0,
    Q,
    D,
    \gen_pntr_flags_cc.ram_empty_i_reg ,
    leaving_empty0,
    ram_wr_en_i,
    ram_empty_i,
    wr_en,
    \count_value_i_reg[5]_0 ,
    \count_value_i_reg[0]_0 ,
    rst_d1,
    \gen_pntr_flags_cc.ram_empty_i_reg_0 ,
    DI,
    S,
    \gwdc.wr_data_count_i_reg[7] ,
    \gwdc.wr_data_count_i_reg[8] ,
    \gwdc.wr_data_count_i_reg[3] ,
    \gwdc.wr_data_count_i_reg[7]_0 ,
    wr_clk);
  output ram_empty_i0;
  output [8:0]Q;
  output [8:0]D;
  input \gen_pntr_flags_cc.ram_empty_i_reg ;
  input leaving_empty0;
  input ram_wr_en_i;
  input ram_empty_i;
  input wr_en;
  input \count_value_i_reg[5]_0 ;
  input [0:0]\count_value_i_reg[0]_0 ;
  input rst_d1;
  input [7:0]\gen_pntr_flags_cc.ram_empty_i_reg_0 ;
  input [1:0]DI;
  input [2:0]S;
  input [3:0]\gwdc.wr_data_count_i_reg[7] ;
  input [0:0]\gwdc.wr_data_count_i_reg[8] ;
  input \gwdc.wr_data_count_i_reg[3] ;
  input [5:0]\gwdc.wr_data_count_i_reg[7]_0 ;
  input wr_clk;

  wire [8:0]D;
  wire [1:0]DI;
  wire [8:0]Q;
  wire [2:0]S;
  wire \count_value_i[0]_i_1_n_0 ;
  wire \count_value_i[1]_i_1_n_0 ;
  wire \count_value_i[2]_i_1_n_0 ;
  wire \count_value_i[3]_i_1_n_0 ;
  wire \count_value_i[4]_i_1_n_0 ;
  wire \count_value_i[5]_i_1__0_n_0 ;
  wire \count_value_i[6]_i_1__0_n_0 ;
  wire \count_value_i[6]_i_2__0_n_0 ;
  wire \count_value_i[7]_i_1__0_n_0 ;
  wire \count_value_i[8]_i_1_n_0 ;
  wire \count_value_i[8]_i_2_n_0 ;
  wire [0:0]\count_value_i_reg[0]_0 ;
  wire \count_value_i_reg[5]_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_4_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_reg ;
  wire [7:0]\gen_pntr_flags_cc.ram_empty_i_reg_0 ;
  wire going_empty1;
  wire \gwdc.wr_data_count_i[3]_i_2_n_0 ;
  wire \gwdc.wr_data_count_i[3]_i_6_n_0 ;
  wire \gwdc.wr_data_count_i[7]_i_2_n_0 ;
  wire \gwdc.wr_data_count_i[7]_i_3_n_0 ;
  wire \gwdc.wr_data_count_i[7]_i_4_n_0 ;
  wire \gwdc.wr_data_count_i[7]_i_5_n_0 ;
  wire \gwdc.wr_data_count_i_reg[3] ;
  wire \gwdc.wr_data_count_i_reg[3]_i_1_n_0 ;
  wire [3:0]\gwdc.wr_data_count_i_reg[7] ;
  wire [5:0]\gwdc.wr_data_count_i_reg[7]_0 ;
  wire \gwdc.wr_data_count_i_reg[7]_i_1_n_0 ;
  wire [0:0]\gwdc.wr_data_count_i_reg[8] ;
  wire leaving_empty0;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire ram_wr_en_i;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;
  wire [2:0]\NLW_gwdc.wr_data_count_i_reg[3]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_gwdc.wr_data_count_i_reg[7]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_gwdc.wr_data_count_i_reg[8]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_gwdc.wr_data_count_i_reg[8]_i_1_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__0 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2__0_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1__0 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2__0_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \count_value_i[6]_i_2__0 
       (.I0(Q[1]),
        .I1(wr_en),
        .I2(\count_value_i_reg[5]_0 ),
        .I3(\count_value_i_reg[0]_0 ),
        .I4(rst_d1),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1__0 
       (.I0(Q[5]),
        .I1(\count_value_i[8]_i_2_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[8]_i_1 
       (.I0(Q[6]),
        .I1(\count_value_i[8]_i_2_n_0 ),
        .I2(Q[5]),
        .I3(Q[7]),
        .I4(Q[8]),
        .O(\count_value_i[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[8]_i_2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(ram_wr_en_i),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[8]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[5]_i_1__0_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[6]_i_1__0_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[7]_i_1__0_n_0 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[8]_i_1_n_0 ),
        .Q(Q[8]),
        .R(\count_value_i_reg[0]_0 ));
  LUT5 #(
    .INIT(32'h0FFF0088)) 
    \gen_pntr_flags_cc.ram_empty_i_i_1 
       (.I0(\gen_pntr_flags_cc.ram_empty_i_reg ),
        .I1(going_empty1),
        .I2(leaving_empty0),
        .I3(ram_wr_en_i),
        .I4(ram_empty_i),
        .O(ram_empty_i0));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \gen_pntr_flags_cc.ram_empty_i_i_2 
       (.I0(\gen_pntr_flags_cc.ram_empty_i_reg_0 [7]),
        .I1(Q[7]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_reg_0 [6]),
        .I3(Q[6]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ),
        .I5(\gen_pntr_flags_cc.ram_empty_i_i_4_n_0 ),
        .O(going_empty1));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_3 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_reg_0 [3]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_reg_0 [5]),
        .I3(Q[5]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_reg_0 [4]),
        .I5(Q[4]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_4 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_reg_0 [0]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_reg_0 [2]),
        .I3(Q[2]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_reg_0 [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gwdc.wr_data_count_i[3]_i_2 
       (.I0(Q[2]),
        .I1(\gwdc.wr_data_count_i_reg[7]_0 [1]),
        .O(\gwdc.wr_data_count_i[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h718E8E71)) 
    \gwdc.wr_data_count_i[3]_i_6 
       (.I0(Q[1]),
        .I1(\gwdc.wr_data_count_i_reg[3] ),
        .I2(\gwdc.wr_data_count_i_reg[7]_0 [0]),
        .I3(\gwdc.wr_data_count_i_reg[7]_0 [1]),
        .I4(Q[2]),
        .O(\gwdc.wr_data_count_i[3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gwdc.wr_data_count_i[7]_i_2 
       (.I0(Q[6]),
        .I1(\gwdc.wr_data_count_i_reg[7]_0 [5]),
        .O(\gwdc.wr_data_count_i[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gwdc.wr_data_count_i[7]_i_3 
       (.I0(Q[5]),
        .I1(\gwdc.wr_data_count_i_reg[7]_0 [4]),
        .O(\gwdc.wr_data_count_i[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gwdc.wr_data_count_i[7]_i_4 
       (.I0(Q[4]),
        .I1(\gwdc.wr_data_count_i_reg[7]_0 [3]),
        .O(\gwdc.wr_data_count_i[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gwdc.wr_data_count_i[7]_i_5 
       (.I0(Q[3]),
        .I1(\gwdc.wr_data_count_i_reg[7]_0 [2]),
        .O(\gwdc.wr_data_count_i[7]_i_5_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \gwdc.wr_data_count_i_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\gwdc.wr_data_count_i_reg[3]_i_1_n_0 ,\NLW_gwdc.wr_data_count_i_reg[3]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\gwdc.wr_data_count_i[3]_i_2_n_0 ,DI,Q[0]}),
        .O(D[3:0]),
        .S({S[2],\gwdc.wr_data_count_i[3]_i_6_n_0 ,S[1:0]}));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \gwdc.wr_data_count_i_reg[7]_i_1 
       (.CI(\gwdc.wr_data_count_i_reg[3]_i_1_n_0 ),
        .CO({\gwdc.wr_data_count_i_reg[7]_i_1_n_0 ,\NLW_gwdc.wr_data_count_i_reg[7]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\gwdc.wr_data_count_i[7]_i_2_n_0 ,\gwdc.wr_data_count_i[7]_i_3_n_0 ,\gwdc.wr_data_count_i[7]_i_4_n_0 ,\gwdc.wr_data_count_i[7]_i_5_n_0 }),
        .O(D[7:4]),
        .S(\gwdc.wr_data_count_i_reg[7] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gwdc.wr_data_count_i_reg[8]_i_1 
       (.CI(\gwdc.wr_data_count_i_reg[7]_i_1_n_0 ),
        .CO(\NLW_gwdc.wr_data_count_i_reg[8]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_gwdc.wr_data_count_i_reg[8]_i_1_O_UNCONNECTED [3:1],D[8]}),
        .S({1'b0,1'b0,1'b0,\gwdc.wr_data_count_i_reg[8] }));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module xpm_counter_updn__parameterized1
   (Q,
    \count_value_i_reg[0]_0 ,
    \count_value_i_reg[1]_0 ,
    rd_en,
    ram_empty_i,
    \count_value_i_reg[1]_1 ,
    wr_clk);
  output [7:0]Q;
  input \count_value_i_reg[0]_0 ;
  input [1:0]\count_value_i_reg[1]_0 ;
  input rd_en;
  input ram_empty_i;
  input [0:0]\count_value_i_reg[1]_1 ;
  input wr_clk;

  wire [7:0]Q;
  wire \count_value_i[0]_i_1__2_n_0 ;
  wire \count_value_i[1]_i_1__2_n_0 ;
  wire \count_value_i[2]_i_1__2_n_0 ;
  wire \count_value_i[3]_i_1__2_n_0 ;
  wire \count_value_i[4]_i_1__2_n_0 ;
  wire \count_value_i[5]_i_1__2_n_0 ;
  wire \count_value_i[6]_i_1__2_n_0 ;
  wire \count_value_i[6]_i_2__2_n_0 ;
  wire \count_value_i[7]_i_1__2_n_0 ;
  wire \count_value_i[7]_i_2__0_n_0 ;
  wire \count_value_i_reg[0]_0 ;
  wire [1:0]\count_value_i_reg[1]_0 ;
  wire [0:0]\count_value_i_reg[1]_1 ;
  wire ram_empty_i;
  wire rd_en;
  wire wr_clk;

  LUT4 #(
    .INIT(16'h10EF)) 
    \count_value_i[0]_i_1__2 
       (.I0(rd_en),
        .I1(\count_value_i_reg[1]_0 [0]),
        .I2(\count_value_i_reg[1]_0 [1]),
        .I3(Q[0]),
        .O(\count_value_i[0]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'h02FFFD00)) 
    \count_value_i[1]_i_1__2 
       (.I0(\count_value_i_reg[1]_0 [1]),
        .I1(\count_value_i_reg[1]_0 [0]),
        .I2(rd_en),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\count_value_i[1]_i_1__2_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__2 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2__2_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1__2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2__2_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAA200000000)) 
    \count_value_i[6]_i_2__2 
       (.I0(Q[1]),
        .I1(\count_value_i_reg[1]_0 [1]),
        .I2(\count_value_i_reg[1]_0 [0]),
        .I3(rd_en),
        .I4(ram_empty_i),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2__2_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1__2 
       (.I0(Q[5]),
        .I1(\count_value_i[7]_i_2__0_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[7]_i_2__0 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(\count_value_i_reg[0]_0 ),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[7]_i_2__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[0]_i_1__2_n_0 ),
        .Q(Q[0]),
        .S(\count_value_i_reg[1]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[1]_i_1__2_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[1]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[2]_i_1__2_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[1]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[3]_i_1__2_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[1]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[4]_i_1__2_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[1]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[5]_i_1__2_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[1]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[6]_i_1__2_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[1]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[7]_i_1__2_n_0 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[1]_1 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module xpm_counter_updn__parameterized1_77
   (Q,
    ram_wr_en_i,
    wr_en,
    \count_value_i_reg[5]_0 ,
    \count_value_i_reg[1]_0 ,
    rst_d1,
    wr_clk);
  output [7:0]Q;
  input ram_wr_en_i;
  input wr_en;
  input \count_value_i_reg[5]_0 ;
  input [0:0]\count_value_i_reg[1]_0 ;
  input rst_d1;
  input wr_clk;

  wire [7:0]Q;
  wire \count_value_i[0]_i_1__0_n_0 ;
  wire \count_value_i[1]_i_1__0_n_0 ;
  wire \count_value_i[2]_i_1__0_n_0 ;
  wire \count_value_i[3]_i_1__0_n_0 ;
  wire \count_value_i[4]_i_1__0_n_0 ;
  wire \count_value_i[5]_i_1_n_0 ;
  wire \count_value_i[6]_i_1_n_0 ;
  wire \count_value_i[6]_i_2_n_0 ;
  wire \count_value_i[7]_i_1_n_0 ;
  wire \count_value_i[7]_i_2_n_0 ;
  wire [0:0]\count_value_i_reg[1]_0 ;
  wire \count_value_i_reg[5]_0 ;
  wire ram_wr_en_i;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__0 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \count_value_i[6]_i_2 
       (.I0(Q[1]),
        .I1(wr_en),
        .I2(\count_value_i_reg[5]_0 ),
        .I3(\count_value_i_reg[1]_0 ),
        .I4(rst_d1),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1 
       (.I0(Q[5]),
        .I1(\count_value_i[7]_i_2_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[7]_i_2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(ram_wr_en_i),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[7]_i_2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[0]_i_1__0_n_0 ),
        .Q(Q[0]),
        .S(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[1]_i_1__0_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[2]_i_1__0_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[3]_i_1__0_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[4]_i_1__0_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[6]_i_1_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[7]_i_1_n_0 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[1]_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module xpm_counter_updn__parameterized1_80
   (Q,
    \count_value_i_reg[0]_0 ,
    \count_value_i_reg[1]_0 ,
    rd_en,
    ram_empty_i,
    \count_value_i_reg[1]_1 ,
    wr_clk);
  output [7:0]Q;
  input \count_value_i_reg[0]_0 ;
  input [1:0]\count_value_i_reg[1]_0 ;
  input rd_en;
  input ram_empty_i;
  input [0:0]\count_value_i_reg[1]_1 ;
  input wr_clk;

  wire [7:0]Q;
  wire \count_value_i[0]_i_1__2_n_0 ;
  wire \count_value_i[1]_i_1__2_n_0 ;
  wire \count_value_i[2]_i_1__2_n_0 ;
  wire \count_value_i[3]_i_1__2_n_0 ;
  wire \count_value_i[4]_i_1__2_n_0 ;
  wire \count_value_i[5]_i_1__2_n_0 ;
  wire \count_value_i[6]_i_1__2_n_0 ;
  wire \count_value_i[6]_i_2__2_n_0 ;
  wire \count_value_i[7]_i_1__2_n_0 ;
  wire \count_value_i[7]_i_2__0_n_0 ;
  wire \count_value_i_reg[0]_0 ;
  wire [1:0]\count_value_i_reg[1]_0 ;
  wire [0:0]\count_value_i_reg[1]_1 ;
  wire ram_empty_i;
  wire rd_en;
  wire wr_clk;

  LUT4 #(
    .INIT(16'h10EF)) 
    \count_value_i[0]_i_1__2 
       (.I0(rd_en),
        .I1(\count_value_i_reg[1]_0 [0]),
        .I2(\count_value_i_reg[1]_0 [1]),
        .I3(Q[0]),
        .O(\count_value_i[0]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'h02FFFD00)) 
    \count_value_i[1]_i_1__2 
       (.I0(\count_value_i_reg[1]_0 [1]),
        .I1(\count_value_i_reg[1]_0 [0]),
        .I2(rd_en),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\count_value_i[1]_i_1__2_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__2 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2__2_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1__2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2__2_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAA200000000)) 
    \count_value_i[6]_i_2__2 
       (.I0(Q[1]),
        .I1(\count_value_i_reg[1]_0 [1]),
        .I2(\count_value_i_reg[1]_0 [0]),
        .I3(rd_en),
        .I4(ram_empty_i),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2__2_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1__2 
       (.I0(Q[5]),
        .I1(\count_value_i[7]_i_2__0_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[7]_i_2__0 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(\count_value_i_reg[0]_0 ),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[7]_i_2__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[0]_i_1__2_n_0 ),
        .Q(Q[0]),
        .S(\count_value_i_reg[1]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[1]_i_1__2_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[1]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[2]_i_1__2_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[1]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[3]_i_1__2_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[1]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[4]_i_1__2_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[1]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[5]_i_1__2_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[1]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[6]_i_1__2_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[1]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[7]_i_1__2_n_0 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[1]_1 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module xpm_counter_updn__parameterized1_83
   (Q,
    ram_wr_en_i,
    wr_en,
    \count_value_i_reg[5]_0 ,
    \count_value_i_reg[1]_0 ,
    rst_d1,
    wr_clk);
  output [7:0]Q;
  input ram_wr_en_i;
  input wr_en;
  input \count_value_i_reg[5]_0 ;
  input [0:0]\count_value_i_reg[1]_0 ;
  input rst_d1;
  input wr_clk;

  wire [7:0]Q;
  wire \count_value_i[0]_i_1__0_n_0 ;
  wire \count_value_i[1]_i_1__0_n_0 ;
  wire \count_value_i[2]_i_1__0_n_0 ;
  wire \count_value_i[3]_i_1__0_n_0 ;
  wire \count_value_i[4]_i_1__0_n_0 ;
  wire \count_value_i[5]_i_1_n_0 ;
  wire \count_value_i[6]_i_1_n_0 ;
  wire \count_value_i[6]_i_2_n_0 ;
  wire \count_value_i[7]_i_1_n_0 ;
  wire \count_value_i[7]_i_2_n_0 ;
  wire [0:0]\count_value_i_reg[1]_0 ;
  wire \count_value_i_reg[5]_0 ;
  wire ram_wr_en_i;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__0 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \count_value_i[6]_i_2 
       (.I0(Q[1]),
        .I1(wr_en),
        .I2(\count_value_i_reg[5]_0 ),
        .I3(\count_value_i_reg[1]_0 ),
        .I4(rst_d1),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1 
       (.I0(Q[5]),
        .I1(\count_value_i[7]_i_2_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[7]_i_2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(ram_wr_en_i),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[7]_i_2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[0]_i_1__0_n_0 ),
        .Q(Q[0]),
        .S(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[1]_i_1__0_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[2]_i_1__0_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[3]_i_1__0_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[4]_i_1__0_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[6]_i_1_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[7]_i_1_n_0 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[1]_0 ));
endmodule

(* AXIS_DATA_WIDTH = "84" *) (* AXIS_FINAL_DATA_WIDTH = "84" *) (* CASCADE_HEIGHT = "0" *) 
(* CDC_SYNC_STAGES = "2" *) (* CLOCKING_MODE = "common_clock" *) (* ECC_MODE = "no_ecc" *) 
(* EN_ADV_FEATURE_AXIS = "16'b0000000000000100" *) (* EN_ADV_FEATURE_AXIS_INT = "16'b0001000000000100" *) (* EN_ALMOST_EMPTY_INT = "1'b0" *) 
(* EN_ALMOST_FULL_INT = "1'b0" *) (* EN_DATA_VALID_INT = "1'b1" *) (* FIFO_DEPTH = "256" *) 
(* FIFO_MEMORY_TYPE = "auto" *) (* LOG_DEPTH_AXIS = "8" *) (* PACKET_FIFO = "false" *) 
(* PKT_SIZE_LT8 = "1'b0" *) (* PROG_EMPTY_THRESH = "10" *) (* PROG_FULL_THRESH = "10" *) 
(* P_COMMON_CLOCK = "1" *) (* P_ECC_MODE = "0" *) (* P_FIFO_MEMORY_TYPE = "0" *) 
(* P_PKT_MODE = "0" *) (* RD_DATA_COUNT_WIDTH = "1" *) (* RELATED_CLOCKS = "0" *) 
(* SIM_ASSERT_CHK = "0" *) (* TDATA_OFFSET = "64" *) (* TDATA_WIDTH = "64" *) 
(* TDEST_OFFSET = "82" *) (* TDEST_WIDTH = "1" *) (* TID_OFFSET = "81" *) 
(* TID_WIDTH = "1" *) (* TKEEP_OFFSET = "80" *) (* TSTRB_OFFSET = "72" *) 
(* TUSER_MAX_WIDTH = "4013" *) (* TUSER_OFFSET = "83" *) (* TUSER_WIDTH = "1" *) 
(* USE_ADV_FEATURES = "0004" *) (* USE_ADV_FEATURES_INT = "825241652" *) (* WR_DATA_COUNT_WIDTH = "9" *) 
(* XPM_MODULE = "TRUE" *) (* dont_touch = "true" *) 
module xpm_fifo_axis
   (s_aresetn,
    s_aclk,
    m_aclk,
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
    prog_full_axis,
    wr_data_count_axis,
    almost_full_axis,
    prog_empty_axis,
    rd_data_count_axis,
    almost_empty_axis,
    injectsbiterr_axis,
    injectdbiterr_axis,
    sbiterr_axis,
    dbiterr_axis);
  input s_aresetn;
  input s_aclk;
  input m_aclk;
  input s_axis_tvalid;
  output s_axis_tready;
  input [63:0]s_axis_tdata;
  input [7:0]s_axis_tstrb;
  input [7:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [0:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [63:0]m_axis_tdata;
  output [7:0]m_axis_tstrb;
  output [7:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [0:0]m_axis_tuser;
  output prog_full_axis;
  output [8:0]wr_data_count_axis;
  output almost_full_axis;
  output prog_empty_axis;
  output [0:0]rd_data_count_axis;
  output almost_empty_axis;
  input injectsbiterr_axis;
  input injectdbiterr_axis;
  output sbiterr_axis;
  output dbiterr_axis;

  wire \gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1_n_0 ;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire rst_axis;
  wire s_aclk;
  wire s_aresetn;
  wire [0:0]s_axis_tdest;
  wire [0:0]s_axis_tid;
  wire [7:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire [0:0]s_axis_tuser;
  wire s_axis_tvalid;
  wire xpm_fifo_base_inst_i_1_n_0;
  wire NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_full_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_injectdbiterr_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_injectsbiterr_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_overflow_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_prog_full_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_rd_clk_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_sleep_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_underflow_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED;
  wire [71:0]NLW_xpm_fifo_base_inst_din_UNCONNECTED;
  wire [82:0]NLW_xpm_fifo_base_inst_dout_UNCONNECTED;
  wire [0:0]NLW_xpm_fifo_base_inst_rd_data_count_UNCONNECTED;
  wire [8:0]NLW_xpm_fifo_base_inst_wr_data_count_UNCONNECTED;

  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "4" *) 
  (* INIT = "0" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* KEEP_HIERARCHY = "true" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  xpm_cdc_sync_rst \gaxis_rst_sync.xpm_cdc_sync_rst_inst 
       (.dest_clk(s_aclk),
        .dest_rst(rst_axis),
        .src_rst(\gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1 
       (.I0(s_aresetn),
        .O(\gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1_n_0 ));
  (* CASCADE_HEIGHT = "0" *) 
  (* CDC_DEST_SYNC_FF = "2" *) 
  (* COMMON_CLOCK = "1" *) 
  (* DOUT_RESET_VALUE = "" *) 
  (* ECC_MODE = "0" *) 
  (* ENABLE_ECC = "0" *) 
  (* EN_ADV_FEATURE = "16'b0001000000000100" *) 
  (* EN_AE = "1'b0" *) 
  (* EN_AF = "1'b0" *) 
  (* EN_DVLD = "1'b1" *) 
  (* EN_OF = "1'b0" *) 
  (* EN_PE = "1'b0" *) 
  (* EN_PF = "1'b0" *) 
  (* EN_RDC = "1'b0" *) 
  (* EN_UF = "1'b0" *) 
  (* EN_WACK = "1'b0" *) 
  (* EN_WDC = "1'b1" *) 
  (* FG_EQ_ASYM_DOUT = "1'b0" *) 
  (* FIFO_MEMORY_TYPE = "0" *) 
  (* FIFO_MEM_TYPE = "0" *) 
  (* FIFO_READ_DEPTH = "256" *) 
  (* FIFO_READ_LATENCY = "0" *) 
  (* FIFO_SIZE = "21504" *) 
  (* FIFO_WRITE_DEPTH = "256" *) 
  (* FULL_RESET_VALUE = "1" *) 
  (* FULL_RST_VAL = "1'b1" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* PE_THRESH_ADJ = "8" *) 
  (* PE_THRESH_MAX = "251" *) 
  (* PE_THRESH_MIN = "5" *) 
  (* PF_THRESH_ADJ = "8" *) 
  (* PF_THRESH_MAX = "251" *) 
  (* PF_THRESH_MIN = "5" *) 
  (* PROG_EMPTY_THRESH = "10" *) 
  (* PROG_FULL_THRESH = "10" *) 
  (* RD_DATA_COUNT_WIDTH = "1" *) 
  (* RD_DC_WIDTH_EXT = "9" *) 
  (* RD_LATENCY = "2" *) 
  (* RD_MODE = "1" *) 
  (* RD_PNTR_WIDTH = "8" *) 
  (* READ_DATA_WIDTH = "84" *) 
  (* READ_MODE = "1" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "825241652" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WIDTH_RATIO = "1" *) 
  (* WRITE_DATA_WIDTH = "84" *) 
  (* WR_DATA_COUNT_WIDTH = "9" *) 
  (* WR_DC_WIDTH_EXT = "9" *) 
  (* WR_DEPTH_LOG = "8" *) 
  (* WR_PNTR_WIDTH = "8" *) 
  (* WR_RD_RATIO = "0" *) 
  (* WR_WIDTH_LOG = "7" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* both_stages_valid = "3" *) 
  (* invalid = "0" *) 
  (* stage1_valid = "2" *) 
  (* stage2_valid = "1" *) 
  xpm_fifo_base xpm_fifo_base_inst
       (.almost_empty(NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED),
        .almost_full(NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED),
        .data_valid(m_axis_tvalid),
        .dbiterr(NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED),
        .din({s_axis_tlast,s_axis_tuser,s_axis_tdest,s_axis_tid,s_axis_tkeep,NLW_xpm_fifo_base_inst_din_UNCONNECTED[71:0]}),
        .dout({m_axis_tlast,NLW_xpm_fifo_base_inst_dout_UNCONNECTED[82:0]}),
        .empty(NLW_xpm_fifo_base_inst_empty_UNCONNECTED),
        .full(NLW_xpm_fifo_base_inst_full_UNCONNECTED),
        .full_n(s_axis_tready),
        .injectdbiterr(NLW_xpm_fifo_base_inst_injectdbiterr_UNCONNECTED),
        .injectsbiterr(NLW_xpm_fifo_base_inst_injectsbiterr_UNCONNECTED),
        .overflow(NLW_xpm_fifo_base_inst_overflow_UNCONNECTED),
        .prog_empty(NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED),
        .prog_full(NLW_xpm_fifo_base_inst_prog_full_UNCONNECTED),
        .rd_clk(NLW_xpm_fifo_base_inst_rd_clk_UNCONNECTED),
        .rd_data_count(NLW_xpm_fifo_base_inst_rd_data_count_UNCONNECTED[0]),
        .rd_en(xpm_fifo_base_inst_i_1_n_0),
        .rd_rst_busy(NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED),
        .rst(rst_axis),
        .sbiterr(NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED),
        .sleep(NLW_xpm_fifo_base_inst_sleep_UNCONNECTED),
        .underflow(NLW_xpm_fifo_base_inst_underflow_UNCONNECTED),
        .wr_ack(NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED),
        .wr_clk(s_aclk),
        .wr_data_count(NLW_xpm_fifo_base_inst_wr_data_count_UNCONNECTED[8:0]),
        .wr_en(s_axis_tvalid),
        .wr_rst_busy(NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED));
  LUT2 #(
    .INIT(4'h8)) 
    xpm_fifo_base_inst_i_1
       (.I0(m_axis_tvalid),
        .I1(m_axis_tready),
        .O(xpm_fifo_base_inst_i_1_n_0));
endmodule

(* AXIS_DATA_WIDTH = "84" *) (* AXIS_FINAL_DATA_WIDTH = "84" *) (* CASCADE_HEIGHT = "0" *) 
(* CDC_SYNC_STAGES = "2" *) (* CLOCKING_MODE = "common_clock" *) (* ECC_MODE = "no_ecc" *) 
(* EN_ADV_FEATURE_AXIS = "16'b0000000000000100" *) (* EN_ADV_FEATURE_AXIS_INT = "16'b0001000000000100" *) (* EN_ALMOST_EMPTY_INT = "1'b0" *) 
(* EN_ALMOST_FULL_INT = "1'b0" *) (* EN_DATA_VALID_INT = "1'b1" *) (* FIFO_DEPTH = "256" *) 
(* FIFO_MEMORY_TYPE = "auto" *) (* LOG_DEPTH_AXIS = "8" *) (* ORIG_REF_NAME = "xpm_fifo_axis" *) 
(* PACKET_FIFO = "false" *) (* PKT_SIZE_LT8 = "1'b0" *) (* PROG_EMPTY_THRESH = "10" *) 
(* PROG_FULL_THRESH = "10" *) (* P_COMMON_CLOCK = "1" *) (* P_ECC_MODE = "0" *) 
(* P_FIFO_MEMORY_TYPE = "0" *) (* P_PKT_MODE = "0" *) (* RD_DATA_COUNT_WIDTH = "1" *) 
(* RELATED_CLOCKS = "0" *) (* SIM_ASSERT_CHK = "0" *) (* TDATA_OFFSET = "64" *) 
(* TDATA_WIDTH = "64" *) (* TDEST_OFFSET = "82" *) (* TDEST_WIDTH = "1" *) 
(* TID_OFFSET = "81" *) (* TID_WIDTH = "1" *) (* TKEEP_OFFSET = "80" *) 
(* TSTRB_OFFSET = "72" *) (* TUSER_MAX_WIDTH = "4013" *) (* TUSER_OFFSET = "83" *) 
(* TUSER_WIDTH = "1" *) (* USE_ADV_FEATURES = "0004" *) (* USE_ADV_FEATURES_INT = "825241652" *) 
(* WR_DATA_COUNT_WIDTH = "9" *) (* XPM_MODULE = "TRUE" *) (* dont_touch = "true" *) 
module xpm_fifo_axis__xdcDup__1
   (s_aresetn,
    s_aclk,
    m_aclk,
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
    prog_full_axis,
    wr_data_count_axis,
    almost_full_axis,
    prog_empty_axis,
    rd_data_count_axis,
    almost_empty_axis,
    injectsbiterr_axis,
    injectdbiterr_axis,
    sbiterr_axis,
    dbiterr_axis);
  input s_aresetn;
  input s_aclk;
  input m_aclk;
  input s_axis_tvalid;
  output s_axis_tready;
  input [63:0]s_axis_tdata;
  input [7:0]s_axis_tstrb;
  input [7:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [0:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [63:0]m_axis_tdata;
  output [7:0]m_axis_tstrb;
  output [7:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [0:0]m_axis_tuser;
  output prog_full_axis;
  output [8:0]wr_data_count_axis;
  output almost_full_axis;
  output prog_empty_axis;
  output [0:0]rd_data_count_axis;
  output almost_empty_axis;
  input injectsbiterr_axis;
  input injectdbiterr_axis;
  output sbiterr_axis;
  output dbiterr_axis;

  wire \gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1_n_0 ;
  wire m_axis_tready;
  wire \^m_axis_tvalid ;
  wire rst_axis;
  wire s_aclk;
  wire s_aresetn;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire [8:0]wr_data_count_axis;
  wire xpm_fifo_base_inst_i_1_n_0;
  wire NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_full_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_injectdbiterr_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_injectsbiterr_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_overflow_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_prog_full_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_rd_clk_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_sleep_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_underflow_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED;
  wire [83:0]NLW_xpm_fifo_base_inst_din_UNCONNECTED;
  wire [83:0]NLW_xpm_fifo_base_inst_dout_UNCONNECTED;
  wire [0:0]NLW_xpm_fifo_base_inst_rd_data_count_UNCONNECTED;

  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "4" *) 
  (* INIT = "0" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* KEEP_HIERARCHY = "true" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  xpm_cdc_sync_rst__2 \gaxis_rst_sync.xpm_cdc_sync_rst_inst 
       (.dest_clk(s_aclk),
        .dest_rst(rst_axis),
        .src_rst(\gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1 
       (.I0(s_aresetn),
        .O(\gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1_n_0 ));
  (* CASCADE_HEIGHT = "0" *) 
  (* CDC_DEST_SYNC_FF = "2" *) 
  (* COMMON_CLOCK = "1" *) 
  (* DOUT_RESET_VALUE = "" *) 
  (* ECC_MODE = "0" *) 
  (* ENABLE_ECC = "0" *) 
  (* EN_ADV_FEATURE = "16'b0001000000000100" *) 
  (* EN_AE = "1'b0" *) 
  (* EN_AF = "1'b0" *) 
  (* EN_DVLD = "1'b1" *) 
  (* EN_OF = "1'b0" *) 
  (* EN_PE = "1'b0" *) 
  (* EN_PF = "1'b0" *) 
  (* EN_RDC = "1'b0" *) 
  (* EN_UF = "1'b0" *) 
  (* EN_WACK = "1'b0" *) 
  (* EN_WDC = "1'b1" *) 
  (* FG_EQ_ASYM_DOUT = "1'b0" *) 
  (* FIFO_MEMORY_TYPE = "0" *) 
  (* FIFO_MEM_TYPE = "0" *) 
  (* FIFO_READ_DEPTH = "256" *) 
  (* FIFO_READ_LATENCY = "0" *) 
  (* FIFO_SIZE = "21504" *) 
  (* FIFO_WRITE_DEPTH = "256" *) 
  (* FULL_RESET_VALUE = "1" *) 
  (* FULL_RST_VAL = "1'b1" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* PE_THRESH_ADJ = "8" *) 
  (* PE_THRESH_MAX = "251" *) 
  (* PE_THRESH_MIN = "5" *) 
  (* PF_THRESH_ADJ = "8" *) 
  (* PF_THRESH_MAX = "251" *) 
  (* PF_THRESH_MIN = "5" *) 
  (* PROG_EMPTY_THRESH = "10" *) 
  (* PROG_FULL_THRESH = "10" *) 
  (* RD_DATA_COUNT_WIDTH = "1" *) 
  (* RD_DC_WIDTH_EXT = "9" *) 
  (* RD_LATENCY = "2" *) 
  (* RD_MODE = "1" *) 
  (* RD_PNTR_WIDTH = "8" *) 
  (* READ_DATA_WIDTH = "84" *) 
  (* READ_MODE = "1" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "825241652" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WIDTH_RATIO = "1" *) 
  (* WRITE_DATA_WIDTH = "84" *) 
  (* WR_DATA_COUNT_WIDTH = "9" *) 
  (* WR_DC_WIDTH_EXT = "9" *) 
  (* WR_DEPTH_LOG = "8" *) 
  (* WR_PNTR_WIDTH = "8" *) 
  (* WR_RD_RATIO = "0" *) 
  (* WR_WIDTH_LOG = "7" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* both_stages_valid = "3" *) 
  (* invalid = "0" *) 
  (* stage1_valid = "2" *) 
  (* stage2_valid = "1" *) 
  xpm_fifo_base__2 xpm_fifo_base_inst
       (.almost_empty(NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED),
        .almost_full(NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED),
        .data_valid(\^m_axis_tvalid ),
        .dbiterr(NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED),
        .din(NLW_xpm_fifo_base_inst_din_UNCONNECTED[83:0]),
        .dout(NLW_xpm_fifo_base_inst_dout_UNCONNECTED[83:0]),
        .empty(NLW_xpm_fifo_base_inst_empty_UNCONNECTED),
        .full(NLW_xpm_fifo_base_inst_full_UNCONNECTED),
        .full_n(s_axis_tready),
        .injectdbiterr(NLW_xpm_fifo_base_inst_injectdbiterr_UNCONNECTED),
        .injectsbiterr(NLW_xpm_fifo_base_inst_injectsbiterr_UNCONNECTED),
        .overflow(NLW_xpm_fifo_base_inst_overflow_UNCONNECTED),
        .prog_empty(NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED),
        .prog_full(NLW_xpm_fifo_base_inst_prog_full_UNCONNECTED),
        .rd_clk(NLW_xpm_fifo_base_inst_rd_clk_UNCONNECTED),
        .rd_data_count(NLW_xpm_fifo_base_inst_rd_data_count_UNCONNECTED[0]),
        .rd_en(xpm_fifo_base_inst_i_1_n_0),
        .rd_rst_busy(NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED),
        .rst(rst_axis),
        .sbiterr(NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED),
        .sleep(NLW_xpm_fifo_base_inst_sleep_UNCONNECTED),
        .underflow(NLW_xpm_fifo_base_inst_underflow_UNCONNECTED),
        .wr_ack(NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED),
        .wr_clk(s_aclk),
        .wr_data_count(wr_data_count_axis),
        .wr_en(s_axis_tvalid),
        .wr_rst_busy(NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED));
  LUT2 #(
    .INIT(4'h8)) 
    xpm_fifo_base_inst_i_1
       (.I0(\^m_axis_tvalid ),
        .I1(m_axis_tready),
        .O(xpm_fifo_base_inst_i_1_n_0));
endmodule

(* CASCADE_HEIGHT = "0" *) (* CDC_DEST_SYNC_FF = "2" *) (* COMMON_CLOCK = "1" *) 
(* DOUT_RESET_VALUE = "" *) (* ECC_MODE = "0" *) (* ENABLE_ECC = "0" *) 
(* EN_ADV_FEATURE = "16'b0001000000000100" *) (* EN_AE = "1'b0" *) (* EN_AF = "1'b0" *) 
(* EN_DVLD = "1'b1" *) (* EN_OF = "1'b0" *) (* EN_PE = "1'b0" *) 
(* EN_PF = "1'b0" *) (* EN_RDC = "1'b0" *) (* EN_UF = "1'b0" *) 
(* EN_WACK = "1'b0" *) (* EN_WDC = "1'b1" *) (* FG_EQ_ASYM_DOUT = "1'b0" *) 
(* FIFO_MEMORY_TYPE = "0" *) (* FIFO_MEM_TYPE = "0" *) (* FIFO_READ_DEPTH = "256" *) 
(* FIFO_READ_LATENCY = "0" *) (* FIFO_SIZE = "21504" *) (* FIFO_WRITE_DEPTH = "256" *) 
(* FULL_RESET_VALUE = "1" *) (* FULL_RST_VAL = "1'b1" *) (* PE_THRESH_ADJ = "8" *) 
(* PE_THRESH_MAX = "251" *) (* PE_THRESH_MIN = "5" *) (* PF_THRESH_ADJ = "8" *) 
(* PF_THRESH_MAX = "251" *) (* PF_THRESH_MIN = "5" *) (* PROG_EMPTY_THRESH = "10" *) 
(* PROG_FULL_THRESH = "10" *) (* RD_DATA_COUNT_WIDTH = "1" *) (* RD_DC_WIDTH_EXT = "9" *) 
(* RD_LATENCY = "2" *) (* RD_MODE = "1" *) (* RD_PNTR_WIDTH = "8" *) 
(* READ_DATA_WIDTH = "84" *) (* READ_MODE = "1" *) (* RELATED_CLOCKS = "0" *) 
(* REMOVE_WR_RD_PROT_LOGIC = "0" *) (* SIM_ASSERT_CHK = "0" *) (* USE_ADV_FEATURES = "825241652" *) 
(* VERSION = "0" *) (* WAKEUP_TIME = "0" *) (* WIDTH_RATIO = "1" *) 
(* WRITE_DATA_WIDTH = "84" *) (* WR_DATA_COUNT_WIDTH = "9" *) (* WR_DC_WIDTH_EXT = "9" *) 
(* WR_DEPTH_LOG = "8" *) (* WR_PNTR_WIDTH = "8" *) (* WR_RD_RATIO = "0" *) 
(* WR_WIDTH_LOG = "7" *) (* XPM_MODULE = "TRUE" *) (* both_stages_valid = "3" *) 
(* invalid = "0" *) (* keep_hierarchy = "soft" *) (* stage1_valid = "2" *) 
(* stage2_valid = "1" *) 
module xpm_fifo_base
   (sleep,
    rst,
    wr_clk,
    wr_en,
    din,
    full,
    full_n,
    prog_full,
    wr_data_count,
    overflow,
    wr_rst_busy,
    almost_full,
    wr_ack,
    rd_clk,
    rd_en,
    dout,
    empty,
    prog_empty,
    rd_data_count,
    underflow,
    rd_rst_busy,
    almost_empty,
    data_valid,
    injectsbiterr,
    injectdbiterr,
    sbiterr,
    dbiterr);
  input sleep;
  input rst;
  input wr_clk;
  input wr_en;
  input [83:0]din;
  output full;
  output full_n;
  output prog_full;
  output [8:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_clk;
  input rd_en;
  output [83:0]dout;
  output empty;
  output prog_empty;
  output [0:0]rd_data_count;
  output underflow;
  output rd_rst_busy;
  output almost_empty;
  output data_valid;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;

  wire clr_full;
  wire [7:0]count_value_i__0;
  wire [1:0]curr_fwft_state;
  wire data_valid;
  wire data_valid_fwft1;
  wire [83:0]din;
  wire [83:0]dout;
  wire full_n;
  wire \gen_fwft.empty_fwft_i_reg_n_0 ;
  wire \gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0 ;
  wire \gen_fwft.ram_regout_en ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ;
  wire leaving_empty0;
  wire [1:0]next_fwft_state__0;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire ram_wr_en_i;
  wire rd_en;
  wire [7:0]rd_pntr_ext;
  wire rdp_inst_n_10;
  wire rdp_inst_n_17;
  wire rdp_inst_n_18;
  wire rst;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;
  wire [7:0]wr_pntr_ext;
  wire wrpp1_inst_n_0;
  wire wrpp1_inst_n_1;
  wire wrpp1_inst_n_2;
  wire wrpp1_inst_n_3;
  wire wrpp1_inst_n_4;
  wire wrpp1_inst_n_5;
  wire wrpp1_inst_n_6;
  wire wrpp1_inst_n_7;
  wire xpm_fifo_rst_inst_n_1;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_clkb_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_ena_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_injectdbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_injectdbiterrb_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_injectsbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_injectsbiterrb_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_regcea_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_rsta_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sleep_UNCONNECTED ;
  wire [71:0]\NLW_gen_sdpram.xpm_memory_base_inst_dina_UNCONNECTED ;
  wire [83:0]\NLW_gen_sdpram.xpm_memory_base_inst_dinb_UNCONNECTED ;
  wire [83:0]\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED ;
  wire [82:0]\NLW_gen_sdpram.xpm_memory_base_inst_doutb_UNCONNECTED ;
  wire [0:0]\NLW_gen_sdpram.xpm_memory_base_inst_web_UNCONNECTED ;
  wire \NLW_rdp_inst_gwdc.wr_data_count_i_reg[3]_UNCONNECTED ;
  wire [0:0]NLW_rdp_inst_DI_UNCONNECTED;
  wire [0:0]NLW_rdp_inst_S_UNCONNECTED;
  wire [0:0]\NLW_rdp_inst_count_value_i_reg[2]_0_UNCONNECTED ;
  wire [3:0]\NLW_rdp_inst_count_value_i_reg[6]_0_UNCONNECTED ;
  wire [8:8]\NLW_rdp_inst_gwdc.wr_data_count_i_reg[8]_UNCONNECTED ;
  wire \NLW_wrp_inst_gwdc.wr_data_count_i_reg[3]_UNCONNECTED ;
  wire [8:0]NLW_wrp_inst_D_UNCONNECTED;
  wire [1:0]NLW_wrp_inst_DI_UNCONNECTED;
  wire [8:8]NLW_wrp_inst_Q_UNCONNECTED;
  wire [2:0]NLW_wrp_inst_S_UNCONNECTED;
  wire [3:0]\NLW_wrp_inst_gwdc.wr_data_count_i_reg[7]_UNCONNECTED ;
  wire [5:0]\NLW_wrp_inst_gwdc.wr_data_count_i_reg[7]_0_UNCONNECTED ;
  wire [0:0]\NLW_wrp_inst_gwdc.wr_data_count_i_reg[8]_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h6A85)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1 
       (.I0(curr_fwft_state[0]),
        .I1(rd_en),
        .I2(curr_fwft_state[1]),
        .I3(ram_empty_i),
        .O(next_fwft_state__0[0]));
  LUT3 #(
    .INIT(8'h7C)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1 
       (.I0(rd_en),
        .I1(curr_fwft_state[1]),
        .I2(curr_fwft_state[0]),
        .O(next_fwft_state__0[1]));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(next_fwft_state__0[0]),
        .Q(curr_fwft_state[0]),
        .R(xpm_fifo_rst_inst_n_1));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(next_fwft_state__0[1]),
        .Q(curr_fwft_state[1]),
        .R(xpm_fifo_rst_inst_n_1));
  LUT4 #(
    .INIT(16'hF380)) 
    \gen_fwft.empty_fwft_i_i_1 
       (.I0(rd_en),
        .I1(curr_fwft_state[0]),
        .I2(curr_fwft_state[1]),
        .I3(\gen_fwft.empty_fwft_i_reg_n_0 ),
        .O(data_valid_fwft1));
  FDSE #(
    .INIT(1'b1)) 
    \gen_fwft.empty_fwft_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(data_valid_fwft1),
        .Q(\gen_fwft.empty_fwft_i_reg_n_0 ),
        .S(xpm_fifo_rst_inst_n_1));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h3575)) 
    \gen_fwft.gdvld_fwft.data_valid_fwft_i_1 
       (.I0(\gen_fwft.empty_fwft_i_reg_n_0 ),
        .I1(curr_fwft_state[1]),
        .I2(curr_fwft_state[0]),
        .I3(rd_en),
        .O(\gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fwft.gdvld_fwft.data_valid_fwft_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0 ),
        .Q(data_valid),
        .R(xpm_fifo_rst_inst_n_1));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rdp_inst_n_18),
        .Q(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .S(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rdp_inst_n_17),
        .Q(full_n),
        .R(xpm_fifo_rst_inst_n_1));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pntr_flags_cc.ram_empty_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(ram_empty_i0),
        .Q(ram_empty_i),
        .S(xpm_fifo_rst_inst_n_1));
  (* ADDR_WIDTH_A = "8" *) 
  (* ADDR_WIDTH_B = "8" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "84" *) 
  (* BYTE_WRITE_WIDTH_B = "84" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CLOCKING_MODE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* MAX_NUM_CHAR = "0" *) 
  (* \MEM.ADDRESS_SPACE  *) 
  (* \MEM.ADDRESS_SPACE_BEGIN  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_LSB  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_MSB  = "83" *) 
  (* \MEM.ADDRESS_SPACE_END  = "511" *) 
  (* \MEM.CORE_MEMORY_WIDTH  = "84" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "0" *) 
  (* MEMORY_SIZE = "21504" *) 
  (* MEMORY_TYPE = "1" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* NUM_CHAR_LOC = "0" *) 
  (* P_ECC_MODE = "no_ecc" *) 
  (* P_ENABLE_BYTE_WRITE_A = "0" *) 
  (* P_ENABLE_BYTE_WRITE_B = "0" *) 
  (* P_MAX_DEPTH_DATA = "256" *) 
  (* P_MEMORY_OPT = "yes" *) 
  (* P_MEMORY_PRIMITIVE = "auto" *) 
  (* P_MIN_WIDTH_DATA = "84" *) 
  (* P_MIN_WIDTH_DATA_A = "84" *) 
  (* P_MIN_WIDTH_DATA_B = "84" *) 
  (* P_MIN_WIDTH_DATA_ECC = "84" *) 
  (* P_MIN_WIDTH_DATA_LDW = "4" *) 
  (* P_MIN_WIDTH_DATA_SHFT = "84" *) 
  (* P_NUM_COLS_WRITE_A = "1" *) 
  (* P_NUM_COLS_WRITE_B = "1" *) 
  (* P_NUM_ROWS_READ_A = "1" *) 
  (* P_NUM_ROWS_READ_B = "1" *) 
  (* P_NUM_ROWS_WRITE_A = "1" *) 
  (* P_NUM_ROWS_WRITE_B = "1" *) 
  (* P_SDP_WRITE_MODE = "yes" *) 
  (* P_WIDTH_ADDR_LSB_READ_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_READ_B = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) 
  (* P_WIDTH_ADDR_READ_A = "8" *) 
  (* P_WIDTH_ADDR_READ_B = "8" *) 
  (* P_WIDTH_ADDR_WRITE_A = "8" *) 
  (* P_WIDTH_ADDR_WRITE_B = "8" *) 
  (* P_WIDTH_COL_WRITE_A = "84" *) 
  (* P_WIDTH_COL_WRITE_B = "84" *) 
  (* READ_DATA_WIDTH_A = "84" *) 
  (* READ_DATA_WIDTH_B = "84" *) 
  (* READ_LATENCY_A = "2" *) 
  (* READ_LATENCY_B = "2" *) 
  (* READ_RESET_VALUE_A = "0" *) 
  (* READ_RESET_VALUE_B = "" *) 
  (* RST_MODE_A = "SYNC" *) 
  (* RST_MODE_B = "SYNC" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_EMBEDDED_CONSTRAINT = "0" *) 
  (* USE_MEM_INIT = "0" *) 
  (* USE_MEM_INIT_MMI = "0" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH_A = "84" *) 
  (* WRITE_DATA_WIDTH_B = "84" *) 
  (* WRITE_MODE_A = "2" *) 
  (* WRITE_MODE_B = "2" *) 
  (* WRITE_PROTECT = "1" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* rsta_loop_iter = "84" *) 
  (* rstb_loop_iter = "84" *) 
  xpm_memory_base \gen_sdpram.xpm_memory_base_inst 
       (.addra(wr_pntr_ext),
        .addrb(rd_pntr_ext),
        .clka(wr_clk),
        .clkb(\NLW_gen_sdpram.xpm_memory_base_inst_clkb_UNCONNECTED ),
        .dbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ),
        .dbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ),
        .dina({din[83:72],\NLW_gen_sdpram.xpm_memory_base_inst_dina_UNCONNECTED [71:0]}),
        .dinb(\NLW_gen_sdpram.xpm_memory_base_inst_dinb_UNCONNECTED [83:0]),
        .douta(\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED [83:0]),
        .doutb({dout[83],\NLW_gen_sdpram.xpm_memory_base_inst_doutb_UNCONNECTED [82:0]}),
        .ena(\NLW_gen_sdpram.xpm_memory_base_inst_ena_UNCONNECTED ),
        .enb(rdp_inst_n_10),
        .injectdbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_injectdbiterra_UNCONNECTED ),
        .injectdbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_injectdbiterrb_UNCONNECTED ),
        .injectsbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_injectsbiterra_UNCONNECTED ),
        .injectsbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_injectsbiterrb_UNCONNECTED ),
        .regcea(\NLW_gen_sdpram.xpm_memory_base_inst_regcea_UNCONNECTED ),
        .regceb(\gen_fwft.ram_regout_en ),
        .rsta(\NLW_gen_sdpram.xpm_memory_base_inst_rsta_UNCONNECTED ),
        .rstb(xpm_fifo_rst_inst_n_1),
        .sbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ),
        .sbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ),
        .sleep(\NLW_gen_sdpram.xpm_memory_base_inst_sleep_UNCONNECTED ),
        .wea(ram_wr_en_i),
        .web(\NLW_gen_sdpram.xpm_memory_base_inst_web_UNCONNECTED [0]));
  LUT3 #(
    .INIT(8'h62)) 
    \gen_sdpram.xpm_memory_base_inst_i_3 
       (.I0(curr_fwft_state[0]),
        .I1(curr_fwft_state[1]),
        .I2(rd_en),
        .O(\gen_fwft.ram_regout_en ));
  xpm_counter_updn__parameterized0 rdp_inst
       (.DI(NLW_rdp_inst_DI_UNCONNECTED[0]),
        .\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] (rdp_inst_n_10),
        .Q(rd_pntr_ext),
        .S(NLW_rdp_inst_S_UNCONNECTED[0]),
        .clr_full(clr_full),
        .\count_value_i_reg[0]_0 (curr_fwft_state),
        .\count_value_i_reg[2]_0 (\NLW_rdp_inst_count_value_i_reg[2]_0_UNCONNECTED [0]),
        .\count_value_i_reg[6]_0 (\NLW_rdp_inst_count_value_i_reg[6]_0_UNCONNECTED [3:0]),
        .\count_value_i_reg[8]_0 (xpm_fifo_rst_inst_n_1),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg (rdp_inst_n_17),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 (rdp_inst_n_18),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ({wrpp1_inst_n_0,wrpp1_inst_n_1,wrpp1_inst_n_2,wrpp1_inst_n_3,wrpp1_inst_n_4,wrpp1_inst_n_5,wrpp1_inst_n_6,wrpp1_inst_n_7}),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg (\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .\gwdc.wr_data_count_i_reg[3] (\NLW_rdp_inst_gwdc.wr_data_count_i_reg[3]_UNCONNECTED ),
        .\gwdc.wr_data_count_i_reg[8] ({\NLW_rdp_inst_gwdc.wr_data_count_i_reg[8]_UNCONNECTED [8],wr_pntr_ext}),
        .leaving_empty0(leaving_empty0),
        .ram_empty_i(ram_empty_i),
        .ram_wr_en_i(ram_wr_en_i),
        .rd_en(rd_en),
        .wr_clk(wr_clk));
  xpm_counter_updn__parameterized1 rdpp1_inst
       (.Q(count_value_i__0),
        .\count_value_i_reg[0]_0 (rdp_inst_n_10),
        .\count_value_i_reg[1]_0 (curr_fwft_state),
        .\count_value_i_reg[1]_1 (xpm_fifo_rst_inst_n_1),
        .ram_empty_i(ram_empty_i),
        .rd_en(rd_en),
        .wr_clk(wr_clk));
  xpm_fifo_reg_bit rst_d1_inst
       (.Q(xpm_fifo_rst_inst_n_1),
        .clr_full(clr_full),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk));
  xpm_counter_updn__parameterized0_76 wrp_inst
       (.D(NLW_wrp_inst_D_UNCONNECTED[8:0]),
        .DI(NLW_wrp_inst_DI_UNCONNECTED[1:0]),
        .Q({NLW_wrp_inst_Q_UNCONNECTED[8],wr_pntr_ext}),
        .S(NLW_wrp_inst_S_UNCONNECTED[2:0]),
        .\count_value_i_reg[0]_0 (xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[5]_0 (\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .\gen_pntr_flags_cc.ram_empty_i_reg (rdp_inst_n_10),
        .\gen_pntr_flags_cc.ram_empty_i_reg_0 (count_value_i__0),
        .\gwdc.wr_data_count_i_reg[3] (\NLW_wrp_inst_gwdc.wr_data_count_i_reg[3]_UNCONNECTED ),
        .\gwdc.wr_data_count_i_reg[7] (\NLW_wrp_inst_gwdc.wr_data_count_i_reg[7]_UNCONNECTED [3:0]),
        .\gwdc.wr_data_count_i_reg[7]_0 (\NLW_wrp_inst_gwdc.wr_data_count_i_reg[7]_0_UNCONNECTED [5:0]),
        .\gwdc.wr_data_count_i_reg[8] (\NLW_wrp_inst_gwdc.wr_data_count_i_reg[8]_UNCONNECTED [0]),
        .leaving_empty0(leaving_empty0),
        .ram_empty_i(ram_empty_i),
        .ram_empty_i0(ram_empty_i0),
        .ram_wr_en_i(ram_wr_en_i),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
  xpm_counter_updn__parameterized1_77 wrpp1_inst
       (.Q({wrpp1_inst_n_0,wrpp1_inst_n_1,wrpp1_inst_n_2,wrpp1_inst_n_3,wrpp1_inst_n_4,wrpp1_inst_n_5,wrpp1_inst_n_6,wrpp1_inst_n_7}),
        .\count_value_i_reg[1]_0 (xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[5]_0 (\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .ram_wr_en_i(ram_wr_en_i),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
  xpm_fifo_rst xpm_fifo_rst_inst
       (.Q(xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[7] (\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .ram_wr_en_i(ram_wr_en_i),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
endmodule

(* CASCADE_HEIGHT = "0" *) (* CDC_DEST_SYNC_FF = "2" *) (* COMMON_CLOCK = "1" *) 
(* DOUT_RESET_VALUE = "" *) (* ECC_MODE = "0" *) (* ENABLE_ECC = "0" *) 
(* EN_ADV_FEATURE = "16'b0001000000000100" *) (* EN_AE = "1'b0" *) (* EN_AF = "1'b0" *) 
(* EN_DVLD = "1'b1" *) (* EN_OF = "1'b0" *) (* EN_PE = "1'b0" *) 
(* EN_PF = "1'b0" *) (* EN_RDC = "1'b0" *) (* EN_UF = "1'b0" *) 
(* EN_WACK = "1'b0" *) (* EN_WDC = "1'b1" *) (* FG_EQ_ASYM_DOUT = "1'b0" *) 
(* FIFO_MEMORY_TYPE = "0" *) (* FIFO_MEM_TYPE = "0" *) (* FIFO_READ_DEPTH = "256" *) 
(* FIFO_READ_LATENCY = "0" *) (* FIFO_SIZE = "21504" *) (* FIFO_WRITE_DEPTH = "256" *) 
(* FULL_RESET_VALUE = "1" *) (* FULL_RST_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_fifo_base" *) 
(* PE_THRESH_ADJ = "8" *) (* PE_THRESH_MAX = "251" *) (* PE_THRESH_MIN = "5" *) 
(* PF_THRESH_ADJ = "8" *) (* PF_THRESH_MAX = "251" *) (* PF_THRESH_MIN = "5" *) 
(* PROG_EMPTY_THRESH = "10" *) (* PROG_FULL_THRESH = "10" *) (* RD_DATA_COUNT_WIDTH = "1" *) 
(* RD_DC_WIDTH_EXT = "9" *) (* RD_LATENCY = "2" *) (* RD_MODE = "1" *) 
(* RD_PNTR_WIDTH = "8" *) (* READ_DATA_WIDTH = "84" *) (* READ_MODE = "1" *) 
(* RELATED_CLOCKS = "0" *) (* REMOVE_WR_RD_PROT_LOGIC = "0" *) (* SIM_ASSERT_CHK = "0" *) 
(* USE_ADV_FEATURES = "825241652" *) (* VERSION = "0" *) (* WAKEUP_TIME = "0" *) 
(* WIDTH_RATIO = "1" *) (* WRITE_DATA_WIDTH = "84" *) (* WR_DATA_COUNT_WIDTH = "9" *) 
(* WR_DC_WIDTH_EXT = "9" *) (* WR_DEPTH_LOG = "8" *) (* WR_PNTR_WIDTH = "8" *) 
(* WR_RD_RATIO = "0" *) (* WR_WIDTH_LOG = "7" *) (* XPM_MODULE = "TRUE" *) 
(* both_stages_valid = "3" *) (* invalid = "0" *) (* keep_hierarchy = "soft" *) 
(* stage1_valid = "2" *) (* stage2_valid = "1" *) 
module xpm_fifo_base__2
   (sleep,
    rst,
    wr_clk,
    wr_en,
    din,
    full,
    full_n,
    prog_full,
    wr_data_count,
    overflow,
    wr_rst_busy,
    almost_full,
    wr_ack,
    rd_clk,
    rd_en,
    dout,
    empty,
    prog_empty,
    rd_data_count,
    underflow,
    rd_rst_busy,
    almost_empty,
    data_valid,
    injectsbiterr,
    injectdbiterr,
    sbiterr,
    dbiterr);
  input sleep;
  input rst;
  input wr_clk;
  input wr_en;
  input [83:0]din;
  output full;
  output full_n;
  output prog_full;
  output [8:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_clk;
  input rd_en;
  output [83:0]dout;
  output empty;
  output prog_empty;
  output [0:0]rd_data_count;
  output underflow;
  output rd_rst_busy;
  output almost_empty;
  output data_valid;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;

  wire clr_full;
  wire [7:0]count_value_i__0;
  wire [1:0]curr_fwft_state;
  wire data_valid;
  wire data_valid_fwft1;
  wire full_n;
  wire \gen_fwft.empty_fwft_i_reg_n_0 ;
  wire \gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0 ;
  wire \gen_fwft.rdpp1_inst_n_0 ;
  wire \gen_fwft.rdpp1_inst_n_1 ;
  wire \gen_fwft.rdpp1_inst_n_2 ;
  wire \gen_fwft.rdpp1_inst_n_3 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ;
  wire [8:0]\gwdc.diff_wr_rd_pntr ;
  wire leaving_empty0;
  wire [1:0]next_fwft_state__0;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire ram_wr_en_i;
  wire rd_en;
  wire [7:0]rd_pntr_ext;
  wire rdp_inst_n_0;
  wire rdp_inst_n_10;
  wire rdp_inst_n_12;
  wire rdp_inst_n_13;
  wire rdp_inst_n_14;
  wire rdp_inst_n_15;
  wire rdp_inst_n_16;
  wire rdp_inst_n_17;
  wire rdp_inst_n_18;
  wire rdp_inst_n_9;
  wire rst;
  wire rst_d1;
  wire wr_clk;
  wire [8:0]wr_data_count;
  wire wr_en;
  wire [7:0]wr_pntr_ext;
  wire wrp_inst_n_1;
  wire wrpp1_inst_n_0;
  wire wrpp1_inst_n_1;
  wire wrpp1_inst_n_2;
  wire wrpp1_inst_n_3;
  wire wrpp1_inst_n_4;
  wire wrpp1_inst_n_5;
  wire wrpp1_inst_n_6;
  wire wrpp1_inst_n_7;
  wire xpm_fifo_rst_inst_n_1;
  wire [7:7]NLW_rdp_inst_Q_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h6A85)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1 
       (.I0(curr_fwft_state[0]),
        .I1(rd_en),
        .I2(curr_fwft_state[1]),
        .I3(ram_empty_i),
        .O(next_fwft_state__0[0]));
  LUT3 #(
    .INIT(8'h7C)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1 
       (.I0(rd_en),
        .I1(curr_fwft_state[1]),
        .I2(curr_fwft_state[0]),
        .O(next_fwft_state__0[1]));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(next_fwft_state__0[0]),
        .Q(curr_fwft_state[0]),
        .R(xpm_fifo_rst_inst_n_1));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(next_fwft_state__0[1]),
        .Q(curr_fwft_state[1]),
        .R(xpm_fifo_rst_inst_n_1));
  LUT4 #(
    .INIT(16'hF380)) 
    \gen_fwft.empty_fwft_i_i_1 
       (.I0(rd_en),
        .I1(curr_fwft_state[0]),
        .I2(curr_fwft_state[1]),
        .I3(\gen_fwft.empty_fwft_i_reg_n_0 ),
        .O(data_valid_fwft1));
  FDSE #(
    .INIT(1'b1)) 
    \gen_fwft.empty_fwft_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(data_valid_fwft1),
        .Q(\gen_fwft.empty_fwft_i_reg_n_0 ),
        .S(xpm_fifo_rst_inst_n_1));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h3575)) 
    \gen_fwft.gdvld_fwft.data_valid_fwft_i_1 
       (.I0(\gen_fwft.empty_fwft_i_reg_n_0 ),
        .I1(curr_fwft_state[1]),
        .I2(curr_fwft_state[0]),
        .I3(rd_en),
        .O(\gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fwft.gdvld_fwft.data_valid_fwft_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0 ),
        .Q(data_valid),
        .R(xpm_fifo_rst_inst_n_1));
  xpm_counter_updn_78 \gen_fwft.rdpp1_inst 
       (.DI(\gen_fwft.rdpp1_inst_n_2 ),
        .Q(rd_pntr_ext[1:0]),
        .S({\gen_fwft.rdpp1_inst_n_0 ,\gen_fwft.rdpp1_inst_n_1 }),
        .\count_value_i_reg[0]_0 (curr_fwft_state),
        .\count_value_i_reg[0]_1 (xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[1]_0 (\gen_fwft.rdpp1_inst_n_3 ),
        .\gwdc.wr_data_count_i_reg[3] (wr_pntr_ext[1:0]),
        .ram_empty_i(ram_empty_i),
        .rd_en(rd_en),
        .wr_clk(wr_clk));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rdp_inst_n_18),
        .Q(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .S(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rdp_inst_n_17),
        .Q(full_n),
        .R(xpm_fifo_rst_inst_n_1));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pntr_flags_cc.ram_empty_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(ram_empty_i0),
        .Q(ram_empty_i),
        .S(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gwdc.wr_data_count_i_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr [0]),
        .Q(wr_data_count[0]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gwdc.wr_data_count_i_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr [1]),
        .Q(wr_data_count[1]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gwdc.wr_data_count_i_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr [2]),
        .Q(wr_data_count[2]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gwdc.wr_data_count_i_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr [3]),
        .Q(wr_data_count[3]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gwdc.wr_data_count_i_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr [4]),
        .Q(wr_data_count[4]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gwdc.wr_data_count_i_reg[5] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr [5]),
        .Q(wr_data_count[5]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gwdc.wr_data_count_i_reg[6] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr [6]),
        .Q(wr_data_count[6]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gwdc.wr_data_count_i_reg[7] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr [7]),
        .Q(wr_data_count[7]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gwdc.wr_data_count_i_reg[8] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr [8]),
        .Q(wr_data_count[8]),
        .R(xpm_fifo_rst_inst_n_1));
  xpm_counter_updn__parameterized0_79 rdp_inst
       (.DI(rdp_inst_n_0),
        .\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] (rdp_inst_n_10),
        .Q({NLW_rdp_inst_Q_UNCONNECTED[7],rd_pntr_ext[6:0]}),
        .S(rdp_inst_n_9),
        .clr_full(clr_full),
        .\count_value_i_reg[0]_0 (curr_fwft_state),
        .\count_value_i_reg[2]_0 (rdp_inst_n_12),
        .\count_value_i_reg[6]_0 ({rdp_inst_n_13,rdp_inst_n_14,rdp_inst_n_15,rdp_inst_n_16}),
        .\count_value_i_reg[8]_0 (xpm_fifo_rst_inst_n_1),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg (rdp_inst_n_17),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 (rdp_inst_n_18),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ({wrpp1_inst_n_0,wrpp1_inst_n_1,wrpp1_inst_n_2,wrpp1_inst_n_3,wrpp1_inst_n_4,wrpp1_inst_n_5,wrpp1_inst_n_6,wrpp1_inst_n_7}),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg (\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .\gwdc.wr_data_count_i_reg[3] (\gen_fwft.rdpp1_inst_n_3 ),
        .\gwdc.wr_data_count_i_reg[8] ({wrp_inst_n_1,wr_pntr_ext}),
        .leaving_empty0(leaving_empty0),
        .ram_empty_i(ram_empty_i),
        .ram_wr_en_i(ram_wr_en_i),
        .rd_en(rd_en),
        .wr_clk(wr_clk));
  xpm_counter_updn__parameterized1_80 rdpp1_inst
       (.Q(count_value_i__0),
        .\count_value_i_reg[0]_0 (rdp_inst_n_10),
        .\count_value_i_reg[1]_0 (curr_fwft_state),
        .\count_value_i_reg[1]_1 (xpm_fifo_rst_inst_n_1),
        .ram_empty_i(ram_empty_i),
        .rd_en(rd_en),
        .wr_clk(wr_clk));
  xpm_fifo_reg_bit_81 rst_d1_inst
       (.Q(xpm_fifo_rst_inst_n_1),
        .clr_full(clr_full),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk));
  xpm_counter_updn__parameterized0_82 wrp_inst
       (.D(\gwdc.diff_wr_rd_pntr ),
        .DI({rdp_inst_n_0,\gen_fwft.rdpp1_inst_n_2 }),
        .Q({wrp_inst_n_1,wr_pntr_ext}),
        .S({rdp_inst_n_12,\gen_fwft.rdpp1_inst_n_0 ,\gen_fwft.rdpp1_inst_n_1 }),
        .\count_value_i_reg[0]_0 (xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[5]_0 (\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .\gen_pntr_flags_cc.ram_empty_i_reg (rdp_inst_n_10),
        .\gen_pntr_flags_cc.ram_empty_i_reg_0 (count_value_i__0),
        .\gwdc.wr_data_count_i_reg[3] (\gen_fwft.rdpp1_inst_n_3 ),
        .\gwdc.wr_data_count_i_reg[7] ({rdp_inst_n_13,rdp_inst_n_14,rdp_inst_n_15,rdp_inst_n_16}),
        .\gwdc.wr_data_count_i_reg[7]_0 (rd_pntr_ext[6:1]),
        .\gwdc.wr_data_count_i_reg[8] (rdp_inst_n_9),
        .leaving_empty0(leaving_empty0),
        .ram_empty_i(ram_empty_i),
        .ram_empty_i0(ram_empty_i0),
        .ram_wr_en_i(ram_wr_en_i),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
  xpm_counter_updn__parameterized1_83 wrpp1_inst
       (.Q({wrpp1_inst_n_0,wrpp1_inst_n_1,wrpp1_inst_n_2,wrpp1_inst_n_3,wrpp1_inst_n_4,wrpp1_inst_n_5,wrpp1_inst_n_6,wrpp1_inst_n_7}),
        .\count_value_i_reg[1]_0 (xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[5]_0 (\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .ram_wr_en_i(ram_wr_en_i),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
  xpm_fifo_rst_84 xpm_fifo_rst_inst
       (.Q(xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[7] (\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .ram_wr_en_i(ram_wr_en_i),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
endmodule

module xpm_fifo_reg_bit
   (rst_d1,
    clr_full,
    Q,
    wr_clk,
    rst);
  output rst_d1;
  output clr_full;
  input [0:0]Q;
  input wr_clk;
  input rst;

  wire [0:0]Q;
  wire clr_full;
  wire rst;
  wire rst_d1;
  wire wr_clk;

  FDRE #(
    .INIT(1'b0)) 
    d_out_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(Q),
        .Q(rst_d1),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h04)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_2 
       (.I0(rst),
        .I1(rst_d1),
        .I2(Q),
        .O(clr_full));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_bit" *) 
module xpm_fifo_reg_bit_81
   (rst_d1,
    clr_full,
    Q,
    wr_clk,
    rst);
  output rst_d1;
  output clr_full;
  input [0:0]Q;
  input wr_clk;
  input rst;

  wire [0:0]Q;
  wire clr_full;
  wire rst;
  wire rst_d1;
  wire wr_clk;

  FDRE #(
    .INIT(1'b0)) 
    d_out_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(Q),
        .Q(rst_d1),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h04)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_2 
       (.I0(rst),
        .I1(rst_d1),
        .I2(Q),
        .O(clr_full));
endmodule

module xpm_fifo_rst
   (ram_wr_en_i,
    Q,
    rst,
    wr_en,
    \count_value_i_reg[7] ,
    rst_d1,
    wr_clk);
  output ram_wr_en_i;
  output [0:0]Q;
  input rst;
  input wr_en;
  input \count_value_i_reg[7] ;
  input rst_d1;
  input wr_clk;

  wire [0:0]Q;
  wire \count_value_i_reg[7] ;
  wire [1:0]\gen_rst_cc.fifo_wr_rst_cc ;
  wire p_0_in;
  wire \power_on_rst_reg_n_0_[0] ;
  wire ram_wr_en_i;
  wire rst;
  wire rst_d1;
  wire rst_i;
  wire wr_clk;
  wire wr_en;

  LUT2 #(
    .INIT(4'hE)) 
    \gen_rst_cc.fifo_wr_rst_cc[2]_i_1 
       (.I0(p_0_in),
        .I1(rst),
        .O(rst_i));
  FDSE #(
    .INIT(1'b0)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\gen_rst_cc.fifo_wr_rst_cc [0]),
        .S(rst_i));
  FDSE #(
    .INIT(1'b0)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_cc.fifo_wr_rst_cc [0]),
        .Q(\gen_rst_cc.fifo_wr_rst_cc [1]),
        .S(rst_i));
  FDSE #(
    .INIT(1'b0)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_cc.fifo_wr_rst_cc [1]),
        .Q(Q),
        .S(rst_i));
  LUT4 #(
    .INIT(16'h0002)) 
    \gen_sdpram.xpm_memory_base_inst_i_1 
       (.I0(wr_en),
        .I1(\count_value_i_reg[7] ),
        .I2(Q),
        .I3(rst_d1),
        .O(ram_wr_en_i));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\power_on_rst_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\power_on_rst_reg_n_0_[0] ),
        .Q(p_0_in),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_rst" *) 
module xpm_fifo_rst_84
   (ram_wr_en_i,
    Q,
    rst,
    wr_en,
    \count_value_i_reg[7] ,
    rst_d1,
    wr_clk);
  output ram_wr_en_i;
  output [0:0]Q;
  input rst;
  input wr_en;
  input \count_value_i_reg[7] ;
  input rst_d1;
  input wr_clk;

  wire [0:0]Q;
  wire \count_value_i_reg[7] ;
  wire [1:0]\gen_rst_cc.fifo_wr_rst_cc ;
  wire p_0_in;
  wire \power_on_rst_reg_n_0_[0] ;
  wire ram_wr_en_i;
  wire rst;
  wire rst_d1;
  wire rst_i;
  wire wr_clk;
  wire wr_en;

  LUT2 #(
    .INIT(4'hE)) 
    \gen_rst_cc.fifo_wr_rst_cc[2]_i_1 
       (.I0(p_0_in),
        .I1(rst),
        .O(rst_i));
  FDSE #(
    .INIT(1'b0)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\gen_rst_cc.fifo_wr_rst_cc [0]),
        .S(rst_i));
  FDSE #(
    .INIT(1'b0)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_cc.fifo_wr_rst_cc [0]),
        .Q(\gen_rst_cc.fifo_wr_rst_cc [1]),
        .S(rst_i));
  FDSE #(
    .INIT(1'b0)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_cc.fifo_wr_rst_cc [1]),
        .Q(Q),
        .S(rst_i));
  LUT4 #(
    .INIT(16'h0002)) 
    \gen_sdpram.xpm_memory_base_inst_i_1 
       (.I0(wr_en),
        .I1(\count_value_i_reg[7] ),
        .I2(Q),
        .I3(rst_d1),
        .O(ram_wr_en_i));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\power_on_rst_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\power_on_rst_reg_n_0_[0] ),
        .Q(p_0_in),
        .R(1'b0));
endmodule

(* ADDR_WIDTH_A = "8" *) (* ADDR_WIDTH_B = "8" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "84" *) (* BYTE_WRITE_WIDTH_B = "84" *) (* CASCADE_HEIGHT = "0" *) 
(* CLOCKING_MODE = "0" *) (* ECC_MODE = "0" *) (* MAX_NUM_CHAR = "0" *) 
(* MEMORY_INIT_FILE = "none" *) (* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) 
(* MEMORY_PRIMITIVE = "0" *) (* MEMORY_SIZE = "21504" *) (* MEMORY_TYPE = "1" *) 
(* MESSAGE_CONTROL = "0" *) (* NUM_CHAR_LOC = "0" *) (* P_ECC_MODE = "no_ecc" *) 
(* P_ENABLE_BYTE_WRITE_A = "0" *) (* P_ENABLE_BYTE_WRITE_B = "0" *) (* P_MAX_DEPTH_DATA = "256" *) 
(* P_MEMORY_OPT = "yes" *) (* P_MEMORY_PRIMITIVE = "auto" *) (* P_MIN_WIDTH_DATA = "84" *) 
(* P_MIN_WIDTH_DATA_A = "84" *) (* P_MIN_WIDTH_DATA_B = "84" *) (* P_MIN_WIDTH_DATA_ECC = "84" *) 
(* P_MIN_WIDTH_DATA_LDW = "4" *) (* P_MIN_WIDTH_DATA_SHFT = "84" *) (* P_NUM_COLS_WRITE_A = "1" *) 
(* P_NUM_COLS_WRITE_B = "1" *) (* P_NUM_ROWS_READ_A = "1" *) (* P_NUM_ROWS_READ_B = "1" *) 
(* P_NUM_ROWS_WRITE_A = "1" *) (* P_NUM_ROWS_WRITE_B = "1" *) (* P_SDP_WRITE_MODE = "yes" *) 
(* P_WIDTH_ADDR_LSB_READ_A = "0" *) (* P_WIDTH_ADDR_LSB_READ_B = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
(* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) (* P_WIDTH_ADDR_READ_A = "8" *) (* P_WIDTH_ADDR_READ_B = "8" *) 
(* P_WIDTH_ADDR_WRITE_A = "8" *) (* P_WIDTH_ADDR_WRITE_B = "8" *) (* P_WIDTH_COL_WRITE_A = "84" *) 
(* P_WIDTH_COL_WRITE_B = "84" *) (* READ_DATA_WIDTH_A = "84" *) (* READ_DATA_WIDTH_B = "84" *) 
(* READ_LATENCY_A = "2" *) (* READ_LATENCY_B = "2" *) (* READ_RESET_VALUE_A = "0" *) 
(* READ_RESET_VALUE_B = "" *) (* RST_MODE_A = "SYNC" *) (* RST_MODE_B = "SYNC" *) 
(* SIM_ASSERT_CHK = "0" *) (* USE_EMBEDDED_CONSTRAINT = "0" *) (* USE_MEM_INIT = "0" *) 
(* USE_MEM_INIT_MMI = "0" *) (* VERSION = "0" *) (* WAKEUP_TIME = "0" *) 
(* WRITE_DATA_WIDTH_A = "84" *) (* WRITE_DATA_WIDTH_B = "84" *) (* WRITE_MODE_A = "2" *) 
(* WRITE_MODE_B = "2" *) (* WRITE_PROTECT = "1" *) (* XPM_MODULE = "TRUE" *) 
(* keep_hierarchy = "soft" *) (* rsta_loop_iter = "84" *) (* rstb_loop_iter = "84" *) 
module xpm_memory_base
   (sleep,
    clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    injectsbiterra,
    injectdbiterra,
    douta,
    sbiterra,
    dbiterra,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    injectsbiterrb,
    injectdbiterrb,
    doutb,
    sbiterrb,
    dbiterrb);
  input sleep;
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [7:0]addra;
  input [83:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [83:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [7:0]addrb;
  input [83:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [83:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire [7:0]addra;
  wire [7:0]addrb;
  wire clka;
  wire [83:0]dina;
  wire [83:0]doutb;
  wire enb;
  wire regceb;
  wire rstb;
  wire [0:0]wea;
  wire [15:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DOADO_UNCONNECTED ;
  wire [15:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DOPBDOP_UNCONNECTED ;

  (* IS_CLOCK_GATED *) 
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "511" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d12" *) 
  (* \MEM.PORTA.DATA_LSB  = "72" *) 
  (* \MEM.PORTA.DATA_MSB  = "83" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "511" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d12" *) 
  (* \MEM.PORTB.DATA_LSB  = "72" *) 
  (* \MEM.PORTB.DATA_MSB  = "83" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  (* POWER_OPTED_CE = "REGCEB=AUG:ENBWREN=NEW" *) 
  (* POWER_OPTED_WE2EN = "ENBWREN" *) 
  (* RTL_RAM_BITS = "21504" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "511" *) 
  (* bram_slice_begin = "72" *) 
  (* bram_slice_end = "83" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "72" *) 
  (* ram_slice_end = "83" *) 
  RAMB18E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .RAM_MODE("SDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(36)) 
    \gen_wr_a.gen_word_narrow.mem_reg_1 
       (.ADDRARDADDR({1'b0,addrb,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,addra,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b1,1'b1,1'b1,1'b1,dina[83:72]}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b1,1'b1}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO({\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DOADO_UNCONNECTED [15:12],doutb[83],\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DOADO_UNCONNECTED [10:0]}),
        .DOBDO(\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(enb),
        .ENBWREN(wea),
        .REGCEAREGCE(regceb),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(rstb),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b1,wea,wea,wea}));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
