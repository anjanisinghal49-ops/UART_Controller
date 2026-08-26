###############################################################################
# UART Controller - Post CTS Timing Optimization
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
# Read CTS DEF
#----------------------------------------------------------
read_def ../results/uart_cts.def

#----------------------------------------------------------
# Read Timing Constraints
#----------------------------------------------------------
read_sdc $SDC

#----------------------------------------------------------
# Set RC for timing estimation
#----------------------------------------------------------
set_wire_rc -signal -layer met2
set_wire_rc -clock -layer met5

#----------------------------------------------------------
# Report timing BEFORE optimization
#----------------------------------------------------------
puts ""
puts "==========================================="
puts " Timing BEFORE Post-CTS Optimization"
puts "==========================================="

report_checks -path_delay max -digits 3
report_checks -path_delay min -digits 3

#----------------------------------------------------------
# Repair Setup and Hold Timing
#----------------------------------------------------------
repair_timing -setup
repair_timing -hold

#----------------------------------------------------------
# Legalize placement after optimization
#----------------------------------------------------------
detailed_placement

#----------------------------------------------------------
# Report timing AFTER optimization
#----------------------------------------------------------
puts ""
puts "==========================================="
puts " Timing AFTER Post-CTS Optimization"
puts "==========================================="

report_checks -path_delay max -digits 3
report_checks -path_delay min -digits 3

#----------------------------------------------------------
# Save optimized design
#----------------------------------------------------------
write_def ../results/uart_post_cts.def
write_verilog ../results/uart_post_cts.v

puts ""
puts "==========================================="
puts " Post-CTS Optimization Completed"
puts "==========================================="
puts ""
