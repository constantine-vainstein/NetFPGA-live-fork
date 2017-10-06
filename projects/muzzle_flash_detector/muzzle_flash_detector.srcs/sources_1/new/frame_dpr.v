`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2017 01:33:50 AM
// Design Name: 
// Module Name: frame_dpr
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


module frame_dpr(
    input reset,
    
    input wrClk,
    input [31:0] wrFrameId,
    input [3:0] wrRowSet,
    input [5:0] wrColSet,
    input wrValid,
    output reg wrEnable,
    input [7:0] wrPixel0,
    input [7:0] wrPixel1,
    input [7:0] wrPixel2,
    input [7:0] wrPixel3,
    
    input rdClk,
    output [63:0] tx_axis_frame_tdata,
    output [7:0] tx_axis_frame_tkeep,
    output tx_axis_frame_tvalid,
    output tx_axis_frame_tlast,
    input tx_axis_frame_tready
    // the data will be output sequentialy, without needing an inoput of row/column number.
    // it can be copied as is to the ethernet frame.
      
    );
    
    // ------------------- Internal Parameters
    // *************** States of Write State Machine ************* 
    localparam WRITE_STATE_WAIT_FOR_START = 1;
    localparam WRITE_STATE_STORE_FRAME_ID = 2;
    localparam WRITE_STATE_STORE_DATA = 4;
    localparam WRITE_STATE_SIZE_BITS_ = 3;
    localparam WRITE_STATE_FIRST_STATE = WRITE_STATE_WAIT_FOR_START;
    localparam WRITE_STATE_LAST_STATE = WRITE_STATE_STORE_DATA;
    
    // *************** States of Read State Machine *************
    localparam READ_STATE_WAIT = 1;
    localparam READ_STATE_FRAME_ID = 2;
    localparam READ_STATE_COLUMN_ID = 4;
    localparam READ_STATE_COLUMN_DATA = 8;
    localparam READ_STATE_FINALIZE_READ = 16;
    localparam READ_STATE_SIZE_BITS_ = 5;
    localparam READ_STATE_FIRST_ = READ_STATE_WAIT;
    localparam READ_STATE_LAST_ = READ_STATE_FINALIZE_READ;
    
    // *************** Memory Constatnts *********************
    
    
    localparam AREA_A_FIRST_ADDRESS_32BIT = 1;
    localparam AREA_A_FIRST_ADDRESS_64BIT = 0;
    localparam AREA_A_LAST_ADDRESS_32BIT = 1025; // PreMble is 4 bytes, FrameId is 4 bytes more.
    // the address 0 (32 bit notation) is not used
    localparam AREA_B_FIRST_ADDRESS_32BIT = 1027;
    localparam AREA_B_LAST_ADDRESS_32BIT = 2051;
	localparam AREA_A_LAST_ADDRESS_64BIT = 512;
    // the first half of address "512" (64 bit notation) is not used
    localparam AREA_B_FIRST_ADDRESS_64BIT = 513;
    localparam AREA_B_LAST_ADDRESS_64BIT = 1025;
    
    // *************** Block RAM delays ************
    localparam MEM_WRITE_DELAY_ANY_CLK = 4;
    
    reg [31:0] write_data;
    reg [WRITE_STATE_SIZE_BITS_ - 1 : 0] write_state;
    reg write_enable;
    reg [11 : 0] write_address;
    reg is_area_a_written;
    reg [2 : 0] write_delay_clk;
    reg dpr_write_enable;
    
    reg area_a_valid;
    reg area_b_valid;
    
    
    wire [11 : 0] maximal_write_address;
    reg [11 : 0] maximal_read_address; // reg because it will be updated only when starting reading from an area.
    reg read_area_is_a;
    reg prev_is_area_a_written;
	wire [63 : 0] data_from_dpr;
	wire at_least_one_readable_area;
	wire data_from_dpr_valid;
	reg start_read;
	reg [31 : 0] prev_wrFrameId;
    wire active_area_changed;
    
    reg [10 : 0] read_address;
    reg [READ_STATE_SIZE_BITS_ - 1 : 0] read_state;
    
    reg [5 : 0] column_id;
    
    reg [2 : 0] pixels_block_in_column_id;
    reg [7 : 0] last_pixel_in_block;
    
    wire [63 : 0] swaped_data_from_dpr;
    
    assign maximal_write_address = is_area_a_written ? (AREA_A_LAST_ADDRESS_32BIT) : (AREA_B_LAST_ADDRESS_32BIT);
    
    always @(posedge (wrClk | rdClk)) begin
    	if (reset) begin
    		write_state <= WRITE_STATE_WAIT_FOR_START;
    		write_state <= READ_STATE_WAIT;
    		is_area_a_written <= 1;
    		prev_is_area_a_written <= 0;
    		prev_wrFrameId <= 32'hFFFFFFFF;
    		wrEnable <= 0;
    		area_a_valid <= 0;
    		area_b_valid <= 0;
    		read_address <= 11'b11111111111;
    		dpr_write_enable <= 0;
    		start_read <= 0;
    		last_pixel_in_block <= 0;
    		pixels_block_in_column_id <= 0;
    	end
	end
	
	always @(*) begin    	
    	case (write_state)
    		WRITE_STATE_WAIT_FOR_START: begin
    			write_enable <= 0;
				write_delay_clk <= MEM_WRITE_DELAY_ANY_CLK;	
    			if (is_area_a_written) begin
    				area_a_valid <= 0;
				end else begin
					area_b_valid <= 0;
				end
    			if (wrFrameId != prev_wrFrameId) begin
    				write_state <= WRITE_STATE_STORE_FRAME_ID;		
    			end
    		end
    			
    		WRITE_STATE_STORE_FRAME_ID: begin
    			write_enable <= 1;
    			write_address <= is_area_a_written ? AREA_A_FIRST_ADDRESS_32BIT : AREA_B_FIRST_ADDRESS_32BIT;
    			write_data <= wrFrameId;
    			dpr_write_enable <= 1;
    			if (write_delay_clk == 0) begin
    				// after 2 posedge clocks (or 4 any edge clocks), go to the next write_state and increment the address.
    				write_state <= WRITE_STATE_STORE_DATA;
    				write_delay_clk <= MEM_WRITE_DELAY_ANY_CLK;
    				wrEnable <= 1;
    				dpr_write_enable <= 0; // don't write to the dpr unless validate that wrValid.
    			end else begin
    				// stay in the same write_state, but decrement the write-delay counter.
    				write_delay_clk <= write_delay_clk - 1;
    			end
    		end
    		
    		WRITE_STATE_STORE_DATA: begin
    			if (write_address <= maximal_write_address) begin
					if (wrValid & (~dpr_write_enable)) begin
						// capture the data
						write_data <= {wrPixel3, wrPixel2, wrPixel1, wrPixel0};
						// enable the writing to the dpr. But if now write_address == maximal_write_address, then in the next cycle it will exceed the maximum, so don't write.
						dpr_write_enable <= (write_address < maximal_write_address);
						// and prepare the address register to the write operation
						write_address <= write_address + 1;
					end
					if (dpr_write_enable) begin// we are during the write operation
						if (write_delay_clk > 0) begin
								write_delay_clk <= write_delay_clk - 1;
								wrEnable <= 0;
						end else begin
							write_delay_clk <= MEM_WRITE_DELAY_ANY_CLK;
							// if write_address has reached the maximum and this is the last clock cycle of write delay, deassert dpr_write_enable
							wrEnable = 1;
							dpr_write_enable <= 0;
						end
					end
				end else begin
					// The write address is above the maximum. Don't write! Deassert dpr_write_enable
					dpr_write_enable <= 0;
					if (is_area_a_written) begin
						area_a_valid <= 1;
					end else begin
						area_b_valid <= 1;
					end
					is_area_a_written <= ~is_area_a_written;
					write_state <= WRITE_STATE_WAIT_FOR_START;
					wrEnable = 0;
				end
			end
		endcase
    end 


	// *********************** Read State Machine **********************
	assign active_area_changed = (prev_is_area_a_written != is_area_a_written); 
	assign at_least_one_readable_area = (is_area_a_written) ? area_b_valid : area_a_valid;
	always @(posedge rdClk) begin
		prev_is_area_a_written <= is_area_a_written;
	end
	
    always @(posedge rdClk) begin
	
		if (active_area_changed) begin
			read_state = READ_STATE_WAIT;
		end
		
		case (read_state) 
			READ_STATE_WAIT: begin
				if (at_least_one_readable_area && active_area_changed /*&& tx_axis_frame_tready*/) begin
					read_area_is_a = ~is_area_a_written;
					read_address <= (read_area_is_a) ? AREA_A_FIRST_ADDRESS_64BIT : AREA_B_FIRST_ADDRESS_64BIT;
					maximal_read_address <= (read_area_is_a) ? AREA_A_LAST_ADDRESS_64BIT : AREA_B_LAST_ADDRESS_64BIT;
					start_read <= 1;
					column_id <= 0;
					read_state <= READ_STATE_FRAME_ID;
				end else begin
					start_read <= 0;
				end
			end
			
			READ_STATE_FRAME_ID: begin
				if(data_from_dpr_valid && tx_axis_frame_tready) begin
					read_state <= READ_STATE_COLUMN_DATA;
					read_address <= read_address + 1;
					start_read <= 0;
				end else begin
					start_read <= 1; // just keep reading the frame id...
				end
			end
			
			READ_STATE_COLUMN_ID: begin
				// not sure I will use it
			end
			
			READ_STATE_COLUMN_DATA: begin
				if(start_read == 0) begin
					pixels_block_in_column_id <= 0;
					start_read <= 1;
				end else begin
					if(data_from_dpr_valid) begin
						last_pixel_in_block <= swaped_data_from_dpr[63 : 56];
						if (tx_axis_frame_tready) begin
							pixels_block_in_column_id <= pixels_block_in_column_id + 1;
							if (pixels_block_in_column_id == 7) begin
								column_id <= column_id + 1;
							end
							if (read_address < maximal_read_address) begin
								read_address <= read_address + 1;
							end else begin
								read_state <= READ_STATE_FINALIZE_READ;
							end
						end
					end
				end
			end
			
			READ_STATE_FINALIZE_READ: begin
				if (tx_axis_frame_tready) begin
					read_state <= READ_STATE_WAIT;
				end
			end
			
		endcase
    end 
    
	blk_mem_gen_1 dpr_name (
		  .clka(wrClk),    // input wire clka
		  .ena(dpr_write_enable),      // input wire ena
		  .wea(write_enable),      // input wire [0 : 0] wea
		  .addra(write_address),  // input wire [11 : 0] addra
		  .dina(write_data),    // input wire [31 : 0] dina
		  .clkb(rdClk),    // input wire clkb
		  .enb(start_read),      // input wire enb
		  .addrb(read_address),  // input wire [11 : 0] addrb
		  .doutb(data_from_dpr)  // output wire [63 : 0] doutb
		);
	
	assign swaped_data_from_dpr = {data_from_dpr[31 : 0], data_from_dpr[63 : 32]};
		
	read_control read_ctl(
		.clk(rdClk),
		.reset(reset),
		.addr(read_address),
		.en(start_read),
		.valid(data_from_dpr_valid),
		.end_of_read_process()
	);
		
	assign tx_axis_frame_tdata = 	(read_state == READ_STATE_FRAME_ID) ? swaped_data_from_dpr :
								  	(read_state == READ_STATE_COLUMN_DATA) ? 
								  		{swaped_data_from_dpr[55:0], (pixels_block_in_column_id == 0) ? column_id : last_pixel_in_block} :
									(read_state == READ_STATE_FINALIZE_READ) ? {56'b0, last_pixel_in_block} :
									/*(read_state == READ_STATE_WAIT) */ 0;
								  											
	
	assign tx_axis_frame_tlast = ((read_state != READ_STATE_WAIT) && active_area_changed) || // if active area has changed during read, end the packet, and read from the new area. It should not happen.
								 (read_state == READ_STATE_FRAME_ID) ||
								 ((read_state == READ_STATE_COLUMN_DATA) && (pixels_block_in_column_id == 7)) ||
								 (read_state == READ_STATE_FINALIZE_READ);
								 
 	assign tx_axis_frame_tkeep = (tx_axis_frame_tlast && (read_state != READ_STATE_FRAME_ID)) ? 8'b00000001 : 8'b11111111 /* irrelevant in all other states */;
	assign tx_axis_frame_tvalid = 	(read_state != READ_STATE_WAIT) && (data_from_dpr_valid || 
									((read_state != READ_STATE_WAIT) && active_area_changed) || // sould never happen
									(read_state == READ_STATE_FINALIZE_READ)); // in this case the data is not read from dpr. 
	
	
    
endmodule