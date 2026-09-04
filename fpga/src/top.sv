//Ben Lertwachara  blertwachara@g.hmc.edu uses 7seg modules and heartbeat module and maps lights to dip switches for lab 1

module lab1_xx(
	input 	logic	s[3:0],
	output 	logic led[2:0], seg[6:0]
);
	heartbeat hb(led[2]);
	sevenseg sevseg(s, seg);
	assign led[0] = s[0]^s[1];
	assign led[1] = s[3]&s[2];


endmodule


module sevenseg(input logic s[3:0],
	output logic seg[6:0]);
	
	always_comb
		case (s)
			//          gfe_dcba
			0: seg = 7'b0111111;
			1: seg = 7'b0000110;
			2: seg = 7'b1011011;
			3: seg = 7'b1001111;
			4: seg = 7'b1100110;
			5: seg = 7'b1101101;
			6: seg = 7'b1111101;
			7: seg = 7'b000_111;
			8: seg = 7'b1111111;
			9: seg = 7'b1100111;
			10:seg = 7'b1110111;
			11:seg = 7'b1111100;
			12:seg = 7'b0111001;
			13:seg = 7'b1011110;
			14:seg = 7'b1111001;
			15:seg = 7'b1110001;
			default: seg = 7'b0000000;
		endcase
	
endmodule

module heartbeat(output logic fpga_blink_out);
	logic int_osc;
	//logic pulse;
	//logic led_state = 0;
	logic [24:0] counter = 0;
	
	// Internal high-speed oscillator
	HSOSC hf_osc (.CLKHFPU(1'b1), .CLKHFEN(1'b1), .CLKHF(int_osc));
	
	// Simple clock divider
	always_ff @(posedge int_osc)
		begin
			counter <= counter + 1;
		end
		
	assign fpga_blink_out = counter[24];
endmodule