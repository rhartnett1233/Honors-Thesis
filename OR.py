

class OR():

	def __init__( self, name, in1, in2, out, comp ):
		self.name = name
		self.in1 = in1
		self.in2 = in2
		self.out = out
		self.comp = comp


	def getName( self ):
		return self.name

	def getIn1( self ):
		return self.in1

	def getIn2( self ):
		return self.in2

	def getOut( self ):
		return self.out

	def getComp( self ):
		return self.comp

	def setName( self, name ):
		self.name = name

	def setIn1( self, in1 ):
		self.in1 = in1

	def setIn2( self, in2 ):
		self.in2 = in2

	def setOut( self, out ):
		self.out = out

	def setComp( self, comp ):
		self.comp = comp