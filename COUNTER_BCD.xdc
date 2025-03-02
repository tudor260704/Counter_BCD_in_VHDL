## This file is a general .xdc for the Basys3 rev B board
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project
## - fisierul de constrangeri
 
## Switches (in codul nostru pentru semnalul sel)
set_property PACKAGE_PIN V17 [get_ports {sel[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {sel[0]}]
set_property PACKAGE_PIN V16 [get_ports {sel[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {sel[1]}]
set_property PACKAGE_PIN W16 [get_ports {reset}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {reset}]
#set_property PACKAGE_PIN W17 [get_ports {load}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {load)}]
set_property PACKAGE_PIN W15 [get_ports {D_IN[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {D_IN[0]}]
set_property PACKAGE_PIN V15 [get_ports {D_IN[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {D_IN[1]}]
set_property PACKAGE_PIN W14 [get_ports {D_IN[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {D_IN[2]}]
set_property PACKAGE_PIN W13 [get_ports {D_IN[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {D_IN[3]}]
#set_property PACKAGE_PIN V2 [get_ports {sw[8]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {sw[8]}]
#set_property PACKAGE_PIN T3 [get_ports {sw[9]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {sw[9]}]
#set_property PACKAGE_PIN T2 [get_ports {sw[10]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {sw[10]}]
#set_property PACKAGE_PIN R3 [get_ports {sw[11]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {sw[11]}]
#set_property PACKAGE_PIN W2 [get_ports {sw[12]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {sw[12]}]
#set_property PACKAGE_PIN U1 [get_ports {sw[13]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {sw[13]}]
set_property PACKAGE_PIN T1 [get_ports {load}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {load}]
set_property PACKAGE_PIN R2 [get_ports {serial_in}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {serial_in}]
 

## LEDs pentru datele de iesire la noi Data_Out
set_property PACKAGE_PIN U16 [get_ports {Data_Out[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {Data_Out[0]}]
set_property PACKAGE_PIN E19 [get_ports {Data_Out[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {Data_Out[1]}]
set_property PACKAGE_PIN U19 [get_ports {Data_Out[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {Data_Out[2]}]
set_property PACKAGE_PIN V19 [get_ports {Data_Out[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {Data_Out[3]}]



##Buttons pentru reset si intrarea secventiala(serial_in)
set_property PACKAGE_PIN U18 [get_ports clk_counter]						
set_property IOSTANDARD LVCMOS33 [get_ports clk_counter]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets clk_counter]
