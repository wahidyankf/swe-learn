#!/usr/bin/env bash

# Check if there are any Python files in the staging area
STAGED_PYTHON_FILES=$(git diff --cached --name-only --diff-filter=d | grep "\.py$")

if [ -n "$STAGED_PYTHON_FILES" ]; then
    echo "Python files found in staging area. Running Python formatter..."
    nx run-many --target=format --projects=python-hello,python-hello-libs
else
    echo "No Python files in staging area. Skipping Python formatting."
fi
