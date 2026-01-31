#---------------------------------------------------------
# Routing & Post-Route Optimization Script
#---------------------------------------------------------

# Routing settings
setNanoRouteMode \
  -routeWithTimingDriven true \
  -routeWithSiDriven true

# Global & detailed routing
routeDesign

# Post-route optimization
optDesign -postRoute

# Timing check
timeDesign -postRoute

# DRC quick check
verify_drc

saveDesign routed.enc
