`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2017 05:52:16 AM
// Design Name: 
// Module Name: sfp_clk_gen
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module sfp_clk_gen(
	input refclk_p,
	input refclk_n,
	output clk156
    );
    
    wire refclk;
    
    IBUFDS_GTE2 ibufds_inst
    (
        .O       (refclk),
        .ODIV2   (),
        .CEB     (1'b0),
        .I       (refclk_p),
        .IB      (refclk_n)
    );

    BUFG clk156_bufg_inst
    (
        .I       (refclk),
        .O       (clk156)
    );
endmodule
