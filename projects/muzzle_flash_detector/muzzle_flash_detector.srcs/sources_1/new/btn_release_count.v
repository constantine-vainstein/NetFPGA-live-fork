`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2017 06:07:42 AM
// Design Name: 
// Module Name: btn_release_count
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


module btn_release_count(
    input clk,
    input reset,
    input button_pressed,
    output reg count
    );
    
    reg prev_button_pressed;
    
    always @(posedge clk) begin
    	if(reset) begin
    		count <= 0;
		 	prev_button_pressed <= 0;
		end
		else begin
			if (~prev_button_pressed & button_pressed) begin
				count <= ~count;
			end
			
			prev_button_pressed <= button_pressed;
		end
		 
    end
    
endmodule
