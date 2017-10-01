
class Convert():

	def __init__( self ):
		temp = True

	def convert_AND( self, line, gate_cnt ):
		cur_line = line.split()
		temp_gate = cur_line[1]
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

		#extracting gate number
		gate_0 = temp_gate.split("U")
		gate_1 = temp_gate.split()
		gate_num = gate_0[1]
		gate_num = int(gate_num)
		gate = gate_1[0]

		#correct variable stored in: in1, in2, out, gate, gate_num

		inv_1 = "  INV_X1 U" + str(gate_cnt) + " ( .A(" + in1 + "), .A(yy" + wire_cnt + ")"
		inv_2 = "  INV_X1 U" + str(gate_cnt) + " ( .A"





		xx_line = list(line)
		print xx_line
		print "gate: " + gate
		print "gate num: " + str(gate_num)
		print "in1: " + in1
		print "in2: " + in2
		print "out: " + out
		print " "


################################################################################

gate_cnt = 1

file = open( "/Users/Richie/Desktop/AES-Project-Code/aes_code_gate_level/sample_circuit.v", "r" )

conv = Convert()

for cur_line in file:
	temp_line = cur_line.split()
	if( len(temp_line) > 0 and temp_line[0] == "AND2_X1" ):
		conv.convert_AND( cur_line, gate_cnt )
		gate_cnt = gate_cnt + 4
	

