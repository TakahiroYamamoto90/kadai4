#!/bin/bash

echo "chceck gcd:a,b"
output=$(./gcd.sh a b)

if [ $? -eq 0 ]; then
  echo "successed : $output"
else
  echo "errored : $output"
  exit 1
fi