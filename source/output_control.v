module output_control (

		input data_available_diag ,data_available_1, data_available_2,data_available_3, data_available_4,reset,clock,finish,
		input [31:0] lower1,lower2,lower3,lower4,diag,
		output reg [127:0] write_data,
		output reg [ 15: 0] byteenable,
		output reg [  9: 0] address,
		output clken2, chipselect2,
		output reg write


);
wire [4:0] data_available;
wire aux1;
assign clken2 = 1'b1;
assign chipselect2 = 1'b1;
assign data_available = { data_available_diag ,data_available_1, data_available_2,data_available_3, data_available_4 } ;
assign aux1 = data_available_diag || data_available_1 || data_available_2 || data_available_3 ||data_available_4;
reg[15:0] count;
reg aux;
always @ (posedge clock) begin
	if (reset) begin
		address<= 9'b01;

	end
	else if (finish) begin
		address<= 9'h00;

	end
	else if (aux1) begin
		address<= address+ 1'b1;

	end
	else begin
		address<= address;
	end
end
// teste








always @ (*) begin
	if (reset) begin
		write<=1'b0;
		byteenable <= 16'hFFFF;
		write_data <= {32'hAfAfAfAf,32'hAfAfAfAf,32'hAfAfAfAf,32'hAfAfAfAf};
	end
	else if(finish) begin
		write<=1'b1;
		byteenable <= 16'h000F;
		write_data <= {32'h00000000,32'h00000000,32'h00000000,32'h00DEAD11};
	end
	else if (data_available_diag) begin
				write<=1'b1;
				byteenable <= 16'hFFFF;
				write_data <=  {32'h11DDDDDD,diag[31:0],diag[31:0],32'h00DDDDDD};//{16'h3D,count,16'h2D,count,16'h1D,count,16'h0D,count};//{32'h11DDDDDD,32'h10DDDDDD,32'h01DDDDDD,32'h00DDDDDD};
		end
	
	else if (data_available_1 || data_available_2 || data_available_3 ||data_available_4) begin
				write<=1'b1;
				byteenable <= 16'hFFFF;
				write_data <=  {32'h11CCCCCC,32'h10CCCCCC,32'h01CCCCCC,32'h00CCCCCC};//{16'h3D,count,16'h2D,count,16'h1D,count,16'h0D,count};//{32'h11DDDDDD,32'h10DDDDDD,32'h01DDDDDD,32'h00DDDDDD};
	
	end
	
	else begin
				write<=1'b0;
				byteenable <= 16'hFFFF;
				write_data <=  {32'h11AAAAAA,32'h10AAAAAA,32'h01AAAAAA,32'h00AAAAAA};//{16'h30,count,16'h20,count,16'h10,count,16'h00,count};//{32'h11AAAAAA,32'h10AAAAAA,32'h01AAAAAA,32'h00AAAAAA};

/*	case(data_available)
			5'b00000: begin
				write<=1'b0;
				byteenable <= 16'hFFFF;
				write_data <=  {32'h11AAAAAA,32'h10AAAAAA,32'h01AAAAAA,32'h00AAAAAA};//{16'h30,count,16'h20,count,16'h10,count,16'h00,count};//{32'h11AAAAAA,32'h10AAAAAA,32'h01AAAAAA,32'h00AAAAAA};
			end
			5'b10000: begin
				write<=1'b1;
				byteenable <= 16'hFFFF;
				write_data <=  {32'h11DDDDDD,32'h10DDDDDD,32'h01DDDDDD,32'h00DDDDDD};//{16'h3D,count,16'h2D,count,16'h1D,count,16'h0D,count};//{32'h11DDDDDD,32'h10DDDDDD,32'h01DDDDDD,32'h00DDDDDD};
			end
			default: begin
				write<=1'b1;
				byteenable <= 16'hFFFF;
				write_data <=  {32'h11CCCCCC,32'h10CCCCCC,32'h01CCCCCC,32'h00CCCCCC};//{16'h3A,count,16'h2A,count,16'h1A,count,16'h0A,count};//{32'h00CCCCCC,32'h00CCCCCC,32'h00CCCCCC,32'h00CCCCCC};
			end		
		endcase
	end*/
	end

end

/*

always @ (*) begin
if (reset) begin
		write<=1'b1;
		byteenable <= 16'hFFFF;//16'h000F;
		write_data <= {32'h00000000,32'h00000000,32'hEEEEEEEE,32'h00000000};
end
else if(finish) begin
		write<=1'b1;
		byteenable <= 16'h000F;
		write_data <= {32'h00000000,32'h00000000,32'h0000001F,32'h00DAED01};
	end
else begin
	 case(data_available)
		5'b00000: begin
			write<=1'b0;
			byteenable <= 16'h0000;
			write_data <= write_data;
			end
		5'b00001: begin
			write<=1'b1;
			byteenable <= 16'hFFFF;//16'h000F;
			write_data <= {32'h00000000,32'h00000000,32'h00000000,lower4[31:0]};
			end
		5'b00011: begin
			write<=1'b1;
			byteenable <= 16'hFFFF;//16'h00FF;
			write_data <= {32'h00000000,32'h00000000,lower3[31:0],lower4[31:0]};
			end
		5'b0111: begin
			write<=1'b1;
			byteenable <= 16'hFFFF;//16'h0FFF;
			write_data <= {32'h00000000,lower2[31:0],lower3[31:0],lower4[31:0]};
			end
		5'b01111: begin
			write<=1'b1;
			byteenable <= 16'hFFFF;//16'hFFFF;
			write_data <= {lower1[31:0],lower2[31:0],lower3[31:0],lower4[31:0]};
			end
		5'b01000: begin
			write<=1'b1;
			byteenable <= 16'hFFFF;//16'h000F;
			write_data <= {32'h00000000,32'h00000000,32'h00000000,lower1[31:0]};
			end
		5'b01100: begin
			write<=1'b1;
			byteenable <= 16'hFFFF;//16'h00FF;
			write_data <= {32'h00000000,32'h00000000,lower2[31:0],lower1[31:0]};
			end
		5'b01110: begin
			write<=1'b1;
			byteenable <= 16'hFFFF;//16'h0FFF;
			write_data <= {32'h00000000,lower3[31:0],lower2[31:0],lower1[31:0]};
			end
		5'b10000: begin
			write<=1'b1;
			byteenable <= 16'hFFFF;//16'h000F;
			write_data<= {32'hFFFFF0FF,diag[31:0],diag[31:0],diag[31:0]};
		end	
		default:begin
			write<=1'b1;
			write_data <= write_data;
			end
	 endcase
 end
end*/


endmodule 