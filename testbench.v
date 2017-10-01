module testbench;
	
	wire out;
	reg a, b, c, d;

	sample_circuit XX ( a, b, c, d, out );

	initial
	begin
		a = 1'b0; b = 1'b0; c = 1'b0; d = 1'b0;
		#10 a = 1'b1; b = 1'b0; c = 1'b1; d = 1'b0;
		#10 a = 1'b0; b = 1'b1; c = 1'b0; d = 1'b1;
		#10 a = 1'b1; b = 1'b1; c = 1'b1; d = 1'b1;

		#100 $finish;
	end

endmodule