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
    input reset,
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
    
    reg [7:0] prev_time_from_address_change_ns;
    reg [7:0] prev_time_from_row_group_change_ns;  
    
    reg [2:0] prev_row_select;
    reg [5:0] prev_col_select;
    reg prev_second_half_rows;
    reg [5:0] sample_number;
    
    reg [7:0] initial_data [0:49][0:63][0:63];
    
    reg prev_latch;
    
    wire [7:0] time_from_address_change_ns;
    wire [7:0] time_from_row_group_change_ns;  
    wire address_stable;
    
    wire [5 : 0] exact_row_0;
    wire [5 : 0] exact_row_1;
    wire [5 : 0] exact_row_2;
    wire [5 : 0] exact_row_3;
    
    integer row_index;
    integer exact_row;
    integer data_file; 
    integer captured_data;
    integer row;
    integer col;
    integer t;
    integer code;
    
    initial begin
        current_time = 0;
        latch_time = 0;
        
        sample_number = 0;
        
        prev_time_from_address_change_ns = 0;
        
        prev_time_from_row_group_change_ns = 0;
        
        prev_latch = 0;
        
        prev_row_select = -1;
        
        prev_col_select = -1;
        
        prev_second_half_rows = -1;
        
        data_file = $fopen("..\\..\\..\\symetricwave.dat", "r");
        if (data_file == 0) begin
            $display("data_file handle is invalid");
            $finish;
        end
        code = $fscanf(data_file, "%d,", captured_data);
        
        row = 0;
        col = 0;
        t = 0; 
        while (~$feof(data_file) & (row < 64) & (col < 64) & (t < 50)) begin        
            initial_data[t][row][col] = captured_data;
            col = col + 1;
            if (col >= 64) begin
                col = 0;
                row = row + 1;
                if (row >= 64) begin
                    row = 0;
                    t = t + 1;
                end
            end
            code = $fscanf(data_file, "%d,", captured_data);
        end 
        $fclose(data_file);
        
    end;
    
    assign time_from_address_change_ns = (Latch | prev_latch | reset | (prev_row_select != row_select) | (prev_col_select != col_select)) ?
        0 : prev_time_from_address_change_ns + 10;
        
    assign time_from_row_group_change_ns = (Latch | prev_latch | reset | (prev_second_half_rows != second_half_rows)) ? 
        0 : prev_time_from_row_group_change_ns + 10;
          
    always @(posedge clk) begin
        current_time = current_time + 10;
        
        if(Latch) begin
            latch_time = current_time;
            if(~prev_latch) begin
                sample_number = sample_number + 1;
            end
        end
      
        prev_row_select = row_select;
        prev_col_select = col_select;
        prev_second_half_rows = second_half_rows;
        prev_latch <= Latch;
        prev_time_from_address_change_ns = time_from_address_change_ns;
        prev_time_from_row_group_change_ns = time_from_row_group_change_ns;  
    end
    

        
    assign address_stable = (time_from_address_change_ns >= 40 & time_from_row_group_change_ns >= 10);

    assign exact_row_0 = {row_select, second_half_rows, 2'b00};
    assign exact_row_1 = {row_select, second_half_rows, 2'b01};
    assign exact_row_2 = {row_select, second_half_rows, 2'b10};
    assign exact_row_3 = {row_select, second_half_rows, 2'b11};
    
    assign pixel_out_0 = (address_stable) ? initial_data[sample_number][exact_row_0][col_select] : -1;
    assign pixel_out_1 = (address_stable) ? initial_data[sample_number][exact_row_1][col_select] : -1;
    assign pixel_out_2 = (address_stable) ? initial_data[sample_number][exact_row_2][col_select] : -1;
    assign pixel_out_3 = (address_stable) ? initial_data[sample_number][exact_row_3][col_select] : -1;
    
endmodule
