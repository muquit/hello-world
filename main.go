package main

import (
	"fmt"
	"github.com/muquit/hello-world/pkg/version"
)

func main() {
	fmt.Printf("hell-world %s\n", version.Get());
}
