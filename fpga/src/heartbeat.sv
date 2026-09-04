module heartbeat(output logic fpga_blink_out);
	logic int_osc;
	//logic pulse;
	//logic led_state = 0;
	logic [28:0] counter = 0;
	
	// Internal high-speed oscillator
	HSOSC hf_osc (.CLKHFPU(1'b1), .CLKHFEN(1'b1), .CLKHF(int_osc));
	
	// Simple clock divider
	always_ff @(posedge int_osc)
		begin
			counter <= counter + 27;
		end
		
	assign fpga_blink_out = counter[28];
endmodule