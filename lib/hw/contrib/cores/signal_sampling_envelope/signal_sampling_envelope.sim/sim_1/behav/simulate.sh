#!/bin/sh -f
xv_path="/opt/Xilinx/Vivado/2014.4"
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
ExecStep $xv_path/bin/xsim test_flatener_behav -key {Behavioral:sim_1:Functional:test_flatener} -tclbatch test_flatener.tcl -log simulate.log
