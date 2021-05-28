module ufk (
	input [31:0] data_a, data_b,data_c,data_d,
	output reg [127:0] data_out,
	output reg write

);
	reg[31:0] result_ins;
	reg[127:0] result;
	reg overflow;
	reg[2:0] number=3'b0;
	assign data_out=result;
	//assign overflow =result;
	assign result_ins = data_b + data_a + data_c + data_d;
	
	always @ (posedge clock) begin
		
		if((number==3'b0)) begin
			result[31:0] <= result_ins;
			number<=3'b001;
		end
		else if((number==3'b01)) begin
			result[63:32] <= result_ins;
			number<=3'b010;
		end
		else if((number==3'b10)) begin
			result[95:64] <= result_ins;
			number<=3'b011;
		end
		else begin
			result[127:96] <= result_ins;
			number<=3'b0;
			write <=1'b1;
		end
	end	
endmodule



module control_in (
	input begin_calc,write_flag,
	input clock,rst,
	input [127:0] data_in,data_write,
	output reg [127:0] data_write_out,
	output reg [5:0] address,
	output reg [15:0] byteenable,
	output reg clken, reset, write, read, chipselect,
	output reg [31:0] data_a,data_b,data_c,data_d
);
	assign reset=rst;
	assign byteenable=16'hffff;
	assign data_write_out = data_write;
	reg init_read=1'b1;
	reg init_write=1'b1;


	always @ (posedge clock) begin
			if (begin_calc && write_flag) begin
										clken <=1'b1;
										write <=1'b1;
										chipselect <=1'b1;
										read <= 1'b0;
							if(init_write) begin
										address<= 6'b100000;
										init_write<= 1'b0;
							end
							else begin
								address<= address + 6'b01;
							end
			end
			
			else if(begin_calc && (!write_flag)) begin
								if(init_read) begin
											address<= 6'b0;
											clken <=1'b1;
											write <=1'b0;
											read <= 1'b1;
											chipselect <=1'b1;
											init_read<= 1'b0;
										end
								else begin
											{data_a,data_b,data_c,data_d} <= data_in;
											address<= address + 6'b01;
								end
			end
			
			else begin
							init_read <=1'b1;
							address<= 6'b0;
							clken <=1'b1;
							reset <=1'b0;
							write <=1'b0;
							read <= 1'b0;
							chipselect <=1'b0;
							init_write<= 1'b0;
			end
	end
endmodule

module wrapper_control_cal (
	input clock,rst,
	output [5:0] address,
	input [127:0] data_in,
	output [127:0] data_write_mem,
	output  [15:0] byteenable,
	output clken, reset, write, chipselect

);
wire [127:0] data_write_ufk_control;
wire [31:0] data_read_a_ufk_control,data_read_b_ufk_control,data_read_c_ufk_control,data_read_d_ufk_control;
wire write_flag;
wire clock,rst ;

ufk ufk0(
	.data_a(data_read_a_ufk_control), .data_b(data_read_b_ufk_control),.data_c(data_read_c_ufk_control),.data_d(data_read_d_ufk_control),
	.data_out(data_write_ufk_control),
	.write(write_flag)

);


control_in (
	input begin_calc,
	.write_flag(write_flag),
	.clock(clock),
	.rst(rst),
	.data_in(data_in),
	.data_write(data_write_ufk_control),
	.data_write_out(data_write_mem ),
	.address(address),
	.byteenable(byteenable),
	.clken(clken), .
	.reset(reset), 
	.write(write), 
	.chipselect(chipselect),
	.data_a(data_read_a_ufk_control), .data_b(data_read_b_ufk_control),.data_c(data_read_c_ufk_control),.data_d(data_read_d_ufk_control)
);

endmodule
