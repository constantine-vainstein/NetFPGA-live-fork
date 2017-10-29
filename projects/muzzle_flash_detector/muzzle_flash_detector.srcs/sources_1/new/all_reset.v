`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2017 05:24:12 PM
// Design Name: 
// Module Name: all_reset
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


module all_reset(
    input clk_spad,
    input clk_eth,
    input reset,
    input block_lock,
    output reg reset_spad,
    output reg reset_eth
    );
    
	reg block_lock_reg;
    
    // reset 
	reg [4:0] reset_cnt;
    
    wire delayed_reset;
    
    assign delayed_reset = reset | (reset_cnt < 20);
    
	always @ (posedge clk_100MHz) begin
    	block_lock_reg <= block_lock;
    	reset_spad <= delayed_reset | ~block_lock_reg;
    end
    
    always @ (posedge clk_156MHz) begin
    	reset_eth <= delayed_reset;
	end
	
	always @ (posedge clk_100MHz) begin
		if(reset) begin
			reset_cnt <= 0;
		end else begin
			if (reset_cnt < 20) begin
				reset_cnt <= reset_cnt + 1;
			end
		end
	end    
    
endmodule
