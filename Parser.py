

class Parser():

	def __init__( self ):
		temp = True

	def parse_AND( self, line, input_list, output_list ):
		gate_cnt = gate_cnt + 2
		wire_cnt = wire_cnt + 2
		cur_line = line.split()
		temp_in1 = cur_line[3]
		temp_in2 = cur_line[4]
		temp_out = cur_line[5]

		#extracting in1
		in1_0 = temp_in1.split("(")
		in1_1 = in1_0[1].split(")")
		in1 = in1_1[0]

		#extracting in2
		in2_0 = temp_in2.split("(")
		in2_1 = in2_0[1].split(")")
		in2 = in2_1[0]

		#extracting out
		out_0 = temp_out.split("(")
		out_1 = out_0[1].split(")")
		out = out_1[0]

		print "in1: " + in1
		print "in2: " + in2
		print "out: " + out
		print "**************************"

		#correct variable stored in: in1, in2, out

		if( input_list.count( in1 ) == 1 ):
			gate_cnt = gate_cnt + 1
			wire_cnt = wire_cnt + 1
		if( input_list.count( in2 ) == 1 ):
			gate_cnt = gate_cnt + 1
			wire_cnt = wire_cnt + 1
		if( output_list.count( out ) == 1 ):
			wire_cnt = wire_cnt - 2

		counts = [ gate_cnt, wire_cnt ]

		return counts

	def parse_OR( self, line, input_list, output_list ):
		gate_cnt = gate_cnt + 2
		wire_cnt = wire_cnt + 2
		cur_line = line.split()
		temp_in1 = cur_line[3]
		temp_in2 = cur_line[4]
		temp_out = cur_line[5]

		#extracting in1
		in1_0 = temp_in1.split("(")
		in1_1 = in1_0[1].split(")")
		in1 = in1_1[0]

		#extracting in2
		in2_0 = temp_in2.split("(")
		in2_1 = in2_0[1].split(")")
		in2 = in2_1[0]

		#extracting out
		out_0 = temp_out.split("(")
		out_1 = out_0[1].split(")")
		out = out_1[0]

		print "in1: " + in1
		print "in2: " + in2
		print "out: " + out
		print "**************************"

		#correct variable stored in: in1, in2, out

		if( input_list.count( in1 ) == 1 ):
			gate_cnt = gate_cnt + 1
			wire_cnt = wire_cnt + 1
		if( input_list.count( in2 ) == 1 ):
			gate_cnt = gate_cnt + 1
			wire_cnt = wire_cnt + 1
		if( output_list.count( out ) == 1 ):
			wire_cnt = wire_cnt - 2

		counts = [ gate_cnt, wire_cnt ]

		return counts





