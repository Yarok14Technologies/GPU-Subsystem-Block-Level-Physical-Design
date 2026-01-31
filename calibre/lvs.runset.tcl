#===========================================================
# Calibre LVS Runset
#===========================================================

LAYOUT SYSTEM          GDSII
LAYOUT PATH            ../outputs/gpu_subsystem.gds
LAYOUT PRIMARY         gpu_subsystem
LAYOUT FORMAT          GDSII

SOURCE SYSTEM          SPICE
SOURCE PATH            ../netlist/gpu_subsystem.sp
SOURCE PRIMARY         gpu_subsystem

LVS REPORT             lvs_report.rpt
LVS RESULTS DATABASE   lvs_results

LVS POWER NAME         VDD
LVS GROUND NAME        VSS

LVS RECOGNIZE GATES    YES
LVS HIERARCHICAL       YES

# Run LVS
LVS
