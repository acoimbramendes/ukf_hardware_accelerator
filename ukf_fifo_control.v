module ukf_fifo_control (
input[127:0] fifo_out_diag,
output [5:0] matrix_size_out,
output stop_pipeline,
output reg fifo_wre_diag, fifo_wre_lower,fifo_rde_diag,start_begin,
input wr_enable,
input empty_l1, empty_l2,empty_l3,empty_l4,empty_diag,running, fast_clock, slow_clock,finish,
input rst
);


parameter start=3'b00;
parameter setting_up1= 3'b01;
parameter diag= 3'b10;
parameter lower= 3'b11;
parameter setting_up2 = 3'b100;
parameter finish_s = 3'b101;
reg[5:0] matrix_size;
reg [5:0] data_in_count;
reg data_start_count;
reg [2:0] next_state,state;

assign stop_pipeline = (empty_l1 || empty_l2 || empty_l3 || empty_l4); 
assign matrix_size_out = matrix_size;




always @ (posedge slow_clock) begin
	if (data_start_count)begin
		data_in_count <= data_in_count + 1'b1;
	end
	else begin
		data_in_count <= 4'b0;
	end
		
end

always @ (posedge slow_clock) begin
	if(!rst) begin
		state <=next_state;
	end
	else state<= start;
end

always@(state or empty_diag or data_in_count or finish or matrix_size or fifo_out_diag or wr_enable) begin
	case(state)
		start: begin
			
			matrix_size<=fifo_out_diag[5:0];
			fifo_wre_diag <= 1'b0;
			fifo_wre_lower <= 1'b0;
			data_start_count <= 1'b0;
			fifo_rde_diag <= 1'b0;
			start_begin<=1'b0;
			
			if(wr_enable) next_state<= setting_up1;
			else next_state<= start;
		end
		setting_up1: begin
		
			matrix_size<=matrix_size;
			fifo_wre_diag <= wr_enable;
			fifo_wre_lower <= 1'b0;
			data_start_count <= 1'b0;
			
			fifo_rde_diag <= 1'b0;
			start_begin<=1'b0;
			
			//if(fifo_out_diag==)begin
			next_state<= setting_up2;
			//end
			
		end
		
		setting_up2: begin
		
			matrix_size<=matrix_size;
			fifo_wre_diag <= wr_enable;
			fifo_wre_lower <= 1'b0;
			data_start_count <= 1'b0;
			
			fifo_rde_diag <= 1'b1;
			start_begin<=1'b1;
			
			//if(fifo_out_diag==)begin
			next_state<= diag;
			//end
			
		end
		
		diag: begin
		
			matrix_size<=matrix_size;
			fifo_wre_diag <= wr_enable;
			fifo_wre_lower <= 1'b0;
			data_start_count <= 1'b1;
			fifo_rde_diag <= 1'b0;
			start_begin<=1'b1;
			
			if(data_in_count == (matrix_size - 2'b11)) next_state<=lower;
			else next_state<=diag;
			
		end
		
		lower: begin
		
			matrix_size<=matrix_size;
			fifo_wre_lower <= wr_enable;
			fifo_wre_diag <= 1'b0;
			data_start_count <= 1'b0;
			fifo_rde_diag <= 1'b0;
			start_begin<=1'b1;
			
			
			if(finish) next_state<=finish_s;
			else next_state<=lower;
		end
		finish_s: begin
		
			matrix_size<=matrix_size;
			fifo_wre_lower <=  1'b0;
			fifo_wre_diag <= 1'b0;
			data_start_count <= 1'b0;
			fifo_rde_diag <= 1'b0;
			start_begin<=1'b0;
			
			next_state<=start;

		end
	
	endcase
end





endmodule 
