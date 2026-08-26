# Sky130 standard-cell definitions
readnet spice \
    /home/njani_umar_inghal/.ciel/ciel/sky130/versions/0fe599b2afb6708d281543108caf8310912f54af/sky130A/libs.ref/sky130_fd_sc_hd/cdl/sky130_fd_sc_hd.cdl 1

# Extracted/layout netlist
readnet spice uart.spice 2

# Reference/schematic netlist
readnet verilog uart_detailed_routed.v  3

# Compare
lvs "uart.spice uart" \
   "uart_detailed_routed.v  uart" \
   /home/njani_umar_inghal/.ciel/ciel/sky130/versions/0fe599b2afb6708d281543108caf8310912f54af/sky130A/libs.tech/netgen/setup.tcl \
   uart_lvs.log
