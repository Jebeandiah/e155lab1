//Ben Lertwachara  blertwachara@g.hmc.edu uses 7seg modules and heartbeat module and maps lights to dip switches for lab 1

module lab1_bl(
	input 	logic	[3:0] s,
	output 	logic [2:0] led, [6:0] seg
);
	heartbeat hb(led[2]);
	sevenseg sevseg(s, seg);
	assign led[0] = s[0]^s[1];
	assign led[1] = s[3]&s[2];


endmodule




