# RTU Go Programming Starter

Ready-to-fork starter repository for **Riga Technical University** students.
Works out of the box in **GitHub Codespaces** and locally.

## What’s inside
- Two runnable Go programs:
  - `hello.go` — prints **Hello RTU students!**
  - `arguments.go` — prints all command-line arguments or **no arguments entered**
- Go modules (`go.mod`)
- Dev container for Codespaces (`.devcontainer/`)
- VS Code settings (`.vscode/`)
- Makefile convenience targets
- MIT License

## Quick start (teacher)
1. Create an empty GitHub repo.
2. Download the ZIP from your ChatGPT message and extract its contents.
3. Commit & push everything to your new repo.
4. (Optional) Update the module path in `go.mod` to match your repo URL.

## Quick start (students — Codespaces)
1. **Fork** the teacher’s repository.
2. Click **Code ➜ Codespaces ➜ Create codespace on main**.
3. In the Codespace terminal, try:
   ```bash
   go run hello.go
   go run arguments.go one two three
   ```
   or use the Makefile:
   ```bash
   make run-hello
   make run-args ARGS="one two three"
   ```

## Quick start (local)
- Requires Go 1.21+ (1.22+ recommended).
```bash
# Run directly
go run hello.go
go run arguments.go a b c

# Or build binaries
go build -o bin/hello hello.go
go build -o bin/arguments arguments.go
./bin/hello
./bin/arguments a b c
```

## Files
```text
.
├─ .devcontainer/
│  └─ devcontainer.json
├─ .vscode/
│  ├─ extensions.json
│  └─ settings.json
├─ .gitignore
├─ .editorconfig
├─ LICENSE
├─ Makefile
├─ go.mod
├─ hello.go
└─ arguments.go
```

## Notes
- The `module` path in `go.mod` is a placeholder (`example.com/rtu-go-starter`). You may change it to your repo URL (e.g., `github.com/ValRCS/rtu-go-starter`). If you only use standard library imports, the placeholder will not affect local runs.
- Feel free to add more examples (packages under `cmd/` are a nice pattern for multiple binaries).

---
_Prepared for RTU CS students — happy Go coding!_
