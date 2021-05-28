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

// VENDOR "Altera"
// PROGRAM "Quartus Prime"
// VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

// DATE "10/08/2018 16:32:04"

// 
// Device: Altera 5CGXFC7C7F23C8 Package FBGA484
// 

// 
// This greybox netlist file is for third party Synthesis Tools
// for timing and resource estimation only.
// 


module square (
	radical,
	q,
	remainder)/* synthesis synthesis_greybox=0 */;
input 	[31:0] radical;
output 	[15:0] q;
output 	[16:0] remainder;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \ALTSQRT_component|subtractors[15]|auto_generated|op_1~1_sumout ;
wire \ALTSQRT_component|subtractors[14]|auto_generated|op_1~1_sumout ;
wire \ALTSQRT_component|subtractors[13]|auto_generated|op_1~1_sumout ;
wire \ALTSQRT_component|subtractors[12]|auto_generated|op_1~1_sumout ;
wire \ALTSQRT_component|subtractors[11]|auto_generated|op_1~1_sumout ;
wire \ALTSQRT_component|subtractors[10]|auto_generated|op_1~1_sumout ;
wire \ALTSQRT_component|subtractors[9]|auto_generated|op_1~1_sumout ;
wire \ALTSQRT_component|subtractors[8]|auto_generated|op_1~1_sumout ;
wire \ALTSQRT_component|subtractors[7]|auto_generated|op_1~1_sumout ;
wire \ALTSQRT_component|subtractors[6]|auto_generated|op_1~1_sumout ;
wire \ALTSQRT_component|subtractors[5]|auto_generated|op_1~1_sumout ;
wire \ALTSQRT_component|subtractors[4]|auto_generated|op_1~1_sumout ;
wire \ALTSQRT_component|subtractors[3]|auto_generated|op_1~1_sumout ;
wire \ALTSQRT_component|subtractors[2]|auto_generated|op_1~1_sumout ;
wire \ALTSQRT_component|subtractors[1]|auto_generated|op_1~0_combout ;
wire \ALTSQRT_component|subtractors[0]|auto_generated|op_1~0_combout ;
wire \ALTSQRT_component|_~0_combout ;
wire \ALTSQRT_component|_~1_combout ;
wire \ALTSQRT_component|_~2_combout ;
wire \ALTSQRT_component|_~3_combout ;
wire \ALTSQRT_component|_~4_combout ;
wire \ALTSQRT_component|_~6_combout ;
wire \ALTSQRT_component|_~8_combout ;
wire \ALTSQRT_component|_~11_combout ;
wire \ALTSQRT_component|_~14_combout ;
wire \ALTSQRT_component|_~18_combout ;
wire \ALTSQRT_component|_~22_combout ;
wire \ALTSQRT_component|_~27_combout ;
wire \ALTSQRT_component|_~32_combout ;
wire \ALTSQRT_component|_~38_combout ;
wire \ALTSQRT_component|_~44_combout ;
wire \ALTSQRT_component|_~51_combout ;
wire \ALTSQRT_component|_~58_combout ;
wire \radical[30]~input_o ;
wire \radical[28]~input_o ;
wire \radical[29]~input_o ;
wire \radical[31]~input_o ;
wire \radical[0]~input_o ;
wire \radical[1]~input_o ;
wire \radical[2]~input_o ;
wire \radical[3]~input_o ;
wire \radical[4]~input_o ;
wire \radical[5]~input_o ;
wire \radical[6]~input_o ;
wire \radical[7]~input_o ;
wire \radical[8]~input_o ;
wire \radical[9]~input_o ;
wire \radical[10]~input_o ;
wire \radical[11]~input_o ;
wire \radical[12]~input_o ;
wire \radical[13]~input_o ;
wire \radical[14]~input_o ;
wire \radical[15]~input_o ;
wire \radical[16]~input_o ;
wire \radical[17]~input_o ;
wire \radical[18]~input_o ;
wire \radical[19]~input_o ;
wire \radical[20]~input_o ;
wire \radical[21]~input_o ;
wire \radical[22]~input_o ;
wire \radical[23]~input_o ;
wire \radical[24]~input_o ;
wire \radical[25]~input_o ;
wire \radical[26]~input_o ;
wire \radical[27]~input_o ;


square_altsqrt_1 ALTSQRT_component(
	.op_1(\ALTSQRT_component|subtractors[15]|auto_generated|op_1~1_sumout ),
	.op_11(\ALTSQRT_component|subtractors[14]|auto_generated|op_1~1_sumout ),
	.op_12(\ALTSQRT_component|subtractors[13]|auto_generated|op_1~1_sumout ),
	.op_13(\ALTSQRT_component|subtractors[12]|auto_generated|op_1~1_sumout ),
	.op_14(\ALTSQRT_component|subtractors[11]|auto_generated|op_1~1_sumout ),
	.op_15(\ALTSQRT_component|subtractors[10]|auto_generated|op_1~1_sumout ),
	.op_16(\ALTSQRT_component|subtractors[9]|auto_generated|op_1~1_sumout ),
	.op_17(\ALTSQRT_component|subtractors[8]|auto_generated|op_1~1_sumout ),
	.op_18(\ALTSQRT_component|subtractors[7]|auto_generated|op_1~1_sumout ),
	.op_19(\ALTSQRT_component|subtractors[6]|auto_generated|op_1~1_sumout ),
	.op_110(\ALTSQRT_component|subtractors[5]|auto_generated|op_1~1_sumout ),
	.op_111(\ALTSQRT_component|subtractors[4]|auto_generated|op_1~1_sumout ),
	.op_112(\ALTSQRT_component|subtractors[3]|auto_generated|op_1~1_sumout ),
	.op_113(\ALTSQRT_component|subtractors[2]|auto_generated|op_1~1_sumout ),
	.op_114(\ALTSQRT_component|subtractors[1]|auto_generated|op_1~0_combout ),
	.op_115(\ALTSQRT_component|subtractors[0]|auto_generated|op_1~0_combout ),
	._(\ALTSQRT_component|_~0_combout ),
	._1(\ALTSQRT_component|_~1_combout ),
	._2(\ALTSQRT_component|_~2_combout ),
	._3(\ALTSQRT_component|_~3_combout ),
	._4(\ALTSQRT_component|_~4_combout ),
	._5(\ALTSQRT_component|_~6_combout ),
	._6(\ALTSQRT_component|_~8_combout ),
	._7(\ALTSQRT_component|_~11_combout ),
	._8(\ALTSQRT_component|_~14_combout ),
	._9(\ALTSQRT_component|_~18_combout ),
	._10(\ALTSQRT_component|_~22_combout ),
	._11(\ALTSQRT_component|_~27_combout ),
	._12(\ALTSQRT_component|_~32_combout ),
	._13(\ALTSQRT_component|_~38_combout ),
	._14(\ALTSQRT_component|_~44_combout ),
	._15(\ALTSQRT_component|_~51_combout ),
	._16(\ALTSQRT_component|_~58_combout ),
	.radical_30(\radical[30]~input_o ),
	.radical_28(\radical[28]~input_o ),
	.radical_29(\radical[29]~input_o ),
	.radical_31(\radical[31]~input_o ),
	.radical_0(\radical[0]~input_o ),
	.radical_1(\radical[1]~input_o ),
	.radical_2(\radical[2]~input_o ),
	.radical_3(\radical[3]~input_o ),
	.radical_4(\radical[4]~input_o ),
	.radical_5(\radical[5]~input_o ),
	.radical_6(\radical[6]~input_o ),
	.radical_7(\radical[7]~input_o ),
	.radical_8(\radical[8]~input_o ),
	.radical_9(\radical[9]~input_o ),
	.radical_10(\radical[10]~input_o ),
	.radical_11(\radical[11]~input_o ),
	.radical_12(\radical[12]~input_o ),
	.radical_13(\radical[13]~input_o ),
	.radical_14(\radical[14]~input_o ),
	.radical_15(\radical[15]~input_o ),
	.radical_16(\radical[16]~input_o ),
	.radical_17(\radical[17]~input_o ),
	.radical_18(\radical[18]~input_o ),
	.radical_19(\radical[19]~input_o ),
	.radical_20(\radical[20]~input_o ),
	.radical_21(\radical[21]~input_o ),
	.radical_22(\radical[22]~input_o ),
	.radical_23(\radical[23]~input_o ),
	.radical_24(\radical[24]~input_o ),
	.radical_25(\radical[25]~input_o ),
	.radical_26(\radical[26]~input_o ),
	.radical_27(\radical[27]~input_o ));

assign \radical[30]~input_o  = radical[30];

assign \radical[28]~input_o  = radical[28];

assign \radical[29]~input_o  = radical[29];

assign \radical[31]~input_o  = radical[31];

assign \radical[0]~input_o  = radical[0];

assign \radical[1]~input_o  = radical[1];

assign \radical[2]~input_o  = radical[2];

assign \radical[3]~input_o  = radical[3];

assign \radical[4]~input_o  = radical[4];

assign \radical[5]~input_o  = radical[5];

assign \radical[6]~input_o  = radical[6];

assign \radical[7]~input_o  = radical[7];

assign \radical[8]~input_o  = radical[8];

assign \radical[9]~input_o  = radical[9];

assign \radical[10]~input_o  = radical[10];

assign \radical[11]~input_o  = radical[11];

assign \radical[12]~input_o  = radical[12];

assign \radical[13]~input_o  = radical[13];

assign \radical[14]~input_o  = radical[14];

assign \radical[15]~input_o  = radical[15];

assign \radical[16]~input_o  = radical[16];

assign \radical[17]~input_o  = radical[17];

assign \radical[18]~input_o  = radical[18];

assign \radical[19]~input_o  = radical[19];

assign \radical[20]~input_o  = radical[20];

assign \radical[21]~input_o  = radical[21];

assign \radical[22]~input_o  = radical[22];

assign \radical[23]~input_o  = radical[23];

assign \radical[24]~input_o  = radical[24];

assign \radical[25]~input_o  = radical[25];

assign \radical[26]~input_o  = radical[26];

assign \radical[27]~input_o  = radical[27];

assign q[0] = ~ \ALTSQRT_component|subtractors[15]|auto_generated|op_1~1_sumout ;

assign q[1] = ~ \ALTSQRT_component|subtractors[14]|auto_generated|op_1~1_sumout ;

assign q[2] = ~ \ALTSQRT_component|subtractors[13]|auto_generated|op_1~1_sumout ;

assign q[3] = ~ \ALTSQRT_component|subtractors[12]|auto_generated|op_1~1_sumout ;

assign q[4] = ~ \ALTSQRT_component|subtractors[11]|auto_generated|op_1~1_sumout ;

assign q[5] = ~ \ALTSQRT_component|subtractors[10]|auto_generated|op_1~1_sumout ;

assign q[6] = ~ \ALTSQRT_component|subtractors[9]|auto_generated|op_1~1_sumout ;

assign q[7] = ~ \ALTSQRT_component|subtractors[8]|auto_generated|op_1~1_sumout ;

assign q[8] = ~ \ALTSQRT_component|subtractors[7]|auto_generated|op_1~1_sumout ;

assign q[9] = ~ \ALTSQRT_component|subtractors[6]|auto_generated|op_1~1_sumout ;

assign q[10] = ~ \ALTSQRT_component|subtractors[5]|auto_generated|op_1~1_sumout ;

assign q[11] = ~ \ALTSQRT_component|subtractors[4]|auto_generated|op_1~1_sumout ;

assign q[12] = ~ \ALTSQRT_component|subtractors[3]|auto_generated|op_1~1_sumout ;

assign q[13] = ~ \ALTSQRT_component|subtractors[2]|auto_generated|op_1~1_sumout ;

assign q[14] = \ALTSQRT_component|subtractors[1]|auto_generated|op_1~0_combout ;

assign q[15] = \ALTSQRT_component|subtractors[0]|auto_generated|op_1~0_combout ;

assign remainder[0] = ~ \ALTSQRT_component|_~0_combout ;

assign remainder[1] = \ALTSQRT_component|_~1_combout ;

assign remainder[2] = \ALTSQRT_component|_~2_combout ;

assign remainder[3] = \ALTSQRT_component|_~3_combout ;

assign remainder[4] = \ALTSQRT_component|_~4_combout ;

assign remainder[5] = \ALTSQRT_component|_~6_combout ;

assign remainder[6] = \ALTSQRT_component|_~8_combout ;

assign remainder[7] = \ALTSQRT_component|_~11_combout ;

assign remainder[8] = \ALTSQRT_component|_~14_combout ;

assign remainder[9] = \ALTSQRT_component|_~18_combout ;

assign remainder[10] = \ALTSQRT_component|_~22_combout ;

assign remainder[11] = \ALTSQRT_component|_~27_combout ;

assign remainder[12] = \ALTSQRT_component|_~32_combout ;

assign remainder[13] = \ALTSQRT_component|_~38_combout ;

assign remainder[14] = \ALTSQRT_component|_~44_combout ;

assign remainder[15] = \ALTSQRT_component|_~51_combout ;

assign remainder[16] = \ALTSQRT_component|_~58_combout ;

endmodule

module square_altsqrt_1 (
	op_1,
	op_11,
	op_12,
	op_13,
	op_14,
	op_15,
	op_16,
	op_17,
	op_18,
	op_19,
	op_110,
	op_111,
	op_112,
	op_113,
	op_114,
	op_115,
	_,
	_1,
	_2,
	_3,
	_4,
	_5,
	_6,
	_7,
	_8,
	_9,
	_10,
	_11,
	_12,
	_13,
	_14,
	_15,
	_16,
	radical_30,
	radical_28,
	radical_29,
	radical_31,
	radical_0,
	radical_1,
	radical_2,
	radical_3,
	radical_4,
	radical_5,
	radical_6,
	radical_7,
	radical_8,
	radical_9,
	radical_10,
	radical_11,
	radical_12,
	radical_13,
	radical_14,
	radical_15,
	radical_16,
	radical_17,
	radical_18,
	radical_19,
	radical_20,
	radical_21,
	radical_22,
	radical_23,
	radical_24,
	radical_25,
	radical_26,
	radical_27)/* synthesis synthesis_greybox=0 */;
output 	op_1;
output 	op_11;
output 	op_12;
output 	op_13;
output 	op_14;
output 	op_15;
output 	op_16;
output 	op_17;
output 	op_18;
output 	op_19;
output 	op_110;
output 	op_111;
output 	op_112;
output 	op_113;
output 	op_114;
output 	op_115;
output 	_;
output 	_1;
output 	_2;
output 	_3;
output 	_4;
output 	_5;
output 	_6;
output 	_7;
output 	_8;
output 	_9;
output 	_10;
output 	_11;
output 	_12;
output 	_13;
output 	_14;
output 	_15;
output 	_16;
input 	radical_30;
input 	radical_28;
input 	radical_29;
input 	radical_31;
input 	radical_0;
input 	radical_1;
input 	radical_2;
input 	radical_3;
input 	radical_4;
input 	radical_5;
input 	radical_6;
input 	radical_7;
input 	radical_8;
input 	radical_9;
input 	radical_10;
input 	radical_11;
input 	radical_12;
input 	radical_13;
input 	radical_14;
input 	radical_15;
input 	radical_16;
input 	radical_17;
input 	radical_18;
input 	radical_19;
input 	radical_20;
input 	radical_21;
input 	radical_22;
input 	radical_23;
input 	radical_24;
input 	radical_25;
input 	radical_26;
input 	radical_27;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \subtractors[15]|auto_generated|op_1~5_sumout ;
wire \subtractors[15]|auto_generated|op_1~9_sumout ;
wire \subtractors[14]|auto_generated|op_1~5_sumout ;
wire \subtractors[15]|auto_generated|op_1~13_sumout ;
wire \subtractors[14]|auto_generated|op_1~9_sumout ;
wire \subtractors[15]|auto_generated|op_1~17_sumout ;
wire \subtractors[13]|auto_generated|op_1~5_sumout ;
wire \subtractors[14]|auto_generated|op_1~13_sumout ;
wire \subtractors[15]|auto_generated|op_1~21_sumout ;
wire \subtractors[13]|auto_generated|op_1~9_sumout ;
wire \subtractors[14]|auto_generated|op_1~17_sumout ;
wire \subtractors[15]|auto_generated|op_1~25_sumout ;
wire \subtractors[12]|auto_generated|op_1~5_sumout ;
wire \subtractors[13]|auto_generated|op_1~13_sumout ;
wire \subtractors[14]|auto_generated|op_1~21_sumout ;
wire \subtractors[15]|auto_generated|op_1~29_sumout ;
wire \subtractors[12]|auto_generated|op_1~9_sumout ;
wire \subtractors[13]|auto_generated|op_1~17_sumout ;
wire \subtractors[14]|auto_generated|op_1~25_sumout ;
wire \subtractors[15]|auto_generated|op_1~33_sumout ;
wire \subtractors[11]|auto_generated|op_1~5_sumout ;
wire \subtractors[12]|auto_generated|op_1~13_sumout ;
wire \subtractors[13]|auto_generated|op_1~21_sumout ;
wire \subtractors[14]|auto_generated|op_1~29_sumout ;
wire \subtractors[15]|auto_generated|op_1~37_sumout ;
wire \subtractors[11]|auto_generated|op_1~9_sumout ;
wire \subtractors[12]|auto_generated|op_1~17_sumout ;
wire \subtractors[13]|auto_generated|op_1~25_sumout ;
wire \subtractors[14]|auto_generated|op_1~33_sumout ;
wire \subtractors[15]|auto_generated|op_1~41_sumout ;
wire \subtractors[10]|auto_generated|op_1~5_sumout ;
wire \subtractors[11]|auto_generated|op_1~13_sumout ;
wire \subtractors[12]|auto_generated|op_1~21_sumout ;
wire \subtractors[13]|auto_generated|op_1~29_sumout ;
wire \subtractors[14]|auto_generated|op_1~37_sumout ;
wire \subtractors[15]|auto_generated|op_1~45_sumout ;
wire \subtractors[10]|auto_generated|op_1~9_sumout ;
wire \subtractors[11]|auto_generated|op_1~17_sumout ;
wire \subtractors[12]|auto_generated|op_1~25_sumout ;
wire \subtractors[13]|auto_generated|op_1~33_sumout ;
wire \subtractors[14]|auto_generated|op_1~41_sumout ;
wire \subtractors[15]|auto_generated|op_1~49_sumout ;
wire \subtractors[9]|auto_generated|op_1~5_sumout ;
wire \subtractors[10]|auto_generated|op_1~13_sumout ;
wire \subtractors[11]|auto_generated|op_1~21_sumout ;
wire \subtractors[12]|auto_generated|op_1~29_sumout ;
wire \subtractors[13]|auto_generated|op_1~37_sumout ;
wire \subtractors[14]|auto_generated|op_1~45_sumout ;
wire \subtractors[15]|auto_generated|op_1~53_sumout ;
wire \subtractors[9]|auto_generated|op_1~9_sumout ;
wire \subtractors[10]|auto_generated|op_1~17_sumout ;
wire \subtractors[11]|auto_generated|op_1~25_sumout ;
wire \subtractors[12]|auto_generated|op_1~33_sumout ;
wire \subtractors[13]|auto_generated|op_1~41_sumout ;
wire \subtractors[14]|auto_generated|op_1~49_sumout ;
wire \subtractors[15]|auto_generated|op_1~57_sumout ;
wire \subtractors[8]|auto_generated|op_1~5_sumout ;
wire \subtractors[9]|auto_generated|op_1~13_sumout ;
wire \subtractors[10]|auto_generated|op_1~21_sumout ;
wire \subtractors[11]|auto_generated|op_1~29_sumout ;
wire \subtractors[12]|auto_generated|op_1~37_sumout ;
wire \subtractors[13]|auto_generated|op_1~45_sumout ;
wire \subtractors[14]|auto_generated|op_1~53_sumout ;
wire \subtractors[15]|auto_generated|op_1~61_sumout ;
wire \subtractors[8]|auto_generated|op_1~9_sumout ;
wire \subtractors[9]|auto_generated|op_1~17_sumout ;
wire \subtractors[10]|auto_generated|op_1~25_sumout ;
wire \subtractors[11]|auto_generated|op_1~33_sumout ;
wire \subtractors[12]|auto_generated|op_1~41_sumout ;
wire \subtractors[13]|auto_generated|op_1~49_sumout ;
wire \subtractors[14]|auto_generated|op_1~57_sumout ;
wire \subtractors[15]|auto_generated|op_1~65_sumout ;
wire \subtractors[7]|auto_generated|op_1~9_sumout ;
wire \subtractors[8]|auto_generated|op_1~21_sumout ;
wire \subtractors[9]|auto_generated|op_1~29_sumout ;
wire \subtractors[10]|auto_generated|op_1~37_sumout ;
wire \subtractors[11]|auto_generated|op_1~45_sumout ;
wire \subtractors[12]|auto_generated|op_1~53_sumout ;
wire \subtractors[13]|auto_generated|op_1~61_sumout ;
wire \subtractors[14]|auto_generated|op_1~69_sumout ;
wire \subtractors[7]|auto_generated|op_1~13_sumout ;
wire \subtractors[8]|auto_generated|op_1~25_sumout ;
wire \subtractors[9]|auto_generated|op_1~33_sumout ;
wire \subtractors[10]|auto_generated|op_1~41_sumout ;
wire \subtractors[11]|auto_generated|op_1~49_sumout ;
wire \subtractors[12]|auto_generated|op_1~57_sumout ;
wire \subtractors[13]|auto_generated|op_1~65_sumout ;
wire \subtractors[6]|auto_generated|op_1~9_sumout ;
wire \subtractors[7]|auto_generated|op_1~17_sumout ;
wire \subtractors[8]|auto_generated|op_1~29_sumout ;
wire \subtractors[9]|auto_generated|op_1~37_sumout ;
wire \subtractors[10]|auto_generated|op_1~45_sumout ;
wire \subtractors[11]|auto_generated|op_1~53_sumout ;
wire \subtractors[12]|auto_generated|op_1~61_sumout ;
wire \subtractors[6]|auto_generated|op_1~13_sumout ;
wire \subtractors[7]|auto_generated|op_1~21_sumout ;
wire \subtractors[8]|auto_generated|op_1~33_sumout ;
wire \subtractors[9]|auto_generated|op_1~41_sumout ;
wire \subtractors[10]|auto_generated|op_1~49_sumout ;
wire \subtractors[11]|auto_generated|op_1~57_sumout ;
wire \subtractors[5]|auto_generated|op_1~9_sumout ;
wire \subtractors[6]|auto_generated|op_1~17_sumout ;
wire \subtractors[7]|auto_generated|op_1~25_sumout ;
wire \subtractors[8]|auto_generated|op_1~37_sumout ;
wire \subtractors[9]|auto_generated|op_1~45_sumout ;
wire \subtractors[10]|auto_generated|op_1~53_sumout ;
wire \subtractors[5]|auto_generated|op_1~13_sumout ;
wire \subtractors[6]|auto_generated|op_1~21_sumout ;
wire \subtractors[7]|auto_generated|op_1~29_sumout ;
wire \subtractors[8]|auto_generated|op_1~41_sumout ;
wire \subtractors[9]|auto_generated|op_1~49_sumout ;
wire \subtractors[4]|auto_generated|op_1~9_sumout ;
wire \subtractors[5]|auto_generated|op_1~17_sumout ;
wire \subtractors[6]|auto_generated|op_1~25_sumout ;
wire \subtractors[7]|auto_generated|op_1~33_sumout ;
wire \subtractors[8]|auto_generated|op_1~45_sumout ;
wire \subtractors[4]|auto_generated|op_1~13_sumout ;
wire \subtractors[5]|auto_generated|op_1~21_sumout ;
wire \subtractors[6]|auto_generated|op_1~29_sumout ;
wire \subtractors[7]|auto_generated|op_1~37_sumout ;
wire \subtractors[3]|auto_generated|op_1~9_sumout ;
wire \subtractors[4]|auto_generated|op_1~17_sumout ;
wire \subtractors[5]|auto_generated|op_1~25_sumout ;
wire \subtractors[6]|auto_generated|op_1~33_sumout ;
wire \subtractors[3]|auto_generated|op_1~13_sumout ;
wire \subtractors[4]|auto_generated|op_1~21_sumout ;
wire \subtractors[5]|auto_generated|op_1~29_sumout ;
wire \subtractors[2]|auto_generated|op_1~9_sumout ;
wire \subtractors[3]|auto_generated|op_1~17_sumout ;
wire \subtractors[4]|auto_generated|op_1~25_sumout ;
wire \subtractors[2]|auto_generated|op_1~13_sumout ;
wire \subtractors[3]|auto_generated|op_1~21_sumout ;
wire \subtractors[2]|auto_generated|op_1~17_sumout ;
wire \_~59_combout ;
wire \_~60_combout ;
wire \_~61_combout ;
wire \_~62_combout ;
wire \_~63_combout ;
wire \_~64_combout ;
wire \_~65_combout ;
wire \_~66_combout ;
wire \_~67_combout ;
wire \_~68_combout ;
wire \_~69_combout ;
wire \_~70_combout ;
wire \_~71_combout ;
wire \_~72_combout ;
wire \_~73_combout ;
wire \_~74_combout ;
wire \_~75_combout ;
wire \_~76_combout ;
wire \_~77_combout ;
wire \_~78_combout ;
wire \_~79_combout ;
wire \_~80_combout ;
wire \_~81_combout ;
wire \_~82_combout ;
wire \_~83_combout ;
wire \_~84_combout ;
wire \_~85_combout ;
wire \_~86_combout ;
wire \_~87_combout ;
wire \_~88_combout ;
wire \_~89_combout ;
wire \_~90_combout ;
wire \_~91_combout ;
wire \_~92_combout ;
wire \_~93_combout ;
wire \_~94_combout ;
wire \_~95_combout ;
wire \_~96_combout ;
wire \_~97_combout ;
wire \_~98_combout ;
wire \_~99_combout ;
wire \_~100_combout ;
wire \_~101_combout ;
wire \_~102_combout ;
wire \_~103_combout ;
wire \_~104_combout ;
wire \_~105_combout ;
wire \_~106_combout ;
wire \_~107_combout ;
wire \subtractors[1]|auto_generated|op_1~1_combout ;
wire \_~5_combout ;
wire \_~7_combout ;
wire \_~9_combout ;
wire \_~10_combout ;
wire \_~12_combout ;
wire \_~13_combout ;
wire \_~15_combout ;
wire \_~16_combout ;
wire \_~17_combout ;
wire \_~19_combout ;
wire \_~20_combout ;
wire \_~21_combout ;
wire \_~23_combout ;
wire \_~24_combout ;
wire \_~25_combout ;
wire \_~26_combout ;
wire \_~28_combout ;
wire \_~29_combout ;
wire \_~30_combout ;
wire \_~31_combout ;
wire \_~33_combout ;
wire \_~34_combout ;
wire \_~35_combout ;
wire \_~36_combout ;
wire \_~37_combout ;
wire \_~39_combout ;
wire \_~40_combout ;
wire \_~41_combout ;
wire \_~42_combout ;
wire \_~43_combout ;
wire \_~45_combout ;
wire \_~46_combout ;
wire \_~47_combout ;
wire \_~48_combout ;
wire \_~49_combout ;
wire \_~50_combout ;
wire \_~52_combout ;
wire \_~53_combout ;
wire \_~54_combout ;
wire \_~55_combout ;
wire \_~56_combout ;
wire \_~57_combout ;


