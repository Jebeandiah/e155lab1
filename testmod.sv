// Top-level module for Lattice iCE40UP5K LED blinker using internal HSOSC
module led_blink_top (
    output logic led // Output connected to an external or onboard LED
);

    // ------------------------------------------------------------------------
    // Internal Oscillator Primitive Instantiation
    // ------------------------------------------------------------------------
    logic clk_48mhz;

    // HSOSC Primitive Settings:
    // CLKHF_DIV = "0b00" -> 48 MHz (Default)
    //             "0b01" -> 24 MHz
    //             "0b10" -> 12 MHz
    //             "0b11" -> 6 MHz
    HSOSC #(
        .CLKHF_DIV("0b00")
    ) hsosc_inst (
        .CLKHFPU(1'b1),      // Power-up signal: 1 = Oscillator active, 0 = Power down
        .CLKHFEN(1'b1),      // Enable signal: 1 = Output enabled
        .CLKHF(clk_48mhz)    // 48 MHz output clock signal
    );

    // ------------------------------------------------------------------------
    // 2 Hz LED Blink Generator
    // ------------------------------------------------------------------------
    // Target Frequency: 2 Hz (Toggle rate: 4 Hz -> Every 12,000,000 clock cycles)
    // Formula: Threshold = (Clock Frequency / (2 * Target Frequency)) - 1
    // Threshold = (48,000,000 / 4) - 1 = 11,999,999
    
    localparam int unsigned CLK_FREQ   = 48_000_000;
    localparam int unsigned TOGGLE_CNT = (CLK_FREQ / 4) - 1;

    // 24 bits are required to store up to 11,999,999 (2^24 - 1 = 16,777,215)
    logic [23:0] counter = '0;

    always_ff @(posedge clk_48mhz) begin
        if (counter == TOGGLE_CNT) begin
            counter <= '0;
            led     <= ~led; // Toggle LED state
        end else begin
            counter <= counter + 1'b1;
        end
    end

endmodule