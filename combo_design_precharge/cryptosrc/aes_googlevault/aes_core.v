`timescale 1ns / 1ps
/*
   Copyright 2015, Google Inc.

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.
*/
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:37:57 05/13/2014 
// Design Name: 
// Module Name:    aes_core 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module aes_core (
	input wire clk,
	input wire load_i,
	input wire [255:0] key_i,
	input wire [127:0] data_i,
	input wire [127:0] data_ibar,
	input wire [1:0] size_i,
	input wire dec_i,
	output reg [127:0] data_o,
	output reg busy_o
);

localparam AES_128 = 0;
localparam AES_192 = 1;
localparam AES_256 = 2;

localparam AES_KEYSCHED = 0;
localparam AES_DECRYPT = 1;

//(* max_fanout = "1024" *)
reg dec_r;
reg [1:0] fsm, fsm_new;

reg [3:0] round, round_new, round_max;
wire [3:0] round_inc = round + 1;
wire [3:0] round_dec = round - 1;
reg [127:0] state, state_new;
reg [127:0] statebar, state_newbar;
wire [127:0] temp_state;
wire [127:0] temp_statebar;
reg [127:0] sbb_i;
reg [127:0] sbb_ibar;
wire [127:0] sbb_o;
wire [127:0] sbb_obar;

reg [127:0] ks_mem[14:0];
reg [127:0] ks;
wire [127:0] ks_val;
wire ks_en = (fsm == AES_KEYSCHED);

//addition
reg [127:0] shr_o, ark_i;
reg [127:0] shr_obar, ark_ibar;
wire [127:0] mxc_o;
wire [127:0] mxc_obar;
reg [127:0] temp1, temp2;

assign temp_clk = clk;


aes_ks ks_inst (
	.clk(clk),
	.load_i(load_i),
	.en_i(ks_en),
	.size_i(size_i),
	.key_i(key_i),
	.ks_o(ks_val)
);

always @(posedge clk)
begin
	if(load_i)
	begin
		round_max <= 10;
	end
end

//subBytes


always @*
begin : subbytes_pre
	if(dec_r)
	begin		
		//InvShiftRows(state);
		sbb_i = {
			state[127:120], state[ 23: 16], state[ 47: 40], state[ 71: 64],
			state[ 95: 88], state[119:112], state[ 15:  8], state[ 39: 32],
			state[ 63: 56], state[ 87: 80], state[111:104], state[  7:  0],
			state[ 31: 24], state[ 55: 48], state[ 79: 72], state[103: 96]
		};
		sbb_ibar = {
			statebar[127:120], statebar[ 23: 16], statebar[ 47: 40], statebar[ 71: 64],
			statebar[ 95: 88], statebar[119:112], statebar[ 15:  8], statebar[ 39: 32],
			statebar[ 63: 56], statebar[ 87: 80], statebar[111:104], statebar[  7:  0],
			statebar[ 31: 24], statebar[ 55: 48], statebar[ 79: 72], statebar[103: 96]
		};
	end
	else
	begin
		temp1[0] = statebar[0] | clk;
		sbb_i[0] = ~temp1[0];
		temp1[1] = statebar[1] | clk;
		sbb_i[1] = ~temp1[1];
		temp1[2] = statebar[2] | clk;
		sbb_i[2] = ~temp1[2];
		temp1[3] = statebar[3] | clk;
		sbb_i[3] = ~temp1[3];
		temp1[4] = statebar[4] | clk;
		sbb_i[4] = ~temp1[4];
		temp1[5] = statebar[5] | clk;
		sbb_i[5] = ~temp1[5];
		temp1[6] = statebar[6] | clk;
		sbb_i[6] = ~temp1[6];
		temp1[7] = statebar[7] | clk;
		sbb_i[7] = ~temp1[7];
		temp1[8] = statebar[8] | clk;
		sbb_i[8] = ~temp1[8];
		temp1[9] = statebar[9] | clk;
		sbb_i[9] = ~temp1[9];
		
		temp1[10] = statebar[10] | clk;
		sbb_i[10] = ~temp1[10];
		temp1[11] = statebar[11] | clk;
		sbb_i[11] = ~temp1[11];
		temp1[12] = statebar[12] | clk;
		sbb_i[12] = ~temp1[12];
		temp1[13] = statebar[13] | clk;
		sbb_i[13] = ~temp1[13];
		temp1[14] = statebar[14] | clk;
		sbb_i[14] = ~temp1[14];
		temp1[15] = statebar[15] | clk;
		sbb_i[15] = ~temp1[15];
		temp1[16] = statebar[16] | clk;
		sbb_i[16] = ~temp1[16];
		temp1[17] = statebar[17] | clk;
		sbb_i[17] = ~temp1[17];
		temp1[18] = statebar[18] | clk;
		sbb_i[18] = ~temp1[18];
		temp1[19] = statebar[19] | clk;
		sbb_i[19] = ~temp1[19];
		
		temp1[20] = statebar[20] | clk;
		sbb_i[20] = ~temp1[20];
		temp1[21] = statebar[21] | clk;
		sbb_i[21] = ~temp1[21];
		temp1[22] = statebar[22] | clk;
		sbb_i[22] = ~temp1[22];
		temp1[23] = statebar[23] | clk;
		sbb_i[23] = ~temp1[23];
		temp1[24] = statebar[24] | clk;
		sbb_i[24] = ~temp1[24];
		temp1[25] = statebar[25] | clk;
		sbb_i[25] = ~temp1[25];
		temp1[26] = statebar[26] | clk;
		sbb_i[26] = ~temp1[26];
		temp1[27] = statebar[27] | clk;
		sbb_i[27] = ~temp1[27];
		temp1[28] = statebar[28] | clk;
		sbb_i[28] = ~temp1[28];
		temp1[29] = statebar[29] | clk;
		sbb_i[29] = ~temp1[29];
		
		temp1[30] = statebar[30] | clk;
		sbb_i[30] = ~temp1[30];
		temp1[31] = statebar[31] | clk;
		sbb_i[31] = ~temp1[31];
		temp1[32] = statebar[32] | clk;
		sbb_i[32] = ~temp1[32];
		temp1[33] = statebar[33] | clk;
		sbb_i[33] = ~temp1[33];
		temp1[34] = statebar[34] | clk;
		sbb_i[34] = ~temp1[34];
		temp1[35] = statebar[35] | clk;
		sbb_i[35] = ~temp1[35];
		temp1[36] = statebar[36] | clk;
		sbb_i[36] = ~temp1[36];
		temp1[37] = statebar[37] | clk;
		sbb_i[37] = ~temp1[37];
		temp1[38] = statebar[38] | clk;
		sbb_i[38] = ~temp1[38];
		temp1[39] = statebar[39] | clk;
		sbb_i[39] = ~temp1[39];
		
		temp1[40] = statebar[40] | clk;
		sbb_i[40] = ~temp1[40];
		temp1[41] = statebar[41] | clk;
		sbb_i[41] = ~temp1[41];
		temp1[42] = statebar[42] | clk;
		sbb_i[42] = ~temp1[42];
		temp1[43] = statebar[43] | clk;
		sbb_i[43] = ~temp1[43];
		temp1[44] = statebar[44] | clk;
		sbb_i[44] = ~temp1[44];
		temp1[45] = statebar[45] | clk;
		sbb_i[45] = ~temp1[45];
		temp1[46] = statebar[46] | clk;
		sbb_i[46] = ~temp1[46];
		temp1[47] = statebar[47] | clk;
		sbb_i[47] = ~temp1[47];
		temp1[48] = statebar[48] | clk;
		sbb_i[48] = ~temp1[48];
		temp1[49] = statebar[49] | clk;
		sbb_i[49] = ~temp1[49];
		
		temp1[50] = statebar[50] | clk;
		sbb_i[50] = ~temp1[50];
		temp1[51] = statebar[51] | clk;
		sbb_i[51] = ~temp1[51];
		temp1[52] = statebar[52] | clk;
		sbb_i[52] = ~temp1[52];
		temp1[53] = statebar[53] | clk;
		sbb_i[53] = ~temp1[53];
		temp1[54] = statebar[54] | clk;
		sbb_i[54] = ~temp1[54];
		temp1[55] = statebar[55] | clk;
		sbb_i[55] = ~temp1[55];
		temp1[56] = statebar[56] | clk;
		sbb_i[56] = ~temp1[56];
		temp1[57] = statebar[57] | clk;
		sbb_i[57] = ~temp1[57];
		temp1[58] = statebar[58] | clk;
		sbb_i[58] = ~temp1[58];
		temp1[59] = statebar[59] | clk;
		sbb_i[59] = ~temp1[59];
		
		temp1[60] = statebar[60] | clk;
		sbb_i[60] = ~temp1[60];
		temp1[61] = statebar[61] | clk;
		sbb_i[61] = ~temp1[61];
		temp1[62] = statebar[62] | clk;
		sbb_i[62] = ~temp1[62];
		temp1[63] = statebar[63] | clk;
		sbb_i[63] = ~temp1[63];
		temp1[64] = statebar[64] | clk;
		sbb_i[64] = ~temp1[64];
		temp1[65] = statebar[65] | clk;
		sbb_i[65] = ~temp1[65];
		temp1[66] = statebar[66] | clk;
		sbb_i[66] = ~temp1[66];
		temp1[67] = statebar[67] | clk;
		sbb_i[67] = ~temp1[67];
		temp1[68] = statebar[68] | clk;
		sbb_i[68] = ~temp1[68];
		temp1[69] = statebar[69] | clk;
		sbb_i[69] = ~temp1[69];
		
		temp1[70] = statebar[70] | clk;
		sbb_i[70] = ~temp1[70];
		temp1[71] = statebar[71] | clk;
		sbb_i[71] = ~temp1[71];
		temp1[72] = statebar[72] | clk;
		sbb_i[72] = ~temp1[72];
		temp1[73] = statebar[73] | clk;
		sbb_i[73] = ~temp1[73];
		temp1[74] = statebar[74] | clk;
		sbb_i[74] = ~temp1[74];
		temp1[75] = statebar[75] | clk;
		sbb_i[75] = ~temp1[75];
		temp1[76] = statebar[76] | clk;
		sbb_i[76] = ~temp1[76];
		temp1[77] = statebar[77] | clk;
		sbb_i[77] = ~temp1[77];
		temp1[78] = statebar[78] | clk;
		sbb_i[78] = ~temp1[78];
		temp1[79] = statebar[79] | clk;
		sbb_i[79] = ~temp1[79];
		
		temp1[80] = statebar[80] | clk;
		sbb_i[80] = ~temp1[80];
		temp1[81] = statebar[81] | clk;
		sbb_i[81] = ~temp1[81];
		temp1[82] = statebar[82] | clk;
		sbb_i[82] = ~temp1[82];
		temp1[83] = statebar[83] | clk;
		sbb_i[83] = ~temp1[83];
		temp1[84] = statebar[84] | clk;
		sbb_i[84] = ~temp1[84];
		temp1[85] = statebar[85] | clk;
		sbb_i[85] = ~temp1[85];
		temp1[86] = statebar[86] | clk;
		sbb_i[86] = ~temp1[86];
		temp1[87] = statebar[87] | clk;
		sbb_i[87] = ~temp1[87];
		temp1[88] = statebar[88] | clk;
		sbb_i[88] = ~temp1[88];
		temp1[89] = statebar[89] | clk;
		sbb_i[89] = ~temp1[89];
		
		temp1[90] = statebar[90] | clk;
		sbb_i[90] = ~temp1[90];
		temp1[91] = statebar[91] | clk;
		sbb_i[91] = ~temp1[91];
		temp1[92] = statebar[92] | clk;
		sbb_i[92] = ~temp1[92];
		temp1[93] = statebar[93] | clk;
		sbb_i[93] = ~temp1[93];
		temp1[94] = statebar[94] | clk;
		sbb_i[94] = ~temp1[94];
		temp1[95] = statebar[95] | clk;
		sbb_i[95] = ~temp1[95];
		temp1[96] = statebar[96] | clk;
		sbb_i[96] = ~temp1[96];
		temp1[97] = statebar[97] | clk;
		sbb_i[97] = ~temp1[97];
		temp1[98] = statebar[98] | clk;
		sbb_i[98] = ~temp1[98];
		temp1[99] = statebar[99] | clk;
		sbb_i[99] = ~temp1[99];

		temp1[100] = statebar[100] | clk;
		sbb_i[100] = ~temp1[100];
		temp1[101] = statebar[101] | clk;
		sbb_i[101] = ~temp1[101];
		temp1[102] = statebar[102] | clk;
		sbb_i[102] = ~temp1[102];
		temp1[103] = statebar[103] | clk;
		sbb_i[103] = ~temp1[103];
		temp1[104] = statebar[104] | clk;
		sbb_i[104] = ~temp1[104];
		temp1[105] = statebar[105] | clk;
		sbb_i[105] = ~temp1[105];
		temp1[106] = statebar[106] | clk;
		sbb_i[106] = ~temp1[106];
		temp1[107] = statebar[107] | clk;
		sbb_i[107] = ~temp1[107];
		temp1[108] = statebar[108] | clk;
		sbb_i[108] = ~temp1[108];
		temp1[109] = statebar[109] | clk;
		sbb_i[109] = ~temp1[109];
		
		temp1[110] = statebar[110] | clk;
		sbb_i[110] = ~temp1[110];
		temp1[111] = statebar[111] | clk;
		sbb_i[111] = ~temp1[111];
		temp1[112] = statebar[112] | clk;
		sbb_i[112] = ~temp1[112];
		temp1[113] = statebar[113] | clk;
		sbb_i[113] = ~temp1[113];
		temp1[114] = statebar[114] | clk;
		sbb_i[114] = ~temp1[114];
		temp1[115] = statebar[115] | clk;
		sbb_i[115] = ~temp1[115];
		temp1[116] = statebar[116] | clk;
		sbb_i[116] = ~temp1[116];
		temp1[117] = statebar[117] | clk;
		sbb_i[117] = ~temp1[117];
		temp1[118] = statebar[118] | clk;
		sbb_i[118] = ~temp1[118];
		temp1[119] = statebar[119] | clk;
		sbb_i[119] = ~temp1[119];
		
		temp1[120] = statebar[120] | clk;
		sbb_i[120] = ~temp1[120];
		temp1[121] = statebar[121] | clk;
		sbb_i[121] = ~temp1[121];
		temp1[122] = statebar[122] | clk;
		sbb_i[122] = ~temp1[122];
		temp1[123] = statebar[123] | clk;
		sbb_i[123] = ~temp1[123];
		temp1[124] = statebar[124] | clk;
		sbb_i[124] = ~temp1[124];
		temp1[125] = statebar[125] | clk;
		sbb_i[125] = ~temp1[125];
		temp1[126] = statebar[126] | clk;
		sbb_i[126] = ~temp1[126];
		temp1[127] = statebar[127] | clk;
		sbb_i[127] = ~temp1[127];
		
		

		temp2[0] = state[0] | clk;
		sbb_ibar[0] = ~temp2[0];
		temp2[1] = state[1] | clk;
		sbb_ibar[1] = ~temp2[1];
		temp2[2] = state[2] | clk;
		sbb_ibar[2] = ~temp2[2];
		temp2[3] = state[3] | clk;
		sbb_ibar[3] = ~temp2[3];
		temp2[4] = state[4] | clk;
		sbb_ibar[4] = ~temp2[4];
		temp2[5] = state[5] | clk;
		sbb_ibar[5] = ~temp2[5];
		temp2[6] = state[6] | clk;
		sbb_ibar[6] = ~temp2[6];
		temp2[7] = state[7] | clk;
		sbb_ibar[7] = ~temp2[7];
		temp2[8] = state[8] | clk;
		sbb_ibar[8] = ~temp2[8];
		temp2[9] = state[9] | clk;
		sbb_ibar[9] = ~temp2[9];

		temp2[10] = state[10] | clk;
		sbb_ibar[10] = ~temp2[10];
		temp2[11] = state[11] | clk;
		sbb_ibar[11] = ~temp2[11];
		temp2[12] = state[12] | clk;
		sbb_ibar[12] = ~temp2[12];
		temp2[13] = state[13] | clk;
		sbb_ibar[13] = ~temp2[13];
		temp2[14] = state[14] | clk;
		sbb_ibar[14] = ~temp2[14];
		temp2[15] = state[15] | clk;
		sbb_ibar[15] = ~temp2[15];
		temp2[16] = state[16] | clk;
		sbb_ibar[16] = ~temp2[16];
		temp2[17] = state[17] | clk;
		sbb_ibar[17] = ~temp2[17];
		temp2[18] = state[18] | clk;
		sbb_ibar[18] = ~temp2[18];
		temp2[19] = state[19] | clk;
		sbb_ibar[19] = ~temp2[19];

		temp2[20] = state[20] | clk;
		sbb_ibar[20] = ~temp2[20];
		temp2[21] = state[21] | clk;
		sbb_ibar[21] = ~temp2[21];
		temp2[22] = state[22] | clk;
		sbb_ibar[22] = ~temp2[22];
		temp2[23] = state[23] | clk;
		sbb_ibar[23] = ~temp2[23];
		temp2[24] = state[24] | clk;
		sbb_ibar[24] = ~temp2[24];
		temp2[25] = state[25] | clk;
		sbb_ibar[25] = ~temp2[25];
		temp2[26] = state[26] | clk;
		sbb_ibar[26] = ~temp2[26];
		temp2[27] = state[27] | clk;
		sbb_ibar[27] = ~temp2[27];
		temp2[28] = state[28] | clk;
		sbb_ibar[28] = ~temp2[28];
		temp2[29] = state[29] | clk;
		sbb_ibar[29] = ~temp2[29];

		temp2[30] = state[30] | clk;
		sbb_ibar[30] = ~temp2[30];
		temp2[31] = state[31] | clk;
		sbb_ibar[31] = ~temp2[31];
		temp2[32] = state[32] | clk;
		sbb_ibar[32] = ~temp2[32];
		temp2[33] = state[33] | clk;
		sbb_ibar[33] = ~temp2[33];
		temp2[34] = state[34] | clk;
		sbb_ibar[34] = ~temp2[34];
		temp2[35] = state[35] | clk;
		sbb_ibar[35] = ~temp2[35];
		temp2[36] = state[36] | clk;
		sbb_ibar[36] = ~temp2[36];
		temp2[37] = state[37] | clk;
		sbb_ibar[37] = ~temp2[37];
		temp2[38] = state[38] | clk;
		sbb_ibar[38] = ~temp2[38];
		temp2[39] = state[39] | clk;
		sbb_ibar[39] = ~temp2[39];

		temp2[40] = state[40] | clk;
		sbb_ibar[40] = ~temp2[40];
		temp2[41] = state[41] | clk;
		sbb_ibar[41] = ~temp2[41];
		temp2[42] = state[42] | clk;
		sbb_ibar[42] = ~temp2[42];
		temp2[43] = state[43] | clk;
		sbb_ibar[43] = ~temp2[43];
		temp2[44] = state[44] | clk;
		sbb_ibar[44] = ~temp2[44];
		temp2[45] = state[45] | clk;
		sbb_ibar[45] = ~temp2[45];
		temp2[46] = state[46] | clk;
		sbb_ibar[46] = ~temp2[46];
		temp2[47] = state[47] | clk;
		sbb_ibar[47] = ~temp2[47];
		temp2[48] = state[48] | clk;
		sbb_ibar[48] = ~temp2[48];
		temp2[49] = state[49] | clk;
		sbb_ibar[49] = ~temp2[49];

		temp2[50] = state[50] | clk;
		sbb_ibar[50] = ~temp2[50];
		temp2[51] = state[51] | clk;
		sbb_ibar[51] = ~temp2[51];
		temp2[52] = state[52] | clk;
		sbb_ibar[52] = ~temp2[52];
		temp2[53] = state[53] | clk;
		sbb_ibar[53] = ~temp2[53];
		temp2[54] = state[54] | clk;
		sbb_ibar[54] = ~temp2[54];
		temp2[55] = state[55] | clk;
		sbb_ibar[55] = ~temp2[55];
		temp2[56] = state[56] | clk;
		sbb_ibar[56] = ~temp2[56];
		temp2[57] = state[57] | clk;
		sbb_ibar[57] = ~temp2[57];
		temp2[58] = state[58] | clk;
		sbb_ibar[58] = ~temp2[58];
		temp2[59] = state[59] | clk;
		sbb_ibar[59] = ~temp2[59];

		temp2[60] = state[60] | clk;
		sbb_ibar[60] = ~temp2[60];
		temp2[61] = state[61] | clk;
		sbb_ibar[61] = ~temp2[61];
		temp2[62] = state[62] | clk;
		sbb_ibar[62] = ~temp2[62];
		temp2[63] = state[63] | clk;
		sbb_ibar[63] = ~temp2[63];
		temp2[64] = state[64] | clk;
		sbb_ibar[64] = ~temp2[64];
		temp2[65] = state[65] | clk;
		sbb_ibar[65] = ~temp2[65];
		temp2[66] = state[66] | clk;
		sbb_ibar[66] = ~temp2[66];
		temp2[67] = state[67] | clk;
		sbb_ibar[67] = ~temp2[67];
		temp2[68] = state[68] | clk;
		sbb_ibar[68] = ~temp2[68];
		temp2[69] = state[69] | clk;
		sbb_ibar[69] = ~temp2[69];

		temp2[70] = state[70] | clk;
		sbb_ibar[70] = ~temp2[70];
		temp2[71] = state[71] | clk;
		sbb_ibar[71] = ~temp2[71];
		temp2[72] = state[72] | clk;
		sbb_ibar[72] = ~temp2[72];
		temp2[73] = state[73] | clk;
		sbb_ibar[73] = ~temp2[73];
		temp2[74] = state[74] | clk;
		sbb_ibar[74] = ~temp2[74];
		temp2[75] = state[75] | clk;
		sbb_ibar[75] = ~temp2[75];
		temp2[76] = state[76] | clk;
		sbb_ibar[76] = ~temp2[76];
		temp2[77] = state[77] | clk;
		sbb_ibar[77] = ~temp2[77];
		temp2[78] = state[78] | clk;
		sbb_ibar[78] = ~temp2[78];
		temp2[79] = state[79] | clk;
		sbb_ibar[79] = ~temp2[79];

		temp2[80] = state[80] | clk;
		sbb_ibar[80] = ~temp2[80];
		temp2[81] = state[81] | clk;
		sbb_ibar[81] = ~temp2[81];
		temp2[82] = state[82] | clk;
		sbb_ibar[82] = ~temp2[82];
		temp2[83] = state[83] | clk;
		sbb_ibar[83] = ~temp2[83];
		temp2[84] = state[84] | clk;
		sbb_ibar[84] = ~temp2[84];
		temp2[85] = state[85] | clk;
		sbb_ibar[85] = ~temp2[85];
		temp2[86] = state[86] | clk;
		sbb_ibar[86] = ~temp2[86];
		temp2[87] = state[87] | clk;
		sbb_ibar[87] = ~temp2[87];
		temp2[88] = state[88] | clk;
		sbb_ibar[88] = ~temp2[88];
		temp2[89] = state[89] | clk;
		sbb_ibar[89] = ~temp2[89];

		temp2[90] = state[90] | clk;
		sbb_ibar[90] = ~temp2[90];
		temp2[91] = state[91] | clk;
		sbb_ibar[91] = ~temp2[91];
		temp2[92] = state[92] | clk;
		sbb_ibar[92] = ~temp2[92];
		temp2[93] = state[93] | clk;
		sbb_ibar[93] = ~temp2[93];
		temp2[94] = state[94] | clk;
		sbb_ibar[94] = ~temp2[94];
		temp2[95] = state[95] | clk;
		sbb_ibar[95] = ~temp2[95];
		temp2[96] = state[96] | clk;
		sbb_ibar[96] = ~temp2[96];
		temp2[97] = state[97] | clk;
		sbb_ibar[97] = ~temp2[97];
		temp2[98] = state[98] | clk;
		sbb_ibar[98] = ~temp2[98];
		temp2[99] = state[99] | clk;
		sbb_ibar[99] = ~temp2[99];

		temp2[100] = state[100] | clk;
		sbb_ibar[100] = ~temp2[100];
		temp2[101] = state[101] | clk;
		sbb_ibar[101] = ~temp2[101];
		temp2[102] = state[102] | clk;
		sbb_ibar[102] = ~temp2[102];
		temp2[103] = state[103] | clk;
		sbb_ibar[103] = ~temp2[103];
		temp2[104] = state[104] | clk;
		sbb_ibar[104] = ~temp2[104];
		temp2[105] = state[105] | clk;
		sbb_ibar[105] = ~temp2[105];
		temp2[106] = state[106] | clk;
		sbb_ibar[106] = ~temp2[106];
		temp2[107] = state[107] | clk;
		sbb_ibar[107] = ~temp2[107];
		temp2[108] = state[108] | clk;
		sbb_ibar[108] = ~temp2[108];
		temp2[109] = state[109] | clk;
		sbb_ibar[109] = ~temp2[109];

		temp2[110] = state[110] | clk;
		sbb_ibar[110] = ~temp2[110];
		temp2[111] = state[111] | clk;
		sbb_ibar[111] = ~temp2[111];
		temp2[112] = state[112] | clk;
		sbb_ibar[112] = ~temp2[112];
		temp2[113] = state[113] | clk;
		sbb_ibar[113] = ~temp2[113];
		temp2[114] = state[114] | clk;
		sbb_ibar[114] = ~temp2[114];
		temp2[115] = state[115] | clk;
		sbb_ibar[115] = ~temp2[115];
		temp2[116] = state[116] | clk;
		sbb_ibar[116] = ~temp2[116];
		temp2[117] = state[117] | clk;
		sbb_ibar[117] = ~temp2[117];
		temp2[118] = state[118] | clk;
		sbb_ibar[118] = ~temp2[118];
		temp2[119] = state[119] | clk;
		sbb_ibar[119] = ~temp2[119];

		temp2[120] = state[120] | clk;
		sbb_ibar[120] = ~temp2[120];
		temp2[121] = state[121] | clk;
		sbb_ibar[121] = ~temp2[121];
		temp2[122] = state[122] | clk;
		sbb_ibar[122] = ~temp2[122];
		temp2[123] = state[123] | clk;
		sbb_ibar[123] = ~temp2[123];
		temp2[124] = state[124] | clk;
		sbb_ibar[124] = ~temp2[124];
		temp2[125] = state[125] | clk;
		sbb_ibar[125] = ~temp2[125];
		temp2[126] = state[126] | clk;
		sbb_ibar[126] = ~temp2[126];
		temp2[127] = state[127] | clk;
		sbb_ibar[127] = ~temp2[127];
	end
end

s_box_Precharge_LUT boxes( .in(sbb_i), .inbar(sbb_ibar), .out(sbb_o), .outbar(sbb_obar) );

//shiftrows
always @*
begin
	shr_o = {
		sbb_o[127:120], sbb_o[ 87: 80], sbb_o[ 47: 40], sbb_o[  7:  0],
		sbb_o[ 95: 88], sbb_o[ 55: 48], sbb_o[ 15:  8], sbb_o[103: 96],
		sbb_o[ 63: 56], sbb_o[ 23: 16], sbb_o[111:104], sbb_o[ 71: 64],
		sbb_o[ 31: 24], sbb_o[119:112], sbb_o[ 79: 72], sbb_o[ 39: 32]
	};
	shr_obar = {
		sbb_obar[127:120], sbb_obar[ 87: 80], sbb_obar[ 47: 40], sbb_obar[  7:  0],
		sbb_obar[ 95: 88], sbb_obar[ 55: 48], sbb_obar[ 15:  8], sbb_obar[103: 96],
		sbb_obar[ 63: 56], sbb_obar[ 23: 16], sbb_obar[111:104], sbb_obar[ 71: 64],
		sbb_obar[ 31: 24], sbb_obar[119:112], sbb_obar[ 79: 72], sbb_obar[ 39: 32]
	};
end

//mixcolumns
mixCol_Precharge_LUT mix_Col( .in(shr_o), .inbar(shr_obar), .out(mxc_o), .outbar(mxc_obar) );

// AddRoundKey(state, &ctx->ks[round * Nb]);
always @*
begin
	if(round == 0)
	begin
		ark_i = state;
		ark_ibar = statebar;
	end
	else if(round == round_max)
	begin
		ark_i = shr_o;
		ark_ibar = shr_obar;
	end
	else
	begin
		ark_i = mxc_o;
		ark_ibar = mxc_obar;
	end
end

addRoundKey_Precharge_LUT addKey( .data(ark_i), .databar(ark_ibar), .key(ks_val), .out(temp_state), .outbar(temp_statebar) );

always @*
begin
	state_new = temp_state;
	state_newbar = temp_statebar;
end


always @(posedge clk)
begin
	busy_o <= 0;
	if(load_i)
	begin
		fsm <= AES_KEYSCHED;		
		round <= 0;
		busy_o <= 1;
		data_o <= 0;
		dec_r <= dec_i;
		state <= data_i;
		statebar <= data_ibar;
	end
	else if(busy_o)
	begin
		busy_o <= 1;
		case(fsm)
		AES_KEYSCHED:
		begin
			round <= round_inc;
			if(dec_r)
			begin
				ks_mem[round] <= ks_val;
				ks <= ks_val;
				if(round == round_max)
				begin
					fsm <= AES_DECRYPT;
					round <= round_max;
				end
			end
			else
			begin
				state <= state_new;
				statebar <= state_newbar;
				if(round == round_max)
				begin
					data_o <= state_new;
					busy_o <= 0;
				end
			end
		end
		AES_DECRYPT:
		begin
			ks <= ks_mem[round_dec];
			round <= round_dec;
			state <= state_new;
			statebar <= state_newbar;
			if(round == 0)
			begin
				data_o <= state_new;
				busy_o <= 0;
			end
		end
		endcase
	end
end

endmodule
