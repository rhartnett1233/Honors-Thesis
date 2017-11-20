`timescale 1ns / 1ps

module new_aes_core( 
	input wire clk,
	input wire load_i,
	input wire [127:0] key_i,
	input wire [127:0] data_i,
	output reg [127:0] data_o,
	output reg busy_o 
);

reg [7:0] roundConstant;
reg firstRound;
reg finalRound;
reg rnd_ctr_rst;
reg rnd_cnt_rst;


round_const rnd_cnt( clk, rnd_cnt_rst, round_constant );
round_ctr rnd_ctr( clk, rnd_ctr_rst, firstRound, finalRound );

/*wddl_aes_128 wddl_aes_128 (
	.clk(clk),
	.data(data_i),
	.key(key_i),
	.firstRound(firstRound),
	.final_round(finalRound),
	.round_cont(roundConstant),
	.out(data_o)
);*/

aes_128 aes_128 (
	.clk(clk),
	.data(data_i),
	.key(key_i),
	.firstRound(firstRound),
	.final_round(finalRound),
	.round_cont(roundConstant),
	.out(data_o)
);

always @( posedge clk )
begin
	if (finalRound)
		busy_o <= 1;
	else
		busy_o <= 0;

	if (load_i)
		rnd_ctr_rst <= 1;
	else
		rnd_ctr_rst <= 0;	
end

endmodule


