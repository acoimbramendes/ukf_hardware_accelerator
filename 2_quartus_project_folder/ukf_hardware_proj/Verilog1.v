module bu_ukf (


);

wire ndiag_zero,ndiag_overflo,ndiagunderflow

module bu_ndiag (
	output zero,overflow,underflow,
	output [31:0]  result,
	input [31:0] data_b_accum,
	input [31:0] dataa_mul,
	input clock,clk_en,aclr,
	output data_available,
	input data_in_flag	
);

module bu_nlower (
	output zero,overflow,underflow,
	output data_available,
	output [31:0]  result,
	input [31:0] data_b_accum,
	input [31:0] dataa_mul,datab_mul,
	input clock,clk_en,aclr,
	input data_in_flag
	
);


module bu_lower (
	output zero,overflow,underflow,division_by_zero,
	output [31:0]  result,
	input [31:0] data_a_sum,data_b_sum,
	input [31:0] datab_div,
	input clock,clk_en,aclr,
	output data_available,
	input data_in_flag
	
);

module bu_diag (
	output zero,overflow,underflow,
	output [31:0]  result,
	input [31:0] data_a_sum,data_b_sum,
	input clock,clk_en,aclr,
	output data_available,
	input data_in_flag
	
);