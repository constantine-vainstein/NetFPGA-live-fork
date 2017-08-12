# This constraints file contains default clock frequencies to be used during creation of a
# Synthesis Design Checkpoint (DCP).
# This constraints file is not used in top-down/global synthesis (not the default flow of Vivado).

create_clock -period 6.400 [get_ports {dclk}]
create_clock -period 6.400 [get_ports {clk156}]
create_clock -period 3.103 [get_ports {txusrclk}]
create_clock -period 3.103 [get_ports {txusrclk2}]
