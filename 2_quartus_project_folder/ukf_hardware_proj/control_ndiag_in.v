module control_ndiag_in (
		input clock,areset,diag_done,
		input [31:0] bu1,bu2,bu3,bu4,
		output reg [31:0] ndiag_out
	
	);

// parameter declarations
parameter sBU1 = 2'b00; // state labels and state encoding
parameter sBU2 = 2'b01;
parameter sBU3 = 2'b10;
parameter sBU4 = 2'b11;

// interal variables declaration section
reg [1:0] state, next_state;

// clocked procedure with assynchronous reset

always @ (posedge clock or posedge areset) begin
if (areset) // reset strategy
state <= sBU1;
else
state <= next_state;
end

// combinational procedure with case statement and output logic
always @ (state or diag_done or bu1 or bu2 or bu3 or bu4)
begin
	next_state <= state; // default assignment to state and output variables
		case (state)
		sBU1:
			begin
				ndiag_out <= bu1;
				if (diag_done) begin
					next_state <= sBU2;
				end
			end
		sBU2:
			begin
				ndiag_out <= bu2;
				if (diag_done) begin
					next_state <= sBU3;
				end
			end
		sBU3:
			begin
				ndiag_out <= bu3;
				if (diag_done) begin
					next_state <= sBU4;
				end
			end
		sBU4:
			begin
				ndiag_out <= bu4;
				if (diag_done) begin
					next_state <= sBU1;
				end
			end
		endcase
end
endmodule