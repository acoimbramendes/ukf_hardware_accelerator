// Testbench
//memory interface

`timescale 1ns/100ps



module tb_top_level_ukf();
	
	reg wr_enable;
	reg  [127:0]	write_data;
	reg aclr,fast_clock,slow_clock;
	reg [5:0] a,i;							
								
	localparam dly = 100;
	
top_level_ukf testando_top (      
	.wr_rst(aclr),
	.wr_enable(wr_enable),
	.write_data(write_data),
	 .reset(aclr),.fast_clock(fast_clock),.slow_clock(slow_clock)
);
											 
 initial begin 
    slow_clock = 0;
	forever begin
    #50 slow_clock = ~slow_clock;
	end 
end

 initial begin 
    fast_clock = 0;
	forever begin
    #25 fast_clock = ~fast_clock;
	end 
end
   initial
   begin
  $display ("reset high");
      aclr <= 1'b1;
      #1000;
	wr_enable<= 1'b0;
	write_data<={32'h00000000,32'h00000000,32'h00000000,32'h00000000};
		
  $display ("reset low");
		#100
		aclr <= 1'b0;
      #200;
      write_data_diag(32'h0000000C);
		//for(i=0; i<12; i=i+1) begin
			write_data_diag(32'h40000000);
		//end
      #1100
		//for(a=0; a<4; a=a+1) begin
			write_data_lower(32'h3f800000,32'h3f800000,32'h3f800000,32'h3f800000);
		//end
		#6600
			wr_enable<= 1'b0;
			write_data<={32'h00000000,32'h00000000,32'h00000000,32'h00000000};
		#1000;
      $display("Successful completion. All transfers passed");
      //$finish;
		$stop;
   end

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
task write_data_diag;
input [31:0] diag1;
begin
		#dly
		wr_enable<= 1'b1;
		write_data<= {32'h00000000,32'h00000000,32'h00000000,diag1};
end
endtask
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
task write_data_lower;
input [31:0] data1,data2,data3,data4;
begin
	#dly
	wr_enable<= 1'b1;
	write_data<= {data4,data3,data2,data1};
end
endtask


///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//localparam CLK_SPEED = 2;  // IF clk = 122.88Mhz = 8.14nS, For half of clock, CLK_SPEED = 8.14nS/2 = 4.07nS

/*
always 
	#5 clk= ~clk; */

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

endmodule
