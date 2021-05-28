module stop_pipe (input clock, n_stop_request,
						output reg stop
);
reg [3:0] count;
//assign stop1 = ~(~n_stop_request && (count == 4'b0));

always @ (posedge clock or negedge n_stop_request) begin
	if (!n_stop_request) begin
		count <=4'b1000;
		stop<= 1'b0;
	end 
	else if (count>4'b0 && stop == 1'b0) begin
		count<=count - 1'b1;
	end
	else begin

		stop<= 1'b1;
	end
end




endmodule 