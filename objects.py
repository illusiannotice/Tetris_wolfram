

class Object:
    def __init__(self, pos: tuple, speed: int, falling: bool):
		self.posx, self.posy = pos
		self.speed = speed
		self.falling = falling

class Square(Object):
    def __init__(self, speed, k):
		self.form = [[1,1],
					 [1,1]]
		self.k = k

class Tshape(Object):
	def __init__(self, k):
		self.form = [[0,1,0],
					 [1,1,1]]
		self.k = k

class Lshape(object):
	def __init__(self, k):
		self.form = [[1,0],
					 [1,0],
					 [1,1]]
		self.k = k

class Stair(Object):
	def __init__(self, k):
		self.form = [[1,1,0],
					 [0,1,1]]
		self.k = k