square_lpm_add_sub_5 \subtractors[13] (
	.op_1(op_12),
	.op_11(op_13),
	.op_12(op_14),
	.op_13(op_15),
	.op_14(op_16),
	.op_15(op_17),
	.op_16(op_18),
	.op_17(op_19),
	.op_18(op_110),
	.op_19(op_111),
	.op_110(op_112),
	.op_111(op_113),
	.op_112(\subtractors[13]|auto_generated|op_1~5_sumout ),
	.op_113(\subtractors[13]|auto_generated|op_1~9_sumout ),
	.op_114(\subtractors[12]|auto_generated|op_1~5_sumout ),
	.op_115(\subtractors[13]|auto_generated|op_1~13_sumout ),
	.op_116(\subtractors[12]|auto_generated|op_1~9_sumout ),
	.op_117(\subtractors[13]|auto_generated|op_1~17_sumout ),
	.op_118(\subtractors[12]|auto_generated|op_1~13_sumout ),
	.op_119(\subtractors[13]|auto_generated|op_1~21_sumout ),
	.op_120(\subtractors[12]|auto_generated|op_1~17_sumout ),
	.op_121(\subtractors[13]|auto_generated|op_1~25_sumout ),
	.op_122(\subtractors[12]|auto_generated|op_1~21_sumout ),
	.op_123(\subtractors[13]|auto_generated|op_1~29_sumout ),
	.op_124(\subtractors[12]|auto_generated|op_1~25_sumout ),
	.op_125(\subtractors[13]|auto_generated|op_1~33_sumout ),
	.op_126(\subtractors[12]|auto_generated|op_1~29_sumout ),
	.op_127(\subtractors[13]|auto_generated|op_1~37_sumout ),
	.op_128(\subtractors[12]|auto_generated|op_1~33_sumout ),
	.op_129(\subtractors[13]|auto_generated|op_1~41_sumout ),
	.op_130(\subtractors[12]|auto_generated|op_1~37_sumout ),
	.op_131(\subtractors[13]|auto_generated|op_1~45_sumout ),
	.op_132(\subtractors[12]|auto_generated|op_1~41_sumout ),
	.op_133(\subtractors[13]|auto_generated|op_1~49_sumout ),
	.op_134(\subtractors[12]|auto_generated|op_1~53_sumout ),
	.op_135(\subtractors[13]|auto_generated|op_1~61_sumout ),
	.op_136(\subtractors[12]|auto_generated|op_1~57_sumout ),
	.op_137(\subtractors[13]|auto_generated|op_1~65_sumout ),
	.op_138(\subtractors[12]|auto_generated|op_1~61_sumout ),
	.op_139(op_114),
	._(\_~15_combout ),
	._1(\_~19_combout ),
	._2(\_~24_combout ),
	._3(\_~29_combout ),
	._4(\_~35_combout ),
	._5(\_~41_combout ),
	._6(\_~48_combout ),
	._7(\_~55_combout ),
	._8(\_~63_combout ),
	._9(\_~70_combout ),
	._10(\_~77_combout ),
	.radical_30(radical_30),
	.radical_31(radical_31),
	.radical_4(radical_4),
	.radical_5(radical_5),
	.radical_6(radical_6),
	.radical_7(radical_7),
	.radical_8(radical_8));

square_lpm_add_sub_6 \subtractors[14] (
	.op_1(op_11),
	.op_11(op_12),
	.op_12(op_13),
	.op_13(op_14),
	.op_14(op_15),
	.op_15(op_16),
	.op_16(op_17),
	.op_17(op_18),
	.op_18(op_19),
	.op_19(op_110),
	.op_110(op_111),
	.op_111(op_112),
	.op_112(op_113),
	.op_113(\subtractors[14]|auto_generated|op_1~5_sumout ),
	.op_114(\subtractors[14]|auto_generated|op_1~9_sumout ),
	.op_115(\subtractors[13]|auto_generated|op_1~5_sumout ),
	.op_116(\subtractors[14]|auto_generated|op_1~13_sumout ),
	.op_117(\subtractors[13]|auto_generated|op_1~9_sumout ),
	.op_118(\subtractors[14]|auto_generated|op_1~17_sumout ),
	.op_119(\subtractors[13]|auto_generated|op_1~13_sumout ),
	.op_120(\subtractors[14]|auto_generated|op_1~21_sumout ),
	.op_121(\subtractors[13]|auto_generated|op_1~17_sumout ),
	.op_122(\subtractors[14]|auto_generated|op_1~25_sumout ),
	.op_123(\subtractors[13]|auto_generated|op_1~21_sumout ),
	.op_124(\subtractors[14]|auto_generated|op_1~29_sumout ),
	.op_125(\subtractors[13]|auto_generated|op_1~25_sumout ),
	.op_126(\subtractors[14]|auto_generated|op_1~33_sumout ),
	.op_127(\subtractors[13]|auto_generated|op_1~29_sumout ),
	.op_128(\subtractors[14]|auto_generated|op_1~37_sumout ),
	.op_129(\subtractors[13]|auto_generated|op_1~33_sumout ),
	.op_130(\subtractors[14]|auto_generated|op_1~41_sumout ),
	.op_131(\subtractors[13]|auto_generated|op_1~37_sumout ),
	.op_132(\subtractors[14]|auto_generated|op_1~45_sumout ),
	.op_133(\subtractors[13]|auto_generated|op_1~41_sumout ),
	.op_134(\subtractors[14]|auto_generated|op_1~49_sumout ),
	.op_135(\subtractors[13]|auto_generated|op_1~45_sumout ),
	.op_136(\subtractors[14]|auto_generated|op_1~53_sumout ),
	.op_137(\subtractors[13]|auto_generated|op_1~49_sumout ),
	.op_138(\subtractors[14]|auto_generated|op_1~57_sumout ),
	.op_139(\subtractors[13]|auto_generated|op_1~61_sumout ),
	.op_140(\subtractors[14]|auto_generated|op_1~69_sumout ),
	.op_141(\subtractors[13]|auto_generated|op_1~65_sumout ),
	.op_142(op_114),
	._(\_~9_combout ),
	._1(\_~12_combout ),
	._2(\_~16_combout ),
	._3(\_~20_combout ),
	._4(\_~25_combout ),
	._5(\_~30_combout ),
	._6(\_~36_combout ),
	._7(\_~42_combout ),
	._8(\_~49_combout ),
	._9(\_~56_combout ),
	._10(\_~64_combout ),
	._11(\_~71_combout ),
	.radical_30(radical_30),
	.radical_31(radical_31),
	.radical_2(radical_2),
	.radical_3(radical_3),
	.radical_4(radical_4),
	.radical_5(radical_5),
	.radical_6(radical_6));

square_lpm_add_sub_7 \subtractors[15] (
	.op_1(op_1),
	.op_11(op_11),
	.op_12(op_12),
	.op_13(op_13),
	.op_14(op_14),
	.op_15(op_15),
	.op_16(op_16),
	.op_17(op_17),
	.op_18(op_18),
	.op_19(op_19),
	.op_110(op_110),
	.op_111(op_111),
	.op_112(op_112),
	.op_113(op_113),
	.op_114(\subtractors[15]|auto_generated|op_1~5_sumout ),
	.op_115(\subtractors[15]|auto_generated|op_1~9_sumout ),
	.op_116(\subtractors[14]|auto_generated|op_1~5_sumout ),
	.op_117(\subtractors[15]|auto_generated|op_1~13_sumout ),
	.op_118(\subtractors[14]|auto_generated|op_1~9_sumout ),
	.op_119(\subtractors[15]|auto_generated|op_1~17_sumout ),
	.op_120(\subtractors[14]|auto_generated|op_1~13_sumout ),
	.op_121(\subtractors[15]|auto_generated|op_1~21_sumout ),
	.op_122(\subtractors[14]|auto_generated|op_1~17_sumout ),
	.op_123(\subtractors[15]|auto_generated|op_1~25_sumout ),
	.op_124(\subtractors[14]|auto_generated|op_1~21_sumout ),
	.op_125(\subtractors[15]|auto_generated|op_1~29_sumout ),
	.op_126(\subtractors[14]|auto_generated|op_1~25_sumout ),
	.op_127(\subtractors[15]|auto_generated|op_1~33_sumout ),
	.op_128(\subtractors[14]|auto_generated|op_1~29_sumout ),
	.op_129(\subtractors[15]|auto_generated|op_1~37_sumout ),
	.op_130(\subtractors[14]|auto_generated|op_1~33_sumout ),
	.op_131(\subtractors[15]|auto_generated|op_1~41_sumout ),
	.op_132(\subtractors[14]|auto_generated|op_1~37_sumout ),
	.op_133(\subtractors[15]|auto_generated|op_1~45_sumout ),
	.op_134(\subtractors[14]|auto_generated|op_1~41_sumout ),
	.op_135(\subtractors[15]|auto_generated|op_1~49_sumout ),
	.op_136(\subtractors[14]|auto_generated|op_1~45_sumout ),
	.op_137(\subtractors[15]|auto_generated|op_1~53_sumout ),
	.op_138(\subtractors[14]|auto_generated|op_1~49_sumout ),
	.op_139(\subtractors[15]|auto_generated|op_1~57_sumout ),
	.op_140(\subtractors[14]|auto_generated|op_1~53_sumout ),
	.op_141(\subtractors[15]|auto_generated|op_1~61_sumout ),
	.op_142(\subtractors[14]|auto_generated|op_1~57_sumout ),
	.op_143(\subtractors[15]|auto_generated|op_1~65_sumout ),
	.op_144(\subtractors[14]|auto_generated|op_1~69_sumout ),
	.op_145(op_114),
	._(\_~5_combout ),
	._1(\_~7_combout ),
	._2(\_~10_combout ),
	._3(\_~13_combout ),
	._4(\_~17_combout ),
	._5(\_~21_combout ),
	._6(\_~26_combout ),
	._7(\_~31_combout ),
	._8(\_~37_combout ),
	._9(\_~43_combout ),
	._10(\_~50_combout ),
	._11(\_~57_combout ),
	._12(\_~65_combout ),
	.radical_30(radical_30),
	.radical_31(radical_31),
	.radical_0(radical_0),
	.radical_1(radical_1),
	.radical_2(radical_2),
	.radical_3(radical_3),
	.radical_4(radical_4));

square_lpm_add_sub_3 \subtractors[11] (
	.op_1(op_14),
	.op_11(op_15),
	.op_12(op_16),
	.op_13(op_17),
	.op_14(op_18),
	.op_15(op_19),
	.op_16(op_110),
	.op_17(op_111),
	.op_18(op_112),
	.op_19(op_113),
	.op_110(\subtractors[11]|auto_generated|op_1~5_sumout ),
	.op_111(\subtractors[11]|auto_generated|op_1~9_sumout ),
	.op_112(\subtractors[10]|auto_generated|op_1~5_sumout ),
	.op_113(\subtractors[11]|auto_generated|op_1~13_sumout ),
	.op_114(\subtractors[10]|auto_generated|op_1~9_sumout ),
	.op_115(\subtractors[11]|auto_generated|op_1~17_sumout ),
	.op_116(\subtractors[10]|auto_generated|op_1~13_sumout ),
	.op_117(\subtractors[11]|auto_generated|op_1~21_sumout ),
	.op_118(\subtractors[10]|auto_generated|op_1~17_sumout ),
	.op_119(\subtractors[11]|auto_generated|op_1~25_sumout ),
	.op_120(\subtractors[10]|auto_generated|op_1~21_sumout ),
	.op_121(\subtractors[11]|auto_generated|op_1~29_sumout ),
	.op_122(\subtractors[10]|auto_generated|op_1~25_sumout ),
	.op_123(\subtractors[11]|auto_generated|op_1~33_sumout ),
	.op_124(\subtractors[10]|auto_generated|op_1~37_sumout ),
	.op_125(\subtractors[11]|auto_generated|op_1~45_sumout ),
	.op_126(\subtractors[10]|auto_generated|op_1~41_sumout ),
	.op_127(\subtractors[11]|auto_generated|op_1~49_sumout ),
	.op_128(\subtractors[10]|auto_generated|op_1~45_sumout ),
	.op_129(\subtractors[11]|auto_generated|op_1~53_sumout ),
	.op_130(\subtractors[10]|auto_generated|op_1~49_sumout ),
	.op_131(\subtractors[11]|auto_generated|op_1~57_sumout ),
	.op_132(\subtractors[10]|auto_generated|op_1~53_sumout ),
	.op_133(op_114),
	._(\_~33_combout ),
	._1(\_~39_combout ),
	._2(\_~46_combout ),
	._3(\_~53_combout ),
	._4(\_~61_combout ),
	._5(\_~68_combout ),
	._6(\_~75_combout ),
	._7(\_~81_combout ),
	._8(\_~87_combout ),
	.radical_30(radical_30),
	.radical_31(radical_31),
	.radical_8(radical_8),
	.radical_9(radical_9),
	.radical_10(radical_10),
	.radical_11(radical_11),
	.radical_12(radical_12));

square_lpm_add_sub_4 \subtractors[12] (
	.op_1(op_13),
	.op_11(op_14),
	.op_12(op_15),
	.op_13(op_16),
	.op_14(op_17),
	.op_15(op_18),
	.op_16(op_19),
	.op_17(op_110),
	.op_18(op_111),
	.op_19(op_112),
	.op_110(op_113),
	.op_111(\subtractors[12]|auto_generated|op_1~5_sumout ),
	.op_112(\subtractors[12]|auto_generated|op_1~9_sumout ),
	.op_113(\subtractors[11]|auto_generated|op_1~5_sumout ),
	.op_114(\subtractors[12]|auto_generated|op_1~13_sumout ),
	.op_115(\subtractors[11]|auto_generated|op_1~9_sumout ),
	.op_116(\subtractors[12]|auto_generated|op_1~17_sumout ),
	.op_117(\subtractors[11]|auto_generated|op_1~13_sumout ),
	.op_118(\subtractors[12]|auto_generated|op_1~21_sumout ),
	.op_119(\subtractors[11]|auto_generated|op_1~17_sumout ),
	.op_120(\subtractors[12]|auto_generated|op_1~25_sumout ),
	.op_121(\subtractors[11]|auto_generated|op_1~21_sumout ),
	.op_122(\subtractors[12]|auto_generated|op_1~29_sumout ),
	.op_123(\subtractors[11]|auto_generated|op_1~25_sumout ),
	.op_124(\subtractors[12]|auto_generated|op_1~33_sumout ),
	.op_125(\subtractors[11]|auto_generated|op_1~29_sumout ),
	.op_126(\subtractors[12]|auto_generated|op_1~37_sumout ),
	.op_127(\subtractors[11]|auto_generated|op_1~33_sumout ),
	.op_128(\subtractors[12]|auto_generated|op_1~41_sumout ),
	.op_129(\subtractors[11]|auto_generated|op_1~45_sumout ),
	.op_130(\subtractors[12]|auto_generated|op_1~53_sumout ),
	.op_131(\subtractors[11]|auto_generated|op_1~49_sumout ),
	.op_132(\subtractors[12]|auto_generated|op_1~57_sumout ),
	.op_133(\subtractors[11]|auto_generated|op_1~53_sumout ),
	.op_134(\subtractors[12]|auto_generated|op_1~61_sumout ),
	.op_135(\subtractors[11]|auto_generated|op_1~57_sumout ),
	.op_136(op_114),
	._(\_~23_combout ),
	._1(\_~28_combout ),
	._2(\_~34_combout ),
	._3(\_~40_combout ),
	._4(\_~47_combout ),
	._5(\_~54_combout ),
	._6(\_~62_combout ),
	._7(\_~69_combout ),
	._8(\_~76_combout ),
	._9(\_~82_combout ),
	.radical_30(radical_30),
	.radical_31(radical_31),
	.radical_6(radical_6),
	.radical_7(radical_7),
	.radical_8(radical_8),
	.radical_9(radical_9),
	.radical_10(radical_10));

square_lpm_add_sub_15 \subtractors[8] (
	.op_1(op_17),
	.op_11(op_18),
	.op_12(op_19),
	.op_13(op_110),
	.op_14(op_111),
	.op_15(op_112),
	.op_16(op_113),
	.op_17(\subtractors[8]|auto_generated|op_1~5_sumout ),
	.op_18(\subtractors[8]|auto_generated|op_1~9_sumout ),
	.op_19(\subtractors[7]|auto_generated|op_1~9_sumout ),
	.op_110(\subtractors[8]|auto_generated|op_1~21_sumout ),
	.op_111(\subtractors[7]|auto_generated|op_1~13_sumout ),
	.op_112(\subtractors[8]|auto_generated|op_1~25_sumout ),
	.op_113(\subtractors[7]|auto_generated|op_1~17_sumout ),
	.op_114(\subtractors[8]|auto_generated|op_1~29_sumout ),
	.op_115(\subtractors[7]|auto_generated|op_1~21_sumout ),
	.op_116(\subtractors[8]|auto_generated|op_1~33_sumout ),
	.op_117(\subtractors[7]|auto_generated|op_1~25_sumout ),
	.op_118(\subtractors[8]|auto_generated|op_1~37_sumout ),
	.op_119(\subtractors[7]|auto_generated|op_1~29_sumout ),
	.op_120(\subtractors[8]|auto_generated|op_1~41_sumout ),
	.op_121(\subtractors[7]|auto_generated|op_1~33_sumout ),
	.op_122(\subtractors[8]|auto_generated|op_1~45_sumout ),
	.op_123(\subtractors[7]|auto_generated|op_1~37_sumout ),
	.op_124(op_114),
	._(\_~72_combout ),
	._1(\_~78_combout ),
	._2(\_~84_combout ),
	._3(\_~89_combout ),
	._4(\_~94_combout ),
	._5(\_~98_combout ),
	.radical_30(radical_30),
	.radical_31(radical_31),
	.radical_14(radical_14),
	.radical_15(radical_15),
	.radical_16(radical_16),
	.radical_17(radical_17),
	.radical_18(radical_18));

square_lpm_add_sub_16 \subtractors[9] (
	.op_1(op_16),
	.op_11(op_17),
	.op_12(op_18),
	.op_13(op_19),
	.op_14(op_110),
	.op_15(op_111),
	.op_16(op_112),
	.op_17(op_113),
	.op_18(\subtractors[9]|auto_generated|op_1~5_sumout ),
	.op_19(\subtractors[9]|auto_generated|op_1~9_sumout ),
	.op_110(\subtractors[8]|auto_generated|op_1~5_sumout ),
	.op_111(\subtractors[9]|auto_generated|op_1~13_sumout ),
	.op_112(\subtractors[8]|auto_generated|op_1~9_sumout ),
	.op_113(\subtractors[9]|auto_generated|op_1~17_sumout ),
	.op_114(\subtractors[8]|auto_generated|op_1~21_sumout ),
	.op_115(\subtractors[9]|auto_generated|op_1~29_sumout ),
	.op_116(\subtractors[8]|auto_generated|op_1~25_sumout ),
	.op_117(\subtractors[9]|auto_generated|op_1~33_sumout ),
	.op_118(\subtractors[8]|auto_generated|op_1~29_sumout ),
	.op_119(\subtractors[9]|auto_generated|op_1~37_sumout ),
	.op_120(\subtractors[8]|auto_generated|op_1~33_sumout ),
	.op_121(\subtractors[9]|auto_generated|op_1~41_sumout ),
	.op_122(\subtractors[8]|auto_generated|op_1~37_sumout ),
	.op_123(\subtractors[9]|auto_generated|op_1~45_sumout ),
	.op_124(\subtractors[8]|auto_generated|op_1~41_sumout ),
	.op_125(\subtractors[9]|auto_generated|op_1~49_sumout ),
	.op_126(\subtractors[8]|auto_generated|op_1~45_sumout ),
	.op_127(op_114),
	._(\_~59_combout ),
	._1(\_~66_combout ),
	._2(\_~73_combout ),
	._3(\_~79_combout ),
	._4(\_~85_combout ),
	._5(\_~90_combout ),
	._6(\_~95_combout ),
	.radical_30(radical_30),
	.radical_31(radical_31),
	.radical_12(radical_12),
	.radical_13(radical_13),
	.radical_14(radical_14),
	.radical_15(radical_15),
	.radical_16(radical_16));

square_lpm_add_sub_2 \subtractors[10] (
	.op_1(op_15),
	.op_11(op_16),
	.op_12(op_17),
	.op_13(op_18),
	.op_14(op_19),
	.op_15(op_110),
	.op_16(op_111),
	.op_17(op_112),
	.op_18(op_113),
	.op_19(\subtractors[10]|auto_generated|op_1~5_sumout ),
	.op_110(\subtractors[10]|auto_generated|op_1~9_sumout ),
	.op_111(\subtractors[9]|auto_generated|op_1~5_sumout ),
	.op_112(\subtractors[10]|auto_generated|op_1~13_sumout ),
	.op_113(\subtractors[9]|auto_generated|op_1~9_sumout ),
	.op_114(\subtractors[10]|auto_generated|op_1~17_sumout ),
	.op_115(\subtractors[9]|auto_generated|op_1~13_sumout ),
	.op_116(\subtractors[10]|auto_generated|op_1~21_sumout ),
	.op_117(\subtractors[9]|auto_generated|op_1~17_sumout ),
	.op_118(\subtractors[10]|auto_generated|op_1~25_sumout ),
	.op_119(\subtractors[9]|auto_generated|op_1~29_sumout ),
	.op_120(\subtractors[10]|auto_generated|op_1~37_sumout ),
	.op_121(\subtractors[9]|auto_generated|op_1~33_sumout ),
	.op_122(\subtractors[10]|auto_generated|op_1~41_sumout ),
	.op_123(\subtractors[9]|auto_generated|op_1~37_sumout ),
	.op_124(\subtractors[10]|auto_generated|op_1~45_sumout ),
	.op_125(\subtractors[9]|auto_generated|op_1~41_sumout ),
	.op_126(\subtractors[10]|auto_generated|op_1~49_sumout ),
	.op_127(\subtractors[9]|auto_generated|op_1~45_sumout ),
	.op_128(\subtractors[10]|auto_generated|op_1~53_sumout ),
	.op_129(\subtractors[9]|auto_generated|op_1~49_sumout ),
	.op_130(op_114),
	._(\_~45_combout ),
	._1(\_~52_combout ),
	._2(\_~60_combout ),
	._3(\_~67_combout ),
	._4(\_~74_combout ),
	._5(\_~80_combout ),
	._6(\_~86_combout ),
	._7(\_~91_combout ),
	.radical_30(radical_30),
	.radical_31(radical_31),
	.radical_10(radical_10),
	.radical_11(radical_11),
	.radical_12(radical_12),
	.radical_13(radical_13),
	.radical_14(radical_14));

square_lpm_add_sub_13 \subtractors[6] (
	.op_1(op_19),
	.op_11(op_110),
	.op_12(op_111),
	.op_13(op_112),
	.op_14(op_113),
	.op_15(\subtractors[6]|auto_generated|op_1~9_sumout ),
	.op_16(\subtractors[6]|auto_generated|op_1~13_sumout ),
	.op_17(\subtractors[5]|auto_generated|op_1~9_sumout ),
	.op_18(\subtractors[6]|auto_generated|op_1~17_sumout ),
	.op_19(\subtractors[5]|auto_generated|op_1~13_sumout ),
	.op_110(\subtractors[6]|auto_generated|op_1~21_sumout ),
	.op_111(\subtractors[5]|auto_generated|op_1~17_sumout ),
	.op_112(\subtractors[6]|auto_generated|op_1~25_sumout ),
	.op_113(\subtractors[5]|auto_generated|op_1~21_sumout ),
	.op_114(\subtractors[6]|auto_generated|op_1~29_sumout ),
	.op_115(\subtractors[5]|auto_generated|op_1~25_sumout ),
	.op_116(\subtractors[6]|auto_generated|op_1~33_sumout ),
	.op_117(\subtractors[5]|auto_generated|op_1~29_sumout ),
	.op_118(op_114),
	._(\_~92_combout ),
	._1(\_~96_combout ),
	._2(\_~100_combout ),
	._3(\_~103_combout ),
	.radical_30(radical_30),
	.radical_31(radical_31),
	.radical_18(radical_18),
	.radical_19(radical_19),
	.radical_20(radical_20),
	.radical_21(radical_21),
	.radical_22(radical_22));

square_lpm_add_sub_14 \subtractors[7] (
	.op_1(op_18),
	.op_11(op_19),
	.op_12(op_110),
	.op_13(op_111),
	.op_14(op_112),
	.op_15(op_113),
	.op_16(\subtractors[7]|auto_generated|op_1~9_sumout ),
	.op_17(\subtractors[7]|auto_generated|op_1~13_sumout ),
	.op_18(\subtractors[6]|auto_generated|op_1~9_sumout ),
	.op_19(\subtractors[7]|auto_generated|op_1~17_sumout ),
	.op_110(\subtractors[6]|auto_generated|op_1~13_sumout ),
	.op_111(\subtractors[7]|auto_generated|op_1~21_sumout ),
	.op_112(\subtractors[6]|auto_generated|op_1~17_sumout ),
	.op_113(\subtractors[7]|auto_generated|op_1~25_sumout ),
	.op_114(\subtractors[6]|auto_generated|op_1~21_sumout ),
	.op_115(\subtractors[7]|auto_generated|op_1~29_sumout ),
	.op_116(\subtractors[6]|auto_generated|op_1~25_sumout ),
	.op_117(\subtractors[7]|auto_generated|op_1~33_sumout ),
	.op_118(\subtractors[6]|auto_generated|op_1~29_sumout ),
	.op_119(\subtractors[7]|auto_generated|op_1~37_sumout ),
	.op_120(\subtractors[6]|auto_generated|op_1~33_sumout ),
	.op_121(op_114),
	._(\_~83_combout ),
	._1(\_~88_combout ),
	._2(\_~93_combout ),
	._3(\_~97_combout ),
	._4(\_~101_combout ),
	.radical_30(radical_30),
	.radical_31(radical_31),
	.radical_16(radical_16),
	.radical_17(radical_17),
	.radical_18(radical_18),
	.radical_19(radical_19),
	.radical_20(radical_20));

square_lpm_add_sub_10 \subtractors[3] (
	.op_1(op_112),
	.op_11(op_113),
	.op_12(\subtractors[3]|auto_generated|op_1~9_sumout ),
	.op_13(\subtractors[3]|auto_generated|op_1~13_sumout ),
	.op_14(\subtractors[2]|auto_generated|op_1~9_sumout ),
	.op_15(\subtractors[3]|auto_generated|op_1~17_sumout ),
	.op_16(\subtractors[2]|auto_generated|op_1~13_sumout ),
	.op_17(\subtractors[3]|auto_generated|op_1~21_sumout ),
	.op_18(\subtractors[2]|auto_generated|op_1~17_sumout ),
	.op_19(op_114),
	.op_110(op_115),
	._(\_~107_combout ),
	.radical_28(radical_28),
	.radical_24(radical_24),
	.radical_25(radical_25),
	.radical_26(radical_26),
	.radical_27(radical_27));

square_lpm_add_sub_11 \subtractors[4] (
	.op_1(op_111),
	.op_11(op_112),
	.op_12(op_113),
	.op_13(\subtractors[4]|auto_generated|op_1~9_sumout ),
	.op_14(\subtractors[4]|auto_generated|op_1~13_sumout ),
	.op_15(\subtractors[3]|auto_generated|op_1~9_sumout ),
	.op_16(\subtractors[4]|auto_generated|op_1~17_sumout ),
	.op_17(\subtractors[3]|auto_generated|op_1~13_sumout ),
	.op_18(\subtractors[4]|auto_generated|op_1~21_sumout ),
	.op_19(\subtractors[3]|auto_generated|op_1~17_sumout ),
	.op_110(\subtractors[4]|auto_generated|op_1~25_sumout ),
	.op_111(\subtractors[3]|auto_generated|op_1~21_sumout ),
	.op_112(op_114),
	.op_113(op_115),
	._(\_~104_combout ),
	._1(\_~106_combout ),
	.radical_22(radical_22),
	.radical_23(radical_23),
	.radical_24(radical_24),
	.radical_25(radical_25),
	.radical_26(radical_26));

