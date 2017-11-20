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
wire firstRound;
wire finalRound;
reg rnd_ctr_rst;
reg rnd_cnt_rst;
wire [127:0] out_data;


round_const rnd_cnt( .clk(clk), .rst(rnd_cnt_rst), .rc(roundConstant) );
round_ctr rnd_ctr( .clk(clk), .rst(rnd_ctr_rst), .firstRnd(firstRound), .finalRnd(finalRound) );

aes_128 aes_128 (
	.clk(clk),
	.data(data_i),
	.key(key_i),
	.firstRound(firstRound),
	.final_round(finalRound),
	.round_const(roundConstant),
	.out(out_data)
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

	assign data_o = out_data;
end

endmodule



