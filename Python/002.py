#!/usr/bin/env python3

fibNums = [1, 1]

while(fibNums[-1] < 4000000):
		fibNums.append(fibNums[-1] + fibNums[-2])

out = 0
i = 0

print(fibNums[2::3])
print(sum(fibNums[2::3]))