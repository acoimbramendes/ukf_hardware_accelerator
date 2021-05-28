module delay_block (
input[31:0] a,
input clk,
input data_available_a,
output reg data_available_b,
output reg [31:0] b

);

always @(posedge clk) begin
	b<=a;
	data_available_b<=data_available_a;
end

endmodule 