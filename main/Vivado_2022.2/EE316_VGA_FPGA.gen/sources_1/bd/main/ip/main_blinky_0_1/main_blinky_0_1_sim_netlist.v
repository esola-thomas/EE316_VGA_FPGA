// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Fri Apr  7 21:39:42 2023
// Host        : eniac-solathomas running 64-bit Red Hat Enterprise Linux release 8.7 (Ootpa)
// Command     : write_verilog -force -mode funcsim -rename_top main_blinky_0_1 -prefix
//               main_blinky_0_1_ main_blinky_0_1_sim_netlist.v
// Design      : main_blinky_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module main_blinky_0_1_blinky
   (LD0,
    GCLK);
  output [2:0]LD0;
  input GCLK;

  wire GCLK;
  wire [2:0]LD0;
  wire LD00_carry__0_i_1_n_0;
  wire LD00_carry__0_i_2_n_0;
  wire LD00_carry__0_i_3_n_0;
  wire LD00_carry__0_i_4_n_0;
  wire LD00_carry__0_i_5_n_0;
  wire LD00_carry__0_i_6_n_0;
  wire LD00_carry__0_i_7_n_0;
  wire LD00_carry__0_i_8_n_0;
  wire LD00_carry__0_n_0;
  wire LD00_carry__0_n_1;
  wire LD00_carry__0_n_2;
  wire LD00_carry__0_n_3;
  wire LD00_carry__1_i_1_n_0;
  wire LD00_carry__1_i_2_n_0;
  wire LD00_carry__1_i_3_n_0;
  wire LD00_carry__1_i_4_n_0;
  wire LD00_carry__1_i_5_n_0;
  wire LD00_carry__1_i_6_n_0;
  wire LD00_carry__1_n_0;
  wire LD00_carry__1_n_1;
  wire LD00_carry__1_n_2;
  wire LD00_carry__1_n_3;
  wire LD00_carry_i_1_n_0;
  wire LD00_carry_i_2_n_0;
  wire LD00_carry_i_3_n_0;
  wire LD00_carry_i_4_n_0;
  wire LD00_carry_i_5_n_0;
  wire LD00_carry_i_6_n_0;
  wire LD00_carry_n_0;
  wire LD00_carry_n_1;
  wire LD00_carry_n_2;
  wire LD00_carry_n_3;
  wire \LD00_inferred__0/i__carry__0_n_0 ;
  wire \LD00_inferred__0/i__carry__0_n_1 ;
  wire \LD00_inferred__0/i__carry__0_n_2 ;
  wire \LD00_inferred__0/i__carry__0_n_3 ;
  wire \LD00_inferred__0/i__carry__1_n_0 ;
  wire \LD00_inferred__0/i__carry__1_n_1 ;
  wire \LD00_inferred__0/i__carry__1_n_2 ;
  wire \LD00_inferred__0/i__carry__1_n_3 ;
  wire \LD00_inferred__0/i__carry_n_0 ;
  wire \LD00_inferred__0/i__carry_n_1 ;
  wire \LD00_inferred__0/i__carry_n_2 ;
  wire \LD00_inferred__0/i__carry_n_3 ;
  wire clear;
  wire \count[0]_i_2_n_0 ;
  wire [31:8]count_reg;
  wire \count_reg[0]_i_1_n_0 ;
  wire \count_reg[0]_i_1_n_1 ;
  wire \count_reg[0]_i_1_n_2 ;
  wire \count_reg[0]_i_1_n_3 ;
  wire \count_reg[0]_i_1_n_4 ;
  wire \count_reg[0]_i_1_n_5 ;
  wire \count_reg[0]_i_1_n_6 ;
  wire \count_reg[0]_i_1_n_7 ;
  wire \count_reg[12]_i_1_n_0 ;
  wire \count_reg[12]_i_1_n_1 ;
  wire \count_reg[12]_i_1_n_2 ;
  wire \count_reg[12]_i_1_n_3 ;
  wire \count_reg[12]_i_1_n_4 ;
  wire \count_reg[12]_i_1_n_5 ;
  wire \count_reg[12]_i_1_n_6 ;
  wire \count_reg[12]_i_1_n_7 ;
  wire \count_reg[16]_i_1_n_0 ;
  wire \count_reg[16]_i_1_n_1 ;
  wire \count_reg[16]_i_1_n_2 ;
  wire \count_reg[16]_i_1_n_3 ;
  wire \count_reg[16]_i_1_n_4 ;
  wire \count_reg[16]_i_1_n_5 ;
  wire \count_reg[16]_i_1_n_6 ;
  wire \count_reg[16]_i_1_n_7 ;
  wire \count_reg[20]_i_1_n_0 ;
  wire \count_reg[20]_i_1_n_1 ;
  wire \count_reg[20]_i_1_n_2 ;
  wire \count_reg[20]_i_1_n_3 ;
  wire \count_reg[20]_i_1_n_4 ;
  wire \count_reg[20]_i_1_n_5 ;
  wire \count_reg[20]_i_1_n_6 ;
  wire \count_reg[20]_i_1_n_7 ;
  wire \count_reg[24]_i_1_n_0 ;
  wire \count_reg[24]_i_1_n_1 ;
  wire \count_reg[24]_i_1_n_2 ;
  wire \count_reg[24]_i_1_n_3 ;
  wire \count_reg[24]_i_1_n_4 ;
  wire \count_reg[24]_i_1_n_5 ;
  wire \count_reg[24]_i_1_n_6 ;
  wire \count_reg[24]_i_1_n_7 ;
  wire \count_reg[28]_i_1_n_1 ;
  wire \count_reg[28]_i_1_n_2 ;
  wire \count_reg[28]_i_1_n_3 ;
  wire \count_reg[28]_i_1_n_4 ;
  wire \count_reg[28]_i_1_n_5 ;
  wire \count_reg[28]_i_1_n_6 ;
  wire \count_reg[28]_i_1_n_7 ;
  wire \count_reg[4]_i_1_n_0 ;
  wire \count_reg[4]_i_1_n_1 ;
  wire \count_reg[4]_i_1_n_2 ;
  wire \count_reg[4]_i_1_n_3 ;
  wire \count_reg[4]_i_1_n_4 ;
  wire \count_reg[4]_i_1_n_5 ;
  wire \count_reg[4]_i_1_n_6 ;
  wire \count_reg[4]_i_1_n_7 ;
  wire \count_reg[8]_i_1_n_0 ;
  wire \count_reg[8]_i_1_n_1 ;
  wire \count_reg[8]_i_1_n_2 ;
  wire \count_reg[8]_i_1_n_3 ;
  wire \count_reg[8]_i_1_n_4 ;
  wire \count_reg[8]_i_1_n_5 ;
  wire \count_reg[8]_i_1_n_6 ;
  wire \count_reg[8]_i_1_n_7 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[2] ;
  wire \count_reg_n_0_[3] ;
  wire \count_reg_n_0_[4] ;
  wire \count_reg_n_0_[5] ;
  wire \count_reg_n_0_[6] ;
  wire \count_reg_n_0_[7] ;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__0_i_5_n_0;
  wire i__carry__0_i_6_n_0;
  wire i__carry__0_i_7_n_0;
  wire i__carry__0_i_8_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__1_i_5_n_0;
  wire i__carry__1_i_6_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7_n_0;
  wire [3:0]NLW_LD00_carry_O_UNCONNECTED;
  wire [3:0]NLW_LD00_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_LD00_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_LD00_carry__2_CO_UNCONNECTED;
  wire [3:1]NLW_LD00_carry__2_O_UNCONNECTED;
  wire [3:0]\NLW_LD00_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_LD00_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_LD00_inferred__0/i__carry__1_O_UNCONNECTED ;
  wire [3:3]\NLW_count_reg[28]_i_1_CO_UNCONNECTED ;

  CARRY4 LD00_carry
       (.CI(1'b0),
        .CO({LD00_carry_n_0,LD00_carry_n_1,LD00_carry_n_2,LD00_carry_n_3}),
        .CYINIT(1'b0),
        .DI({LD00_carry_i_1_n_0,1'b0,1'b0,LD00_carry_i_2_n_0}),
        .O(NLW_LD00_carry_O_UNCONNECTED[3:0]),
        .S({LD00_carry_i_3_n_0,LD00_carry_i_4_n_0,LD00_carry_i_5_n_0,LD00_carry_i_6_n_0}));
  CARRY4 LD00_carry__0
       (.CI(LD00_carry_n_0),
        .CO({LD00_carry__0_n_0,LD00_carry__0_n_1,LD00_carry__0_n_2,LD00_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({LD00_carry__0_i_1_n_0,LD00_carry__0_i_2_n_0,LD00_carry__0_i_3_n_0,LD00_carry__0_i_4_n_0}),
        .O(NLW_LD00_carry__0_O_UNCONNECTED[3:0]),
        .S({LD00_carry__0_i_5_n_0,LD00_carry__0_i_6_n_0,LD00_carry__0_i_7_n_0,LD00_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'h7)) 
    LD00_carry__0_i_1
       (.I0(count_reg[22]),
        .I1(count_reg[23]),
        .O(LD00_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    LD00_carry__0_i_2
       (.I0(count_reg[21]),
        .O(LD00_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    LD00_carry__0_i_3
       (.I0(count_reg[19]),
        .O(LD00_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    LD00_carry__0_i_4
       (.I0(count_reg[16]),
        .I1(count_reg[17]),
        .O(LD00_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    LD00_carry__0_i_5
       (.I0(count_reg[22]),
        .I1(count_reg[23]),
        .O(LD00_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    LD00_carry__0_i_6
       (.I0(count_reg[21]),
        .I1(count_reg[20]),
        .O(LD00_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    LD00_carry__0_i_7
       (.I0(count_reg[19]),
        .I1(count_reg[18]),
        .O(LD00_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    LD00_carry__0_i_8
       (.I0(count_reg[16]),
        .I1(count_reg[17]),
        .O(LD00_carry__0_i_8_n_0));
  CARRY4 LD00_carry__1
       (.CI(LD00_carry__0_n_0),
        .CO({LD00_carry__1_n_0,LD00_carry__1_n_1,LD00_carry__1_n_2,LD00_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({count_reg[31],1'b0,LD00_carry__1_i_1_n_0,LD00_carry__1_i_2_n_0}),
        .O(NLW_LD00_carry__1_O_UNCONNECTED[3:0]),
        .S({LD00_carry__1_i_3_n_0,LD00_carry__1_i_4_n_0,LD00_carry__1_i_5_n_0,LD00_carry__1_i_6_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    LD00_carry__1_i_1
       (.I0(count_reg[27]),
        .O(LD00_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    LD00_carry__1_i_2
       (.I0(count_reg[24]),
        .I1(count_reg[25]),
        .O(LD00_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    LD00_carry__1_i_3
       (.I0(count_reg[30]),
        .I1(count_reg[31]),
        .O(LD00_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    LD00_carry__1_i_4
       (.I0(count_reg[28]),
        .I1(count_reg[29]),
        .O(LD00_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    LD00_carry__1_i_5
       (.I0(count_reg[27]),
        .I1(count_reg[26]),
        .O(LD00_carry__1_i_5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    LD00_carry__1_i_6
       (.I0(count_reg[24]),
        .I1(count_reg[25]),
        .O(LD00_carry__1_i_6_n_0));
  CARRY4 LD00_carry__2
       (.CI(LD00_carry__1_n_0),
        .CO(NLW_LD00_carry__2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_LD00_carry__2_O_UNCONNECTED[3:1],clear}),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT2 #(
    .INIT(4'h7)) 
    LD00_carry_i_1
       (.I0(count_reg[14]),
        .I1(count_reg[15]),
        .O(LD00_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    LD00_carry_i_2
       (.I0(count_reg[9]),
        .O(LD00_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    LD00_carry_i_3
       (.I0(count_reg[14]),
        .I1(count_reg[15]),
        .O(LD00_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    LD00_carry_i_4
       (.I0(count_reg[12]),
        .I1(count_reg[13]),
        .O(LD00_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    LD00_carry_i_5
       (.I0(count_reg[10]),
        .I1(count_reg[11]),
        .O(LD00_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    LD00_carry_i_6
       (.I0(count_reg[9]),
        .I1(count_reg[8]),
        .O(LD00_carry_i_6_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \LD00_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\LD00_inferred__0/i__carry_n_0 ,\LD00_inferred__0/i__carry_n_1 ,\LD00_inferred__0/i__carry_n_2 ,\LD00_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1_n_0,i__carry_i_2_n_0,1'b0,i__carry_i_3_n_0}),
        .O(\NLW_LD00_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_4_n_0,i__carry_i_5_n_0,i__carry_i_6_n_0,i__carry_i_7_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \LD00_inferred__0/i__carry__0 
       (.CI(\LD00_inferred__0/i__carry_n_0 ),
        .CO({\LD00_inferred__0/i__carry__0_n_0 ,\LD00_inferred__0/i__carry__0_n_1 ,\LD00_inferred__0/i__carry__0_n_2 ,\LD00_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}),
        .O(\NLW_LD00_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_5_n_0,i__carry__0_i_6_n_0,i__carry__0_i_7_n_0,i__carry__0_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \LD00_inferred__0/i__carry__1 
       (.CI(\LD00_inferred__0/i__carry__0_n_0 ),
        .CO({\LD00_inferred__0/i__carry__1_n_0 ,\LD00_inferred__0/i__carry__1_n_1 ,\LD00_inferred__0/i__carry__1_n_2 ,\LD00_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({count_reg[31],1'b0,i__carry__1_i_1_n_0,i__carry__1_i_2_n_0}),
        .O(\NLW_LD00_inferred__0/i__carry__1_O_UNCONNECTED [3:0]),
        .S({i__carry__1_i_3_n_0,i__carry__1_i_4_n_0,i__carry__1_i_5_n_0,i__carry__1_i_6_n_0}));
  (* XILINX_LEGACY_PRIM = "LDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDPE #(
    .INIT(1'b0)) 
    \LD0_reg[0] 
       (.D(1'b1),
        .G(LD00_carry__1_n_0),
        .GE(1'b1),
        .PRE(\LD00_inferred__0/i__carry__1_n_0 ),
        .Q(LD0[0]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \LD0_reg[4] 
       (.CLR(\LD00_inferred__0/i__carry__1_n_0 ),
        .D(1'b1),
        .G(LD00_carry__1_n_0),
        .GE(1'b1),
        .Q(LD0[1]));
  (* XILINX_LEGACY_PRIM = "LDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDPE #(
    .INIT(1'b0)) 
    \LD0_reg[5] 
       (.D(1'b0),
        .G(LD00_carry__1_n_0),
        .GE(1'b1),
        .PRE(\LD00_inferred__0/i__carry__1_n_0 ),
        .Q(LD0[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_2 
       (.I0(\count_reg_n_0_[0] ),
        .O(\count[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(GCLK),
        .CE(1'b1),
        .D(\count_reg[0]_i_1_n_7 ),
        .Q(\count_reg_n_0_[0] ),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\count_reg[0]_i_1_n_0 ,\count_reg[0]_i_1_n_1 ,\count_reg[0]_i_1_n_2 ,\count_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\count_reg[0]_i_1_n_4 ,\count_reg[0]_i_1_n_5 ,\count_reg[0]_i_1_n_6 ,\count_reg[0]_i_1_n_7 }),
        .S({\count_reg_n_0_[3] ,\count_reg_n_0_[2] ,\count_reg_n_0_[1] ,\count[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(GCLK),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_5 ),
        .Q(count_reg[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(GCLK),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_4 ),
        .Q(count_reg[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(GCLK),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_7 ),
        .Q(count_reg[12]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[12]_i_1 
       (.CI(\count_reg[8]_i_1_n_0 ),
        .CO({\count_reg[12]_i_1_n_0 ,\count_reg[12]_i_1_n_1 ,\count_reg[12]_i_1_n_2 ,\count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[12]_i_1_n_4 ,\count_reg[12]_i_1_n_5 ,\count_reg[12]_i_1_n_6 ,\count_reg[12]_i_1_n_7 }),
        .S(count_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(GCLK),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_6 ),
        .Q(count_reg[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(GCLK),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_5 ),
        .Q(count_reg[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[15] 
       (.C(GCLK),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_4 ),
        .Q(count_reg[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[16] 
       (.C(GCLK),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_7 ),
        .Q(count_reg[16]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[16]_i_1 
       (.CI(\count_reg[12]_i_1_n_0 ),
        .CO({\count_reg[16]_i_1_n_0 ,\count_reg[16]_i_1_n_1 ,\count_reg[16]_i_1_n_2 ,\count_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[16]_i_1_n_4 ,\count_reg[16]_i_1_n_5 ,\count_reg[16]_i_1_n_6 ,\count_reg[16]_i_1_n_7 }),
        .S(count_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[17] 
       (.C(GCLK),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_6 ),
        .Q(count_reg[17]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[18] 
       (.C(GCLK),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_5 ),
        .Q(count_reg[18]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[19] 
       (.C(GCLK),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_4 ),
        .Q(count_reg[19]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(GCLK),
        .CE(1'b1),
        .D(\count_reg[0]_i_1_n_6 ),
        .Q(\count_reg_n_0_[1] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[20] 
       (.C(GCLK),
        .CE(1'b1),
        .D(\count_reg[20]_i_1_n_7 ),
        .Q(count_reg[20]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[20]_i_1 
       (.CI(\count_reg[16]_i_1_n_0 ),
        .CO({\count_reg[20]_i_1_n_0 ,\count_reg[20]_i_1_n_1 ,\count_reg[20]_i_1_n_2 ,\count_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[20]_i_1_n_4 ,\count_reg[20]_i_1_n_5 ,\count_reg[20]_i_1_n_6 ,\count_reg[20]_i_1_n_7 }),
        .S(count_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[21] 
       (.C(GCLK),
        .CE(1'b1),
        .D(\count_reg[20]_i_1_n_6 ),
        .Q(count_reg[21]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[22] 
       (.C(GCLK),
        .CE(1'b1),
        .D(\count_reg[20]_i_1_n_5 ),
        .Q(count_reg[22]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[23] 
       (.C(GCLK),
        .CE(1'b1),
        .D(\count_reg[20]_i_1_n_4 ),
        .Q(count_reg[23]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[24] 
       (.C(GCLK),
        .CE(1'b1),
        .D(\count_reg[24]_i_1_n_7 ),
        .Q(count_reg[24]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[24]_i_1 
       (.CI(\count_reg[20]_i_1_n_0 ),
        .CO({\count_reg[24]_i_1_n_0 ,\count_reg[24]_i_1_n_1 ,\count_reg[24]_i_1_n_2 ,\count_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[24]_i_1_n_4 ,\count_reg[24]_i_1_n_5 ,\count_reg[24]_i_1_n_6 ,\count_reg[24]_i_1_n_7 }),
        .S(count_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[25] 
       (.C(GCLK),
        .CE(1'b1),
        .D(\count_reg[24]_i_1_n_6 ),
        .Q(count_reg[25]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[26] 
       (.C(GCLK),
        .CE(1'b1),
        .D(\count_reg[24]_i_1_n_5 ),
        .Q(count_reg[26]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[27] 
       (.C(GCLK),
        .CE(1'b1),
        .D(\count_reg[24]_i_1_n_4 ),
        .Q(count_reg[27]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[28] 
       (.C(GCLK),
        .CE(1'b1),
        .D(\count_reg[28]_i_1_n_7 ),
        .Q(count_reg[28]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[28]_i_1 
       (.CI(\count_reg[24]_i_1_n_0 ),
        .CO({\NLW_count_reg[28]_i_1_CO_UNCONNECTED [3],\count_reg[28]_i_1_n_1 ,\count_reg[28]_i_1_n_2 ,\count_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[28]_i_1_n_4 ,\count_reg[28]_i_1_n_5 ,\count_reg[28]_i_1_n_6 ,\count_reg[28]_i_1_n_7 }),
        .S(count_reg[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[29] 
       (.C(GCLK),
        .CE(1'b1),
        .D(\count_reg[28]_i_1_n_6 ),
        .Q(count_reg[29]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(GCLK),
        .CE(1'b1),
        .D(\count_reg[0]_i_1_n_5 ),
        .Q(\count_reg_n_0_[2] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[30] 
       (.C(GCLK),
        .CE(1'b1),
        .D(\count_reg[28]_i_1_n_5 ),
        .Q(count_reg[30]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[31] 
       (.C(GCLK),
        .CE(1'b1),
        .D(\count_reg[28]_i_1_n_4 ),
        .Q(count_reg[31]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(GCLK),
        .CE(1'b1),
        .D(\count_reg[0]_i_1_n_4 ),
        .Q(\count_reg_n_0_[3] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(GCLK),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_7 ),
        .Q(\count_reg_n_0_[4] ),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[4]_i_1 
       (.CI(\count_reg[0]_i_1_n_0 ),
        .CO({\count_reg[4]_i_1_n_0 ,\count_reg[4]_i_1_n_1 ,\count_reg[4]_i_1_n_2 ,\count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[4]_i_1_n_4 ,\count_reg[4]_i_1_n_5 ,\count_reg[4]_i_1_n_6 ,\count_reg[4]_i_1_n_7 }),
        .S({\count_reg_n_0_[7] ,\count_reg_n_0_[6] ,\count_reg_n_0_[5] ,\count_reg_n_0_[4] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(GCLK),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_6 ),
        .Q(\count_reg_n_0_[5] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(GCLK),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_5 ),
        .Q(\count_reg_n_0_[6] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(GCLK),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_4 ),
        .Q(\count_reg_n_0_[7] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(GCLK),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_7 ),
        .Q(count_reg[8]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[8]_i_1 
       (.CI(\count_reg[4]_i_1_n_0 ),
        .CO({\count_reg[8]_i_1_n_0 ,\count_reg[8]_i_1_n_1 ,\count_reg[8]_i_1_n_2 ,\count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[8]_i_1_n_4 ,\count_reg[8]_i_1_n_5 ,\count_reg[8]_i_1_n_6 ,\count_reg[8]_i_1_n_7 }),
        .S(count_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(GCLK),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_6 ),
        .Q(count_reg[9]),
        .R(clear));
  LUT2 #(
    .INIT(4'h7)) 
    i__carry__0_i_1
       (.I0(count_reg[22]),
        .I1(count_reg[23]),
        .O(i__carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    i__carry__0_i_2
       (.I0(count_reg[20]),
        .I1(count_reg[21]),
        .O(i__carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_3
       (.I0(count_reg[18]),
        .I1(count_reg[19]),
        .O(i__carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_4
       (.I0(count_reg[16]),
        .I1(count_reg[17]),
        .O(i__carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__0_i_5
       (.I0(count_reg[22]),
        .I1(count_reg[23]),
        .O(i__carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__0_i_6
       (.I0(count_reg[20]),
        .I1(count_reg[21]),
        .O(i__carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__0_i_7
       (.I0(count_reg[18]),
        .I1(count_reg[19]),
        .O(i__carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__0_i_8
       (.I0(count_reg[16]),
        .I1(count_reg[17]),
        .O(i__carry__0_i_8_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__1_i_1
       (.I0(count_reg[26]),
        .I1(count_reg[27]),
        .O(i__carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__1_i_2
       (.I0(count_reg[24]),
        .I1(count_reg[25]),
        .O(i__carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__1_i_3
       (.I0(count_reg[30]),
        .I1(count_reg[31]),
        .O(i__carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__1_i_4
       (.I0(count_reg[28]),
        .I1(count_reg[29]),
        .O(i__carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__1_i_5
       (.I0(count_reg[26]),
        .I1(count_reg[27]),
        .O(i__carry__1_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__1_i_6
       (.I0(count_reg[24]),
        .I1(count_reg[25]),
        .O(i__carry__1_i_6_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    i__carry_i_1
       (.I0(count_reg[14]),
        .I1(count_reg[15]),
        .O(i__carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_2
       (.I0(count_reg[13]),
        .O(i__carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_3
       (.I0(count_reg[8]),
        .I1(count_reg[9]),
        .O(i__carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry_i_4
       (.I0(count_reg[14]),
        .I1(count_reg[15]),
        .O(i__carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_5
       (.I0(count_reg[13]),
        .I1(count_reg[12]),
        .O(i__carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_6
       (.I0(count_reg[10]),
        .I1(count_reg[11]),
        .O(i__carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_7
       (.I0(count_reg[8]),
        .I1(count_reg[9]),
        .O(i__carry_i_7_n_0));
endmodule

(* CHECK_LICENSE_TYPE = "main_blinky_0_1,blinky,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "blinky,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module main_blinky_0_1
   (GCLK,
    LD0);
  input GCLK;
  output [5:0]LD0;

  wire \<const0> ;
  wire GCLK;
  wire [5:0]\^LD0 ;

  assign LD0[5] = \^LD0 [5];
  assign LD0[4] = \^LD0 [2];
  assign LD0[3] = \<const0> ;
  assign LD0[2] = \^LD0 [2];
  assign LD0[1] = \^LD0 [2];
  assign LD0[0] = \^LD0 [0];
  GND GND
       (.G(\<const0> ));
  main_blinky_0_1_blinky U0
       (.GCLK(GCLK),
        .LD0({\^LD0 [5],\^LD0 [2],\^LD0 [0]}));
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
