// Copyright (C) 2017  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"
// CREATED		"Fri Oct 19 19:57:27 2018"

module bu_ukf(
	data_in_flag,
	clock,
	clk_en,
	ack,
	first,
	data_in_low_a_sum,
	data_in_low_b_div,
	data_in_nlow_b_mul,
	data_available_lower,
	data_available_nlower,
	data_available_ndiag,
	lower_result,
	ndiag_result,
	nlower_result
);


input wire	data_in_flag;
input wire	clock;
input wire	clk_en;
input wire	ack;
input wire	first;
input wire	[31:0] data_in_low_a_sum;
input wire	[31:0] data_in_low_b_div;
input wire	[31:0] data_in_nlow_b_mul;
output wire	data_available_lower;
output wire	data_available_nlower;
output wire	data_available_ndiag;
output wire	[31:0] lower_result;
output wire	[31:0] ndiag_result;
output wire	[31:0] nlower_result;

wire	[31:0] delay1_nlower_out;
wire	[31:0] delay2_nlower_out;
wire	[31:0] Delay_div_in;
wire	[31:0] Delay_div_out;
wire	[31:0] delay_ndiag_out;
wire	SYNTHESIZED_WIRE_11;
wire	[31:0] SYNTHESIZED_WIRE_1;
wire	[31:0] SYNTHESIZED_WIRE_12;
wire	[31:0] SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_6;
wire	[31:0] SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;
wire	[31:0] SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_10;

assign	data_available_lower = SYNTHESIZED_WIRE_11;
assign	data_available_nlower = SYNTHESIZED_WIRE_6;
assign	data_available_ndiag = SYNTHESIZED_WIRE_8;
assign	lower_result = SYNTHESIZED_WIRE_12;
assign	ndiag_result = SYNTHESIZED_WIRE_9;
assign	nlower_result = SYNTHESIZED_WIRE_7;




bu_lower	b2v_inst(
	.clock(clock),
	.clk_en(clk_en),
	.aclr(ack),
	.data_in_flag(data_in_flag),
	.data_a_sum(data_in_low_a_sum),
	.data_b_sum(delay1_nlower_out),
	.datab_div(Delay_div_out),
	
	
	
	
	.data_available(SYNTHESIZED_WIRE_11),
	.result(SYNTHESIZED_WIRE_12));


mux_a	b2v_inst12(
	.first(first),
	.a(delay1_nlower_out)
	);


mux_a	b2v_inst13(
	.first(first),
	.a(delay2_nlower_out),
	.c(SYNTHESIZED_WIRE_1));


mux_a	b2v_inst14(
	.first(first),
	.a(delay_ndiag_out),
	.c(SYNTHESIZED_WIRE_4));


bu_nlower	b2v_inst2(
	.clock(clock),
	.clk_en(clk_en),
	.aclr(ack),
	.data_in_flag(SYNTHESIZED_WIRE_11),
	.data_b_accum(SYNTHESIZED_WIRE_1),
	.dataa_mul(SYNTHESIZED_WIRE_12),
	.datab_mul(data_in_nlow_b_mul),
	
	
	
	.data_available(SYNTHESIZED_WIRE_6),
	.result(SYNTHESIZED_WIRE_7));


bu_ndiag	b2v_inst3(
	.clock(clock),
	.clk_en(clk_en),
	.aclr(ack),
	.data_in_flag(SYNTHESIZED_WIRE_11),
	.data_b_accum(SYNTHESIZED_WIRE_4),
	.dataa_mul(SYNTHESIZED_WIRE_12),
	
	
	
	.data_available(SYNTHESIZED_WIRE_8),
	.result(SYNTHESIZED_WIRE_9));


delay	b2v_inst4(
	.clk(clock),
	.data_available_a(SYNTHESIZED_WIRE_6),
	.a(SYNTHESIZED_WIRE_7),
	.data_available_b(SYNTHESIZED_WIRE_10),
	.b(delay1_nlower_out));
	defparam	b2v_inst4.delay_size = 23;


delay	b2v_inst5(
	.clk(clock),
	.data_available_a(SYNTHESIZED_WIRE_8),
	.a(SYNTHESIZED_WIRE_9),
	
	.b(delay_ndiag_out));
	defparam	b2v_inst5.delay_size = 41;


delay	b2v_inst6(
	.clk(clock),
	
	.a(Delay_div_in),
	
	.b(Delay_div_out));
	defparam	b2v_inst6.delay_size = 7;


delay	b2v_inst8(
	.clk(clock),
	.data_available_a(SYNTHESIZED_WIRE_10),
	.a(delay1_nlower_out),
	
	.b(delay2_nlower_out));
	defparam	b2v_inst8.delay_size = 18;

assign	Delay_div_in = data_in_low_b_div;

endmodule
