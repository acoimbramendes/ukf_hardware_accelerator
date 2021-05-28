
module bu_lower (
	output zero,overflow,underflow,division_by_zero,
	output [31:0]  result,
	input [31:0] data_a_sum,data_b_sum,
	input [31:0] datab_div,
	input clock,clk_en,aclr,
	output data_available,
	input data_in_flag
	
);

	//wire  aclr, clk_en, clock;
	wire	  ov1,ov2;
	wire	[31:0]  sum_out;
	wire	  uf1,uf2;
	wire	  z1,z2;
	reg[12:0] data_available_a = 13'b0;
	assign overflow = ov1 && ov2;
	assign underflow = uf1 && uf2;	
	assign zero = z1 && z2;
	
	assign data_available = data_available_a[12];
	
	always @(posedge clock) begin
		if (data_in_flag)
			data_available_a <= {data_available_a[11:0],1'b1};
		else
			data_available_a <= data_available_a << 1;
	end

fpdiv a1 (
		.aclr(aclr),
		.clk_en(clk_en),
		.clock(clock),
		.dataa(sum_out),
		.datab(datab_div),
		.division_by_zero(division_by_zero),
		.overflow(ov1),
		.result(result),
		.underflow(uf1),
		.zero(z1)
		);

	
fpsub a0 (
		.aclr(aclr),
		.clk_en(clk_en),
		.clock(clock),
		.dataa(data_a_sum),
		.datab(data_b_sum),
		.overflow(ov2),
		.result(sum_out),
		.underflow(uf2),
		.zero(z2)
		);

endmodule 

