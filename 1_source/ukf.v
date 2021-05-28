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
// CREATED		"Sun Nov 11 14:33:30 2018"

module ukf(
	clock,
	reset,
	start,
	stop_pipeline,
	diag,
	lower1,
	lower2,
	lower3,
	lower4,
	matrix_size,
	parallel_units,
	lower1_available,
	lower2_available,
	data_in_1,
	data_in_2,
	data_in_3,
	data_in_4,
	data_in_diag,
	lower3_available,
	lower4_available,
	finish,
	diag_available,
	diag_out,
	lower1_out,
	lower2_out,
	lower3_out,
	lower4_out
);


input wire	clock;
input wire	reset;
input wire	start;
input wire	stop_pipeline;
input wire	[31:0] diag;
input wire	[31:0] lower1;
input wire	[31:0] lower2;
input wire	[31:0] lower3;
input wire	[31:0] lower4;
input wire	[5:0] matrix_size;
input wire	[5:0] parallel_units;
output wire	lower1_available;
output wire	lower2_available;
output wire	data_in_1;
output wire	data_in_2;
output wire	data_in_3;
output wire	data_in_4;
output wire	data_in_diag;
output wire	lower3_available;
output wire	lower4_available;
output wire	finish;
output wire	diag_available;
output wire	[31:0] diag_out;
output wire	[31:0] lower1_out;
output wire	[31:0] lower2_out;
output wire	[31:0] lower3_out;
output wire	[31:0] lower4_out;

wire	SYNTHESIZED_WIRE_60;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_61;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_62;
wire	[31:0] SYNTHESIZED_WIRE_63;
wire	[31:0] SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_64;
wire	[31:0] SYNTHESIZED_WIRE_10;
wire	[31:0] SYNTHESIZED_WIRE_11;
wire	[31:0] SYNTHESIZED_WIRE_12;
wire	[31:0] SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_15;
wire	SYNTHESIZED_WIRE_17;
wire	[31:0] SYNTHESIZED_WIRE_20;
wire	SYNTHESIZED_WIRE_22;
wire	SYNTHESIZED_WIRE_24;
wire	[31:0] SYNTHESIZED_WIRE_25;
wire	[31:0] SYNTHESIZED_WIRE_27;
wire	SYNTHESIZED_WIRE_28;
wire	SYNTHESIZED_WIRE_30;
wire	SYNTHESIZED_WIRE_32;
wire	SYNTHESIZED_WIRE_34;
wire	[5:0] SYNTHESIZED_WIRE_37;
wire	[5:0] SYNTHESIZED_WIRE_38;
wire	[31:0] SYNTHESIZED_WIRE_41;
wire	SYNTHESIZED_WIRE_42;
wire	[31:0] SYNTHESIZED_WIRE_43;
wire	SYNTHESIZED_WIRE_44;
wire	SYNTHESIZED_WIRE_45;
wire	SYNTHESIZED_WIRE_47;
wire	SYNTHESIZED_WIRE_49;
wire	[31:0] SYNTHESIZED_WIRE_52;
wire	SYNTHESIZED_WIRE_54;
wire	SYNTHESIZED_WIRE_56;
wire	[31:0] SYNTHESIZED_WIRE_59;

assign	data_in_1 = SYNTHESIZED_WIRE_1;
assign	data_in_2 = SYNTHESIZED_WIRE_47;
assign	data_in_3 = SYNTHESIZED_WIRE_54;
assign	data_in_4 = SYNTHESIZED_WIRE_15;
assign	data_in_diag = SYNTHESIZED_WIRE_24;
assign	diag_out = SYNTHESIZED_WIRE_63;
assign	lower1_out = SYNTHESIZED_WIRE_52;
assign	lower2_out = SYNTHESIZED_WIRE_59;
assign	lower3_out = SYNTHESIZED_WIRE_20;
assign	lower4_out = SYNTHESIZED_WIRE_27;




