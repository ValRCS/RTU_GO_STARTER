    package main

    import (
        "fmt"
        "os"
    )

    func main() {
        args := os.Args[1:] // skip program name
        if len(args) == 0 {
            fmt.Println("no arguments entered")
            return
        }
        // Print each argument on its own line to keep it simple and unambiguous
        for i, a := range args {
            fmt.Printf("arg[%d]=%s
", i, a)
        }
    }
