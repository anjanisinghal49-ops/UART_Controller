###############################################################################
# UART Controller - Detailed Routing
###############################################################################

#----------------------------------------------------------
# Load Configuration
#----------------------------------------------------------

source uart_config.tcl

#----------------------------------------------------------
# Read Technology Files
#----------------------------------------------------------

read_lef $TECH_LEF
read_lef $STD_CELL_LEF

read_liberty $LIBERTY

#----------------------------------------------------------
# Read Global Routed DEF
#----------------------------------------------------------

read_def ../results/uart_global_routed.def

#----------------------------------------------------------
# Read Global Routing Guide
#----------------------------------------------------------

read_guides ../results/uart_global_route.guide

#----------------------------------------------------------
# Detailed Routing
#----------------------------------------------------------

detailed_route \
    -output_drc ../reports/detailed_route.drc \
    -output_maze ../reports/detailed_route.maze

#----------------------------------------------------------
# Save Detailed Routed Design
#----------------------------------------------------------

write_def ../results/uart_detailed_routed.def

#----------------------------------------------------------
# Save Routed Netlist
#----------------------------------------------------------

write_verilog ../results/uart_detailed_routed.v

puts ""
puts "==========================================="
puts " Detailed Routing Completed Successfully"
puts "==========================================="
puts ""
