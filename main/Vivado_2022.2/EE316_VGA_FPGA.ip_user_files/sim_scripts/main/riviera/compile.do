vlib work
vlib riviera

vlib riviera/xpm
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_13
vlib riviera/xil_defaultlib

vmap xpm riviera/xpm
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 riviera/proc_sys_reset_v5_0_13
vmap xil_defaultlib riviera/xil_defaultlib

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
"../../../../EE316_VGA_FPGA.gen/sources_1/bd/main/ip/main_xbar_0/main_xbar_0_sim_netlist.vhdl" \
"../../../../EE316_VGA_FPGA.gen/sources_1/bd/main/ipshared/be08/src/bram.vhd" \
"../../../../EE316_VGA_FPGA.gen/sources_1/bd/main/ipshared/be08/src/list_ch12_01_vga_sync.vhd" \
"../../../../EE316_VGA_FPGA.gen/sources_1/bd/main/ipshared/be08/hdl/vga_bram_v1_0_S00_AXI.vhd" \
"../../../../EE316_VGA_FPGA.gen/sources_1/bd/main/ipshared/be08/hdl/vga_bram_v1_0.vhd" \
"../../../../EE316_VGA_FPGA.gen/sources_1/bd/main/ip/main_vga_bram_0_5/sim/main_vga_bram_0_5.vhd" \
"../../../../EE316_VGA_FPGA.gen/sources_1/bd/main/ipshared/785f/src/char8x12_lookup_table.vhd" \
"../../../../EE316_VGA_FPGA.gen/sources_1/bd/main/ipshared/785f/src/scancode2ascii.vhd" \
"../../../../EE316_VGA_FPGA.gen/sources_1/bd/main/ipshared/785f/hdl/videomemlab_master_v1_0_M00_AXI.vhd" \
"../../../../EE316_VGA_FPGA.gen/sources_1/bd/main/ipshared/785f/hdl/videomemlab_master_v1_0.vhd" \
"../../../../EE316_VGA_FPGA.gen/sources_1/bd/main/ip/main_videomemlab_master_0_1/sim/main_videomemlab_master_0_1.vhd" \
"../../../../EE316_VGA_FPGA.gen/sources_1/bd/main/ipshared/f54d/src/debounce.vhd" \
"../../../../EE316_VGA_FPGA.gen/sources_1/bd/main/ipshared/f54d/hdl/keyboard_subordinate_v1_0_S00_AXI.vhd" \
"../../../../EE316_VGA_FPGA.gen/sources_1/bd/main/ipshared/f54d/src/ps2_keyboard.vhd" \
"../../../../EE316_VGA_FPGA.gen/sources_1/bd/main/ipshared/f54d/hdl/keyboard_subordinate_v1_0.vhd" \
"../../../../EE316_VGA_FPGA.gen/sources_1/bd/main/ip/main_keyboard_subordinate_1_1/sim/main_keyboard_subordinate_1_1.vhd" \
"../../../../EE316_VGA_FPGA.gen/sources_1/bd/main/sim/main.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

