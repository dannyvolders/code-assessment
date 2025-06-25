@echo off
REM Bootstrap script for Windows to set up the development environment after cloning

REM Install pre-commit hook
if not exist .git\hooks (
    echo Error: .git\hooks directory not found. Please run this script from the root of your cloned repository.
    exit /b 1
)

copy scripts\pre-commit.cmd .git\hooks\pre-commit.cmd >nul
copy scripts\pre-commit.sh .git\hooks\pre-commit >nul

REM Restore .NET dependencies
call dotnet restore .\src\src.sln

echo Environment setup complete!
