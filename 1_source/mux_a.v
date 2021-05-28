module mux_a (
input first,
input [31:0] a,
output reg [31:0] c
);

	
always @ (*) begin
	
	if(first) begin
		c<=32'b0;
	end
	else begin
		c<=a;
	end

end

endmodule 