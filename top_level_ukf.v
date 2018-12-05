module top_level_ukf (
	input  			wr_rst,
	input 			wr_enable,
	input  [127:0]	write_data,
	input reset,fast_clock,slow_clock,
	output wire [127:0]	write_data_out,
	output wire [15:0] byteenable,
	output wire [9:0] address,
	output wire clken2,
	output wire chipselect2, write

);

wire [31:0] rd_data_diag, rd_data_l1,rd_data_l2,rd_data_l3,rd_data_l4 ;
wire empty_l1,empty_l2,empty_l3,empty_l4,empty_diag, fifo_wre_lower,fifo_wre_diag;
wire start,stop_pipeline,fifo_rde_diag,data_in_diag;
wire[5:0] matrix_size_out;
wire data_in_1, data_in_2,	data_in_3,data_in_4;
wire finish,lower1_available,lower2_available,lower3_available,lower4_available,diag_available;
wire running,read_diag;
wire [3:0] parallel_units;


wire[31:0] lower1_out,lower2_out,lower3_out,lower4_out,diag_out;
assign running = 1'b1; //rever

assign parallel_units = 4'b0100;
assign read_diag = fifo_rde_diag || data_in_diag;//fifo_rde_diag || 

fifo_interface fifo_interface1 (

	.wr_rst(wr_rst),
	.wr_clk(slow_clock),
	.wr_en_d(fifo_wre_diag),
	.wr_en_l(fifo_wre_lower),
	.wr_data_l(write_data),.wr_data_diag(write_data),

	.rd_rst(reset),
	.rd_clk(fast_clock),
	
	.rd_en_l1(data_in_1),.rd_en_l2(data_in_2),.rd_en_l3(data_in_3),
	.rd_en_l4(data_in_4),.rd_en_diag(read_diag),
		

	.rd_data_l1(rd_data_l1),.rd_data_l2(rd_data_l2),.rd_data_l3(rd_data_l3),.rd_data_l4(rd_data_l4),
	.rd_data_diag(rd_data_diag),//.full_l1(finish),

	//output reg 			full_l1(),full_l2,full_l3,full_l4,full_diag,
	.empty_l1(empty_l1),.empty_l2(empty_l2),.empty_l3(empty_l3),.empty_l4(empty_l4),.empty_diag(empty_diag)
);

ukf_fifo_control ukf_fifo_control1(
.fifo_out_diag(write_data),//verificar tamanho

.matrix_size_out(matrix_size_out),
.stop_pipeline(stop_pipeline), 
.fifo_wre_diag(fifo_wre_diag), .fifo_wre_lower(fifo_wre_lower),

.fifo_rde_diag(fifo_rde_diag),
.start_begin(start),

.wr_enable(wr_enable),
.empty_l1(empty_l1), .empty_l2(empty_l2),.empty_l3(empty_l3),.empty_l4(empty_l4),
.empty_diag(empty_diag),.running(running),

.fast_clock(fast_clock), 
.slow_clock(slow_clock),
.finish(finish),
.rst(reset)
);


ukf ukf1(
	.clock(fast_clock),
	.reset(reset),
	.start(start),
	.diag(rd_data_diag),
	.lower1(rd_data_l1),
	.lower2(rd_data_l2),
	.lower3(rd_data_l3),
	.lower4(rd_data_l4),
	.matrix_size(matrix_size_out),
	.parallel_units(parallel_units),
	.data_in_1(data_in_1),
	.data_in_2(data_in_2),
	.data_in_3(data_in_3),
	.data_in_4(data_in_4),
	.data_in_diag(data_in_diag),
	.finish(finish),
	.stop_pipeline(stop_pipeline),
	.lower1_available(lower1_available),
	.lower2_available(lower2_available),
	.lower3_available(lower3_available),
	.lower4_available(lower4_available),
	.diag_out(diag_out),
	.lower1_out(lower1_out),
	.lower2_out(lower2_out),
	.lower3_out(lower3_out),
	.lower4_out(lower4_out),
	.diag_available(diag_available)
);

output_control output_control1 (


	.data_available_diag (diag_available),
	.data_available_1(lower1_available), 
	.data_available_2(lower2_available),
	.data_available_3(lower3_available), 
	.data_available_4(lower4_available),
	.lower1(lower1_out),
	.lower2(lower2_out),
	.lower3(lower3_out),
	.lower4(lower4_out),
	.diag(diag_out),
	.write_data(write_data_out),
	.byteenable(byteenable),
	.address(address),
	.clken2(clken2), 
	.chipselect2(chipselect2),
	.reset(reset),
	.clock(fast_clock),
	.write(write),
	.finish(finish)

);

endmodule
