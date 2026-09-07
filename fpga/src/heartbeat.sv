module heartbeat(input logic clk, reset, enable, 
output logic fpga_blink_out);
	//logic int_osc;
	//logic pulse;
	//logic led_state = 0;
	logic [25:0] counter = 0;
	
	// Internal high-speed oscillator
	//HSOSC hf_osc (.CLKHFPU(1'b1), .CLKHFEN(1'b1), .CLKHF(int_osc));
	
	// Simple clock divider
	always_ff @(posedge clk)
		begin
			if(reset == 0) begin
				fpga_blink_out <=0;
				counter <=0;
				end
						else if(counter == 19_999_999) 
				counter <= 0;

			else
			begin
			if(counter == 0) 
				fpga_blink_out <= 1;
				
			else if(counter == 9_999_999)
				fpga_blink_out <= 0;
				

				
			if(enable == 1)
				counter <= counter+1;
			end
		end
		
endmodule