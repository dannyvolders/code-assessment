# Git Hooks & Environment Setup

This repository includes scripts to set up your development environment and pre-commit hooks for code formatting.

## Quick Setup (after cloning)

### On macOS/Linux:
```sh
sh scripts/bootstrap.sh
```

### On Windows (cmd):
```cmd
scripts\bootstrap.cmd
```

This will:
- Install the correct pre-commit hook for your OS
- Restore .NET dependencies

Now, every commit will be checked for code formatting issues.

> Note: You need the .NET SDK and Git installed.