square_lpm_add_sub_12 \subtractors[5] (
	.op_1(op_110),
	.op_11(op_111),
	.op_12(op_112),
	.op_13(op_113),
	.op_14(\subtractors[5]|auto_generated|op_1~9_sumout ),
	.op_15(\subtractors[5]|auto_generated|op_1~13_sumout ),
	.op_16(\subtractors[4]|auto_generated|op_1~9_sumout ),
	.op_17(\subtractors[5]|auto_generated|op_1~17_sumout ),
	.op_18(\subtractors[4]|auto_generated|op_1~13_sumout ),
	.op_19(\subtractors[5]|auto_generated|op_1~21_sumout ),
	.op_110(\subtractors[4]|auto_generated|op_1~17_sumout ),
	.op_111(\subtractors[5]|auto_generated|op_1~25_sumout ),
	.op_112(\subtractors[4]|auto_generated|op_1~21_sumout ),
	.op_113(\subtractors[5]|auto_generated|op_1~29_sumout ),
	.op_114(\subtractors[4]|auto_generated|op_1~25_sumout ),
	.op_115(op_114),
	._(\_~99_combout ),
	._1(\_~102_combout ),
	._2(\_~105_combout ),
	.radical_30(radical_30),
	.radical_31(radical_31),
	.radical_20(radical_20),
	.radical_21(radical_21),
	.radical_22(radical_22),
	.radical_23(radical_23),
	.radical_24(radical_24));

square_lpm_add_sub_1 \subtractors[0] (
	.op_1(op_115),
	.radical_30(radical_30),
	.radical_31(radical_31));

square_lpm_add_sub_8 \subtractors[1] (
	.op_1(op_114),
	.op_11(\subtractors[1]|auto_generated|op_1~1_combout ),
	.radical_30(radical_30),
	.radical_28(radical_28),
	.radical_29(radical_29),
	.radical_31(radical_31));

square_lpm_add_sub_9 \subtractors[2] (
	.op_1(op_113),
	.op_11(\subtractors[2]|auto_generated|op_1~9_sumout ),
	.op_12(\subtractors[2]|auto_generated|op_1~13_sumout ),
	.op_13(\subtractors[2]|auto_generated|op_1~17_sumout ),
	.op_14(op_114),
	.op_15(\subtractors[1]|auto_generated|op_1~1_combout ),
	.radical_30(radical_30),
	.radical_28(radical_28),
	.radical_29(radical_29),
	.radical_31(radical_31),
	.radical_26(radical_26),
	.radical_27(radical_27));

