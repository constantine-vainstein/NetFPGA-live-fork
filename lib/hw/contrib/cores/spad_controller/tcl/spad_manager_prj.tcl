
# get the directory where this script resides
set thisDir [file dirname [info script]]
# source common utilities
source -notrace $thisDir/utils.tcl

# Create project


set hdlRoot hdl/sources_1/new
set simRoot hdl/sim_1/new
set xdcRoot xdc

# Create project
create_project -force spad_manager . -part xc7k70tfbv676-1
# xc7vx690tffg1761-3 
# 

# Set project properties
set obj [get_projects spad_manager]
set_property "simulator_language" "Mixed" $obj
set_property "target_language" "Verilog" $obj

add_files -norecurse $hdlRoot/controller.v
add_files -norecurse $hdlRoot/manager.v
add_files -norecurse $hdlRoot/read_process_manager.v
add_files -norecurse $hdlRoot/spad_controller_definitions.vh

# Add Simulation Sources
add_files -fileset sim_1 -norecurse $simRoot/spad_ctrl_tb.v
add_files -fileset sim_1 -norecurse $simRoot/spad_manager_tb.v
add_files -fileset sim_1 -norecurse $simRoot/spad_sim.v

# If successful, "touch" a file so the make utility will know it's done 
touch {.project.done}
