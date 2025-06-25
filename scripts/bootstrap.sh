#!/bin/sh
# Bootstrap script to set up the development environment after cloning

set -e

# Detect OS
OS="$(uname -s)"

# Install pre-commit hook
HOOKS_DIR=".git/hooks"
SCRIPTS_DIR="scripts"

if [ ! -d "$HOOKS_DIR" ]; then
  echo "Error: .git/hooks directory not found. Please run this script from the root of your cloned repository."
  exit 1
fi

cp "$SCRIPTS_DIR/pre-commit.sh" "$HOOKS_DIR/pre-commit"
chmod +x "$HOOKS_DIR/pre-commit"

if echo "$OS" | grep -qiE 'cygwin|mingw|msys'; then
  cp "$SCRIPTS_DIR/pre-commit.cmd" "$HOOKS_DIR/pre-commit.cmd"
fi

echo "Pre-commit hook installed."

echo "Restoring .NET dependencies..."
dotnet restore ./src/src.sln

echo "Environment setup complete!"
