module LCD_Display (
    input wire clk,
    input wire rst_n,
    input wire Din,  // 1-bit input signal
    output reg [7:0] LCD_Data,  // Data bus to the LCD
    output reg LCD_RS,          // Register select: 1 = Data, 0 = Command
    output reg LCD_RW,          // Read/Write: 0 = Write, 1 = Read
    output reg LCD_E            // Enable signal
);

    reg [3:0] state;
    reg [7:0] message [0:3];  // Array for storing message ("Fail" or "Pass")
    reg [2:0] index;          // Index to iterate through message characters

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state <= 0;
            index <= 0;
            LCD_E <= 0;
            LCD_RS <= 0;
            LCD_RW <= 0;
        end else begin
            case (state)
                0: begin  // Initialize LCD (clear display)
                    LCD_RS <= 0;
                    LCD_RW <= 0;
                    LCD_Data <= 8'b00000001;  // Clear Display command
                    LCD_E <= 1;
                    state <= 1;
                end
                1: begin  // Wait and disable E
                    LCD_E <= 0;
                    state <= 2;
                end
                2: begin  // Load message based on Din
                    if (Din) begin
                        message[0] <= "P";  // Pass
                        message[1] <= "a";
                        message[2] <= "s";
                        message[3] <= "s";
                    end else begin
                        message[0] <= "F";  // Fail
                        message[1] <= "a";
                        message[2] <= "i";
                        message[3] <= "l";
                    end
                    index <= 0;
                    state <= 3;
                end
                3: begin  // Send character to LCD
                    LCD_RS <= 1;
                    LCD_Data <= message[index];
                    LCD_E <= 1;
                    state <= 4;
                end
                4: begin  // Wait and disable E
                    LCD_E <= 0;
                    if (index < 3) begin
                        index <= index + 1;
                        state <= 3;
                    end else begin
                        state <= 0;  // Go back to initialization or idle
                    end
                end
            endcase
        end
    end
endmodule
