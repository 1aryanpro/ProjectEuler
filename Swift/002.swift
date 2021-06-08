var fibNums: [Int] = [1, 1]

while fibNums[fibNums.count - 1] < 4000000 {
	fibNums += [fibNums[fibNums.count - 1] + fibNums[fibNums.count - 2]]
}

var out = 0
for num in stride(from: 2, through: fibNums.count-1, by: 3) {
	out += fibNums[num]
	print(num)
}

print(out)

