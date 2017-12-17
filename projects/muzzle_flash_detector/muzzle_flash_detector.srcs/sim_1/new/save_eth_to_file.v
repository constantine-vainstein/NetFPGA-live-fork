`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/15/2017 08:44:19 PM
// Design Name: 
// Module Name: save_eth_to_file
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


module save_eth_to_file(
	input clk,
	input reset,
    input [63:0] tx_axis_frame_eth_tdata,
	input [7:0]  tx_axis_frame_eth_tkeep,
	input tx_axis_frame_eth_tvalid,
	input tx_axis_frame_eth_tlast,
	output tx_axis_frame_eth_tready	
    );
    
    reg [31:0] tx_file_ptr;
    reg [15:0] eth_frame_count;
    
    integer i;
    
    initial begin
    	tx_file_ptr = $fopen("tx.dat");
    	if(!tx_file_ptr) begin
    		$write("Couldn't open tx.dat");
    		$finish;
    	end
    	eth_frame_count = 8'b0;
    end
    
    always @(posedge clk) begin
    	if(reset) begin
    		
    	end else begin
    		if(tx_axis_frame_eth_tvalid) begin
    			for (i = 0; i < 8; i = i + 1) begin
    				if(tx_axis_frame_eth_tkeep[i]) begin
    					$fwrite(tx_file_ptr, "%02X", {tx_axis_frame_eth_tdata[8*i+7], 
    													tx_axis_frame_eth_tdata[8*i+6],
    													tx_axis_frame_eth_tdata[8*i+5],
    													tx_axis_frame_eth_tdata[8*i+4],
    													tx_axis_frame_eth_tdata[8*i+3],
    													tx_axis_frame_eth_tdata[8*i+2],
    													tx_axis_frame_eth_tdata[8*i+1],
    													tx_axis_frame_eth_tdata[8*i+0]});
					end
    			end
    			if(tx_axis_frame_eth_tlast) begin
    				$fwrite(tx_file_ptr, "\n");
    				eth_frame_count <= eth_frame_count + 1;
    				if(eth_frame_count >= 6500) begin
    					$fclose(tx_file_ptr);
    					$finish;
					end
				end    			
    		end
    	end
    	
    end
    
    assign tx_axis_frame_eth_tready = 1'b1;
endmodule
