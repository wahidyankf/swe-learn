#!/bin/bash

# Format Python files in apps/python-hello
cd apps/python-hello
poetry run black "$@"
cd ../..

# Format Python files in libs/python-hello-libs
cd libs/python-hello-libs
poetry run black "$@"
