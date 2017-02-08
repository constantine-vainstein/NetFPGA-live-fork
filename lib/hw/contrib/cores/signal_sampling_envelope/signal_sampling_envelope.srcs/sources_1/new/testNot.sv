`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/26/2017 04:35:05 PM
// Design Name: 
// Module Name: testNot
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


module testNot(
        input in,
        output reg inverted_in
    );
    always_comb begin
        inverted_in <= ~in;
    end
endmodule
