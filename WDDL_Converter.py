
import Parser
import Module_new


file_old = open( "/Users/Richie/Desktop/Honors-Thesis/sample_circuit.v", "r" )
#file_old = open( "/Users/Richie/Desktop/Honors-Thesis/combo_design/cryptosrc/aes_googlevault/addRoundKey.v", "r" )

#list to store module objects
module_list = [ " " ]

#S_BOX modules
'''modify_module_list = ["CD2_0","CD4_0","CD16_0","CD2_77","CD2_78","CD2_79","CD4_39","encode_0",
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
						"CD2_73","CD2_74","CD2_75","CD2_76","CD4_37","CD4_38","CD16_19","encode_19"]'''

#MixCol modules
'''modify_module_list = ["scale2_0", "byteXor_0", "byteXor4_0", "scale2_13", "scale2_14", "scale2_15", "byteXor_14", 
						"byteXor_15", "byteXor_16", "byteXor4_13", "byteXor4_14", "byteXor4_15", "scale2_1", "scale2_2", "scale2_3", 
						"scale2_4", "byteXor_2", "byteXor_3", "byteXor_4", "byteXor_5", "byteXor4_1", "byteXor4_2", "byteXor4_3", 
						"byteXor4_4", "scale2_5", "scale2_6", "scale2_7", "scale2_8", "byteXor_6", "byteXor_7", "byteXor_8", 
						"byteXor_9", "byteXor4_5", "byteXor4_6", "byteXor4_7", "byteXor4_8", "scale2_9", "scale2_10", "scale2_11", 
						"scale2_12", "byteXor_10", "byteXor_11", "byteXor_12", "byteXor_13", "byteXor4_9", "byteXor4_10", "byteXor4_11", 
						"byteXor4_12", "scale2_0", "scale2_0", "scale2_0", "scale2_0", "scale2_0"]'''

#AddRoundKey modules
#modify_module_list = [ "addRoundKey" ]

modify_module_list = [ "sample_circuit" ]

#while loop runs until entire Verilog file is parsed
while( True ):
	module_line = " "
	name = " "
	input_list = [ " " ]
	output_list = [ " " ]
	wire_list = [ " " ]
	assign_list = [ " " ]
	gate_list = [ " " ]
	input_reading_done = False
	output_reading_done = False
	wire_reading_done = False

	cur_line = file_old.readline()
	line_list = cur_line.split()

	#indicates there are no more lines to be read in
	if( len(line_list) > 0 and line_list[0] == "//done" ):
		break

	#enters conditional if the line begins with "module"
	elif( len(line_list) > 0 and line_list[0] == "module" ):
		module_line = cur_line
		name = line_list[1]
		#iterates through rest of lines in module
		while( True ):
			cur_line = file_old.readline()
			line_list = cur_line.split()

			#indicates end of module, uses information obtained to create Module object and adds it to module_list
			if( len(line_list) > 0 and line_list[0] == "endmodule" ):
				cur_module = Module_new.Module_new( module_line, name, input_list, output_list, assign_list, wire_list, gate_list )
				if( module_list[0] == " " ):
					module_list[0] = cur_module
				else:
					module_list.append( cur_module )
				break

			#records the inputs of the module
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

						#enters if input has multiple signals with it, i.e. [2:0]
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
							if( cur_input != "wire" ):
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

			#records the outputs of the module
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

						#enters if output has multiple signals with it, i.e. [2:0]
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
							if( cur_output != "wire" ):
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

			#records the wires of the module
			elif( len(line_list) > 0 and line_list[0] == "wire" ):
				index = 1
				while( wire_reading_done == False ):
					while( True ):
						temp_wire = list(line_list[index])
						if( temp_wire[len(temp_wire)-1] == ";" ):
							xx = line_list[index].split( ";" )
							cur_wire = xx[0]
							temp_xx = list( xx[0] )
							if( wire_list[0] == " " ):
								wire_list[0] = cur_wire
							else:
								wire_list.append( cur_wire )
							wire_reading_done = True
							index = index + 1
							break

						#enters if wire has multiple signals with it, i.e. [2:0]
						elif( temp_wire[0] == "[" ):
							cur_wire = line_list[index]
							temp_wire_name = line_list[ index+1 ].split( ";" )
							wire_name = temp_wire_name[0]
							yy = cur_wire.split( ":" )
							temp_max_out = yy[0].split( "[" )
							max_out = temp_max_out[1]
							temp_min_out = yy[1].split( "]" )
							min_out = temp_min_out[0]
							max_iter = int(max_out) - int(min_out) + 1
							iter_index = int(min_out)
							while( iter_index <= int(max_out) ):
								if( wire_list[0] == " " ):
									wire_list[0] = wire_name + "[" + str(iter_index) + "]"
								else:
									wire_list.append( wire_name + "[" + str(iter_index) + "]" )
								iter_index = iter_index + 1
							wire_reading_done = True
							index = index + 2
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
					else:
						cur_line = file_old.readline()
						line_list = cur_line.split()
						if( len(line_list) > 0 and line_list[0] == "wire" ):
							wire_reading_done = False
							index = 1

			elif( len(line_list) > 0 and line_list[0] == "assign" ):
				if( assign_list[0] == " " ):
					assign_list[0] = cur_line
				else:
					assign_list.append(cur_line)

			#adds rest of lines to gate_list
			elif( len(line_list) > 0 and line_list[0] != "//input_done" and line_list[0] != "//output_done" and line_list[0] != "//wire_done" ):
				if( gate_list[0] == " " ):
					gate_list[0] = cur_line
				else:
					gate_list.append( cur_line )


