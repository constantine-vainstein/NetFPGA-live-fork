`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.05.2017 21:51:06
// Design Name: 
// Module Name: spad_ctrl_tb
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


module spad_ctrl_tb(
    
    );
    reg clk, reset;
    wire LatchSpad;
    wire ResetSpad;
    
    wire [2:0] RowSelect;
    wire [5:0] ColSelect;
    wire read_data;

    
    controller controller(
        .clk(clk),
        .reset(reset),
        .LatchSpad(LatchSpad),
        .ResetSpad(ResetSpad),
        .RowSelect(RowSelect),
        .ColSelect(ColSelect),
        .ReadData(read_data)
        );
    
    initial begin
        clk = 1;
        reset <= 1;
        reset <= #10 0;
    end
    
    always #5 clk = ~clk;
endmodule
