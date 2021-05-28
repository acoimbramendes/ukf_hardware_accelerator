
module bu_diag (
	output zero,overflow,underflow,
	output [31:0]  result,
	input [31:0] data_a_sum,data_b_sum,
	input clock,clk_en,aclr,
	output data_available,
	input data_in_flag
	
);

	//wire  aclr, clk_en, clock;
	wire	  ov1,ov2;
	wire	[31:0]  sum_out;
	wire	  uf2;
	wire	  z1,z2;
	reg[22:0] data_available_a = 23'b0;
	
	assign overflow = ov1 && ov2;
	assign underflow = uf2;
	assign zero = z1 && z2;

	assign data_available = data_available_a[22];
	
	always @(posedge clock) begin
		if (data_in_flag)
			data_available_a <= {data_available_a[21:0],1'b1};
		else
			data_available_a <= data_available_a << 1;
	end
fpsquare a1 (
		.aclr(aclr),
		.clk_en(clk_en),
		.clock(clock),
		.data(sum_out),
		.overflow(ov1),
		.result(result),
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

