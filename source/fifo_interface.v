module fifo_interface (
	input wire 			wr_rst,
	input wire 			wr_clk,
	input wire 			wr_en_l,wr_en_d,

	input wire [127:0]	wr_data_l,wr_data_diag, //(4*DATA_WIDTH)-1:0

	input wire 			rd_rst,
	input wire 			rd_clk,
	input wire 			rd_en_l1,rd_en_l2,rd_en_l3,rd_en_l4,rd_en_diag,
	
	output  [31:0]	rd_data_l1,rd_data_l2,rd_data_l3,rd_data_l4,rd_data_diag, //[(DATA_WIDTH)-1:0]	

	output  			full_l1,full_l2,full_l3,full_l4,full_diag,
	output  			empty_l1,empty_l2,empty_l3,empty_l4,empty_diag

);


parameter DATA_WIDTH = 32;

dual_clock_fifo l1 (	.wr_rst_i(wr_rst),.wr_clk_i(wr_clk),.wr_en_i(wr_en_l),.rd_rst_i(rd_rst),.rd_clk_i(rd_clk),
							.rd_en_i(rd_en_l1),
							.rd_data_o(rd_data_l1),
							.full_o(full_l1),
							.empty_o(empty_l1),
							.wr_data_i(wr_data_l[31:0])
							);

dual_clock_fifo l2 (	.wr_rst_i(wr_rst),.wr_clk_i(wr_clk),.wr_en_i(wr_en_l),.rd_rst_i(rd_rst),.rd_clk_i(rd_clk),
							.rd_en_i(rd_en_l2),
							.rd_data_o(rd_data_l2),
							.full_o(full_l2),
							.empty_o(empty_l2),
							.wr_data_i(wr_data_l[63:32])
							);
dual_clock_fifo l3 ( .wr_rst_i(wr_rst),.wr_clk_i(wr_clk),.wr_en_i(wr_en_l),.rd_rst_i(rd_rst),.rd_clk_i(rd_clk),
							.rd_en_i(rd_en_l3),
							.rd_data_o(rd_data_l3),
							.full_o(full_l3),
							.empty_o(empty_l3),
							.wr_data_i(wr_data_l[95:64])
							);
dual_clock_fifo l4 ( .wr_rst_i(wr_rst),.wr_clk_i(wr_clk),.wr_en_i(wr_en_l),.rd_rst_i(rd_rst),.rd_clk_i(rd_clk),
							.rd_en_i(rd_en_l4),
							.rd_data_o(rd_data_l4),
							.full_o(full_l4),
							.empty_o(empty_l4),
							.wr_data_i(wr_data_l[127:96])
							);
							
dual_clock_fifo diag(.wr_rst_i(wr_rst),.wr_clk_i(wr_clk),.wr_en_i(wr_en_d),.rd_rst_i(rd_rst),.rd_clk_i(rd_clk),
							.rd_en_i(rd_en_diag),
							.rd_data_o(rd_data_diag),
							.full_o(full_diag),
							.empty_o(empty_diag),
							.wr_data_i(wr_data_diag[31:0])
							);

endmodule 