cyclonev_lcell_comb \_~59 (
	.dataa(!radical_17),
	.datab(!op_18),
	.datac(!\subtractors[7]|auto_generated|op_1~9_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~59_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~59 .extended_lut = "off";
defparam \_~59 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~59 .shared_arith = "off";

cyclonev_lcell_comb \_~60 (
	.dataa(!op_17),
	.datab(!\_~59_combout ),
	.datac(!\subtractors[8]|auto_generated|op_1~21_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~60_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~60 .extended_lut = "off";
defparam \_~60 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~60 .shared_arith = "off";

cyclonev_lcell_comb \_~61 (
	.dataa(!op_16),
	.datab(!\_~60_combout ),
	.datac(!\subtractors[9]|auto_generated|op_1~29_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~61_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~61 .extended_lut = "off";
defparam \_~61 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~61 .shared_arith = "off";

cyclonev_lcell_comb \_~62 (
	.dataa(!op_15),
	.datab(!\_~61_combout ),
	.datac(!\subtractors[10]|auto_generated|op_1~37_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~62_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~62 .extended_lut = "off";
defparam \_~62 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~62 .shared_arith = "off";

cyclonev_lcell_comb \_~63 (
	.dataa(!op_14),
	.datab(!\_~62_combout ),
	.datac(!\subtractors[11]|auto_generated|op_1~45_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~63_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~63 .extended_lut = "off";
defparam \_~63 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~63 .shared_arith = "off";

cyclonev_lcell_comb \_~64 (
	.dataa(!op_13),
	.datab(!\_~63_combout ),
	.datac(!\subtractors[12]|auto_generated|op_1~53_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~64_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~64 .extended_lut = "off";
defparam \_~64 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~64 .shared_arith = "off";

cyclonev_lcell_comb \_~65 (
	.dataa(!op_12),
	.datab(!\_~64_combout ),
	.datac(!\subtractors[13]|auto_generated|op_1~61_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~65_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~65 .extended_lut = "off";
defparam \_~65 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~65 .shared_arith = "off";

cyclonev_lcell_comb \_~66 (
	.dataa(!radical_18),
	.datab(!op_19),
	.datac(!op_18),
	.datad(!\subtractors[7]|auto_generated|op_1~13_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~66_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~66 .extended_lut = "off";
defparam \_~66 .lut_mask = 64'h09F909F909F909F9;
defparam \_~66 .shared_arith = "off";

cyclonev_lcell_comb \_~67 (
	.dataa(!op_17),
	.datab(!\_~66_combout ),
	.datac(!\subtractors[8]|auto_generated|op_1~25_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~67_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~67 .extended_lut = "off";
defparam \_~67 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~67 .shared_arith = "off";

cyclonev_lcell_comb \_~68 (
	.dataa(!op_16),
	.datab(!\_~67_combout ),
	.datac(!\subtractors[9]|auto_generated|op_1~33_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~68_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~68 .extended_lut = "off";
defparam \_~68 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~68 .shared_arith = "off";

cyclonev_lcell_comb \_~69 (
	.dataa(!op_15),
	.datab(!\_~68_combout ),
	.datac(!\subtractors[10]|auto_generated|op_1~41_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~69_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~69 .extended_lut = "off";
defparam \_~69 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~69 .shared_arith = "off";

cyclonev_lcell_comb \_~70 (
	.dataa(!op_14),
	.datab(!\_~69_combout ),
	.datac(!\subtractors[11]|auto_generated|op_1~49_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~70_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~70 .extended_lut = "off";
defparam \_~70 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~70 .shared_arith = "off";

cyclonev_lcell_comb \_~71 (
	.dataa(!op_13),
	.datab(!\_~70_combout ),
	.datac(!\subtractors[12]|auto_generated|op_1~57_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~71_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~71 .extended_lut = "off";
defparam \_~71 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~71 .shared_arith = "off";

cyclonev_lcell_comb \_~72 (
	.dataa(!radical_19),
	.datab(!op_19),
	.datac(!\subtractors[6]|auto_generated|op_1~9_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~72_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~72 .extended_lut = "off";
defparam \_~72 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~72 .shared_arith = "off";

cyclonev_lcell_comb \_~73 (
	.dataa(!op_18),
	.datab(!\_~72_combout ),
	.datac(!\subtractors[7]|auto_generated|op_1~17_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~73_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~73 .extended_lut = "off";
defparam \_~73 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~73 .shared_arith = "off";

cyclonev_lcell_comb \_~74 (
	.dataa(!op_17),
	.datab(!\_~73_combout ),
	.datac(!\subtractors[8]|auto_generated|op_1~29_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~74_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~74 .extended_lut = "off";
defparam \_~74 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~74 .shared_arith = "off";

cyclonev_lcell_comb \_~75 (
	.dataa(!op_16),
	.datab(!\_~74_combout ),
	.datac(!\subtractors[9]|auto_generated|op_1~37_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~75_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~75 .extended_lut = "off";
defparam \_~75 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~75 .shared_arith = "off";

cyclonev_lcell_comb \_~76 (
	.dataa(!op_15),
	.datab(!\_~75_combout ),
	.datac(!\subtractors[10]|auto_generated|op_1~45_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~76_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~76 .extended_lut = "off";
defparam \_~76 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~76 .shared_arith = "off";

cyclonev_lcell_comb \_~77 (
	.dataa(!op_14),
	.datab(!\_~76_combout ),
	.datac(!\subtractors[11]|auto_generated|op_1~53_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~77_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~77 .extended_lut = "off";
defparam \_~77 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~77 .shared_arith = "off";

cyclonev_lcell_comb \_~78 (
	.dataa(!radical_20),
	.datab(!op_110),
	.datac(!op_19),
	.datad(!\subtractors[6]|auto_generated|op_1~13_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~78_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~78 .extended_lut = "off";
defparam \_~78 .lut_mask = 64'h09F909F909F909F9;
defparam \_~78 .shared_arith = "off";

cyclonev_lcell_comb \_~79 (
	.dataa(!op_18),
	.datab(!\_~78_combout ),
	.datac(!\subtractors[7]|auto_generated|op_1~21_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~79_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~79 .extended_lut = "off";
defparam \_~79 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~79 .shared_arith = "off";

cyclonev_lcell_comb \_~80 (
	.dataa(!op_17),
	.datab(!\_~79_combout ),
	.datac(!\subtractors[8]|auto_generated|op_1~33_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~80_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~80 .extended_lut = "off";
defparam \_~80 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~80 .shared_arith = "off";

cyclonev_lcell_comb \_~81 (
	.dataa(!op_16),
	.datab(!\_~80_combout ),
	.datac(!\subtractors[9]|auto_generated|op_1~41_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~81_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~81 .extended_lut = "off";
defparam \_~81 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~81 .shared_arith = "off";

cyclonev_lcell_comb \_~82 (
	.dataa(!op_15),
	.datab(!\_~81_combout ),
	.datac(!\subtractors[10]|auto_generated|op_1~49_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~82_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~82 .extended_lut = "off";
defparam \_~82 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~82 .shared_arith = "off";

cyclonev_lcell_comb \_~83 (
	.dataa(!radical_21),
	.datab(!op_110),
	.datac(!\subtractors[5]|auto_generated|op_1~9_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~83_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~83 .extended_lut = "off";
defparam \_~83 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~83 .shared_arith = "off";

cyclonev_lcell_comb \_~84 (
	.dataa(!op_19),
	.datab(!\_~83_combout ),
	.datac(!\subtractors[6]|auto_generated|op_1~17_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~84_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~84 .extended_lut = "off";
defparam \_~84 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~84 .shared_arith = "off";

cyclonev_lcell_comb \_~85 (
	.dataa(!op_18),
	.datab(!\_~84_combout ),
	.datac(!\subtractors[7]|auto_generated|op_1~25_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~85_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~85 .extended_lut = "off";
defparam \_~85 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~85 .shared_arith = "off";

cyclonev_lcell_comb \_~86 (
	.dataa(!op_17),
	.datab(!\_~85_combout ),
	.datac(!\subtractors[8]|auto_generated|op_1~37_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~86_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~86 .extended_lut = "off";
defparam \_~86 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~86 .shared_arith = "off";

cyclonev_lcell_comb \_~87 (
	.dataa(!op_16),
	.datab(!\_~86_combout ),
	.datac(!\subtractors[9]|auto_generated|op_1~45_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~87_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~87 .extended_lut = "off";
defparam \_~87 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~87 .shared_arith = "off";

cyclonev_lcell_comb \_~88 (
	.dataa(!radical_22),
	.datab(!op_111),
	.datac(!op_110),
	.datad(!\subtractors[5]|auto_generated|op_1~13_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~88_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~88 .extended_lut = "off";
defparam \_~88 .lut_mask = 64'h09F909F909F909F9;
defparam \_~88 .shared_arith = "off";

cyclonev_lcell_comb \_~89 (
	.dataa(!op_19),
	.datab(!\_~88_combout ),
	.datac(!\subtractors[6]|auto_generated|op_1~21_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~89_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~89 .extended_lut = "off";
defparam \_~89 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~89 .shared_arith = "off";

cyclonev_lcell_comb \_~90 (
	.dataa(!op_18),
	.datab(!\_~89_combout ),
	.datac(!\subtractors[7]|auto_generated|op_1~29_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~90_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~90 .extended_lut = "off";
defparam \_~90 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~90 .shared_arith = "off";

cyclonev_lcell_comb \_~91 (
	.dataa(!op_17),
	.datab(!\_~90_combout ),
	.datac(!\subtractors[8]|auto_generated|op_1~41_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~91_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~91 .extended_lut = "off";
defparam \_~91 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~91 .shared_arith = "off";

cyclonev_lcell_comb \_~92 (
	.dataa(!radical_23),
	.datab(!op_111),
	.datac(!\subtractors[4]|auto_generated|op_1~9_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~92_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~92 .extended_lut = "off";
defparam \_~92 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~92 .shared_arith = "off";

cyclonev_lcell_comb \_~93 (
	.dataa(!op_110),
	.datab(!\_~92_combout ),
	.datac(!\subtractors[5]|auto_generated|op_1~17_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~93_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~93 .extended_lut = "off";
defparam \_~93 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~93 .shared_arith = "off";

cyclonev_lcell_comb \_~94 (
	.dataa(!op_19),
	.datab(!\_~93_combout ),
	.datac(!\subtractors[6]|auto_generated|op_1~25_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~94_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~94 .extended_lut = "off";
defparam \_~94 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~94 .shared_arith = "off";

cyclonev_lcell_comb \_~95 (
	.dataa(!op_18),
	.datab(!\_~94_combout ),
	.datac(!\subtractors[7]|auto_generated|op_1~33_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~95_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~95 .extended_lut = "off";
defparam \_~95 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~95 .shared_arith = "off";

cyclonev_lcell_comb \_~96 (
	.dataa(!radical_24),
	.datab(!op_112),
	.datac(!op_111),
	.datad(!\subtractors[4]|auto_generated|op_1~13_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~96_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~96 .extended_lut = "off";
defparam \_~96 .lut_mask = 64'h09F909F909F909F9;
defparam \_~96 .shared_arith = "off";

cyclonev_lcell_comb \_~97 (
	.dataa(!op_110),
	.datab(!\_~96_combout ),
	.datac(!\subtractors[5]|auto_generated|op_1~21_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~97_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~97 .extended_lut = "off";
defparam \_~97 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~97 .shared_arith = "off";

cyclonev_lcell_comb \_~98 (
	.dataa(!op_19),
	.datab(!\_~97_combout ),
	.datac(!\subtractors[6]|auto_generated|op_1~29_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~98_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~98 .extended_lut = "off";
defparam \_~98 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~98 .shared_arith = "off";

cyclonev_lcell_comb \_~99 (
	.dataa(!radical_25),
	.datab(!op_112),
	.datac(!\subtractors[3]|auto_generated|op_1~9_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~99_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~99 .extended_lut = "off";
defparam \_~99 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~99 .shared_arith = "off";

cyclonev_lcell_comb \_~100 (
	.dataa(!op_111),
	.datab(!\_~99_combout ),
	.datac(!\subtractors[4]|auto_generated|op_1~17_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~100_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~100 .extended_lut = "off";
defparam \_~100 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~100 .shared_arith = "off";

cyclonev_lcell_comb \_~101 (
	.dataa(!op_110),
	.datab(!\_~100_combout ),
	.datac(!\subtractors[5]|auto_generated|op_1~25_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~101_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~101 .extended_lut = "off";
defparam \_~101 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~101 .shared_arith = "off";

cyclonev_lcell_comb \_~102 (
	.dataa(!radical_26),
	.datab(!op_113),
	.datac(!op_112),
	.datad(!\subtractors[3]|auto_generated|op_1~13_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~102_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~102 .extended_lut = "off";
defparam \_~102 .lut_mask = 64'h09F909F909F909F9;
defparam \_~102 .shared_arith = "off";

cyclonev_lcell_comb \_~103 (
	.dataa(!op_111),
	.datab(!\_~102_combout ),
	.datac(!\subtractors[4]|auto_generated|op_1~21_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~103_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~103 .extended_lut = "off";
defparam \_~103 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~103 .shared_arith = "off";

cyclonev_lcell_comb \_~104 (
	.dataa(!radical_27),
	.datab(!op_113),
	.datac(!\subtractors[2]|auto_generated|op_1~9_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~104_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~104 .extended_lut = "off";
defparam \_~104 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~104 .shared_arith = "off";

cyclonev_lcell_comb \_~105 (
	.dataa(!op_112),
	.datab(!\_~104_combout ),
	.datac(!\subtractors[3]|auto_generated|op_1~17_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~105_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~105 .extended_lut = "off";
defparam \_~105 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~105 .shared_arith = "off";

cyclonev_lcell_comb \_~106 (
	.dataa(!radical_28),
	.datab(!op_114),
	.datac(!op_113),
	.datad(!\subtractors[2]|auto_generated|op_1~13_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~106_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~106 .extended_lut = "off";
defparam \_~106 .lut_mask = 64'h06F606F606F606F6;
defparam \_~106 .shared_arith = "off";

cyclonev_lcell_comb \_~107 (
	.dataa(!radical_30),
	.datab(!radical_28),
	.datac(!radical_29),
	.datad(!radical_31),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~107_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~107 .extended_lut = "off";
defparam \_~107 .lut_mask = 64'h0743074307430743;
defparam \_~107 .shared_arith = "off";

cyclonev_lcell_comb \_~0 (
	.dataa(!radical_0),
	.datab(!op_1),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(_),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~0 .extended_lut = "off";
defparam \_~0 .lut_mask = 64'h6666666666666666;
defparam \_~0 .shared_arith = "off";

cyclonev_lcell_comb \_~1 (
	.dataa(!radical_1),
	.datab(!op_1),
	.datac(!\subtractors[15]|auto_generated|op_1~5_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(_1),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~1 .extended_lut = "off";
defparam \_~1 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~1 .shared_arith = "off";

cyclonev_lcell_comb \_~2 (
	.dataa(!radical_2),
	.datab(!op_11),
	.datac(!op_1),
	.datad(!\subtractors[15]|auto_generated|op_1~9_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(_2),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~2 .extended_lut = "off";
defparam \_~2 .lut_mask = 64'h09F909F909F909F9;
defparam \_~2 .shared_arith = "off";

cyclonev_lcell_comb \_~3 (
	.dataa(!radical_3),
	.datab(!op_11),
	.datac(!\subtractors[14]|auto_generated|op_1~5_sumout ),
	.datad(!op_1),
	.datae(!\subtractors[15]|auto_generated|op_1~13_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(_3),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~3 .extended_lut = "off";
defparam \_~3 .lut_mask = 64'h001DFF1D001DFF1D;
defparam \_~3 .shared_arith = "off";

cyclonev_lcell_comb \_~4 (
	.dataa(!radical_4),
	.datab(!op_12),
	.datac(!op_11),
	.datad(!\subtractors[14]|auto_generated|op_1~9_sumout ),
	.datae(!op_1),
	.dataf(!\subtractors[15]|auto_generated|op_1~17_sumout ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(_4),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~4 .extended_lut = "off";
defparam \_~4 .lut_mask = 64'h000009F9FFFF09F9;
defparam \_~4 .shared_arith = "off";

cyclonev_lcell_comb \_~6 (
	.dataa(!op_11),
	.datab(!\_~5_combout ),
	.datac(!\subtractors[14]|auto_generated|op_1~13_sumout ),
	.datad(!op_1),
	.datae(!\subtractors[15]|auto_generated|op_1~21_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(_5),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~6 .extended_lut = "off";
defparam \_~6 .lut_mask = 64'h001BFF1B001BFF1B;
defparam \_~6 .shared_arith = "off";

cyclonev_lcell_comb \_~8 (
	.dataa(!op_11),
	.datab(!\_~7_combout ),
	.datac(!\subtractors[14]|auto_generated|op_1~17_sumout ),
	.datad(!op_1),
	.datae(!\subtractors[15]|auto_generated|op_1~25_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(_6),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~8 .extended_lut = "off";
defparam \_~8 .lut_mask = 64'h001BFF1B001BFF1B;
defparam \_~8 .shared_arith = "off";

cyclonev_lcell_comb \_~11 (
	.dataa(!op_11),
	.datab(!\_~10_combout ),
	.datac(!\subtractors[14]|auto_generated|op_1~21_sumout ),
	.datad(!op_1),
	.datae(!\subtractors[15]|auto_generated|op_1~29_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(_7),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~11 .extended_lut = "off";
defparam \_~11 .lut_mask = 64'h001BFF1B001BFF1B;
defparam \_~11 .shared_arith = "off";

cyclonev_lcell_comb \_~14 (
	.dataa(!op_11),
	.datab(!\_~13_combout ),
	.datac(!\subtractors[14]|auto_generated|op_1~25_sumout ),
	.datad(!op_1),
	.datae(!\subtractors[15]|auto_generated|op_1~33_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(_8),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~14 .extended_lut = "off";
defparam \_~14 .lut_mask = 64'h001BFF1B001BFF1B;
defparam \_~14 .shared_arith = "off";

cyclonev_lcell_comb \_~18 (
	.dataa(!op_11),
	.datab(!\_~17_combout ),
	.datac(!\subtractors[14]|auto_generated|op_1~29_sumout ),
	.datad(!op_1),
	.datae(!\subtractors[15]|auto_generated|op_1~37_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(_9),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~18 .extended_lut = "off";
defparam \_~18 .lut_mask = 64'h001BFF1B001BFF1B;
defparam \_~18 .shared_arith = "off";

cyclonev_lcell_comb \_~22 (
	.dataa(!op_11),
	.datab(!\_~21_combout ),
	.datac(!\subtractors[14]|auto_generated|op_1~33_sumout ),
	.datad(!op_1),
	.datae(!\subtractors[15]|auto_generated|op_1~41_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(_10),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~22 .extended_lut = "off";
defparam \_~22 .lut_mask = 64'h001BFF1B001BFF1B;
defparam \_~22 .shared_arith = "off";

cyclonev_lcell_comb \_~27 (
	.dataa(!op_11),
	.datab(!\_~26_combout ),
	.datac(!\subtractors[14]|auto_generated|op_1~37_sumout ),
	.datad(!op_1),
	.datae(!\subtractors[15]|auto_generated|op_1~45_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(_11),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~27 .extended_lut = "off";
defparam \_~27 .lut_mask = 64'h001BFF1B001BFF1B;
defparam \_~27 .shared_arith = "off";

cyclonev_lcell_comb \_~32 (
	.dataa(!op_11),
	.datab(!\_~31_combout ),
	.datac(!\subtractors[14]|auto_generated|op_1~41_sumout ),
	.datad(!op_1),
	.datae(!\subtractors[15]|auto_generated|op_1~49_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(_12),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~32 .extended_lut = "off";
defparam \_~32 .lut_mask = 64'h001BFF1B001BFF1B;
defparam \_~32 .shared_arith = "off";

cyclonev_lcell_comb \_~38 (
	.dataa(!op_11),
	.datab(!\_~37_combout ),
	.datac(!\subtractors[14]|auto_generated|op_1~45_sumout ),
	.datad(!op_1),
	.datae(!\subtractors[15]|auto_generated|op_1~53_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(_13),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~38 .extended_lut = "off";
defparam \_~38 .lut_mask = 64'h001BFF1B001BFF1B;
defparam \_~38 .shared_arith = "off";

cyclonev_lcell_comb \_~44 (
	.dataa(!op_11),
	.datab(!\_~43_combout ),
	.datac(!\subtractors[14]|auto_generated|op_1~49_sumout ),
	.datad(!op_1),
	.datae(!\subtractors[15]|auto_generated|op_1~57_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(_14),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~44 .extended_lut = "off";
defparam \_~44 .lut_mask = 64'h001BFF1B001BFF1B;
defparam \_~44 .shared_arith = "off";

cyclonev_lcell_comb \_~51 (
	.dataa(!op_11),
	.datab(!\_~50_combout ),
	.datac(!\subtractors[14]|auto_generated|op_1~53_sumout ),
	.datad(!op_1),
	.datae(!\subtractors[15]|auto_generated|op_1~61_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(_15),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~51 .extended_lut = "off";
defparam \_~51 .lut_mask = 64'h001BFF1B001BFF1B;
defparam \_~51 .shared_arith = "off";

cyclonev_lcell_comb \_~58 (
	.dataa(!op_11),
	.datab(!\_~57_combout ),
	.datac(!\subtractors[14]|auto_generated|op_1~57_sumout ),
	.datad(!op_1),
	.datae(!\subtractors[15]|auto_generated|op_1~65_sumout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(_16),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~58 .extended_lut = "off";
defparam \_~58 .lut_mask = 64'h001BFF1B001BFF1B;
defparam \_~58 .shared_arith = "off";

cyclonev_lcell_comb \_~5 (
	.dataa(!radical_5),
	.datab(!op_12),
	.datac(!\subtractors[13]|auto_generated|op_1~5_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~5_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~5 .extended_lut = "off";
defparam \_~5 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~5 .shared_arith = "off";

cyclonev_lcell_comb \_~7 (
	.dataa(!radical_6),
	.datab(!op_13),
	.datac(!op_12),
	.datad(!\subtractors[13]|auto_generated|op_1~9_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~7_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~7 .extended_lut = "off";
defparam \_~7 .lut_mask = 64'h09F909F909F909F9;
defparam \_~7 .shared_arith = "off";

cyclonev_lcell_comb \_~9 (
	.dataa(!radical_7),
	.datab(!op_13),
	.datac(!\subtractors[12]|auto_generated|op_1~5_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~9_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~9 .extended_lut = "off";
defparam \_~9 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~9 .shared_arith = "off";

cyclonev_lcell_comb \_~10 (
	.dataa(!op_12),
	.datab(!\_~9_combout ),
	.datac(!\subtractors[13]|auto_generated|op_1~13_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~10_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~10 .extended_lut = "off";
defparam \_~10 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~10 .shared_arith = "off";

cyclonev_lcell_comb \_~12 (
	.dataa(!radical_8),
	.datab(!op_14),
	.datac(!op_13),
	.datad(!\subtractors[12]|auto_generated|op_1~9_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~12_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~12 .extended_lut = "off";
defparam \_~12 .lut_mask = 64'h09F909F909F909F9;
defparam \_~12 .shared_arith = "off";

cyclonev_lcell_comb \_~13 (
	.dataa(!op_12),
	.datab(!\_~12_combout ),
	.datac(!\subtractors[13]|auto_generated|op_1~17_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~13_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~13 .extended_lut = "off";
defparam \_~13 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~13 .shared_arith = "off";

cyclonev_lcell_comb \_~15 (
	.dataa(!radical_9),
	.datab(!op_14),
	.datac(!\subtractors[11]|auto_generated|op_1~5_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~15_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~15 .extended_lut = "off";
defparam \_~15 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~15 .shared_arith = "off";

cyclonev_lcell_comb \_~16 (
	.dataa(!op_13),
	.datab(!\_~15_combout ),
	.datac(!\subtractors[12]|auto_generated|op_1~13_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~16_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~16 .extended_lut = "off";
defparam \_~16 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~16 .shared_arith = "off";

cyclonev_lcell_comb \_~17 (
	.dataa(!op_12),
	.datab(!\_~16_combout ),
	.datac(!\subtractors[13]|auto_generated|op_1~21_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~17_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~17 .extended_lut = "off";
defparam \_~17 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~17 .shared_arith = "off";

cyclonev_lcell_comb \_~19 (
	.dataa(!radical_10),
	.datab(!op_15),
	.datac(!op_14),
	.datad(!\subtractors[11]|auto_generated|op_1~9_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~19_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~19 .extended_lut = "off";
defparam \_~19 .lut_mask = 64'h09F909F909F909F9;
defparam \_~19 .shared_arith = "off";

cyclonev_lcell_comb \_~20 (
	.dataa(!op_13),
	.datab(!\_~19_combout ),
	.datac(!\subtractors[12]|auto_generated|op_1~17_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~20_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~20 .extended_lut = "off";
defparam \_~20 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~20 .shared_arith = "off";

cyclonev_lcell_comb \_~21 (
	.dataa(!op_12),
	.datab(!\_~20_combout ),
	.datac(!\subtractors[13]|auto_generated|op_1~25_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~21_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~21 .extended_lut = "off";
defparam \_~21 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~21 .shared_arith = "off";

cyclonev_lcell_comb \_~23 (
	.dataa(!radical_11),
	.datab(!op_15),
	.datac(!\subtractors[10]|auto_generated|op_1~5_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~23_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~23 .extended_lut = "off";
defparam \_~23 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~23 .shared_arith = "off";

cyclonev_lcell_comb \_~24 (
	.dataa(!op_14),
	.datab(!\_~23_combout ),
	.datac(!\subtractors[11]|auto_generated|op_1~13_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~24_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~24 .extended_lut = "off";
defparam \_~24 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~24 .shared_arith = "off";

cyclonev_lcell_comb \_~25 (
	.dataa(!op_13),
	.datab(!\_~24_combout ),
	.datac(!\subtractors[12]|auto_generated|op_1~21_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~25_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~25 .extended_lut = "off";
defparam \_~25 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~25 .shared_arith = "off";

cyclonev_lcell_comb \_~26 (
	.dataa(!op_12),
	.datab(!\_~25_combout ),
	.datac(!\subtractors[13]|auto_generated|op_1~29_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~26_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~26 .extended_lut = "off";
defparam \_~26 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~26 .shared_arith = "off";

cyclonev_lcell_comb \_~28 (
	.dataa(!radical_12),
	.datab(!op_16),
	.datac(!op_15),
	.datad(!\subtractors[10]|auto_generated|op_1~9_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~28_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~28 .extended_lut = "off";
defparam \_~28 .lut_mask = 64'h09F909F909F909F9;
defparam \_~28 .shared_arith = "off";

cyclonev_lcell_comb \_~29 (
	.dataa(!op_14),
	.datab(!\_~28_combout ),
	.datac(!\subtractors[11]|auto_generated|op_1~17_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~29_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~29 .extended_lut = "off";
defparam \_~29 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~29 .shared_arith = "off";

cyclonev_lcell_comb \_~30 (
	.dataa(!op_13),
	.datab(!\_~29_combout ),
	.datac(!\subtractors[12]|auto_generated|op_1~25_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~30_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~30 .extended_lut = "off";
defparam \_~30 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~30 .shared_arith = "off";

cyclonev_lcell_comb \_~31 (
	.dataa(!op_12),
	.datab(!\_~30_combout ),
	.datac(!\subtractors[13]|auto_generated|op_1~33_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~31_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~31 .extended_lut = "off";
defparam \_~31 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~31 .shared_arith = "off";

cyclonev_lcell_comb \_~33 (
	.dataa(!radical_13),
	.datab(!op_16),
	.datac(!\subtractors[9]|auto_generated|op_1~5_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~33_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~33 .extended_lut = "off";
defparam \_~33 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~33 .shared_arith = "off";

cyclonev_lcell_comb \_~34 (
	.dataa(!op_15),
	.datab(!\_~33_combout ),
	.datac(!\subtractors[10]|auto_generated|op_1~13_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~34_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~34 .extended_lut = "off";
defparam \_~34 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~34 .shared_arith = "off";

cyclonev_lcell_comb \_~35 (
	.dataa(!op_14),
	.datab(!\_~34_combout ),
	.datac(!\subtractors[11]|auto_generated|op_1~21_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~35_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~35 .extended_lut = "off";
defparam \_~35 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~35 .shared_arith = "off";

cyclonev_lcell_comb \_~36 (
	.dataa(!op_13),
	.datab(!\_~35_combout ),
	.datac(!\subtractors[12]|auto_generated|op_1~29_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~36_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~36 .extended_lut = "off";
defparam \_~36 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~36 .shared_arith = "off";

cyclonev_lcell_comb \_~37 (
	.dataa(!op_12),
	.datab(!\_~36_combout ),
	.datac(!\subtractors[13]|auto_generated|op_1~37_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~37_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~37 .extended_lut = "off";
defparam \_~37 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~37 .shared_arith = "off";

cyclonev_lcell_comb \_~39 (
	.dataa(!radical_14),
	.datab(!op_17),
	.datac(!op_16),
	.datad(!\subtractors[9]|auto_generated|op_1~9_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~39_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~39 .extended_lut = "off";
defparam \_~39 .lut_mask = 64'h09F909F909F909F9;
defparam \_~39 .shared_arith = "off";

cyclonev_lcell_comb \_~40 (
	.dataa(!op_15),
	.datab(!\_~39_combout ),
	.datac(!\subtractors[10]|auto_generated|op_1~17_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~40_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~40 .extended_lut = "off";
defparam \_~40 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~40 .shared_arith = "off";

cyclonev_lcell_comb \_~41 (
	.dataa(!op_14),
	.datab(!\_~40_combout ),
	.datac(!\subtractors[11]|auto_generated|op_1~25_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~41_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~41 .extended_lut = "off";
defparam \_~41 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~41 .shared_arith = "off";

cyclonev_lcell_comb \_~42 (
	.dataa(!op_13),
	.datab(!\_~41_combout ),
	.datac(!\subtractors[12]|auto_generated|op_1~33_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~42_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~42 .extended_lut = "off";
defparam \_~42 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~42 .shared_arith = "off";

cyclonev_lcell_comb \_~43 (
	.dataa(!op_12),
	.datab(!\_~42_combout ),
	.datac(!\subtractors[13]|auto_generated|op_1~41_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~43_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~43 .extended_lut = "off";
defparam \_~43 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~43 .shared_arith = "off";

cyclonev_lcell_comb \_~45 (
	.dataa(!radical_15),
	.datab(!op_17),
	.datac(!\subtractors[8]|auto_generated|op_1~5_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~45_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~45 .extended_lut = "off";
defparam \_~45 .lut_mask = 64'h1D1D1D1D1D1D1D1D;
defparam \_~45 .shared_arith = "off";

cyclonev_lcell_comb \_~46 (
	.dataa(!op_16),
	.datab(!\_~45_combout ),
	.datac(!\subtractors[9]|auto_generated|op_1~13_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~46_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~46 .extended_lut = "off";
defparam \_~46 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~46 .shared_arith = "off";

cyclonev_lcell_comb \_~47 (
	.dataa(!op_15),
	.datab(!\_~46_combout ),
	.datac(!\subtractors[10]|auto_generated|op_1~21_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~47_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~47 .extended_lut = "off";
defparam \_~47 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~47 .shared_arith = "off";

cyclonev_lcell_comb \_~48 (
	.dataa(!op_14),
	.datab(!\_~47_combout ),
	.datac(!\subtractors[11]|auto_generated|op_1~29_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~48_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~48 .extended_lut = "off";
defparam \_~48 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~48 .shared_arith = "off";

cyclonev_lcell_comb \_~49 (
	.dataa(!op_13),
	.datab(!\_~48_combout ),
	.datac(!\subtractors[12]|auto_generated|op_1~37_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~49_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~49 .extended_lut = "off";
defparam \_~49 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~49 .shared_arith = "off";

cyclonev_lcell_comb \_~50 (
	.dataa(!op_12),
	.datab(!\_~49_combout ),
	.datac(!\subtractors[13]|auto_generated|op_1~45_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~50_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~50 .extended_lut = "off";
defparam \_~50 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~50 .shared_arith = "off";

cyclonev_lcell_comb \_~52 (
	.dataa(!radical_16),
	.datab(!op_18),
	.datac(!op_17),
	.datad(!\subtractors[8]|auto_generated|op_1~9_sumout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~52_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~52 .extended_lut = "off";
defparam \_~52 .lut_mask = 64'h09F909F909F909F9;
defparam \_~52 .shared_arith = "off";

cyclonev_lcell_comb \_~53 (
	.dataa(!op_16),
	.datab(!\_~52_combout ),
	.datac(!\subtractors[9]|auto_generated|op_1~17_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~53_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~53 .extended_lut = "off";
defparam \_~53 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~53 .shared_arith = "off";

cyclonev_lcell_comb \_~54 (
	.dataa(!op_15),
	.datab(!\_~53_combout ),
	.datac(!\subtractors[10]|auto_generated|op_1~25_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~54_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~54 .extended_lut = "off";
defparam \_~54 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~54 .shared_arith = "off";

cyclonev_lcell_comb \_~55 (
	.dataa(!op_14),
	.datab(!\_~54_combout ),
	.datac(!\subtractors[11]|auto_generated|op_1~33_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~55_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~55 .extended_lut = "off";
defparam \_~55 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~55 .shared_arith = "off";

cyclonev_lcell_comb \_~56 (
	.dataa(!op_13),
	.datab(!\_~55_combout ),
	.datac(!\subtractors[12]|auto_generated|op_1~41_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~56_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~56 .extended_lut = "off";
defparam \_~56 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~56 .shared_arith = "off";

cyclonev_lcell_comb \_~57 (
	.dataa(!op_12),
	.datab(!\_~56_combout ),
	.datac(!\subtractors[13]|auto_generated|op_1~49_sumout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\_~57_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \_~57 .extended_lut = "off";
defparam \_~57 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \_~57 .shared_arith = "off";

endmodule

module square_lpm_add_sub_1 (
	op_1,
	radical_30,
	radical_31)/* synthesis synthesis_greybox=0 */;
output 	op_1;
input 	radical_30;
input 	radical_31;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



square_add_sub_qhc auto_generated(
	.op_1(op_1),
	.radical_30(radical_30),
	.radical_31(radical_31));

endmodule

module square_add_sub_qhc (
	op_1,
	radical_30,
	radical_31)/* synthesis synthesis_greybox=0 */;
output 	op_1;
input 	radical_30;
input 	radical_31;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



cyclonev_lcell_comb \op_1~0 (
	.dataa(!radical_30),
	.datab(!radical_31),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(op_1),
	.sumout(),
	.cout(),
	.shareout());
defparam \op_1~0 .extended_lut = "off";
defparam \op_1~0 .lut_mask = 64'h7777777777777777;
defparam \op_1~0 .shared_arith = "off";

endmodule

module square_lpm_add_sub_2 (
	op_1,
	op_11,
	op_12,
	op_13,
	op_14,
	op_15,
	op_16,
	op_17,
	op_18,
	op_19,
	op_110,
	op_111,
	op_112,
	op_113,
	op_114,
	op_115,
	op_116,
	op_117,
	op_118,
	op_119,
	op_120,
	op_121,
	op_122,
	op_123,
	op_124,
	op_125,
	op_126,
	op_127,
	op_128,
	op_129,
	op_130,
	_,
	_1,
	_2,
	_3,
	_4,
	_5,
	_6,
	_7,
	radical_30,
	radical_31,
	radical_10,
	radical_11,
	radical_12,
	radical_13,
	radical_14)/* synthesis synthesis_greybox=0 */;
output 	op_1;
input 	op_11;
input 	op_12;
input 	op_13;
input 	op_14;
input 	op_15;
input 	op_16;
input 	op_17;
input 	op_18;
output 	op_19;
output 	op_110;
input 	op_111;
output 	op_112;
input 	op_113;
output 	op_114;
input 	op_115;
output 	op_116;
input 	op_117;
output 	op_118;
input 	op_119;
output 	op_120;
input 	op_121;
output 	op_122;
input 	op_123;
output 	op_124;
input 	op_125;
output 	op_126;
input 	op_127;
output 	op_128;
input 	op_129;
input 	op_130;
input 	_;
input 	_1;
input 	_2;
input 	_3;
input 	_4;
input 	_5;
input 	_6;
input 	_7;
input 	radical_30;
input 	radical_31;
input 	radical_10;
input 	radical_11;
input 	radical_12;
input 	radical_13;
input 	radical_14;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



square_add_sub_cjc auto_generated(
	.op_1(op_1),
	.op_11(op_11),
	.op_12(op_12),
	.op_13(op_13),
	.op_14(op_14),
	.op_15(op_15),
	.op_16(op_16),
	.op_17(op_17),
	.op_18(op_18),
	.op_19(op_19),
	.op_110(op_110),
	.op_111(op_111),
	.op_112(op_112),
	.op_113(op_113),
	.op_114(op_114),
	.op_115(op_115),
	.op_116(op_116),
	.op_117(op_117),
	.op_118(op_118),
	.op_119(op_119),
	.op_120(op_120),
	.op_121(op_121),
	.op_122(op_122),
	.op_123(op_123),
	.op_124(op_124),
	.op_125(op_125),
	.op_126(op_126),
	.op_127(op_127),
	.op_128(op_128),
	.op_129(op_129),
	.op_130(op_130),
	._(_),
	._1(_1),
	._2(_2),
	._3(_3),
	._4(_4),
	._5(_5),
	._6(_6),
	._7(_7),
	.radical_30(radical_30),
	.radical_31(radical_31),
	.radical_10(radical_10),
	.radical_11(radical_11),
	.radical_12(radical_12),
	.radical_13(radical_13),
	.radical_14(radical_14));

endmodule

module square_add_sub_cjc (
	op_1,
	op_11,
	op_12,
	op_13,
	op_14,
	op_15,
	op_16,
	op_17,
	op_18,
	op_19,
	op_110,
	op_111,
	op_112,
	op_113,
	op_114,
	op_115,
	op_116,
	op_117,
	op_118,
	op_119,
	op_120,
	op_121,
	op_122,
	op_123,
	op_124,
	op_125,
	op_126,
	op_127,
	op_128,
	op_129,
	op_130,
	_,
	_1,
	_2,
	_3,
	_4,
	_5,
	_6,
	_7,
	radical_30,
	radical_31,
	radical_10,
	radical_11,
	radical_12,
	radical_13,
	radical_14)/* synthesis synthesis_greybox=0 */;
output 	op_1;
input 	op_11;
input 	op_12;
input 	op_13;
input 	op_14;
input 	op_15;
input 	op_16;
input 	op_17;
input 	op_18;
output 	op_19;
output 	op_110;
input 	op_111;
output 	op_112;
input 	op_113;
output 	op_114;
input 	op_115;
output 	op_116;
input 	op_117;
output 	op_118;
input 	op_119;
output 	op_120;
input 	op_121;
output 	op_122;
input 	op_123;
output 	op_124;
input 	op_125;
output 	op_126;
input 	op_127;
output 	op_128;
input 	op_129;
input 	op_130;
input 	_;
input 	_1;
input 	_2;
input 	_3;
input 	_4;
input 	_5;
input 	_6;
input 	_7;
input 	radical_30;
input 	radical_31;
input 	radical_10;
input 	radical_11;
input 	radical_12;
input 	radical_13;
input 	radical_14;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \op_1~6 ;
wire \op_1~10 ;
wire \op_1~14 ;
wire \op_1~18 ;
wire \op_1~22 ;
wire \op_1~26 ;
wire \op_1~38 ;
wire \op_1~42 ;
wire \op_1~46 ;
wire \op_1~50 ;
wire \op_1~54 ;
wire \op_1~30_cout ;
wire \op_1~34_cout ;


cyclonev_lcell_comb \op_1~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~30_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(op_1),
	.cout(),
	.shareout());
defparam \op_1~1 .extended_lut = "off";
defparam \op_1~1 .lut_mask = 64'h0000FFFF0000FFFF;
defparam \op_1~1 .shared_arith = "off";

cyclonev_lcell_comb \op_1~5 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!radical_11),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~34_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(op_19),
	.cout(\op_1~6 ),
	.shareout());
defparam \op_1~5 .extended_lut = "off";
defparam \op_1~5 .lut_mask = 64'h00000000000000FF;
defparam \op_1~5 .shared_arith = "off";

cyclonev_lcell_comb \op_1~9 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(gnd),
	.datad(!radical_12),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_110),
	.cout(\op_1~10 ),
	.shareout());
defparam \op_1~9 .extended_lut = "off";
defparam \op_1~9 .lut_mask = 64'h0000AAAA0000AA55;
defparam \op_1~9 .shared_arith = "off";

cyclonev_lcell_comb \op_1~13 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!radical_13),
	.datad(!op_111),
	.datae(gnd),
	.dataf(!op_12),
	.datag(gnd),
	.cin(\op_1~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_112),
	.cout(\op_1~14 ),
	.shareout());
defparam \op_1~13 .extended_lut = "off";
defparam \op_1~13 .lut_mask = 64'h0000FF00000005AF;
defparam \op_1~13 .shared_arith = "off";

cyclonev_lcell_comb \op_1~17 (
	.dataa(!op_11),
	.datab(!radical_14),
	.datac(!op_12),
	.datad(!op_113),
	.datae(gnd),
	.dataf(!op_13),
	.datag(gnd),
	.cin(\op_1~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_114),
	.cout(\op_1~18 ),
	.shareout());
defparam \op_1~17 .extended_lut = "off";
defparam \op_1~17 .lut_mask = 64'h0000FF00000041EB;
defparam \op_1~17 .shared_arith = "off";

cyclonev_lcell_comb \op_1~21 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_),
	.datad(!op_115),
	.datae(gnd),
	.dataf(!op_14),
	.datag(gnd),
	.cin(\op_1~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_116),
	.cout(\op_1~22 ),
	.shareout());
defparam \op_1~21 .extended_lut = "off";
defparam \op_1~21 .lut_mask = 64'h0000FF00000005AF;
defparam \op_1~21 .shared_arith = "off";

cyclonev_lcell_comb \op_1~25 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_1),
	.datad(!op_117),
	.datae(gnd),
	.dataf(!op_15),
	.datag(gnd),
	.cin(\op_1~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_118),
	.cout(\op_1~26 ),
	.shareout());
defparam \op_1~25 .extended_lut = "off";
defparam \op_1~25 .lut_mask = 64'h0000FF00000005AF;
defparam \op_1~25 .shared_arith = "off";

cyclonev_lcell_comb \op_1~37 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_2),
	.datad(!op_119),
	.datae(gnd),
	.dataf(!op_16),
	.datag(gnd),
	.cin(\op_1~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_120),
	.cout(\op_1~38 ),
	.shareout());
defparam \op_1~37 .extended_lut = "off";
defparam \op_1~37 .lut_mask = 64'h0000FF00000005AF;
defparam \op_1~37 .shared_arith = "off";

cyclonev_lcell_comb \op_1~41 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_3),
	.datad(!op_121),
	.datae(gnd),
	.dataf(!op_17),
	.datag(gnd),
	.cin(\op_1~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_122),
	.cout(\op_1~42 ),
	.shareout());
defparam \op_1~41 .extended_lut = "off";
defparam \op_1~41 .lut_mask = 64'h0000FF00000005AF;
defparam \op_1~41 .shared_arith = "off";

cyclonev_lcell_comb \op_1~45 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_4),
	.datad(!op_123),
	.datae(gnd),
	.dataf(!op_18),
	.datag(gnd),
	.cin(\op_1~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_124),
	.cout(\op_1~46 ),
	.shareout());
defparam \op_1~45 .extended_lut = "off";
defparam \op_1~45 .lut_mask = 64'h0000FF00000005AF;
defparam \op_1~45 .shared_arith = "off";

cyclonev_lcell_comb \op_1~49 (
	.dataa(gnd),
	.datab(!op_11),
	.datac(!_5),
	.datad(!op_130),
	.datae(gnd),
	.dataf(!op_125),
	.datag(gnd),
	.cin(\op_1~46 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_126),
	.cout(\op_1~50 ),
	.shareout());
defparam \op_1~49 .extended_lut = "off";
defparam \op_1~49 .lut_mask = 64'h0000FC300000FF00;
defparam \op_1~49 .shared_arith = "off";

cyclonev_lcell_comb \op_1~53 (
	.dataa(!radical_31),
	.datab(!op_11),
	.datac(!_6),
	.datad(!radical_30),
	.datae(gnd),
	.dataf(!op_127),
	.datag(gnd),
	.cin(\op_1~50 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_128),
	.cout(\op_1~54 ),
	.shareout());
defparam \op_1~53 .extended_lut = "off";
defparam \op_1~53 .lut_mask = 64'h0000FC300000AA00;
defparam \op_1~53 .shared_arith = "off";

cyclonev_lcell_comb \op_1~30 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_7),
	.datad(!op_129),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~54 ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\op_1~30_cout ),
	.shareout());
defparam \op_1~30 .extended_lut = "off";
defparam \op_1~30 .lut_mask = 64'h00000000000005AF;
defparam \op_1~30 .shared_arith = "off";

cyclonev_lcell_comb \op_1~34 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!radical_10),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\op_1~34_cout ),
	.shareout());
defparam \op_1~34 .extended_lut = "off";
defparam \op_1~34 .lut_mask = 64'h00000000000000FF;
defparam \op_1~34 .shared_arith = "off";

endmodule

module square_lpm_add_sub_3 (
	op_1,
	op_11,
	op_12,
	op_13,
	op_14,
	op_15,
	op_16,
	op_17,
	op_18,
	op_19,
	op_110,
	op_111,
	op_112,
	op_113,
	op_114,
	op_115,
	op_116,
	op_117,
	op_118,
	op_119,
	op_120,
	op_121,
	op_122,
	op_123,
	op_124,
	op_125,
	op_126,
	op_127,
	op_128,
	op_129,
	op_130,
	op_131,
	op_132,
	op_133,
	_,
	_1,
	_2,
	_3,
	_4,
	_5,
	_6,
	_7,
	_8,
	radical_30,
	radical_31,
	radical_8,
	radical_9,
	radical_10,
	radical_11,
	radical_12)/* synthesis synthesis_greybox=0 */;
output 	op_1;
input 	op_11;
input 	op_12;
input 	op_13;
input 	op_14;
input 	op_15;
input 	op_16;
input 	op_17;
input 	op_18;
input 	op_19;
output 	op_110;
output 	op_111;
input 	op_112;
output 	op_113;
input 	op_114;
output 	op_115;
input 	op_116;
output 	op_117;
input 	op_118;
output 	op_119;
input 	op_120;
output 	op_121;
input 	op_122;
output 	op_123;
input 	op_124;
output 	op_125;
input 	op_126;
output 	op_127;
input 	op_128;
output 	op_129;
input 	op_130;
output 	op_131;
input 	op_132;
input 	op_133;
input 	_;
input 	_1;
input 	_2;
input 	_3;
input 	_4;
input 	_5;
input 	_6;
input 	_7;
input 	_8;
input 	radical_30;
input 	radical_31;
input 	radical_8;
input 	radical_9;
input 	radical_10;
input 	radical_11;
input 	radical_12;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



square_add_sub_djc auto_generated(
	.op_1(op_1),
	.op_11(op_11),
	.op_12(op_12),
	.op_13(op_13),
	.op_14(op_14),
	.op_15(op_15),
	.op_16(op_16),
	.op_17(op_17),
	.op_18(op_18),
	.op_19(op_19),
	.op_110(op_110),
	.op_111(op_111),
	.op_112(op_112),
	.op_113(op_113),
	.op_114(op_114),
	.op_115(op_115),
	.op_116(op_116),
	.op_117(op_117),
	.op_118(op_118),
	.op_119(op_119),
	.op_120(op_120),
	.op_121(op_121),
	.op_122(op_122),
	.op_123(op_123),
	.op_124(op_124),
	.op_125(op_125),
	.op_126(op_126),
	.op_127(op_127),
	.op_128(op_128),
	.op_129(op_129),
	.op_130(op_130),
	.op_131(op_131),
	.op_132(op_132),
	.op_133(op_133),
	._(_),
	._1(_1),
	._2(_2),
	._3(_3),
	._4(_4),
	._5(_5),
	._6(_6),
	._7(_7),
	._8(_8),
	.radical_30(radical_30),
	.radical_31(radical_31),
	.radical_8(radical_8),
	.radical_9(radical_9),
	.radical_10(radical_10),
	.radical_11(radical_11),
	.radical_12(radical_12));

endmodule

module square_add_sub_djc (
	op_1,
	op_11,
	op_12,
	op_13,
	op_14,
	op_15,
	op_16,
	op_17,
	op_18,
	op_19,
	op_110,
	op_111,
	op_112,
	op_113,
	op_114,
	op_115,
	op_116,
	op_117,
	op_118,
	op_119,
	op_120,
	op_121,
	op_122,
	op_123,
	op_124,
	op_125,
	op_126,
	op_127,
	op_128,
	op_129,
	op_130,
	op_131,
	op_132,
	op_133,
	_,
	_1,
	_2,
	_3,
	_4,
	_5,
	_6,
	_7,
	_8,
	radical_30,
	radical_31,
	radical_8,
	radical_9,
	radical_10,
	radical_11,
	radical_12)/* synthesis synthesis_greybox=0 */;
output 	op_1;
input 	op_11;
input 	op_12;
input 	op_13;
input 	op_14;
input 	op_15;
input 	op_16;
input 	op_17;
input 	op_18;
input 	op_19;
output 	op_110;
output 	op_111;
input 	op_112;
output 	op_113;
input 	op_114;
output 	op_115;
input 	op_116;
output 	op_117;
input 	op_118;
output 	op_119;
input 	op_120;
output 	op_121;
input 	op_122;
output 	op_123;
input 	op_124;
output 	op_125;
input 	op_126;
output 	op_127;
input 	op_128;
output 	op_129;
input 	op_130;
output 	op_131;
input 	op_132;
input 	op_133;
input 	_;
input 	_1;
input 	_2;
input 	_3;
input 	_4;
input 	_5;
input 	_6;
input 	_7;
input 	_8;
input 	radical_30;
input 	radical_31;
input 	radical_8;
input 	radical_9;
input 	radical_10;
input 	radical_11;
input 	radical_12;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \op_1~6 ;
wire \op_1~10 ;
wire \op_1~14 ;
wire \op_1~18 ;
wire \op_1~22 ;
wire \op_1~26 ;
wire \op_1~30 ;
wire \op_1~34 ;
wire \op_1~46 ;
wire \op_1~50 ;
wire \op_1~54 ;
wire \op_1~58 ;
wire \op_1~38_cout ;
wire \op_1~42_cout ;


cyclonev_lcell_comb \op_1~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~38_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(op_1),
	.cout(),
	.shareout());
defparam \op_1~1 .extended_lut = "off";
defparam \op_1~1 .lut_mask = 64'h0000FFFF0000FFFF;
defparam \op_1~1 .shared_arith = "off";

cyclonev_lcell_comb \op_1~5 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!radical_9),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~42_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(op_110),
	.cout(\op_1~6 ),
	.shareout());
defparam \op_1~5 .extended_lut = "off";
defparam \op_1~5 .lut_mask = 64'h00000000000000FF;
defparam \op_1~5 .shared_arith = "off";

cyclonev_lcell_comb \op_1~9 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(gnd),
	.datad(!radical_10),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_111),
	.cout(\op_1~10 ),
	.shareout());
defparam \op_1~9 .extended_lut = "off";
defparam \op_1~9 .lut_mask = 64'h0000AAAA0000AA55;
defparam \op_1~9 .shared_arith = "off";

cyclonev_lcell_comb \op_1~13 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!radical_11),
	.datad(!op_112),
	.datae(gnd),
	.dataf(!op_12),
	.datag(gnd),
	.cin(\op_1~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_113),
	.cout(\op_1~14 ),
	.shareout());
defparam \op_1~13 .extended_lut = "off";
defparam \op_1~13 .lut_mask = 64'h0000FF00000005AF;
defparam \op_1~13 .shared_arith = "off";

cyclonev_lcell_comb \op_1~17 (
	.dataa(!op_11),
	.datab(!radical_12),
	.datac(!op_12),
	.datad(!op_114),
	.datae(gnd),
	.dataf(!op_13),
	.datag(gnd),
	.cin(\op_1~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_115),
	.cout(\op_1~18 ),
	.shareout());
defparam \op_1~17 .extended_lut = "off";
defparam \op_1~17 .lut_mask = 64'h0000FF00000041EB;
defparam \op_1~17 .shared_arith = "off";

cyclonev_lcell_comb \op_1~21 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_),
	.datad(!op_116),
	.datae(gnd),
	.dataf(!op_14),
	.datag(gnd),
	.cin(\op_1~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_117),
	.cout(\op_1~22 ),
	.shareout());
defparam \op_1~21 .extended_lut = "off";
defparam \op_1~21 .lut_mask = 64'h0000FF00000005AF;
defparam \op_1~21 .shared_arith = "off";

cyclonev_lcell_comb \op_1~25 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_1),
	.datad(!op_118),
	.datae(gnd),
	.dataf(!op_15),
	.datag(gnd),
	.cin(\op_1~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_119),
	.cout(\op_1~26 ),
	.shareout());
defparam \op_1~25 .extended_lut = "off";
defparam \op_1~25 .lut_mask = 64'h0000FF00000005AF;
defparam \op_1~25 .shared_arith = "off";

cyclonev_lcell_comb \op_1~29 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_2),
	.datad(!op_120),
	.datae(gnd),
	.dataf(!op_16),
	.datag(gnd),
	.cin(\op_1~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_121),
	.cout(\op_1~30 ),
	.shareout());
defparam \op_1~29 .extended_lut = "off";
defparam \op_1~29 .lut_mask = 64'h0000FF00000005AF;
defparam \op_1~29 .shared_arith = "off";

cyclonev_lcell_comb \op_1~33 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_3),
	.datad(!op_122),
	.datae(gnd),
	.dataf(!op_17),
	.datag(gnd),
	.cin(\op_1~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_123),
	.cout(\op_1~34 ),
	.shareout());
defparam \op_1~33 .extended_lut = "off";
defparam \op_1~33 .lut_mask = 64'h0000FF00000005AF;
defparam \op_1~33 .shared_arith = "off";

cyclonev_lcell_comb \op_1~45 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_4),
	.datad(!op_124),
	.datae(gnd),
	.dataf(!op_18),
	.datag(gnd),
	.cin(\op_1~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_125),
	.cout(\op_1~46 ),
	.shareout());
defparam \op_1~45 .extended_lut = "off";
defparam \op_1~45 .lut_mask = 64'h0000FF00000005AF;
defparam \op_1~45 .shared_arith = "off";

cyclonev_lcell_comb \op_1~49 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_5),
	.datad(!op_126),
	.datae(gnd),
	.dataf(!op_19),
	.datag(gnd),
	.cin(\op_1~46 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_127),
	.cout(\op_1~50 ),
	.shareout());
defparam \op_1~49 .extended_lut = "off";
defparam \op_1~49 .lut_mask = 64'h0000FF00000005AF;
defparam \op_1~49 .shared_arith = "off";

cyclonev_lcell_comb \op_1~53 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_6),
	.datad(!op_133),
	.datae(gnd),
	.dataf(!op_128),
	.datag(gnd),
	.cin(\op_1~50 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_129),
	.cout(\op_1~54 ),
	.shareout());
defparam \op_1~53 .extended_lut = "off";
defparam \op_1~53 .lut_mask = 64'h0000FA500000FF00;
defparam \op_1~53 .shared_arith = "off";

cyclonev_lcell_comb \op_1~57 (
	.dataa(!op_11),
	.datab(!radical_31),
	.datac(!_7),
	.datad(!radical_30),
	.datae(gnd),
	.dataf(!op_130),
	.datag(gnd),
	.cin(\op_1~54 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_131),
	.cout(\op_1~58 ),
	.shareout());
defparam \op_1~57 .extended_lut = "off";
defparam \op_1~57 .lut_mask = 64'h0000FA500000CC00;
defparam \op_1~57 .shared_arith = "off";

cyclonev_lcell_comb \op_1~38 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_8),
	.datad(!op_132),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~58 ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\op_1~38_cout ),
	.shareout());
defparam \op_1~38 .extended_lut = "off";
defparam \op_1~38 .lut_mask = 64'h00000000000005AF;
defparam \op_1~38 .shared_arith = "off";

cyclonev_lcell_comb \op_1~42 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!radical_8),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\op_1~42_cout ),
	.shareout());
defparam \op_1~42 .extended_lut = "off";
defparam \op_1~42 .lut_mask = 64'h00000000000000FF;
defparam \op_1~42 .shared_arith = "off";

endmodule

module square_lpm_add_sub_4 (
	op_1,
	op_11,
	op_12,
	op_13,
	op_14,
	op_15,
	op_16,
	op_17,
	op_18,
	op_19,
	op_110,
	op_111,
	op_112,
	op_113,
	op_114,
	op_115,
	op_116,
	op_117,
	op_118,
	op_119,
	op_120,
	op_121,
	op_122,
	op_123,
	op_124,
	op_125,
	op_126,
	op_127,
	op_128,
	op_129,
	op_130,
	op_131,
	op_132,
	op_133,
	op_134,
	op_135,
	op_136,
	_,
	_1,
	_2,
	_3,
	_4,
	_5,
	_6,
	_7,
	_8,
	_9,
	radical_30,
	radical_31,
	radical_6,
	radical_7,
	radical_8,
	radical_9,
	radical_10)/* synthesis synthesis_greybox=0 */;
output 	op_1;
input 	op_11;
input 	op_12;
input 	op_13;
input 	op_14;
input 	op_15;
input 	op_16;
input 	op_17;
input 	op_18;
input 	op_19;
input 	op_110;
output 	op_111;
output 	op_112;
input 	op_113;
output 	op_114;
input 	op_115;
output 	op_116;
input 	op_117;
output 	op_118;
input 	op_119;
output 	op_120;
input 	op_121;
output 	op_122;
input 	op_123;
output 	op_124;
input 	op_125;
output 	op_126;
input 	op_127;
output 	op_128;
input 	op_129;
output 	op_130;
input 	op_131;
output 	op_132;
input 	op_133;
output 	op_134;
input 	op_135;
input 	op_136;
input 	_;
input 	_1;
input 	_2;
input 	_3;
input 	_4;
input 	_5;
input 	_6;
input 	_7;
input 	_8;
input 	_9;
input 	radical_30;
input 	radical_31;
input 	radical_6;
input 	radical_7;
input 	radical_8;
input 	radical_9;
input 	radical_10;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



square_add_sub_ejc auto_generated(
	.op_1(op_1),
	.op_11(op_11),
	.op_12(op_12),
	.op_13(op_13),
	.op_14(op_14),
	.op_15(op_15),
	.op_16(op_16),
	.op_17(op_17),
	.op_18(op_18),
	.op_19(op_19),
	.op_110(op_110),
	.op_111(op_111),
	.op_112(op_112),
	.op_113(op_113),
	.op_114(op_114),
	.op_115(op_115),
	.op_116(op_116),
	.op_117(op_117),
	.op_118(op_118),
	.op_119(op_119),
	.op_120(op_120),
	.op_121(op_121),
	.op_122(op_122),
	.op_123(op_123),
	.op_124(op_124),
	.op_125(op_125),
	.op_126(op_126),
	.op_127(op_127),
	.op_128(op_128),
	.op_129(op_129),
	.op_130(op_130),
	.op_131(op_131),
	.op_132(op_132),
	.op_133(op_133),
	.op_134(op_134),
	.op_135(op_135),
	.op_136(op_136),
	._(_),
	._1(_1),
	._2(_2),
	._3(_3),
	._4(_4),
	._5(_5),
	._6(_6),
	._7(_7),
	._8(_8),
	._9(_9),
	.radical_30(radical_30),
	.radical_31(radical_31),
	.radical_6(radical_6),
	.radical_7(radical_7),
	.radical_8(radical_8),
	.radical_9(radical_9),
	.radical_10(radical_10));

endmodule

module square_add_sub_ejc (
	op_1,
	op_11,
	op_12,
	op_13,
	op_14,
	op_15,
	op_16,
	op_17,
	op_18,
	op_19,
	op_110,
	op_111,
	op_112,
	op_113,
	op_114,
	op_115,
	op_116,
	op_117,
	op_118,
	op_119,
	op_120,
	op_121,
	op_122,
	op_123,
	op_124,
	op_125,
	op_126,
	op_127,
	op_128,
	op_129,
	op_130,
	op_131,
	op_132,
	op_133,
	op_134,
	op_135,
	op_136,
	_,
	_1,
	_2,
	_3,
	_4,
	_5,
	_6,
	_7,
	_8,
	_9,
	radical_30,
	radical_31,
	radical_6,
	radical_7,
	radical_8,
	radical_9,
	radical_10)/* synthesis synthesis_greybox=0 */;
output 	op_1;
input 	op_11;
input 	op_12;
input 	op_13;
input 	op_14;
input 	op_15;
input 	op_16;
input 	op_17;
input 	op_18;
input 	op_19;
input 	op_110;
output 	op_111;
output 	op_112;
input 	op_113;
output 	op_114;
input 	op_115;
output 	op_116;
input 	op_117;
output 	op_118;
input 	op_119;
output 	op_120;
input 	op_121;
output 	op_122;
input 	op_123;
output 	op_124;
input 	op_125;
output 	op_126;
input 	op_127;
output 	op_128;
input 	op_129;
output 	op_130;
input 	op_131;
output 	op_132;
input 	op_133;
output 	op_134;
input 	op_135;
input 	op_136;
input 	_;
input 	_1;
input 	_2;
input 	_3;
input 	_4;
input 	_5;
input 	_6;
input 	_7;
input 	_8;
input 	_9;
input 	radical_30;
input 	radical_31;
input 	radical_6;
input 	radical_7;
input 	radical_8;
input 	radical_9;
input 	radical_10;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \op_1~6 ;
wire \op_1~10 ;
wire \op_1~14 ;
wire \op_1~18 ;
wire \op_1~22 ;
wire \op_1~26 ;
wire \op_1~30 ;
wire \op_1~34 ;
wire \op_1~38 ;
wire \op_1~42 ;
wire \op_1~54 ;
wire \op_1~58 ;
wire \op_1~62 ;
wire \op_1~46_cout ;
wire \op_1~50_cout ;


cyclonev_lcell_comb \op_1~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~46_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(op_1),
	.cout(),
	.shareout());
defparam \op_1~1 .extended_lut = "off";
defparam \op_1~1 .lut_mask = 64'h0000FFFF0000FFFF;
defparam \op_1~1 .shared_arith = "off";

cyclonev_lcell_comb \op_1~5 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!radical_7),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~50_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(op_111),
	.cout(\op_1~6 ),
	.shareout());
defparam \op_1~5 .extended_lut = "off";
defparam \op_1~5 .lut_mask = 64'h00000000000000FF;
defparam \op_1~5 .shared_arith = "off";

cyclonev_lcell_comb \op_1~9 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(gnd),
	.datad(!radical_8),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_112),
	.cout(\op_1~10 ),
	.shareout());
defparam \op_1~9 .extended_lut = "off";
defparam \op_1~9 .lut_mask = 64'h0000AAAA0000AA55;
defparam \op_1~9 .shared_arith = "off";

cyclonev_lcell_comb \op_1~13 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!radical_9),
	.datad(!op_113),
	.datae(gnd),
	.dataf(!op_12),
	.datag(gnd),
	.cin(\op_1~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_114),
	.cout(\op_1~14 ),
	.shareout());
defparam \op_1~13 .extended_lut = "off";
defparam \op_1~13 .lut_mask = 64'h0000FF00000005AF;
defparam \op_1~13 .shared_arith = "off";

cyclonev_lcell_comb \op_1~17 (
	.dataa(!op_11),
	.datab(!radical_10),
	.datac(!op_12),
	.datad(!op_115),
	.datae(gnd),
	.dataf(!op_13),
	.datag(gnd),
	.cin(\op_1~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_116),
	.cout(\op_1~18 ),
	.shareout());
defparam \op_1~17 .extended_lut = "off";
defparam \op_1~17 .lut_mask = 64'h0000FF00000041EB;
defparam \op_1~17 .shared_arith = "off";

cyclonev_lcell_comb \op_1~21 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_),
	.datad(!op_117),
	.datae(gnd),
	.dataf(!op_14),
	.datag(gnd),
	.cin(\op_1~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_118),
	.cout(\op_1~22 ),
	.shareout());
defparam \op_1~21 .extended_lut = "off";
defparam \op_1~21 .lut_mask = 64'h0000FF00000005AF;
defparam \op_1~21 .shared_arith = "off";

cyclonev_lcell_comb \op_1~25 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_1),
	.datad(!op_119),
	.datae(gnd),
	.dataf(!op_15),
	.datag(gnd),
	.cin(\op_1~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_120),
	.cout(\op_1~26 ),
	.shareout());
defparam \op_1~25 .extended_lut = "off";
defparam \op_1~25 .lut_mask = 64'h0000FF00000005AF;
defparam \op_1~25 .shared_arith = "off";

cyclonev_lcell_comb \op_1~29 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_2),
	.datad(!op_121),
	.datae(gnd),
	.dataf(!op_16),
	.datag(gnd),
	.cin(\op_1~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_122),
	.cout(\op_1~30 ),
	.shareout());
defparam \op_1~29 .extended_lut = "off";
defparam \op_1~29 .lut_mask = 64'h0000FF00000005AF;
defparam \op_1~29 .shared_arith = "off";

cyclonev_lcell_comb \op_1~33 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_3),
	.datad(!op_123),
	.datae(gnd),
	.dataf(!op_17),
	.datag(gnd),
	.cin(\op_1~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_124),
	.cout(\op_1~34 ),
	.shareout());
defparam \op_1~33 .extended_lut = "off";
defparam \op_1~33 .lut_mask = 64'h0000FF00000005AF;
defparam \op_1~33 .shared_arith = "off";

cyclonev_lcell_comb \op_1~37 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_4),
	.datad(!op_125),
	.datae(gnd),
	.dataf(!op_18),
	.datag(gnd),
	.cin(\op_1~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_126),
	.cout(\op_1~38 ),
	.shareout());
defparam \op_1~37 .extended_lut = "off";
defparam \op_1~37 .lut_mask = 64'h0000FF00000005AF;
defparam \op_1~37 .shared_arith = "off";

cyclonev_lcell_comb \op_1~41 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_5),
	.datad(!op_127),
	.datae(gnd),
	.dataf(!op_19),
	.datag(gnd),
	.cin(\op_1~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_128),
	.cout(\op_1~42 ),
	.shareout());
defparam \op_1~41 .extended_lut = "off";
defparam \op_1~41 .lut_mask = 64'h0000FF00000005AF;
defparam \op_1~41 .shared_arith = "off";

cyclonev_lcell_comb \op_1~53 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_6),
	.datad(!op_129),
	.datae(gnd),
	.dataf(!op_110),
	.datag(gnd),
	.cin(\op_1~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_130),
	.cout(\op_1~54 ),
	.shareout());
defparam \op_1~53 .extended_lut = "off";
defparam \op_1~53 .lut_mask = 64'h0000FF00000005AF;
defparam \op_1~53 .shared_arith = "off";

cyclonev_lcell_comb \op_1~57 (
	.dataa(gnd),
	.datab(!op_11),
	.datac(!_7),
	.datad(!op_136),
	.datae(gnd),
	.dataf(!op_131),
	.datag(gnd),
	.cin(\op_1~54 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_132),
	.cout(\op_1~58 ),
	.shareout());
defparam \op_1~57 .extended_lut = "off";
defparam \op_1~57 .lut_mask = 64'h0000FC300000FF00;
defparam \op_1~57 .shared_arith = "off";

cyclonev_lcell_comb \op_1~61 (
	.dataa(!radical_31),
	.datab(!op_11),
	.datac(!_8),
	.datad(!radical_30),
	.datae(gnd),
	.dataf(!op_133),
	.datag(gnd),
	.cin(\op_1~58 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_134),
	.cout(\op_1~62 ),
	.shareout());
defparam \op_1~61 .extended_lut = "off";
defparam \op_1~61 .lut_mask = 64'h0000FC300000AA00;
defparam \op_1~61 .shared_arith = "off";

cyclonev_lcell_comb \op_1~46 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_9),
	.datad(!op_135),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~62 ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\op_1~46_cout ),
	.shareout());
defparam \op_1~46 .extended_lut = "off";
defparam \op_1~46 .lut_mask = 64'h00000000000005AF;
defparam \op_1~46 .shared_arith = "off";

cyclonev_lcell_comb \op_1~50 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!radical_6),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\op_1~50_cout ),
	.shareout());
defparam \op_1~50 .extended_lut = "off";
defparam \op_1~50 .lut_mask = 64'h00000000000000FF;
defparam \op_1~50 .shared_arith = "off";

endmodule

module square_lpm_add_sub_5 (
	op_1,
	op_11,
	op_12,
	op_13,
	op_14,
	op_15,
	op_16,
	op_17,
	op_18,
	op_19,
	op_110,
	op_111,
	op_112,
	op_113,
	op_114,
	op_115,
	op_116,
	op_117,
	op_118,
	op_119,
	op_120,
	op_121,
	op_122,
	op_123,
	op_124,
	op_125,
	op_126,
	op_127,
	op_128,
	op_129,
	op_130,
	op_131,
	op_132,
	op_133,
	op_134,
	op_135,
	op_136,
	op_137,
	op_138,
	op_139,
	_,
	_1,
	_2,
	_3,
	_4,
	_5,
	_6,
	_7,
	_8,
	_9,
	_10,
	radical_30,
	radical_31,
	radical_4,
	radical_5,
	radical_6,
	radical_7,
	radical_8)/* synthesis synthesis_greybox=0 */;
output 	op_1;
input 	op_11;
input 	op_12;
input 	op_13;
input 	op_14;
input 	op_15;
input 	op_16;
input 	op_17;
input 	op_18;
input 	op_19;
input 	op_110;
input 	op_111;
output 	op_112;
output 	op_113;
input 	op_114;
output 	op_115;
input 	op_116;
output 	op_117;
input 	op_118;
output 	op_119;
input 	op_120;
output 	op_121;
input 	op_122;
output 	op_123;
input 	op_124;
output 	op_125;
input 	op_126;
output 	op_127;
input 	op_128;
output 	op_129;
input 	op_130;
output 	op_131;
input 	op_132;
output 	op_133;
input 	op_134;
output 	op_135;
input 	op_136;
output 	op_137;
input 	op_138;
input 	op_139;
input 	_;
input 	_1;
input 	_2;
input 	_3;
input 	_4;
input 	_5;
input 	_6;
input 	_7;
input 	_8;
input 	_9;
input 	_10;
input 	radical_30;
input 	radical_31;
input 	radical_4;
input 	radical_5;
input 	radical_6;
input 	radical_7;
input 	radical_8;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



square_add_sub_fjc auto_generated(
	.op_1(op_1),
	.op_11(op_11),
	.op_12(op_12),
	.op_13(op_13),
	.op_14(op_14),
	.op_15(op_15),
	.op_16(op_16),
	.op_17(op_17),
	.op_18(op_18),
	.op_19(op_19),
	.op_110(op_110),
	.op_111(op_111),
	.op_112(op_112),
	.op_113(op_113),
	.op_114(op_114),
	.op_115(op_115),
	.op_116(op_116),
	.op_117(op_117),
	.op_118(op_118),
	.op_119(op_119),
	.op_120(op_120),
	.op_121(op_121),
	.op_122(op_122),
	.op_123(op_123),
	.op_124(op_124),
	.op_125(op_125),
	.op_126(op_126),
	.op_127(op_127),
	.op_128(op_128),
	.op_129(op_129),
	.op_130(op_130),
	.op_131(op_131),
	.op_132(op_132),
	.op_133(op_133),
	.op_134(op_134),
	.op_135(op_135),
	.op_136(op_136),
	.op_137(op_137),
	.op_138(op_138),
	.op_139(op_139),
	._(_),
	._1(_1),
	._2(_2),
	._3(_3),
	._4(_4),
	._5(_5),
	._6(_6),
	._7(_7),
	._8(_8),
	._9(_9),
	._10(_10),
	.radical_30(radical_30),
	.radical_31(radical_31),
	.radical_4(radical_4),
	.radical_5(radical_5),
	.radical_6(radical_6),
	.radical_7(radical_7),
	.radical_8(radical_8));

endmodule

module square_add_sub_fjc (
	op_1,
	op_11,
	op_12,
	op_13,
	op_14,
	op_15,
	op_16,
	op_17,
	op_18,
	op_19,
	op_110,
	op_111,
	op_112,
	op_113,
	op_114,
	op_115,
	op_116,
	op_117,
	op_118,
	op_119,
	op_120,
	op_121,
	op_122,
	op_123,
	op_124,
	op_125,
	op_126,
	op_127,
	op_128,
	op_129,
	op_130,
	op_131,
	op_132,
	op_133,
	op_134,
	op_135,
	op_136,
	op_137,
	op_138,
	op_139,
	_,
	_1,
	_2,
	_3,
	_4,
	_5,
	_6,
	_7,
	_8,
	_9,
	_10,
	radical_30,
	radical_31,
	radical_4,
	radical_5,
	radical_6,
	radical_7,
	radical_8)/* synthesis synthesis_greybox=0 */;
output 	op_1;
input 	op_11;
input 	op_12;
input 	op_13;
input 	op_14;
input 	op_15;
input 	op_16;
input 	op_17;
input 	op_18;
input 	op_19;
input 	op_110;
input 	op_111;
output 	op_112;
output 	op_113;
input 	op_114;
output 	op_115;
input 	op_116;
output 	op_117;
input 	op_118;
output 	op_119;
input 	op_120;
output 	op_121;
input 	op_122;
output 	op_123;
input 	op_124;
output 	op_125;
input 	op_126;
output 	op_127;
input 	op_128;
output 	op_129;
input 	op_130;
output 	op_131;
input 	op_132;
output 	op_133;
input 	op_134;
output 	op_135;
input 	op_136;
output 	op_137;
input 	op_138;
input 	op_139;
input 	_;
input 	_1;
input 	_2;
input 	_3;
input 	_4;
input 	_5;
input 	_6;
input 	_7;
input 	_8;
input 	_9;
input 	_10;
input 	radical_30;
input 	radical_31;
input 	radical_4;
input 	radical_5;
input 	radical_6;
input 	radical_7;
input 	radical_8;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \op_1~6 ;
wire \op_1~10 ;
wire \op_1~14 ;
wire \op_1~18 ;
wire \op_1~22 ;
wire \op_1~26 ;
wire \op_1~30 ;
wire \op_1~34 ;
wire \op_1~38 ;
wire \op_1~42 ;
wire \op_1~46 ;
wire \op_1~50 ;
wire \op_1~62 ;
wire \op_1~66 ;
wire \op_1~54_cout ;
wire \op_1~58_cout ;


cyclonev_lcell_comb \op_1~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~54_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(op_1),
	.cout(),
	.shareout());
defparam \op_1~1 .extended_lut = "off";
defparam \op_1~1 .lut_mask = 64'h0000FFFF0000FFFF;
defparam \op_1~1 .shared_arith = "off";

cyclonev_lcell_comb \op_1~5 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!radical_5),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~58_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(op_112),
	.cout(\op_1~6 ),
	.shareout());
defparam \op_1~5 .extended_lut = "off";
defparam \op_1~5 .lut_mask = 64'h00000000000000FF;
defparam \op_1~5 .shared_arith = "off";

cyclonev_lcell_comb \op_1~9 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(gnd),
	.datad(!radical_6),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_113),
	.cout(\op_1~10 ),
	.shareout());
defparam \op_1~9 .extended_lut = "off";
defparam \op_1~9 .lut_mask = 64'h0000AAAA0000AA55;
defparam \op_1~9 .shared_arith = "off";

cyclonev_lcell_comb \op_1~13 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!radical_7),
	.datad(!op_114),
	.datae(gnd),
	.dataf(!op_12),
	.datag(gnd),
	.cin(\op_1~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_115),
	.cout(\op_1~14 ),
	.shareout());
defparam \op_1~13 .extended_lut = "off";
defparam \op_1~13 .lut_mask = 64'h0000FF00000005AF;
defparam \op_1~13 .shared_arith = "off";

cyclonev_lcell_comb \op_1~17 (
	.dataa(!op_11),
	.datab(!radical_8),
	.datac(!op_12),
	.datad(!op_116),
	.datae(gnd),
	.dataf(!op_13),
	.datag(gnd),
	.cin(\op_1~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_117),
	.cout(\op_1~18 ),
	.shareout());
defparam \op_1~17 .extended_lut = "off";
defparam \op_1~17 .lut_mask = 64'h0000FF00000041EB;
defparam \op_1~17 .shared_arith = "off";

cyclonev_lcell_comb \op_1~21 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_),
	.datad(!op_118),
	.datae(gnd),
	.dataf(!op_14),
	.datag(gnd),
	.cin(\op_1~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_119),
	.cout(\op_1~22 ),
	.shareout());
defparam \op_1~21 .extended_lut = "off";
defparam \op_1~21 .lut_mask = 64'h0000FF00000005AF;
defparam \op_1~21 .shared_arith = "off";

cyclonev_lcell_comb \op_1~25 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_1),
	.datad(!op_120),
	.datae(gnd),
	.dataf(!op_15),
	.datag(gnd),
	.cin(\op_1~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_121),
	.cout(\op_1~26 ),
	.shareout());
defparam \op_1~25 .extended_lut = "off";
defparam \op_1~25 .lut_mask = 64'h0000FF00000005AF;
defparam \op_1~25 .shared_arith = "off";

cyclonev_lcell_comb \op_1~29 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_2),
	.datad(!op_122),
	.datae(gnd),
	.dataf(!op_16),
	.datag(gnd),
	.cin(\op_1~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_123),
	.cout(\op_1~30 ),
	.shareout());
defparam \op_1~29 .extended_lut = "off";
defparam \op_1~29 .lut_mask = 64'h0000FF00000005AF;
defparam \op_1~29 .shared_arith = "off";

cyclonev_lcell_comb \op_1~33 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_3),
	.datad(!op_124),
	.datae(gnd),
	.dataf(!op_17),
	.datag(gnd),
	.cin(\op_1~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_125),
	.cout(\op_1~34 ),
	.shareout());
defparam \op_1~33 .extended_lut = "off";
defparam \op_1~33 .lut_mask = 64'h0000FF00000005AF;
defparam \op_1~33 .shared_arith = "off";

cyclonev_lcell_comb \op_1~37 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_4),
	.datad(!op_126),
	.datae(gnd),
	.dataf(!op_18),
	.datag(gnd),
	.cin(\op_1~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_127),
	.cout(\op_1~38 ),
	.shareout());
defparam \op_1~37 .extended_lut = "off";
defparam \op_1~37 .lut_mask = 64'h0000FF00000005AF;
defparam \op_1~37 .shared_arith = "off";

cyclonev_lcell_comb \op_1~41 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_5),
	.datad(!op_128),
	.datae(gnd),
	.dataf(!op_19),
	.datag(gnd),
	.cin(\op_1~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_129),
	.cout(\op_1~42 ),
	.shareout());
defparam \op_1~41 .extended_lut = "off";
defparam \op_1~41 .lut_mask = 64'h0000FF00000005AF;
defparam \op_1~41 .shared_arith = "off";

cyclonev_lcell_comb \op_1~45 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_6),
	.datad(!op_130),
	.datae(gnd),
	.dataf(!op_110),
	.datag(gnd),
	.cin(\op_1~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_131),
	.cout(\op_1~46 ),
	.shareout());
defparam \op_1~45 .extended_lut = "off";
defparam \op_1~45 .lut_mask = 64'h0000FF00000005AF;
defparam \op_1~45 .shared_arith = "off";

cyclonev_lcell_comb \op_1~49 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_7),
	.datad(!op_132),
	.datae(gnd),
	.dataf(!op_111),
	.datag(gnd),
	.cin(\op_1~46 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_133),
	.cout(\op_1~50 ),
	.shareout());
defparam \op_1~49 .extended_lut = "off";
defparam \op_1~49 .lut_mask = 64'h0000FF00000005AF;
defparam \op_1~49 .shared_arith = "off";

cyclonev_lcell_comb \op_1~61 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_8),
	.datad(!op_139),
	.datae(gnd),
	.dataf(!op_134),
	.datag(gnd),
	.cin(\op_1~50 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_135),
	.cout(\op_1~62 ),
	.shareout());
defparam \op_1~61 .extended_lut = "off";
defparam \op_1~61 .lut_mask = 64'h0000FA500000FF00;
defparam \op_1~61 .shared_arith = "off";

cyclonev_lcell_comb \op_1~65 (
	.dataa(!op_11),
	.datab(!radical_31),
	.datac(!_9),
	.datad(!radical_30),
	.datae(gnd),
	.dataf(!op_136),
	.datag(gnd),
	.cin(\op_1~62 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_137),
	.cout(\op_1~66 ),
	.shareout());
defparam \op_1~65 .extended_lut = "off";
defparam \op_1~65 .lut_mask = 64'h0000FA500000CC00;
defparam \op_1~65 .shared_arith = "off";

cyclonev_lcell_comb \op_1~54 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_10),
	.datad(!op_138),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~66 ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\op_1~54_cout ),
	.shareout());
defparam \op_1~54 .extended_lut = "off";
defparam \op_1~54 .lut_mask = 64'h00000000000005AF;
defparam \op_1~54 .shared_arith = "off";

cyclonev_lcell_comb \op_1~58 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!radical_4),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\op_1~58_cout ),
	.shareout());
defparam \op_1~58 .extended_lut = "off";
defparam \op_1~58 .lut_mask = 64'h00000000000000FF;
defparam \op_1~58 .shared_arith = "off";

endmodule

module square_lpm_add_sub_6 (
	op_1,
	op_11,
	op_12,
	op_13,
	op_14,
	op_15,
	op_16,
	op_17,
	op_18,
	op_19,
	op_110,
	op_111,
	op_112,
	op_113,
	op_114,
	op_115,
	op_116,
	op_117,
	op_118,
	op_119,
	op_120,
	op_121,
	op_122,
	op_123,
	op_124,
	op_125,
	op_126,
	op_127,
	op_128,
	op_129,
	op_130,
	op_131,
	op_132,
	op_133,
	op_134,
	op_135,
	op_136,
	op_137,
	op_138,
	op_139,
	op_140,
	op_141,
	op_142,
	_,
	_1,
	_2,
	_3,
	_4,
	_5,
	_6,
	_7,
	_8,
	_9,
	_10,
	_11,
	radical_30,
	radical_31,
	radical_2,
	radical_3,
	radical_4,
	radical_5,
	radical_6)/* synthesis synthesis_greybox=0 */;
output 	op_1;
input 	op_11;
input 	op_12;
input 	op_13;
input 	op_14;
input 	op_15;
input 	op_16;
input 	op_17;
input 	op_18;
input 	op_19;
input 	op_110;
input 	op_111;
input 	op_112;
output 	op_113;
output 	op_114;
input 	op_115;
output 	op_116;
input 	op_117;
output 	op_118;
input 	op_119;
output 	op_120;
input 	op_121;
output 	op_122;
input 	op_123;
output 	op_124;
input 	op_125;
output 	op_126;
input 	op_127;
output 	op_128;
input 	op_129;
output 	op_130;
input 	op_131;
output 	op_132;
input 	op_133;
output 	op_134;
input 	op_135;
output 	op_136;
input 	op_137;
output 	op_138;
input 	op_139;
output 	op_140;
input 	op_141;
input 	op_142;
input 	_;
input 	_1;
input 	_2;
input 	_3;
input 	_4;
input 	_5;
input 	_6;
input 	_7;
input 	_8;
input 	_9;
input 	_10;
input 	_11;
input 	radical_30;
input 	radical_31;
input 	radical_2;
input 	radical_3;
input 	radical_4;
input 	radical_5;
input 	radical_6;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



square_add_sub_gjc auto_generated(
	.op_1(op_1),
	.op_11(op_11),
	.op_12(op_12),
	.op_13(op_13),
	.op_14(op_14),
	.op_15(op_15),
	.op_16(op_16),
	.op_17(op_17),
	.op_18(op_18),
	.op_19(op_19),
	.op_110(op_110),
	.op_111(op_111),
	.op_112(op_112),
	.op_113(op_113),
	.op_114(op_114),
	.op_115(op_115),
	.op_116(op_116),
	.op_117(op_117),
	.op_118(op_118),
	.op_119(op_119),
	.op_120(op_120),
	.op_121(op_121),
	.op_122(op_122),
	.op_123(op_123),
	.op_124(op_124),
	.op_125(op_125),
	.op_126(op_126),
	.op_127(op_127),
	.op_128(op_128),
	.op_129(op_129),
	.op_130(op_130),
	.op_131(op_131),
	.op_132(op_132),
	.op_133(op_133),
	.op_134(op_134),
	.op_135(op_135),
	.op_136(op_136),
	.op_137(op_137),
	.op_138(op_138),
	.op_139(op_139),
	.op_140(op_140),
	.op_141(op_141),
	.op_142(op_142),
	._(_),
	._1(_1),
	._2(_2),
	._3(_3),
	._4(_4),
	._5(_5),
	._6(_6),
	._7(_7),
	._8(_8),
	._9(_9),
	._10(_10),
	._11(_11),
	.radical_30(radical_30),
	.radical_31(radical_31),
	.radical_2(radical_2),
	.radical_3(radical_3),
	.radical_4(radical_4),
	.radical_5(radical_5),
	.radical_6(radical_6));

endmodule

module square_add_sub_gjc (
	op_1,
	op_11,
	op_12,
	op_13,
	op_14,
	op_15,
	op_16,
	op_17,
	op_18,
	op_19,
	op_110,
	op_111,
	op_112,
	op_113,
	op_114,
	op_115,
	op_116,
	op_117,
	op_118,
	op_119,
	op_120,
	op_121,
	op_122,
	op_123,
	op_124,
	op_125,
	op_126,
	op_127,
	op_128,
	op_129,
	op_130,
	op_131,
	op_132,
	op_133,
	op_134,
	op_135,
	op_136,
	op_137,
	op_138,
	op_139,
	op_140,
	op_141,
	op_142,
	_,
	_1,
	_2,
	_3,
	_4,
	_5,
	_6,
	_7,
	_8,
	_9,
	_10,
	_11,
	radical_30,
	radical_31,
	radical_2,
	radical_3,
	radical_4,
	radical_5,
	radical_6)/* synthesis synthesis_greybox=0 */;
output 	op_1;
input 	op_11;
input 	op_12;
input 	op_13;
input 	op_14;
input 	op_15;
input 	op_16;
input 	op_17;
input 	op_18;
input 	op_19;
input 	op_110;
input 	op_111;
input 	op_112;
output 	op_113;
output 	op_114;
input 	op_115;
output 	op_116;
input 	op_117;
output 	op_118;
input 	op_119;
output 	op_120;
input 	op_121;
output 	op_122;
input 	op_123;
output 	op_124;
input 	op_125;
output 	op_126;
input 	op_127;
output 	op_128;
input 	op_129;
output 	op_130;
input 	op_131;
output 	op_132;
input 	op_133;
output 	op_134;
input 	op_135;
output 	op_136;
input 	op_137;
output 	op_138;
input 	op_139;
output 	op_140;
input 	op_141;
input 	op_142;
input 	_;
input 	_1;
input 	_2;
input 	_3;
input 	_4;
input 	_5;
input 	_6;
input 	_7;
input 	_8;
input 	_9;
input 	_10;
input 	_11;
input 	radical_30;
input 	radical_31;
input 	radical_2;
input 	radical_3;
input 	radical_4;
input 	radical_5;
input 	radical_6;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \op_1~6 ;
wire \op_1~10 ;
wire \op_1~14 ;
wire \op_1~18 ;
wire \op_1~22 ;
wire \op_1~26 ;
wire \op_1~30 ;
wire \op_1~34 ;
wire \op_1~38 ;
wire \op_1~42 ;
wire \op_1~46 ;
wire \op_1~50 ;
wire \op_1~54 ;
wire \op_1~58 ;
wire \op_1~70 ;
wire \op_1~62_cout ;
wire \op_1~66_cout ;


cyclonev_lcell_comb \op_1~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~62_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(op_1),
	.cout(),
	.shareout());
defparam \op_1~1 .extended_lut = "off";
defparam \op_1~1 .lut_mask = 64'h0000FFFF0000FFFF;
defparam \op_1~1 .shared_arith = "off";

cyclonev_lcell_comb \op_1~5 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!radical_3),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~66_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(op_113),
	.cout(\op_1~6 ),
	.shareout());
defparam \op_1~5 .extended_lut = "off";
defparam \op_1~5 .lut_mask = 64'h00000000000000FF;
defparam \op_1~5 .shared_arith = "off";

cyclonev_lcell_comb \op_1~9 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(gnd),
	.datad(!radical_4),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_114),
	.cout(\op_1~10 ),
	.shareout());
defparam \op_1~9 .extended_lut = "off";
defparam \op_1~9 .lut_mask = 64'h0000AAAA0000AA55;
defparam \op_1~9 .shared_arith = "off";

cyclonev_lcell_comb \op_1~13 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!radical_5),
	.datad(!op_115),
	.datae(gnd),
	.dataf(!op_12),
	.datag(gnd),
	.cin(\op_1~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_116),
	.cout(\op_1~14 ),
	.shareout());
defparam \op_1~13 .extended_lut = "off";
defparam \op_1~13 .lut_mask = 64'h0000FF00000005AF;
defparam \op_1~13 .shared_arith = "off";

cyclonev_lcell_comb \op_1~17 (
	.dataa(!op_11),
	.datab(!radical_6),
	.datac(!op_12),
	.datad(!op_117),
	.datae(gnd),
	.dataf(!op_13),
	.datag(gnd),
	.cin(\op_1~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_118),
	.cout(\op_1~18 ),
	.shareout());
defparam \op_1~17 .extended_lut = "off";
defparam \op_1~17 .lut_mask = 64'h0000FF00000041EB;
defparam \op_1~17 .shared_arith = "off";

cyclonev_lcell_comb \op_1~21 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_),
	.datad(!op_119),
	.datae(gnd),
	.dataf(!op_14),
	.datag(gnd),
	.cin(\op_1~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_120),
	.cout(\op_1~22 ),
	.shareout());
defparam \op_1~21 .extended_lut = "off";
defparam \op_1~21 .lut_mask = 64'h0000FF00000005AF;
defparam \op_1~21 .shared_arith = "off";

cyclonev_lcell_comb \op_1~25 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_1),
	.datad(!op_121),
	.datae(gnd),
	.dataf(!op_15),
	.datag(gnd),
	.cin(\op_1~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_122),
	.cout(\op_1~26 ),
	.shareout());
defparam \op_1~25 .extended_lut = "off";
defparam \op_1~25 .lut_mask = 64'h0000FF00000005AF;
defparam \op_1~25 .shared_arith = "off";

cyclonev_lcell_comb \op_1~29 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_2),
	.datad(!op_123),
	.datae(gnd),
	.dataf(!op_16),
	.datag(gnd),
	.cin(\op_1~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_124),
	.cout(\op_1~30 ),
	.shareout());
defparam \op_1~29 .extended_lut = "off";
defparam \op_1~29 .lut_mask = 64'h0000FF00000005AF;
defparam \op_1~29 .shared_arith = "off";

cyclonev_lcell_comb \op_1~33 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_3),
	.datad(!op_125),
	.datae(gnd),
	.dataf(!op_17),
	.datag(gnd),
	.cin(\op_1~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_126),
	.cout(\op_1~34 ),
	.shareout());
defparam \op_1~33 .extended_lut = "off";
defparam \op_1~33 .lut_mask = 64'h0000FF00000005AF;
defparam \op_1~33 .shared_arith = "off";

cyclonev_lcell_comb \op_1~37 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_4),
	.datad(!op_127),
	.datae(gnd),
	.dataf(!op_18),
	.datag(gnd),
	.cin(\op_1~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_128),
	.cout(\op_1~38 ),
	.shareout());
defparam \op_1~37 .extended_lut = "off";
defparam \op_1~37 .lut_mask = 64'h0000FF00000005AF;
defparam \op_1~37 .shared_arith = "off";

cyclonev_lcell_comb \op_1~41 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_5),
	.datad(!op_129),
	.datae(gnd),
	.dataf(!op_19),
	.datag(gnd),
	.cin(\op_1~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_130),
	.cout(\op_1~42 ),
	.shareout());
defparam \op_1~41 .extended_lut = "off";
defparam \op_1~41 .lut_mask = 64'h0000FF00000005AF;
defparam \op_1~41 .shared_arith = "off";

cyclonev_lcell_comb \op_1~45 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_6),
	.datad(!op_131),
	.datae(gnd),
	.dataf(!op_110),
	.datag(gnd),
	.cin(\op_1~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_132),
	.cout(\op_1~46 ),
	.shareout());
defparam \op_1~45 .extended_lut = "off";
defparam \op_1~45 .lut_mask = 64'h0000FF00000005AF;
defparam \op_1~45 .shared_arith = "off";

cyclonev_lcell_comb \op_1~49 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_7),
	.datad(!op_133),
	.datae(gnd),
	.dataf(!op_111),
	.datag(gnd),
	.cin(\op_1~46 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_134),
	.cout(\op_1~50 ),
	.shareout());
defparam \op_1~49 .extended_lut = "off";
defparam \op_1~49 .lut_mask = 64'h0000FF00000005AF;
defparam \op_1~49 .shared_arith = "off";

cyclonev_lcell_comb \op_1~53 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_8),
	.datad(!op_135),
	.datae(gnd),
	.dataf(!op_112),
	.datag(gnd),
	.cin(\op_1~50 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_136),
	.cout(\op_1~54 ),
	.shareout());
defparam \op_1~53 .extended_lut = "off";
defparam \op_1~53 .lut_mask = 64'h0000FF00000005AF;
defparam \op_1~53 .shared_arith = "off";

cyclonev_lcell_comb \op_1~57 (
	.dataa(gnd),
	.datab(!op_11),
	.datac(!_9),
	.datad(!op_142),
	.datae(gnd),
	.dataf(!op_137),
	.datag(gnd),
	.cin(\op_1~54 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_138),
	.cout(\op_1~58 ),
	.shareout());
defparam \op_1~57 .extended_lut = "off";
defparam \op_1~57 .lut_mask = 64'h0000FC300000FF00;
defparam \op_1~57 .shared_arith = "off";

cyclonev_lcell_comb \op_1~69 (
	.dataa(!radical_31),
	.datab(!op_11),
	.datac(!_10),
	.datad(!radical_30),
	.datae(gnd),
	.dataf(!op_139),
	.datag(gnd),
	.cin(\op_1~58 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_140),
	.cout(\op_1~70 ),
	.shareout());
defparam \op_1~69 .extended_lut = "off";
defparam \op_1~69 .lut_mask = 64'h0000FC300000AA00;
defparam \op_1~69 .shared_arith = "off";

cyclonev_lcell_comb \op_1~62 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_11),
	.datad(!op_141),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~70 ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\op_1~62_cout ),
	.shareout());
defparam \op_1~62 .extended_lut = "off";
defparam \op_1~62 .lut_mask = 64'h00000000000005AF;
defparam \op_1~62 .shared_arith = "off";

cyclonev_lcell_comb \op_1~66 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!radical_2),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\op_1~66_cout ),
	.shareout());
defparam \op_1~66 .extended_lut = "off";
defparam \op_1~66 .lut_mask = 64'h00000000000000FF;
defparam \op_1~66 .shared_arith = "off";

endmodule

module square_lpm_add_sub_7 (
	op_1,
	op_11,
	op_12,
	op_13,
	op_14,
	op_15,
	op_16,
	op_17,
	op_18,
	op_19,
	op_110,
	op_111,
	op_112,
	op_113,
	op_114,
	op_115,
	op_116,
	op_117,
	op_118,
	op_119,
	op_120,
	op_121,
	op_122,
	op_123,
	op_124,
	op_125,
	op_126,
	op_127,
	op_128,
	op_129,
	op_130,
	op_131,
	op_132,
	op_133,
	op_134,
	op_135,
	op_136,
	op_137,
	op_138,
	op_139,
	op_140,
	op_141,
	op_142,
	op_143,
	op_144,
	op_145,
	_,
	_1,
	_2,
	_3,
	_4,
	_5,
	_6,
	_7,
	_8,
	_9,
	_10,
	_11,
	_12,
	radical_30,
	radical_31,
	radical_0,
	radical_1,
	radical_2,
	radical_3,
	radical_4)/* synthesis synthesis_greybox=0 */;
output 	op_1;
input 	op_11;
input 	op_12;
input 	op_13;
input 	op_14;
input 	op_15;
input 	op_16;
input 	op_17;
input 	op_18;
input 	op_19;
input 	op_110;
input 	op_111;
input 	op_112;
input 	op_113;
output 	op_114;
output 	op_115;
input 	op_116;
output 	op_117;
input 	op_118;
output 	op_119;
input 	op_120;
output 	op_121;
input 	op_122;
output 	op_123;
input 	op_124;
output 	op_125;
input 	op_126;
output 	op_127;
input 	op_128;
output 	op_129;
input 	op_130;
output 	op_131;
input 	op_132;
output 	op_133;
input 	op_134;
output 	op_135;
input 	op_136;
output 	op_137;
input 	op_138;
output 	op_139;
input 	op_140;
output 	op_141;
input 	op_142;
output 	op_143;
input 	op_144;
input 	op_145;
input 	_;
input 	_1;
input 	_2;
input 	_3;
input 	_4;
input 	_5;
input 	_6;
input 	_7;
input 	_8;
input 	_9;
input 	_10;
input 	_11;
input 	_12;
input 	radical_30;
input 	radical_31;
input 	radical_0;
input 	radical_1;
input 	radical_2;
input 	radical_3;
input 	radical_4;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



square_add_sub_hjc auto_generated(
	.op_1(op_1),
	.op_11(op_11),
	.op_12(op_12),
	.op_13(op_13),
	.op_14(op_14),
	.op_15(op_15),
	.op_16(op_16),
	.op_17(op_17),
	.op_18(op_18),
	.op_19(op_19),
	.op_110(op_110),
	.op_111(op_111),
	.op_112(op_112),
	.op_113(op_113),
	.op_114(op_114),
	.op_115(op_115),
	.op_116(op_116),
	.op_117(op_117),
	.op_118(op_118),
	.op_119(op_119),
	.op_120(op_120),
	.op_121(op_121),
	.op_122(op_122),
	.op_123(op_123),
	.op_124(op_124),
	.op_125(op_125),
	.op_126(op_126),
	.op_127(op_127),
	.op_128(op_128),
	.op_129(op_129),
	.op_130(op_130),
	.op_131(op_131),
	.op_132(op_132),
	.op_133(op_133),
	.op_134(op_134),
	.op_135(op_135),
	.op_136(op_136),
	.op_137(op_137),
	.op_138(op_138),
	.op_139(op_139),
	.op_140(op_140),
	.op_141(op_141),
	.op_142(op_142),
	.op_143(op_143),
	.op_144(op_144),
	.op_145(op_145),
	._(_),
	._1(_1),
	._2(_2),
	._3(_3),
	._4(_4),
	._5(_5),
	._6(_6),
	._7(_7),
	._8(_8),
	._9(_9),
	._10(_10),
	._11(_11),
	._12(_12),
	.radical_30(radical_30),
	.radical_31(radical_31),
	.radical_0(radical_0),
	.radical_1(radical_1),
	.radical_2(radical_2),
	.radical_3(radical_3),
	.radical_4(radical_4));

endmodule

module square_add_sub_hjc (
	op_1,
	op_11,
	op_12,
	op_13,
	op_14,
	op_15,
	op_16,
	op_17,
	op_18,
	op_19,
	op_110,
	op_111,
	op_112,
	op_113,
	op_114,
	op_115,
	op_116,
	op_117,
	op_118,
	op_119,
	op_120,
	op_121,
	op_122,
	op_123,
	op_124,
	op_125,
	op_126,
	op_127,
	op_128,
	op_129,
	op_130,
	op_131,
	op_132,
	op_133,
	op_134,
	op_135,
	op_136,
	op_137,
	op_138,
	op_139,
	op_140,
	op_141,
	op_142,
	op_143,
	op_144,
	op_145,
	_,
	_1,
	_2,
	_3,
	_4,
	_5,
	_6,
	_7,
	_8,
	_9,
	_10,
	_11,
	_12,
	radical_30,
	radical_31,
	radical_0,
	radical_1,
	radical_2,
	radical_3,
	radical_4)/* synthesis synthesis_greybox=0 */;
output 	op_1;
input 	op_11;
input 	op_12;
input 	op_13;
input 	op_14;
input 	op_15;
input 	op_16;
input 	op_17;
input 	op_18;
input 	op_19;
input 	op_110;
input 	op_111;
input 	op_112;
input 	op_113;
output 	op_114;
output 	op_115;
input 	op_116;
output 	op_117;
input 	op_118;
output 	op_119;
input 	op_120;
output 	op_121;
input 	op_122;
output 	op_123;
input 	op_124;
output 	op_125;
input 	op_126;
output 	op_127;
input 	op_128;
output 	op_129;
input 	op_130;
output 	op_131;
input 	op_132;
output 	op_133;
input 	op_134;
output 	op_135;
input 	op_136;
output 	op_137;
input 	op_138;
output 	op_139;
input 	op_140;
output 	op_141;
input 	op_142;
output 	op_143;
input 	op_144;
input 	op_145;
input 	_;
input 	_1;
input 	_2;
input 	_3;
input 	_4;
input 	_5;
input 	_6;
input 	_7;
input 	_8;
input 	_9;
input 	_10;
input 	_11;
input 	_12;
input 	radical_30;
input 	radical_31;
input 	radical_0;
input 	radical_1;
input 	radical_2;
input 	radical_3;
input 	radical_4;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \op_1~6 ;
wire \op_1~10 ;
wire \op_1~14 ;
wire \op_1~18 ;
wire \op_1~22 ;
wire \op_1~26 ;
wire \op_1~30 ;
wire \op_1~34 ;
wire \op_1~38 ;
wire \op_1~42 ;
wire \op_1~46 ;
wire \op_1~50 ;
wire \op_1~54 ;
wire \op_1~58 ;
wire \op_1~62 ;
wire \op_1~66 ;
wire \op_1~70_cout ;
wire \op_1~74_cout ;


cyclonev_lcell_comb \op_1~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~70_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(op_1),
	.cout(),
	.shareout());
defparam \op_1~1 .extended_lut = "off";
defparam \op_1~1 .lut_mask = 64'h0000FFFF0000FFFF;
defparam \op_1~1 .shared_arith = "off";

cyclonev_lcell_comb \op_1~5 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!radical_1),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~74_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(op_114),
	.cout(\op_1~6 ),
	.shareout());
defparam \op_1~5 .extended_lut = "off";
defparam \op_1~5 .lut_mask = 64'h00000000000000FF;
defparam \op_1~5 .shared_arith = "off";

cyclonev_lcell_comb \op_1~9 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(gnd),
	.datad(!radical_2),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_115),
	.cout(\op_1~10 ),
	.shareout());
defparam \op_1~9 .extended_lut = "off";
defparam \op_1~9 .lut_mask = 64'h0000AAAA0000AA55;
defparam \op_1~9 .shared_arith = "off";

cyclonev_lcell_comb \op_1~13 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!radical_3),
	.datad(!op_116),
	.datae(gnd),
	.dataf(!op_12),
	.datag(gnd),
	.cin(\op_1~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_117),
	.cout(\op_1~14 ),
	.shareout());
defparam \op_1~13 .extended_lut = "off";
defparam \op_1~13 .lut_mask = 64'h0000FF00000005AF;
defparam \op_1~13 .shared_arith = "off";

cyclonev_lcell_comb \op_1~17 (
	.dataa(!op_11),
	.datab(!radical_4),
	.datac(!op_12),
	.datad(!op_118),
	.datae(gnd),
	.dataf(!op_13),
	.datag(gnd),
	.cin(\op_1~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_119),
	.cout(\op_1~18 ),
	.shareout());
defparam \op_1~17 .extended_lut = "off";
defparam \op_1~17 .lut_mask = 64'h0000FF00000041EB;
defparam \op_1~17 .shared_arith = "off";

cyclonev_lcell_comb \op_1~21 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_),
	.datad(!op_120),
	.datae(gnd),
	.dataf(!op_14),
	.datag(gnd),
	.cin(\op_1~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_121),
	.cout(\op_1~22 ),
	.shareout());
defparam \op_1~21 .extended_lut = "off";
defparam \op_1~21 .lut_mask = 64'h0000FF00000005AF;
defparam \op_1~21 .shared_arith = "off";

cyclonev_lcell_comb \op_1~25 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_1),
	.datad(!op_122),
	.datae(gnd),
	.dataf(!op_15),
	.datag(gnd),
	.cin(\op_1~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_123),
	.cout(\op_1~26 ),
	.shareout());
defparam \op_1~25 .extended_lut = "off";
defparam \op_1~25 .lut_mask = 64'h0000FF00000005AF;
defparam \op_1~25 .shared_arith = "off";

cyclonev_lcell_comb \op_1~29 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_2),
	.datad(!op_124),
	.datae(gnd),
	.dataf(!op_16),
	.datag(gnd),
	.cin(\op_1~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_125),
	.cout(\op_1~30 ),
	.shareout());
defparam \op_1~29 .extended_lut = "off";
defparam \op_1~29 .lut_mask = 64'h0000FF00000005AF;
defparam \op_1~29 .shared_arith = "off";

cyclonev_lcell_comb \op_1~33 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_3),
	.datad(!op_126),
	.datae(gnd),
	.dataf(!op_17),
	.datag(gnd),
	.cin(\op_1~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_127),
	.cout(\op_1~34 ),
	.shareout());
defparam \op_1~33 .extended_lut = "off";
defparam \op_1~33 .lut_mask = 64'h0000FF00000005AF;
defparam \op_1~33 .shared_arith = "off";

cyclonev_lcell_comb \op_1~37 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_4),
	.datad(!op_128),
	.datae(gnd),
	.dataf(!op_18),
	.datag(gnd),
	.cin(\op_1~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_129),
	.cout(\op_1~38 ),
	.shareout());
defparam \op_1~37 .extended_lut = "off";
defparam \op_1~37 .lut_mask = 64'h0000FF00000005AF;
defparam \op_1~37 .shared_arith = "off";

cyclonev_lcell_comb \op_1~41 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_5),
	.datad(!op_130),
	.datae(gnd),
	.dataf(!op_19),
	.datag(gnd),
	.cin(\op_1~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_131),
	.cout(\op_1~42 ),
	.shareout());
defparam \op_1~41 .extended_lut = "off";
defparam \op_1~41 .lut_mask = 64'h0000FF00000005AF;
defparam \op_1~41 .shared_arith = "off";

cyclonev_lcell_comb \op_1~45 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_6),
	.datad(!op_132),
	.datae(gnd),
	.dataf(!op_110),
	.datag(gnd),
	.cin(\op_1~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_133),
	.cout(\op_1~46 ),
	.shareout());
defparam \op_1~45 .extended_lut = "off";
defparam \op_1~45 .lut_mask = 64'h0000FF00000005AF;
defparam \op_1~45 .shared_arith = "off";

cyclonev_lcell_comb \op_1~49 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_7),
	.datad(!op_134),
	.datae(gnd),
	.dataf(!op_111),
	.datag(gnd),
	.cin(\op_1~46 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_135),
	.cout(\op_1~50 ),
	.shareout());
defparam \op_1~49 .extended_lut = "off";
defparam \op_1~49 .lut_mask = 64'h0000FF00000005AF;
defparam \op_1~49 .shared_arith = "off";

cyclonev_lcell_comb \op_1~53 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_8),
	.datad(!op_136),
	.datae(gnd),
	.dataf(!op_112),
	.datag(gnd),
	.cin(\op_1~50 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_137),
	.cout(\op_1~54 ),
	.shareout());
defparam \op_1~53 .extended_lut = "off";
defparam \op_1~53 .lut_mask = 64'h0000FF00000005AF;
defparam \op_1~53 .shared_arith = "off";

cyclonev_lcell_comb \op_1~57 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_9),
	.datad(!op_138),
	.datae(gnd),
	.dataf(!op_113),
	.datag(gnd),
	.cin(\op_1~54 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_139),
	.cout(\op_1~58 ),
	.shareout());
defparam \op_1~57 .extended_lut = "off";
defparam \op_1~57 .lut_mask = 64'h0000FF00000005AF;
defparam \op_1~57 .shared_arith = "off";

cyclonev_lcell_comb \op_1~61 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_10),
	.datad(!op_145),
	.datae(gnd),
	.dataf(!op_140),
	.datag(gnd),
	.cin(\op_1~58 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_141),
	.cout(\op_1~62 ),
	.shareout());
defparam \op_1~61 .extended_lut = "off";
defparam \op_1~61 .lut_mask = 64'h0000FA500000FF00;
defparam \op_1~61 .shared_arith = "off";

cyclonev_lcell_comb \op_1~65 (
	.dataa(!op_11),
	.datab(!radical_31),
	.datac(!_11),
	.datad(!radical_30),
	.datae(gnd),
	.dataf(!op_142),
	.datag(gnd),
	.cin(\op_1~62 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_143),
	.cout(\op_1~66 ),
	.shareout());
defparam \op_1~65 .extended_lut = "off";
defparam \op_1~65 .lut_mask = 64'h0000FA500000CC00;
defparam \op_1~65 .shared_arith = "off";

cyclonev_lcell_comb \op_1~70 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_12),
	.datad(!op_144),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~66 ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\op_1~70_cout ),
	.shareout());
defparam \op_1~70 .extended_lut = "off";
defparam \op_1~70 .lut_mask = 64'h00000000000005AF;
defparam \op_1~70 .shared_arith = "off";

cyclonev_lcell_comb \op_1~74 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!radical_0),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\op_1~74_cout ),
	.shareout());
defparam \op_1~74 .extended_lut = "off";
defparam \op_1~74 .lut_mask = 64'h00000000000000FF;
defparam \op_1~74 .shared_arith = "off";

endmodule

module square_lpm_add_sub_8 (
	op_1,
	op_11,
	radical_30,
	radical_28,
	radical_29,
	radical_31)/* synthesis synthesis_greybox=0 */;
output 	op_1;
output 	op_11;
input 	radical_30;
input 	radical_28;
input 	radical_29;
input 	radical_31;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



square_add_sub_shc auto_generated(
	.op_1(op_1),
	.op_11(op_11),
	.radical_30(radical_30),
	.radical_28(radical_28),
	.radical_29(radical_29),
	.radical_31(radical_31));

endmodule

module square_add_sub_shc (
	op_1,
	op_11,
	radical_30,
	radical_28,
	radical_29,
	radical_31)/* synthesis synthesis_greybox=0 */;
output 	op_1;
output 	op_11;
input 	radical_30;
input 	radical_28;
input 	radical_29;
input 	radical_31;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



cyclonev_lcell_comb \op_1~0 (
	.dataa(!radical_30),
	.datab(!radical_28),
	.datac(!radical_29),
	.datad(!radical_31),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(op_1),
	.sumout(),
	.cout(),
	.shareout());
defparam \op_1~0 .extended_lut = "off";
defparam \op_1~0 .lut_mask = 64'h2A7F2A7F2A7F2A7F;
defparam \op_1~0 .shared_arith = "off";

cyclonev_lcell_comb \op_1~1 (
	.dataa(!radical_30),
	.datab(!radical_28),
	.datac(!radical_29),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(op_11),
	.sumout(),
	.cout(),
	.shareout());
defparam \op_1~1 .extended_lut = "off";
defparam \op_1~1 .lut_mask = 64'h6A6A6A6A6A6A6A6A;
defparam \op_1~1 .shared_arith = "off";

endmodule

module square_lpm_add_sub_9 (
	op_1,
	op_11,
	op_12,
	op_13,
	op_14,
	op_15,
	radical_30,
	radical_28,
	radical_29,
	radical_31,
	radical_26,
	radical_27)/* synthesis synthesis_greybox=0 */;
output 	op_1;
output 	op_11;
output 	op_12;
output 	op_13;
input 	op_14;
input 	op_15;
input 	radical_30;
input 	radical_28;
input 	radical_29;
input 	radical_31;
input 	radical_26;
input 	radical_27;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



square_add_sub_thc auto_generated(
	.op_1(op_1),
	.op_11(op_11),
	.op_12(op_12),
	.op_13(op_13),
	.op_14(op_14),
	.op_15(op_15),
	.radical_30(radical_30),
	.radical_28(radical_28),
	.radical_29(radical_29),
	.radical_31(radical_31),
	.radical_26(radical_26),
	.radical_27(radical_27));

endmodule

module square_add_sub_thc (
	op_1,
	op_11,
	op_12,
	op_13,
	op_14,
	op_15,
	radical_30,
	radical_28,
	radical_29,
	radical_31,
	radical_26,
	radical_27)/* synthesis synthesis_greybox=0 */;
output 	op_1;
output 	op_11;
output 	op_12;
output 	op_13;
input 	op_14;
input 	op_15;
input 	radical_30;
input 	radical_28;
input 	radical_29;
input 	radical_31;
input 	radical_26;
input 	radical_27;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \op_1~10 ;
wire \op_1~14 ;
wire \op_1~18 ;
wire \op_1~6_cout ;
wire \op_1~22_cout ;


cyclonev_lcell_comb \op_1~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~6_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(op_1),
	.cout(),
	.shareout());
defparam \op_1~1 .extended_lut = "off";
defparam \op_1~1 .lut_mask = 64'h0000FFFF0000FFFF;
defparam \op_1~1 .shared_arith = "off";

cyclonev_lcell_comb \op_1~9 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!radical_27),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~22_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(op_11),
	.cout(\op_1~10 ),
	.shareout());
defparam \op_1~9 .extended_lut = "off";
defparam \op_1~9 .lut_mask = 64'h00000000000000FF;
defparam \op_1~9 .shared_arith = "off";

cyclonev_lcell_comb \op_1~13 (
	.dataa(gnd),
	.datab(!op_14),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(!radical_28),
	.datag(gnd),
	.cin(\op_1~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_12),
	.cout(\op_1~14 ),
	.shareout());
defparam \op_1~13 .extended_lut = "off";
defparam \op_1~13 .lut_mask = 64'h0000CC330000CCCC;
defparam \op_1~13 .shared_arith = "off";

cyclonev_lcell_comb \op_1~17 (
	.dataa(!radical_31),
	.datab(!op_14),
	.datac(!radical_28),
	.datad(!radical_30),
	.datae(gnd),
	.dataf(!radical_29),
	.datag(gnd),
	.cin(\op_1~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_13),
	.cout(\op_1~18 ),
	.shareout());
defparam \op_1~17 .extended_lut = "off";
defparam \op_1~17 .lut_mask = 64'h0000CF300000AA00;
defparam \op_1~17 .shared_arith = "off";

cyclonev_lcell_comb \op_1~6 (
	.dataa(!op_14),
	.datab(!radical_30),
	.datac(!radical_31),
	.datad(!op_15),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\op_1~6_cout ),
	.shareout());
defparam \op_1~6 .extended_lut = "off";
defparam \op_1~6 .lut_mask = 64'h0000000000005D08;
defparam \op_1~6 .shared_arith = "off";

cyclonev_lcell_comb \op_1~22 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!radical_26),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\op_1~22_cout ),
	.shareout());
defparam \op_1~22 .extended_lut = "off";
defparam \op_1~22 .lut_mask = 64'h00000000000000FF;
defparam \op_1~22 .shared_arith = "off";

endmodule

module square_lpm_add_sub_10 (
	op_1,
	op_11,
	op_12,
	op_13,
	op_14,
	op_15,
	op_16,
	op_17,
	op_18,
	op_19,
	op_110,
	_,
	radical_28,
	radical_24,
	radical_25,
	radical_26,
	radical_27)/* synthesis synthesis_greybox=0 */;
output 	op_1;
input 	op_11;
output 	op_12;
output 	op_13;
input 	op_14;
output 	op_15;
input 	op_16;
output 	op_17;
input 	op_18;
input 	op_19;
input 	op_110;
input 	_;
input 	radical_28;
input 	radical_24;
input 	radical_25;
input 	radical_26;
input 	radical_27;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



square_add_sub_uhc auto_generated(
	.op_1(op_1),
	.op_11(op_11),
	.op_12(op_12),
	.op_13(op_13),
	.op_14(op_14),
	.op_15(op_15),
	.op_16(op_16),
	.op_17(op_17),
	.op_18(op_18),
	.op_19(op_19),
	.op_110(op_110),
	._(_),
	.radical_28(radical_28),
	.radical_24(radical_24),
	.radical_25(radical_25),
	.radical_26(radical_26),
	.radical_27(radical_27));

endmodule

module square_add_sub_uhc (
	op_1,
	op_11,
	op_12,
	op_13,
	op_14,
	op_15,
	op_16,
	op_17,
	op_18,
	op_19,
	op_110,
	_,
	radical_28,
	radical_24,
	radical_25,
	radical_26,
	radical_27)/* synthesis synthesis_greybox=0 */;
output 	op_1;
input 	op_11;
output 	op_12;
output 	op_13;
input 	op_14;
output 	op_15;
input 	op_16;
output 	op_17;
input 	op_18;
input 	op_19;
input 	op_110;
input 	_;
input 	radical_28;
input 	radical_24;
input 	radical_25;
input 	radical_26;
input 	radical_27;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \op_1~10 ;
wire \op_1~14 ;
wire \op_1~18 ;
wire \op_1~22 ;
wire \op_1~6_cout ;
wire \op_1~26_cout ;


cyclonev_lcell_comb \op_1~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~6_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(op_1),
	.cout(),
	.shareout());
defparam \op_1~1 .extended_lut = "off";
defparam \op_1~1 .lut_mask = 64'h0000FFFF0000FFFF;
defparam \op_1~1 .shared_arith = "off";

cyclonev_lcell_comb \op_1~9 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!radical_25),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~26_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(op_12),
	.cout(\op_1~10 ),
	.shareout());
defparam \op_1~9 .extended_lut = "off";
defparam \op_1~9 .lut_mask = 64'h00000000000000FF;
defparam \op_1~9 .shared_arith = "off";

cyclonev_lcell_comb \op_1~13 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(gnd),
	.datad(!radical_26),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_13),
	.cout(\op_1~14 ),
	.shareout());
defparam \op_1~13 .extended_lut = "off";
defparam \op_1~13 .lut_mask = 64'h0000AAAA0000AA55;
defparam \op_1~13 .shared_arith = "off";

cyclonev_lcell_comb \op_1~17 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!radical_27),
	.datad(!op_19),
	.datae(gnd),
	.dataf(!op_14),
	.datag(gnd),
	.cin(\op_1~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_15),
	.cout(\op_1~18 ),
	.shareout());
defparam \op_1~17 .extended_lut = "off";
defparam \op_1~17 .lut_mask = 64'h0000FA500000FF00;
defparam \op_1~17 .shared_arith = "off";

cyclonev_lcell_comb \op_1~21 (
	.dataa(!op_11),
	.datab(!radical_28),
	.datac(!op_19),
	.datad(!op_110),
	.datae(gnd),
	.dataf(!op_16),
	.datag(gnd),
	.cin(\op_1~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_17),
	.cout(\op_1~22 ),
	.shareout());
defparam \op_1~21 .extended_lut = "off";
defparam \op_1~21 .lut_mask = 64'h0000EB410000FF00;
defparam \op_1~21 .shared_arith = "off";

cyclonev_lcell_comb \op_1~6 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_),
	.datad(!op_18),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\op_1~6_cout ),
	.shareout());
defparam \op_1~6 .extended_lut = "off";
defparam \op_1~6 .lut_mask = 64'h00000000000005AF;
defparam \op_1~6 .shared_arith = "off";

cyclonev_lcell_comb \op_1~26 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!radical_24),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\op_1~26_cout ),
	.shareout());
defparam \op_1~26 .extended_lut = "off";
defparam \op_1~26 .lut_mask = 64'h00000000000000FF;
defparam \op_1~26 .shared_arith = "off";

endmodule

module square_lpm_add_sub_11 (
	op_1,
	op_11,
	op_12,
	op_13,
	op_14,
	op_15,
	op_16,
	op_17,
	op_18,
	op_19,
	op_110,
	op_111,
	op_112,
	op_113,
	_,
	_1,
	radical_22,
	radical_23,
	radical_24,
	radical_25,
	radical_26)/* synthesis synthesis_greybox=0 */;
output 	op_1;
input 	op_11;
input 	op_12;
output 	op_13;
output 	op_14;
input 	op_15;
output 	op_16;
input 	op_17;
output 	op_18;
input 	op_19;
output 	op_110;
input 	op_111;
input 	op_112;
input 	op_113;
input 	_;
input 	_1;
input 	radical_22;
input 	radical_23;
input 	radical_24;
input 	radical_25;
input 	radical_26;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



square_add_sub_vhc auto_generated(
	.op_1(op_1),
	.op_11(op_11),
	.op_12(op_12),
	.op_13(op_13),
	.op_14(op_14),
	.op_15(op_15),
	.op_16(op_16),
	.op_17(op_17),
	.op_18(op_18),
	.op_19(op_19),
	.op_110(op_110),
	.op_111(op_111),
	.op_112(op_112),
	.op_113(op_113),
	._(_),
	._1(_1),
	.radical_22(radical_22),
	.radical_23(radical_23),
	.radical_24(radical_24),
	.radical_25(radical_25),
	.radical_26(radical_26));

endmodule

module square_add_sub_vhc (
	op_1,
	op_11,
	op_12,
	op_13,
	op_14,
	op_15,
	op_16,
	op_17,
	op_18,
	op_19,
	op_110,
	op_111,
	op_112,
	op_113,
	_,
	_1,
	radical_22,
	radical_23,
	radical_24,
	radical_25,
	radical_26)/* synthesis synthesis_greybox=0 */;
output 	op_1;
input 	op_11;
input 	op_12;
output 	op_13;
output 	op_14;
input 	op_15;
output 	op_16;
input 	op_17;
output 	op_18;
input 	op_19;
output 	op_110;
input 	op_111;
input 	op_112;
input 	op_113;
input 	_;
input 	_1;
input 	radical_22;
input 	radical_23;
input 	radical_24;
input 	radical_25;
input 	radical_26;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \op_1~10 ;
wire \op_1~14 ;
wire \op_1~18 ;
wire \op_1~22 ;
wire \op_1~26 ;
wire \op_1~6_cout ;
wire \op_1~30_cout ;


cyclonev_lcell_comb \op_1~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~6_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(op_1),
	.cout(),
	.shareout());
defparam \op_1~1 .extended_lut = "off";
defparam \op_1~1 .lut_mask = 64'h0000FFFF0000FFFF;
defparam \op_1~1 .shared_arith = "off";

cyclonev_lcell_comb \op_1~9 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!radical_23),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~30_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(op_13),
	.cout(\op_1~10 ),
	.shareout());
defparam \op_1~9 .extended_lut = "off";
defparam \op_1~9 .lut_mask = 64'h00000000000000FF;
defparam \op_1~9 .shared_arith = "off";

cyclonev_lcell_comb \op_1~13 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(gnd),
	.datad(!radical_24),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_14),
	.cout(\op_1~14 ),
	.shareout());
defparam \op_1~13 .extended_lut = "off";
defparam \op_1~13 .lut_mask = 64'h0000AAAA0000AA55;
defparam \op_1~13 .shared_arith = "off";

cyclonev_lcell_comb \op_1~17 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!radical_25),
	.datad(!op_15),
	.datae(gnd),
	.dataf(!op_12),
	.datag(gnd),
	.cin(\op_1~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_16),
	.cout(\op_1~18 ),
	.shareout());
defparam \op_1~17 .extended_lut = "off";
defparam \op_1~17 .lut_mask = 64'h0000FF00000005AF;
defparam \op_1~17 .shared_arith = "off";

cyclonev_lcell_comb \op_1~21 (
	.dataa(!op_11),
	.datab(!radical_26),
	.datac(!op_12),
	.datad(!op_112),
	.datae(gnd),
	.dataf(!op_17),
	.datag(gnd),
	.cin(\op_1~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_18),
	.cout(\op_1~22 ),
	.shareout());
defparam \op_1~21 .extended_lut = "off";
defparam \op_1~21 .lut_mask = 64'h0000BE140000FF00;
defparam \op_1~21 .shared_arith = "off";

cyclonev_lcell_comb \op_1~25 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_),
	.datad(!op_113),
	.datae(gnd),
	.dataf(!op_19),
	.datag(gnd),
	.cin(\op_1~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_110),
	.cout(\op_1~26 ),
	.shareout());
defparam \op_1~25 .extended_lut = "off";
defparam \op_1~25 .lut_mask = 64'h0000FA500000FF00;
defparam \op_1~25 .shared_arith = "off";

cyclonev_lcell_comb \op_1~6 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_1),
	.datad(!op_111),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\op_1~6_cout ),
	.shareout());
defparam \op_1~6 .extended_lut = "off";
defparam \op_1~6 .lut_mask = 64'h00000000000005AF;
defparam \op_1~6 .shared_arith = "off";

cyclonev_lcell_comb \op_1~30 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!radical_22),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\op_1~30_cout ),
	.shareout());
defparam \op_1~30 .extended_lut = "off";
defparam \op_1~30 .lut_mask = 64'h00000000000000FF;
defparam \op_1~30 .shared_arith = "off";

endmodule

module square_lpm_add_sub_12 (
	op_1,
	op_11,
	op_12,
	op_13,
	op_14,
	op_15,
	op_16,
	op_17,
	op_18,
	op_19,
	op_110,
	op_111,
	op_112,
	op_113,
	op_114,
	op_115,
	_,
	_1,
	_2,
	radical_30,
	radical_31,
	radical_20,
	radical_21,
	radical_22,
	radical_23,
	radical_24)/* synthesis synthesis_greybox=0 */;
output 	op_1;
input 	op_11;
input 	op_12;
input 	op_13;
output 	op_14;
output 	op_15;
input 	op_16;
output 	op_17;
input 	op_18;
output 	op_19;
input 	op_110;
output 	op_111;
input 	op_112;
output 	op_113;
input 	op_114;
input 	op_115;
input 	_;
input 	_1;
input 	_2;
input 	radical_30;
input 	radical_31;
input 	radical_20;
input 	radical_21;
input 	radical_22;
input 	radical_23;
input 	radical_24;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



square_add_sub_0ic auto_generated(
	.op_1(op_1),
	.op_11(op_11),
	.op_12(op_12),
	.op_13(op_13),
	.op_14(op_14),
	.op_15(op_15),
	.op_16(op_16),
	.op_17(op_17),
	.op_18(op_18),
	.op_19(op_19),
	.op_110(op_110),
	.op_111(op_111),
	.op_112(op_112),
	.op_113(op_113),
	.op_114(op_114),
	.op_115(op_115),
	._(_),
	._1(_1),
	._2(_2),
	.radical_30(radical_30),
	.radical_31(radical_31),
	.radical_20(radical_20),
	.radical_21(radical_21),
	.radical_22(radical_22),
	.radical_23(radical_23),
	.radical_24(radical_24));

endmodule

module square_add_sub_0ic (
	op_1,
	op_11,
	op_12,
	op_13,
	op_14,
	op_15,
	op_16,
	op_17,
	op_18,
	op_19,
	op_110,
	op_111,
	op_112,
	op_113,
	op_114,
	op_115,
	_,
	_1,
	_2,
	radical_30,
	radical_31,
	radical_20,
	radical_21,
	radical_22,
	radical_23,
	radical_24)/* synthesis synthesis_greybox=0 */;
output 	op_1;
input 	op_11;
input 	op_12;
input 	op_13;
output 	op_14;
output 	op_15;
input 	op_16;
output 	op_17;
input 	op_18;
output 	op_19;
input 	op_110;
output 	op_111;
input 	op_112;
output 	op_113;
input 	op_114;
input 	op_115;
input 	_;
input 	_1;
input 	_2;
input 	radical_30;
input 	radical_31;
input 	radical_20;
input 	radical_21;
input 	radical_22;
input 	radical_23;
input 	radical_24;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \op_1~10 ;
wire \op_1~14 ;
wire \op_1~18 ;
wire \op_1~22 ;
wire \op_1~26 ;
wire \op_1~30 ;
wire \op_1~6_cout ;
wire \op_1~34_cout ;


cyclonev_lcell_comb \op_1~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~6_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(op_1),
	.cout(),
	.shareout());
defparam \op_1~1 .extended_lut = "off";
defparam \op_1~1 .lut_mask = 64'h0000FFFF0000FFFF;
defparam \op_1~1 .shared_arith = "off";

cyclonev_lcell_comb \op_1~9 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!radical_21),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~34_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(op_14),
	.cout(\op_1~10 ),
	.shareout());
defparam \op_1~9 .extended_lut = "off";
defparam \op_1~9 .lut_mask = 64'h00000000000000FF;
defparam \op_1~9 .shared_arith = "off";

cyclonev_lcell_comb \op_1~13 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(gnd),
	.datad(!radical_22),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_15),
	.cout(\op_1~14 ),
	.shareout());
