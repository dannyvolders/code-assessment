# code-assessment
experimental repo to test code analysis tools

## Quick Setup

After cloning the repository, run the following command to set up your environment and pre-commit hooks:

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
- Restore .NET dependencies using the solution file

You need the .NET SDK and Git installed.

See `scripts/README.md` for more details.
