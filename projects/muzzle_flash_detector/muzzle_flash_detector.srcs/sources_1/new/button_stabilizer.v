`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/19/2017 04:27:31 PM
// Design Name: 
// Module Name: button_stabilizer
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


module button_stabilizer(
    input clk,
    input isPressed,
    output isStablePressed
    );
    
    reg [255 : 0] press_history = 0;
    
    assign isStablePressed = &press_history;
    
    always @(posedge clk) begin
    	press_history <= {press_history[254 : 0], isPressed};
    end
endmodule
