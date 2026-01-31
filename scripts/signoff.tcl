#---------------------------------------------------------
# Signoff Script
#---------------------------------------------------------

# Final timing analysis
timeDesign -signoff

# Generate reports
reportTiming > ../reports/timing/signoff_timing.rpt
reportPower  > ../reports/power/signoff_power.rpt
reportArea   > ../reports/area/signoff_area.rpt

# Save DEF for signoff
defOut -floorplan -routing ../outputs/gpu_subsystem.def

# Stream out GDS (placeholder – no foundry data)
streamOut ../outputs/gpu_subsystem.gds \
  -mapFile stream.map \
  -units 1000 \
  -mode ALL

saveDesign signoff.enc
