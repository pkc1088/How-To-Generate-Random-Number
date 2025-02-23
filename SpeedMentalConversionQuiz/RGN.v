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
// CREATED		"Sun Dec 01 14:44:04 2024"

module RGN(
	clk,
	start,
	stop,
	four,
	one,
	rand1,
	rand2,
	three,
	two
);


input wire	clk;
input wire	start;
input wire	stop;
output wire	[3:0] four;
output wire	[3:0] one;
output wire	[3:0] rand1;
output wire	[3:0] rand2;
output wire	[3:0] three;
output wire	[3:0] two;

wire	[3:0] SYNTHESIZED_WIRE_0;
wire	[3:0] SYNTHESIZED_WIRE_1;

assign	rand1 = SYNTHESIZED_WIRE_0;
assign	rand2 = SYNTHESIZED_WIRE_1;




Term_05	b2v_inst(
	.normal_clk(clk),
	.start_btn(start),
	.stop_btn(stop),
	.rand_num(SYNTHESIZED_WIRE_0),
	.secondrand(SYNTHESIZED_WIRE_1));


split_digits	b2v_inst5(
	.decimal_input(SYNTHESIZED_WIRE_0),
	.ones(two),
	.tens(one));


split_digits	b2v_inst6(
	.decimal_input(SYNTHESIZED_WIRE_1),
	.ones(four),
	.tens(three));


endmodule
