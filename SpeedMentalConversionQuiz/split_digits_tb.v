module split_digits_tb;

    reg [3:0] decimal_input;    // Test input
    wire [3:0] tens;            // Test output (tens digit)
    wire [3:0] ones;            // Test output (ones digit)

    // Instantiate the split_digits module
    split_digits uut (
        .decimal_input(decimal_input),
        .tens(tens),
        .ones(ones)
    );

    initial begin
        // Apply test cases
        decimal_input = 4'd0; #10;  // Input: 0
        $display("Input: %d, Tens: %d, Ones: %d", decimal_input, tens, ones);

        decimal_input = 4'd3; #10;  // Input: 3
        $display("Input: %d, Tens: %d, Ones: %d", decimal_input, tens, ones);

        decimal_input = 4'd10; #10; // Input: 10
        $display("Input: %d, Tens: %d, Ones: %d", decimal_input, tens, ones);

        decimal_input = 4'd15; #10; // Input: 15
        $display("Input: %d, Tens: %d, Ones: %d", decimal_input, tens, ones);

        $stop; // Stop simulation
    end

endmodule
