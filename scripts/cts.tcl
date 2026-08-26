###############################################################################
# UART Controller - Clock Tree Synthesis
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
# Read Design
#----------------------------------------------------------
read_def ../results/uart_detailed_placed.def

#----------------------------------------------------------
# Read Constraints
#----------------------------------------------------------
read_sdc $SDC

#----------------------------------------------------------
# Load Routing Tracks
#----------------------------------------------------------
source $TRACKS

set_wire_rc -signal -layer met2
set_wire_rc -clock -layer met5

#----------------------------------------------------------
# Clock Tree Synthesis
#----------------------------------------------------------
clock_tree_synthesis \
    -root_buf $CTS_ROOT_BUF \
    -buf_list $CTS_BUF_LIST

#----------------------------------------------------------
# Legalize after CTS
#----------------------------------------------------------
detailed_placement

#----------------------------------------------------------
# Save DEF
#----------------------------------------------------------
write_def ../results/uart_cts.def

#------------------------------------------
# Reports
#------------------------------------------

report_checks -path_delay max > ../reports/cts/setup_timing1.rpt

report_checks -path_delay min > ../reports/cts/hold_timing1.rpt

tee -file ../reports/cts/clock_skew1.rpt report_clock_skew

tee -file ../reports/cts/clock_latency1.rpt report_clock_latency


puts ""
puts "==========================================="
puts " Clock Tree Synthesis Completed"
puts "==========================================="
puts ""
