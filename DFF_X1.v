module DFF_X1( D, CK, Q );
	input D;
	input CK;
	output Q;

	reg Q;

	always @ ( posedge CK )
	begin
		Q <= D;
	end
endmodule