module latch_a( 
input [31:0] a,
input new,clock,
output reg [31:0] b

);
reg c;

always @(*) begin
	if(new && !c) begin
		b<=a;
	end
	else begin
		b<=b;
	end
end  



always @ (negedge clock) begin
	if (new) begin
		c <= 1'b1;
	end
	else c<= 1'b0;
end 

endmodule 