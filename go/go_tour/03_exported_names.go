// This practice code is based on the under page.
// https://tour.golang.org/basics/3

package main

import (
	"fmt"
	"math"
)

func main() {
	// a name is exported if it begins with a capital letter.
	// When importing a package,
	// you can refer only to its exported names.
	fmt.Println(math.Pi)

	// The under "math.pi" code is grammatically invalid.
	// because "pi" doesn't start with capital letter.
	// fmt.Println(math.pi)
}
