import Parser

class Module():

	def __init__( self, module_line, name, input_list, output_list, wire_list, gate_list ):
		self.module_line = module_line
		self.name = name
		self.input_list = input_list
		self.output_list = output_list
		self.wire_list = wire_list
		self.gate_list = gate_list

		self.comp_input_list = [ " " ]
		self.comp_output_list = [ " " ]
		self.comp_wire_list = [ " " ]
		self.converted_gate_list = [ " " ]

	def get_module_line( self ):
		return self.module_line

	def set_module_line( self, module_line ):
		self.module_line = module_line

	def get_name( self ):
		return self.name

	def set_name( self, name ):
		self.name = name

	def get_input_list( self ):
		return self.input_list

	def set_input_list( self, input_list ):
		self.input_list = input_list

	def get_output_list( self ):
		return self.output_list

	def set_output_list( self, output_list ):
		self.output_list = output_list

	def get_wire_list( self ):
		return self.wire_list

	def set_wire_list( self, wire_list ):
		self.wire_list = wire_list

	def get_gate_list( self ):
		return self.gate_list

	def set_gate_list( self, gate_list ):
		self.gate_list = gate_list

	def get_comp_input_list( self ):
		comp_input_list = [ " " ]
		index = 0
		while( index < len(self.input_list) ):
			if( self.input_list[0] != " " ):
				temp_input = list(self.input_list[index])
				if( temp_input[len(temp_input)-1] == "]" ):
					temp_name = self.input_list[index].split( "[" )
					name = temp_name[0]
					comp_name = name + "bar[" + temp_name[1]
					if( comp_input_list[0] == " " ):
						comp_input_list[0] = comp_name
					else:
						comp_input_list.append( comp_name )
				else:
					if( comp_input_list[0] == " " ):
						comp_input_list[0] = self.input_list[0] + "bar"
					else:
						comp_input_list.append( self.input_list[index] + "bar" )
			else:
				break
			index = index + 1
		self.comp_input_list = comp_input_list
		return comp_input_list

	def get_comp_output_list( self ):
		comp_output_list = [ " " ]
		index = 0
		while( index < len(self.output_list) ):
			if( self.output_list[0] != " " ):
				temp_output = list(self.output_list[index])
				if( temp_output[len(temp_output)-1] == "]" ):
					temp_name = self.output_list[index].split( "[" )
					name = temp_name[0]
					comp_name = name + "bar[" + temp_name[1]
					if( comp_output_list[0] == " " ):
						comp_output_list[0] = comp_name
					else:
						comp_output_list.append( comp_name )
				else:
					if( comp_output_list[0] == " " ):
						comp_output_list[0] = self.output_list[0] + "bar"
					else:
						comp_output_list.append( self.output_list[index] + "bar" )
			else:
				break
			index = index + 1
		self.comp_output_list = comp_output_list
		return comp_output_list

	def get_comp_wire_list( self ):
		comp_wire_list = [ " " ]
		index = 0
		while( index < len(self.wire_list) ):
			if( self.wire_list[0] != " " ):
				if( comp_wire_list[0] == " " ):
					comp_wire_list[0] = self.wire_list[0] + "bar"
				else:
					comp_wire_list.append( self.wire_list[index] + "bar" )
			else:
				break
			index = index + 1
		self.comp_wire_list = comp_wire_list
		return comp_wire_list


	def get_input_list_display( self ):
		temp_input_list = [ " " ]
		index = 0
		while( index < len(self.input_list) ):
			max_in = 0
			min_in = 0
			temp_list = list( self.input_list[index] )
			if( temp_list[ len(temp_list)-1 ] == "]" ):
				xx = self.input_list[index].split( "[" )
				name = xx[0]
				index = index + 1
				last = False
				while( index <= len(self.input_list) ):
					if( index < len(self.input_list) ):
						xx = self.input_list[index].split( "[" )
					next_name = xx[0]
					if( next_name == name and last == False ):
						yy = xx[1].split( "]" )
						max_in = int(yy[0])
						if( index == len(self.input_list)-1 ):
							last = True
						else:
							index = index + 1
					else:
						input_line = "[" + str(max_in) + ":" + str(min_in) + "] " + name
						if( temp_input_list[0] == " " ):
							temp_input_list[0] = input_line
						else:
							temp_input_list.append( input_line )
						break
			else:
				if( temp_input_list[0] == " " ):
					temp_input_list[0] = self.input_list[index]
				else:
					temp_input_list.append( self.input_list[index] )
				index = index + 1
		return temp_input_list


	def get_output_list_display( self ):
		temp_output_list = [ " " ]
		index = 0
		while( index < len(self.output_list) ):
			max_in = 0
			min_in = 0
			temp_list = list( self.output_list[index] )
			if( temp_list[ len(temp_list)-1 ] == "]" ):
				xx = self.output_list[index].split( "[" )
				name = xx[0]
				index = index + 1
				last = False
				while( index <= len(self.output_list) ):
					if( index < len(self.output_list) ):
						xx = self.output_list[index].split( "[" )
					next_name = xx[0]
					if( next_name == name and last == False ):
						yy = xx[1].split( "]" )
						max_in = int(yy[0])
						if( index == len(self.output_list)-1 ):
							last = True
						else:
							index = index + 1
					else:
						output_line = "[" + str(max_in) + ":" + str(min_in) + "] " + name
						if( temp_output_list[0] == " " ):
							temp_output_list[0] = output_line
						else:
							temp_output_list.append( output_line )
						break
			else:
				if( temp_output_list[0] == " " ):
					temp_output_list[0] = self.output_list[index]
				else:
					temp_output_list.append( self.output_list[index] )
				index = index + 1
		return temp_output_list


	def get_comp_output_list_display( self ):
		temp_output_list = [ " " ]
		index = 0
		while( index < len(self.comp_output_list) ):
			max_in = 0
			min_in = 0
			temp_list = list( self.comp_output_list[index] )
			if( temp_list[ len(temp_list)-1 ] == "]" ):
				xx = self.comp_output_list[index].split( "[" )
				name = xx[0]
				index = index + 1
				last = False
				while( index <= len(self.comp_output_list) ):
					if( index < len(self.comp_output_list) ):
						xx = self.comp_output_list[index].split( "[" )
					next_name = xx[0]
					if( next_name == name and last == False ):
						yy = xx[1].split( "]" )
						max_in = int(yy[0])
						if( index == len(self.comp_output_list)-1 ):
							last = True
						else:
							index = index + 1
					else:
						output_line = "[" + str(max_in) + ":" + str(min_in) + "] " + name
						if( temp_output_list[0] == " " ):
							temp_output_list[0] = output_line
						else:
							temp_output_list.append( output_line )
						break
			else:
				if( temp_output_list[0] == " " ):
					temp_output_list[0] = self.comp_output_list[index]
				else:
					temp_output_list.append( self.comp_output_list[index] )
				index = index + 1
		return temp_output_list


	def get_converted_gate_list( self ):
		parse = Parser.Parser()
		index = 0
		while( index < len(self.gate_list) ):
			cur_line = self.gate_list[index]
			line_list = cur_line.split()

			if( len(line_list) > 0 and line_list[0] == "AND2_X1" ):
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
				if( self.converted_gate_list[0] == " " ):
					self.converted_gate_list[0] = cur_line
				else:
					self.converted_gate_list.append( cur_line )
				self.converted_gate_list.append( comp_line )

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
				if( self.converted_gate_list[0] == " " ):
					self.converted_gate_list[0] = cur_line
				else:
					self.converted_gate_list.append( cur_line )
				self.converted_gate_list.append( comp_line )

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
				if( self.converted_gate_list[0] == " " ):
					self.converted_gate_list[0] = line1
				else:
					self.converted_gate_list.append( line1 )
				self.converted_gate_list.append( line2 )

			else:
				if( self.converted_gate_list[0] == " " ):
					self.converted_gate_list[0] = cur_line
				else:
					self.converted_gate_list.append( cur_line )

			index = index + 1
		return self.converted_gate_list

