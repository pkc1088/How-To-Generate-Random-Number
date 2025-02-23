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
// CREATED		"Wed Dec 04 21:20:53 2024"

module week10_prac_temp1(
	pin_name1,
	pin_name2,
	pin_name3,
	pin_name4,
	pin_name5,
	pin_name6,
	pin_name7,
	pin_name8,
	pin_name9,
	pin_name10,
	clk,
	start,
	stop,
	a,
	b,
	c,
	d,
	e,
	f,
	g,
	com1,
	com2,
	com3,
	com4,
	com5,
	com6,
	com7,
	com8,
	b3,
	b2,
	b1,
	b0,
	r4,
	r3,
	r2,
	r1,
	g3,
	g2,
	g1,
	g0,
	s_a1,
	s_b2,
	s_c3,
	s_d4,
	s_e5,
	s_f6,
	s_g7,
	LCD_RS,
	LCD_RW,
	LCD_E,
	LCD_Data,
	rand1,
	rand2
);


input wire	pin_name1;
input wire	pin_name2;
input wire	pin_name3;
input wire	pin_name4;
input wire	pin_name5;
input wire	pin_name6;
input wire	pin_name7;
input wire	pin_name8;
input wire	pin_name9;
input wire	pin_name10;
input wire	clk;
input wire	start;
input wire	stop;
output wire	a;
output wire	b;
output wire	c;
output wire	d;
output wire	e;
output wire	f;
output wire	g;
output wire	com1;
output wire	com2;
output wire	com3;
output wire	com4;
output wire	com5;
output wire	com6;
output wire	com7;
output wire	com8;
output wire	b3;
output wire	b2;
output wire	b1;
output wire	b0;
output wire	r4;
output wire	r3;
output wire	r2;
output wire	r1;
output wire	g3;
output wire	g2;
output wire	g1;
output wire	g0;
output wire	s_a1;
output wire	s_b2;
output wire	s_c3;
output wire	s_d4;
output wire	s_e5;
output wire	s_f6;
output wire	s_g7;
output wire	LCD_RS;
output wire	LCD_RW;
output wire	LCD_E;
output wire	[7:0] LCD_Data;
output wire	[3:0] rand1;
output wire	[3:0] rand2;

wire	[3:0] count;
wire	[3:0] four;
wire	[3:0] four4;
wire	[7:0] LCD_Data_ALTERA_SYNTHESIZED;
wire	one0;
wire	one1;
wire	one10;
wire	one11;
wire	one12;
wire	one13;
wire	one2;
wire	one3;
wire	[3:0] reg_line;
wire	three0;
wire	three1;
wire	three2;
wire	three3;
wire	three30;
wire	three31;
wire	three32;
wire	three33;
wire	two0;
wire	two1;
wire	two2;
wire	two20;
wire	two21;
wire	two22;
wire	two23;
wire	two3;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_71;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_72;
wire	SYNTHESIZED_WIRE_73;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_16;
wire	SYNTHESIZED_WIRE_18;
wire	SYNTHESIZED_WIRE_21;
wire	SYNTHESIZED_WIRE_22;
wire	SYNTHESIZED_WIRE_23;
wire	SYNTHESIZED_WIRE_24;
wire	SYNTHESIZED_WIRE_25;
wire	SYNTHESIZED_WIRE_74;
wire	[3:0] SYNTHESIZED_WIRE_29;
wire	[3:0] SYNTHESIZED_WIRE_30;
wire	[3:0] SYNTHESIZED_WIRE_32;
wire	SYNTHESIZED_WIRE_33;
wire	SYNTHESIZED_WIRE_34;
wire	SYNTHESIZED_WIRE_35;
wire	SYNTHESIZED_WIRE_36;
wire	SYNTHESIZED_WIRE_37;
wire	SYNTHESIZED_WIRE_38;
wire	SYNTHESIZED_WIRE_39;
wire	SYNTHESIZED_WIRE_40;
wire	SYNTHESIZED_WIRE_41;
wire	SYNTHESIZED_WIRE_42;
wire	SYNTHESIZED_WIRE_43;
wire	SYNTHESIZED_WIRE_44;
wire	SYNTHESIZED_WIRE_45;
wire	SYNTHESIZED_WIRE_46;
wire	SYNTHESIZED_WIRE_47;
wire	SYNTHESIZED_WIRE_48;
wire	SYNTHESIZED_WIRE_49;
wire	SYNTHESIZED_WIRE_75;
wire	SYNTHESIZED_WIRE_51;
wire	SYNTHESIZED_WIRE_52;
wire	SYNTHESIZED_WIRE_53;
wire	SYNTHESIZED_WIRE_54;
wire	SYNTHESIZED_WIRE_76;
wire	SYNTHESIZED_WIRE_77;

