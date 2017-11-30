`timescale 1ns / 1ps

module counter_testbench();

	reg clk, rst;
	wire firstRnd, finalRnd;

	round_ctr cnt( 
		.clk( clk ), 
		.rst( rst ), 
		.firstRnd( firstRnd ), 
		.finalRnd( finalRnd ) 
	);

	initial
	begin
		clk = 0;
		rst = 1;
	end

	always
		#1 clk = !clk;

	always @( posedge clk )
	begin
		rst = 0;
	end

endmodule