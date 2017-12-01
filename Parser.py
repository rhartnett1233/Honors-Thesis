

class Parser():

	def __init__( self ):
		temp = True


	#Takes in AND gate and outputs list containing inputs and outputs
	def parse_AND( self, line ):
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

		vals = [ in1, in2, out ]

		return vals


	#Takes in OR gate and outputs list containing inputs and outputs
	def parse_OR( self, line ):
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

		vals = [ in1, in2, out ]

		return vals


	#Takes in INV gate and outputs list containing inputs and outputs
	def parse_INV( self, line ):
		cur_line = line.split()
		temp_in1 = cur_line[3]
		temp_out = cur_line[4]

		#extracting in1
		in1_0 = temp_in1.split("(")
		in1_1 = in1_0[1].split(")")
		in1 = in1_1[0]

		#extracting out
		out_0 = temp_out.split("(")
		out_1 = out_0[1].split(")")
		out = out_1[0]

		vals = [ in1, out ]

		return vals





