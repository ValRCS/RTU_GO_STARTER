    SHELL := /bin/bash

    .PHONY: run-hello run-args build clean

    run-hello:
	go run hello.go

    # Use: make run-args ARGS="one two three"
    run-args:
	go run arguments.go $(ARGS)

    build:
	mkdir -p bin
	go build -o bin/hello hello.go
	go build -o bin/arguments arguments.go

    clean:
	rm -rf bin
