
module bu_nlower (
	output zero,overflow,underflow,
	output data_available,
	output [31:0]  result,
	input [31:0] data_b_accum,
	input [31:0] dataa_mul,datab_mul,
	input clock,clk_en,aclr,
	input data_in_flag
	
);

	//wire  aclr, clk_en, clock;
	wire	  ov1,ov2;
	wire	[31:0]  mult_out;
	wire	  uf1,uf2;
	wire	  z1,z2;
	reg[10:0] data_available_add = 11'b0;
	
	
	assign overflow = ov1 && ov2;
	assign underflow = uf1 && uf2;	
	assign zero = z1 && z2;
	assign data_available = data_available_add[10];
	
	always @(posedge clock) begin
		if (data_in_flag)
			data_available_add <= {data_available_add[9:0],1'b1};
		else
			data_available_add <= data_available_add << 1;
	end

	fpmult a0 (
		.aclr(aclr),
		.clk_en(clk_en),
		.clock(clock),
		.dataa(dataa_mul),
		.datab(datab_mul),
		.overflow(ov1),
		.result(mult_out),
		.underflow(uf1),
		.zero(z1)
		);
		
	
	fpadd a1 (
		.aclr(aclr),
		.clk_en(clk_en),
		.clock(clock),
		.dataa(mult_out),
		.datab(data_b_accum),
		.overflow(ov2),
		.result(result),
		.underflow(uf2),
		.zero(z2)
		);

endmodule 

