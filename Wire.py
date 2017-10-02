

class Wire():

	def __init__( self, name, start, end ):
		self.name = name
		self.start = start
		self.end = end


	def getName( self ):
		return self.name

	def getStart( self ):
		return self.start

	def getEnd( self ):
		return self.end

	def setName( self, name ):
		self.name = name

	def setStart( self, start ):
		self.start = start

	def setEnd( self, end ):
		self.end = end