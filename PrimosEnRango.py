import math

def esPrimo(x):
	SQRT=int( math.sqrt(x) )
	i=3
	while i<=SQRT:
		if x%i==0: return False
		i+=2
	return True

i=2
f=100
if i<=2: print(2)
if i%2==0: i+=1
while i<=f:
	if esPrimo(i) :
		print(i)
	i+=2

