#---------------------------------------------------------
# Floorplanning Script
#---------------------------------------------------------

# Basic design setup
set design_name gpu_subsystem
set core_util 0.65
set aspect_ratio 1.0

# Initialize floorplan
floorPlan \
  -site coreSite \
  -r $aspect_ratio $core_util \
  10 10 10 10

# Create core boundary
setFPlanMode -boundary {10 10 10 10}

# IO placement (example – logical grouping)
placeIoPins \
  -pinLayer M4 \
  -side left \
  -spreadType center

# Blockages for routing safety
createPlaceBlockage \
  -box {100 100 300 300} \
  -type hard

# Check floorplan
checkFloorplan

saveDesign floorplan.enc
