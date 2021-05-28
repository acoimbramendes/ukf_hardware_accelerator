// Testbench
//memory interface

`timescale 1ns/100ps



module tb_bu_ndiag();
								reg [31:0] data_b_accum;
								reg [31:0] dataa_mul;
								reg clk,clk_en,aclr;
								reg data_in_flag;
								wire data_available;
								wire zero,overflow,underflow;
								wire [31:0]  result;
								
								localparam dly = 20000;
bu_ndiag a0 (      
								 .data_available(data_available),
								 .zero(zero),
								 .overflow(overflow),
								 .underflow(underflow),
								 .result(result),
								
								 .data_b_accum(data_b_accum),
								 .dataa_mul(dataa_mul),
								 .clock(clk),
								 .clk_en(clk_en),
								 .aclr(aclr),
								 .data_in_flag(data_in_flag)

                                  );
											 
 initial begin 
    clk = 0;
	forever begin
    #10000 clk = ~clk;
	end 
end

   initial
   begin
  $display ("reset high");
      aclr <= 1'b1;
      #50000;
		data_b_accum<= 32'b0;
		dataa_mul<= 32'b0;
		clk_en<= 1'b0;
		data_in_flag <= 1'b0;
		
  $display ("reset low");
  
      aclr <= 1'b0;
		clk_en<= 1'b0;
      #55000;
      write_data(32'h40000000); 
      write_data_noflag(32'h00000000	);
		#150000
		write_data(32'h40000000);
		write_data(32'h40400000); 
		write_data(32'h40800000);
		write_data(32'h40a00000);
      write_data_noflag(32'h40c00000);
		write_data_noflag(32'h40e00000);
		write_data(32'h41000000);
		write_data(32'h41100000);
		#100000
		write_data(32'h00000000);
		/*
		
		write_data_acumm(32'h40000000);
		write_data_acumm(32'h40000000);
		write_data_acumm(32'h40000000);
		write_data_acumm(32'h40000000);
		write_data_acumm(32'h40000000);
		write_data_acumm(32'h40000000);
		write_data_acumm(32'h40000000);
		write_data_acumm(32'h40000000);
		write_data_acumm(32'h40000000);
		write_data_acumm(32'h40000000);
		write_data_acumm(32'h40000000);
		write_data_acumm(32'h40000000);
		#100000*/
		aclr <= 1'b0;
      
		#500000;
      $display("Successful completion. All transfers passed");
      //$finish;
		$stop;
   end

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
task write_data;
input [31:0] data;
begin
	#dly;
		data_b_accum<= 32'b0;
		dataa_mul<= data;
		clk_en<= 1'b1;
		data_in_flag <= 1'b1;

end
endtask
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
task write_data_noflag;
input [31:0] data;
begin
	#dly
		data_b_accum<= 32'b0;
		clk_en<= 1'b1;
		dataa_mul<= data;
		data_in_flag <= 1'b0;

end
endtask
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
task write_data_acumm;
input [31:0] data;
begin
	#dly
		data_b_accum<= result;
		dataa_mul<= data;
		data_in_flag <= 1'b0;

end
endtask



///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
localparam CLK_SPEED = 2;  // IF clk = 122.88Mhz = 8.14nS, For half of clock, CLK_SPEED = 8.14nS/2 = 4.07nS

/*
always 
	#5 clk= ~clk; */

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

endmodule
