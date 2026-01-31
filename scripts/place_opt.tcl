#---------------------------------------------------------
# Placement & Optimization Script
#---------------------------------------------------------

# Placement settings
setPlaceMode \
  -congestionDriven true \
  -timingDriven true

# Perform placement
placeDesign

# Pre-CTS optimization
optDesign -preCTS

# Insert tie cells if required
addTieHiLo

# Congestion analysis
reportCongestion -verbose

saveDesign placed.enc
