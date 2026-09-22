SHELL := /bin/bash

.PHONY: run-lab1-assignment1 run-lab1-assignment2 run-lab2-assignment1 run-lab2-assignment2 fmt vet test build check

run-lab1-assignment1:
	go run ./lab1/assignment1

run-lab1-assignment2:
	go run ./lab1/assignment2

run-lab2-assignment1:
	go run ./lab2/assignment1

run-lab2-assignment2:
	go run ./lab2/assignment2

fmt:
	go fmt ./...

vet:
	go vet ./...

test:
	go test ./...

build:
	go build ./...

check: vet test build
