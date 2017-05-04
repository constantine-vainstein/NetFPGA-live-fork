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

    wire [63:0] FrameData_0;
    wire [63:0] FrameData_1;
    wire [63:0] FrameData_2;
    wire [63:0] FrameData_3;
    wire [63:0] FrameData_4;
    wire [63:0] FrameData_5;
    wire [63:0] FrameData_6;
    wire [63:0] FrameData_7;
    
    controller controller(
        .clk(clk),
        .reset(reset),
        .LatchSpad(LatchSpad),
        .ResetSpad(ResetSpad),
        .RowSelect(RowSelect),
        .ColSelect(ColSelect),

        .FrameData_0(FrameData_0),
        .FrameData_1(FrameData_1),
        .FrameData_2(FrameData_2),
        .FrameData_3(FrameData_3),
        .FrameData_4(FrameData_4),
        .FrameData_5(FrameData_5),
        .FrameData_6(FrameData_6),
        .FrameData_7(FrameData_7)
        );
    
    initial begin
        clk = 1;
        reset <= 1;
        reset <= #10 0;
    end
    
    always #5 clk = ~clk;
endmodule
