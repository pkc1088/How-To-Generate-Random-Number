module slow50_clock (
    input wire clk_in, 
    input wire reset,   
    output reg slow_clk 
);

    reg [3:0] counter;  // Counter width should be sufficient to cover the maximum N value

    always @(posedge clk_in or posedge reset) begin
        if (reset) begin
            counter <= 4'b0;  
            slow_clk <= 1'b0; 
        end else if (counter == 4'd4) begin  // Adjust this value based on the desired toggle rate
            counter <= 4'b0;   
            slow_clk <= ~slow_clk; 
        end else begin
            counter <= counter + 1;
        end
    end

endmodule
