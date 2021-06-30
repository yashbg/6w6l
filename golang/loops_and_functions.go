package main

import (
	"fmt"
	"math"
)

func Sqrt(x float64) float64 {
	z := x / 2
	for i := 1; ; i++ {
		change := (z*z - x) / (2 * z)
		z -= change
		fmt.Printf("Iteration %v: z = %v\n", i, z)
		if math.Abs(change) < 0.000001 {
			break
		}
	}
	return z
}

func main() {
	x := float64(2)
	sqrt := Sqrt(x)
	fmt.Printf("Sqrt of %v = %v\n", x, sqrt)
	fmt.Println("Difference from actual sqrt =", math.Abs(sqrt-math.Sqrt(x)))
}
