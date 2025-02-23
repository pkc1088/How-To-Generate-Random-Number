module countdown_timer (
    input clk,
    input reset,
	 input stop_flag,
    output reg [3:0] output_count  
);

    reg [6:0] count = 7'b0001001;  

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            count <= 7'b0001001; //0  
        end else if (!stop_flag) begin
            if (count > 0) begin
                count <= count - 1;
            end else begin
                count <= 7'b0000000;
            end
        end
    end

    always @(*) begin
        output_count = count; 
    end

endmodule
