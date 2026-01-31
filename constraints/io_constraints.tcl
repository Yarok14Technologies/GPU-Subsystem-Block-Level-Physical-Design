#===========================================================
# IO Constraints – GPU Subsystem
#===========================================================

# IO pin placement layers
set_io_pin_constraints \
  -pin_layer M4

# Input ports grouping
set_input_ports [get_ports {
  clk
  reset_n
  cfg_*
  data_in*
}]

# Output ports grouping
set_output_ports [get_ports {
  data_out*
  status*
  irq
}]

# Drive strength for inputs
set_drive 2 $input_ports

# Output load capacitance
set_load 0.1 $output_ports

# Fix critical clock pin location
set_io_pin_constraint \
  -pin_name clk \
  -side top \
  -offset 50

# Spread remaining IOs
place_io_pins \
  -spreadType center \
  -pinLayer M4

# End of IO constraints
