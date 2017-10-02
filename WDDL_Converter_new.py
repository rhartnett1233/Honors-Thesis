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


file_old = open( "/Users/Richie/Desktop/Honors-Thesis/sample_circuit.v", "r" )

while( True ):
	cur_line = file_old.readline()
	line_list = cur_line.split()
	if( len(line_list) > 0 and line_list[0] == "endmodule" ):
		break

	elif( len(line_list) > 0 and line_list[0] == "input" ):
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

print wire_list












