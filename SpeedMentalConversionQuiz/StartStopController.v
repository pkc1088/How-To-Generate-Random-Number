module StartStopController (
    input clk,
	 input start,
    input stop,
    output reg [1:0] state
);

    initial begin
        state <= 1;
    end

    always @(posedge clk) begin
			if(!start)
				state <= 1;
        else if (!stop)
            state <= 0;
    end

endmodule

