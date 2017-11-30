`timescale 1ns / 1ps


module new_aes_core( 
	input wire clk,
	input wire load_i,
	input wire [127:0] key_i,
	input wire [127:0] data_i,
	output reg [127:0] data_o,
	output reg busy_o 
);

wire [7:0] roundConstant;
reg rst, firstRound, finalRound;
reg [3:0] rndCnt;
reg [127:0] ciphertext_new_aes;
wire [127:0] data_out;
reg [127:0] data_in;
reg [127:0] key;

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

always @( posedge clk )
begin
	data_o = data_out;
	if( load_i == 1 )
	begin
		data_in = data_i;
		key = key_i;
		rst = 1;
		rndCnt = 0;
		firstRound = 1;
		finalRound = 0;
		busy_o = 0;
	end

	else begin
		rst = 0;
		if( rndCnt == 0 )
		begin
			firstRound = 0;
			finalRound = 0;
			rndCnt = 1;
			busy_o = 0;
		end
		else if( rndCnt == 9 )
		begin
			firstRound = 0;
			finalRound = 1;
			rndCnt = 10;
			busy_o = 0;
		end
		else if( rndCnt == 10 )
		begin
			firstRound = 1;
			finalRound = 0;
			rndCnt = 0;
			busy_o = 1;
			ciphertext_new_aes = data_out;
		end
		else begin
			firstRound = 0;
			finalRound = 0;
			rndCnt = rndCnt + 1;
			busy_o = 0;
		end
	end
end

endmodule



