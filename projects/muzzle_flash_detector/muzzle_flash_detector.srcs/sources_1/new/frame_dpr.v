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
    input spad_reset,
    input eth_reset,
    
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
    input tx_axis_frame_tready,
    // the data will be output sequentialy, without needing an inoput of row/column number.
    // it can be copied as is to the ethernet frame.
    
    output [15 : 0] payload_length
      
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
    localparam READ_STATE_COLUMN_DATA = 4;
    localparam READ_STATE_FINALIZE_COLUMN = 8;
    localparam READ_STATE_SIZE_BITS_ = 4;
    localparam READ_STATE_FIRST_ = READ_STATE_WAIT;
    localparam READ_STATE_LAST_ = READ_STATE_FINALIZE_COLUMN;
    
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
    localparam MEM_WRITE_DELAY_ANY_CLK = 1;
    
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
    wire read_area_is_a;
    reg prev_is_area_a_written;
	wire [63 : 0] data_from_dpr;
	wire at_least_one_readable_area;
	wire data_from_dpr_valid;
	reg start_read;
	reg [31 : 0] cur_wrFrameId;
    wire active_area_changed;
    
    reg [10 : 0] read_address;
    reg [READ_STATE_SIZE_BITS_ - 1 : 0] read_state = READ_STATE_WAIT;
    
    reg [5 : 0] column_id;
    
    reg [2 : 0] pixels_block_in_column_id;
    reg [7 : 0] last_pixel_in_block;
    
    
    assign maximal_write_address = is_area_a_written ? (AREA_A_LAST_ADDRESS_32BIT) : (AREA_B_LAST_ADDRESS_32BIT);
    
    
    wire in_fifo_resetn = ~spad_reset;
    wire in_fifo_tvalid;
    wire in_fifo_tready;
    wire [31:0] in_fifo_tdata;
    
    wire data_from_in_fifo_tvalid;
    wire data_from_in_fifo_tready;
    wire [31:0] data_from_in_fifo_tdata;
    
    wire [31:0] fifo_axis_data_count;
    wire [31:0] fifo_axis_wr_data_count;
    wire [31:0] fifo_axis_rd_data_count;
    
    reg prev_wrValid;
    
    always @(posedge wrClk) begin
    	prev_wrValid <= wrValid;
    end
	
	assign in_fifo_tvalid = ((~prev_wrValid) & wrValid);
	assign in_fifo_tdata = {wrPixel3, wrPixel2, wrPixel1, wrPixel0};
	
	/* nothing to do with in_fifo_tready... If the fifo is not ready, there will be frame loss. */
	
    
    axis_data_fifo_1 pixels_input_fifo (
      .s_axis_aresetn(in_fifo_resetn),          // input wire s_axis_aresetn
      .s_axis_aclk(wrClk),                // input wire s_axis_aclk
      .s_axis_tvalid(in_fifo_tvalid),            // input wire s_axis_tvalid
      .s_axis_tready(in_fifo_tready),            // output wire s_axis_tready
      .s_axis_tdata(in_fifo_tdata),              // input wire [31 : 0] s_axis_tdata
      .m_axis_tvalid(data_from_in_fifo_tvalid),            // output wire m_axis_tvalid
      .m_axis_tready(data_from_in_fifo_tready),            // input wire m_axis_tready
      .m_axis_tdata(data_from_in_fifo_tdata),              // output wire [31 : 0] m_axis_tdata
      .axis_data_count(fifo_axis_data_count),        // output wire [31 : 0] axis_data_count
      .axis_wr_data_count(fifo_axis_wr_data_count),  // output wire [31 : 0] axis_wr_data_count
      .axis_rd_data_count(fifo_axis_rd_data_count)  // output wire [31 : 0] axis_rd_data_count
    );
    
    
    
    
	always @(posedge wrClk) begin  
		if (spad_reset) begin
    		write_state <= WRITE_STATE_WAIT_FOR_START;
			is_area_a_written <= 1;
			cur_wrFrameId <= 32'hFFFFFFFF;
			wrEnable <= 0;
			area_a_valid <= 0;
			area_b_valid <= 0;
			dpr_write_enable <= 0;
		end else begin
	
			case (write_state)
				WRITE_STATE_WAIT_FOR_START: begin
					write_delay_clk <= MEM_WRITE_DELAY_ANY_CLK;	
					if (is_area_a_written) begin
						area_a_valid <= 0;
					end else begin
						area_b_valid <= 0;
					end
					if (wrFrameId != cur_wrFrameId) begin
						write_state <= WRITE_STATE_STORE_FRAME_ID;
						cur_wrFrameId <= wrFrameId;	
						// Already prepare everithing to store FrameId. (no time!)
						write_enable <= 1;
						write_address <= is_area_a_written ? AREA_A_FIRST_ADDRESS_32BIT : AREA_B_FIRST_ADDRESS_32BIT;
						write_data <= wrFrameId;
						dpr_write_enable <= 1;
					end else begin
						write_enable <= 0;
					end
				end
					
				WRITE_STATE_STORE_FRAME_ID: begin
					write_enable <= 1;
					write_address <= is_area_a_written ? AREA_A_FIRST_ADDRESS_32BIT : AREA_B_FIRST_ADDRESS_32BIT;
					write_data <= wrFrameId;
					dpr_write_enable <= 1;
					if (write_delay_clk == 0) begin
						// after 2 posedge clocks, go to the next write_state and increment the address.
						write_state <= WRITE_STATE_STORE_DATA;
						write_delay_clk <= MEM_WRITE_DELAY_ANY_CLK;
						wrEnable <= 1;
						dpr_write_enable <= 0;
						/*end*/
					end else begin
						// stay in the same write_state, but decrement the write-delay counter.
						write_delay_clk <= write_delay_clk - 1;
					end
				end
				
				WRITE_STATE_STORE_DATA: begin
					// if we are not in write process, or we are in the end of it,
					// restart the write process in the next cycle.
					if (write_delay_clk == 0 || (~dpr_write_enable)) begin /* (1) */
						if(write_address == maximal_write_address) begin
							// reaching here means we are after (in in a cycle will be) in write process
							// to the maximal address. 
							// The write address is above the maximum. Don't write! Deassert dpr_write_enable
							dpr_write_enable <= 0;
							if (is_area_a_written) begin
								area_a_valid <= 1;
							end else begin
								area_b_valid <= 1;
							end
							is_area_a_written <= ~is_area_a_written;
							write_state <= WRITE_STATE_WAIT_FOR_START;
							wrEnable <= 0;								
						end else begin
							if(data_from_in_fifo_tvalid) begin									
								// capture the data
								write_data <= data_from_in_fifo_tdata;
								// enable the writing to the dpr. 
								dpr_write_enable <= 1;
								// and prepare the address register to the write operation
								write_address <= write_address + 1;
								// restart wite delay counter
								write_delay_clk <= MEM_WRITE_DELAY_ANY_CLK;
								wrEnable <= 0;
							end else begin // the data from fifo is not valid
								dpr_write_enable <= 0;
							end
						end
					end else begin // we ARE during write process, and we are not in the end of it.
						write_delay_clk <= write_delay_clk - 1;
						wrEnable <= 0;
					end
				end // case
			endcase
		end
    end 
    
    assign data_from_in_fifo_tready = 	(write_state == WRITE_STATE_STORE_DATA) && 
    									(write_delay_clk == 0 || (~dpr_write_enable)) && 
    									(write_address < maximal_write_address); // strcit "<" because otherwise, when it is "=",
    									// it means that this maximal address was already writen, because we are currently 
    									// (write_delay_clk == 0 || (~dpr_write_enable))


	// *********************** Read State Machine **********************
	reg area_a_valid_read_clk_domain;
	reg area_b_valid_read_clk_domain;
	reg is_area_a_written_read_clk_domain;
	
	always @(posedge rdClk) begin
		area_a_valid_read_clk_domain <= area_a_valid;
		area_b_valid_read_clk_domain <= area_b_valid;
		is_area_a_written_read_clk_domain <= is_area_a_written; 
	end
	
	assign active_area_changed = (prev_is_area_a_written != is_area_a_written_read_clk_domain); 
	assign at_least_one_readable_area = (is_area_a_written_read_clk_domain) ? area_b_valid_read_clk_domain : area_a_valid_read_clk_domain;
	assign read_area_is_a = ~is_area_a_written_read_clk_domain;
		
    always @(posedge rdClk) begin
    	if (eth_reset | ((read_state != READ_STATE_WAIT) && (read_state != READ_STATE_FRAME_ID) && (read_state != READ_STATE_COLUMN_DATA) && (read_state != READ_STATE_FINALIZE_COLUMN))) begin
			read_state <= READ_STATE_WAIT;
			read_address <= 11'b11111111111;
			start_read <= 0;
			last_pixel_in_block <= 0;
			pixels_block_in_column_id <= 0;
			prev_is_area_a_written <= 0;
    	end else begin
			prev_is_area_a_written <= is_area_a_written_read_clk_domain;
			
			case (read_state) 
				READ_STATE_WAIT: begin
					if (at_least_one_readable_area && active_area_changed /*&& tx_axis_frame_tready*/) begin
						if(read_area_is_a) begin
							read_address <= AREA_A_FIRST_ADDRESS_64BIT;
							maximal_read_address <= AREA_A_LAST_ADDRESS_64BIT;
						end else begin
							read_address <= AREA_B_FIRST_ADDRESS_64BIT;
							maximal_read_address <= AREA_B_LAST_ADDRESS_64BIT;
						end
						start_read <= 1;
						column_id <= 0;
						read_state <= READ_STATE_FRAME_ID;
					end else begin
						start_read <= 0;
					end
				end
				
				READ_STATE_FRAME_ID: begin
					if(data_from_dpr_valid && tx_axis_frame_tready) begin
						// Go to the next state
						read_state <= READ_STATE_COLUMN_DATA;
						read_address <= read_address + 1;
						pixels_block_in_column_id <= 0;
						start_read <= 1;
					end else begin
						start_read <= 1;
						// just keep reading the frame id...
					end
				end
				
				READ_STATE_COLUMN_DATA: begin
					if(data_from_dpr_valid) begin
						last_pixel_in_block <= data_from_dpr[63 : 56];
						if (tx_axis_frame_tready) begin
							pixels_block_in_column_id <= pixels_block_in_column_id + 1; // overflow is exploited here. after 7 pixels_block_in_column_id will go to 0
							if (pixels_block_in_column_id == 7) begin
								read_state <= READ_STATE_FINALIZE_COLUMN;
							end
							if (read_address < maximal_read_address) begin
								read_address <= read_address + 1;
							end
						end
					end
				end
				
				READ_STATE_FINALIZE_COLUMN: begin
					if (tx_axis_frame_tready) begin						
						if (column_id < 64 - 1) begin
							read_state <= READ_STATE_COLUMN_DATA;
						end else begin
							read_state <= READ_STATE_WAIT;
						end
						column_id <= column_id + 1;
					end					
				end
		
			endcase
		end
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
	
		
	read_control read_ctl(
		.clk(rdClk),
		.reset(eth_reset),
		.addr(read_address),
		.en(start_read),
		.valid(data_from_dpr_valid)
	);
