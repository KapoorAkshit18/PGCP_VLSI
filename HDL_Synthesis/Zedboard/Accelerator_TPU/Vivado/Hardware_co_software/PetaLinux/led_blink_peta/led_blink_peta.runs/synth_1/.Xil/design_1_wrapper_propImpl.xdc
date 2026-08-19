set_property SRC_FILE_INFO {cfile:c:/projects/led_blink_peta/led_blink_peta.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0/design_1_processing_system7_0_0/design_1_processing_system7_0_0_in_context.xdc rfile:../../../led_blink_peta.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0/design_1_processing_system7_0_0/design_1_processing_system7_0_0_in_context.xdc id:1 order:EARLY scoped_inst:design_1_i/processing_system7_0} [current_design]
set_property SRC_FILE_INFO {cfile:C:/projects/led_blink_peta/led_blink_peta.srcs/constrs_1/new/pins.xdc rfile:../../../led_blink_peta.srcs/constrs_1/new/pins.xdc id:2} [current_design]
current_instance design_1_i/processing_system7_0
set_property src_info {type:SCOPED_XDC file:1 line:2 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 10.000 [get_ports {}]
current_instance
set_property src_info {type:XDC file:2 line:1 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN T22 [get_ports led_0]
set_property src_info {type:XDC file:2 line:2 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports led_0]
