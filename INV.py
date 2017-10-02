

class INV():

	def __init__( self, name, in1, out, comp ):
		self.name = name
		self.in1 = in1
		self.out = out
		self.comp = comp


	def getName( self ):
		return self.name

	def getIn1( self ):
		return self.in1

	def getOut( self ):
		return self.out

	def getComp( self ):
		return self.comp

	def setName( self, name ):
		self.name = name

	def setIn1( self, in1 ):
		self.in1 = in1

	def setOut( self, out ):
		self.out = out

	def setComp( self, comp ):
		self.comp = comp
