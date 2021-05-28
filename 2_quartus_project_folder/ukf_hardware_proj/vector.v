module vector (
input[3:0] size,
input clock, start_begin, lower_start1,lower_start2, data_available_lower,first,
output reg [15:0] vector_aux,
output reg  data_in1, data_in2,data_in3,data_in4
);


	reg [12:0] vector;	
	reg [3:0] data1,data2,data3,data4;
	reg [12:0] cnt;
	reg [2:0] i,a;
	reg z;

	
	always @ (*) begin
		case (size)
			1: vector <=13'h0001;
			2:	vector <=13'h0003;
			3:	vector <=13'h0007;
			4:	vector <=13'h000F;
			5:	vector <=13'h001F;
			6: vector <=13'h003F;
			7: vector <=13'h007F;
			8: vector <=13'h00FF;
			9: vector <=13'h01FF;
			10: vector <=13'h03FF;
			11: vector <=13'h07FF;
			12: vector <=13'h0FFF;
			13: vector <=13'h1FFF;
			default: vector <=13'h0000;
		endcase
	end

	always @ (posedge clock) begin
		if((lower_start1||data_available_lower) && (a < 3'b100)) begin
			data_in1 <= data1[a];
			data_in2 <= data2[a];
			data_in3 <= data3[a];
			data_in4 <= data4[a];
			a<=a+ 1'b1;
			end
		else if ((lower_start1||data_available_lower) && (a==3'b100)) begin
			data_in1 <= 1'b0;
			data_in2 <= 1'b0;
			data_in3 <= 1'b0;
			data_in4 <= 1'b0;
			a<=a;
		end
		else begin
			a<=3'b0;
			data_in1 <= 1'b0;
			data_in2 <= 1'b0;
			data_in3 <= 1'b0;
			data_in4 <= 1'b0;
		end
	end
	
	always @ (*) begin
			for(i=3'b0; i<4'b100;i=i+1'b1) begin
				data1[i]<= vector_aux[(4*i)];
				data2[i]<= vector_aux[(4*i)+1];
				data3[i]<= vector_aux[(4*i)+2];
				data4[i]<= vector_aux[(4*i)+3];
			end
	end
	
	always @ (posedge clock) begin
			
		if(lower_start2) begin
			cnt <= cnt + 1'b1;
			z<=1'b1;
		end
		
		else if(!data_available_lower && z) begin
			vector_aux[cnt-1'b1] <= 1'b0;
		end
		else if(!start_begin) begin
			cnt <= 4'b0;
			z<=1'b0;
			vector_aux <= vector;
		end
		else begin
			cnt <= cnt;
			vector_aux[cnt] <= vector_aux[cnt];
		end
	
	
	end
	



endmodule 