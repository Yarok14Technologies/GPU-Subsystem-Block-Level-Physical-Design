#---------------------------------------------------------
# Power Planning Script
#---------------------------------------------------------

# Define power nets
set powerNet VDD
set groundNet VSS

# Global net connections
globalNetConnect $powerNet -type pgpin -pin VDD -inst *
globalNetConnect $groundNet -type pgpin -pin VSS -inst *

# Create core power rings
addRing \
  -nets "$powerNet $groundNet" \
  -layer {top M6 bottom M6 left M5 right M5} \
  -width 4 \
  -spacing 2 \
  -offset 2

# Add power stripes
addStripe \
  -nets "$powerNet $groundNet" \
  -layer M4 \
  -direction vertical \
  -width 2 \
  -spacing 2 \
  -set_to_set_distance 40

# Verify power connectivity
verifyConnectivity -type pgnet

saveDesign power_plan.enc
