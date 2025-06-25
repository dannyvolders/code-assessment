@echo off
REM Windows pre-commit hook for dotnet format

where dotnet >nul 2>nul
if errorlevel 1 (
    echo dotnet CLI not found. Please install .NET SDK.
    exit /b 1
)

dotnet format --verify-no-changes >NUL
if errorlevel 1 (
    echo Code formatting issues detected. Please run 'dotnet format' and commit again.
    exit /b 1
)

exit /b 0
