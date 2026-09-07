`timescale 1 ns/1 ns


module testbenchtop();

  logic   clk = 1'b0;
  logic reset;
  logic enable; 
  logic   fpga_blink_out; 
    
  heartbeat dut (
        .clk(clk), .reset(reset), .enable(enable), .fpga_blink_out(fpga_blink_out)
    );

  always begin
     clk = 0; #5;
     clk = 1; #5;
  end

  initial begin
	reset = 1'b0;       
	enable = 1'b0;
	@(posedge clk);
	#1
	assert((dut.counter == 3'd0) && (fpga_blink_out == 1'd0))
	 $display("PASSED! counter reset initially works at time: %0t.", $time);
	else 
            $error("FAILED! counter reset initially fails at time: %0t.", $time); 
	reset = 1'b1;       
	enable = 1'b0;

	repeat(3) @(posedge clk);
	#1
	
		assert((dut.counter == 3'd0) && (fpga_blink_out == 1'd0))
	 $display("PASSED! not enable successfully prevents increment at time: %0t.", $time);
	else 
            $error("FAILED! not enable failed to prevent increment at time: %0t.", $time); 
			
	reset = 1'b1;       
	enable = 1'b1;
	@(posedge clk);
	#1
			assert((dut.counter == 3'd1) && (fpga_blink_out == 1'd0))
	 $display("PASSED!  successfully incremented at time: %0t.", $time);
	else 
            $error("FAILED! not successfully incremented at time: %0t.", $time); 
				force dut.counter = 25'd9_999_998;
	@(posedge clk);
	release dut.counter;
	#1
		assert(fpga_blink_out == 1'd0)
	 $display("PASSED! light still off before half max at t: %0t.", $time);
	else 
            $error("FAILED! light still on before half max at t: %0t.", $time); 
				@(posedge clk);
	#1
		assert(fpga_blink_out == 1'd1)
	 $display("PASSED! light on at half max at t: %0t.", $time);
	else 
            $error("FAILED! light off at half max at t: %0t.", $time); 
	force dut.counter = 25'd19_999_998;
	@(posedge clk);
	release dut.counter;
	#1
		assert((dut.counter == 3'd0) && (fpga_blink_out == 1'd1))
	 $display("PASSED! counter wrapped at max and flashed light: %0t.", $time);
	else 
            $error("FAILED! counter did not wrap at max or flash light: %0t.", $time); 


   #100 $stop;
  end
endmodule