`timescale 1 ns/1 ns


module sevenseg_tb();

  logic   [3:0]   s; 
  logic   [6:0]   seg; 
    
  sevenseg dut (
        .s(s), .seg(seg)
    );

  //always begin
   //   clk = 0; #5;
   //   clk = 1; #5;
  //end

  initial begin
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
			

   #100 $stop;
  end
endmodule