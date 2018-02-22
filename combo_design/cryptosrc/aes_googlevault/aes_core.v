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
wire [127:0] temp_state;
reg [127:0] sbb_i;
wire [127:0] sbb_o;

reg [127:0] ks_mem[14:0];
reg [127:0] ks;
wire [127:0] ks_val;
wire ks_en = (fsm == AES_KEYSCHED);

//addition
reg [127:0] shr_o, ark_i;
wire [127:0] mxc_o;

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
	end
	else
	begin
		sbb_i = state;
	end
end

s_box boxes( .in(sbb_i), .out(sbb_o) );

function [7:0] xtime;
	input [7:0] b; xtime={b[6:0],1'b0} ^ (8'h1b & {8{b[7]}});
endfunction

function [7:0] x02;
	input [7:0] b; x02={b[6:0],1'b0} ^ (8'h1b & {8{b[7]}});
endfunction

function [7:0] x03;
	input [7:0] b; x03=x02(b)^b;
endfunction

function [7:0] x04;
	input [7:0] b; x04=x02(x02(b));
endfunction

function [7:0] x08;
	input [7:0] b; x08=x02(x04(b));
endfunction

function [7:0] x09;
	input [7:0] b; x09=x08(b)^b;
endfunction

function [7:0] x11;
	input [7:0] b; x11=x08(b)^x02(b)^b;
endfunction

function [7:0] x13;
	input [7:0] b; x13=x08(b)^x04(b)^b;
endfunction

function [7:0] x14;
	input [7:0] b; x14=x08(b)^x04(b)^x02(b);
endfunction

//shiftrows
always @*
begin
	shr_o = {
		sbb_o[127:120], sbb_o[ 87: 80], sbb_o[ 47: 40], sbb_o[  7:  0],
		sbb_o[ 95: 88], sbb_o[ 55: 48], sbb_o[ 15:  8], sbb_o[103: 96],
		sbb_o[ 63: 56], sbb_o[ 23: 16], sbb_o[111:104], sbb_o[ 71: 64],
		sbb_o[ 31: 24], sbb_o[119:112], sbb_o[ 79: 72], sbb_o[ 39: 32]
	};
end

//mixcolumns
mixCol mix_Col( .in(shr_o), .out(mxc_o) );

// AddRoundKey(state, &ctx->ks[round * Nb]);
always @*
begin
	if(round == 0)
		ark_i = state;
	else if(round == round_max)
		ark_i = shr_o;
	else
		ark_i = mxc_o;
	//state_new = ark_i ^ ks_val;
end
addRoundKey_WDDL addKey( .data(ark_i), .key(ks_val), .out(temp_state) );
always @*
begin
	state_new = temp_state;
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
