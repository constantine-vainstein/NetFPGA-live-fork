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
    output wrEnable,
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
    localparam STATE_WAIT_FOR_START = 1;
    localparam STATE_STORE_FRAME_ID = 2;
    localparam STATE_STORE_DATA = 4;
    localparam STATE_SIZE_BITS_ = 3;
    localparam STATE_FIRST_STATE = STATE_WAIT_FOR_START;
    localparam STATE_LAST_STATE = STATE_STORE_DATA;
    
    localparam AREA_A_FIRST_ADDRESS = 1;
    localparam AREA_A_LAST_ADDRESS_32BIT = 1025;
    // the address 0 (32 bit notation) is not used
    localparam AREA_B_FIRST_ADDRESS_32BIT = 1027;
    localparam AREA_B_LAST_ADDRESS_32BIT = 2051;
	localparam AREA_A_LAST_ADDRESS_64BIT = 511;
    // the first half of address "512" (64 bit notation) is not used
    localparam AREA_B_FIRST_ADDRESS_64BIT = 512;
    localparam AREA_B_LAST_ADDRESS_64BIT = 1025;
    
    
    localparam MEM_WRITE_DELAY_ANY_CLK = 4;
    localparam MEM_READ_DELAY_ANY_CLK = 4;
    
    reg [31:0] write_data;
    reg [STATE_SIZE_BITS_ - 1 : 0] state;
    reg write_enable;
    reg [11 : 0] write_address;
    reg is_area_a_written;
    reg [2 : 0] write_delay_clk;
    
    reg area_a_valid;
    reg area_b_valid;
    
    reg prev_read_enable;
    
    wire [11 : 0] maximal_write_address;
    reg [11 : 0] maximal_read_address; // reg because it will be updated only when starting reading from an area.
    reg read_area_is_a;
    reg prev_is_area_a_written;
	reg [2 : 0] read_delay_clk;
	reg [63 : 0] read_data;
	wire [63 : 0] data_from_dpr;
    
    wire read_enable; 
    reg [11 : 0] read_address;
    
    assign maximal_write_address = is_area_a_written ? (AREA_A_LAST_ADDRESS_32BIT) : (AREA_B_LAST_ADDRESS_64BIT);
    
    always @(posedge (wrClk | rdClk)) begin
    	if (reset) begin
    		state <= STATE_WAIT_FOR_START;
    		is_area_a_written <= 1;
    		prev_is_area_a_written <= 0;
    		prev_wrFrameId <= 32'hFFFFFFFF;
    		wrEnable <= 0;
    		area_a_valid <= 0;
    		area_b_valid <= 0;
    		prev_read_enable <= 0;
    	end
	end
	
	always @(wrClk) begin    	
    	case (state)
    		STATE_WAIT_FOR_START: begin
    			write_enable <= 0;
    			if (is_area_a_written) begin
    				area_a_valid <= 0;
				end else begin
					area_b_valid <= 0;
				end
    			if (wrFrameId != prev_wrFrameId) begin
    				state <= STATE_STORE_FRAME_ID;		
    				state_delay_clk <= MEM_WRITE_DELAY_ANY_CLK - 1;			
    			end
    		end
    			
    		STATE_STORE_FRAME_ID: begin
    			write_enable <= 1;
    			write_address <= is_area_a_written ? AREA_A_FIRST_ADDRESS : AREA_B_FIRST_ADDRESS_32BIT;
    			write_data <= wrFrameId;
    			if (state_delay_clk == 0) begin
    				// after 2 posedge clocks (or 4 any edge clocks), go to the next state and increment the address.
    				state <= STATE_STORE_DATA;
    				write_address <= write_address + 1;
    				write_delay_clk <= MEM_WRITE_DELAY_ANY_CLK - 1;
    				wrEnable <= 1;
    			end else begin
    				// stay in the same state, but decrement the write-delay counter.
    				write_delay_clk <= write_delay_clk - 1;
    			end
    		end
    		
    		STATE_STORE_DATA: begin
    			if (write_address <= maximal_write_address) begin
					if (wrValid) begin
						write_data <= {wrPixel0, wrPixel1, wrPixel2, wrPixel3};
					end
					if (write_delay_clk > 0) begin
						write_delay_clk <= write_delay_clk - 1;
						wrEnable <= 0;
					end else begin
						write_delay_clk <= MEM_WRITE_DELAY_ANY_CLK - 1;
						write_address <= write_address + 1;
						wrEnable = 1;
					end
				end else begin
					if (is_area_a_written) begin
						area_a_valid <= 1;
					end else begin
						area_b_valid <= 1;
					end
					is_area_a_written <= ~is_area_a_written;
					state <= STATE_WAIT_FOR_START;
					wrEnable = 0;
				end
			end
		endcase
    end 
    
    assign read_enable = (is_area_a_written) ? area_b_valid : area_a_valid;
    
    always @(rdClk) begin
    	prev_read_enable <= read_enable;
    	prev_is_area_a_written <= is_area_a_written;
		if(read_enable) begin
			if (prev_is_area_a_written != is_area_a_written) begin 	
				read_area_is_a = ~is_area_a_written;
				read_address <= (read_area_is_a) ? AREA_A_FIRST_ADDRESS : AREA_B_FIRST_ADDRESS_64BIT;
				maximal_read_address <= (read_area_is_a) ? AREA_A_LAST_ADDRESS_64BIT : AREA_B_LAST_ADDRESS_64BIT;
				read_delay_clk <= MEM_READ_DELAY_ANY_CLK - 1; 
			end else begin				
				if (read_delay_clk == 0) begin
					read_data <= data_from_dpr;
					if(tx_axis_frame_tready) begin
						read_address <= (read_address == maximal_read_address) ? (read_address + 1) : read_address;
						read_delay_clk <= MEM_READ_DELAY_ANY_CLK - 1;
					end
				end else begin
						read_delay_clk <= read_delay_clk - 1;
				end
			end
					
		end
    end 
    
	blk_mem_gen_1 dpr_name (
		  .clka(wrClk),    // input wire clka
		  .ena(0),      // input wire ena
		  .wea(write_enable),      // input wire [0 : 0] wea
		  .addra(write_address),  // input wire [11 : 0] addra
		  .dina(write_data),    // input wire [31 : 0] dina
		  .clkb(rdClk),    // input wire clkb
		  .enb(read_enable),      // input wire enb
		  .addrb(read_address),  // input wire [11 : 0] addrb
		  .doutb(data_from_dpr)  // output wire [63 : 0] doutb
		);
	assign tx_axis_frame_tdata = read_enable;
	assign tx_axis_frame_tkeep = 64'hFFFFFFFFFFFFFFFF;
	assign tx_axis_frame_tlast = (read_address[2:0] == 0); // if read address is divideable by 8, this is the last message of this column.
	assign tx_axis_frame_tvalid = (read_delay_clk == 0 && read_enable);
    
endmodule