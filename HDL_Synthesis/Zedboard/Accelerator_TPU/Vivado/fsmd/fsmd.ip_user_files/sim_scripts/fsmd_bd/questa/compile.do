vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xpm
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_vip_v1_1_7
vlib questa_lib/msim/processing_system7_vip_v1_0_9
vlib questa_lib/msim/xil_defaultlib

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xpm questa_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_7 questa_lib/msim/axi_vip_v1_1_7
vmap processing_system7_vip_v1_0_9 questa_lib/msim/processing_system7_vip_v1_0_9
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xilinx_vip  -sv -L axi_vip_v1_1_7 -L processing_system7_vip_v1_0_9 -L xilinx_vip "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv -L axi_vip_v1_1_7 -L processing_system7_vip_v1_0_9 -L xilinx_vip "+incdir+../../../../fsmd.srcs/sources_1/bd/fsmd_bd/ipshared/ec67/hdl" "+incdir+../../../../fsmd.srcs/sources_1/bd/fsmd_bd/ipshared/6b56/hdl" "+incdir+../../../../fsmd.srcs/sources_1/bd/fsmd_bd/ipshared/1b7e/hdl/verilog" "+incdir+../../../../fsmd.srcs/sources_1/bd/fsmd_bd/ipshared/122e/hdl/verilog" "+incdir+../../../../fsmd.srcs/sources_1/bd/fsmd_bd/ipshared/b205/hdl/verilog" "+incdir+../../../../fsmd.srcs/sources_1/bd/fsmd_bd/ipshared/c968/hdl/verilog" "+incdir+../../../../fsmd.srcs/sources_1/bd/fsmd_bd/ipshared/46fd/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93 \
"C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  "+incdir+../../../../fsmd.srcs/sources_1/bd/fsmd_bd/ipshared/ec67/hdl" "+incdir+../../../../fsmd.srcs/sources_1/bd/fsmd_bd/ipshared/6b56/hdl" "+incdir+../../../../fsmd.srcs/sources_1/bd/fsmd_bd/ipshared/1b7e/hdl/verilog" "+incdir+../../../../fsmd.srcs/sources_1/bd/fsmd_bd/ipshared/122e/hdl/verilog" "+incdir+../../../../fsmd.srcs/sources_1/bd/fsmd_bd/ipshared/b205/hdl/verilog" "+incdir+../../../../fsmd.srcs/sources_1/bd/fsmd_bd/ipshared/c968/hdl/verilog" "+incdir+../../../../fsmd.srcs/sources_1/bd/fsmd_bd/ipshared/46fd/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../fsmd.srcs/sources_1/bd/fsmd_bd/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_7  -sv -L axi_vip_v1_1_7 -L processing_system7_vip_v1_0_9 -L xilinx_vip "+incdir+../../../../fsmd.srcs/sources_1/bd/fsmd_bd/ipshared/ec67/hdl" "+incdir+../../../../fsmd.srcs/sources_1/bd/fsmd_bd/ipshared/6b56/hdl" "+incdir+../../../../fsmd.srcs/sources_1/bd/fsmd_bd/ipshared/1b7e/hdl/verilog" "+incdir+../../../../fsmd.srcs/sources_1/bd/fsmd_bd/ipshared/122e/hdl/verilog" "+incdir+../../../../fsmd.srcs/sources_1/bd/fsmd_bd/ipshared/b205/hdl/verilog" "+incdir+../../../../fsmd.srcs/sources_1/bd/fsmd_bd/ipshared/c968/hdl/verilog" "+incdir+../../../../fsmd.srcs/sources_1/bd/fsmd_bd/ipshared/46fd/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../fsmd.srcs/sources_1/bd/fsmd_bd/ipshared/ce6c/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_9  -sv -L axi_vip_v1_1_7 -L processing_system7_vip_v1_0_9 -L xilinx_vip "+incdir+../../../../fsmd.srcs/sources_1/bd/fsmd_bd/ipshared/ec67/hdl" "+incdir+../../../../fsmd.srcs/sources_1/bd/fsmd_bd/ipshared/6b56/hdl" "+incdir+../../../../fsmd.srcs/sources_1/bd/fsmd_bd/ipshared/1b7e/hdl/verilog" "+incdir+../../../../fsmd.srcs/sources_1/bd/fsmd_bd/ipshared/122e/hdl/verilog" "+incdir+../../../../fsmd.srcs/sources_1/bd/fsmd_bd/ipshared/b205/hdl/verilog" "+incdir+../../../../fsmd.srcs/sources_1/bd/fsmd_bd/ipshared/c968/hdl/verilog" "+incdir+../../../../fsmd.srcs/sources_1/bd/fsmd_bd/ipshared/46fd/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../fsmd.srcs/sources_1/bd/fsmd_bd/ipshared/6b56/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  "+incdir+../../../../fsmd.srcs/sources_1/bd/fsmd_bd/ipshared/ec67/hdl" "+incdir+../../../../fsmd.srcs/sources_1/bd/fsmd_bd/ipshared/6b56/hdl" "+incdir+../../../../fsmd.srcs/sources_1/bd/fsmd_bd/ipshared/1b7e/hdl/verilog" "+incdir+../../../../fsmd.srcs/sources_1/bd/fsmd_bd/ipshared/122e/hdl/verilog" "+incdir+../../../../fsmd.srcs/sources_1/bd/fsmd_bd/ipshared/b205/hdl/verilog" "+incdir+../../../../fsmd.srcs/sources_1/bd/fsmd_bd/ipshared/c968/hdl/verilog" "+incdir+../../../../fsmd.srcs/sources_1/bd/fsmd_bd/ipshared/46fd/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/fsmd_bd/ip/fsmd_bd_processing_system7_0_0/sim/fsmd_bd_processing_system7_0_0.v" \
"../../../bd/fsmd_bd/ip/fsmd_bd_system_ila_0_0/bd_0/ip/ip_0/sim/bd_fa77_ila_lib_0.v" \
"../../../bd/fsmd_bd/ip/fsmd_bd_system_ila_0_0/bd_0/sim/bd_fa77.v" \
"../../../bd/fsmd_bd/ip/fsmd_bd_system_ila_0_0/sim/fsmd_bd_system_ila_0_0.v" \
"../../../bd/fsmd_bd/ip/fsmd_bd_vio_0_0/sim/fsmd_bd_vio_0_0.v" \
"../../../bd/fsmd_bd/ip/fsmd_bd_fibonacci_0_0/sim/fsmd_bd_fibonacci_0_0.v" \
"../../../bd/fsmd_bd/sim/fsmd_bd.v" \

vlog -work xil_defaultlib \
"glbl.v"

