#!/usr/bin/env python3
import math

def findMaxPrimeFactor (n):
	maxPrimeFactor = -1
	
	while (n % 2 == 0):
		maxPrimeFactor = 2
		n /= 2
	
	for i in range(3, math.ceil(math.sqrt(n)), 2):
		while (n % i == 0):
			maxPrimeFactor = i
			n /= i
	
	if n > 2:
		maxPrimeFactor = n
		
	return int(maxPrimeFactor)

print(findMaxPrimeFactor(600851475143))