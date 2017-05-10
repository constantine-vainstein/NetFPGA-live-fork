`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.05.2017 20:23:30
// Design Name: 
// Module Name: spad_sim
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


module spad_sim(
    input clk,
    input Latch,
    input Reset,
    input [2:0] row_select,
    input [5:0] col_select,
    input second_half_rows,
    output [7:0] pixel_out_0,
    output [7:0] pixel_out_1,
    output [7:0] pixel_out_2,
    output [7:0] pixel_out_3
    );
    
    reg [30:0] current_time;
    reg [30:0] latch_time;
    
    reg [7:0] time_from_address_change_ns; 
    
    reg [2:0] prev_row_select;
    reg [5:0] prev_col_select;
    reg prev_second_half_rows;
    
    reg [7:0] initial_data [64:0][64:0];
    
    wire address_stable;
    
    wire [5 : 0] exact_row_0;
    wire [5 : 0] exact_row_1;
    wire [5 : 0] exact_row_2;
    wire [5 : 0] exact_row_3;
    
    integer /*[1:0]*/ row_index;
    integer /*[5:0]*/ exact_row;
    integer data_file; 
    integer captured_data;
    integer row;
    integer col;
    
    initial begin
        current_time = 0;
        latch_time = 0;
        
        data_file = $fopen("..\\..\\..\\symetricwave.dat", "r");
        if (data_file == 0) begin
            $display("data_file handle is invalid");
            $finish;
        end
        $fscanf(data_file, "%d", captured_data);
        
        row = 0;
        col = 0; 
        while (!$feof(data_file) & ((row < 64)) & (col < 64)) begin        
            initial_data[row][col] = captured_data;
            col = col + 1;
            if (col >= 64) begin
                col = 0;
                row = row + 1;
            end
            $fscanf(data_file, "%d\n", captured_data);
        end 
        $fclose(data_file);
        
    end;
    
    always @(posedge clk) begin
        current_time = current_time + 10;
        
        if(Latch) begin
            latch_time = current_time;
        end;
        
        if((prev_row_select != row_select) |
           (prev_col_select != col_select) |
           (prev_second_half_rows != second_half_rows)) begin
           
           time_from_address_change_ns = 0;
           
        end else begin
            time_from_address_change_ns = time_from_address_change_ns + 10; 
        end
        

        
        prev_row_select = row_select;
        prev_col_select = col_select;
        prev_second_half_rows = second_half_rows;
    end
    
    assign address_stable = (time_from_address_change_ns >= 20);

    assign exact_row_0 = {row_select, second_half_rows, 2'b00};
    assign exact_row_1 = {row_select, second_half_rows, 2'b01};
    assign exact_row_2 = {row_select, second_half_rows, 2'b10};
    assign exact_row_3 = {row_select, second_half_rows, 2'b11};
    
    assign pixel_out_0 = (address_stable) ? initial_data[exact_row_0][col_select] : -1;
    assign pixel_out_1 = (address_stable) ? initial_data[exact_row_1][col_select] : -1;
    assign pixel_out_2 = (address_stable) ? initial_data[exact_row_2][col_select] : -1;
    assign pixel_out_3 = (address_stable) ? initial_data[exact_row_3][col_select] : -1;
    
endmodule
