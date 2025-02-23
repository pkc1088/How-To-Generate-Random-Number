// Copyright (C) 2020  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and any partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details, at
// https://fpgasoftware.intel.com/eula.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"
// CREATED		"Sun Dec 01 14:44:54 2024"

module Term_05(
	start_btn,
	stop_btn,
	normal_clk,
	rand_num,
	secondrand
);


input wire	start_btn;
input wire	stop_btn;
input wire	normal_clk;
output wire	[3:0] rand_num;
output wire	[3:0] secondrand;

wire	[3:0] rand_out;
wire	[1:0] state;
wire	[1:0] SYNTHESIZED_WIRE_0;





StartStopController	b2v_inst(
	.clk(normal_clk),
	.start(start_btn),
	.stop(stop_btn),
	.state(SYNTHESIZED_WIRE_0));


LCG_3	b2v_inst1(
	.clk(normal_clk),
	.state(state),
	.random_num(rand_out));
	defparam	b2v_inst1.a = 4'b0101;
	defparam	b2v_inst1.c = 4'b0001;
	defparam	b2v_inst1.m = 4'b1111;


StartStopController	b2v_inst11(
	.clk(normal_clk),
	.start(start_btn),
	.stop(stop_btn),
	.state(state));


LCG_3_0	b2v_inst4(
	.clk(normal_clk),
	.state(SYNTHESIZED_WIRE_0),
	.random_num(secondrand));
	defparam	b2v_inst4.a = 4'b0101;
	defparam	b2v_inst4.c = 4'b0001;
	defparam	b2v_inst4.m = 4'b1111;

assign	rand_num = rand_out;

endmodule
