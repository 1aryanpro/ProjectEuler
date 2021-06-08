package main

import "fmt"

// recursive fibonacci function because fixed-length arrays
func fib(n int) int {
	if n == 0 || n == 1 {
		return n
	} else {
		return (fib(n - 1) + fib(n - 2))
	}
}

func main() {
	out := 0;
	i := 0;
	cur := fib(i)
	
	for cur < 4000000 {
		fmt.Println(cur)
		out += cur
		i += 3
		cur = fib(i)
	}
	
	fmt.Println(out)
}