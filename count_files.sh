#!/bin/bash

if [ -z "$1" ]; then
  echo "Usage: $0 directory"
  exit 1
fi

if [ -d "$1" ]; then
  count=$(ls -1 "$1" | wc -l)
  echo "There are $count files in the directory '$1'."
else
  echo "'$1' is not a valid directory."
fi
