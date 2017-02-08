`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/08/2017 03:32:36 PM
// Design Name: 
// Module Name: pixel_memory
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
function integer clog2s;
	input [31:0] v;
	reg [31:0] value;
	begin
		value = v;
		if (value == 1) begin
			clog2s = 1;
		end
		else begin
			value = value-1;
			for (clog2s=0; value>0; clog2s=clog2s+1)
				value = value>>1;
		end
	end
endfunction

module pixel_memory
#(
    parameter WIDTH_PIXELS=64,
    parameter HEIGHT_PIXELS=64,
    parameter PIXEL_SIZE_BITS=8,
    parameter NUM_OF_SAMPLES=500,
    parameter NUM_OF_SAMPLES_BACKWARDS=NUM_OF_SAMPLES/2,
    parameter DEFAULT_INTENSITY=8'b0
)
(
    input [WIDTH_PIXELS * PIXEL_SIZE_BITS - 1 : 0] sampled_signal ,
    input clk,
    input we,
    input reset,
    input slide_window
);
    reg [clog2s(NUM_OF_SAMPLES) - 1 : 0] read_sliding_window_first_sample;
    reg [clog2s(NUM_OF_SAMPLES) - 1 : 0] read_sliding_window_next_avalable_sample;
    reg [clog2s(HEIGHT_PIXELS) - 1 : 0] current_line;
    reg [clog2s(NUM_OF_SAMPLES) - 1 : 0] numof_stored_samples;
    
    wire number_of_extra_samples = numof_stored_samples - NUM_OF_SAMPLES_BACKWARDS;
    wire num_of_allowed_samples = (slide_window) ? NUM_OF_SAMPLES_BACKWARDS : NUM_OF_SAMPLES;
    wire write_disable = (~slide_window) & numof_stored_samples >= NUM_OF_SAMPLES;
    wire new_frame = (current_line == HEIGHT_PIXELS - 1);
    
    blk_mem_gen_0 frame_memory (
      .clka(clk),    // input wire clka
      .ena(~write_disable),      // input wire ena
      .wea(~write_disable),      // input wire [0 : 0] wea
      .addra(read_sliding_window_next_avalable_sample * HEIGHT_PIXELS + current_line),  // input wire [14 : 0] addra
      .dina(sampled_signal)    // input wire [511 : 0] dina
//      .clkb(clkb),    // input wire clkb
//      .enb(enb),      // input wire enb
//      .addrb(addrb),  // input wire [17 : 0] addrb
//      .doutb(doutb)  // output wire [63 : 0] doutb
    );
    
    always @(posedge clk) begin
        if (reset) begin
            read_sliding_window_first_sample <= 0;
            read_sliding_window_next_avalable_sample <= 0;
            numof_stored_samples <= 0;
            current_line <= 0;
        end else
        begin
            if (~new_frame)
            begin
                current_line <= current_line + 1;
            end else
            begin
                current_line <= 0;
                // :TODO: write to BRAM the current line in the read_sliding_window_last_sample
                if (numof_stored_samples < num_of_allowed_samples) 
                begin
                    numof_stored_samples <= numof_stored_samples + 1;
                    read_sliding_window_next_avalable_sample <= (read_sliding_window_next_avalable_sample < NUM_OF_SAMPLES - 1) ? read_sliding_window_next_avalable_sample + 1 : 0;
                end else
                begin
                    if (slide_window)
                    begin
                        numof_stored_samples <= NUM_OF_SAMPLES_BACKWARDS;
                        if(read_sliding_window_first_sample + 1 < NUM_OF_SAMPLES - number_of_extra_samples)
                        begin
                            read_sliding_window_first_sample <= read_sliding_window_first_sample + number_of_extra_samples + 1;
                        end else
                        begin
                            read_sliding_window_first_sample <= read_sliding_window_first_sample + number_of_extra_samples + 1 - NUM_OF_SAMPLES;
                        end                        
                    end else
                    begin
                        // ignore
                    end
                end
            end
            
        end
    end
endmodule
