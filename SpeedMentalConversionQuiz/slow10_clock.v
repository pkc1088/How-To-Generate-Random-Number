module slow10_clock (
    input wire clk_in, 
    input wire reset,   
    output reg slow_clk 
);

    reg [3:0] counter;  

    always @(posedge clk_in or posedge reset) begin
        if (reset) begin
            counter <= 4'b0;  
            slow_clk <= 1'b0; 
        end else if (counter == 4'd9) begin
            counter <= 4'b0;   
            slow_clk <= ~slow_clk; 
        end else begin
            counter <= counter + 1;
        end
    end

endmodule
