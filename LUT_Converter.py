import Parser

#file_new = open( "/Users/Richie/Desktop/Honors-Thesis/cw305_verilog/cryptosrc/converted_aes_final.v", "wb" )
#file_new = open( "/Users/Richie/Desktop/Honors-Thesis/Converted_Sections/sBox_modules_modified.v", "wb" )
file_new = open( "/Users/Richie/Desktop/Honors-Thesis/combo_design_precharge/cryptosrc/aes_googlevault/Precharge/Precharge_LUT/s_box_Precharge_LUT.v", "wb" )

#file_old = open( "/Users/Richie/Desktop/Honors-Thesis/Converted_Sections/sBox_modules_modified.v", "r" )
file_old = open( "/Users/Richie/Desktop/Honors-Thesis/combo_design_precharge/cryptosrc/aes_googlevault/Precharge/Precharge_Files/s_box_Precharge.v", "r" )


parse = Parser.Parser()

#loops through entire Verilog file
while( True ):
	cur_line = file_old.readline()
	line_list = cur_line.split()

	#breaks loop when reached end of file
	if( cur_line == "" ):
		break

	#if line is an AND gate instantiate it to its own LUT
	if( len(line_list) > 0 and line_list[0] == "AND2_X1" ):
		name = line_list[1]
		vals = parse.parse_AND( cur_line )
		#lines to format the AND gate
		line0 = "  //AND " + name + "\n"
		line1 = "  LUT2 #(\n"
		line2 = "    .INIT(4'h8)\n"
		line3 = "  ) LUT2_" + name + " (\n"
		line4 = "    .O(" + vals[2] + "),\n"
		line5 = "    .I0(" + vals[0] + "),\n"
		line6 = "    .I1(" + vals[1] + ")\n"
		line7 = "  );\n"
		file_new.write( line0 )
		file_new.write( line1 )
		file_new.write( line2 )
		file_new.write( line3 )
		file_new.write( line4 )
		file_new.write( line5 )
		file_new.write( line6 )
		file_new.write( line7 )

	#if line is an OR gate instantiate it to its own LUT
	elif( len(line_list) > 0 and line_list[0] == "OR2_X1" ):
		name = line_list[1]
		vals = parse.parse_OR( cur_line )
		#lines to format the OR gate
		line0 = "  //OR " + name + "\n"
		line1 = "  LUT2 #(\n"
		line2 = "    .INIT(4'he)\n"
		line3 = "  ) LUT2_" + name + " (\n"
		line4 = "    .O(" + vals[2] + "),\n"
		line5 = "    .I0(" + vals[0] + "),\n"
		line6 = "    .I1(" + vals[1] + ")\n"
		line7 = "  );\n"
		file_new.write( line0 )
		file_new.write( line1 )
		file_new.write( line2 )
		file_new.write( line3 )
		file_new.write( line4 )
		file_new.write( line5 )
		file_new.write( line6 )
		file_new.write( line7 )

	#if not an AND or OR gate, right the line to new file
	else:
		file_new.write( cur_line )

file_new.close()
file_old.close()
