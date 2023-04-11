-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Fri Apr  7 21:39:42 2023
-- Host        : eniac-solathomas running 64-bit Red Hat Enterprise Linux release 8.7 (Ootpa)
-- Command     : write_vhdl -force -mode synth_stub
--               /repos/EE316/EE316_VGA_FPGA/main/Vivado_2022.2/EE316_VGA_FPGA.gen/sources_1/bd/main/ip/main_blinky_0_1/main_blinky_0_1_stub.vhdl
-- Design      : main_blinky_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z007sclg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity main_blinky_0_1 is
  Port ( 
    GCLK : in STD_LOGIC;
    LD0 : out STD_LOGIC_VECTOR ( 5 downto 0 )
  );

end main_blinky_0_1;

architecture stub of main_blinky_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "GCLK,LD0[5:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "blinky,Vivado 2022.2";
begin
end;
