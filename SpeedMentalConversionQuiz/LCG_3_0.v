module LCG_3_0 (
    input clk,
	 input [1:0] state,
    //input [3:0] seed,
    output reg [3:0] random_num 
);

parameter a = 4'b0101; 
parameter c = 4'b0001;
parameter m = 4'b1111;
reg [3:0] current_num;

initial
	current_num <= 4'b0100;

always @(posedge clk) begin
	if (state==1) // start_btn pressed
		current_num <= (a * current_num + c) & m; 
	else if (state==0) // stop_btn pressed
		random_num <= current_num;	
end

endmodule