assign	com5 = 1;
assign	com6 = 1;
assign	com7 = 1;
assign	com8 = 1;
assign	b3 = 0;
assign	b2 = 0;
assign	b1 = 0;
assign	b0 = 0;
assign	r4 = SYNTHESIZED_WIRE_77;
assign	r3 = SYNTHESIZED_WIRE_77;
assign	r2 = SYNTHESIZED_WIRE_77;
assign	r1 = SYNTHESIZED_WIRE_77;
assign	g3 = SYNTHESIZED_WIRE_74;
assign	g2 = SYNTHESIZED_WIRE_74;
assign	g1 = SYNTHESIZED_WIRE_74;
assign	g0 = SYNTHESIZED_WIRE_74;
assign	SYNTHESIZED_WIRE_4 = 0;
wire	[3:0] GDFX_TEMP_SIGNAL_1;
wire	[3:0] GDFX_TEMP_SIGNAL_3;
wire	[3:0] GDFX_TEMP_SIGNAL_7;
wire	[3:0] GDFX_TEMP_SIGNAL_0;
wire	[3:0] GDFX_TEMP_SIGNAL_5;
wire	[3:0] GDFX_TEMP_SIGNAL_6;
wire	[3:0] GDFX_TEMP_SIGNAL_2;
wire	[3:0] GDFX_TEMP_SIGNAL_4;


assign	GDFX_TEMP_SIGNAL_1 = {two23,two22,two21,two20};
assign	GDFX_TEMP_SIGNAL_3 = {two23,two22,two21,two20};
assign	two23 = GDFX_TEMP_SIGNAL_7[3];
assign	two22 = GDFX_TEMP_SIGNAL_7[2];
assign	two21 = GDFX_TEMP_SIGNAL_7[1];
assign	two20 = GDFX_TEMP_SIGNAL_7[0];

assign	GDFX_TEMP_SIGNAL_0 = {three33,three32,three31,three30};
assign	three33 = GDFX_TEMP_SIGNAL_5[3];
assign	three32 = GDFX_TEMP_SIGNAL_5[2];
assign	three31 = GDFX_TEMP_SIGNAL_5[1];
assign	three30 = GDFX_TEMP_SIGNAL_5[0];

assign	GDFX_TEMP_SIGNAL_6 = {three33,three32,three31,three30};
assign	GDFX_TEMP_SIGNAL_2 = {one13,one12,one11,one10};
assign	one13 = GDFX_TEMP_SIGNAL_4[3];
assign	one12 = GDFX_TEMP_SIGNAL_4[2];
assign	one11 = GDFX_TEMP_SIGNAL_4[1];
assign	one10 = GDFX_TEMP_SIGNAL_4[0];



RGN	b2v_inst(
	.clk(clk),
	.start(SYNTHESIZED_WIRE_0),
	.stop(SYNTHESIZED_WIRE_1),
	.four(four),
	.one({one3,one2,one1,one0}),
	.rand1(rand1),
	.rand2(rand2),
	.three({three3,three2,three1,three0}),
	.two({two3,two2,two1,two0}));


assign	SYNTHESIZED_WIRE_41 = two23 ~^ two3;

assign	SYNTHESIZED_WIRE_40 = three30 ~^ three0;

assign	SYNTHESIZED_WIRE_39 = three31 ~^ three1;

assign	SYNTHESIZED_WIRE_38 = three32 ~^ three2;

assign	SYNTHESIZED_WIRE_37 = three33 ~^ three3;

assign	SYNTHESIZED_WIRE_36 = four4[0] ~^ four[0];

assign	SYNTHESIZED_WIRE_35 = four4[1] ~^ four[1];

assign	SYNTHESIZED_WIRE_34 = four4[2] ~^ four[2];

