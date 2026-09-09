//Author: Ben Lertwachara - blertwachara@hmc.edu
//Date: 9/9/2026
//Functionality: Testbench for top (lab1_bl) module

`timescale 1 ns/1 ns


module testbenchtop();

  logic   led_tracker = 1'b0;
  logic [3:0] s;
  logic [2:0] led; 
  logic [6:0] seg;
    
  lab1_bl dut (
        .s(s), .led(led), .seg(seg)
    );



  initial begin
	s = 4'h0;                //setup inputs
	#10;                        //wait required time
	assert (led[0] == 1'b0 && led[1]==1'b0)       //check outputs
		$display("PASSED! leds work at time: %0t.", $time);
	else 
		$error("FAILED! leds fail at time: %0t.", $time); 
	s = 4'b0101;                //setup inputs
	#10;                        //wait required time
	assert (led[0] == 1'b1 && led[1]==1'b0)       //check outputs
		$display("PASSED! leds work at time: %0t.", $time);
	else 
		$error("FAILED! leds fail at time: %0t.", $time); 
	s = 4'b1010;                //setup inputs

	#10;                        //wait required time
	assert (led[0] == 1'b1 && led[1]==1'b0)       //check outputs
		$display("PASSED! leds work at time: %0t.", $time);
	else 
		$error("FAILED! leds fail at time: %0t.", $time); 		
	 s = 4'b1111;                //setup inputs

	#10;                        //wait required time
	assert (led[0] == 1'b0 && led[1]==1'b1)       //check outputs
		$display("PASSED! leds work at time: %0t.", $time);
	else 
		$error("FAILED! leds fail at time: %0t.", $time); 		
			
	s = 4'h0;                //setup inputs
	#10;                        //wait required time
	assert (seg == 7'b1000000)       //check outputs
		$display("PASSED! seven seg works at time: %0t.", $time);
	else 
		$error("FAILED! SEVEN seg fails at time: %0t.", $time); 

	s = 4'h1;                //setup inputs
	#10;                        //wait required time
	assert (seg == 7'b1111001)       //check outputs
		$display("PASSED! seven seg works at time: %0t.", $time);
	else 
		$error("FAILED! SEVEN seg fails at time: %0t.", $time); 
	s = 4'h2;                //setup inputs
	#10;                        //wait required time
	assert (seg == 7'b0100100)       //check outputs
		$display("PASSED! seven seg works at time: %0t.", $time);
	else 
		$error("FAILED! SEVEN seg fails at time: %0t.", $time); 

	s = 4'h3;                //setup inputs
        #10;                        //wait required time
	assert (seg == 7'b0110000)       //check outputs
		$display("PASSED! seven seg works at time: %0t.", $time);
	else 
		$error("FAILED! SEVEN seg fails at time: %0t.", $time); 
			
	s = 4'h4;                //setup inputs
	#10;                        //wait required time
	assert (seg == 7'b0011001)       //check outputs
		$display("PASSED! seven seg works at time: %0t.", $time);
	else 
		$error("FAILED! SEVEN seg fails at time: %0t.", $time); 

	s = 4'h5;                //setup inputs
	#10;                        //wait required time
	assert (seg == 7'b0010010)       //check outputs
		$display("PASSED! seven seg works at time: %0t.", $time);
	else 
		$error("FAILED! SEVEN seg fails at time: %0t.", $time); 		
	s = 4'h6;                //setup inputs
	#10;                        //wait required time
	assert (seg == 7'b0000010)       //check outputs
		$display("PASSED! seven seg works at time: %0t.", $time);
	else 
		$error("FAILED! SEVEN seg fails at time: %0t.", $time); 

	s = 4'h7;                //setup inputs
	#10;                        //wait required time
	assert (seg == 7'b1111000)       //check outputs
		$display("PASSED! seven seg works at time: %0t.", $time);
	else 
		$error("FAILED! SEVEN seg fails at time: %0t.", $time); 	
	s = 4'h8;                //setup inputs
	#10;                        //wait required time
	assert (seg == 7'b0000000)       //check outputs
		$display("PASSED! seven seg works at time: %0t.", $time);
	else 
		$error("FAILED! SEVEN seg fails at time: %0t.", $time); 

	s = 4'h9;                //setup inputs
	#10;                        //wait required time
	assert (seg == 7'b0011000)       //check outputs
		$display("PASSED! seven seg works at time: %0t.", $time);
	else 
		$error("FAILED! SEVEN seg fails at time: %0t.", $time); 
								s = 4'ha;                //setup inputs
	#10;                        //wait required time
	assert (seg == 7'b0001000)       //check outputs
		$display("PASSED! seven seg works at time: %0t.", $time);
	else 
		$error("FAILED! SEVEN seg fails at time: %0t.", $time); 

	s = 4'hb;                //setup inputs
	#10;                        //wait required time
	assert (seg == 7'b0000011)       //check outputs
		$display("PASSED! seven seg works at time: %0t.", $time);
	else 
		$error("FAILED! SEVEN seg fails at time: %0t.", $time); 
								s = 4'hc;                //setup inputs
	#10;                        //wait required time
	assert (seg == 7'b1000110)       //check outputs
		$display("PASSED! seven seg works at time: %0t.", $time);
	else 
		$error("FAILED! SEVEN seg fails at time: %0t.", $time); 

	s = 4'hd;                //setup inputs
	#10;                        //wait required time
	assert (seg == 7'b0100001)       //check outputs
		$display("PASSED! seven seg works at time: %0t.", $time);
	else 
		$error("FAILED! SEVEN seg fails at time: %0t.", $time); 
								s = 4'he;                //setup inputs
	#10;                        //wait required time
	assert (seg == 7'b0000110)       //check outputs
		$display("PASSED! seven seg works at time: %0t.", $time);
	else 
		$error("FAILED! SEVEN seg fails at time: %0t.", $time); 

	s = 4'hf;                //setup inputs
	#10;                        //wait required time
	assert (seg == 7'b0001110)       //check outputs
		$display("PASSED! seven seg works at time: %0t.", $time);
	else 
		$error("FAILED! SEVEN seg fails at time: %0t.", $time); 
			
	#208333334
	

	led_tracker = led[2];
	#208333334  //a little over the period of the flashing to ensure it toggles
	assert(led_tracker != led[2])

		$display("PASSED! light toggled at time: %0t.", $time);
	else 
		$error("FAILED! light not toggled at time: %0t.", $time); 
	led_tracker = led[2];
	#208333334  //a little over the period of the flashing to ensure it toggles
	assert(led_tracker != led[2])

		$display("PASSED! light toggled at time: %0t.", $time);
	else 
		$error("FAILED! light not toggled at time: %0t.", $time); 
	led_tracker = led[2];
	#208333334  //a little over the period of the flashing to ensure it toggles
	assert(led_tracker != led[2])

		$display("PASSED! light toggled at time: %0t.", $time);
	else 
		$error("FAILED! light not toggled at time: %0t.", $time); 
	led_tracker = led[2];
	#208333334  //a little over the period of the flashing to ensure it toggles
	assert(led_tracker != led[2])

		$display("PASSED! light toggled at time: %0t.", $time);
	else 
		$error("FAILED! light not toggled at time: %0t.", $time); 
	led_tracker = led[2];

   #100 $stop;

  end
endmodule