defparam \op_1~13 .extended_lut = "off";
defparam \op_1~13 .lut_mask = 64'h0000AAAA0000AA55;
defparam \op_1~13 .shared_arith = "off";

cyclonev_lcell_comb \op_1~17 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!radical_23),
	.datad(!op_16),
	.datae(gnd),
	.dataf(!op_12),
	.datag(gnd),
	.cin(\op_1~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_17),
	.cout(\op_1~18 ),
	.shareout());
defparam \op_1~17 .extended_lut = "off";
defparam \op_1~17 .lut_mask = 64'h0000FF00000005AF;
defparam \op_1~17 .shared_arith = "off";

cyclonev_lcell_comb \op_1~21 (
	.dataa(!op_11),
	.datab(!radical_24),
	.datac(!op_12),
	.datad(!op_18),
	.datae(gnd),
	.dataf(!op_13),
	.datag(gnd),
	.cin(\op_1~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_19),
	.cout(\op_1~22 ),
	.shareout());
defparam \op_1~21 .extended_lut = "off";
defparam \op_1~21 .lut_mask = 64'h0000FF00000041EB;
defparam \op_1~21 .shared_arith = "off";

cyclonev_lcell_comb \op_1~25 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_),
	.datad(!op_115),
	.datae(gnd),
	.dataf(!op_110),
	.datag(gnd),
	.cin(\op_1~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_111),
	.cout(\op_1~26 ),
	.shareout());
