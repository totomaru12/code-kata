# go-grammer

## Hello World

```hello.go
package main

import "fmt"

func main() {
    fmt.Println("Hello World")
}
```

## run go program

```terminal
$ go run hello.go
Hello World
```

## imports

Multiple imports can be below

```:sample multiple imports A
import (
    "fmt"
    "math"
)
```

or

```:sample multiple imports B
import "fmt"
import "math"
```

## exported name

Exported name needs to start with a capital letter.

```:exported name example
math.Pi // valid
math.pi // invalid
```

## functions

A function can take zero or more arguments.  
Type coms after the variable name.  

```functions_1.go
package main

import "fmt"

func add(x int, y int) int {
    return x + y
}

func main() {
    fmt.Println(add(3, 5)) // 8
}
```

## reference

<https://tour.golang.org/list>