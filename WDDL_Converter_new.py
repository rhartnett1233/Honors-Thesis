import Converter
import Parser


parse = Parser.Parser()

old_gate_cnt = 0
new_gate_cnt = 0
cur_gate_cnt = 1
gate_list = [ " " ]

old_wire_cnt = 0
new_wire_cnt = 0
cur_gate_cnt = 1

input_list = [ " " ]
input_cnt = 0

output_list = [ " " ]
output_cnt = 0;

wire_list = [ " " ]

wire_reading_done = False
input_reading_done = False
output_reading_done = False


#file_new = open( "/Users/Richie/Desktop/Honors-Thesis/sample_circuit_new.v", "wb" )
file_new = open( "/Users/Richie/Desktop/Honors-Thesis/Converted_Sections/sBox_modules_modified.v", "wb" )
done = False
last = False

inc = 0

module_list = ["CD2_0","CD4_0","CD16_0","CD2_77","CD2_78","CD2_79","CD4_39","encode_0",
				"CD2_1","CD2_2","CD2_3","CD2_4","CD4_1","CD4_2","CD16_1","encode_1",
				"CD2_5","CD2_6","CD2_7","CD2_8","CD4_3","CD4_4","CD16_2","encode_2",
				"CD2_9","CD2_10","CD2_11","CD2_12","CD4_5","CD4_6","CD16_3","encode_3",
				"CD2_13","CD2_14","CD2_15","CD2_16","CD4_7","CD4_8","CD16_4","encode_4",
				"CD2_17","CD2_18","CD2_19","CD2_20","CD4_9","CD4_10","CD16_5","encode_5",
				"CD2_21","CD2_22","CD2_23","CD2_24","CD4_11","CD4_12","CD16_6","encode_6",
				"CD2_25","CD2_26","CD2_27","CD2_28","CD4_13","CD4_14","CD16_7","encode_7",
				"CD2_29","CD2_30","CD2_31","CD2_32","CD4_15","CD4_16","CD16_8","encode_8",
				"CD2_33","CD2_34","CD2_35","CD2_36","CD4_17","CD4_18","CD16_9","encode_9",
				"CD2_37","CD2_38","CD2_39","CD2_40","CD4_19","CD4_20","CD16_10","encode_10",
				"CD2_41","CD2_42","CD2_43","CD2_44","CD4_21","CD4_22","CD16_11","encode_11",
				"CD2_45","CD2_46","CD2_47","CD2_48","CD4_23","CD4_24","CD16_12","encode_12",
				"CD2_49","CD2_50","CD2_51","CD2_52","CD4_25","CD4_26","CD16_13","encode_13",
				"CD2_53","CD2_54","CD2_55","CD2_56","CD4_27","CD4_28","CD16_14","encode_14",
				"CD2_57","CD2_58","CD2_59","CD2_60","CD4_29","CD4_30","CD16_15","encode_15",
				"CD2_61","CD2_62","CD2_63","CD2_64","CD4_31","CD4_32","CD16_16","encode_16",
				"CD2_65","CD2_66","CD2_67","CD2_68","CD4_33","CD4_34","CD16_17","encode_17",
				"CD2_69","CD2_70","CD2_71","CD2_72","CD4_35","CD4_36","CD16_18","encode_18",
				"CD2_73","CD2_74","CD2_75","CD2_76","CD4_37","CD4_38","CD16_19","encode_19"]

module_list_x = [ "CD2_0", "CD4_0", "CD2_79" ]

inc = 0

module_cnt = 0

