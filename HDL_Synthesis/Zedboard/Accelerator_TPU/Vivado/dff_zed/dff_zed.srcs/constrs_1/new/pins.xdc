### Inputs
set_property PACKAGE_PIN Y9 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]

create_clock -period 10.000 -name sys_clk -waveform {0.000 5.000} [get_ports clk]

set_property PACKAGE_PIN M15 [get_ports D]
set_property IOSTANDARD LVCMOS33 [get_ports D]

set_property PACKAGE_PIN T22 [get_ports Q]
set_property IOSTANDARD LVCMOS33 [get_ports Q]

#set_property PACKAGE_PIN F22 [get_ports {d[3]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {d[3]}]

#set_property PACKAGE_PIN M15 [get_ports en]
#set_property IOSTANDARD LVCMOS33 [get_ports en]

#set_property PACKAGE_PIN H17 [get_ports clr]
#set_property IOSTANDARD LVCMOS33 [get_ports clr]

#set_property PACKAGE_PIN H18 [get_ports rst_n]
#set_property IOSTANDARD LVCMOS33 [get_ports rst_n]


#set_property PACKAGE_PIN G22 [get_ports {d[2]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {d[2]}]

#set_property PACKAGE_PIN H22 [get_ports {d[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {d[1]}]

#set_property PACKAGE_PIN F21 [get_ports {d[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {d[0]}]

### Outputs
#set_property PACKAGE_PIN T22 [get_ports {q[3]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {q[3]}]

#set_property PACKAGE_PIN T21 [get_ports {q[2]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {q[2]}]

#set_property PACKAGE_PIN U22 [get_ports {q[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {q[1]}]

#set_property PACKAGE_PIN U21 [get_ports {q[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {q[0]}]