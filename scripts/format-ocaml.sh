#!/bin/bash

# Check if there are any OCaml files in staging
if git diff --cached --name-only | grep -E "\.(ml|mli)$" > /dev/null; then
  echo "Formatting OCaml files..."
  
  # Format OCaml files in libs
  cd libs/ocaml-hello-libs && \
  opam exec -- dune build @fmt --auto-promote || exit 1
  cd ../../

  # Format OCaml files in apps
  cd apps/ocaml-hello && \
  opam exec -- dune build @fmt --auto-promote || exit 1
  cd ../../
fi
