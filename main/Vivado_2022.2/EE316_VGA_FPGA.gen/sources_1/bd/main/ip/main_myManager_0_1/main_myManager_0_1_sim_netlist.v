// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Tue Apr 11 12:40:14 2023
// Host        : eniac-solathomas running 64-bit Red Hat Enterprise Linux release 8.7 (Ootpa)
// Command     : write_verilog -force -mode funcsim
//               /repos/EE316/EE316_VGA_FPGA/main/Vivado_2022.2/EE316_VGA_FPGA.gen/sources_1/bd/main/ip/main_myManager_0_1/main_myManager_0_1_sim_netlist.v
// Design      : main_myManager_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "main_myManager_0_1,myManager_v1_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "myManager_v1_0,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module main_myManager_0_1
   (IRQ_i,
    m00_axi_init_axi_txn,
    m00_axi_error,
    m00_axi_txn_done,
    m00_axi_aclk,
    m00_axi_aresetn,
    m00_axi_awaddr,
    m00_axi_awprot,
    m00_axi_awvalid,
    m00_axi_awready,
    m00_axi_wdata,
    m00_axi_wstrb,
    m00_axi_wvalid,
    m00_axi_wready,
    m00_axi_bresp,
    m00_axi_bvalid,
    m00_axi_bready,
    m00_axi_araddr,
    m00_axi_arprot,
    m00_axi_arvalid,
    m00_axi_arready,
    m00_axi_rdata,
    m00_axi_rresp,
    m00_axi_rvalid,
    m00_axi_rready);
  input IRQ_i;
  input m00_axi_init_axi_txn;
  output m00_axi_error;
  output m00_axi_txn_done;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 M00_AXI_CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME M00_AXI_CLK, ASSOCIATED_BUSIF M00_AXI, ASSOCIATED_RESET m00_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input m00_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 M00_AXI_RST RST" *) (* x_interface_parameter = "XIL_INTERFACENAME M00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input m00_axi_aresetn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME M00_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output [31:0]m00_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI AWPROT" *) output [2:0]m00_axi_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI AWVALID" *) output m00_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI AWREADY" *) input m00_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI WDATA" *) output [31:0]m00_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI WSTRB" *) output [3:0]m00_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI WVALID" *) output m00_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI WREADY" *) input m00_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI BRESP" *) input [1:0]m00_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI BVALID" *) input m00_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI BREADY" *) output m00_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR" *) output [31:0]m00_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI ARPROT" *) output [2:0]m00_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI ARVALID" *) output m00_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI ARREADY" *) input m00_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI RDATA" *) input [31:0]m00_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI RRESP" *) input [1:0]m00_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI RVALID" *) input m00_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI RREADY" *) output m00_axi_rready;

  wire \<const0> ;
  wire \<const1> ;
  wire IRQ_i;
  wire m00_axi_aclk;
  wire m00_axi_aresetn;
  wire m00_axi_arready;
  wire m00_axi_arvalid;
  wire m00_axi_awready;
  wire m00_axi_awvalid;
  wire m00_axi_bready;
  wire m00_axi_bvalid;
  wire m00_axi_init_axi_txn;
  wire [31:0]m00_axi_rdata;
  wire m00_axi_rready;
  wire m00_axi_rvalid;
  wire m00_axi_wready;
  wire m00_axi_wvalid;

  assign m00_axi_araddr[31] = \<const0> ;
  assign m00_axi_araddr[30] = \<const1> ;
  assign m00_axi_araddr[29] = \<const0> ;
  assign m00_axi_araddr[28] = \<const0> ;
  assign m00_axi_araddr[27] = \<const0> ;
  assign m00_axi_araddr[26] = \<const0> ;
  assign m00_axi_araddr[25] = \<const0> ;
  assign m00_axi_araddr[24] = \<const0> ;
  assign m00_axi_araddr[23] = \<const0> ;
  assign m00_axi_araddr[22] = \<const0> ;
  assign m00_axi_araddr[21] = \<const0> ;
  assign m00_axi_araddr[20] = \<const0> ;
  assign m00_axi_araddr[19] = \<const0> ;
  assign m00_axi_araddr[18] = \<const0> ;
  assign m00_axi_araddr[17] = \<const0> ;
  assign m00_axi_araddr[16] = \<const0> ;
  assign m00_axi_araddr[15] = \<const0> ;
  assign m00_axi_araddr[14] = \<const0> ;
  assign m00_axi_araddr[13] = \<const0> ;
  assign m00_axi_araddr[12] = \<const0> ;
  assign m00_axi_araddr[11] = \<const0> ;
  assign m00_axi_araddr[10] = \<const0> ;
  assign m00_axi_araddr[9] = \<const0> ;
  assign m00_axi_araddr[8] = \<const0> ;
  assign m00_axi_araddr[7] = \<const0> ;
  assign m00_axi_araddr[6] = \<const0> ;
  assign m00_axi_araddr[5] = \<const0> ;
  assign m00_axi_araddr[4] = \<const0> ;
  assign m00_axi_araddr[3] = \<const0> ;
  assign m00_axi_araddr[2] = \<const0> ;
  assign m00_axi_araddr[1] = \<const0> ;
  assign m00_axi_araddr[0] = \<const0> ;
  assign m00_axi_arprot[2] = \<const0> ;
  assign m00_axi_arprot[1] = \<const0> ;
  assign m00_axi_arprot[0] = \<const1> ;
  assign m00_axi_awaddr[31] = \<const0> ;
  assign m00_axi_awaddr[30] = \<const1> ;
  assign m00_axi_awaddr[29] = \<const0> ;
  assign m00_axi_awaddr[28] = \<const0> ;
  assign m00_axi_awaddr[27] = \<const0> ;
  assign m00_axi_awaddr[26] = \<const0> ;
  assign m00_axi_awaddr[25] = \<const0> ;
  assign m00_axi_awaddr[24] = \<const0> ;
  assign m00_axi_awaddr[23] = \<const0> ;
  assign m00_axi_awaddr[22] = \<const0> ;
  assign m00_axi_awaddr[21] = \<const0> ;
  assign m00_axi_awaddr[20] = \<const0> ;
  assign m00_axi_awaddr[19] = \<const0> ;
  assign m00_axi_awaddr[18] = \<const0> ;
  assign m00_axi_awaddr[17] = \<const0> ;
  assign m00_axi_awaddr[16] = \<const0> ;
  assign m00_axi_awaddr[15] = \<const0> ;
  assign m00_axi_awaddr[14] = \<const0> ;
  assign m00_axi_awaddr[13] = \<const0> ;
  assign m00_axi_awaddr[12] = \<const0> ;
  assign m00_axi_awaddr[11] = \<const0> ;
  assign m00_axi_awaddr[10] = \<const0> ;
  assign m00_axi_awaddr[9] = \<const0> ;
  assign m00_axi_awaddr[8] = \<const0> ;
  assign m00_axi_awaddr[7] = \<const0> ;
  assign m00_axi_awaddr[6] = \<const0> ;
  assign m00_axi_awaddr[5] = \<const0> ;
  assign m00_axi_awaddr[4] = \<const0> ;
  assign m00_axi_awaddr[3] = \<const0> ;
  assign m00_axi_awaddr[2] = \<const0> ;
  assign m00_axi_awaddr[1] = \<const0> ;
  assign m00_axi_awaddr[0] = \<const0> ;
  assign m00_axi_awprot[2] = \<const0> ;
  assign m00_axi_awprot[1] = \<const0> ;
  assign m00_axi_awprot[0] = \<const0> ;
  assign m00_axi_error = \<const0> ;
  assign m00_axi_txn_done = \<const0> ;
  assign m00_axi_wdata[31] = \<const0> ;
  assign m00_axi_wdata[30] = \<const0> ;
  assign m00_axi_wdata[29] = \<const0> ;
  assign m00_axi_wdata[28] = \<const0> ;
  assign m00_axi_wdata[27] = \<const0> ;
  assign m00_axi_wdata[26] = \<const0> ;
  assign m00_axi_wdata[25] = \<const0> ;
  assign m00_axi_wdata[24] = \<const0> ;
  assign m00_axi_wdata[23] = \<const0> ;
  assign m00_axi_wdata[22] = \<const0> ;
  assign m00_axi_wdata[21] = \<const0> ;
  assign m00_axi_wdata[20] = \<const0> ;
  assign m00_axi_wdata[19] = \<const0> ;
  assign m00_axi_wdata[18] = \<const0> ;
  assign m00_axi_wdata[17] = \<const0> ;
  assign m00_axi_wdata[16] = \<const0> ;
  assign m00_axi_wdata[15] = \<const0> ;
  assign m00_axi_wdata[14] = \<const0> ;
  assign m00_axi_wdata[13] = \<const0> ;
  assign m00_axi_wdata[12] = \<const0> ;
  assign m00_axi_wdata[11] = \<const0> ;
  assign m00_axi_wdata[10] = \<const0> ;
  assign m00_axi_wdata[9] = \<const0> ;
  assign m00_axi_wdata[8] = \<const0> ;
  assign m00_axi_wdata[7] = \<const0> ;
  assign m00_axi_wdata[6] = \<const0> ;
  assign m00_axi_wdata[5] = \<const0> ;
  assign m00_axi_wdata[4] = \<const0> ;
  assign m00_axi_wdata[3] = \<const0> ;
  assign m00_axi_wdata[2] = \<const0> ;
  assign m00_axi_wdata[1] = \<const0> ;
  assign m00_axi_wdata[0] = \<const0> ;
  assign m00_axi_wstrb[3] = \<const1> ;
  assign m00_axi_wstrb[2] = \<const1> ;
  assign m00_axi_wstrb[1] = \<const1> ;
  assign m00_axi_wstrb[0] = \<const1> ;
  GND GND
       (.G(\<const0> ));
  main_myManager_0_1_myManager_v1_0 U0
       (.IRQ_i(IRQ_i),
        .axi_bready_reg(m00_axi_bready),
        .axi_rready_reg(m00_axi_rready),
        .m00_axi_aclk(m00_axi_aclk),
        .m00_axi_aresetn(m00_axi_aresetn),
        .m00_axi_arready(m00_axi_arready),
        .m00_axi_arvalid(m00_axi_arvalid),
        .m00_axi_awready(m00_axi_awready),
        .m00_axi_awvalid(m00_axi_awvalid),
        .m00_axi_bvalid(m00_axi_bvalid),
        .m00_axi_init_axi_txn(m00_axi_init_axi_txn),
        .m00_axi_rdata(m00_axi_rdata[7:0]),
        .m00_axi_rvalid(m00_axi_rvalid),
        .m00_axi_wready(m00_axi_wready),
        .m00_axi_wvalid(m00_axi_wvalid));
  VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "myManager_v1_0" *) 