bu_ukf	b2v_inst(
	.first(SYNTHESIZED_WIRE_60),
	.data_in_flag(SYNTHESIZED_WIRE_1),
	.clock(SYNTHESIZED_WIRE_61),
	.clk_en(SYNTHESIZED_WIRE_3),
	.ack(SYNTHESIZED_WIRE_62),
	.data_in_low_a_sum(lower1),
	.data_in_low_b_div(SYNTHESIZED_WIRE_63),
	.data_in_nlow_b_mul(SYNTHESIZED_WIRE_6),
	.data_available_lower(SYNTHESIZED_WIRE_28),
	
	
	.lower_result(SYNTHESIZED_WIRE_52),
	.ndiag_result(SYNTHESIZED_WIRE_10)
	);


control_ndiag_in	b2v_inst1(
	.clock(SYNTHESIZED_WIRE_61),
	.areset(SYNTHESIZED_WIRE_62),
	.diag_done(SYNTHESIZED_WIRE_64),
	.bu1(SYNTHESIZED_WIRE_10),
	.bu2(SYNTHESIZED_WIRE_11),
	.bu3(SYNTHESIZED_WIRE_12),
	.bu4(SYNTHESIZED_WIRE_13),
	.ndiag_out(SYNTHESIZED_WIRE_25));
	defparam	b2v_inst1.sBU1 = 2'b00;
	defparam	b2v_inst1.sBU2 = 2'b01;
	defparam	b2v_inst1.sBU3 = 2'b10;
	defparam	b2v_inst1.sBU4 = 2'b11;


bu_ukf	b2v_inst10(
	.first(SYNTHESIZED_WIRE_60),
	.data_in_flag(SYNTHESIZED_WIRE_15),
	.clock(SYNTHESIZED_WIRE_61),
	.clk_en(SYNTHESIZED_WIRE_17),
	.ack(SYNTHESIZED_WIRE_62),
	.data_in_low_a_sum(lower4),
	.data_in_low_b_div(SYNTHESIZED_WIRE_63),
	.data_in_nlow_b_mul(SYNTHESIZED_WIRE_20),
	.data_available_lower(SYNTHESIZED_WIRE_34),
	
	
	.lower_result(SYNTHESIZED_WIRE_27),
	.ndiag_result(SYNTHESIZED_WIRE_13)
	);


bu_diag	b2v_inst11(
	.clock(SYNTHESIZED_WIRE_61),
	.clk_en(SYNTHESIZED_WIRE_22),
	.aclr(SYNTHESIZED_WIRE_62),
	.data_in_flag(SYNTHESIZED_WIRE_24),
	.data_a_sum(diag),
	.data_b_sum(SYNTHESIZED_WIRE_25),
	
	
	
	.data_available(diag_available),
	.result(SYNTHESIZED_WIRE_41));


delay	b2v_inst12(
	.clk(SYNTHESIZED_WIRE_61),
	
	.a(SYNTHESIZED_WIRE_27),
	
	.b(SYNTHESIZED_WIRE_43));
	defparam	b2v_inst12.delay_size = 1;


delay_1b	b2v_inst13(
	.a(SYNTHESIZED_WIRE_28),
	.clk(SYNTHESIZED_WIRE_61),
	.b(lower1_available));


delay_1b	b2v_inst14(
	.a(SYNTHESIZED_WIRE_30),
	.clk(SYNTHESIZED_WIRE_61),
	.b(lower2_available));


delay_1b	b2v_inst15(
	.a(SYNTHESIZED_WIRE_32),
	.clk(SYNTHESIZED_WIRE_61),
	.b(lower3_available));


delay_1b	b2v_inst16(
	.a(SYNTHESIZED_WIRE_34),
	.clk(SYNTHESIZED_WIRE_61),
	.b(lower4_available));


div_int	b2v_inst2(
	.denom(parallel_units),
	.numer(matrix_size),
	.quotient(SYNTHESIZED_WIRE_38),
	.remain(SYNTHESIZED_WIRE_37));


