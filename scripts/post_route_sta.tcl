###############################################################################
# UART Controller - Post-Route STA
###############################################################################

#----------------------------------------------------------
# Load Configuration
#----------------------------------------------------------
source uart_config.tcl

#----------------------------------------------------------
# Read Technology LEF
#----------------------------------------------------------
read_lef $TECH_LEF
read_lef $STD_CELL_LEF

#----------------------------------------------------------
# Read Liberty
#----------------------------------------------------------
read_liberty $LIBERTY

#----------------------------------------------------------
# Read Final Routed DEF
#----------------------------------------------------------
read_def ../results/uart_detailed_routed.def

#----------------------------------------------------------
# Read Timing Constraints
#----------------------------------------------------------
read_sdc $SDC

#----------------------------------------------------------
# Report Timing
#----------------------------------------------------------

puts ""
puts "==========================================="
puts " POST-ROUTE TIMING ANALYSIS"
puts "==========================================="

puts ""
puts "------------- SETUP TIMING ---------------"
report_checks \
    -path_delay max \
    -format full_clock_expanded \
    -digits 3 \
    -group_path_count 5

puts ""
puts "------------- HOLD TIMING ----------------"
report_checks \
    -path_delay min \
    -format full_clock_expanded \
    -digits 3 \
    -group_path_count 5

puts ""
puts "------------- CLOCK SKEW -----------------"
report_clock_skew -digits 3

puts ""
puts "------------- CLOCK LATENCY ---------------"
report_clock_latency

puts ""
puts "==========================================="
puts " POST-ROUTE STA COMPLETED"
puts "==========================================="
