###############################################################################
# UART Controller Configuration
###############################################################################

#---------------------------------------
# Design Information
#---------------------------------------
set design uart
set top_module uart

#---------------------------------------
# Project Root
#---------------------------------------
set PROJECT_ROOT [file normalize ".."]

#---------------------------------------
# RTL / Netlist / Constraints
#---------------------------------------
set NETLIST "$PROJECT_ROOT/netlist/uart_netlist.v"
set SDC "$PROJECT_ROOT/constraints/uart.sdc"

#---------------------------------------
# Sky130 Platform
#---------------------------------------
set PLATFORM "../../sky130hd"

set TECH_LEF "$PLATFORM/sky130hd.tlef"
set STD_CELL_LEF "$PLATFORM/sky130hd_std_cell.lef"
set LIBERTY "$PLATFORM/sky130hd_tt.lib"
set TRACKS "$PLATFORM/sky130hd.tracks"

#---------------------------------------
# Output Directories
#---------------------------------------
set REPORT_DIR "$PROJECT_ROOT/reports"
set RESULT_DIR "$PROJECT_ROOT/results"

#---------------------------------------
# Floorplan Parameters
#---------------------------------------
set SITE unithd
set UTILIZATION 60
set ASPECT_RATIO 1.0
set CORE_SPACE 5

#----------------------------------------------------------
# Clock Tree Synthesis
#----------------------------------------------------------

set CTS_ROOT_BUF sky130_fd_sc_hd__clkbuf_4
set CTS_BUF_LIST "sky130_fd_sc_hd__clkbuf_1 \
                  sky130_fd_sc_hd__clkbuf_2 \
                  sky130_fd_sc_hd__clkbuf_4 \
                  sky130_fd_sc_hd__clkbuf_8"

set CTS_CLK_NET clk