defparam \op_1~25 .extended_lut = "off";
defparam \op_1~25 .lut_mask = 64'h0000FA500000FF00;
defparam \op_1~25 .shared_arith = "off";

cyclonev_lcell_comb \op_1~29 (
	.dataa(!op_11),
	.datab(!radical_31),
	.datac(!_1),
	.datad(!radical_30),
	.datae(gnd),
	.dataf(!op_112),
	.datag(gnd),
	.cin(\op_1~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_113),
	.cout(\op_1~30 ),
	.shareout());
defparam \op_1~29 .extended_lut = "off";
defparam \op_1~29 .lut_mask = 64'h0000FA500000CC00;
defparam \op_1~29 .shared_arith = "off";

cyclonev_lcell_comb \op_1~6 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_2),
	.datad(!op_114),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\op_1~6_cout ),
	.shareout());
defparam \op_1~6 .extended_lut = "off";
defparam \op_1~6 .lut_mask = 64'h00000000000005AF;
defparam \op_1~6 .shared_arith = "off";

cyclonev_lcell_comb \op_1~34 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!radical_20),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\op_1~34_cout ),
	.shareout());
defparam \op_1~34 .extended_lut = "off";
defparam \op_1~34 .lut_mask = 64'h00000000000000FF;
defparam \op_1~34 .shared_arith = "off";

