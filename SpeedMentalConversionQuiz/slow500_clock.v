module slow500_clock (
    input wire clk_in, 
    input wire reset,   
    output reg slow_clk 
);

    reg [0:0] counter;  // 1-bit counter is sufficient since N = 1

    always @(posedge clk_in or posedge reset) begin
        if (reset) begin
            counter <= 1'b0;  
            slow_clk <= 1'b0; 
        end else begin
            slow_clk <= ~slow_clk; // Toggle every cycle
        end
    end

endmodule
