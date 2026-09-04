`timescale 1 ns/1 ns


module sevenseg_tb();

  logic   [3:0]   s; 
  logic   [6:0]   seg; 
    
  module dut (
        .s(s), .seg(seg)
    );

  //always begin
   //   clk = 0; #5;
   //   clk = 1; #5;
  //end

  initial begin
	s = 4'b0000;                //setup inputs
        #10;                        //wait required time
        assert (seg == 7'b0111111)       //check outputs
            $display("PASSED! seven seg works at time: %0t.", $time);
	else 
            $error("FAILED! SEVEN seg fails at time: %0t.", $time); 


	
			0: seg = 7'b0111111;
			1: seg = 7'b0000110;
			2: seg = 7'b1011011;
			3: seg = 7'b1001111;
			4: seg = 7'b1100110;
			5: seg = 7'b1101101;
			6: seg = 7'b1111101;
			7: seg = 7'b0000111;
			8: seg = 7'b1111111;
			9: seg = 7'b1100111;
			10:seg = 7'b1110111;
			11:seg = 7'b1111100;
			12:seg = 7'b0111001;
			13:seg = 7'b1011110;
			14:seg = 7'b1111001;
			15:seg = 7'b1110001;
			default: seg = 7'b0000000;

   #100 $stop;
  end
endmodule