package main

import "fmt"

// fibonacci is a function that returns
// a function that returns an int.
func fibonacci() func() int {
	val1 := 0
	val2 := 1
	return func() int {
		ans := val1 + val2
		val1 = val2
		val2 = ans
		return ans
	}
}

func main() {
	f := fibonacci()
	for i := 0; i < 10; i++ {
		fmt.Println(f())
	}
}
