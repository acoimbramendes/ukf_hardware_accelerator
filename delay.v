module delay(
input[31:0] a,
input clk,
input data_available_a,
output data_available_b,
output[31:0] b

);

parameter delay_size = 13;

wire[31:0] in[delay_size:0];
wire[delay_size:0] data_in_flag;

assign  in[0] = a;
assign  data_in_flag[0] = data_available_a;
assign  b = in[delay_size];
assign  data_available_b = data_in_flag[delay_size];

genvar i;
generate
	for(i=0; i< delay_size; i=i+1) begin: delay_loop
		delay_block ao_delay(
					.a(in[i]),
					.clk(clk),
					.data_available_a(data_in_flag[i]),
					.data_available_b(data_in_flag[i+1]),
					.b(in[i+1])
		);
		
	end


endgenerate





endmodule 