#===========================================================
# Calibre Antenna Runset
#===========================================================

LAYOUT SYSTEM          GDSII
LAYOUT PATH            ../outputs/gpu_subsystem.gds
LAYOUT PRIMARY         gpu_subsystem
LAYOUT FORMAT          GDSII

ANTENNA RESULTS DATABASE   antenna_results
ANTENNA REPORT             antenna_report.rpt

ANTENNA RULES FILE         foundry_antenna.rules

ANTENNA DIODE INSERTION    YES
ANTENNA HIERARCHICAL       YES

# Run Antenna Check
ANTENNA
