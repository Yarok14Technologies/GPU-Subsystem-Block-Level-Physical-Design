#---------------------------------------------------------
# Clock Tree Synthesis Script
#---------------------------------------------------------

# CTS setup
setCTSMode \
  -routeClockNet true \
  -useNonDefaultRule true

# Define clock (example)
createClock \
  -name core_clk \
  -period 2.0 \
  [get_ports clk]

# Run CTS
clockDesign

# Post-CTS optimization
optDesign -postCTS

# Clock checks
reportClockTree
reportClockSkew

saveDesign cts.enc
