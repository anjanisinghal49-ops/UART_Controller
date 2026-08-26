###############################################################################
# UART Timing Constraints
###############################################################################

# 50 MHz clock
create_clock -name clk -period 20 [get_ports clk]

# Clock uncertainty
set_clock_uncertainty 0.2 [get_clocks clk]

# Input delay (excluding clock manually)
set_input_delay 2.0 -clock clk [get_ports {tx_start tx_data[*] rx}]

# Output delay
set_output_delay 2.0 -clock clk [get_ports {tx tx_busy rx_data[*] rx_valid}]

# Output load
set_load 0.05 [all_outputs]
