#===========================================================
# Timing Constraints – GPU Subsystem
# Target Frequency: 500 MHz (2.0 ns)
#===========================================================

# Primary clock definition
create_clock \
  -name core_clk \
  -period 2.0 \
  -waveform {0.0 1.0} \
  [get_ports clk]

# Clock uncertainty
set_clock_uncertainty 0.05 [get_clocks core_clk]

# Input delays (relative to core clock)
set_input_delay  \
  -clock core_clk \
  0.3 \
  [all_inputs]

# Output delays (relative to core clock)
set_output_delay \
  -clock core_clk \
  0.3 \
  [all_outputs]

# Clock transition constraint
set_clock_transition 0.1 [get_clocks core_clk]

# Max transition for data paths
set_max_transition 0.2 [current_design]

# Max capacitance
set_max_capacitance 0.5 [current_design]

# False paths (example: test or async paths)
set_false_path \
  -from [get_ports scan_*] \
  -to   [get_ports scan_*]

# Multicycle path example (non-critical control paths)
set_multicycle_path 2 \
  -from [get_cells ctrl_*] \
  -to   [get_cells status_*]

# Operating conditions placeholder
set_operating_conditions -analysis_type on_chip_variation

# End of timing constraints
