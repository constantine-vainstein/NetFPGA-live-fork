################################################################################

# This XDC is used only for OOC mode of synthesis, implementation
# This constraints file contains default clock frequencies to be used during
# out-of-context flows such as OOC Synthesis and Hierarchical Designs.
# This constraints file is not used in normal top-down synthesis (default flow
# of Vivado)
################################################################################
create_clock -name dclk -period 10 [get_ports dclk]
create_clock -name clk156 -period 6.4000000000000004 [get_ports clk156]
create_clock -name txusrclk -period 3.103030303030303 [get_ports txusrclk]
create_clock -name txusrclk2 -period 3.103030303030303 [get_ports txusrclk2]

################################################################################