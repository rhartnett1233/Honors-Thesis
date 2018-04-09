`timescale 1ns / 1ps

module testbench();

	reg clk, load, dec, size;
	reg [127:0] data_in;
	reg [255:0] key;
	wire [127:0] data_out;
	wire busy;
	reg [127:0] ciphertext;


	aes_core new(
		.clk(clk),
		.load_i(load),
		.key_i(key),
		.data_i(data_in),
		.data_ibar(~data_in),
		.size_i(size),
		.dec_i(dec),
		.data_o(data_out),
		.busy_o(busy)
	);

	initial
	begin
		#10
		clk = 0;
		dec = 1'b0;
		size = 2'd0;
		load = 1;
		key = 256'h2B7E151628AED2A6ABF7158809CF4F3C00000000000000000000000000000000;
		data_in = 128'hE14E95D013F3A5F829D5F566B18E4284;
		#2
		load = 0;

		#28
		load = 1;
		key = 256'h2B7E151628AED2A6ABF7158809CF4F3C00000000000000000000000000000000;
		data_in = 128'hCA27910E8885429275BE56F33E9B5D9B;
		#2
		load = 0;

		#28
		load = 1;
		key = 256'b0;
		data_in = 128'hF0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0;
		#2
		load = 0;

		#28
		load = 1;
		key = 256'b0;
		data_in = 128'hFFFFFFFFFFFFFFFF0000000000000000;
		#2
		load = 0;
	end

	always
		#1 clk = !clk;

	always @(posedge clk)
	begin
		if( busy == 1 )
		begin
			ciphertext = data_out;
		end
	end

	
		
endmodule