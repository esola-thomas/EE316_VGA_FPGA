// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Sat Apr 15 17:55:57 2023
// Host        : eniac-solathomas running 64-bit Red Hat Enterprise Linux release 8.7 (Ootpa)
// Command     : write_verilog -force -mode synth_stub
//               /repos/EE316/EE316_VGA_FPGA/main/Vivado_2022.2/EE316_VGA_FPGA.gen/sources_1/bd/Final_Lab/ip/Final_Lab_clk_wiz_0/Final_Lab_clk_wiz_0_stub.v
// Design      : Final_Lab_clk_wiz_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module Final_Lab_clk_wiz_0(clk_100, clk_50, reset, locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_100,clk_50,reset,locked,clk_in1" */;
  output clk_100;
  output clk_50;
  input reset;
  output locked;
  input clk_in1;
endmodule