endmodule

module square_lpm_add_sub_13 (
	op_1,
	op_11,
	op_12,
	op_13,
	op_14,
	op_15,
	op_16,
	op_17,
	op_18,
	op_19,
	op_110,
	op_111,
	op_112,
	op_113,
	op_114,
	op_115,
	op_116,
	op_117,
	op_118,
	_,
	_1,
	_2,
	_3,
	radical_30,
	radical_31,
	radical_18,
	radical_19,
	radical_20,
	radical_21,
	radical_22)/* synthesis synthesis_greybox=0 */;
output 	op_1;
input 	op_11;
input 	op_12;
input 	op_13;
input 	op_14;
output 	op_15;
output 	op_16;
input 	op_17;
output 	op_18;
input 	op_19;
output 	op_110;
input 	op_111;
output 	op_112;
input 	op_113;
output 	op_114;
input 	op_115;
output 	op_116;
input 	op_117;
input 	op_118;
input 	_;
input 	_1;
input 	_2;
input 	_3;
input 	radical_30;
input 	radical_31;
input 	radical_18;
input 	radical_19;
input 	radical_20;
input 	radical_21;
input 	radical_22;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



square_add_sub_1ic auto_generated(
	.op_1(op_1),
	.op_11(op_11),
	.op_12(op_12),
	.op_13(op_13),
	.op_14(op_14),
	.op_15(op_15),
	.op_16(op_16),
	.op_17(op_17),
	.op_18(op_18),
	.op_19(op_19),
	.op_110(op_110),
	.op_111(op_111),
	.op_112(op_112),
	.op_113(op_113),
	.op_114(op_114),
	.op_115(op_115),
	.op_116(op_116),
	.op_117(op_117),
	.op_118(op_118),
	._(_),
	._1(_1),
	._2(_2),
	._3(_3),
	.radical_30(radical_30),
	.radical_31(radical_31),
	.radical_18(radical_18),
	.radical_19(radical_19),
	.radical_20(radical_20),
	.radical_21(radical_21),
	.radical_22(radical_22));

endmodule

module square_add_sub_1ic (
	op_1,
	op_11,
	op_12,
	op_13,
	op_14,
	op_15,
	op_16,
	op_17,
	op_18,
	op_19,
	op_110,
	op_111,
	op_112,
	op_113,
	op_114,
	op_115,
	op_116,
	op_117,
	op_118,
	_,
	_1,
	_2,
	_3,
	radical_30,
	radical_31,
	radical_18,
	radical_19,
	radical_20,
	radical_21,
	radical_22)/* synthesis synthesis_greybox=0 */;
output 	op_1;
input 	op_11;
input 	op_12;
input 	op_13;
input 	op_14;
output 	op_15;
output 	op_16;
input 	op_17;
output 	op_18;
input 	op_19;
output 	op_110;
input 	op_111;
output 	op_112;
input 	op_113;
output 	op_114;
input 	op_115;
output 	op_116;
input 	op_117;
input 	op_118;
input 	_;
input 	_1;
input 	_2;
input 	_3;
input 	radical_30;
input 	radical_31;
input 	radical_18;
input 	radical_19;
input 	radical_20;
input 	radical_21;
input 	radical_22;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \op_1~10 ;
wire \op_1~14 ;
wire \op_1~18 ;
wire \op_1~22 ;
wire \op_1~26 ;
wire \op_1~30 ;
wire \op_1~34 ;
wire \op_1~6_cout ;
wire \op_1~38_cout ;


cyclonev_lcell_comb \op_1~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~6_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(op_1),
	.cout(),
	.shareout());
defparam \op_1~1 .extended_lut = "off";
defparam \op_1~1 .lut_mask = 64'h0000FFFF0000FFFF;
defparam \op_1~1 .shared_arith = "off";

cyclonev_lcell_comb \op_1~9 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!radical_19),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~38_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(op_15),
	.cout(\op_1~10 ),
	.shareout());
defparam \op_1~9 .extended_lut = "off";
defparam \op_1~9 .lut_mask = 64'h00000000000000FF;
defparam \op_1~9 .shared_arith = "off";

cyclonev_lcell_comb \op_1~13 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(gnd),
	.datad(!radical_20),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_16),
	.cout(\op_1~14 ),
	.shareout());
defparam \op_1~13 .extended_lut = "off";
defparam \op_1~13 .lut_mask = 64'h0000AAAA0000AA55;
defparam \op_1~13 .shared_arith = "off";

cyclonev_lcell_comb \op_1~17 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!radical_21),
	.datad(!op_17),
	.datae(gnd),
	.dataf(!op_12),
	.datag(gnd),
	.cin(\op_1~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_18),
	.cout(\op_1~18 ),
	.shareout());
defparam \op_1~17 .extended_lut = "off";
defparam \op_1~17 .lut_mask = 64'h0000FF00000005AF;
defparam \op_1~17 .shared_arith = "off";

cyclonev_lcell_comb \op_1~21 (
	.dataa(!op_11),
	.datab(!radical_22),
	.datac(!op_12),
	.datad(!op_19),
	.datae(gnd),
	.dataf(!op_13),
	.datag(gnd),
	.cin(\op_1~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_110),
	.cout(\op_1~22 ),
	.shareout());
defparam \op_1~21 .extended_lut = "off";
defparam \op_1~21 .lut_mask = 64'h0000FF00000041EB;
defparam \op_1~21 .shared_arith = "off";

cyclonev_lcell_comb \op_1~25 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_),
	.datad(!op_111),
	.datae(gnd),
	.dataf(!op_14),
	.datag(gnd),
	.cin(\op_1~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_112),
	.cout(\op_1~26 ),
	.shareout());
defparam \op_1~25 .extended_lut = "off";
defparam \op_1~25 .lut_mask = 64'h0000FF00000005AF;
defparam \op_1~25 .shared_arith = "off";

cyclonev_lcell_comb \op_1~29 (
	.dataa(gnd),
	.datab(!op_11),
	.datac(!_1),
	.datad(!op_118),
	.datae(gnd),
	.dataf(!op_113),
	.datag(gnd),
	.cin(\op_1~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_114),
	.cout(\op_1~30 ),
	.shareout());
defparam \op_1~29 .extended_lut = "off";
defparam \op_1~29 .lut_mask = 64'h0000FC300000FF00;
defparam \op_1~29 .shared_arith = "off";

