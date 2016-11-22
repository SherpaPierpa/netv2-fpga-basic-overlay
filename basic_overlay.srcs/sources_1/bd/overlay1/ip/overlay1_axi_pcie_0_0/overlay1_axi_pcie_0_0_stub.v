// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.1 (win64) Build 1538259 Fri Apr  8 15:45:27 MDT 2016
// Date        : Wed Nov 02 23:25:15 2016
// Host        : bunnie-kage running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub
//               F:/largework/fpga/netv2/overlay2/overlay2.srcs/sources_1/bd/overlay1/ip/overlay1_axi_pcie_0_0/overlay1_axi_pcie_0_0_stub.v
// Design      : overlay1_axi_pcie_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a50tcsg325-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axi_pcie,Vivado 2016.1" *)
module overlay1_axi_pcie_0_0(axi_aresetn, axi_aclk_out, axi_ctl_aclk_out, mmcm_lock, interrupt_out, INTX_MSI_Request, INTX_MSI_Grant, MSI_enable, MSI_Vector_Num, MSI_Vector_Width, s_axi_awid, s_axi_awaddr, s_axi_awregion, s_axi_awlen, s_axi_awsize, s_axi_awburst, s_axi_awvalid, s_axi_awready, s_axi_wdata, s_axi_wstrb, s_axi_wlast, s_axi_wvalid, s_axi_wready, s_axi_bid, s_axi_bresp, s_axi_bvalid, s_axi_bready, s_axi_arid, s_axi_araddr, s_axi_arregion, s_axi_arlen, s_axi_arsize, s_axi_arburst, s_axi_arvalid, s_axi_arready, s_axi_rid, s_axi_rdata, s_axi_rresp, s_axi_rlast, s_axi_rvalid, s_axi_rready, m_axi_awaddr, m_axi_awlen, m_axi_awsize, m_axi_awburst, m_axi_awprot, m_axi_awvalid, m_axi_awready, m_axi_awlock, m_axi_awcache, m_axi_wdata, m_axi_wstrb, m_axi_wlast, m_axi_wvalid, m_axi_wready, m_axi_bresp, m_axi_bvalid, m_axi_bready, m_axi_araddr, m_axi_arlen, m_axi_arsize, m_axi_arburst, m_axi_arprot, m_axi_arvalid, m_axi_arready, m_axi_arlock, m_axi_arcache, m_axi_rdata, m_axi_rresp, m_axi_rlast, m_axi_rvalid, m_axi_rready, pci_exp_txp, pci_exp_txn, pci_exp_rxp, pci_exp_rxn, REFCLK, s_axi_ctl_awaddr, s_axi_ctl_awvalid, s_axi_ctl_awready, s_axi_ctl_wdata, s_axi_ctl_wstrb, s_axi_ctl_wvalid, s_axi_ctl_wready, s_axi_ctl_bresp, s_axi_ctl_bvalid, s_axi_ctl_bready, s_axi_ctl_araddr, s_axi_ctl_arvalid, s_axi_ctl_arready, s_axi_ctl_rdata, s_axi_ctl_rresp, s_axi_ctl_rvalid, s_axi_ctl_rready, pipe_txprbssel, pipe_rxprbssel, pipe_txprbsforceerr, pipe_rxprbscntreset, pipe_loopback, pipe_rxprbserr, pipe_txinhibit, pipe_rst_fsm, pipe_qrst_fsm, pipe_rate_fsm, pipe_sync_fsm_tx, pipe_sync_fsm_rx, pipe_drp_fsm, pipe_rst_idle, pipe_qrst_idle, pipe_rate_idle, pipe_eyescandataerror, pipe_rxstatus, pipe_dmonitorout, pipe_cpll_lock, pipe_qpll_lock, pipe_rxpmaresetdone, pipe_rxbufstatus, pipe_txphaligndone, pipe_txphinitdone, pipe_txdlysresetdone, pipe_rxphaligndone, pipe_rxdlysresetdone, pipe_rxsyncdone, pipe_rxdisperr, pipe_rxnotintable, pipe_rxcommadet, gt_ch_drp_rdy, pipe_debug_0, pipe_debug_1, pipe_debug_2, pipe_debug_3, pipe_debug_4, pipe_debug_5, pipe_debug_6, pipe_debug_7, pipe_debug_8, pipe_debug_9, pipe_debug, int_pclk_out_slave, int_rxusrclk_out, int_dclk_out, int_userclk1_out, int_userclk2_out, int_oobclk_out, int_mmcm_lock_out, int_qplllock_out, int_qplloutclk_out, int_qplloutrefclk_out, int_rxoutclk_out, int_pclk_sel_slave)
/* synthesis syn_black_box black_box_pad_pin="axi_aresetn,axi_aclk_out,axi_ctl_aclk_out,mmcm_lock,interrupt_out,INTX_MSI_Request,INTX_MSI_Grant,MSI_enable,MSI_Vector_Num[4:0],MSI_Vector_Width[2:0],s_axi_awid[3:0],s_axi_awaddr[31:0],s_axi_awregion[3:0],s_axi_awlen[7:0],s_axi_awsize[2:0],s_axi_awburst[1:0],s_axi_awvalid,s_axi_awready,s_axi_wdata[63:0],s_axi_wstrb[7:0],s_axi_wlast,s_axi_wvalid,s_axi_wready,s_axi_bid[3:0],s_axi_bresp[1:0],s_axi_bvalid,s_axi_bready,s_axi_arid[3:0],s_axi_araddr[31:0],s_axi_arregion[3:0],s_axi_arlen[7:0],s_axi_arsize[2:0],s_axi_arburst[1:0],s_axi_arvalid,s_axi_arready,s_axi_rid[3:0],s_axi_rdata[63:0],s_axi_rresp[1:0],s_axi_rlast,s_axi_rvalid,s_axi_rready,m_axi_awaddr[31:0],m_axi_awlen[7:0],m_axi_awsize[2:0],m_axi_awburst[1:0],m_axi_awprot[2:0],m_axi_awvalid,m_axi_awready,m_axi_awlock,m_axi_awcache[3:0],m_axi_wdata[63:0],m_axi_wstrb[7:0],m_axi_wlast,m_axi_wvalid,m_axi_wready,m_axi_bresp[1:0],m_axi_bvalid,m_axi_bready,m_axi_araddr[31:0],m_axi_arlen[7:0],m_axi_arsize[2:0],m_axi_arburst[1:0],m_axi_arprot[2:0],m_axi_arvalid,m_axi_arready,m_axi_arlock,m_axi_arcache[3:0],m_axi_rdata[63:0],m_axi_rresp[1:0],m_axi_rlast,m_axi_rvalid,m_axi_rready,pci_exp_txp[0:0],pci_exp_txn[0:0],pci_exp_rxp[0:0],pci_exp_rxn[0:0],REFCLK,s_axi_ctl_awaddr[31:0],s_axi_ctl_awvalid,s_axi_ctl_awready,s_axi_ctl_wdata[31:0],s_axi_ctl_wstrb[3:0],s_axi_ctl_wvalid,s_axi_ctl_wready,s_axi_ctl_bresp[1:0],s_axi_ctl_bvalid,s_axi_ctl_bready,s_axi_ctl_araddr[31:0],s_axi_ctl_arvalid,s_axi_ctl_arready,s_axi_ctl_rdata[31:0],s_axi_ctl_rresp[1:0],s_axi_ctl_rvalid,s_axi_ctl_rready,pipe_txprbssel[2:0],pipe_rxprbssel[2:0],pipe_txprbsforceerr,pipe_rxprbscntreset,pipe_loopback[2:0],pipe_rxprbserr[0:0],pipe_txinhibit[0:0],pipe_rst_fsm[4:0],pipe_qrst_fsm[11:0],pipe_rate_fsm[4:0],pipe_sync_fsm_tx[5:0],pipe_sync_fsm_rx[6:0],pipe_drp_fsm[6:0],pipe_rst_idle,pipe_qrst_idle,pipe_rate_idle,pipe_eyescandataerror[0:0],pipe_rxstatus[2:0],pipe_dmonitorout[14:0],pipe_cpll_lock[0:0],pipe_qpll_lock[0:0],pipe_rxpmaresetdone[0:0],pipe_rxbufstatus[2:0],pipe_txphaligndone[0:0],pipe_txphinitdone[0:0],pipe_txdlysresetdone[0:0],pipe_rxphaligndone[0:0],pipe_rxdlysresetdone[0:0],pipe_rxsyncdone[0:0],pipe_rxdisperr[7:0],pipe_rxnotintable[7:0],pipe_rxcommadet[0:0],gt_ch_drp_rdy[0:0],pipe_debug_0[0:0],pipe_debug_1[0:0],pipe_debug_2[0:0],pipe_debug_3[0:0],pipe_debug_4[0:0],pipe_debug_5[0:0],pipe_debug_6[0:0],pipe_debug_7[0:0],pipe_debug_8[0:0],pipe_debug_9[0:0],pipe_debug[31:0],int_pclk_out_slave,int_rxusrclk_out,int_dclk_out,int_userclk1_out,int_userclk2_out,int_oobclk_out,int_mmcm_lock_out,int_qplllock_out[1:0],int_qplloutclk_out[1:0],int_qplloutrefclk_out[1:0],int_rxoutclk_out[0:0],int_pclk_sel_slave[0:0]" */;
  input axi_aresetn;
  output axi_aclk_out;
  output axi_ctl_aclk_out;
  output mmcm_lock;
  output interrupt_out;
  input INTX_MSI_Request;
  output INTX_MSI_Grant;
  output MSI_enable;
  input [4:0]MSI_Vector_Num;
  output [2:0]MSI_Vector_Width;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [3:0]s_axi_awregion;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awvalid;
  output s_axi_awready;
  input [63:0]s_axi_wdata;
  input [7:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [3:0]s_axi_arregion;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [63:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [2:0]m_axi_awprot;
  output m_axi_awvalid;
  input m_axi_awready;
  output m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [63:0]m_axi_wdata;
  output [7:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [2:0]m_axi_arprot;
  output m_axi_arvalid;
  input m_axi_arready;
  output m_axi_arlock;
  output [3:0]m_axi_arcache;
  input [63:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_rvalid;
  output m_axi_rready;
  output [0:0]pci_exp_txp;
  output [0:0]pci_exp_txn;
  input [0:0]pci_exp_rxp;
  input [0:0]pci_exp_rxn;
  input REFCLK;
  input [31:0]s_axi_ctl_awaddr;
  input s_axi_ctl_awvalid;
  output s_axi_ctl_awready;
  input [31:0]s_axi_ctl_wdata;
  input [3:0]s_axi_ctl_wstrb;
  input s_axi_ctl_wvalid;
  output s_axi_ctl_wready;
  output [1:0]s_axi_ctl_bresp;
  output s_axi_ctl_bvalid;
  input s_axi_ctl_bready;
  input [31:0]s_axi_ctl_araddr;
  input s_axi_ctl_arvalid;
  output s_axi_ctl_arready;
  output [31:0]s_axi_ctl_rdata;
  output [1:0]s_axi_ctl_rresp;
  output s_axi_ctl_rvalid;
  input s_axi_ctl_rready;
  input [2:0]pipe_txprbssel;
  input [2:0]pipe_rxprbssel;
  input pipe_txprbsforceerr;
  input pipe_rxprbscntreset;
  input [2:0]pipe_loopback;
  output [0:0]pipe_rxprbserr;
  input [0:0]pipe_txinhibit;
  output [4:0]pipe_rst_fsm;
  output [11:0]pipe_qrst_fsm;
  output [4:0]pipe_rate_fsm;
  output [5:0]pipe_sync_fsm_tx;
  output [6:0]pipe_sync_fsm_rx;
  output [6:0]pipe_drp_fsm;
  output pipe_rst_idle;
  output pipe_qrst_idle;
  output pipe_rate_idle;
  output [0:0]pipe_eyescandataerror;
  output [2:0]pipe_rxstatus;
  output [14:0]pipe_dmonitorout;
  output [0:0]pipe_cpll_lock;
  output [0:0]pipe_qpll_lock;
  output [0:0]pipe_rxpmaresetdone;
  output [2:0]pipe_rxbufstatus;
  output [0:0]pipe_txphaligndone;
  output [0:0]pipe_txphinitdone;
  output [0:0]pipe_txdlysresetdone;
  output [0:0]pipe_rxphaligndone;
  output [0:0]pipe_rxdlysresetdone;
  output [0:0]pipe_rxsyncdone;
  output [7:0]pipe_rxdisperr;
  output [7:0]pipe_rxnotintable;
  output [0:0]pipe_rxcommadet;
  output [0:0]gt_ch_drp_rdy;
  output [0:0]pipe_debug_0;
  output [0:0]pipe_debug_1;
  output [0:0]pipe_debug_2;
  output [0:0]pipe_debug_3;
  output [0:0]pipe_debug_4;
  output [0:0]pipe_debug_5;
  output [0:0]pipe_debug_6;
  output [0:0]pipe_debug_7;
  output [0:0]pipe_debug_8;
  output [0:0]pipe_debug_9;
  output [31:0]pipe_debug;
  output int_pclk_out_slave;
  output int_rxusrclk_out;
  output int_dclk_out;
  output int_userclk1_out;
  output int_userclk2_out;
  output int_oobclk_out;
  output int_mmcm_lock_out;
  output [1:0]int_qplllock_out;
  output [1:0]int_qplloutclk_out;
  output [1:0]int_qplloutrefclk_out;
  output [0:0]int_rxoutclk_out;
  input [0:0]int_pclk_sel_slave;
endmodule