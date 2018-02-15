`timescale 1ns / 1ps


module new_aes_core( 
	input wire clk,
	input wire load_i,
	input wire [127:0] key_i,
	input wire [127:0] data_i,
	output reg [127:0] data_o,
	output reg busy_o 
);

/****************************************
Signal Name --> description
-----------------------------------------
roundConstant --> used in key generation
rst --> reset for AES core
firstRound --> goes high when first encryption round
finalRound --> goes high when final encryption round
rndCnt --> encryption round counter
ciphertext_new_aes --> hold finished ciphertext
data_out --> output data of AES core
data_in --> inputted data to AES core
key --> encryption key
****************************************/

wire [7:0] roundConstant;
reg rst, firstRound, finalRound;
reg [3:0] rndCnt;
wire [127:0] data_out;
reg [127:0] data_in;
reg [127:0] key;

//module that generates roundConstant
round_const rnd(
	.clk(clk),
	.rst(rst),
	.rc(roundConstant)
);

//Actual AES core
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

	// if load_i is high, new data 
	// is to be encrypted
	if( load_i )
	begin
		data_in = data_i;
		key = key_i;
		rst = 1;
		rndCnt = 0;
		firstRound = 1;
		finalRound = 0;
		busy_o = 1;
		data_o = 0;
	end

	// if not, encrypt current data
	else begin
		rst = 0;

		//first round of encryption
		if( rndCnt == 0 )
		begin
			firstRound = 0;
			finalRound = 0;
			rndCnt = 1;
		end

		//tenth round of encryption
		else if( rndCnt == 9 )
		begin
			firstRound = 0;
			finalRound = 1;
			rndCnt = 10;
		end

		//final round of encryption
		else if( rndCnt == 10 )
		begin
			firstRound = 0;
			finalRound = 0;
			rndCnt = 11;
			busy_o = 0;
			data_o = data_out;
		end

		//done encrypting
		else if( rndCnt == 11 )
		begin
			firstRound = 0;
			finalRound = 0;
			rndCnt = 11;
			busy_o = 0;
		end

		//rounds 1-9
		else begin
			firstRound = 0;
			finalRound = 0;
			rndCnt = rndCnt + 1;
		end
	end
end

endmodule



