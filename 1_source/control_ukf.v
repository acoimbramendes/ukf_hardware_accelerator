module control_ukf (
		input clock,areset,
		input [5:0] remain,
		input [5:0] size,
		input [5:0] matrix_size,
		input start_begin,stop_pipeline,
		output data_in_1,data_in_2,data_in_3,data_in_4, 
		output reg diag_done, clear,data_available_diag,
		output reg clock_en_diag,clock_en1, clock_en2,clock_en3,clock_en4,
		output first,
		output row_start, finish,stop
	);
/*
ajustar clock_enable
logica da disponibilidade do divisor 

*/

// parameter declarations
parameter start = 3'b000; // state labels and state encoding
parameter diag_start = 3'b001;
parameter diag = 3'b010;
parameter lower_start = 3'b011;
parameter lower = 3'b100;
parameter waits = 3'b101;
//parameter sBU4 = 2'b11;




// interal variables declaration section
reg [2:0] state, next_state;
reg [4:0] count_diag=4'b0;
reg [6:0] count_lower=4'b0;
reg count_diag_start, count_lower_start;
reg data_available_lower;
reg running;
wire lower_start_s1,lower_start_s2;
reg [3:0] data_aux1,data_aux2,data_aux3,data_aux4;
reg [5:0] row;
assign first = (row < 4'b0010);
assign row_start = (count_lower == 6'b00110);
assign lower_start_s1=(count_diag>=5'b10101);
assign lower_start_s2=(count_diag==5'b10110);
assign finish=row> matrix_size;
assign stop = ~(stop_pipeline && (data_in_1 || data_in_2 || data_in_3 || data_in_4));
// clocked procedure with assynchronous reset

always @ (posedge clock or posedge areset)
if (areset) // reset strategy
state <= start;
else
state <= next_state;

/* Logic for starting calculation */
//cc counting
always @ (posedge clock) begin
	
	if(count_diag_start==1'b1) begin
		count_diag<=count_diag + 1'b1;
	end
	else begin
		count_diag<=5'b0;
	end	
	if(count_lower_start==1'b1) begin
		count_lower<=count_lower + 1'b1;
	end
	else begin
		count_lower<=6'b0;
	end
end 

always @ (posedge clock)begin
	if (areset) begin
		row<=6'b0000;
	end
	else if (start_begin & (~running)) begin
		row<=6'b0000;
	end
	else if (diag_done)begin
		row <=row+1'b1;
	end
end

reg [2:0] counting=3'b001;
always @ (posedge clock) begin
	if(diag_done && counting < 3'b100) begin
		counting <= counting + 3'b001;
		end
	else if (diag_done && (counting == 3'b100)) begin
		counting <= 3'b000;
		end
	else if (state == 3'b0 || state == 3'b101) begin
		counting <= 3'b000;
		end
end
// combinational procedure with case statement and output logic
always @ (state or start_begin or count_diag or count_lower or counting)
begin
	next_state <= state; // default assignment to state and output variables
		case (state)
		start:
			begin
				 //clear bits
				clear <=1'b1;     
				//clear data_available
				data_available_diag<=1'b0;
				data_available_lower<=1'b0;
				//clock_en for all blocks - shutted down for saving power
				clock_en_diag <=1'b1;
				clock_en1 <=1'b0;
				clock_en2 <=1'b0;
				clock_en3 <=1'b0;
				clock_en4 <=1'b0;
				//diag_done for state machine ndiag_control
				diag_done<=1'b0;
				
				//internal control flags
				count_diag_start<=1'b0;
				count_lower_start<=1'b0;
				//lower_start_s<=1'b0;
				//calculation is running
				running<=1'b0;
				//flag for first lower
				//row_start<=1'b0;
				
				if (start_begin) begin
					next_state <= diag_start;
				end
				else begin
					next_state<=start;
				end
			end
			
		diag_start:
			begin
				 //clear bits
				clear <=1'b0;     
				//clear data_available
				data_available_diag<=1'b1;
				data_available_lower<=1'b0;
				//clock_en for all blocks
				clock_en_diag <=1'b1;
				clock_en1 <=1'b1;
				clock_en2 <=1'b1;
				clock_en3 <=1'b1;
				clock_en4 <=1'b1;
				//diag_done for state machine ndiag_control
				diag_done<=1'b0;
				
				//internal control flags
				count_diag_start<=1'b1;
				count_lower_start<=1'b0;
				//lower_start_s<=1'b0;
				
				//calculation is running
				running<=1'b1;
				//flag for first lower
				//row_start<=1'b0;
				
				
				next_state<=diag;

			end
			
			diag:
			begin
				 //clear bits
				clear <=1'b0;     
				//clear data_available
				data_available_diag<=1'b0;
				data_available_lower<=1'b0;
				//clock_en for all blocks
				clock_en_diag <=1'b1;
				clock_en1 <=1'b1;
				clock_en2 <=1'b1;
				clock_en3 <=1'b1;
				clock_en4 <=1'b1;
				//diag_done for state machine ndiag_control
				diag_done<=1'b0;
				//internal control flags
				count_diag_start<=1'b1;
				count_lower_start<=1'b0;
			//	lower_start_s<=1'b0;
				//calculation is running
				running<=1'b1;
				//flag for first lower
				//row_start<=1'b0;
				
				if (count_diag>=5'b10110) begin //wait until
					next_state <= lower_start;
				end
				else begin
					next_state<=diag;
				end
			end
			
			lower_start:
			begin
				 //clear bits
				clear <=1'b0;     
				//clear data_available
				data_available_diag<=1'b0;
				data_available_lower<=1'b1;
				//clock_en for all blocks - shutted down for saving power
				clock_en_diag <=1'b1;
				clock_en1 <=1'b1;
				clock_en2 <=1'b1;
				clock_en3 <=1'b1;
				clock_en4 <=1'b1;
				//diag_done for state machine ndiag_control
				diag_done<=1'b1;
				//internal control flags
				count_diag_start<=1'b0;
				count_lower_start<=1'b1;
				//lower_start_s<=1'b1;
				//calculation is running
				running<=1'b1;
				//flag for first lower
				//row_start<=1'b1;
				if (finish) next_state<=start;
				else next_state<=lower;

			end
			
			lower:
			begin
				 //clear bits
				clear <=1'b0;     
				//clear data_available
				data_available_diag<=1'b0;
				data_available_lower<=1'b1;
				//clock_en for all blocks - shutted down for saving power
				clock_en_diag <=1'b1;
				clock_en1 <=1'b1;
				clock_en2 <=1'b1;
				clock_en3 <=1'b1;
				clock_en4 <=1'b1;
				//diag_done for state machine ndiag_control
				diag_done<=1'b0;
				//internal control flags
				count_diag_start<=1'b0;
				count_lower_start<=1'b1;
				//lower_start_s<=1'b0;
				//calculation is running
				running<=1'b1;
				//flag for first lower
				//row_start<=1'b0;
				
				
				if (count_lower==6'b011000 && (counting<3'b100)) begin //wait until
					next_state <= diag_start;
				end
				else if (count_lower==6'b011000 && (counting==3'b100)) begin //wait until
					next_state <= waits;
				end
				else begin
					next_state<=lower;
				end
			end
			waits: begin
				 //clear bits
				clear <=1'b0;     
				//clear data_available
				data_available_diag<=1'b0;
				data_available_lower<=1'b0;
				//clock_en for all blocks - shutted down for saving power
				clock_en_diag <=1'b1;
				clock_en1 <=1'b1;
				clock_en2 <=1'b1;
				clock_en3 <=1'b1;
				clock_en4 <=1'b1;
				//diag_done for state machine ndiag_control
				diag_done<=1'b0;
				//internal control flags
				count_diag_start<=1'b0;
				count_lower_start<=1'b0;
				//lower_start_s<=1'b0;
				//calculation is running
				running<=1'b1;
				//flag for first lower
				//row_start<=1'b0;
				next_state <=diag_start;
			end
	
		
		
		default: 
			begin
				next_state <=start;
			end
		endcase
end

vector a1 (
.size(matrix_size),
.clock(clock), .start_begin(running), .lower_start1(lower_start_s1), .lower_start2(lower_start_s2), .data_available_lower(data_available_lower),
.vector_aux(vector_aux), .first(first),
.data_in1(data_in_1), .data_in2(data_in_2),.data_in3(data_in_3),.data_in4(data_in_4)
);

endmodule

