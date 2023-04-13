// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Fri Apr  7 21:39:42 2023
// Host        : eniac-solathomas running 64-bit Red Hat Enterprise Linux release 8.7 (Ootpa)
// Command     : write_verilog -force -mode synth_stub -rename_top main_blinky_0_1 -prefix
//               main_blinky_0_1_ main_blinky_0_1_stub.v
// Design      : main_blinky_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blinky,Vivado 2022.2" *)
module main_blinky_0_1(GCLK, LD0)
/* synthesis syn_black_box black_box_pad_pin="GCLK,LD0[5:0]" */;
  input GCLK;
  output [5:0]LD0;
endmodule