module main_myManager_0_1_myManager_v1_0
   (axi_bready_reg,
    axi_rready_reg,
    m00_axi_arvalid,
    m00_axi_awvalid,
    m00_axi_wvalid,
    m00_axi_aresetn,
    IRQ_i,
    m00_axi_aclk,
    m00_axi_init_axi_txn,
    m00_axi_bvalid,
    m00_axi_rvalid,
    m00_axi_rdata,
    m00_axi_arready,
    m00_axi_wready,
    m00_axi_awready);
  output axi_bready_reg;
  output axi_rready_reg;
  output m00_axi_arvalid;
  output m00_axi_awvalid;
  output m00_axi_wvalid;
  input m00_axi_aresetn;
  input IRQ_i;
  input m00_axi_aclk;
  input m00_axi_init_axi_txn;
  input m00_axi_bvalid;
  input m00_axi_rvalid;
  input [7:0]m00_axi_rdata;
  input m00_axi_arready;
  input m00_axi_wready;
  input m00_axi_awready;

  wire IRQ_i;
  wire axi_bready_reg;
  wire axi_rready_reg;
  wire m00_axi_aclk;
  wire m00_axi_aresetn;
  wire m00_axi_arready;
  wire m00_axi_arvalid;
  wire m00_axi_awready;
  wire m00_axi_awvalid;
  wire m00_axi_bvalid;
  wire m00_axi_init_axi_txn;
  wire [7:0]m00_axi_rdata;
  wire m00_axi_rvalid;
  wire m00_axi_wready;
  wire m00_axi_wvalid;

  main_myManager_0_1_myManager_v1_0_M00_AXI myManager_v1_0_M00_AXI_inst
       (.IRQ_i(IRQ_i),
        .axi_bready_reg_0(axi_bready_reg),
        .axi_rready_reg_0(axi_rready_reg),
        .m00_axi_aclk(m00_axi_aclk),
        .m00_axi_aresetn(m00_axi_aresetn),
        .m00_axi_arready(m00_axi_arready),
        .m00_axi_arvalid(m00_axi_arvalid),
        .m00_axi_awready(m00_axi_awready),
        .m00_axi_awvalid(m00_axi_awvalid),
        .m00_axi_bvalid(m00_axi_bvalid),
        .m00_axi_init_axi_txn(m00_axi_init_axi_txn),
        .m00_axi_rdata(m00_axi_rdata),
        .m00_axi_rvalid(m00_axi_rvalid),
        .m00_axi_wready(m00_axi_wready),
        .m00_axi_wvalid(m00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "myManager_v1_0_M00_AXI" *) 
module main_myManager_0_1_myManager_v1_0_M00_AXI
   (axi_bready_reg_0,
    axi_rready_reg_0,
    m00_axi_arvalid,
    m00_axi_awvalid,
    m00_axi_wvalid,
    m00_axi_aresetn,
    IRQ_i,
    m00_axi_aclk,
    m00_axi_init_axi_txn,
    m00_axi_bvalid,
    m00_axi_rvalid,
    m00_axi_rdata,
    m00_axi_arready,
    m00_axi_wready,
    m00_axi_awready);
  output axi_bready_reg_0;
  output axi_rready_reg_0;
  output m00_axi_arvalid;
  output m00_axi_awvalid;
  output m00_axi_wvalid;
  input m00_axi_aresetn;
  input IRQ_i;
  input m00_axi_aclk;
  input m00_axi_init_axi_txn;
  input m00_axi_bvalid;
  input m00_axi_rvalid;
  input [7:0]m00_axi_rdata;
  input m00_axi_arready;
  input m00_axi_wready;
  input m00_axi_awready;

  wire \FSM_sequential_mst_exec_state[0]_i_1_n_0 ;
  wire \FSM_sequential_mst_exec_state[0]_i_2_n_0 ;
  wire \FSM_sequential_mst_exec_state[1]_i_1_n_0 ;
  wire \FSM_sequential_mst_exec_state[1]_i_2_n_0 ;
  wire \FSM_sequential_mst_exec_state[1]_i_3_n_0 ;
  wire \FSM_sequential_mst_exec_state[1]_i_4_n_0 ;
  wire \FSM_sequential_mst_exec_state[1]_i_5_n_0 ;
  wire \FSM_sequential_mst_exec_state[1]_i_6_n_0 ;
  wire \FSM_sequential_mst_exec_state[1]_i_7_n_0 ;
  wire \FSM_sequential_mst_exec_state[1]_i_8_n_0 ;
  wire \FSM_sequential_mst_exec_state[1]_i_9_n_0 ;
  wire \FSM_sequential_mst_exec_state[2]_i_1_n_0 ;
  wire \FSM_sequential_mst_exec_state[2]_i_2_n_0 ;
  wire \FSM_sequential_mst_exec_state[2]_i_3_n_0 ;
  wire \FSM_sequential_mst_exec_state[2]_i_4_n_0 ;
  wire \FSM_sequential_mst_exec_state[2]_i_5_n_0 ;
  wire \FSM_sequential_mst_exec_state[2]_i_6_n_0 ;
  wire \FSM_sequential_mst_exec_state[2]_i_7_n_0 ;
  wire IRQ_i;
  wire \MASTER_EXECUTION_PROC.extended_i_1_n_0 ;
  wire \MASTER_EXECUTION_PROC.extended_reg_n_0 ;
  wire \MASTER_EXECUTION_PROC.keyup_i_1_n_0 ;
  wire \MASTER_EXECUTION_PROC.keyup_i_2_n_0 ;
  wire \MASTER_EXECUTION_PROC.keyup_i_3_n_0 ;
  wire \MASTER_EXECUTION_PROC.keyup_i_5_n_0 ;
  wire \MASTER_EXECUTION_PROC.keyup_i_6_n_0 ;
  wire \MASTER_EXECUTION_PROC.keyup_reg_n_0 ;
  wire axi_arvalid_i_1_n_0;
  wire axi_awvalid_i_1_n_0;
  wire axi_awvalid_i_2_n_0;
  wire axi_bready_i_1_n_0;
  wire axi_bready_reg_0;
  wire axi_rready_i_1_n_0;
  wire axi_rready_reg_0;
  wire axi_wvalid_i_1_n_0;
  wire [6:0]current_char;
  wire \current_char[0]_i_1_n_0 ;
  wire \current_char[1]_i_1_n_0 ;
  wire \current_char[1]_i_2_n_0 ;
  wire \current_char[1]_i_3_n_0 ;
  wire \current_char[2]_i_1_n_0 ;
  wire \current_char[3]_i_1_n_0 ;
  wire \current_char[4]_i_1_n_0 ;
  wire \current_char[5]_i_1_n_0 ;
  wire \current_char[5]_i_2_n_0 ;
  wire \current_char[5]_i_3_n_0 ;
  wire \current_char[6]_i_2_n_0 ;
  wire \current_char[6]_i_3_n_0 ;
  wire \current_char[6]_i_4_n_0 ;
  wire \current_char[6]_i_5_n_0 ;
  wire \current_char[6]_i_6_n_0 ;
  wire current_char_1;
  wire [5:0]current_line;
  wire \current_line[0]_i_1_n_0 ;
  wire \current_line[1]_i_1_n_0 ;
  wire \current_line[2]_i_1_n_0 ;
  wire \current_line[2]_i_2_n_0 ;
  wire \current_line[3]_i_1_n_0 ;
  wire \current_line[3]_i_2_n_0 ;
  wire \current_line[3]_i_3_n_0 ;
  wire \current_line[3]_i_4_n_0 ;
  wire \current_line[4]_i_1_n_0 ;
  wire \current_line[4]_i_2_n_0 ;
  wire \current_line[4]_i_3_n_0 ;
  wire \current_line[5]_i_2_n_0 ;
  wire \current_line[5]_i_3_n_0 ;
  wire \current_line[5]_i_4_n_0 ;
  wire \current_line[5]_i_5_n_0 ;
  wire current_line_0;
  wire extended__0;
  wire init_txn_ff;
  wire init_txn_ff2;
  wire m00_axi_aclk;
  wire m00_axi_aresetn;
  wire m00_axi_arready;
  wire m00_axi_arvalid;
  wire m00_axi_awready;
  wire m00_axi_awvalid;
  wire m00_axi_bvalid;
  wire m00_axi_init_axi_txn;
  wire [7:0]m00_axi_rdata;
  wire m00_axi_rvalid;
  wire m00_axi_wready;
  wire m00_axi_wvalid;
  wire [2:0]mst_exec_state;
  wire read_issued_i_1_n_0;
  wire read_issued_reg_n_0;
  wire scan_line;
  wire \scan_line[0]_i_1_n_0 ;
  wire \scan_line[1]_i_1_n_0 ;
  wire \scan_line[2]_i_1_n_0 ;
  wire \scan_line[3]_i_2_n_0 ;
  wire \scan_line_reg_n_0_[0] ;
  wire \scan_line_reg_n_0_[1] ;
  wire \scan_line_reg_n_0_[2] ;
  wire \scan_line_reg_n_0_[3] ;
  wire start_single_read0;
  wire start_single_read_i_1_n_0;
  wire start_single_read_reg_n_0;
  wire start_single_write0;
  wire start_single_write_i_1_n_0;
  wire start_single_write_reg_n_0;
  wire write_issued_i_1_n_0;
  wire write_issued_reg_n_0;

  LUT6 #(
    .INIT(64'hF7030454F70F0454)) 
    \FSM_sequential_mst_exec_state[0]_i_1 
       (.I0(\FSM_sequential_mst_exec_state[0]_i_2_n_0 ),
        .I1(\FSM_sequential_mst_exec_state[2]_i_4_n_0 ),
        .I2(mst_exec_state[1]),
        .I3(mst_exec_state[2]),
        .I4(mst_exec_state[0]),
        .I5(IRQ_i),
        .O(\FSM_sequential_mst_exec_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000EFEFEFE)) 
    \FSM_sequential_mst_exec_state[0]_i_2 
       (.I0(\FSM_sequential_mst_exec_state[2]_i_3_n_0 ),
        .I1(\current_char[6]_i_3_n_0 ),
        .I2(mst_exec_state[1]),
        .I3(m00_axi_rvalid),
        .I4(axi_rready_reg_0),
        .I5(mst_exec_state[2]),
        .O(\FSM_sequential_mst_exec_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF000E000E0E0E0E)) 
    \FSM_sequential_mst_exec_state[1]_i_1 
       (.I0(\FSM_sequential_mst_exec_state[1]_i_2_n_0 ),
        .I1(\FSM_sequential_mst_exec_state[1]_i_3_n_0 ),
        .I2(\FSM_sequential_mst_exec_state[1]_i_4_n_0 ),
        .I3(mst_exec_state[1]),
        .I4(mst_exec_state[2]),
        .I5(\FSM_sequential_mst_exec_state[1]_i_5_n_0 ),
        .O(\FSM_sequential_mst_exec_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF6FFFAFAFEFFFEFF)) 
    \FSM_sequential_mst_exec_state[1]_i_2 
       (.I0(m00_axi_rdata[3]),
        .I1(m00_axi_rdata[6]),
        .I2(\FSM_sequential_mst_exec_state[1]_i_6_n_0 ),
        .I3(m00_axi_rdata[4]),
        .I4(m00_axi_rdata[0]),
        .I5(\FSM_sequential_mst_exec_state[1]_i_7_n_0 ),
        .O(\FSM_sequential_mst_exec_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFA7777AAAF)) 
    \FSM_sequential_mst_exec_state[1]_i_3 
       (.I0(m00_axi_rdata[7]),
        .I1(m00_axi_rdata[6]),
        .I2(m00_axi_rdata[1]),
        .I3(m00_axi_rdata[2]),
        .I4(m00_axi_rdata[5]),
        .I5(m00_axi_rdata[0]),
        .O(\FSM_sequential_mst_exec_state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF7F0000)) 
    \FSM_sequential_mst_exec_state[1]_i_4 
       (.I0(\current_char[6]_i_3_n_0 ),
        .I1(axi_bready_reg_0),
        .I2(m00_axi_bvalid),
        .I3(mst_exec_state[1]),
        .I4(mst_exec_state[2]),
        .I5(\FSM_sequential_mst_exec_state[1]_i_8_n_0 ),
        .O(\FSM_sequential_mst_exec_state[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hABABABABAAABABAB)) 
    \FSM_sequential_mst_exec_state[1]_i_5 
       (.I0(\FSM_sequential_mst_exec_state[1]_i_9_n_0 ),
        .I1(\current_char[6]_i_3_n_0 ),
        .I2(\FSM_sequential_mst_exec_state[2]_i_7_n_0 ),
        .I3(\FSM_sequential_mst_exec_state[2]_i_6_n_0 ),
        .I4(\current_char[6]_i_6_n_0 ),
        .I5(\FSM_sequential_mst_exec_state[2]_i_5_n_0 ),
        .O(\FSM_sequential_mst_exec_state[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFF7F7F7)) 
    \FSM_sequential_mst_exec_state[1]_i_6 
       (.I0(axi_rready_reg_0),
        .I1(m00_axi_rvalid),
        .I2(mst_exec_state[0]),
        .I3(m00_axi_rdata[1]),
        .I4(m00_axi_rdata[2]),
        .O(\FSM_sequential_mst_exec_state[1]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_mst_exec_state[1]_i_7 
       (.I0(m00_axi_rdata[2]),
        .I1(m00_axi_rdata[1]),
        .O(\FSM_sequential_mst_exec_state[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000E000FFFF)) 
    \FSM_sequential_mst_exec_state[1]_i_8 
       (.I0(\MASTER_EXECUTION_PROC.keyup_reg_n_0 ),
        .I1(\MASTER_EXECUTION_PROC.extended_reg_n_0 ),
        .I2(m00_axi_rvalid),
        .I3(axi_rready_reg_0),
        .I4(mst_exec_state[1]),
        .I5(mst_exec_state[0]),
        .O(\FSM_sequential_mst_exec_state[1]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hAABA)) 
    \FSM_sequential_mst_exec_state[1]_i_9 
       (.I0(mst_exec_state[1]),
        .I1(mst_exec_state[2]),
        .I2(mst_exec_state[0]),
        .I3(IRQ_i),
        .O(\FSM_sequential_mst_exec_state[1]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_mst_exec_state[2]_i_1 
       (.I0(m00_axi_aresetn),
        .O(\FSM_sequential_mst_exec_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFBF0FF00)) 
    \FSM_sequential_mst_exec_state[2]_i_2 
       (.I0(\FSM_sequential_mst_exec_state[2]_i_3_n_0 ),
        .I1(\FSM_sequential_mst_exec_state[2]_i_4_n_0 ),
        .I2(mst_exec_state[1]),
        .I3(mst_exec_state[2]),
        .I4(mst_exec_state[0]),
        .O(\FSM_sequential_mst_exec_state[2]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_sequential_mst_exec_state[2]_i_3 
       (.I0(axi_bready_reg_0),
        .I1(m00_axi_bvalid),
        .O(\FSM_sequential_mst_exec_state[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFF40)) 
    \FSM_sequential_mst_exec_state[2]_i_4 
       (.I0(\FSM_sequential_mst_exec_state[2]_i_5_n_0 ),
        .I1(\current_char[6]_i_6_n_0 ),
        .I2(\FSM_sequential_mst_exec_state[2]_i_6_n_0 ),
        .I3(\FSM_sequential_mst_exec_state[2]_i_7_n_0 ),
        .I4(\current_char[6]_i_3_n_0 ),
        .O(\FSM_sequential_mst_exec_state[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF7FFFFF)) 
    \FSM_sequential_mst_exec_state[2]_i_5 
       (.I0(current_line[2]),
        .I1(current_line[1]),
        .I2(current_line[0]),
        .I3(current_line[4]),
        .I4(current_line[5]),
        .I5(current_line[3]),
        .O(\FSM_sequential_mst_exec_state[2]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \FSM_sequential_mst_exec_state[2]_i_6 
       (.I0(current_char[6]),
        .I1(current_char[5]),
        .I2(current_char[4]),
        .O(\FSM_sequential_mst_exec_state[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    \FSM_sequential_mst_exec_state[2]_i_7 
       (.I0(mst_exec_state[0]),
        .I1(mst_exec_state[2]),
        .I2(m00_axi_bvalid),
        .I3(axi_bready_reg_0),
        .O(\FSM_sequential_mst_exec_state[2]_i_7_n_0 ));
  (* FSM_ENCODED_STATES = "getpixels2:100,initmem:000,wait4code:010,wait4memack:101,getpixels1:011,wait4irq:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_mst_exec_state_reg[0] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_mst_exec_state[0]_i_1_n_0 ),
        .Q(mst_exec_state[0]),
        .R(\FSM_sequential_mst_exec_state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "getpixels2:100,initmem:000,wait4code:010,wait4memack:101,getpixels1:011,wait4irq:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_mst_exec_state_reg[1] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_mst_exec_state[1]_i_1_n_0 ),
        .Q(mst_exec_state[1]),
        .R(\FSM_sequential_mst_exec_state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "getpixels2:100,initmem:000,wait4code:010,wait4memack:101,getpixels1:011,wait4irq:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_mst_exec_state_reg[2] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_mst_exec_state[2]_i_2_n_0 ),
        .Q(mst_exec_state[2]),
        .R(\FSM_sequential_mst_exec_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \MASTER_EXECUTION_PROC.extended_i_1 
       (.I0(extended__0),
        .I1(\MASTER_EXECUTION_PROC.keyup_i_2_n_0 ),
        .I2(\MASTER_EXECUTION_PROC.keyup_i_3_n_0 ),
        .I3(axi_rready_reg_0),
        .I4(m00_axi_rvalid),
        .I5(\MASTER_EXECUTION_PROC.extended_reg_n_0 ),
        .O(\MASTER_EXECUTION_PROC.extended_i_1_n_0 ));
  FDRE \MASTER_EXECUTION_PROC.extended_reg 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\MASTER_EXECUTION_PROC.extended_i_1_n_0 ),
        .Q(\MASTER_EXECUTION_PROC.extended_reg_n_0 ),
        .R(\FSM_sequential_mst_exec_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFDFFF00001000)) 
    \MASTER_EXECUTION_PROC.keyup_i_1 
       (.I0(\MASTER_EXECUTION_PROC.keyup_i_2_n_0 ),
        .I1(\MASTER_EXECUTION_PROC.keyup_i_3_n_0 ),
        .I2(axi_rready_reg_0),
        .I3(m00_axi_rvalid),
        .I4(extended__0),
        .I5(\MASTER_EXECUTION_PROC.keyup_reg_n_0 ),
        .O(\MASTER_EXECUTION_PROC.keyup_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF7FFFF)) 
    \MASTER_EXECUTION_PROC.keyup_i_2 
       (.I0(m00_axi_rdata[6]),
        .I1(m00_axi_rdata[4]),
        .I2(m00_axi_rdata[0]),
        .I3(m00_axi_rdata[3]),
        .I4(\FSM_sequential_mst_exec_state[1]_i_7_n_0 ),
        .I5(\MASTER_EXECUTION_PROC.keyup_i_5_n_0 ),
        .O(\MASTER_EXECUTION_PROC.keyup_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \MASTER_EXECUTION_PROC.keyup_i_3 
       (.I0(mst_exec_state[0]),
        .I1(mst_exec_state[1]),
        .I2(mst_exec_state[2]),
        .O(\MASTER_EXECUTION_PROC.keyup_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \MASTER_EXECUTION_PROC.keyup_i_4 
       (.I0(\MASTER_EXECUTION_PROC.keyup_i_6_n_0 ),
        .I1(m00_axi_rdata[4]),
        .I2(m00_axi_rdata[6]),
        .I3(m00_axi_rdata[3]),
        .I4(m00_axi_rdata[5]),
        .I5(m00_axi_rdata[7]),
        .O(extended__0));
  LUT2 #(
    .INIT(4'h7)) 
    \MASTER_EXECUTION_PROC.keyup_i_5 
       (.I0(m00_axi_rdata[5]),
        .I1(m00_axi_rdata[7]),
        .O(\MASTER_EXECUTION_PROC.keyup_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \MASTER_EXECUTION_PROC.keyup_i_6 
       (.I0(m00_axi_rdata[1]),
        .I1(m00_axi_rdata[2]),
        .I2(m00_axi_rdata[0]),
        .O(\MASTER_EXECUTION_PROC.keyup_i_6_n_0 ));
  FDRE \MASTER_EXECUTION_PROC.keyup_reg 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\MASTER_EXECUTION_PROC.keyup_i_1_n_0 ),
        .Q(\MASTER_EXECUTION_PROC.keyup_reg_n_0 ),
        .R(\FSM_sequential_mst_exec_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    axi_arvalid_i_1
       (.I0(start_single_read_reg_n_0),
        .I1(m00_axi_arready),
        .I2(m00_axi_arvalid),
        .O(axi_arvalid_i_1_n_0));
  FDRE axi_arvalid_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(axi_arvalid_i_1_n_0),
        .Q(m00_axi_arvalid),
        .R(axi_awvalid_i_1_n_0));
  LUT3 #(
    .INIT(8'h4F)) 
    axi_awvalid_i_1
       (.I0(init_txn_ff2),
        .I1(init_txn_ff),
        .I2(m00_axi_aresetn),
        .O(axi_awvalid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    axi_awvalid_i_2
       (.I0(start_single_write_reg_n_0),
        .I1(m00_axi_awready),
        .I2(m00_axi_awvalid),
        .O(axi_awvalid_i_2_n_0));
  FDRE axi_awvalid_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(axi_awvalid_i_2_n_0),
        .Q(m00_axi_awvalid),
        .R(axi_awvalid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h4)) 
    axi_bready_i_1
       (.I0(axi_bready_reg_0),
        .I1(m00_axi_bvalid),
        .O(axi_bready_i_1_n_0));
  FDRE axi_bready_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(axi_bready_i_1_n_0),
        .Q(axi_bready_reg_0),
        .R(axi_awvalid_i_1_n_0));
  LUT5 #(
    .INIT(32'h4F4FFF4F)) 
    axi_rready_i_1
       (.I0(axi_rready_reg_0),
        .I1(m00_axi_rvalid),
        .I2(m00_axi_aresetn),
        .I3(init_txn_ff),
        .I4(init_txn_ff2),
        .O(axi_rready_i_1_n_0));
  FDRE axi_rready_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(axi_rready_i_1_n_0),
        .Q(axi_rready_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    axi_wvalid_i_1
       (.I0(start_single_write_reg_n_0),
        .I1(m00_axi_wready),
        .I2(m00_axi_wvalid),
        .O(axi_wvalid_i_1_n_0));
  FDRE axi_wvalid_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(axi_wvalid_i_1_n_0),
        .Q(m00_axi_wvalid),
        .R(axi_awvalid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0075)) 
    \current_char[0]_i_1 
       (.I0(\current_char[1]_i_2_n_0 ),
        .I1(mst_exec_state[0]),
        .I2(mst_exec_state[2]),
        .I3(current_char[0]),
        .O(\current_char[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h0C51510C)) 
    \current_char[1]_i_1 
       (.I0(\current_char[1]_i_2_n_0 ),
        .I1(mst_exec_state[2]),
        .I2(mst_exec_state[0]),
        .I3(current_char[1]),
        .I4(current_char[0]),
        .O(\current_char[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \current_char[1]_i_2 
       (.I0(current_char[3]),
        .I1(current_char[2]),
        .I2(\current_char[1]_i_3_n_0 ),
        .I3(current_char[4]),
        .I4(current_char[5]),
        .I5(current_char[6]),
        .O(\current_char[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \current_char[1]_i_3 
       (.I0(current_char[1]),
        .I1(current_char[0]),
        .O(\current_char[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h4FFBB004)) 
    \current_char[2]_i_1 
       (.I0(mst_exec_state[0]),
        .I1(mst_exec_state[2]),
        .I2(current_char[1]),
        .I3(current_char[0]),
        .I4(current_char[2]),
        .O(\current_char[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hBFFD4002)) 
    \current_char[3]_i_1 
       (.I0(\current_char[6]_i_5_n_0 ),
        .I1(current_char[0]),
        .I2(current_char[1]),
        .I3(current_char[2]),
        .I4(current_char[3]),
        .O(\current_char[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4B784B7848784370)) 
    \current_char[4]_i_1 
       (.I0(\current_char[6]_i_4_n_0 ),
        .I1(\current_char[6]_i_5_n_0 ),
        .I2(current_char[4]),
        .I3(\current_char[6]_i_6_n_0 ),
        .I4(current_char[6]),
        .I5(current_char[5]),
        .O(\current_char[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000066F6)) 
    \current_char[5]_i_1 
       (.I0(current_char[5]),
        .I1(\current_char[5]_i_2_n_0 ),
        .I2(mst_exec_state[2]),
        .I3(mst_exec_state[0]),
        .I4(\current_char[5]_i_3_n_0 ),
        .O(\current_char[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \current_char[5]_i_2 
       (.I0(current_char[3]),
        .I1(current_char[2]),
        .I2(current_char[1]),
        .I3(current_char[0]),
        .I4(current_char[4]),
        .O(\current_char[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000440044440444)) 
    \current_char[5]_i_3 
       (.I0(mst_exec_state[0]),
        .I1(mst_exec_state[2]),
        .I2(current_char[6]),
        .I3(\current_char[6]_i_4_n_0 ),
        .I4(current_char[4]),
        .I5(current_char[5]),
        .O(\current_char[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h1001000000000000)) 
    \current_char[6]_i_1 
       (.I0(\current_char[6]_i_3_n_0 ),
        .I1(mst_exec_state[1]),
        .I2(mst_exec_state[0]),
        .I3(mst_exec_state[2]),
        .I4(axi_bready_reg_0),
        .I5(m00_axi_bvalid),
        .O(current_char_1));
  LUT6 #(
    .INIT(64'hC3F0F048F0F0F078)) 
    \current_char[6]_i_2 
       (.I0(\current_char[6]_i_4_n_0 ),
        .I1(\current_char[6]_i_5_n_0 ),
        .I2(current_char[6]),
        .I3(current_char[5]),
        .I4(current_char[4]),
        .I5(\current_char[6]_i_6_n_0 ),
        .O(\current_char[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFF7F)) 
    \current_char[6]_i_3 
       (.I0(\scan_line_reg_n_0_[0] ),
        .I1(\scan_line_reg_n_0_[1] ),
        .I2(\scan_line_reg_n_0_[3] ),
        .I3(\scan_line_reg_n_0_[2] ),
        .O(\current_char[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \current_char[6]_i_4 
       (.I0(current_char[2]),
        .I1(current_char[1]),
        .I2(current_char[0]),
        .I3(current_char[3]),
        .O(\current_char[6]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_char[6]_i_5 
       (.I0(mst_exec_state[2]),
        .I1(mst_exec_state[0]),
        .O(\current_char[6]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \current_char[6]_i_6 
       (.I0(current_char[0]),
        .I1(current_char[1]),
        .I2(current_char[2]),
        .I3(current_char[3]),
        .O(\current_char[6]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_char_reg[0] 
       (.C(m00_axi_aclk),
        .CE(current_char_1),
        .D(\current_char[0]_i_1_n_0 ),
        .Q(current_char[0]),
        .R(\FSM_sequential_mst_exec_state[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_char_reg[1] 
       (.C(m00_axi_aclk),
        .CE(current_char_1),
        .D(\current_char[1]_i_1_n_0 ),
        .Q(current_char[1]),
        .R(\FSM_sequential_mst_exec_state[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_char_reg[2] 
       (.C(m00_axi_aclk),
        .CE(current_char_1),
        .D(\current_char[2]_i_1_n_0 ),
        .Q(current_char[2]),
        .R(\FSM_sequential_mst_exec_state[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_char_reg[3] 
       (.C(m00_axi_aclk),
        .CE(current_char_1),
        .D(\current_char[3]_i_1_n_0 ),
        .Q(current_char[3]),
        .R(\FSM_sequential_mst_exec_state[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_char_reg[4] 
       (.C(m00_axi_aclk),
        .CE(current_char_1),
        .D(\current_char[4]_i_1_n_0 ),
        .Q(current_char[4]),
        .R(\FSM_sequential_mst_exec_state[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_char_reg[5] 
       (.C(m00_axi_aclk),
        .CE(current_char_1),
        .D(\current_char[5]_i_1_n_0 ),
        .Q(current_char[5]),
        .R(\FSM_sequential_mst_exec_state[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_char_reg[6] 
       (.C(m00_axi_aclk),
        .CE(current_char_1),
        .D(\current_char[6]_i_2_n_0 ),
        .Q(current_char[6]),
        .R(\FSM_sequential_mst_exec_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h000D)) 
    \current_line[0]_i_1 
       (.I0(\current_line[2]_i_2_n_0 ),
        .I1(\current_line[5]_i_4_n_0 ),
        .I2(mst_exec_state[1]),
        .I3(current_line[0]),
        .O(\current_line[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000055CFCF55)) 
    \current_line[1]_i_1 
       (.I0(\current_line[2]_i_2_n_0 ),
        .I1(mst_exec_state[0]),
        .I2(mst_exec_state[2]),
        .I3(current_line[0]),
        .I4(current_line[1]),
        .I5(mst_exec_state[1]),
        .O(\current_line[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000154054015541)) 
    \current_line[2]_i_1 
       (.I0(mst_exec_state[1]),
        .I1(current_line[0]),
        .I2(current_line[1]),
        .I3(current_line[2]),
        .I4(\current_char[6]_i_5_n_0 ),
        .I5(\current_line[2]_i_2_n_0 ),
        .O(\current_line[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFF04FFFF)) 
    \current_line[2]_i_2 
       (.I0(current_line[5]),
        .I1(\current_line[4]_i_3_n_0 ),
        .I2(current_line[4]),
        .I3(mst_exec_state[0]),
        .I4(mst_exec_state[2]),
        .O(\current_line[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h40045555)) 
    \current_line[3]_i_1 
       (.I0(mst_exec_state[1]),
        .I1(\current_line[5]_i_4_n_0 ),
        .I2(\current_line[3]_i_2_n_0 ),
        .I3(current_line[3]),
        .I4(\current_line[3]_i_3_n_0 ),
        .O(\current_line[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \current_line[3]_i_2 
       (.I0(current_line[0]),
        .I1(current_line[1]),
        .I2(current_line[2]),
        .O(\current_line[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h55FFF55F55FFF57F)) 
    \current_line[3]_i_3 
       (.I0(\current_char[6]_i_5_n_0 ),
        .I1(current_line[4]),
        .I2(\current_line[3]_i_4_n_0 ),
        .I3(current_line[3]),
        .I4(current_line[2]),
        .I5(current_line[5]),
        .O(\current_line[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \current_line[3]_i_4 
       (.I0(current_line[1]),
        .I1(current_line[0]),
        .O(\current_line[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h1114001444144414)) 
    \current_line[4]_i_1 
       (.I0(mst_exec_state[1]),
        .I1(current_line[4]),
        .I2(\current_line[4]_i_2_n_0 ),
        .I3(\current_char[6]_i_5_n_0 ),
        .I4(current_line[5]),
        .I5(\current_line[4]_i_3_n_0 ),
        .O(\current_line[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \current_line[4]_i_2 
       (.I0(current_line[3]),
        .I1(current_line[2]),
        .I2(current_line[1]),
        .I3(current_line[0]),
        .O(\current_line[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \current_line[4]_i_3 
       (.I0(current_line[0]),
        .I1(current_line[1]),
        .I2(current_line[3]),
        .I3(current_line[2]),
        .O(\current_line[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \current_line[5]_i_1 
       (.I0(\current_char[1]_i_2_n_0 ),
        .I1(current_char_1),
        .O(current_line_0));
  LUT6 #(
    .INIT(64'h00000000F22200F0)) 
    \current_line[5]_i_2 
       (.I0(\current_char[6]_i_5_n_0 ),
        .I1(\current_line[5]_i_3_n_0 ),
        .I2(\current_line[5]_i_4_n_0 ),
        .I3(\current_line[5]_i_5_n_0 ),
        .I4(current_line[5]),
        .I5(mst_exec_state[1]),
        .O(\current_line[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \current_line[5]_i_3 
       (.I0(current_line[2]),
        .I1(current_line[3]),
        .I2(current_line[1]),
        .I3(current_line[0]),
        .I4(current_line[4]),
        .O(\current_line[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFB0000FFFBFFFB)) 
    \current_line[5]_i_4 
       (.I0(current_line[3]),
        .I1(current_line[5]),
        .I2(current_line[4]),
        .I3(\current_line[3]_i_2_n_0 ),
        .I4(mst_exec_state[0]),
        .I5(mst_exec_state[2]),
        .O(\current_line[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \current_line[5]_i_5 
       (.I0(current_line[4]),
        .I1(current_line[0]),
        .I2(current_line[1]),
        .I3(current_line[2]),
        .I4(current_line[3]),
        .O(\current_line[5]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_reg[0] 
       (.C(m00_axi_aclk),
        .CE(current_line_0),
        .D(\current_line[0]_i_1_n_0 ),
        .Q(current_line[0]),
        .R(\FSM_sequential_mst_exec_state[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_reg[1] 
       (.C(m00_axi_aclk),
        .CE(current_line_0),
        .D(\current_line[1]_i_1_n_0 ),
        .Q(current_line[1]),
        .R(\FSM_sequential_mst_exec_state[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_reg[2] 
       (.C(m00_axi_aclk),
        .CE(current_line_0),
        .D(\current_line[2]_i_1_n_0 ),
        .Q(current_line[2]),
        .R(\FSM_sequential_mst_exec_state[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_reg[3] 
       (.C(m00_axi_aclk),
        .CE(current_line_0),
        .D(\current_line[3]_i_1_n_0 ),
        .Q(current_line[3]),
        .R(\FSM_sequential_mst_exec_state[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_reg[4] 
       (.C(m00_axi_aclk),
        .CE(current_line_0),
        .D(\current_line[4]_i_1_n_0 ),
        .Q(current_line[4]),
        .R(\FSM_sequential_mst_exec_state[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_line_reg[5] 
       (.C(m00_axi_aclk),
        .CE(current_line_0),
        .D(\current_line[5]_i_2_n_0 ),
        .Q(current_line[5]),
        .R(\FSM_sequential_mst_exec_state[2]_i_1_n_0 ));
  FDRE init_txn_ff2_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(init_txn_ff),
        .Q(init_txn_ff2),
        .R(\FSM_sequential_mst_exec_state[2]_i_1_n_0 ));
  FDRE init_txn_ff_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(m00_axi_init_axi_txn),
        .Q(init_txn_ff),
        .R(\FSM_sequential_mst_exec_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF04000400)) 
    read_issued_i_1
       (.I0(mst_exec_state[2]),
        .I1(mst_exec_state[1]),
        .I2(mst_exec_state[0]),
        .I3(start_single_read0),
        .I4(axi_rready_reg_0),
        .I5(read_issued_reg_n_0),
        .O(read_issued_i_1_n_0));
  FDRE read_issued_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(read_issued_i_1_n_0),
        .Q(read_issued_reg_n_0),
        .R(\FSM_sequential_mst_exec_state[2]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \scan_line[0]_i_1 
       (.I0(\scan_line_reg_n_0_[0] ),
        .O(\scan_line[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \scan_line[1]_i_1 
       (.I0(\scan_line_reg_n_0_[1] ),
        .I1(\scan_line_reg_n_0_[0] ),
        .O(\scan_line[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h3F40)) 
    \scan_line[2]_i_1 
       (.I0(\scan_line_reg_n_0_[3] ),
        .I1(\scan_line_reg_n_0_[1] ),
        .I2(\scan_line_reg_n_0_[0] ),
        .I3(\scan_line_reg_n_0_[2] ),
        .O(\scan_line[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h41000000)) 
    \scan_line[3]_i_1 
       (.I0(mst_exec_state[1]),
        .I1(mst_exec_state[0]),
        .I2(mst_exec_state[2]),
        .I3(axi_bready_reg_0),
        .I4(m00_axi_bvalid),
        .O(scan_line));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h7780)) 
    \scan_line[3]_i_2 
       (.I0(\scan_line_reg_n_0_[1] ),
        .I1(\scan_line_reg_n_0_[0] ),
        .I2(\scan_line_reg_n_0_[2] ),
        .I3(\scan_line_reg_n_0_[3] ),
        .O(\scan_line[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \scan_line_reg[0] 
       (.C(m00_axi_aclk),
        .CE(scan_line),
        .D(\scan_line[0]_i_1_n_0 ),
        .Q(\scan_line_reg_n_0_[0] ),
        .R(\FSM_sequential_mst_exec_state[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \scan_line_reg[1] 
       (.C(m00_axi_aclk),
        .CE(scan_line),
        .D(\scan_line[1]_i_1_n_0 ),
        .Q(\scan_line_reg_n_0_[1] ),
        .R(\FSM_sequential_mst_exec_state[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \scan_line_reg[2] 
       (.C(m00_axi_aclk),
        .CE(scan_line),
        .D(\scan_line[2]_i_1_n_0 ),
        .Q(\scan_line_reg_n_0_[2] ),
        .R(\FSM_sequential_mst_exec_state[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \scan_line_reg[3] 
       (.C(m00_axi_aclk),
        .CE(scan_line),
        .D(\scan_line[3]_i_2_n_0 ),
        .Q(\scan_line_reg_n_0_[3] ),
        .R(\FSM_sequential_mst_exec_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB04000400)) 
    start_single_read_i_1
       (.I0(mst_exec_state[2]),
        .I1(mst_exec_state[1]),
        .I2(mst_exec_state[0]),
        .I3(start_single_read0),
        .I4(axi_rready_reg_0),
        .I5(start_single_read_reg_n_0),
        .O(start_single_read_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    start_single_read_i_2
       (.I0(read_issued_reg_n_0),
        .I1(m00_axi_rvalid),
        .I2(start_single_read_reg_n_0),
        .I3(m00_axi_arvalid),
        .O(start_single_read0));
  FDRE start_single_read_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(start_single_read_i_1_n_0),
        .Q(start_single_read_reg_n_0),
        .R(\FSM_sequential_mst_exec_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF609000900)) 
    start_single_write_i_1
       (.I0(mst_exec_state[2]),
        .I1(mst_exec_state[0]),
        .I2(mst_exec_state[1]),
        .I3(start_single_write0),
        .I4(axi_bready_reg_0),
        .I5(start_single_write_reg_n_0),
        .O(start_single_write_i_1_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    start_single_write_i_2
       (.I0(m00_axi_awvalid),
        .I1(start_single_write_reg_n_0),
        .I2(m00_axi_bvalid),
        .I3(m00_axi_wvalid),
        .I4(write_issued_reg_n_0),
        .O(start_single_write0));
  FDRE start_single_write_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(start_single_write_i_1_n_0),
        .Q(start_single_write_reg_n_0),
        .R(\FSM_sequential_mst_exec_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF6FFFF09000900)) 
    write_issued_i_1
       (.I0(mst_exec_state[2]),
        .I1(mst_exec_state[0]),
        .I2(mst_exec_state[1]),
        .I3(start_single_write0),
        .I4(axi_bready_reg_0),
        .I5(write_issued_reg_n_0),
        .O(write_issued_i_1_n_0));
  FDRE write_issued_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(write_issued_i_1_n_0),
        .Q(write_issued_reg_n_0),
        .R(\FSM_sequential_mst_exec_state[2]_i_1_n_0 ));
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
