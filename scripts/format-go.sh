#!/bin/bash

# Format Go files in apps/go-hello and libs/go-hello-libs
nx run-many --target=format --projects=go-hello,go-hello-libs
