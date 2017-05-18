# these are the sources - everything depends upon them
RTL=hdl/sources_1/new/manager.v hdl/sources_1/new/controller.v hdl/sources_1/new/read_process_manager.v
	
#XDC=xdc/top.xdc ../xdc/top_io_simple.xdc

# These are all the compilation targets, starting with "all"
all : setup
# compile

# This setups up the top level project
project : .project.done
.project.done : $(RTL)
	cmd /c "vivado -mode batch -source tcl/spad_manager_prj.tcl -log setup.log -jou setup.jou"

#compile : .compile.done
#.compile.done : .setup.done
#	cmd /c "vivado -mode batch -source ../scripts/compile_simple.tcl -log compile.log -jou compile.jou"

ip : .ip.done
.ip.done : $(RTL)
	cmd /c "vivado -mode batch -source tcl/spad_manager_ip.tcl -log setup.log -jou setup.jou"


# delete everything except this Makefile
clean :	
	find . -not -name "Makefile*" -not -name "." | xargs rm -rf