cyclonev_lcell_comb \op_1~33 (
	.dataa(!radical_31),
	.datab(!op_11),
	.datac(!_2),
	.datad(!radical_30),
	.datae(gnd),
	.dataf(!op_115),
	.datag(gnd),
	.cin(\op_1~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_116),
	.cout(\op_1~34 ),
	.shareout());
defparam \op_1~33 .extended_lut = "off";
defparam \op_1~33 .lut_mask = 64'h0000FC300000AA00;
defparam \op_1~33 .shared_arith = "off";

cyclonev_lcell_comb \op_1~6 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_3),
	.datad(!op_117),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\op_1~6_cout ),
	.shareout());
defparam \op_1~6 .extended_lut = "off";
defparam \op_1~6 .lut_mask = 64'h00000000000005AF;
defparam \op_1~6 .shared_arith = "off";

cyclonev_lcell_comb \op_1~38 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!radical_18),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\op_1~38_cout ),
	.shareout());
defparam \op_1~38 .extended_lut = "off";
defparam \op_1~38 .lut_mask = 64'h00000000000000FF;
defparam \op_1~38 .shared_arith = "off";

endmodule

module square_lpm_add_sub_14 (
	op_1,
	op_11,
	op_12,
	op_13,
	op_14,
	op_15,
	op_16,
	op_17,
	op_18,
	op_19,
	op_110,
	op_111,
	op_112,
	op_113,
	op_114,
	op_115,
	op_116,
	op_117,
	op_118,
	op_119,
	op_120,
	op_121,
	_,
	_1,
	_2,
	_3,
	_4,
	radical_30,
	radical_31,
	radical_16,
	radical_17,
	radical_18,
	radical_19,
	radical_20)/* synthesis synthesis_greybox=0 */;
output 	op_1;
input 	op_11;
input 	op_12;
input 	op_13;
input 	op_14;
input 	op_15;
output 	op_16;
output 	op_17;
input 	op_18;
output 	op_19;
input 	op_110;
output 	op_111;
input 	op_112;
output 	op_113;
input 	op_114;
output 	op_115;
input 	op_116;
output 	op_117;
input 	op_118;
output 	op_119;
input 	op_120;
input 	op_121;
input 	_;
input 	_1;
input 	_2;
input 	_3;
input 	_4;
input 	radical_30;
input 	radical_31;
input 	radical_16;
input 	radical_17;
input 	radical_18;
input 	radical_19;
input 	radical_20;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



square_add_sub_9jc auto_generated(
	.op_1(op_1),
	.op_11(op_11),
	.op_12(op_12),
	.op_13(op_13),
	.op_14(op_14),
	.op_15(op_15),
	.op_16(op_16),
	.op_17(op_17),
	.op_18(op_18),
	.op_19(op_19),
	.op_110(op_110),
	.op_111(op_111),
	.op_112(op_112),
	.op_113(op_113),
	.op_114(op_114),
	.op_115(op_115),
	.op_116(op_116),
	.op_117(op_117),
	.op_118(op_118),
	.op_119(op_119),
	.op_120(op_120),
	.op_121(op_121),
	._(_),
	._1(_1),
	._2(_2),
	._3(_3),
	._4(_4),
	.radical_30(radical_30),
	.radical_31(radical_31),
	.radical_16(radical_16),
	.radical_17(radical_17),
	.radical_18(radical_18),
	.radical_19(radical_19),
	.radical_20(radical_20));

endmodule

module square_add_sub_9jc (
	op_1,
	op_11,
	op_12,
	op_13,
	op_14,
	op_15,
	op_16,
	op_17,
	op_18,
	op_19,
	op_110,
	op_111,
	op_112,
	op_113,
	op_114,
	op_115,
	op_116,
	op_117,
	op_118,
	op_119,
	op_120,
	op_121,
	_,
	_1,
	_2,
	_3,
	_4,
	radical_30,
	radical_31,
	radical_16,
	radical_17,
	radical_18,
	radical_19,
	radical_20)/* synthesis synthesis_greybox=0 */;
output 	op_1;
input 	op_11;
input 	op_12;
input 	op_13;
input 	op_14;
input 	op_15;
output 	op_16;
output 	op_17;
input 	op_18;
output 	op_19;
input 	op_110;
output 	op_111;
input 	op_112;
output 	op_113;
input 	op_114;
output 	op_115;
input 	op_116;
output 	op_117;
input 	op_118;
output 	op_119;
input 	op_120;
input 	op_121;
input 	_;
input 	_1;
input 	_2;
input 	_3;
input 	_4;
input 	radical_30;
input 	radical_31;
input 	radical_16;
input 	radical_17;
input 	radical_18;
input 	radical_19;
input 	radical_20;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \op_1~10 ;
wire \op_1~14 ;
wire \op_1~18 ;
wire \op_1~22 ;
wire \op_1~26 ;
wire \op_1~30 ;
wire \op_1~34 ;
wire \op_1~38 ;
wire \op_1~6_cout ;
wire \op_1~42_cout ;


cyclonev_lcell_comb \op_1~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~6_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(op_1),
	.cout(),
	.shareout());
defparam \op_1~1 .extended_lut = "off";
defparam \op_1~1 .lut_mask = 64'h0000FFFF0000FFFF;
defparam \op_1~1 .shared_arith = "off";

cyclonev_lcell_comb \op_1~9 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!radical_17),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~42_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(op_16),
	.cout(\op_1~10 ),
	.shareout());
defparam \op_1~9 .extended_lut = "off";
defparam \op_1~9 .lut_mask = 64'h00000000000000FF;
defparam \op_1~9 .shared_arith = "off";

cyclonev_lcell_comb \op_1~13 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(gnd),
	.datad(!radical_18),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_17),
	.cout(\op_1~14 ),
	.shareout());
defparam \op_1~13 .extended_lut = "off";
defparam \op_1~13 .lut_mask = 64'h0000AAAA0000AA55;
defparam \op_1~13 .shared_arith = "off";

cyclonev_lcell_comb \op_1~17 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!radical_19),
	.datad(!op_18),
	.datae(gnd),
	.dataf(!op_12),
	.datag(gnd),
	.cin(\op_1~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_19),
	.cout(\op_1~18 ),
	.shareout());
defparam \op_1~17 .extended_lut = "off";
defparam \op_1~17 .lut_mask = 64'h0000FF00000005AF;
defparam \op_1~17 .shared_arith = "off";

cyclonev_lcell_comb \op_1~21 (
	.dataa(!op_11),
	.datab(!radical_20),
	.datac(!op_12),
	.datad(!op_110),
	.datae(gnd),
	.dataf(!op_13),
	.datag(gnd),
	.cin(\op_1~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_111),
	.cout(\op_1~22 ),
	.shareout());
defparam \op_1~21 .extended_lut = "off";
defparam \op_1~21 .lut_mask = 64'h0000FF00000041EB;
defparam \op_1~21 .shared_arith = "off";

cyclonev_lcell_comb \op_1~25 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_),
	.datad(!op_112),
	.datae(gnd),
	.dataf(!op_14),
	.datag(gnd),
	.cin(\op_1~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_113),
	.cout(\op_1~26 ),
	.shareout());
defparam \op_1~25 .extended_lut = "off";
defparam \op_1~25 .lut_mask = 64'h0000FF00000005AF;
defparam \op_1~25 .shared_arith = "off";

cyclonev_lcell_comb \op_1~29 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_1),
	.datad(!op_114),
	.datae(gnd),
	.dataf(!op_15),
	.datag(gnd),
	.cin(\op_1~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_115),
	.cout(\op_1~30 ),
	.shareout());
defparam \op_1~29 .extended_lut = "off";
defparam \op_1~29 .lut_mask = 64'h0000FF00000005AF;
defparam \op_1~29 .shared_arith = "off";

cyclonev_lcell_comb \op_1~33 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_2),
	.datad(!op_121),
	.datae(gnd),
	.dataf(!op_116),
	.datag(gnd),
	.cin(\op_1~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_117),
	.cout(\op_1~34 ),
	.shareout());
defparam \op_1~33 .extended_lut = "off";
defparam \op_1~33 .lut_mask = 64'h0000FA500000FF00;
defparam \op_1~33 .shared_arith = "off";

cyclonev_lcell_comb \op_1~37 (
	.dataa(!op_11),
	.datab(!radical_31),
	.datac(!_3),
	.datad(!radical_30),
	.datae(gnd),
	.dataf(!op_118),
	.datag(gnd),
	.cin(\op_1~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_119),
	.cout(\op_1~38 ),
	.shareout());
defparam \op_1~37 .extended_lut = "off";
defparam \op_1~37 .lut_mask = 64'h0000FA500000CC00;
defparam \op_1~37 .shared_arith = "off";

cyclonev_lcell_comb \op_1~6 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_4),
	.datad(!op_120),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\op_1~6_cout ),
	.shareout());
defparam \op_1~6 .extended_lut = "off";
defparam \op_1~6 .lut_mask = 64'h00000000000005AF;
defparam \op_1~6 .shared_arith = "off";

cyclonev_lcell_comb \op_1~42 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!radical_16),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\op_1~42_cout ),
	.shareout());
defparam \op_1~42 .extended_lut = "off";
defparam \op_1~42 .lut_mask = 64'h00000000000000FF;
defparam \op_1~42 .shared_arith = "off";

endmodule

module square_lpm_add_sub_15 (
	op_1,
	op_11,
	op_12,
	op_13,
	op_14,
	op_15,
	op_16,
	op_17,
	op_18,
	op_19,
	op_110,
	op_111,
	op_112,
	op_113,
	op_114,
	op_115,
	op_116,
	op_117,
	op_118,
	op_119,
	op_120,
	op_121,
	op_122,
	op_123,
	op_124,
	_,
	_1,
	_2,
	_3,
	_4,
	_5,
	radical_30,
	radical_31,
	radical_14,
	radical_15,
	radical_16,
	radical_17,
	radical_18)/* synthesis synthesis_greybox=0 */;
output 	op_1;
input 	op_11;
input 	op_12;
input 	op_13;
input 	op_14;
input 	op_15;
input 	op_16;
output 	op_17;
output 	op_18;
input 	op_19;
output 	op_110;
input 	op_111;
output 	op_112;
input 	op_113;
output 	op_114;
input 	op_115;
output 	op_116;
input 	op_117;
output 	op_118;
input 	op_119;
output 	op_120;
input 	op_121;
output 	op_122;
input 	op_123;
input 	op_124;
input 	_;
input 	_1;
input 	_2;
input 	_3;
input 	_4;
input 	_5;
input 	radical_30;
input 	radical_31;
input 	radical_14;
input 	radical_15;
input 	radical_16;
input 	radical_17;
input 	radical_18;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



square_add_sub_ajc auto_generated(
	.op_1(op_1),
	.op_11(op_11),
	.op_12(op_12),
	.op_13(op_13),
	.op_14(op_14),
	.op_15(op_15),
	.op_16(op_16),
	.op_17(op_17),
	.op_18(op_18),
	.op_19(op_19),
	.op_110(op_110),
	.op_111(op_111),
	.op_112(op_112),
	.op_113(op_113),
	.op_114(op_114),
	.op_115(op_115),
	.op_116(op_116),
	.op_117(op_117),
	.op_118(op_118),
	.op_119(op_119),
	.op_120(op_120),
	.op_121(op_121),
	.op_122(op_122),
	.op_123(op_123),
	.op_124(op_124),
	._(_),
	._1(_1),
	._2(_2),
	._3(_3),
	._4(_4),
	._5(_5),
	.radical_30(radical_30),
	.radical_31(radical_31),
	.radical_14(radical_14),
	.radical_15(radical_15),
	.radical_16(radical_16),
	.radical_17(radical_17),
	.radical_18(radical_18));

endmodule

module square_add_sub_ajc (
	op_1,
	op_11,
	op_12,
	op_13,
	op_14,
	op_15,
	op_16,
	op_17,
	op_18,
	op_19,
	op_110,
	op_111,
	op_112,
	op_113,
	op_114,
	op_115,
	op_116,
	op_117,
	op_118,
	op_119,
	op_120,
	op_121,
	op_122,
	op_123,
	op_124,
	_,
	_1,
	_2,
	_3,
	_4,
	_5,
	radical_30,
	radical_31,
	radical_14,
	radical_15,
	radical_16,
	radical_17,
	radical_18)/* synthesis synthesis_greybox=0 */;
output 	op_1;
input 	op_11;
input 	op_12;
input 	op_13;
input 	op_14;
input 	op_15;
input 	op_16;
output 	op_17;
output 	op_18;
input 	op_19;
output 	op_110;
input 	op_111;
output 	op_112;
input 	op_113;
output 	op_114;
input 	op_115;
output 	op_116;
input 	op_117;
output 	op_118;
input 	op_119;
output 	op_120;
input 	op_121;
output 	op_122;
input 	op_123;
input 	op_124;
input 	_;
input 	_1;
input 	_2;
input 	_3;
input 	_4;
input 	_5;
input 	radical_30;
input 	radical_31;
input 	radical_14;
input 	radical_15;
input 	radical_16;
input 	radical_17;
input 	radical_18;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \op_1~6 ;
wire \op_1~10 ;
wire \op_1~22 ;
wire \op_1~26 ;
wire \op_1~30 ;
wire \op_1~34 ;
wire \op_1~38 ;
wire \op_1~42 ;
wire \op_1~46 ;
wire \op_1~14_cout ;
wire \op_1~18_cout ;


cyclonev_lcell_comb \op_1~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~14_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(op_1),
	.cout(),
	.shareout());
defparam \op_1~1 .extended_lut = "off";
defparam \op_1~1 .lut_mask = 64'h0000FFFF0000FFFF;
defparam \op_1~1 .shared_arith = "off";

cyclonev_lcell_comb \op_1~5 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!radical_15),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~18_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(op_17),
	.cout(\op_1~6 ),
	.shareout());
defparam \op_1~5 .extended_lut = "off";
defparam \op_1~5 .lut_mask = 64'h00000000000000FF;
defparam \op_1~5 .shared_arith = "off";

cyclonev_lcell_comb \op_1~9 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(gnd),
	.datad(!radical_16),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_18),
	.cout(\op_1~10 ),
	.shareout());
defparam \op_1~9 .extended_lut = "off";
defparam \op_1~9 .lut_mask = 64'h0000AAAA0000AA55;
defparam \op_1~9 .shared_arith = "off";

cyclonev_lcell_comb \op_1~21 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!radical_17),
	.datad(!op_19),
	.datae(gnd),
	.dataf(!op_12),
	.datag(gnd),
	.cin(\op_1~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_110),
	.cout(\op_1~22 ),
	.shareout());
defparam \op_1~21 .extended_lut = "off";
defparam \op_1~21 .lut_mask = 64'h0000FF00000005AF;
defparam \op_1~21 .shared_arith = "off";

cyclonev_lcell_comb \op_1~25 (
	.dataa(!op_11),
	.datab(!radical_18),
	.datac(!op_12),
	.datad(!op_111),
	.datae(gnd),
	.dataf(!op_13),
	.datag(gnd),
	.cin(\op_1~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_112),
	.cout(\op_1~26 ),
	.shareout());
defparam \op_1~25 .extended_lut = "off";
defparam \op_1~25 .lut_mask = 64'h0000FF00000041EB;
defparam \op_1~25 .shared_arith = "off";

cyclonev_lcell_comb \op_1~29 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_),
	.datad(!op_113),
	.datae(gnd),
	.dataf(!op_14),
	.datag(gnd),
	.cin(\op_1~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_114),
	.cout(\op_1~30 ),
	.shareout());
defparam \op_1~29 .extended_lut = "off";
defparam \op_1~29 .lut_mask = 64'h0000FF00000005AF;
defparam \op_1~29 .shared_arith = "off";

cyclonev_lcell_comb \op_1~33 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_1),
	.datad(!op_115),
	.datae(gnd),
	.dataf(!op_15),
	.datag(gnd),
	.cin(\op_1~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_116),
	.cout(\op_1~34 ),
	.shareout());
defparam \op_1~33 .extended_lut = "off";
defparam \op_1~33 .lut_mask = 64'h0000FF00000005AF;
defparam \op_1~33 .shared_arith = "off";

cyclonev_lcell_comb \op_1~37 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_2),
	.datad(!op_117),
	.datae(gnd),
	.dataf(!op_16),
	.datag(gnd),
	.cin(\op_1~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_118),
	.cout(\op_1~38 ),
	.shareout());
defparam \op_1~37 .extended_lut = "off";
defparam \op_1~37 .lut_mask = 64'h0000FF00000005AF;
defparam \op_1~37 .shared_arith = "off";

cyclonev_lcell_comb \op_1~41 (
	.dataa(gnd),
	.datab(!op_11),
	.datac(!_3),
	.datad(!op_124),
	.datae(gnd),
	.dataf(!op_119),
	.datag(gnd),
	.cin(\op_1~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_120),
	.cout(\op_1~42 ),
	.shareout());
defparam \op_1~41 .extended_lut = "off";
defparam \op_1~41 .lut_mask = 64'h0000FC300000FF00;
defparam \op_1~41 .shared_arith = "off";

cyclonev_lcell_comb \op_1~45 (
	.dataa(!radical_31),
	.datab(!op_11),
	.datac(!_4),
	.datad(!radical_30),
	.datae(gnd),
	.dataf(!op_121),
	.datag(gnd),
	.cin(\op_1~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_122),
	.cout(\op_1~46 ),
	.shareout());
defparam \op_1~45 .extended_lut = "off";
defparam \op_1~45 .lut_mask = 64'h0000FC300000AA00;
defparam \op_1~45 .shared_arith = "off";

cyclonev_lcell_comb \op_1~14 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_5),
	.datad(!op_123),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~46 ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\op_1~14_cout ),
	.shareout());
defparam \op_1~14 .extended_lut = "off";
defparam \op_1~14 .lut_mask = 64'h00000000000005AF;
defparam \op_1~14 .shared_arith = "off";

cyclonev_lcell_comb \op_1~18 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!radical_14),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\op_1~18_cout ),
	.shareout());
defparam \op_1~18 .extended_lut = "off";
defparam \op_1~18 .lut_mask = 64'h00000000000000FF;
defparam \op_1~18 .shared_arith = "off";

endmodule

module square_lpm_add_sub_16 (
	op_1,
	op_11,
	op_12,
	op_13,
	op_14,
	op_15,
	op_16,
	op_17,
	op_18,
	op_19,
	op_110,
	op_111,
	op_112,
	op_113,
	op_114,
	op_115,
	op_116,
	op_117,
	op_118,
	op_119,
	op_120,
	op_121,
	op_122,
	op_123,
	op_124,
	op_125,
	op_126,
	op_127,
	_,
	_1,
	_2,
	_3,
	_4,
	_5,
	_6,
	radical_30,
	radical_31,
	radical_12,
	radical_13,
	radical_14,
	radical_15,
	radical_16)/* synthesis synthesis_greybox=0 */;
output 	op_1;
input 	op_11;
input 	op_12;
input 	op_13;
input 	op_14;
input 	op_15;
input 	op_16;
input 	op_17;
output 	op_18;
output 	op_19;
input 	op_110;
output 	op_111;
input 	op_112;
output 	op_113;
input 	op_114;
output 	op_115;
input 	op_116;
output 	op_117;
input 	op_118;
output 	op_119;
input 	op_120;
output 	op_121;
input 	op_122;
output 	op_123;
input 	op_124;
output 	op_125;
input 	op_126;
input 	op_127;
input 	_;
input 	_1;
input 	_2;
input 	_3;
input 	_4;
input 	_5;
input 	_6;
input 	radical_30;
input 	radical_31;
input 	radical_12;
input 	radical_13;
input 	radical_14;
input 	radical_15;
input 	radical_16;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



square_add_sub_bjc auto_generated(
	.op_1(op_1),
	.op_11(op_11),
	.op_12(op_12),
	.op_13(op_13),
	.op_14(op_14),
	.op_15(op_15),
	.op_16(op_16),
	.op_17(op_17),
	.op_18(op_18),
	.op_19(op_19),
	.op_110(op_110),
	.op_111(op_111),
	.op_112(op_112),
	.op_113(op_113),
	.op_114(op_114),
	.op_115(op_115),
	.op_116(op_116),
	.op_117(op_117),
	.op_118(op_118),
	.op_119(op_119),
	.op_120(op_120),
	.op_121(op_121),
	.op_122(op_122),
	.op_123(op_123),
	.op_124(op_124),
	.op_125(op_125),
	.op_126(op_126),
	.op_127(op_127),
	._(_),
	._1(_1),
	._2(_2),
	._3(_3),
	._4(_4),
	._5(_5),
	._6(_6),
	.radical_30(radical_30),
	.radical_31(radical_31),
	.radical_12(radical_12),
	.radical_13(radical_13),
	.radical_14(radical_14),
	.radical_15(radical_15),
	.radical_16(radical_16));

endmodule

module square_add_sub_bjc (
	op_1,
	op_11,
	op_12,
	op_13,
	op_14,
	op_15,
	op_16,
	op_17,
	op_18,
	op_19,
	op_110,
	op_111,
	op_112,
	op_113,
	op_114,
	op_115,
	op_116,
	op_117,
	op_118,
	op_119,
	op_120,
	op_121,
	op_122,
	op_123,
	op_124,
	op_125,
	op_126,
	op_127,
	_,
	_1,
	_2,
	_3,
	_4,
	_5,
	_6,
	radical_30,
	radical_31,
	radical_12,
	radical_13,
	radical_14,
	radical_15,
	radical_16)/* synthesis synthesis_greybox=0 */;
output 	op_1;
input 	op_11;
input 	op_12;
input 	op_13;
input 	op_14;
input 	op_15;
input 	op_16;
input 	op_17;
output 	op_18;
output 	op_19;
input 	op_110;
output 	op_111;
input 	op_112;
output 	op_113;
input 	op_114;
output 	op_115;
input 	op_116;
output 	op_117;
input 	op_118;
output 	op_119;
input 	op_120;
output 	op_121;
input 	op_122;
output 	op_123;
input 	op_124;
output 	op_125;
input 	op_126;
input 	op_127;
input 	_;
input 	_1;
input 	_2;
input 	_3;
input 	_4;
input 	_5;
input 	_6;
input 	radical_30;
input 	radical_31;
input 	radical_12;
input 	radical_13;
input 	radical_14;
input 	radical_15;
input 	radical_16;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \op_1~6 ;
wire \op_1~10 ;
wire \op_1~14 ;
wire \op_1~18 ;
wire \op_1~30 ;
wire \op_1~34 ;
wire \op_1~38 ;
wire \op_1~42 ;
wire \op_1~46 ;
wire \op_1~50 ;
wire \op_1~22_cout ;
wire \op_1~26_cout ;


cyclonev_lcell_comb \op_1~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~22_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(op_1),
	.cout(),
	.shareout());
defparam \op_1~1 .extended_lut = "off";
defparam \op_1~1 .lut_mask = 64'h0000FFFF0000FFFF;
defparam \op_1~1 .shared_arith = "off";

cyclonev_lcell_comb \op_1~5 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!radical_13),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~26_cout ),
	.sharein(gnd),
	.combout(),
	.sumout(op_18),
	.cout(\op_1~6 ),
	.shareout());
defparam \op_1~5 .extended_lut = "off";
defparam \op_1~5 .lut_mask = 64'h00000000000000FF;
defparam \op_1~5 .shared_arith = "off";

cyclonev_lcell_comb \op_1~9 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(gnd),
	.datad(!radical_14),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_19),
	.cout(\op_1~10 ),
	.shareout());
defparam \op_1~9 .extended_lut = "off";
defparam \op_1~9 .lut_mask = 64'h0000AAAA0000AA55;
defparam \op_1~9 .shared_arith = "off";

cyclonev_lcell_comb \op_1~13 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!radical_15),
	.datad(!op_110),
	.datae(gnd),
	.dataf(!op_12),
	.datag(gnd),
	.cin(\op_1~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_111),
	.cout(\op_1~14 ),
	.shareout());
defparam \op_1~13 .extended_lut = "off";
defparam \op_1~13 .lut_mask = 64'h0000FF00000005AF;
defparam \op_1~13 .shared_arith = "off";

cyclonev_lcell_comb \op_1~17 (
	.dataa(!op_11),
	.datab(!radical_16),
	.datac(!op_12),
	.datad(!op_112),
	.datae(gnd),
	.dataf(!op_13),
	.datag(gnd),
	.cin(\op_1~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_113),
	.cout(\op_1~18 ),
	.shareout());
defparam \op_1~17 .extended_lut = "off";
defparam \op_1~17 .lut_mask = 64'h0000FF00000041EB;
defparam \op_1~17 .shared_arith = "off";

cyclonev_lcell_comb \op_1~29 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_),
	.datad(!op_114),
	.datae(gnd),
	.dataf(!op_14),
	.datag(gnd),
	.cin(\op_1~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_115),
	.cout(\op_1~30 ),
	.shareout());
defparam \op_1~29 .extended_lut = "off";
defparam \op_1~29 .lut_mask = 64'h0000FF00000005AF;
defparam \op_1~29 .shared_arith = "off";

cyclonev_lcell_comb \op_1~33 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_1),
	.datad(!op_116),
	.datae(gnd),
	.dataf(!op_15),
	.datag(gnd),
	.cin(\op_1~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_117),
	.cout(\op_1~34 ),
	.shareout());
defparam \op_1~33 .extended_lut = "off";
defparam \op_1~33 .lut_mask = 64'h0000FF00000005AF;
defparam \op_1~33 .shared_arith = "off";

cyclonev_lcell_comb \op_1~37 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_2),
	.datad(!op_118),
	.datae(gnd),
	.dataf(!op_16),
	.datag(gnd),
	.cin(\op_1~34 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_119),
	.cout(\op_1~38 ),
	.shareout());
defparam \op_1~37 .extended_lut = "off";
defparam \op_1~37 .lut_mask = 64'h0000FF00000005AF;
defparam \op_1~37 .shared_arith = "off";

cyclonev_lcell_comb \op_1~41 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_3),
	.datad(!op_120),
	.datae(gnd),
	.dataf(!op_17),
	.datag(gnd),
	.cin(\op_1~38 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_121),
	.cout(\op_1~42 ),
	.shareout());
defparam \op_1~41 .extended_lut = "off";
defparam \op_1~41 .lut_mask = 64'h0000FF00000005AF;
defparam \op_1~41 .shared_arith = "off";

cyclonev_lcell_comb \op_1~45 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_4),
	.datad(!op_127),
	.datae(gnd),
	.dataf(!op_122),
	.datag(gnd),
	.cin(\op_1~42 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_123),
	.cout(\op_1~46 ),
	.shareout());
defparam \op_1~45 .extended_lut = "off";
defparam \op_1~45 .lut_mask = 64'h0000FA500000FF00;
defparam \op_1~45 .shared_arith = "off";

cyclonev_lcell_comb \op_1~49 (
	.dataa(!op_11),
	.datab(!radical_31),
	.datac(!_5),
	.datad(!radical_30),
	.datae(gnd),
	.dataf(!op_124),
	.datag(gnd),
	.cin(\op_1~46 ),
	.sharein(gnd),
	.combout(),
	.sumout(op_125),
	.cout(\op_1~50 ),
	.shareout());
defparam \op_1~49 .extended_lut = "off";
defparam \op_1~49 .lut_mask = 64'h0000FA500000CC00;
defparam \op_1~49 .shared_arith = "off";

cyclonev_lcell_comb \op_1~22 (
	.dataa(!op_11),
	.datab(gnd),
	.datac(!_6),
	.datad(!op_126),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\op_1~50 ),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\op_1~22_cout ),
	.shareout());
defparam \op_1~22 .extended_lut = "off";
defparam \op_1~22 .lut_mask = 64'h00000000000005AF;
defparam \op_1~22 .shared_arith = "off";

cyclonev_lcell_comb \op_1~26 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!radical_12),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\op_1~26_cout ),
	.shareout());
defparam \op_1~26 .extended_lut = "off";
defparam \op_1~26 .lut_mask = 64'h00000000000000FF;
defparam \op_1~26 .shared_arith = "off";

endmodule
