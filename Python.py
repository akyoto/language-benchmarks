import time
import math

class Benchmark:
	
	def __init__(self, name):
		self.name = name
		
	def __enter__(self):
		self.start = time.time()
		
	def __exit__(self, type, value, traceback):
		self.end = time.time()
		print((self.name + ":").ljust(40) + (str(int((self.end - self.start) * 1000000)) + " microseconds").rjust(40))

def benchWarmup():
	n = 5000000
	t = "Hello SさしSさせSさすせそSさ"
	result = ""
	
	for i in range(n):
		result = t.replace("せ", "さ")

# = FILEIO =
def benchReadAll():
	n = 12000
	testFile = "Testfile.txt"
	
	with Benchmark("FileIO.ReadAll"):
		for i in range(n):
			with open(testFile) as f:
				f.read()
	
def benchFileIO():
	benchReadAll()
	
# = MATH =
sqrt = math.sqrt
factorial = math.factorial

def distance(x1, y1, x2, y2):
	return sqrt((x2 - x1) * (x2 - x1) + (y2 - y1) * (y2 - y1))

def benchDistance():
	n = 1600000
	a1 = 1
	b1 = 2
	a2 = 256
	b2 = 278
	resDist = 0
	
	with Benchmark("Math.Distance"):
		for i in range(n):
			resDist = distance(a1, b1, a2, b2)
	
def benchFactorial():
	resFact = 0
	bigA = 50000
	
	with Benchmark("Math.Factorial"):
		resFact = factorial(bigA)

def benchMath():
	benchDistance()
	benchFactorial()

# = STRINGS =
def benchConcat():
	n = 1000000
	a = "Hello World あいうえおか"
	
	with Benchmark("Strings.Concat"):
		for i in range(n):
			result = a + a + a + a + a + a

def benchReplace():
	n = 4000000
	t = "Hello SさしSさせSさすせそSさ"
	result = ""
	
	with Benchmark("Strings.Replace"):
		for i in range(n):
			result = t.replace("せ", "さ")

def benchStrings():
	benchConcat()
	benchReplace()

# = TIME =
def benchCurrentTime():
	n = 1000000
	
	with Benchmark("Time.Now"):
		for i in range(n):
			now = time.time()

def benchTime():
	benchCurrentTime()

def benchAll():
	benchWarmup()
	benchWarmup()
	
	print("Starting:")
	
	with Benchmark("All benchmarks"):
		benchFileIO()
		benchMath()
		benchStrings()
		benchTime()
		
		print("-" * 80)

benchAll()
