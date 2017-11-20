`timescale 1ns / 1ps

module testbench();

	reg clk, load;
	reg [127:0] data_in;
	reg [127:0] key;
	wire [127:0] data_out;
	wire busy;

	new_aes_core new(
		.clk(clk),
		.load_i(load),
		.key_i(key),
		.data_i(data_in),
		.data_o(data_out),
		.busy_o(busy)
	);

	initial
	begin
		clk = 0;
		load = 1;
		key = 100;
		data_in = 0;
	end

	always
		#1 clk = !clk;
		
endmodule
