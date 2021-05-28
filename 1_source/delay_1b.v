module delay_1b (
input a,
input clk,
output reg b

);

always @(posedge clk) begin
	b<=a;
end

endmodule 