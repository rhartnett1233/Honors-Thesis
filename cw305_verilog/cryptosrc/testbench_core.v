`timescale 1ns / 1ps

module testbench_core();

	reg clk, rst, firstRound, finalRound;
	wire [7:0] roundConstant;
	reg [127:0] data_in;
	reg [127:0] key;
	reg [3:0] rndCnt;
	reg [127:0] ciphertext;
	wire [127:0] data_out;


	round_const rnd(
		.clk(clk),
		.rst(rst),
		.rc(roundConstant)
	);


	aes_128 aes(
		.clk(clk),
		.data(data_in),
		.key(key),
		.firstRound(firstRound),
		.final_round(finalRound),
		.round_const(roundConstant),
		.out(data_out)
	);

	initial
	begin
		clk = 0;
		rst = 1;
		firstRound = 1;
		finalRound = 0;
		key = 0;
		data_in = 128'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
		rndCnt = 0;
	end

	always
		#1 clk = !clk;

	always @( posedge clk )
	begin
		rst = 0;
		if( rndCnt == 0 )
		begin
			firstRound = 0;
			finalRound = 0;
			rndCnt = 1;
		end
		else if( rndCnt == 9 )
		begin
			firstRound = 0;
			finalRound = 1;
			rndCnt = 10;
		end
		else if( rndCnt == 10 )
		begin
			firstRound = 1;
			finalRound = 0;
			rndCnt = 0;
			ciphertext = data_out;
		end
		else begin
			firstRound = 0;
			finalRound = 0;
			rndCnt = rndCnt + 1;
		end
	end
		
endmodule
