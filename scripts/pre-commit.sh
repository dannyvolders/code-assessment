#!/bin/sh
# Shared pre-commit hook for dotnet format

DOTNET_FORMAT_RESULT=$(dotnet format --verify-no-changes)
FORMAT_EXIT_CODE=$?

if [ $FORMAT_EXIT_CODE -ne 0 ]; then
  echo "\033[0;31mCode formatting issues detected. Please run 'dotnet format' and commit again.\033[0m"
  echo "$DOTNET_FORMAT_RESULT"
  exit 1
fi

exit 0