cur_mod = module_list[0]
cur_mod.get_comp_assign_list()
#file to write to
file_new = open( "/Users/Richie/Desktop/Honors-Thesis/sample_circuit_new.v", "wb" )
#file_new = open( "/Users/Richie/Desktop/Honors-Thesis/combo_design/cryptosrc/aes_googlevault/WDDL/addRoundKey_WDDL.v", "wb" )

module_cnt = 0
modify_module_cnt = 0

#runs through modules in module_list and writes them all back
while( module_cnt < len(module_list) ):
	cur_module = module_list[ module_cnt ]

	#checks to see if module name is in modify_module_list, if yes then it converts it to WDDL
	if( cur_module.get_name() in modify_module_list ):
		file_new.write( cur_module.get_module_line() )
		file_new.write( "\n" )

		#inputs
		input_list_display = cur_module.get_input_list_display()
		input_list = cur_module.get_input_list()
		comp_input_list = cur_module.get_comp_input_list();
		comp_input_list_display = cur_module.get_comp_input_list_display()
		for item in input_list_display:
			line = "  input wire " + item + ";\n"
			file_new.write( line )
		index = 0
		while( index < len(comp_input_list_display) ):
			line = "  wire " + comp_input_list_display[index] + ";\n"
			file_new.write( line )
			index = index + 1
		index = 0
		while( index < len(input_list) ):
			line = "  assign " + comp_input_list[index] + " = ~" + input_list[index] + ";\n"
			file_new.write( line )
			index = index + 1
		file_new.write( "//input_done\n\n")

		#outputs
		output_list = cur_module.get_output_list()
		comp_output_list = cur_module.get_comp_output_list()
		output_list_display = cur_module.get_output_list_display()
		comp_output_list_display = cur_module.get_comp_output_list_display()
		for item in output_list_display:
			line = "  output wire " + item + ";\n"
			file_new.write( line )
		for item in comp_output_list_display:
			line = "  wire " + item + ";\n"
			file_new.write( line )
		file_new.write( "//output_done\n\n")

		#wires
		wire_list = cur_module.get_wire_list()
		comp_wire_list = cur_module.get_comp_wire_list()
		wire_list_display = cur_module.get_wire_list_display()
		comp_wire_list_display = cur_module.get_comp_wire_list_display()
		if( wire_list[0] != " " ):
			for item in wire_list_display:
				line = "  wire " + item + ";\n"
				file_new.write( line )
			for item in comp_wire_list_display:
				line = "  wire " + item + ";\n"
				file_new.write( line )
		file_new.write( "//wire_done\n\n")

		#assigns
		assign_list = cur_module.get_assign_list()
		comp_assign_list = cur_module.get_comp_assign_list()
		if( len(assign_list) > 0 ):
			for item in assign_list:
				file_new.write( item )
			for item in comp_assign_list:
				file_new.write( item )
		file_new.write( "//assign_done\n\n")

		#gates
		converted_gate_list = cur_module.get_converted_gate_list()
		for item in converted_gate_list:
			file_new.write( item )
		file_new.write( "endmodule\n\n" )

	#if module is not to be modified, simple write it back the way it was recorded
	else:
		file_new.write( cur_module.get_module_line() )
		file_new.write( "\n" )

		#inputs
		input_list_display = cur_module.get_input_list_display()
		for item in input_list_display:
			line = "  input wire " + item + ";\n"
			file_new.write( line )
		file_new.write( "//input_done\n\n")

		#outputs
		output_list_display = cur_module.get_output_list_display()
		for item in output_list_display:
			line = "  output wire " + item + ";\n"
			file_new.write( line )
		file_new.write( "//output_done\n\n")

		#wires
		wire_list_display = cur_module.get_wire_list_display()
		if( wire_list_display[0] != " " ):
			for item in wire_list_display:
				line = "  wire " + item + ";\n"
				file_new.write( line )
		file_new.write( "//wire_done\n\n")

		#assign
		assign_list = cur_module.get_assign_list()
		if( len(assign_list) > 0 ):
			for item in assign_list:
				file_new.write( item )
		file_new.write( "//assign_done\n\n")

		#gates
		gate_list = cur_module.get_gate_list()
		for item in gate_list:
			file_new.write( item )
		file_new.write( "endmodule\n\n" )

	module_cnt = module_cnt + 1
file_new.write( "//done\n" )




	

