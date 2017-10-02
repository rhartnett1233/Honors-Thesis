
import Converter
import Parser


parse = Parser.Parser()

old_gate_cnt = 0
new_gate_cnt = 0
cur_gate_cnt = 1
gate_list = [ " " ]
AND_list = [ " " ]
OR_list = [ " " ]
INV_list = [ " " ]

old_wire_cnt = 0
new_wire_cnt = 0
cur_gate_cnt = 1

input_list = [ " " ]
input_cnt = 0

output_list = [ " " ]
output_cnt = 0;

file_old = open( "/Users/Richie/Desktop/Honors-Thesis/sample_circuit.v", "r" )

for cur_line in file_old:
	line_list = cur_line.split()
	if( len(line_list) > 0 and line_list[0] == "input" ):
		if( input_list[0] == " " ):
			temp = line_list[1].split( ";" )
			input_list[0] = temp[0]
			input_cnt = input_cnt + 1
		else:
			temp = line_list[1].split( ";" )
			input_list.append( temp[0] )
			input_cnt = input_cnt + 1

	elif( len(line_list) > 0 and line_list[0] == "output" ):
		if( output_list[0] == " " ):
			temp = line_list[1].split( ";" )
			output_list[0] = temp[0]
			output_cnt = output_cnt + 1
		else:
			temp = line_list[1].split( ";" )
			output_list.append( temp[0] )
			output_cnt = output_cnt + 1

	elif( len(line_list) > 0 and line_list[0] == "AND2_X1" ):
		new_gate_cnt = new_gate_cnt + 2
		new_wire_cnt = new_wire_cnt + 2
		temp_in1 = line_list[3]
		temp_in2 = line_list[4]
		temp_out = line_list[5]

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

		'''print "in1: " + in1
		print "in2: " + in2
		print "out: " + out
		print "**************************"'''

		#correct variable stored in: in1, in2, out

		if( input_list.count( in1 ) == 1 ):
			new_gate_cnt = new_gate_cnt + 1
			new_wire_cnt = new_wire_cnt + 1
		if( input_list.count( in2 ) == 1 ):
			new_gate_cnt = new_gate_cnt + 1
			new_wire_cnt = new_wire_cnt + 1
		if( output_list.count( out ) == 1 ):
			new_wire_cnt = new_wire_cnt - 2
		old_gate_cnt = old_gate_cnt + 1
		old_wire_cnt = old_wire_cnt + 1

	elif( len(line_list) > 0 and line_list[0] == "OR2_X1" ):
		new_gate_cnt = new_gate_cnt + 2
		new_wire_cnt = new_wire_cnt + 2
		temp_in1 = line_list[3]
		temp_in2 = line_list[4]
		temp_out = line_list[5]

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

		'''print "in1: " + in1
		print "in2: " + in2
		print "out: " + out
		print "**************************"'''

		#correct variable stored in: in1, in2, out



		if( input_list.count( in1 ) == 1 ):
			new_gate_cnt = new_gate_cnt + 1
			new_wire_cnt = new_wire_cnt + 1
		if( input_list.count( in2 ) == 1 ):
			new_gate_cnt = new_gate_cnt + 1
			new_wire_cnt = new_wire_cnt + 1
		if( output_list.count( out ) == 1 ):
			new_wire_cnt = new_wire_cnt - 2
		old_gate_cnt = old_gate_cnt + 1
		old_wire_cnt = old_wire_cnt + 1


	'''elif( len(line_list) > 0 and line_list[0] == "INV_X1" ):
		cnt_vals = parse.parse_INV( cur_line, input_list, output_list )'''

if( output_cnt > 0 ):
	old_wire_cnt = old_wire_cnt - output_cnt


print "old gate count: " + str( old_gate_cnt )
print "new gate count: " + str( new_gate_cnt )
print "old wire count: " + str( old_wire_cnt )
print "new wire count: " + str( new_wire_cnt )

print input_list
print output_list

file_old.close()

'''file_old = open( "/Users/Richie/Desktop/Honors-Thesis/sample_circuit.v", "r" )
file_new = open( "/Users/Richie/Desktop/Honors-Thesis/sample_circuit_new.v", "wb" )

while( True ):
	cur_line = file_old.readline()
	line_list = cur_line.split()

	if( len(line_list) > 0 and line_list[0] == "output" ):
		file_new.write( cur_line )
		break
	else:
		file_new.write( cur_line )'''

	

