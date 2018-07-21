// This practice code is based on the under page.
// https://tour.golang.org/basics/1

package main

// This program is using the packages with import paths "fmt" "math/rand" and "time".
import (
	"fmt"
	"math/rand"
	"time"
)

// Every Go program is made up of packages.
// Programs start running in package
func main() {
	// By convention, the package name is
	// the same as the last element of the import path.
	// For instance, the "math/rand" package comprises files
	// that begin with the statement package rand.
	rand.Seed(time.Now().UnixNano())
	fmt.Println("My favorite number is", rand.Intn(10))
}
