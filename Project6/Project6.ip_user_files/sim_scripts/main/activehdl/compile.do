vlib work
vlib activehdl

vlib activehdl/xpm
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/proc_sys_reset_v5_0_13
vlib activehdl/xil_defaultlib

vmap xpm activehdl/xpm
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 activehdl/proc_sys_reset_v5_0_13
vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xpm  -sv2k12 "+incdir+../../../../EE316_VGA_FPGA.gen/sources_1/bd/main/ipshared/7698" "+incdir+../../../../EE316_VGA_FPGA.gen/sources_1/bd/main/ipshared/ec67/hdl" \
"/tools/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/tools/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"/tools/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work lib_cdc_v1_0_2 -93  \
"../../../../EE316_VGA_FPGA.gen/sources_1/bd/main/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93  \
"../../../../EE316_VGA_FPGA.gen/sources_1/bd/main/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../../EE316_VGA_FPGA.gen/sources_1/bd/main/ip/main_proc_sys_reset_0_0/sim/main_proc_sys_reset_0_0.vhd" \
"../../../../EE316_VGA_FPGA.gen/sources_1/bd/main/ip/main_clk_wiz_0_1/main_clk_wiz_0_1_sim_netlist.vhdl" \
"../../../../EE316_VGA_FPGA.gen/sources_1/bd/main/ip/main_blinky_0_1/sim/main_blinky_0_1.vhd" \
"../../../../EE316_VGA_FPGA.gen/sources_1/bd/main/ipshared/edd2/src/debounce.vhd" \
"../../../../EE316_VGA_FPGA.gen/sources_1/bd/main/ipshared/edd2/hdl/keyboard_subordinate_v1_0_S00_AXI.vhd" \
"../../../../EE316_VGA_FPGA.gen/sources_1/bd/main/ipshared/edd2/src/ps2_keyboard.vhd" \
"../../../../EE316_VGA_FPGA.gen/sources_1/bd/main/ipshared/edd2/hdl/keyboard_subordinate_v1_0.vhd" \
"../../../../EE316_VGA_FPGA.gen/sources_1/bd/main/ip/main_keyboard_subordinate_0_1/sim/main_keyboard_subordinate_0_1.vhd" \
"../../../../EE316_VGA_FPGA.gen/sources_1/bd/main/ipshared/0447/hdl/myManager_v1_0_M00_AXI.vhd" \
"../../../../EE316_VGA_FPGA.gen/sources_1/bd/main/ipshared/0447/hdl/myManager_v1_0.vhd" \
"../../../../EE316_VGA_FPGA.gen/sources_1/bd/main/ip/main_myManager_0_1/sim/main_myManager_0_1.vhd" \
"../../../../EE316_VGA_FPGA.gen/sources_1/bd/main/ipshared/32cc/hdl/vga_bram_v1_0_S00_AXI.vhd" \
"../../../../EE316_VGA_FPGA.gen/sources_1/bd/main/ipshared/32cc/hdl/vga_bram_v1_0.vhd" \
"../../../../EE316_VGA_FPGA.gen/sources_1/bd/main/ip/main_vga_bram_0_2/sim/main_vga_bram_0_2.vhd" \
"/repos/EE316/EE316_VGA_FPGA/main/Vivado_2022.2/EE316_VGA_FPGA.gen/sources_1/bd/main/ip/main_xbar_0/main_xbar_0_sim_netlist.vhdl" \
"../../../../EE316_VGA_FPGA.gen/sources_1/bd/main/sim/main.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