control_ukf	b2v_inst3(
	.clock(SYNTHESIZED_WIRE_61),
	.areset(reset),
	.start_begin(start),
	.stop_pipeline(stop_pipeline),
	.matrix_size(matrix_size),
	.remain(SYNTHESIZED_WIRE_37),
	.size(SYNTHESIZED_WIRE_38),
	.data_in_1(SYNTHESIZED_WIRE_1),
	.data_in_2(SYNTHESIZED_WIRE_47),
	.data_in_3(SYNTHESIZED_WIRE_54),
	.data_in_4(SYNTHESIZED_WIRE_15),
	.diag_done(SYNTHESIZED_WIRE_64),
	.clear(SYNTHESIZED_WIRE_62),
	.data_available_diag(SYNTHESIZED_WIRE_24),
	.clock_en_diag(SYNTHESIZED_WIRE_22),
	.clock_en1(SYNTHESIZED_WIRE_3),
	.clock_en2(SYNTHESIZED_WIRE_49),
	.clock_en3(SYNTHESIZED_WIRE_56),
	.clock_en4(SYNTHESIZED_WIRE_17),
	.first(SYNTHESIZED_WIRE_60),
	.row_start(SYNTHESIZED_WIRE_42),
	.finish(finish),
	.stop(SYNTHESIZED_WIRE_45));
	defparam	b2v_inst3.diag = 3'b010;
	defparam	b2v_inst3.diag_start = 3'b001;
	defparam	b2v_inst3.lower = 3'b100;
	defparam	b2v_inst3.lower_start = 3'b011;
	defparam	b2v_inst3.start = 3'b000;
	defparam	b2v_inst3.waits = 3'b101;


latch_a	b2v_inst4(
	.new(SYNTHESIZED_WIRE_64),
	.clock(SYNTHESIZED_WIRE_61),
	.a(SYNTHESIZED_WIRE_41),
	.b(SYNTHESIZED_WIRE_63));


mux_a	b2v_inst5(
	.first(SYNTHESIZED_WIRE_42),
	.a(SYNTHESIZED_WIRE_43),
	.c(SYNTHESIZED_WIRE_6));

assign	SYNTHESIZED_WIRE_61 = clock & SYNTHESIZED_WIRE_44;


stop_pipe	b2v_inst7(
	.clock(clock),
	.n_stop_request(SYNTHESIZED_WIRE_45),
	.stop(SYNTHESIZED_WIRE_44));


bu_ukf	b2v_inst8(
	.first(SYNTHESIZED_WIRE_60),
	.data_in_flag(SYNTHESIZED_WIRE_47),
	.clock(SYNTHESIZED_WIRE_61),
	.clk_en(SYNTHESIZED_WIRE_49),
	.ack(SYNTHESIZED_WIRE_62),
	.data_in_low_a_sum(lower2),
	.data_in_low_b_div(SYNTHESIZED_WIRE_63),
	.data_in_nlow_b_mul(SYNTHESIZED_WIRE_52),
	.data_available_lower(SYNTHESIZED_WIRE_30),
	
	
	.lower_result(SYNTHESIZED_WIRE_59),
	.ndiag_result(SYNTHESIZED_WIRE_11)
	);


bu_ukf	b2v_inst9(
	.first(SYNTHESIZED_WIRE_60),
	.data_in_flag(SYNTHESIZED_WIRE_54),
	.clock(SYNTHESIZED_WIRE_61),
	.clk_en(SYNTHESIZED_WIRE_56),
	.ack(SYNTHESIZED_WIRE_62),
	.data_in_low_a_sum(lower3),
	.data_in_low_b_div(SYNTHESIZED_WIRE_63),
	.data_in_nlow_b_mul(SYNTHESIZED_WIRE_59),
	.data_available_lower(SYNTHESIZED_WIRE_32),
	
	
	.lower_result(SYNTHESIZED_WIRE_20),
	.ndiag_result(SYNTHESIZED_WIRE_12)
	);


endmodule
