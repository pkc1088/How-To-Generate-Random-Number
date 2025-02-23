module split_digits (
    input [3:0] decimal_input,  // Input: 4-bit decimal number (0 to 15)
    output reg [3:0] tens,      // Output: Tens digit
    output reg [3:0] ones       // Output: Ones digit
);

    always @(*) begin
        // Split the input into tens and ones digits
        tens = decimal_input / 10;  // Integer division to get tens digit
        ones = decimal_input % 10;  // Modulus operation to get ones digit
    end

endmodule
