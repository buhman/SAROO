# TCL File Generated by Component Editor 13.1
# Thu Nov 20 11:02:53 CST 2014
# DO NOT MODIFY


# 
# ext_master "external bus master" v1.0
# tpu 2014.11.20.11:02:53
# 
# 

# 
# request TCL package from ACDS 13.1
# 
package require -exact qsys 13.1


# 
# module ext_master
# 
set_module_property DESCRIPTION ""
set_module_property NAME ext_master
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property GROUP Bridges/Memory-Mapped
set_module_property AUTHOR tpu
set_module_property DISPLAY_NAME "external bus master"
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property ANALYZE_HDL AUTO
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL ext_master
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
add_fileset_file ext_master.v VERILOG PATH ext_master.v TOP_LEVEL_FILE


# 
# parameters
# 


# 
# display items
# 


# 
# connection point avm_clk
# 
add_interface avm_clk clock end
set_interface_property avm_clk clockRate 0
set_interface_property avm_clk ENABLED true
set_interface_property avm_clk EXPORT_OF ""
set_interface_property avm_clk PORT_NAME_MAP ""
set_interface_property avm_clk CMSIS_SVD_VARIABLES ""
set_interface_property avm_clk SVD_ADDRESS_GROUP ""

add_interface_port avm_clk avm_clk clk Input 1


# 
# connection point avm_reset
# 
add_interface avm_reset reset end
set_interface_property avm_reset associatedClock avm_clk
set_interface_property avm_reset synchronousEdges DEASSERT
set_interface_property avm_reset ENABLED true
set_interface_property avm_reset EXPORT_OF ""
set_interface_property avm_reset PORT_NAME_MAP ""
set_interface_property avm_reset CMSIS_SVD_VARIABLES ""
set_interface_property avm_reset SVD_ADDRESS_GROUP ""

add_interface_port avm_reset avm_reset reset Input 1


# 
# connection point ext_bus
# 
add_interface ext_bus conduit end
set_interface_property ext_bus associatedClock ""
set_interface_property ext_bus associatedReset ""
set_interface_property ext_bus ENABLED true
set_interface_property ext_bus EXPORT_OF ""
set_interface_property ext_bus PORT_NAME_MAP ""
set_interface_property ext_bus CMSIS_SVD_VARIABLES ""
set_interface_property ext_bus SVD_ADDRESS_GROUP ""

add_interface_port ext_bus addr addr Input 32
add_interface_port ext_bus ncs ncs Input 1
add_interface_port ext_bus rd_start rd_start Input 1
add_interface_port ext_bus wr_start wr_start Input 1
add_interface_port ext_bus data_in data_in Input 16
add_interface_port ext_bus data_out data_out Output 16
add_interface_port ext_bus wait_out wait_out Output 1
add_interface_port ext_bus byte_en byte_en Input 2


# 
# connection point memory_master
# 
add_interface memory_master avalon start
set_interface_property memory_master addressUnits SYMBOLS
set_interface_property memory_master associatedClock avm_clk
set_interface_property memory_master associatedReset avm_reset
set_interface_property memory_master bitsPerSymbol 8
set_interface_property memory_master burstOnBurstBoundariesOnly false
set_interface_property memory_master burstcountUnits WORDS
set_interface_property memory_master doStreamReads false
set_interface_property memory_master doStreamWrites false
set_interface_property memory_master holdTime 0
set_interface_property memory_master linewrapBursts false
set_interface_property memory_master maximumPendingReadTransactions 0
set_interface_property memory_master readLatency 0
set_interface_property memory_master readWaitTime 1
set_interface_property memory_master setupTime 0
set_interface_property memory_master timingUnits Cycles
set_interface_property memory_master writeWaitTime 0
set_interface_property memory_master ENABLED true
set_interface_property memory_master EXPORT_OF ""
set_interface_property memory_master PORT_NAME_MAP ""
set_interface_property memory_master CMSIS_SVD_VARIABLES ""
set_interface_property memory_master SVD_ADDRESS_GROUP ""

add_interface_port memory_master avm_addr address Output 32
add_interface_port memory_master avm_rd read Output 1
add_interface_port memory_master avm_rdvalid readdatavalid Input 1
add_interface_port memory_master avm_rdata readdata Input 16
add_interface_port memory_master avm_wr write Output 1
add_interface_port memory_master avm_wdata writedata Output 16
add_interface_port memory_master avm_wait waitrequest Input 1
add_interface_port memory_master avm_byte_en byteenable Output 2

