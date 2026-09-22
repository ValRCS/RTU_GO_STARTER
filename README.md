# RTU Go Programming Starter

Ready-to-fork starter repository for Riga Technical University students. It provides a consistent Go 1.27 development environment in GitHub Codespaces and can also be used locally.

This repository is intentionally generic. The lab folders contain only small compile-ready placeholders; course-specific assignment requirements should be provided separately.

## Quick start with GitHub Codespaces

1. Fork this repository to your own GitHub account.
2. Open your fork.
3. Select **Code -> Codespaces -> Create codespace on main**.
4. When the terminal opens, verify the Go installation:

   ```bash
   go version
   ```

5. Run one of the starter assignments:

   ```bash
   go run ./lab1/assignment1
   go run ./lab1/assignment2
   go run ./lab2/assignment1
   go run ./lab2/assignment2
   ```

For example:

```text
This is for lab1 - assignment1
```

Each starter program contains a `// TODO` marker showing where assignment work can begin.

## Repository structure

```text
.
├── .devcontainer/
│   └── devcontainer.json
├── .github/
│   └── workflows/
│       └── go.yml
├── .vscode/
│   └── extensions.json
├── lab1/
│   ├── assignment1/
│   │   └── main.go
│   └── assignment2/
│       └── main.go
├── lab2/
│   ├── assignment1/
│   │   └── main.go
│   └── assignment2/
│       └── main.go
├── .editorconfig
├── .gitignore
├── LICENSE
├── Makefile
├── README.md
└── go.mod
```

Each assignment directory is an independent `package main`, so it can be compiled or run separately while the whole repository remains a valid Go module.

## Useful Go commands

Format all Go source files:

```bash
go fmt ./...
```

Check for suspicious constructs:

```bash
go vet ./...
```

Run all tests:

```bash
go test ./...
```

Build every package:

```bash
go build ./...
```

Run all basic checks:

```bash
make check
```

The Makefile is only a convenience. The underlying `go` commands work directly and are the commands students should understand.

## Local development

If you do not use Codespaces, install Go 1.27 or newer and the official Go extension for Visual Studio Code.

Then clone your fork and run, for example:

```bash
go run ./lab1/assignment1
```

## Go module path

The starter module is:

```text
github.com/ValRCS/RTU_GO_STARTER
```

A fork can use this module path while working on the course assignments. If the repository later becomes an independent Go project and should use its own import path, change it with:

```bash
go mod edit -module github.com/YOUR_GITHUB_USERNAME/YOUR_REPOSITORY
```

## Automated checks

GitHub Actions runs formatting, `go vet`, `go test`, and `go build` checks after pushes and pull requests. This provides a simple indication that the repository still compiles cleanly.

---

Prepared as a reusable Go starter for Riga Technical University courses.
