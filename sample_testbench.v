`timescale 1ns / 1ps

module testbench();

	reg clk;
	reg [255:0] data_in;
	reg [255:0] data_inbar;
	wire [7:0] data_out;
	wire [7:0] data_outbar;

	sample_circuit LUT_sample( .in(data_in), .inbar(data_inbar), .out(data_out), .outbar(data_outbar) );

	initial
	begin
		#10
		clk = 0;
		data_in = 0;
		data_inbar = ~data_in;

		#10
		data_in = 10;
		data_inbar = ~data_in;

		#10
		data_in = 20;
		data_inbar = ~data_in;
	end

	always
		#1 clk = !clk;
endmodule