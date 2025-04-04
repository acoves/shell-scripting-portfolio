#!/bin/bash

# Verifica si se han pasado parámetros
if [ $# -eq 0 ]; then
  echo "Error: No parameter provided."
  echo "Usage: $0 <param1> [param2] [param3] ..."
  exit 1
fi

# Une todos los parámetros separados por ", "
result=""
for arg in "$@"; do
  if [ -z "$result" ]; then
    result="$arg"
  else
    result="$result, $arg"
  fi
done

echo "Parameters received: $result"
