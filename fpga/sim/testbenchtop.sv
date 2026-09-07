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
        assert (seg == 7'b0111111)       //check outputs
            $display("PASSED! seven seg works at time: %0t.", $time);
	else 
            $error("FAILED! SEVEN seg fails at time: %0t.", $time); 

	s = 4'h1;                //setup inputs
        #10;                        //wait required time
        assert (seg == 7'b0000110)       //check outputs
            $display("PASSED! seven seg works at time: %0t.", $time);
	else 
            $error("FAILED! SEVEN seg fails at time: %0t.", $time); 
		s = 4'h2;                //setup inputs
        #10;                        //wait required time
        assert (seg == 7'b1011011)       //check outputs
            $display("PASSED! seven seg works at time: %0t.", $time);
	else 
            $error("FAILED! SEVEN seg fails at time: %0t.", $time); 

	s = 4'h3;                //setup inputs
        #10;                        //wait required time
        assert (seg == 7'b1001111)       //check outputs
            $display("PASSED! seven seg works at time: %0t.", $time);
	else 
            $error("FAILED! SEVEN seg fails at time: %0t.", $time); 
			
			s = 4'h4;                //setup inputs
        #10;                        //wait required time
        assert (seg == 7'b1100110)       //check outputs
            $display("PASSED! seven seg works at time: %0t.", $time);
	else 
            $error("FAILED! SEVEN seg fails at time: %0t.", $time); 

	s = 4'h5;                //setup inputs
        #10;                        //wait required time
        assert (seg == 7'b1101101)       //check outputs
            $display("PASSED! seven seg works at time: %0t.", $time);
	else 
            $error("FAILED! SEVEN seg fails at time: %0t.", $time); 		
					s = 4'h6;                //setup inputs
        #10;                        //wait required time
        assert (seg == 7'b1111101)       //check outputs
            $display("PASSED! seven seg works at time: %0t.", $time);
	else 
            $error("FAILED! SEVEN seg fails at time: %0t.", $time); 

	s = 4'h7;                //setup inputs
        #10;                        //wait required time
        assert (seg == 7'b0000111)       //check outputs
            $display("PASSED! seven seg works at time: %0t.", $time);
	else 
            $error("FAILED! SEVEN seg fails at time: %0t.", $time); 	
					s = 4'h8;                //setup inputs
        #10;                        //wait required time
        assert (seg == 7'b1111111)       //check outputs
            $display("PASSED! seven seg works at time: %0t.", $time);
	else 
            $error("FAILED! SEVEN seg fails at time: %0t.", $time); 

	s = 4'h9;                //setup inputs
        #10;                        //wait required time
        assert (seg == 7'b1100111)       //check outputs
            $display("PASSED! seven seg works at time: %0t.", $time);
	else 
            $error("FAILED! SEVEN seg fails at time: %0t.", $time); 
								s = 4'ha;                //setup inputs
        #10;                        //wait required time
        assert (seg == 7'b1110111)       //check outputs
            $display("PASSED! seven seg works at time: %0t.", $time);
	else 
            $error("FAILED! SEVEN seg fails at time: %0t.", $time); 

	s = 4'hb;                //setup inputs
        #10;                        //wait required time
        assert (seg == 7'b1111100)       //check outputs
            $display("PASSED! seven seg works at time: %0t.", $time);
	else 
            $error("FAILED! SEVEN seg fails at time: %0t.", $time); 
								s = 4'hc;                //setup inputs
        #10;                        //wait required time
        assert (seg == 7'b0111001)       //check outputs
            $display("PASSED! seven seg works at time: %0t.", $time);
	else 
            $error("FAILED! SEVEN seg fails at time: %0t.", $time); 

	s = 4'hd;                //setup inputs
        #10;                        //wait required time
        assert (seg == 7'b1011110)       //check outputs
            $display("PASSED! seven seg works at time: %0t.", $time);
	else 
            $error("FAILED! SEVEN seg fails at time: %0t.", $time); 
								s = 4'he;                //setup inputs
        #10;                        //wait required time
        assert (seg == 7'b1111001)       //check outputs
            $display("PASSED! seven seg works at time: %0t.", $time);
	else 
            $error("FAILED! SEVEN seg fails at time: %0t.", $time); 

	s = 4'hf;                //setup inputs
        #10;                        //wait required time
        assert (seg == 7'b1110001)       //check outputs
            $display("PASSED! seven seg works at time: %0t.", $time);
	else 
            $error("FAILED! SEVEN seg fails at time: %0t.", $time); 
	#208000001
	

	led_tracker = led[2];
	#208000001  //a little over the period of the flashing to ensure it toggles
	assert(led_tracker != led[2])

	 $display("PASSED! light toggled at time: %0t.", $time);
	else 
            $error("FAILED! light not toggled at time: %0t.", $time); 
		led_tracker = led[2];
			#208000001  //a little over the period of the flashing to ensure it toggles
	assert(led_tracker != led[2])

	 $display("PASSED! light toggled at time: %0t.", $time);
	else 
            $error("FAILED! light not toggled at time: %0t.", $time); 
		led_tracker = led[2];
			#208000001  //a little over the period of the flashing to ensure it toggles
	assert(led_tracker != led[2])

	 $display("PASSED! light toggled at time: %0t.", $time);
	else 
            $error("FAILED! light not toggled at time: %0t.", $time); 
		led_tracker = led[2];
			#208000001  //a little over the period of the flashing to ensure it toggles
	assert(led_tracker != led[2])

	 $display("PASSED! light toggled at time: %0t.", $time);
	else 
            $error("FAILED! light not toggled at time: %0t.", $time); 
		led_tracker = led[2];

   #100 $stop;

  end
endmodule