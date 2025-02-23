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
// CREATED		"Sun Dec 01 16:17:44 2024"

module Term_countdown(
	clk,
	rst,
	s_a1,
	s_b2,
	s_c3,
	s_d4,
	s_e5,
	s_f6,
	s_g7
);


input wire	clk;
input wire	rst;
output wire	s_a1;
output wire	s_b2;
output wire	s_c3;
output wire	s_d4;
output wire	s_e5;
output wire	s_f6;
output wire	s_g7;

wire	[3:0] count;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;

assign	SYNTHESIZED_WIRE_1 = 0;




countdown_timer	b2v_inst(
	.clk(SYNTHESIZED_WIRE_0),
	.reset(rst),
	.stop_flag(SYNTHESIZED_WIRE_1),
	.output_count(count));



week10_B2Seg	b2v_inst55(
	.b_in(count),
	.a(s_a1),
	.b(s_b2),
	.c(s_c3),
	.d(s_d4),
	.e(s_e5),
	.f(s_f6),
	.g(s_g7));


slow10_clock	b2v_inst6(
	.clk_in(clk),
	.reset(rst),
	.slow_clk(SYNTHESIZED_WIRE_0));


endmodule
