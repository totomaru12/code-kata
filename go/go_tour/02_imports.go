// This practice code is based on the under page.
// https://tour.golang.org/basics/2

package main

// This code groups the imports into a parenthesized,
// "factored" import statement.
import (
	"fmt"
	"math"
)

// You can also write multiple import statements, like:
// ```
// import "fmt"
// import "math"
// ```
// But it is good style to use the factored import statement.

func main() {
	fmt.Printf("Now you have %g problems\n", math.Sqrt(7))
}
