module slow_clock (
    input wire clk_in, 
    input wire reset,   
    output reg slow_clk 
);

    reg [8:0] counter;  // Counter width should be sufficient to cover the maximum N value

    always @(posedge clk_in or posedge reset) begin
        if (reset) begin
            counter <= 9'b0;  
            slow_clk <= 1'b0; 
        end else if (counter == 9'd449) begin  // Adjust this value based on the desired toggle rate
            counter <= 9'b0;   
            slow_clk <= ~slow_clk; 
        end else begin
            counter <= counter + 1;
        end
    end

endmodule
