module output_control2 (

		input data_available_diag ,data_available_1, data_available_2,data_available_3, data_available_4,reset,clock,finish,
		input [31:0] lower1,lower2,lower3,lower4,diag,
		output reg [127:0] write_data,
		output reg [ 15: 0] byteenable,
		output reg [  9: 0] address,
		output clken2, chipselect2,
		output reg write
/*
input wire [  5: 0] onchip_address2,                                               //     s2.address
		input wire onchip_chipselect2,                                                //       .chipselect
		input wire onchip_clken2,                                                //       .clken
		input wire onchip_write2,                                                //       .write
		output wire [127: 0] onchip_readdata2,                                                //       .readdata
		input  wire [127: 0] onchip_writedata2,                                                //       .writedata
		input  wire [ 15: 0] onchip_byteenable2,*/

);
wire [4:0] data_available;

parameter start=3'b00;
parameter setting= 3'b01;
parameter diag_state= 3'b010;
parameter lower_state= 3'b11;

assign clken2 = 1'b1;
assign chipselect2 = 1'b1;
assign data_available = { data_available_diag ,data_available_1, data_available_2,data_available_3, data_available_4 } ;

reg[15:0] count;
reg aux;





always @ (posedge slow_clock) begin
	if(!rst) begin
		state <=next_state;
	end
	else state<= start;
end

always @ (posedge clock) begin
	if (reset) begin
		address<= 9'b01;
	end
	else if (finish) begin
		address<= 9'h00;
	end
	else if (write) begin
		address<= address+ 1'b1;
		end
	else begin
		address<= address;
	end
end

always@(state or empty_diag or data_in_count or finish or matrix_size or fifo_out_diag or wr_enable) begin
	case(state)
		start: begin
			write<=1'b0;
			byteenable <= 16'h0000;
			write_data <= {32'hffffffff,32'hffffffff,32'hffffffff,32'hffffffff};
			if (start) begin
			next_state<= setting;
			end
			else begin
			next_state<= start;
			end
	end
		
		end
		setting: begin
			write<=1'b1;
			byteenable <= 16'h0000;
			write_data <= {32'hEEEEEEEE,32'hEEEEEEEE,32'hEEEEEEEE,32'hEEEEEEEE};
			if (start) begin
			next_state<= setting;
			end
			else begin
			next_state<= start;
			end
		
			 
		end
		
		diag: begin
		
			write<=1'b0;
			byteenable <= 16'hFFFF;
			write_data <= {32'hDDDDDDDD,32'hDDDDDDDD,32'hDDDDDDDD,32'hDDDDDDDD};
			if (start) begin
			next_state<= setting;
			end
			else begin
			next_state<= start;
			end
			
			
		end
		
		lower: begin
		
			write<=1'b0;
			byteenable <= 16'hFFFF;
			write_data <= {32'hCCCCCCCC,32'hCCCCCCCC,32'hCCCCCCCC,32'hCCCCCCCC};
			if (start) begin
			next_state<= setting;
			end
			else begin
			next_state<= start;
			end

		end
		finish_s: begin
			write<=1'b0;
			byteenable <= 16'h0000;
			write_data <= {32'hffffffff,32'hffffffff,32'hffffffff,32'hffffffff};
			if (start) begin
			next_state<= setting;
			end
			else begin
			next_state<= start;
			end
		end
	
	endcase
end





endmodule 