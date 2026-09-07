module heartbeat #(
parameter MAX_COUNT = 19_999_998,
parameter COUNTER_WIDTH = 25
) (input logic clk, reset, enable, 
output logic fpga_blink_out);
	//logic int_osc;
	//logic pulse;
	//logic led_state = 0;
	logic [COUNTER_WIDTH:0] counter = 0;
	
	// Internal high-speed oscillator
	//HSOSC hf_osc (.CLKHFPU(1'b1), .CLKHFEN(1'b1), .CLKHF(int_osc));
	
	// Simple clock divider
	always_ff @(posedge clk)
		begin
			if(reset == 0) begin
				fpga_blink_out <=0;
				counter <=0;
				end
						else if(counter == MAX_COUNT) 
				counter <= 0;

			else
			begin
			if(counter == 0) 
				fpga_blink_out <= 0;
				
			else if(counter == MAX_COUNT/2)
				fpga_blink_out <= 1;
				

				
			if(enable == 1)
				counter <= counter+1;
			end
		end
		
endmodule