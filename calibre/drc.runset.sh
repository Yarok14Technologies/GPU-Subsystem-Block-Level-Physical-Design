#===========================================================
# Calibre DRC Runset
#===========================================================

LAYOUT SYSTEM          GDSII
LAYOUT PATH            ../outputs/gpu_subsystem.gds
LAYOUT PRIMARY         gpu_subsystem
LAYOUT FORMAT          GDSII

DRC RESULTS DATABASE   drc_results
DRC SUMMARY REPORT     drc_summary.rpt

DRC RULES FILE         foundry_drc.rules

DRC MAXIMUM RESULTS    1000
DRC CELL NAME YES

DRC REPORT ALL

# Enable hierarchical checking
DRC CHECK MAP LAYERS
DRC HIERARCHICAL YES

# Run DRC
DRC
