--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
--Date        : Sat Apr 15 17:28:02 2023
--Host        : eniac-solathomas running 64-bit Red Hat Enterprise Linux release 8.7 (Ootpa)
--Command     : generate_target main_wrapper.bd
--Design      : main_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity main_wrapper is
  port (
    PS2_CLK : in STD_LOGIC;
    PS2_DATA : in STD_LOGIC;
    RGB_LEDs : out STD_LOGIC_VECTOR ( 5 downto 0 );
    VGA_B : out STD_LOGIC_VECTOR ( 3 downto 0 );
    VGA_G : out STD_LOGIC_VECTOR ( 3 downto 0 );
    VGA_HS : out STD_LOGIC;
    VGA_R : out STD_LOGIC_VECTOR ( 3 downto 0 );
    VGA_VS : out STD_LOGIC;
    reset_rtl : in STD_LOGIC;
    sys_clock : in STD_LOGIC
  );
end main_wrapper;

architecture STRUCTURE of main_wrapper is
  component main is
  port (
    reset_rtl : in STD_LOGIC;
    RGB_LEDs : out STD_LOGIC_VECTOR ( 5 downto 0 );
    sys_clock : in STD_LOGIC;
    PS2_CLK : in STD_LOGIC;
    PS2_DATA : in STD_LOGIC;
    VGA_B : out STD_LOGIC_VECTOR ( 3 downto 0 );
    VGA_G : out STD_LOGIC_VECTOR ( 3 downto 0 );
    VGA_R : out STD_LOGIC_VECTOR ( 3 downto 0 );
    VGA_VS : out STD_LOGIC;
    VGA_HS : out STD_LOGIC
  );
  end component main;
begin
main_i: component main
     port map (
      PS2_CLK => PS2_CLK,
      PS2_DATA => PS2_DATA,
      RGB_LEDs(5 downto 0) => RGB_LEDs(5 downto 0),
      VGA_B(3 downto 0) => VGA_B(3 downto 0),
      VGA_G(3 downto 0) => VGA_G(3 downto 0),
      VGA_HS => VGA_HS,
      VGA_R(3 downto 0) => VGA_R(3 downto 0),
      VGA_VS => VGA_VS,
      reset_rtl => reset_rtl,
      sys_clock => sys_clock
    );
end STRUCTURE;
