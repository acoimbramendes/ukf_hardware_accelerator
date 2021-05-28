module vector (
input[5:0] size,
input clock, start_begin, lower_start1,lower_start2, data_available_lower,first,
output reg [31:0] vector_aux,
output reg  data_in1, data_in2,data_in3,data_in4
);


	reg [31:0] vector;	
	reg [7:0] data1,data2,data3,data4;
	reg [31:0] cnt;
	reg [3:0] i,a;
	reg z;

	
	always @ (*) begin
		case ((size-1'b1))
			1: vector <=32'h0001;
			2:	vector <=32'h0003;
			3:	vector <=32'h0007;
			4:	vector <=32'h000F;
			5:	vector <=32'h001F;
			6: vector <=32'h003F;
			7: vector <=32'h007F;
			8: vector <=32'h00FF;
			9: vector <=32'h01FF;
			10: vector <=32'h03FF;
			11: vector <=32'h07FF;
			12: vector <=32'h0FFF;
			13: vector <=32'h00001FFF;
			14: vector <=32'h00003FFF;
			15: vector <=32'h00007FFF;
			16: vector <=32'h0000FFFF;
			17: vector <=32'h0001FFFF;
			18: vector <=32'h0003FFFF;
			19: vector <=32'h0007FFFF;
			20: vector <=32'h000FFFFF;
			21: vector <=32'h001FFFFF;
			22: vector <=32'h003FFFFF;
			23: vector <=32'h007FFFFF;
			24: vector <=32'h00FFFFFF;
			25: vector <=32'h01FFFFFF;
			26: vector <=32'h03FFFFFF;
			27: vector <=32'h07FFFFFF;
			28: vector <=32'h0FFFFFFF;
			29: vector <=32'h1FFFFFFF;
			30: vector <=32'h3FFFFFFF;
			31: vector <=32'h7FFFFFFF;
			32: vector <=32'hFFFFFFFF;
			
			default: vector <=13'h0000;
		endcase
	end

	always @ (posedge clock) begin
		if((lower_start1||data_available_lower) && (a < 4'b1000)) begin
			data_in1 <= data1[a];
			data_in2 <= data2[a];
			data_in3 <= data3[a];
			data_in4 <= data4[a];
			a<=a+ 1'b1;
			end
		else if ((lower_start1||data_available_lower) && (a==4'b1000)) begin
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
			for(i=3'b0; i<4'b1000;i=i+1'b1) begin
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