`ifdef debug
	ila_1 dpr_signals (
		.clk(wrClk), // input  clk

		.probe0 (write_data), // input  [31:0]  probe0  
		.probe1 (write_state), // input  [2:0]  probe1 
		.probe2 (write_enable), // input  [0:0]  probe2 
		.probe3 (write_address), // input  [11:0]  probe3 
		.probe4 (is_area_a_written_read_clk_domain), // input  [0:0]  probe4 
		.probe5 (write_delay_clk), // input  [2:0]  probe5 
		.probe6 (dpr_write_enable), // input  [0:0]  probe6 
		.probe7 (area_a_valid), // input  [0:0]  probe7 
		.probe8 (area_b_valid), // input  [0:0]  probe8 
		.probe9 (maximal_write_address), // input  [11:0]  probe9
		.probe10 (cur_wrFrameId), // input  [11:0]  probe9 
		.probe11 (wrFrameId) // input  [11:0]  probe9  
	);
	
	ila_dpr_read ila_dpr_read_part (
		.clk(rdClk), // input wire clk
	
	
		.probe0 (maximal_read_address), // input wire [11:0]  probe0  
		.probe1 (read_area_is_a), // input wire [0:0]  probe1 
		.probe2 (prev_is_area_a_written), // input wire [0:0]  probe2 
		.probe3 (data_from_dpr), // input wire [63:0]  probe3 
		.probe4 (at_least_one_readable_area), // input wire [0:0]  probe4 
		.probe5 (data_from_dpr_valid), // input wire [0:0]  probe5 
		.probe6 (start_read), // input wire [0:0]  probe6 
		.probe7 (cur_wrFrameId), // input wire [31:0]  probe7 
		.probe8 (active_area_changed), // input wire [0:0]  probe8 
		.probe9 (read_address), // input wire [10:0]  probe9 
		.probe10(read_state), // input wire [3:0]  probe10 
		.probe11(column_id), // input wire [5:0]  probe11 
		.probe12(pixels_block_in_column_id), // input wire [2:0]  probe12 
		.probe13(last_pixel_in_block), // input wire [7:0]  probe13 
		.probe14(data_from_dpr), // input wire [63:0]  probe14
		.probe15(tx_axis_frame_tdata),
		.probe16(tx_axis_frame_tkeep),
		.probe17(tx_axis_frame_tvalid),
		.probe18(tx_axis_frame_tlast),
		.probe19(tx_axis_frame_tready)
	);
`endif		
	assign tx_axis_frame_tdata = 	(read_state == READ_STATE_FRAME_ID) ? data_from_dpr :
								  	(read_state == READ_STATE_COLUMN_DATA) ? 
								  		{data_from_dpr[55:0], (pixels_block_in_column_id == 0) ? column_id : last_pixel_in_block} :
									(read_state == READ_STATE_FINALIZE_COLUMN) ? {56'b0, last_pixel_in_block} :
									/*(read_state == READ_STATE_WAIT) */ 0;
								  											
	
	assign tx_axis_frame_tlast = ((read_state != READ_STATE_WAIT) && active_area_changed) || // if active area has changed during read, end the packet, and read from the new area. It should not happen.
								 (read_state == READ_STATE_FRAME_ID) ||
								 (read_state == READ_STATE_FINALIZE_COLUMN);
								 
 	assign tx_axis_frame_tkeep = (read_state == READ_STATE_FINALIZE_COLUMN) ? 8'b00000001 : 8'b11111111 /* irrelevant in all other states */;
	assign tx_axis_frame_tvalid = 	(read_state != READ_STATE_WAIT) && (data_from_dpr_valid || 
									active_area_changed || // sould never happen
									read_state == READ_STATE_FINALIZE_COLUMN); // in this case the data is not read from dpr. 
									
	assign payload_length = (read_state == READ_STATE_FRAME_ID) ? 16'h0a00 : // this includes the 2 bytes padding that will be added by eth_wrapper.
							((read_state == READ_STATE_COLUMN_DATA || read_state == READ_STATE_FINALIZE_COLUMN) ? 16'h4300 : 16'h0); // 16'd67 : 64 pixels + 1 column ID + 2 bytes padding that will be added by eth_wrapper
	
	
    
endmodule