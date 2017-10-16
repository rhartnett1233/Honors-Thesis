import Parser

file_new = open( "/Users/Richie/Desktop/Honors-Thesis/Converted_Sections/converted_aes_final.v", "wb" )
#file_new = open( "/Users/Richie/Desktop/Honors-Thesis/Converted_Sections/sBox_modules_modified.v", "wb" )

file_old = open( "/Users/Richie/Desktop/Honors-Thesis/Converted_Sections/sBox_modules_modified.v", "r" )


parse = Parser.Parser()

while( True ):
	cur_line = file_old.readline()
	line_list = cur_line.split()

	if( cur_line == "" ):
		break

	#print line_list
	if( len(line_list) > 0 and line_list[0] == "AND2_X1" ):
		name = line_list[1]
		vals = parse.parse_AND( cur_line )
		line0 = "  //AND " + name + "\n"
		line1 = "  LUT2 " + name + "(\n"
		line2 = "    .INIT(4'h8)\n"
		line3 = "  ) LUT2_inst (\n"
		line4 = "    .O(" + vals[2] + ")\n"
		line5 = "    .I0(" + vals[0] + ")\n"
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

	elif( len(line_list) > 0 and line_list[0] == "OR2_X1" ):
		name = line_list[1]
		vals = parse.parse_OR( cur_line )
		line0 = "  //OR " + name + "\n"
		line1 = "  LUT2 " + name + "(\n"
		line2 = "    .INIT(4'he)\n"
		line3 = "  ) LUT2_inst (\n"
		line4 = "    .O(" + vals[2] + ")\n"
		line5 = "    .I0(" + vals[0] + ")\n"
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

	else:
		file_new.write( cur_line )

file_new.close()
file_old.close()
