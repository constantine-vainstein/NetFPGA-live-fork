`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/19/2017 05:16:12 PM
// Design Name: 
// Module Name: spad_emulator
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


module spad_emulator(
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
    reg [6:0] sample_number;
        
    reg prev_latch;
        
    wire [7:0] time_from_address_change_ns;
    wire [7:0] time_from_row_group_change_ns;  
    wire address_stable;
    wire address_stable_for_rom;
        
    wire [31:0] pixels_out;        
    wire [63:0] data_out;
        
    assign time_from_address_change_ns = (Latch | prev_latch | reset | (prev_row_select != row_select) | (prev_col_select != col_select)) ?
        0 : prev_time_from_address_change_ns + 10;
        
    assign time_from_row_group_change_ns = (Latch | prev_latch | reset | (prev_second_half_rows != second_half_rows)) ? 
        0 : prev_time_from_row_group_change_ns + 10;
          
    always @(posedge clk) begin
    
        if (reset) begin
        
            current_time <= 0;
            latch_time <= 0;
        
            sample_number <= 0;
        
            prev_time_from_address_change_ns <= 0;
        
            prev_time_from_row_group_change_ns <= 0;
            
            prev_latch <= 1; // intetionally in order not to cause sample_number to grow from 0 to 1 in the first frame.
            
            prev_row_select <= -1;
            
            prev_col_select <= -1;
            
            prev_second_half_rows <= -1;
        end else
        begin
            current_time <= current_time + 10;
        
            if(Latch) begin
                latch_time <= current_time + 10;
                if(~prev_latch) begin
                	if (sample_number < 99) begin
                    	sample_number <= sample_number + 1;
					end else begin
						sample_number <= 0;
					end
                end
            end
      
            prev_row_select <= row_select;
            prev_col_select <= col_select;
            prev_second_half_rows <= second_half_rows;
            prev_latch <= Latch;
            prev_time_from_address_change_ns <= time_from_address_change_ns;
            prev_time_from_row_group_change_ns <= time_from_row_group_change_ns;  
        end
    end
    
        
        
    assign address_stable = (time_from_address_change_ns >= 40 & time_from_row_group_change_ns >= 0);
    assign address_stable_for_rom = (time_from_address_change_ns >= 00 & time_from_row_group_change_ns >= 0);
    
    
    blk_mem_gen_0 initial_rom (
        .clka(clk),    // input wire clka
        .ena(address_stable_for_rom),      // input wire ena
        .wea(0),      // input wire [0 : 0] wea
        .addra({sample_number,row_select,col_select}),  // input wire [15 : 0] addra
        .dina(0),    // input wire [31 : 0] dina
        .douta(data_out)  // output wire [63 : 0] douta       
    );
    
    assign pixels_out = second_half_rows ? data_out[31:0] : data_out[63:32];
        
    assign pixel_out_0 = (address_stable) ? pixels_out[31:24] : -1;
    assign pixel_out_1 = (address_stable) ? pixels_out[23:16] : -1;
    assign pixel_out_2 = (address_stable) ? pixels_out[15:8] : -1;
    assign pixel_out_3 = (address_stable) ? pixels_out[7:0] : -1;
        
endmodule