assign	SYNTHESIZED_WIRE_33 = four4[3] ~^ four[3];

assign	SYNTHESIZED_WIRE_3 = pin_name1 | pin_name3 | pin_name2 | pin_name4 | pin_name6 | pin_name5 | pin_name7 | pin_name8;

assign	SYNTHESIZED_WIRE_0 =  ~start;

assign	SYNTHESIZED_WIRE_2 = pin_name10 | pin_name9;

assign	SYNTHESIZED_WIRE_49 = SYNTHESIZED_WIRE_2 | SYNTHESIZED_WIRE_3;

assign	SYNTHESIZED_WIRE_75 =  ~SYNTHESIZED_WIRE_4;


countdown_timer	b2v_inst23(
	.clk(SYNTHESIZED_WIRE_5),
	.reset(stop),
	.stop_flag(SYNTHESIZED_WIRE_71),
	.output_count(count));

assign	SYNTHESIZED_WIRE_1 =  ~stop;

assign	SYNTHESIZED_WIRE_8 = count[0] | count[2] | count[3] | count[1];

assign	SYNTHESIZED_WIRE_74 = SYNTHESIZED_WIRE_71 & SYNTHESIZED_WIRE_8;


slow_clock9	b2v_inst27(
	.clk_in(clk),
	.reset(stop),
	.slow_clk(SYNTHESIZED_WIRE_5));

assign	SYNTHESIZED_WIRE_13 =  ~SYNTHESIZED_WIRE_72;

assign	SYNTHESIZED_WIRE_14 =  ~SYNTHESIZED_WIRE_73;

assign	SYNTHESIZED_WIRE_48 = one10 ~^ one0;

assign	SYNTHESIZED_WIRE_16 =  ~SYNTHESIZED_WIRE_73;

assign	SYNTHESIZED_WIRE_18 =  ~SYNTHESIZED_WIRE_72;

assign	SYNTHESIZED_WIRE_21 = SYNTHESIZED_WIRE_13 & SYNTHESIZED_WIRE_14;

assign	SYNTHESIZED_WIRE_22 = SYNTHESIZED_WIRE_72 & SYNTHESIZED_WIRE_16;

assign	SYNTHESIZED_WIRE_23 = SYNTHESIZED_WIRE_73 & SYNTHESIZED_WIRE_18;

assign	SYNTHESIZED_WIRE_24 = SYNTHESIZED_WIRE_73 & SYNTHESIZED_WIRE_72;

assign	com1 =  ~SYNTHESIZED_WIRE_21;

assign	com2 =  ~SYNTHESIZED_WIRE_22;

assign	com3 =  ~SYNTHESIZED_WIRE_23;

assign	com4 =  ~SYNTHESIZED_WIRE_24;

assign	SYNTHESIZED_WIRE_47 = one11 ~^ one1;


LCD_Display	b2v_inst40(
	.clk(clk),
	.rst_n(SYNTHESIZED_WIRE_25),
	.Din(SYNTHESIZED_WIRE_74),
	.LCD_RS(LCD_RS),
	.LCD_RW(LCD_RW),
	.LCD_E(LCD_E),
	.LCD_Data(LCD_Data_ALTERA_SYNTHESIZED));


assign	SYNTHESIZED_WIRE_25 =  ~stop;

assign	SYNTHESIZED_WIRE_46 = one12 ~^ one2;


week9_mx4bit2x1	b2v_inst51(
	.ce(SYNTHESIZED_WIRE_72),
	.s0(four4),
	.s1(GDFX_TEMP_SIGNAL_0),
	.m_out(SYNTHESIZED_WIRE_29));


week9_mx4bit2x1	b2v_inst52(
	.ce(SYNTHESIZED_WIRE_73),
	.s0(SYNTHESIZED_WIRE_29),
	.s1(SYNTHESIZED_WIRE_30),
	.m_out(SYNTHESIZED_WIRE_32));


week9_mx4bit2x1	b2v_inst53(
	.ce(SYNTHESIZED_WIRE_72),
	.s0(GDFX_TEMP_SIGNAL_1),
	.s1(GDFX_TEMP_SIGNAL_2),
	.m_out(SYNTHESIZED_WIRE_30));