while( done == False ):
	#file_old = open( "/Users/Richie/Desktop/Honors-Thesis/Converted_Sections/sBox_modules.v", "r" )
	#file_old = open( "/Users/Richie/Desktop/Honors-Thesis/sample_circuit.v", "r" )
	file_old = open( "/Users/Richie/Desktop/Honors-Thesis/aes_128.v", "r" )

	while( module_cnt < len(module_list) ):
		cur_line = file_old.readline()
		line_list = cur_line.split()
		if( len(line_list) > 1 and line_list[1] == module_list[module_cnt] ):
			break
		elif( module_cnt == 0 ):
			file_new.write( cur_line )
	
	if( module_cnt == len(module_list) ):
		while( True ):
			cur_line = file_old.readline()
			line_list = cur_line.split()
			if( len(line_list) > 1 and line_list[1] == module_list[module_cnt-1] ):
				while( True ):
					cur_line = file_old.readline()
					line_list = cur_line.split()
					if( len(line_list) > 0 and line_list[0] == "endmodule" ):
						cur_line = file_old.readline()
						line_list = cur_line.split()
						break
				break
		t = 0
		while( True ):
			if( t == 0 ):
				t = 1
			else:
				cur_line = file_old.readline()
				line_list = cur_line.split()

			if( len(line_list) > 0 and line_list[0] == "//done" ):
				file_new.write( cur_line )
				done = True
				break
			else:
				file_new.write( cur_line )

	#######################################################
	# Finding inputs, outputs, and wires needed           #
	#######################################################
	while( done == False ):
		cur_line = file_old.readline()
		line_list = cur_line.split()
		if( len(line_list) > 0 and line_list[0] == "endmodule" ):
			xy = file_old.readline()
			xy = file_old.readline()
			xy_list = xy.split()
			if( len(xy_list) > 0 and xy_list[0] == "//done" ):
				last = True
			break

		elif( len(line_list) > 0 and line_list[0] == "input" ):
			index = 1
			while( input_reading_done == False ):
				while( True ):
					temp_input = list(line_list[index])
					if( temp_input[len(temp_input)-1] == ";" ):
						xx = line_list[index].split( ";" )
						cur_input = xx[0]
						temp_xx = list( xx[0] )
						if( input_list[0] == " " ):
							input_list[0] = cur_input
						else:
							input_list.append( cur_input )
						input_reading_done = True
						index = index + 1
						break

					elif( temp_input[0] == "[" ):
						cur_input = line_list[index]
						temp_input_name = line_list[ index+1 ].split( ";" )
						input_name = temp_input_name[0]
						yy = cur_input.split( ":" )
						temp_max_in = yy[0].split( "[" )
						max_in = temp_max_in[1]
						temp_min_in = yy[1].split( "]" )
						min_in = temp_min_in[0]
						max_iter = int(max_in) - int(min_in) + 1
						iter_index = int(min_in)
						while( iter_index <= int(max_in) ):
							if( input_list[0] == " " ):
								input_list[0] = input_name + "[" + str(iter_index) + "]"
							else:
								input_list.append( input_name + "[" + str(iter_index) + "]" )
							iter_index = iter_index + 1
						input_reading_done = True
						index = index + 2
						break

					else:
						xx = line_list[index].split( "," )
						cur_input = xx[0]
						if( input_list[0] == " " ):
							input_list[0] = cur_input
						else:
							input_list.append( cur_input )
						if( index == len(line_list)-1 ):
							break
						index = index + 1
				if( input_reading_done == False ):
					cur_line = file_old.readline()
					line_list = cur_line.split()
					index = 0
				else:
					cur_line = file_old.readline()
					line_list = cur_line.split()
					if( len(line_list) > 0 and line_list[0] == "input" ):
						input_reading_done = False
						index = 1

					
		elif( len(line_list) > 0 and line_list[0] == "output" ):
			index = 1
			while( output_reading_done == False ):
				while( True ):
					temp_output = list(line_list[index])
					if( temp_output[len(temp_output)-1] == ";" ):
						xx = line_list[index].split( ";" )
						cur_output = xx[0]
						temp_xx = list( xx[0] )
						if( output_list[0] == " " ):
							output_list[0] = cur_output
						else:
							output_list.append( cur_output )
						output_reading_done = True
						index = index + 1
						break

					elif( temp_output[0] == "[" ):
						cur_output = line_list[index]
						temp_output_name = line_list[ index+1 ].split( ";" )
						output_name = temp_output_name[0]
						yy = cur_output.split( ":" )
						temp_max_out = yy[0].split( "[" )
						max_out = temp_max_out[1]
						temp_min_out = yy[1].split( "]" )
						min_out = temp_min_out[0]
						max_iter = int(max_out) - int(min_out) + 1
						iter_index = int(min_out)
						while( iter_index <= int(max_out) ):
							if( output_list[0] == " " ):
								output_list[0] = output_name + "[" + str(iter_index) + "]"
							else:
								output_list.append( output_name + "[" + str(iter_index) + "]" )
							iter_index = iter_index + 1
						output_reading_done = True
						index = index + 2
						break

					else:
						xx = line_list[index].split( "," )
						cur_output = xx[0]
						if( output_list[0] == " " ):
							output_list[0] = cur_output
						else:
							output_list.append( cur_output )
						if( index == len(line_list)-1 ):
							break
						index = index + 1
				if( output_reading_done == False ):
					cur_line = file_old.readline()
					line_list = cur_line.split()
					index = 0
				else:
					cur_line = file_old.readline()
					line_list = cur_line.split()
					if( len(line_list) > 0 and line_list[0] == "output" ):
						output_reading_done = False
						index = 1

		elif( len(line_list) > 0 and line_list[0] == "wire" ):
			index = 1
			while( wire_reading_done == False ):
				while( True ):
					temp_wire = list(line_list[index])
					if( temp_wire[len(temp_wire)-1] == ";"):
						xx = line_list[index].split( ";" )
						cur_wire = xx[0]
						if( wire_list[0] == " " ):
							wire_list[0] = cur_wire
						else:
							wire_list.append( cur_wire )
						wire_reading_done = True
						break
					else:
						xx = line_list[index].split( "," )
						cur_wire = xx[0]
						if( wire_list[0] == " " ):
							wire_list[0] = cur_wire
						else:
							wire_list.append( cur_wire )
						if( index == len(line_list)-1 ):
							break
					index = index + 1
				if( wire_reading_done == False ):
					cur_line = file_old.readline()
					line_list = cur_line.split()
					index = 0

	file_old.close()

	


	if( done == False ):
		#######################################################
		# Writing complements to inputs, output, and wires    #
		# found                                               #
		#######################################################
		comp_wire_list = [ " " ]
		x = 0
		while( x < len(wire_list) ):
			if( wire_list[0] != " " ):
				if( comp_wire_list[0] == " " ):
					comp_wire_list[0] = wire_list[0] + "bar"
				else:
					comp_wire_list.append( wire_list[x] + "bar" )
			else:
				break
			x = x + 1

		comp_input_list = [ " " ]
		x = 0
		while( x < len(input_list) ):
			if( input_list[0] != " " ):
				temp_input = list(input_list[x])
				if( temp_input[len(temp_input)-1] == "]" ):
					temp_name = input_list[x].split( "[" )
					name = temp_name[0]
					comp_name = name + "bar[" + temp_name[1]
					if( comp_input_list[0] == " " ):
						comp_input_list[0] = comp_name
					else:
						comp_input_list.append( comp_name )
				else:
					if( comp_input_list[0] == " " ):
						comp_input_list[0] = input_list[0] + "bar"
					else:
						comp_input_list.append( input_list[x] + "bar" )
			else:
				break
			x = x + 1

		comp_output_list = [ " " ]
		x = 0
		while( x < len(output_list) ):
			if( output_list[0] != " " ):
				temp_output = list(output_list[x])
				if( temp_output[len(temp_output)-1] == "]" ):
					temp_name = output_list[x].split( "[" )
					name = temp_name[0]
					comp_name = name + "bar[" + temp_name[1]
					if( comp_output_list[0] == " " ):
						comp_output_list[0] = comp_name
					else:
						comp_output_list.append( comp_name )
				else:
					if( comp_output_list[0] == " " ):
						comp_output_list[0] = output_list[0] + "bar"
					else:
						comp_output_list.append( output_list[x] + "bar" )
			else:
				break
			x = x + 1


		'''print input_list
		print comp_input_list
		print output_list
		print comp_output_list
		print wire_list
		print comp_wire_list'''





		#######################################################
		# Parsing file again to make WDDL modifications       #
		#######################################################
		#file_old = open( "/Users/Richie/Desktop/Honors-Thesis/Converted_Sections/sBox_modules.v", "r" )
		#file_old = open( "/Users/Richie/Desktop/Honors-Thesis/sample_circuit.v", "r" )
		file_old = open( "/Users/Richie/Desktop/Honors-Thesis/aes_128.v", "r" )
		break_again = False
		while( module_cnt < len(module_list) and break_again == False):
			cur_line = file_old.readline()
			line_list = cur_line.split()
			if( len(line_list) > 1 and line_list[1] == module_list[module_cnt] ):
				file_new.write( cur_line )
				break
			elif( len(line_list) > 1 and module_cnt > 0 and line_list[1] == module_list[module_cnt-1] ):
				while( True ):
					cur_line = file_old.readline()
					line_list = cur_line.split()
					if( len(line_list) > 0 and line_list[0] == "endmodule" ):
						break
				inc = inc + 1
				while( True ):
					cur_line = file_old.readline()
					line_list = cur_line.split()
					if( len(line_list) > 1 and line_list[1] == module_list[module_cnt] ):
						file_new.write( cur_line )
						break_again = True
						break
					else:
						file_new.write( cur_line )
		

		while( True ):
			cur_line = file_old.readline()
			line_list = cur_line.split()

			if( len(line_list) > 0 and line_list[0] == "//input_done" ):
				index = 0
				while( index < len(input_list) ):
					assign_line = "  assign " + comp_input_list[index] + " = ~" + input_list[index] + ";\n"
					file_new.write( assign_line )
					index = index + 1
				file_new.write( cur_line )

			elif( len(line_list) > 0 and line_list[0] == "//output_done" ):
				index = 0
				while( index < len(comp_output_list) ):
					out_min = 0
					out_max = 0
					name = " "
					temp_index = 0
					multi_reg = False
					while( index < len(comp_output_list) ):
						temp_output = comp_output_list[index].split( "[" )
						if( temp_output[0] == comp_output_list[index] ):
							break
						temp = temp_output[1].split( "]" )
						name = temp_output[0]
						if( temp_index == 0 ):
							out_min = temp[0]
							temp_index = 1
							multi_reg = True
						else:
							out_max = temp[0]
							multi_reg = True
						index = index + 1

					if( multi_reg == True ):
						reg_line = "  reg " + "[" + str(out_max) + ":" + str(out_min) + "] " + name + ";\n"
					else:
						reg_line = "  reg " + comp_output_list[index] + ";\n"
					file_new.write( reg_line )
					index = index + 1
				file_new.write( cur_line )

			elif( len(line_list) > 0 and line_list[0] == "//wire_done" ):
				wire_line = "  wire "
				index = 0
				while( index < len(wire_list) ):
					if( index == len(wire_list)-1 ):
						wire_line = wire_line + comp_wire_list[index] + ";\n"
					else:
						wire_line = wire_line + comp_wire_list[index] + ", "
					index = index + 1
				if( wire_list[0] != " " ):
					file_new.write( wire_line )
					file_new.write( cur_line )

				break
			else:
				file_new.write( cur_line )
				

		while( True ):
			cur_line = file_old.readline()
			line_list = cur_line.split()
			if( len(line_list) > 0 and line_list[0] == "endmodule" ):
				file_new.write( cur_line )
				break

			elif( len(line_list) > 0 and line_list[0] == "AND2_X1" ):
				name = line_list[1] + "bar"
				vals = parse.parse_AND( cur_line )
				in1 = vals[0]
				comp_in1 = in1 + "bar"
				temp_in1 = list(in1)
				if( temp_in1[len(temp_in1)-1] == "]" ):
					temp_comp = in1.split( "[" )
					comp_in1 = temp_comp[0] + "bar[" + temp_comp[1]
				in2 = vals[1]
				comp_in2 = in2 + "bar"
				temp_in2 = list(in2)
				if( temp_in2[len(temp_in2)-1] == "]" ):
					temp_comp = in2.split( "[" )
					comp_in2 = temp_comp[0] + "bar[" + temp_comp[1]
				out = vals[2]
				comp_out = out + "bar"
				temp_out = list(out)
				if( temp_out[len(temp_out)-1] == "]" ):
					temp_comp = out.split( "[" )
					comp_out = temp_comp[0] + "bar[" + temp_comp[1]
				comp_line = "  OR2_X1 " + name + " ( .A1(" + comp_in1 + "), .A2(" + comp_in2 + "), .ZN(" + comp_out + ");\n"
				file_new.write( cur_line )
				file_new.write( comp_line )

			elif( len(line_list) > 0 and line_list[0] == "OR2_X1" ):
				name = line_list[1] + "bar"
				vals = parse.parse_OR( cur_line )
				in1 = vals[0]
				comp_in1 = in1 + "bar"
				temp_in1 = list(in1)
				if( temp_in1[len(temp_in1)-1] == "]" ):
					temp_comp = in1.split( "[" )
					comp_in1 = temp_comp[0] + "bar[" + temp_comp[1]
				in2 = vals[1]
				comp_in2 = in2 + "bar"
				temp_in2 = list(in2)
				if( temp_in2[len(temp_in2)-1] == "]" ):
					temp_comp = in2.split( "[" )
					comp_in2 = temp_comp[0] + "bar[" + temp_comp[1]
				out = vals[2]
				comp_out = out + "bar"
				temp_out = list(out)
				if( temp_out[len(temp_out)-1] == "]" ):
					temp_comp = out.split( "[" )
					comp_out = temp_comp[0] + "bar[" + temp_comp[1]
				comp_line = "  AND2_X1 " + name + " ( .A1(" + comp_in1 + "), .A2(" + comp_in2 + "), .ZN(" + comp_out + ");\n"
				file_new.write( cur_line )
				file_new.write( comp_line )

			elif( len(line_list) > 0 and line_list[0] == "INV_X1" ):
				name = line_list[1] + "bar"
				vals = parse.parse_INV( cur_line )
				in1 = vals[0]
				out = vals[1]
				comp_in1 = vals[0] + "bar"
				temp_in1 = list(in1)
				if( temp_in1[len(temp_in1)-1] == "]" ):
					temp_comp = in1.split( "[" )
					comp_in1 = temp_comp[0] + "bar[" + temp_comp[1]
				comp_out = vals[1] + "bar"
				temp_out = list(out)
				if( temp_out[len(temp_out)-1] == "]" ):
					temp_comp = out.split( "[" )
					comp_out = temp_comp[0] + "bar[" + temp_comp[1]
				line1 = "  assign " + comp_out + " = " + in1 + ";\n"
				line2 = "  assign " + out + " = " + comp_in1 + ";\n"
				file_new.write( line1 )
				file_new.write( line2 )

			else:
				file_new.write( cur_line )

		file_new.write( "\n\n" )

		if( last == True ):
			done = True
		else:
			input_list = [ " " ]
			comp_input_list = [ " " ]
			output_list = [ " " ]
			comp_output_list = [ " " ]
			wire_list = [ " " ]
			comp_wire_list = [ " " ]
			input_reading_done = False
			output_reading_done = False
			wire_reading_done = False

	module_cnt = module_cnt + 1



file_old.close()
file_new.close()












