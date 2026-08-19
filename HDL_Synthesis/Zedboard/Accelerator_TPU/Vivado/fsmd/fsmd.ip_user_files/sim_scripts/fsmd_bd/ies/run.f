-makelib ies_lib/xilinx_vip -sv \
  "C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib ies_lib/xpm -sv \
  "C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/axi_infrastructure_v1_1_0 \
  "../../../../fsmd.srcs/sources_1/bd/fsmd_bd/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_vip_v1_1_7 -sv \
  "../../../../fsmd.srcs/sources_1/bd/fsmd_bd/ipshared/ce6c/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib ies_lib/processing_system7_vip_v1_0_9 -sv \
  "../../../../fsmd.srcs/sources_1/bd/fsmd_bd/ipshared/6b56/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/fsmd_bd/ip/fsmd_bd_processing_system7_0_0/sim/fsmd_bd_processing_system7_0_0.v" \
  "../../../bd/fsmd_bd/ip/fsmd_bd_system_ila_0_0/bd_0/ip/ip_0/sim/bd_fa77_ila_lib_0.v" \
  "../../../bd/fsmd_bd/ip/fsmd_bd_system_ila_0_0/bd_0/sim/bd_fa77.v" \
  "../../../bd/fsmd_bd/ip/fsmd_bd_system_ila_0_0/sim/fsmd_bd_system_ila_0_0.v" \
  "../../../bd/fsmd_bd/ip/fsmd_bd_vio_0_0/sim/fsmd_bd_vio_0_0.v" \
  "../../../bd/fsmd_bd/ip/fsmd_bd_fibonacci_0_0/sim/fsmd_bd_fibonacci_0_0.v" \
  "../../../bd/fsmd_bd/sim/fsmd_bd.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