week10_B2Seg	b2v_inst54(
	.b_in(SYNTHESIZED_WIRE_32),
	.a(a),
	.b(b),
	.c(c),
	.d(d),
	.e(e),
	.f(f),
	.g(g));

assign	SYNTHESIZED_WIRE_51 = SYNTHESIZED_WIRE_33 & SYNTHESIZED_WIRE_34 & SYNTHESIZED_WIRE_35 & SYNTHESIZED_WIRE_36;

assign	SYNTHESIZED_WIRE_52 = SYNTHESIZED_WIRE_37 & SYNTHESIZED_WIRE_38 & SYNTHESIZED_WIRE_39 & SYNTHESIZED_WIRE_40;

assign	SYNTHESIZED_WIRE_53 = SYNTHESIZED_WIRE_41 & SYNTHESIZED_WIRE_42 & SYNTHESIZED_WIRE_43 & SYNTHESIZED_WIRE_44;

assign	SYNTHESIZED_WIRE_54 = SYNTHESIZED_WIRE_45 & SYNTHESIZED_WIRE_46 & SYNTHESIZED_WIRE_47 & SYNTHESIZED_WIRE_48;


week10_B2Seg	b2v_inst59(
	.b_in(count),
	.a(s_a1),
	.b(s_b2),
	.c(s_c3),
	.d(s_d4),
	.e(s_e5),
	.f(s_f6),
	.g(s_g7));

assign	SYNTHESIZED_WIRE_45 = one13 ~^ one3;


week10_Trigger	b2v_inst63(
	.Din(SYNTHESIZED_WIRE_49),
	.CLK(clk),
	.rst_n(SYNTHESIZED_WIRE_75),
	.Dout(SYNTHESIZED_WIRE_76));

assign	SYNTHESIZED_WIRE_71 = SYNTHESIZED_WIRE_51 & SYNTHESIZED_WIRE_52 & SYNTHESIZED_WIRE_53 & SYNTHESIZED_WIRE_54;

assign	SYNTHESIZED_WIRE_44 = two0 ~^ two20;


assign	SYNTHESIZED_WIRE_77 =  ~SYNTHESIZED_WIRE_74;


week10_count4	b2v_inst74(
	.clk(clk),
	.rst_n(SYNTHESIZED_WIRE_75),
	.Q0(SYNTHESIZED_WIRE_72),
	.Q1(SYNTHESIZED_WIRE_73));


week10_D2B	b2v_inst75(
	.d0(pin_name1),
	.d1(pin_name2),
	.d2(pin_name3),
	.d3(pin_name4),
	.d4(pin_name5),
	.d5(pin_name6),
	.d6(pin_name7),
	.d7(pin_name8),
	.d8(pin_name9),
	.d9(pin_name10),
	.b3(reg_line[3]),
	.b2(reg_line[2]),
	.b1(reg_line[1]),
	.b0(reg_line[0]));


week10_4BitRegCE	b2v_inst76(
	.ce(SYNTHESIZED_WIRE_76),
	.clk(clk),
	.rst_n(SYNTHESIZED_WIRE_75),
	.din(GDFX_TEMP_SIGNAL_3),
	.out(GDFX_TEMP_SIGNAL_4));


week10_4BitRegCE	b2v_inst77(
	.ce(SYNTHESIZED_WIRE_76),
	.clk(clk),
	.rst_n(SYNTHESIZED_WIRE_75),
	.din(four4),
	.out(GDFX_TEMP_SIGNAL_5));


week10_4BitRegCE	b2v_inst78(
	.ce(SYNTHESIZED_WIRE_76),
	.clk(clk),
	.rst_n(SYNTHESIZED_WIRE_75),
	.din(GDFX_TEMP_SIGNAL_6),
	.out(GDFX_TEMP_SIGNAL_7));


week10_4BitRegCE	b2v_inst79(
	.ce(SYNTHESIZED_WIRE_76),
	.clk(clk),
	.rst_n(SYNTHESIZED_WIRE_75),
	.din(reg_line),
	.out(four4));

assign	SYNTHESIZED_WIRE_43 = two1 ~^ two21;

assign	SYNTHESIZED_WIRE_42 = two2 ~^ two22;

assign	LCD_Data = LCD_Data_ALTERA_SYNTHESIZED;

endmodule
