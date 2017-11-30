`timescale 1ns / 1ps

module testbench();

	reg clk, load;
	reg [127:0] data_in;
	reg [127:0] key;
	wire [127:0] data_out;
	wire busy;
	reg [127:0] ciphertext;


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
		#1
		clk = 0;
		load = 1;
		key = 0;
		data_in = 128'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
		#2
		load = 0;

		#30
		load = 1;
		key = 0;
		data_in = 0;
		#2
		load = 0;

		#30
		load = 1;
		key = 0;
		data_in = 128'hF0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0;
		#2
		load = 0;

		#30
		load = 1;
		key = 0;
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
		else if( load == 1 )
		begin
			ciphertext = 0;
		end
	end

	
		
endmodule
